<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d873dcfc-44fd-449a-83a0-b73f30522ba6(org.fbme.ide.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
    <use id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="ci82" ref="r:ddb2cc39-021f-4bf6-ab5a-b4bcff106c31(org.fbme.platform.build)" />
    <import index="4hy5" ref="r:d3cdc78f-1e25-43ab-bb29-d75cffece3a5(org.fbme.integration.fordiac.build)" />
    <import index="bco3" ref="r:4904ab70-42df-49dd-8218-a04fff347a01(org.fbme.richediting.build)" />
    <import index="vjdp" ref="r:1663fe77-f495-4cde-b50b-d3576358c123(org.fbme.samples.statisticsPlugin.build)" />
    <import index="1b2w" ref="r:fec8a7bb-501c-442b-98be-18567111039e(org.fbme.smvDebugger.build)" />
    <import index="ci81" ref="r:ddb2cc39-021f-4bf6-ab5a-b4bcff106c32(org.fbme.language.build)" />
    <import index="lo8j" ref="r:c951fe04-0ad9-4d6c-9dc3-bae009e3b17b(org.fbme.integration.nxt.build)" />
    <import index="kvgc" ref="r:033fa9ec-1120-40c6-8124-b58f4474b999(org.fbme.ide.build.plugins)" />
    <import index="recy" ref="r:8c25bb6d-a5ff-4b85-a0e5-d5a94a24a533(org.fbme.debugger.build)" />
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
      <concept id="3885435385580582732" name="jetbrains.mps.build.startup.structure.SimpleVmOptions" flags="ng" index="26Ea6D">
        <property id="3885435385580582733" name="options" index="26Ea6C" />
        <property id="5842819808956906658" name="commented" index="2eq24a" />
      </concept>
      <concept id="3885435385580582153" name="jetbrains.mps.build.startup.structure.ClassPathItem" flags="ng" index="26EafG">
        <property id="3885435385580582154" name="path" index="26EafJ" />
      </concept>
      <concept id="3885435385580582152" name="jetbrains.mps.build.startup.structure.MpsStartupScript" flags="ng" index="26EafH">
        <property id="3885435385580582155" name="startupFolder" index="26EafI" />
        <property id="3885435385580631186" name="startupClass" index="26FY9R" />
        <reference id="3505522814897007561" name="branding" index="1_kbm$" />
        <child id="3885435385580582696" name="bootClasspath" index="26Ea7d" />
        <child id="3885435385580627556" name="vmOptions" index="26FZ21" />
        <child id="2693344784283221851" name="vmOptions64" index="2hID6k" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6818892319992984815" name="jetbrains.mps.build.mps.structure.BuildMps_TipsPackage" flags="ng" index="20sUq0">
        <reference id="7323166234190549907" name="tips" index="21GgXK" />
      </concept>
      <concept id="781140262677906392" name="jetbrains.mps.build.mps.structure.BuildMps_BrandingCompany" flags="ng" index="IuM$Q">
        <child id="781140262677906402" name="url" index="IuM$c" />
        <child id="781140262677906401" name="name" index="IuM$f" />
        <child id="2355727383336213970" name="copyrightStar" index="3fQQh0" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="8174907532631382425" name="jetbrains.mps.build.mps.structure.BuildMps_TipsMps" flags="ng" index="3jmSaf" />
      <concept id="8174907532628842428" name="jetbrains.mps.build.mps.structure.BuildMps_Tips" flags="ng" index="3jsGME">
        <child id="8174907532631382423" name="imports" index="3jmSa1" />
      </concept>
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
        <child id="4157435862321767641" name="version" index="3ZAC$U" />
      </concept>
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
      <concept id="4157435862321765764" name="jetbrains.mps.build.mps.structure.BuildMps_BrandingVersion" flags="ng" index="3ZAF1B">
        <child id="4157435862321765794" name="versionEap" index="3ZAF11" />
        <child id="4157435862321765793" name="versionBugfixNr" index="3ZAF12" />
        <child id="4157435862321765792" name="versionMinor" index="3ZAF13" />
        <child id="4157435862321765791" name="versionMajor" index="3ZAF1W" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="1mPaNys5H5_">
    <property role="TrG5h" value="fbme_rcp_shared" />
    <property role="2DA0ip" value="../" />
    <property role="turDy" value="build-rcp-shared.xml" />
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
          <node concept="2Ry0Ak" id="qjx41CDd0H" role="2Ry0An">
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
          <property role="3MwjfP" value="FBME" />
        </node>
      </node>
      <node concept="3_J27D" id="1mPaNys5H62" role="2EtHGT">
        <node concept="3Mxwew" id="1mPaNys5H63" role="3MwsjC">
          <property role="3MwjfP" value="FBME" />
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
          <property role="3MwjfP" value="fbme" />
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
            <property role="2Ry0Am" value="fbme.icns" />
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
            <property role="3MwjfP" value="https://jetbrains.github.io/fbme" />
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
      <node concept="3ZAF1B" id="4tzOUaV8r7u" role="3ZAC$U">
        <node concept="3_J27D" id="4tzOUaV8r7v" role="3ZAF1W">
          <node concept="3Mxwey" id="4tzOUaV8x82" role="3MwsjC">
            <ref role="3Mxwex" node="4tzOUaV8x1r" resolve="version.major" />
          </node>
        </node>
        <node concept="3_J27D" id="4tzOUaV8r7x" role="3ZAF13">
          <node concept="3Mxwey" id="4tzOUaV8x84" role="3MwsjC">
            <ref role="3Mxwex" node="4tzOUaV86hP" resolve="version.minor" />
          </node>
        </node>
        <node concept="NbPM2" id="4tzOUaV8r7z" role="3ZAF12" />
        <node concept="NbPM2" id="4tzOUaV8r7_" role="3ZAF11" />
      </node>
    </node>
    <node concept="2kB4xC" id="1mPaNys5H5C" role="1l3spd">
      <property role="TrG5h" value="date" />
      <node concept="hHN3E" id="1mPaNys5H5D" role="aVJcv">
        <property role="hHN3Y" value="yyyyMMdd" />
      </node>
    </node>
    <node concept="2kB4xC" id="4tzOUaV86hP" role="1l3spd">
      <property role="TrG5h" value="version.minor" />
      <node concept="aVJcg" id="4tzOUaV86hQ" role="aVJcv">
        <node concept="NbPM2" id="4tzOUaV86hR" role="aVJcq">
          <node concept="3Mxwew" id="4tzOUaV86hS" role="3MwsjC">
            <property role="3MwjfP" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="4tzOUaV8x1r" role="1l3spd">
      <property role="TrG5h" value="version.major" />
      <node concept="aVJcg" id="4tzOUaV8x1I" role="aVJcv">
        <node concept="NbPM2" id="4tzOUaV8x1H" role="aVJcq">
          <node concept="3Mxwew" id="4tzOUaV8x1G" role="3MwsjC">
            <property role="3MwjfP" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="4tzOUaV8x2a" role="1l3spd">
      <property role="TrG5h" value="version" />
      <node concept="aVJcg" id="4tzOUaV8x2x" role="aVJcv">
        <node concept="NbPM2" id="4tzOUaV8x2w" role="aVJcq">
          <node concept="3Mxwey" id="4tzOUaV8x2_" role="3MwsjC">
            <ref role="3Mxwex" node="4tzOUaV8x1r" resolve="version.major" />
          </node>
          <node concept="3Mxwew" id="4tzOUaV8x2v" role="3MwsjC">
            <property role="3MwjfP" value="." />
          </node>
          <node concept="3Mxwey" id="4tzOUaV8x2C" role="3MwsjC">
            <ref role="3Mxwex" node="4tzOUaV86hP" resolve="version.minor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="1mPaNys5H5E" role="1l3spd">
      <property role="TrG5h" value="build.number" />
      <node concept="aVJcg" id="1mPaNys5H5F" role="aVJcv">
        <node concept="NbPM2" id="1mPaNys5H5G" role="aVJcq" />
      </node>
    </node>
    <node concept="398rNT" id="1mPaNys5H5I" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="1mPaNys6fxP" role="398pKh">
        <node concept="2Ry0Ak" id="1mPaNys6fxS" role="iGT6I">
          <property role="2Ry0Am" value="lib" />
          <node concept="2Ry0Ak" id="60wxHLH9ueR" role="2Ry0An">
            <property role="2Ry0Am" value="MPS 2021.3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="Ej4tEpmLs2" role="1l3spa">
      <ref role="1l3spb" to="ci82:68dTcycFmrj" resolve="fbme_platform" />
    </node>
    <node concept="2sgV4H" id="Ej4tEpmLsD" role="1l3spa">
      <ref role="1l3spb" to="bco3:68dTcycFmrj" resolve="fbme_richediting" />
    </node>
    <node concept="2sgV4H" id="Ej4tEpmLsk" role="1l3spa">
      <ref role="1l3spb" to="4hy5:68dTcycFmrj" resolve="fbme_fordiac" />
    </node>
    <node concept="2sgV4H" id="2ww0H4BPlHs" role="1l3spa">
      <ref role="1l3spb" to="vjdp:68dTcycFmrj" resolve="fbme_statistics" />
    </node>
    <node concept="2sgV4H" id="3xMXS68nMr" role="1l3spa">
      <ref role="1l3spb" to="1b2w:68dTcycFmrj" resolve="fbme_smvdebugger" />
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
            <ref role="1zDrgn" node="1mPaNys5H5R" resolve="FBME ${version.major}.${version.minor}" />
          </node>
          <node concept="28jJK3" id="qjx41CDd6K" role="39821P">
            <node concept="55IIr" id="qjx41CDd70" role="28jJRO">
              <node concept="2Ry0Ak" id="qjx41CDd75" role="iGT6I">
                <property role="2Ry0Am" value="icons" />
                <node concept="2Ry0Ak" id="qjx41CDd7a" role="2Ry0An">
                  <property role="2Ry0Am" value="splash@2x.png" />
                </node>
              </node>
            </node>
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
          <property role="28hIV_" value="fbme plugins" />
        </node>
        <node concept="2HvfSZ" id="1EO1wDljIfD" role="39821P">
          <node concept="55IIr" id="1EO1wDljIfF" role="2HvfZ0">
            <node concept="2Ry0Ak" id="1EO1wDljIgy" role="iGT6I">
              <property role="2Ry0Am" value="build" />
              <node concept="2Ry0Ak" id="1EO1wDljIg_" role="2Ry0An">
                <property role="2Ry0Am" value="dist-plugins" />
              </node>
            </node>
          </node>
        </node>
        <node concept="28u9K_" id="42vv4xsJOrw" role="39821P">
          <property role="28hIV_" value="mps" />
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
            <node concept="3Mxwey" id="4tzOUaV86Jl" role="3MwsjC">
              <ref role="3Mxwex" node="4tzOUaV8x2a" resolve="version" />
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
    <property role="TrG5h" value="fbme_rcp_windows" />
    <property role="2DA0ip" value="../" />
    <property role="turDy" value="build-rcp-windows.xml" />
    <node concept="2sgV4H" id="1mPaNys5H7s" role="1l3spa">
      <ref role="1l3spb" node="1mPaNys5H5_" resolve="fbme_rcp_shared" />
    </node>
    <node concept="1l3spV" id="1mPaNys5H7t" role="1l3spN">
      <node concept="3981dG" id="1mPaNys5H8H" role="39821P">
        <node concept="3ygNvl" id="1mPaNys5H8I" role="39821P">
          <ref role="3ygNvj" node="1mPaNys5H6_" />
        </node>
        <node concept="398223" id="4tzOUaV8XIH" role="39821P">
          <node concept="3_J27D" id="4tzOUaV8XII" role="Nbhlr">
            <node concept="3Mxwew" id="4tzOUaV8XIJ" role="3MwsjC">
              <property role="3MwjfP" value="jbr" />
            </node>
          </node>
          <node concept="2HvfSZ" id="4tzOUaV8XIK" role="39821P">
            <node concept="55IIr" id="4tzOUaV8XIL" role="2HvfZ0">
              <node concept="2Ry0Ak" id="4tzOUaV8XIM" role="iGT6I">
                <property role="2Ry0Am" value="lib" />
                <node concept="2Ry0Ak" id="4tzOUaV8XIN" role="2Ry0An">
                  <property role="2Ry0Am" value="jbr" />
                </node>
              </node>
            </node>
          </node>
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
                  <property role="3MwjfP" value="fbme.exe.vmoptions" />
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
                  <node concept="2Ry0Ak" id="4K9PzRDlbOh" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.vmoptions" />
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
                  <property role="3MwjfP" value="fbme64.exe.vmoptions" />
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
                  <node concept="2Ry0Ak" id="4K9PzRDlbOj" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme64.vmoptions" />
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
                  <node concept="2Ry0Ak" id="4K9PzRDlbOl" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.bat" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="1mPaNys5H9o" role="Nbhlr">
          <node concept="3Mxwew" id="1mPaNys5H9p" role="3MwsjC">
            <property role="3MwjfP" value="fbme" />
          </node>
          <node concept="3Mxwew" id="1mPaNys5H9q" role="3MwsjC">
            <property role="3MwjfP" value="-" />
          </node>
          <node concept="3Mxwey" id="1mPaNys5H9r" role="3MwsjC">
            <ref role="3Mxwex" node="4tzOUaV8K6F" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="1mPaNys5H9s" role="3MwsjC">
            <property role="3MwjfP" value=".win.zip" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="1mPaNys5H7u" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="1mPaNys5SDE" role="398pKh">
        <node concept="2Ry0Ak" id="1mPaNys5SDJ" role="iGT6I">
          <property role="2Ry0Am" value="lib" />
          <node concept="2Ry0Ak" id="60wxHLH9ueT" role="2Ry0An">
            <property role="2Ry0Am" value="MPS 2021.3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="4tzOUaV8K6F" role="1l3spd">
      <property role="TrG5h" value="build.number" />
      <node concept="aVJcg" id="4tzOUaV8K6O" role="aVJcv">
        <node concept="NbPM2" id="4tzOUaV8K6N" role="aVJcq" />
      </node>
    </node>
    <node concept="55IIr" id="2H5LTARSeJl" role="auvoZ">
      <node concept="2Ry0Ak" id="2H5LTARSeJo" role="iGT6I">
        <property role="2Ry0Am" value="build" />
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="6kvdbYtXYck">
    <property role="2DA0ip" value="../" />
    <property role="TrG5h" value="fbme_bootstrap" />
    <property role="turDy" value="build-bootstrap.xml" />
    <node concept="1E1JtA" id="3oevj_m$qiw" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="org.fbme.ide.build.plugins" />
      <property role="3LESm3" value="d76643a8-b8a1-4b1a-9500-66247bf6bc35" />
      <node concept="55IIr" id="3oevj_m$qiy" role="3LF7KH">
        <node concept="2Ry0Ak" id="3oevj_m$ql$" role="iGT6I">
          <property role="2Ry0Am" value="buildscripts" />
          <node concept="2Ry0Ak" id="3oevj_m$qlD" role="2Ry0An">
            <property role="2Ry0Am" value="plugins" />
            <node concept="2Ry0Ak" id="3oevj_m$qlI" role="2Ry0An">
              <property role="2Ry0Am" value="org.fbme.ide.build.plugins.msd" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1BupzO" id="3oevj_m$qlO" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="3oevj_m$qlP" role="1HemKq">
          <node concept="55IIr" id="3oevj_m$qlK" role="3LXTmr">
            <node concept="2Ry0Ak" id="3oevj_m$qlL" role="iGT6I">
              <property role="2Ry0Am" value="buildscripts" />
              <node concept="2Ry0Ak" id="3oevj_m$qlM" role="2Ry0An">
                <property role="2Ry0Am" value="plugins" />
                <node concept="2Ry0Ak" id="3oevj_m$qlN" role="2Ry0An">
                  <property role="2Ry0Am" value="models" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="3oevj_m$qlQ" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="3Sv$YXY4B$u" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="org.fbme.ide.build" />
      <property role="3LESm3" value="03167fa4-d2b2-43a9-8149-2d4f4957c404" />
      <node concept="55IIr" id="3Sv$YXY4B$v" role="3LF7KH">
        <node concept="2Ry0Ak" id="3f0ZsV2Rz3l" role="iGT6I">
          <property role="2Ry0Am" value="buildscripts" />
          <node concept="2Ry0Ak" id="3f0ZsV2Rz3r" role="2Ry0An">
            <property role="2Ry0Am" value="org.fbme.ide.build.msd" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="3Sv$YXY4B$L" role="3bR37C">
        <node concept="3bR9La" id="3Sv$YXY4B$M" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
        </node>
      </node>
      <node concept="1BupzO" id="40XHEQlWSgj" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="5sRy4_wf9eh" role="1HemKq">
          <node concept="55IIr" id="5sRy4_wf9ee" role="3LXTmr">
            <node concept="2Ry0Ak" id="5sRy4_wf9ef" role="iGT6I">
              <property role="2Ry0Am" value="buildscripts" />
              <node concept="2Ry0Ak" id="5sRy4_wf9eg" role="2Ry0An">
                <property role="2Ry0Am" value="models" />
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="5sRy4_wf9ei" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="Ej4tEpnfEY" role="3bR37C">
        <node concept="3bR9La" id="Ej4tEpnfEZ" role="1SiIV1">
          <ref role="3bR37D" node="Ej4tEpnfBJ" resolve="org.fbme.integration.fordiac.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="Ej4tEpnfF0" role="3bR37C">
        <node concept="3bR9La" id="Ej4tEpnfF1" role="1SiIV1">
          <ref role="3bR37D" node="Ej4tEpnfDM" resolve="org.fbme.richediting.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="2ww0H4BPnBm" role="3bR37C">
        <node concept="3bR9La" id="2ww0H4BPnBn" role="1SiIV1">
          <ref role="3bR37D" node="2ww0H4BOL8J" resolve="org.fbme.samples.statisticsPlugin.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="7nNI4eNtlbQ" role="3bR37C">
        <node concept="3bR9La" id="7nNI4eNtlbR" role="1SiIV1">
          <ref role="3bR37D" node="7nNI4eNtl5i" resolve="org.fbme.smvDebugger.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="ApHj0p713T" role="3bR37C">
        <node concept="3bR9La" id="ApHj0p713U" role="1SiIV1">
          <ref role="3bR37D" node="ApHj0p70Xv" resolve="org.fbme.language.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="ApHj0p715O" role="3bR37C">
        <node concept="3bR9La" id="ApHj0p715P" role="1SiIV1">
          <ref role="3bR37D" node="Ej4tEpnfCS" resolve="org.fbme.platform.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="2mxBo27MLqs" role="3bR37C">
        <node concept="3bR9La" id="2mxBo27MLqt" role="1SiIV1">
          <ref role="3bR37D" node="2mxBo27MLdk" resolve="org.fbme.integration.nxt.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="3oevj_m$ujX" role="3bR37C">
        <node concept="3bR9La" id="3oevj_m$ujY" role="1SiIV1">
          <ref role="3bR37D" node="3oevj_m$qiw" resolve="org.fbme.ide.build.plugins" />
        </node>
      </node>
      <node concept="1SiIV0" id="7Qpar4oGf$z" role="3bR37C">
        <node concept="3bR9La" id="7Qpar4oGf$$" role="1SiIV1">
          <ref role="3bR37D" node="5FNCztzn4vq" resolve="org.fbme.debugger.build" />
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="ApHj0p70Xv" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="org.fbme.language.build" />
      <property role="3LESm3" value="ab2b933c-4cca-47c1-aeca-d2ac0bca990d" />
      <node concept="55IIr" id="ApHj0p70Xw" role="3LF7KH">
        <node concept="2Ry0Ak" id="ApHj0p70Xx" role="iGT6I">
          <property role="2Ry0Am" value="code" />
          <node concept="2Ry0Ak" id="ApHj0p70Xy" role="2Ry0An">
            <property role="2Ry0Am" value="language" />
            <node concept="2Ry0Ak" id="ApHj0p70Xz" role="2Ry0An">
              <property role="2Ry0Am" value="buildsolution" />
              <node concept="2Ry0Ak" id="ApHj0p70X$" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.language.build.msd" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="ApHj0p70X_" role="3bR37C">
        <node concept="3bR9La" id="ApHj0p70XA" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
        </node>
      </node>
      <node concept="1BupzO" id="ApHj0p70XB" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="ApHj0p714d" role="1HemKq">
          <node concept="55IIr" id="ApHj0p7148" role="3LXTmr">
            <node concept="2Ry0Ak" id="ApHj0p7149" role="iGT6I">
              <property role="2Ry0Am" value="code" />
              <node concept="2Ry0Ak" id="ApHj0p714a" role="2Ry0An">
                <property role="2Ry0Am" value="language" />
                <node concept="2Ry0Ak" id="ApHj0p714b" role="2Ry0An">
                  <property role="2Ry0Am" value="buildsolution" />
                  <node concept="2Ry0Ak" id="ApHj0p714c" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="ApHj0p714e" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="3oevj_m$uk7" role="3bR37C">
        <node concept="3bR9La" id="3oevj_m$uk8" role="1SiIV1">
          <ref role="3bR37D" node="3oevj_m$qiw" resolve="org.fbme.ide.build.plugins" />
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="Ej4tEpnfCS" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="org.fbme.platform.build" />
      <property role="3LESm3" value="ab2b933c-4cca-47c1-aeca-d2ac0bca990c" />
      <node concept="55IIr" id="Ej4tEpnfCT" role="3LF7KH">
        <node concept="2Ry0Ak" id="Ej4tEpnfCU" role="iGT6I">
          <property role="2Ry0Am" value="code" />
          <node concept="2Ry0Ak" id="Ej4tEpnfCV" role="2Ry0An">
            <property role="2Ry0Am" value="platform" />
            <node concept="2Ry0Ak" id="Ej4tEpnfCW" role="2Ry0An">
              <property role="2Ry0Am" value="buildsolution" />
              <node concept="2Ry0Ak" id="Ej4tEpnfDk" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.platform.build.msd" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="Ej4tEpnfCY" role="3bR37C">
        <node concept="3bR9La" id="Ej4tEpnfCZ" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
        </node>
      </node>
      <node concept="1BupzO" id="Ej4tEpnfD6" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="Ej4tEpnfEE" role="1HemKq">
          <node concept="55IIr" id="Ej4tEpnfE_" role="3LXTmr">
            <node concept="2Ry0Ak" id="Ej4tEpnfEA" role="iGT6I">
              <property role="2Ry0Am" value="code" />
              <node concept="2Ry0Ak" id="Ej4tEpnfEB" role="2Ry0An">
                <property role="2Ry0Am" value="platform" />
                <node concept="2Ry0Ak" id="Ej4tEpnfEC" role="2Ry0An">
                  <property role="2Ry0Am" value="buildsolution" />
                  <node concept="2Ry0Ak" id="Ej4tEpnfED" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="Ej4tEpnfEF" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="ApHj0p7168" role="3bR37C">
        <node concept="3bR9La" id="ApHj0p7169" role="1SiIV1">
          <ref role="3bR37D" node="ApHj0p70Xv" resolve="org.fbme.language.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="3oevj_m$uke" role="3bR37C">
        <node concept="3bR9La" id="3oevj_m$ukf" role="1SiIV1">
          <ref role="3bR37D" node="3oevj_m$qiw" resolve="org.fbme.ide.build.plugins" />
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="2mxBo27MLdk" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="org.fbme.integration.nxt.build" />
      <property role="3LESm3" value="9ffd2636-8012-4730-a841-d808550cbdea" />
      <node concept="55IIr" id="2mxBo27MLdm" role="3LF7KH">
        <node concept="2Ry0Ak" id="2mxBo27MLgL" role="iGT6I">
          <property role="2Ry0Am" value="code" />
          <node concept="2Ry0Ak" id="2mxBo27MLgR" role="2Ry0An">
            <property role="2Ry0Am" value="nxt-integration" />
            <node concept="2Ry0Ak" id="2mxBo27MLgW" role="2Ry0An">
              <property role="2Ry0Am" value="buildsolution" />
              <node concept="2Ry0Ak" id="2mxBo27MLh1" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.integration.nxt.build.msd" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="2mxBo27MLhq" role="3bR37C">
        <node concept="3bR9La" id="2mxBo27MLhr" role="1SiIV1">
          <ref role="3bR37D" node="ApHj0p70Xv" resolve="org.fbme.language.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="2mxBo27MLhu" role="3bR37C">
        <node concept="3bR9La" id="2mxBo27MLhv" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
        </node>
      </node>
      <node concept="1BupzO" id="2mxBo27MLh_" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="2mxBo27MLhA" role="1HemKq">
          <node concept="55IIr" id="2mxBo27MLhw" role="3LXTmr">
            <node concept="2Ry0Ak" id="2mxBo27MLhx" role="iGT6I">
              <property role="2Ry0Am" value="code" />
              <node concept="2Ry0Ak" id="2mxBo27MLhy" role="2Ry0An">
                <property role="2Ry0Am" value="nxt-integration" />
                <node concept="2Ry0Ak" id="2mxBo27MLhz" role="2Ry0An">
                  <property role="2Ry0Am" value="buildsolution" />
                  <node concept="2Ry0Ak" id="2mxBo27MLh$" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="2mxBo27MLhB" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="5rownaaWGyz" role="3bR37C">
        <node concept="3bR9La" id="5rownaaWGy$" role="1SiIV1">
          <ref role="3bR37D" node="Ej4tEpnfCS" resolve="org.fbme.platform.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="4_tC8EWGGBl" role="3bR37C">
        <node concept="3bR9La" id="4_tC8EWGGBm" role="1SiIV1">
          <ref role="3bR37D" node="Ej4tEpnfDM" resolve="org.fbme.richediting.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="3oevj_m$ukl" role="3bR37C">
        <node concept="3bR9La" id="3oevj_m$ukm" role="1SiIV1">
          <ref role="3bR37D" node="3oevj_m$qiw" resolve="org.fbme.ide.build.plugins" />
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="5FNCztzn4vq" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="org.fbme.debugger.build" />
      <property role="3LESm3" value="ff08ccef-06a9-4eaf-af2e-092d35667607" />
      <node concept="55IIr" id="5FNCztzn4vs" role="3LF7KH">
        <node concept="2Ry0Ak" id="5FNCztzn4yT" role="iGT6I">
          <property role="2Ry0Am" value="code" />
          <node concept="2Ry0Ak" id="5FNCztzn4yY" role="2Ry0An">
            <property role="2Ry0Am" value="debugger" />
            <node concept="2Ry0Ak" id="5FNCztzn4z3" role="2Ry0An">
              <property role="2Ry0Am" value="buildsolution" />
              <node concept="2Ry0Ak" id="5FNCztzn4z8" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.debugger.build.msd" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="5FNCztzn5zD" role="3bR37C">
        <node concept="3bR9La" id="5FNCztzn5zE" role="1SiIV1">
          <ref role="3bR37D" node="Ej4tEpnfCS" resolve="org.fbme.platform.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="5FNCztzn5zF" role="3bR37C">
        <node concept="3bR9La" id="5FNCztzn5zG" role="1SiIV1">
          <ref role="3bR37D" node="ApHj0p70Xv" resolve="org.fbme.language.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="5FNCztzn5zJ" role="3bR37C">
        <node concept="3bR9La" id="5FNCztzn5zK" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
        </node>
      </node>
      <node concept="1BupzO" id="5FNCztzn5zS" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="5FNCztzn5zT" role="1HemKq">
          <node concept="55IIr" id="5FNCztzn5zN" role="3LXTmr">
            <node concept="2Ry0Ak" id="5FNCztzn5zO" role="iGT6I">
              <property role="2Ry0Am" value="code" />
              <node concept="2Ry0Ak" id="5FNCztzn5zP" role="2Ry0An">
                <property role="2Ry0Am" value="debugger" />
                <node concept="2Ry0Ak" id="5FNCztzn5zQ" role="2Ry0An">
                  <property role="2Ry0Am" value="buildsolution" />
                  <node concept="2Ry0Ak" id="5FNCztzn5zR" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="5FNCztzn5zU" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="aucBW5W4vN" role="3bR37C">
        <node concept="3bR9La" id="aucBW5W4vO" role="1SiIV1">
          <ref role="3bR37D" node="Ej4tEpnfDM" resolve="org.fbme.richediting.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="7rWf3U0OcWL" role="3bR37C">
        <node concept="3bR9La" id="7rWf3U0OcWM" role="1SiIV1">
          <ref role="3bR37D" node="3oevj_m$qiw" resolve="org.fbme.ide.build.plugins" />
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="Ej4tEpnfDM" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="org.fbme.richediting.build" />
      <property role="3LESm3" value="c44ff7f6-aa34-4dc2-a9b3-93cc101df3d4" />
      <node concept="55IIr" id="Ej4tEpnfDN" role="3LF7KH">
        <node concept="2Ry0Ak" id="Ej4tEpnfDO" role="iGT6I">
          <property role="2Ry0Am" value="code" />
          <node concept="2Ry0Ak" id="Ej4tEpnfDP" role="2Ry0An">
            <property role="2Ry0Am" value="richediting" />
            <node concept="2Ry0Ak" id="Ej4tEpnfDQ" role="2Ry0An">
              <property role="2Ry0Am" value="buildsolution" />
              <node concept="2Ry0Ak" id="Ej4tEpnfEe" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.richediting.build.msd" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="Ej4tEpnfDS" role="3bR37C">
        <node concept="3bR9La" id="Ej4tEpnfDT" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
        </node>
      </node>
      <node concept="1BupzO" id="Ej4tEpnfE0" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="Ej4tEpnfEL" role="1HemKq">
          <node concept="55IIr" id="Ej4tEpnfEG" role="3LXTmr">
            <node concept="2Ry0Ak" id="Ej4tEpnfEH" role="iGT6I">
              <property role="2Ry0Am" value="code" />
              <node concept="2Ry0Ak" id="Ej4tEpnfEI" role="2Ry0An">
                <property role="2Ry0Am" value="richediting" />
                <node concept="2Ry0Ak" id="Ej4tEpnfEJ" role="2Ry0An">
                  <property role="2Ry0Am" value="buildsolution" />
                  <node concept="2Ry0Ak" id="Ej4tEpnfEK" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="Ej4tEpnfEM" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="ApHj0p714k" role="3bR37C">
        <node concept="3bR9La" id="ApHj0p714l" role="1SiIV1">
          <ref role="3bR37D" node="ApHj0p70Xv" resolve="org.fbme.language.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="ApHj0p716f" role="3bR37C">
        <node concept="3bR9La" id="ApHj0p716g" role="1SiIV1">
          <ref role="3bR37D" node="Ej4tEpnfCS" resolve="org.fbme.platform.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="3oevj_m$uks" role="3bR37C">
        <node concept="3bR9La" id="3oevj_m$ukt" role="1SiIV1">
          <ref role="3bR37D" node="3oevj_m$qiw" resolve="org.fbme.ide.build.plugins" />
        </node>
      </node>
      <node concept="1SiIV0" id="3tje84kIDu0" role="3bR37C">
        <node concept="3bR9La" id="3tje84kIDu1" role="1SiIV1">
          <ref role="3bR37D" node="5FNCztzn4vq" resolve="org.fbme.debugger.build" />
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="Ej4tEpnfBJ" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="org.fbme.integration.fordiac.build" />
      <property role="3LESm3" value="fcf1995c-acfe-4b80-88f7-7756b5a07d7a" />
      <node concept="55IIr" id="Ej4tEpnfBK" role="3LF7KH">
        <node concept="2Ry0Ak" id="Ej4tEpnfBL" role="iGT6I">
          <property role="2Ry0Am" value="code" />
          <node concept="2Ry0Ak" id="Ej4tEpnfC5" role="2Ry0An">
            <property role="2Ry0Am" value="4diac-integration" />
            <node concept="2Ry0Ak" id="Ej4tEpnfC8" role="2Ry0An">
              <property role="2Ry0Am" value="buildsolution" />
              <node concept="2Ry0Ak" id="Ej4tEpnfCb" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.integration.fordiac.build.msd" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="Ej4tEpnfBQ" role="3bR37C">
        <node concept="3bR9La" id="Ej4tEpnfBR" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
        </node>
      </node>
      <node concept="1BupzO" id="Ej4tEpnfBY" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="Ej4tEpnfCp" role="1HemKq">
          <node concept="55IIr" id="Ej4tEpnfCk" role="3LXTmr">
            <node concept="2Ry0Ak" id="Ej4tEpnfCl" role="iGT6I">
              <property role="2Ry0Am" value="code" />
              <node concept="2Ry0Ak" id="Ej4tEpnfCm" role="2Ry0An">
                <property role="2Ry0Am" value="4diac-integration" />
                <node concept="2Ry0Ak" id="Ej4tEpnfCn" role="2Ry0An">
                  <property role="2Ry0Am" value="buildsolution" />
                  <node concept="2Ry0Ak" id="Ej4tEpnfCo" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="Ej4tEpnfCq" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="ApHj0p714r" role="3bR37C">
        <node concept="3bR9La" id="ApHj0p714s" role="1SiIV1">
          <ref role="3bR37D" node="ApHj0p70Xv" resolve="org.fbme.language.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="ApHj0p716m" role="3bR37C">
        <node concept="3bR9La" id="ApHj0p716n" role="1SiIV1">
          <ref role="3bR37D" node="Ej4tEpnfCS" resolve="org.fbme.platform.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="gklq2kt6ob" role="3bR37C">
        <node concept="3bR9La" id="gklq2kt6oc" role="1SiIV1">
          <ref role="3bR37D" node="3oevj_m$qiw" resolve="org.fbme.ide.build.plugins" />
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="7nNI4eNtl5i" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="org.fbme.smvDebugger.build" />
      <property role="3LESm3" value="73b76635-8a63-49a1-ae16-da85b8524b49" />
      <node concept="55IIr" id="7nNI4eNtl5k" role="3LF7KH">
        <node concept="2Ry0Ak" id="7nNI4eNtl7C" role="iGT6I">
          <property role="2Ry0Am" value="code" />
          <node concept="2Ry0Ak" id="7nNI4eNtl7H" role="2Ry0An">
            <property role="2Ry0Am" value="smv-debugger" />
            <node concept="2Ry0Ak" id="7nNI4eNtl7M" role="2Ry0An">
              <property role="2Ry0Am" value="buildsolution" />
              <node concept="2Ry0Ak" id="7nNI4eNtl7R" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.smvDebugger.build.msd" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="7nNI4eNtl8t" role="3bR37C">
        <node concept="3bR9La" id="7nNI4eNtl8u" role="1SiIV1">
          <ref role="3bR37D" node="Ej4tEpnfDM" resolve="org.fbme.richediting.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="7nNI4eNtl8z" role="3bR37C">
        <node concept="3bR9La" id="7nNI4eNtl8$" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
        </node>
      </node>
      <node concept="1BupzO" id="7nNI4eNtl8G" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="7nNI4eNtl8H" role="1HemKq">
          <node concept="55IIr" id="7nNI4eNtl8B" role="3LXTmr">
            <node concept="2Ry0Ak" id="7nNI4eNtl8C" role="iGT6I">
              <property role="2Ry0Am" value="code" />
              <node concept="2Ry0Ak" id="7nNI4eNtl8D" role="2Ry0An">
                <property role="2Ry0Am" value="smv-debugger" />
                <node concept="2Ry0Ak" id="7nNI4eNtl8E" role="2Ry0An">
                  <property role="2Ry0Am" value="buildsolution" />
                  <node concept="2Ry0Ak" id="7nNI4eNtl8F" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="7nNI4eNtl8I" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="ApHj0p716t" role="3bR37C">
        <node concept="3bR9La" id="ApHj0p716u" role="1SiIV1">
          <ref role="3bR37D" node="Ej4tEpnfCS" resolve="org.fbme.platform.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="eo$hKSevhH" role="3bR37C">
        <node concept="3bR9La" id="eo$hKSevhI" role="1SiIV1">
          <ref role="3bR37D" node="ApHj0p70Xv" resolve="org.fbme.language.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="3oevj_m$ukC" role="3bR37C">
        <node concept="3bR9La" id="3oevj_m$ukD" role="1SiIV1">
          <ref role="3bR37D" node="3oevj_m$qiw" resolve="org.fbme.ide.build.plugins" />
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="2ww0H4BOL8J" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="org.fbme.samples.statisticsPlugin.build" />
      <property role="3LESm3" value="1e230472-5031-41e3-a8db-02d0c36f3ee2" />
      <node concept="55IIr" id="2ww0H4BOL8L" role="3LF7KH">
        <node concept="2Ry0Ak" id="2ww0H4BOLb0" role="iGT6I">
          <property role="2Ry0Am" value="samples" />
          <node concept="2Ry0Ak" id="2ww0H4BOLb5" role="2Ry0An">
            <property role="2Ry0Am" value="statistics-plugin" />
            <node concept="2Ry0Ak" id="2ww0H4BOLba" role="2Ry0An">
              <property role="2Ry0Am" value="buildsolution" />
              <node concept="2Ry0Ak" id="5sRy4_w5OWT" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.samples.statisticsPlugin.build.msd" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="2ww0H4BOLbO" role="3bR37C">
        <node concept="3bR9La" id="2ww0H4BOLbP" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
        </node>
      </node>
      <node concept="1BupzO" id="2ww0H4BOLbX" role="3bR31x">
        <property role="3ZfqAx" value="models" />
        <property role="1Hdu6h" value="true" />
        <property role="1HemKv" value="true" />
        <node concept="3LXTmp" id="5sRy4_w6Jh8" role="1HemKq">
          <node concept="55IIr" id="5sRy4_w6Jh3" role="3LXTmr">
            <node concept="2Ry0Ak" id="5sRy4_w6Jh4" role="iGT6I">
              <property role="2Ry0Am" value="samples" />
              <node concept="2Ry0Ak" id="5sRy4_w6Jh5" role="2Ry0An">
                <property role="2Ry0Am" value="statistics-plugin" />
                <node concept="2Ry0Ak" id="5sRy4_w6Jh6" role="2Ry0An">
                  <property role="2Ry0Am" value="buildsolution" />
                  <node concept="2Ry0Ak" id="5sRy4_w6Jh7" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3qWCbU" id="5sRy4_w6Jh9" role="3LXTna">
            <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="ApHj0p714D" role="3bR37C">
        <node concept="3bR9La" id="ApHj0p714E" role="1SiIV1">
          <ref role="3bR37D" node="ApHj0p70Xv" resolve="org.fbme.language.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="ApHj0p716$" role="3bR37C">
        <node concept="3bR9La" id="ApHj0p716_" role="1SiIV1">
          <ref role="3bR37D" node="Ej4tEpnfCS" resolve="org.fbme.platform.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="3oevj_m$ukJ" role="3bR37C">
        <node concept="3bR9La" id="3oevj_m$ukK" role="1SiIV1">
          <ref role="3bR37D" node="3oevj_m$qiw" resolve="org.fbme.ide.build.plugins" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="6kvdbYtXYkJ" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="6kvdbYtXYkK" role="398pKh">
        <node concept="2Ry0Ak" id="6kvdbYtXYkL" role="iGT6I">
          <property role="2Ry0Am" value="lib" />
          <node concept="2Ry0Ak" id="60wxHLH9ueK" role="2Ry0An">
            <property role="2Ry0Am" value="MPS 2021.3" />
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
    <node concept="2sgV4H" id="3oevj_m$qdU" role="1l3spa">
      <ref role="1l3spb" to="kvgc:177eUH8B7jw" resolve="fbme_source_plugins" />
    </node>
    <node concept="2sgV4H" id="Ej4tEpnfEV" role="1l3spa">
      <ref role="1l3spb" to="ci82:68dTcycFmrj" resolve="fbme_platform" />
    </node>
    <node concept="2sgV4H" id="ApHj0p70WG" role="1l3spa">
      <ref role="1l3spb" to="ci81:68dTcycFmrj" resolve="fbme_language" />
    </node>
    <node concept="2sgV4H" id="Ej4tEpnfEW" role="1l3spa">
      <ref role="1l3spb" to="bco3:68dTcycFmrj" resolve="fbme_richediting" />
    </node>
    <node concept="2sgV4H" id="Ej4tEpnfEX" role="1l3spa">
      <ref role="1l3spb" to="4hy5:68dTcycFmrj" resolve="fbme_fordiac" />
    </node>
    <node concept="2sgV4H" id="7nNI4eNtl2i" role="1l3spa">
      <ref role="1l3spb" to="1b2w:68dTcycFmrj" resolve="fbme_smvdebugger" />
    </node>
    <node concept="2sgV4H" id="3tje84kIDDL" role="1l3spa">
      <ref role="1l3spb" to="recy:7ZpdjDjcHim" resolve="fbme_debugger" />
    </node>
    <node concept="2sgV4H" id="2mxBo27MLoR" role="1l3spa">
      <ref role="1l3spb" to="lo8j:68dTcycFmrj" resolve="fbme_nxt" />
    </node>
    <node concept="1l3spV" id="6kvdbYtXYcm" role="1l3spN" />
    <node concept="3b7kt6" id="6kvdbYtXYcn" role="10PD9s" />
  </node>
  <node concept="26EafH" id="1mPaNys5Hbc">
    <property role="26EafI" value="-" />
    <property role="26FY9R" value="jetbrains.mps.Launcher" />
    <property role="TrG5h" value="fbme_script" />
    <ref role="1_kbm$" node="1mPaNys5H5R" resolve="FBME ${version.major}.${version.minor}" />
    <node concept="26Ea6D" id="3ZwMHTeU9qZ" role="26FZ21">
      <property role="26Ea6C" value="Common IntelliJ Platform options:" />
      <property role="2eq24a" value="true" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9r0" role="26FZ21">
      <property role="26Ea6C" value="-Xmx950m" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9r1" role="26FZ21">
      <property role="26Ea6C" value="-XX:ReservedCodeCacheSize=240m" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9r2" role="26FZ21">
      <property role="26Ea6C" value="-XX:+UseConcMarkSweepGC" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9r3" role="26FZ21">
      <property role="26Ea6C" value="-XX:SoftRefLRUPolicyMSPerMB=50" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9r4" role="26FZ21">
      <property role="26Ea6C" value="-ea" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9r5" role="26FZ21">
      <property role="26Ea6C" value="-XX:CICompilerCount=2" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9r6" role="26FZ21">
      <property role="26Ea6C" value="-Dsun.io.useCanonPrefixCache=false" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9r7" role="26FZ21">
      <property role="26Ea6C" value="-Djava.net.preferIPv4Stack=true" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9r8" role="26FZ21">
      <property role="26Ea6C" value="-Djdk.http.auth.tunneling.disabledSchemes=" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9r9" role="26FZ21">
      <property role="26Ea6C" value="-XX:+HeapDumpOnOutOfMemoryError" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9ra" role="26FZ21">
      <property role="26Ea6C" value="-XX:-OmitStackTraceInFastThrow" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rb" role="26FZ21">
      <property role="26Ea6C" value="-Djdk.attach.allowAttachSelf" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rc" role="26FZ21">
      <property role="26Ea6C" value="-Dkotlinx.coroutines.debug=off" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rd" role="26FZ21">
      <property role="26Ea6C" value="-Djdk.module.illegalAccess.silent=true" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9re" role="26FZ21">
      <property role="26Ea6C" value="-Dawt.useSystemAAFontSettings=lcd" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rf" role="26FZ21">
      <property role="26Ea6C" value="-Dsun.java2d.renderer=sun.java2d.marlin.MarlinRenderingEngine" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rg" role="26FZ21">
      <property role="26Ea6C" value="-Dsun.tools.attach.tmp.only=true" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rh" role="26FZ21">
      <property role="26Ea6C" value="Additional MPS options:" />
      <property role="2eq24a" value="true" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9ri" role="26FZ21">
      <property role="26Ea6C" value="-client" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rj" role="26FZ21">
      <property role="26Ea6C" value="-Xss1024k" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rk" role="26FZ21">
      <property role="26Ea6C" value="-XX:NewSize=256m" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rl" role="26FZ21">
      <property role="26Ea6C" value="-Dfile.encoding=UTF-8" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rm" role="26FZ21">
      <property role="26Ea6C" value="-Dapple.awt.graphics.UseQuartz=true" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rn" role="26FZ21">
      <property role="26Ea6C" value="-Dide.mac.message.dialogs.as.sheets=false" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9ro" role="26FZ21">
      <property role="26Ea6C" value="-Didea.invalidate.caches.invalidates.vfs=true" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rp" role="26FZ21">
      <property role="26Ea6C" value="-Dperformance.watcher.freeze.report=false" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rq" role="26FZ21">
      <property role="26Ea6C" value="-Didea.log.config.file=log.xml" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rr" role="26FZ21">
      <property role="26Ea6C" value="-Didea.indices.psi.dependent.default=false" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rs" role="26FZ21">
      <property role="2eq24a" value="true" />
      <property role="26Ea6C" value="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5071" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rt" role="2hID6k">
      <property role="26Ea6C" value="Common IntelliJ Platform options:" />
      <property role="2eq24a" value="true" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9ru" role="2hID6k">
      <property role="26Ea6C" value="-Xmx2048m" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rv" role="2hID6k">
      <property role="26Ea6C" value="-XX:ReservedCodeCacheSize=240m" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rw" role="2hID6k">
      <property role="26Ea6C" value="-XX:+UseConcMarkSweepGC" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rx" role="2hID6k">
      <property role="26Ea6C" value="-XX:SoftRefLRUPolicyMSPerMB=50" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9ry" role="2hID6k">
      <property role="26Ea6C" value="-ea" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rz" role="2hID6k">
      <property role="26Ea6C" value="-XX:CICompilerCount=2" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9r$" role="2hID6k">
      <property role="26Ea6C" value="-Dsun.io.useCanonPrefixCache=false" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9r_" role="2hID6k">
      <property role="26Ea6C" value="-Djava.net.preferIPv4Stack=true" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rA" role="2hID6k">
      <property role="26Ea6C" value="-Djdk.http.auth.tunneling.disabledSchemes=" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rB" role="2hID6k">
      <property role="26Ea6C" value="-XX:+HeapDumpOnOutOfMemoryError" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rC" role="2hID6k">
      <property role="26Ea6C" value="-XX:-OmitStackTraceInFastThrow" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rD" role="2hID6k">
      <property role="26Ea6C" value="-Djdk.attach.allowAttachSelf" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rE" role="2hID6k">
      <property role="26Ea6C" value="-Dkotlinx.coroutines.debug=off" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rF" role="2hID6k">
      <property role="26Ea6C" value="-Djdk.module.illegalAccess.silent=true" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rG" role="2hID6k">
      <property role="26Ea6C" value="-Dawt.useSystemAAFontSettings=lcd" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rH" role="2hID6k">
      <property role="26Ea6C" value="-Dsun.java2d.renderer=sun.java2d.marlin.MarlinRenderingEngine" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rI" role="2hID6k">
      <property role="26Ea6C" value="-Dsun.tools.attach.tmp.only=true" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rJ" role="2hID6k">
      <property role="26Ea6C" value="Additional MPS options:" />
      <property role="2eq24a" value="true" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rK" role="2hID6k">
      <property role="26Ea6C" value="-client" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rL" role="2hID6k">
      <property role="26Ea6C" value="-Xss1024k" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rM" role="2hID6k">
      <property role="26Ea6C" value="-XX:NewSize=256m" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rN" role="2hID6k">
      <property role="26Ea6C" value="-Dfile.encoding=UTF-8" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rO" role="2hID6k">
      <property role="26Ea6C" value="-Dapple.awt.graphics.UseQuartz=true" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rP" role="2hID6k">
      <property role="26Ea6C" value="-Dide.mac.message.dialogs.as.sheets=false" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rQ" role="2hID6k">
      <property role="26Ea6C" value="-Didea.invalidate.caches.invalidates.vfs=true" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rR" role="2hID6k">
      <property role="26Ea6C" value="-Dperformance.watcher.freeze.report=false" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rS" role="2hID6k">
      <property role="26Ea6C" value="-Didea.log.config.file=log.xml" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rT" role="2hID6k">
      <property role="26Ea6C" value="-Didea.indices.psi.dependent.default=false" />
    </node>
    <node concept="26Ea6D" id="3ZwMHTeU9rU" role="2hID6k">
      <property role="2eq24a" value="true" />
      <property role="26Ea6C" value="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5071" />
    </node>
    <node concept="26EafG" id="3ZwMHTeU9rV" role="26Ea7d">
      <property role="26EafJ" value="lib/branding.jar" />
    </node>
    <node concept="26EafG" id="3ZwMHTeU9rW" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-boot.jar" />
    </node>
    <node concept="26EafG" id="3ZwMHTeU9rX" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-boot-util.jar" />
    </node>
    <node concept="26EafG" id="3ZwMHTeU9rY" role="26Ea7d">
      <property role="26EafJ" value="lib/bootstrap.jar" />
    </node>
    <node concept="26EafG" id="3ZwMHTeU9rZ" role="26Ea7d">
      <property role="26EafJ" value="lib/extensions.jar" />
    </node>
    <node concept="26EafG" id="3ZwMHTeU9s0" role="26Ea7d">
      <property role="26EafJ" value="lib/util.jar" />
    </node>
    <node concept="26EafG" id="3ZwMHTeU9s1" role="26Ea7d">
      <property role="26EafJ" value="lib/3rd-party-rt.jar" />
    </node>
    <node concept="26EafG" id="3ZwMHTeU9s2" role="26Ea7d">
      <property role="26EafJ" value="lib/jna.jar" />
    </node>
  </node>
  <node concept="1l3spW" id="4tzOUaV86iF">
    <property role="TrG5h" value="fbme_rcp_macos" />
    <property role="2DA0ip" value="../" />
    <property role="turDy" value="build-rcp-macos.xml" />
    <node concept="2sgV4H" id="4tzOUaV86iG" role="1l3spa">
      <ref role="1l3spb" node="1mPaNys5H5_" resolve="fbme_rcp_shared" />
    </node>
    <node concept="1l3spV" id="4tzOUaV86iH" role="1l3spN">
      <node concept="3981dG" id="4tzOUaV86k5" role="39821P">
        <node concept="3_J27D" id="4tzOUaV86k6" role="Nbhlr">
          <node concept="3Mxwew" id="4tzOUaV86k7" role="3MwsjC">
            <property role="3MwjfP" value="fbme" />
          </node>
          <node concept="3Mxwew" id="4tzOUaV86k8" role="3MwsjC">
            <property role="3MwjfP" value="-" />
          </node>
          <node concept="3Mxwey" id="4tzOUaV86k9" role="3MwsjC">
            <ref role="3Mxwex" node="4tzOUaV8K6Y" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="4tzOUaV86ka" role="3MwsjC">
            <property role="3MwjfP" value=".macos.zip" />
          </node>
        </node>
        <node concept="398223" id="4tzOUaV86kb" role="39821P">
          <node concept="398223" id="4tzOUaV86kc" role="39821P">
            <node concept="3ygNvl" id="4tzOUaV86kd" role="39821P">
              <ref role="3ygNvj" node="1mPaNys5H6_" />
            </node>
            <node concept="3_J27D" id="4tzOUaV86ke" role="Nbhlr">
              <node concept="3Mxwew" id="4tzOUaV86kf" role="3MwsjC">
                <property role="3MwjfP" value="Contents" />
              </node>
            </node>
            <node concept="398223" id="4tzOUaV8XG$" role="39821P">
              <node concept="3_J27D" id="4tzOUaV8XG_" role="Nbhlr">
                <node concept="3Mxwew" id="4tzOUaV8XGA" role="3MwsjC">
                  <property role="3MwjfP" value="jbr" />
                </node>
              </node>
              <node concept="2HvfSZ" id="4tzOUaV8XGB" role="39821P">
                <node concept="55IIr" id="4tzOUaV8XGC" role="2HvfZ0">
                  <node concept="2Ry0Ak" id="4tzOUaV8XGD" role="iGT6I">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="4tzOUaV8XGE" role="2Ry0An">
                      <property role="2Ry0Am" value="jbr" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="4tzOUaV86kg" role="39821P">
              <node concept="3_J27D" id="4tzOUaV86kh" role="Nbhlr">
                <node concept="3Mxwew" id="4tzOUaV86ki" role="3MwsjC">
                  <property role="3MwjfP" value="Resources" />
                </node>
              </node>
              <node concept="28jJK3" id="4tzOUaV86kj" role="39821P">
                <node concept="55IIr" id="4tzOUaV86kk" role="28jJRO">
                  <node concept="2Ry0Ak" id="4tzOUaV86kl" role="iGT6I">
                    <property role="2Ry0Am" value="icons" />
                    <node concept="2Ry0Ak" id="4tzOUaV86km" role="2Ry0An">
                      <property role="2Ry0Am" value="logo.png" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="4tzOUaV86kn" role="39821P">
                <node concept="55IIr" id="4tzOUaV86ko" role="28jJRO">
                  <node concept="2Ry0Ak" id="4tzOUaV86kp" role="iGT6I">
                    <property role="2Ry0Am" value="icons" />
                    <node concept="2Ry0Ak" id="4tzOUaV86kq" role="2Ry0An">
                      <property role="2Ry0Am" value="fbme.icns" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28u9K_" id="4tzOUaV86kr" role="39821P">
              <property role="28hIV_" value="MacOSX executable to run application" />
            </node>
            <node concept="398223" id="4tzOUaV86ks" role="39821P">
              <node concept="28jJK3" id="4tzOUaV86kt" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="4tzOUaV86ku" role="28jJRO">
                  <ref role="398BVh" node="4tzOUaV86lv" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="4tzOUaV86kv" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="4tzOUaV86kw" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="4tzOUaV86kx" role="2Ry0An">
                        <property role="2Ry0Am" value="Contents" />
                        <node concept="2Ry0Ak" id="4tzOUaV86ky" role="2Ry0An">
                          <property role="2Ry0Am" value="MacOS" />
                          <node concept="2Ry0Ak" id="4tzOUaV86kz" role="2Ry0An">
                            <property role="2Ry0Am" value="mps" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2$gBol" id="4tzOUaV86k$" role="28jJR8">
                  <property role="2$htvj" value="*" />
                  <node concept="NbPM2" id="4tzOUaV86k_" role="2$htvi">
                    <node concept="3Mxwew" id="4tzOUaV86kA" role="3MwsjC">
                      <property role="3MwjfP" value="fbme" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="4tzOUaV86kB" role="Nbhlr">
                <node concept="3Mxwew" id="4tzOUaV86kC" role="3MwsjC">
                  <property role="3MwjfP" value="MacOS" />
                </node>
              </node>
            </node>
            <node concept="28u9K_" id="4tzOUaV86kD" role="39821P">
              <property role="28hIV_" value="Fill Info.plist with current build version and number" />
            </node>
            <node concept="28jJK3" id="4tzOUaV86kE" role="39821P">
              <node concept="55IIr" id="4tzOUaV86kF" role="28jJRO">
                <node concept="2Ry0Ak" id="4tzOUaV86kG" role="iGT6I">
                  <property role="2Ry0Am" value="build" />
                  <node concept="2Ry0Ak" id="4tzOUaV86kH" role="2Ry0An">
                    <property role="2Ry0Am" value="startup" />
                    <node concept="2Ry0Ak" id="4tzOUaV86kI" role="2Ry0An">
                      <property role="2Ry0Am" value="Info.plist.xml" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2$gBol" id="4tzOUaV86kJ" role="28jJR8">
                <property role="2$htvj" value="*" />
                <node concept="NbPM2" id="4tzOUaV86kK" role="2$htvi">
                  <node concept="3Mxwew" id="4tzOUaV86kL" role="3MwsjC">
                    <property role="3MwjfP" value="Info.plist" />
                  </node>
                </node>
              </node>
              <node concept="1688n2" id="4tzOUaV86kM" role="28jJR8">
                <property role="1688n3" value="\$version\$" />
                <node concept="NbPM2" id="4tzOUaV86kN" role="1688n0">
                  <node concept="3Mxwey" id="4tzOUaV86kO" role="3MwsjC">
                    <ref role="3Mxwex" node="4tzOUaV8K7k" resolve="version" />
                  </node>
                </node>
              </node>
              <node concept="1688n2" id="4tzOUaV86kP" role="28jJR8">
                <property role="1688n3" value="\$build\$" />
                <node concept="NbPM2" id="4tzOUaV86kQ" role="1688n0">
                  <node concept="3Mxwey" id="4tzOUaV86kR" role="3MwsjC">
                    <ref role="3Mxwex" node="4tzOUaV8K6Y" resolve="build.number" />
                  </node>
                </node>
              </node>
              <node concept="3co7Ac" id="4tzOUaV86kS" role="28jJR8">
                <property role="3co7Am" value="3D3G23Q8WAL/lf" />
                <property role="3cpA_W" value="true" />
              </node>
            </node>
            <node concept="398223" id="4tzOUaV86kT" role="39821P">
              <node concept="3_J27D" id="4tzOUaV86kU" role="Nbhlr">
                <node concept="3Mxwew" id="4tzOUaV86kV" role="3MwsjC">
                  <property role="3MwjfP" value="bin" />
                </node>
              </node>
              <node concept="28u9K_" id="4tzOUaV86kW" role="39821P">
                <property role="28hIV_" value="Executable files and fsnotifier" />
              </node>
              <node concept="yKbIv" id="4tzOUaV86kX" role="39821P">
                <property role="yKbIr" value="755" />
                <node concept="2HvfSZ" id="4tzOUaV86kY" role="39821P">
                  <node concept="3LWZYq" id="4tzOUaV86kZ" role="2HvfZ1">
                    <property role="3LWZYl" value="**/*.dylib" />
                  </node>
                  <node concept="3LWZYq" id="4tzOUaV86l0" role="2HvfZ1">
                    <property role="3LWZYl" value="**/*.py" />
                  </node>
                  <node concept="398BVA" id="4tzOUaV86l1" role="2HvfZ0">
                    <ref role="398BVh" node="4tzOUaV86lv" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="4tzOUaV86l2" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="4tzOUaV86l3" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28u9K_" id="4tzOUaV86l4" role="39821P">
                <property role="28hIV_" value="Python script with updated end of line" />
              </node>
              <node concept="yKbIv" id="4tzOUaV86l5" role="39821P">
                <property role="yKbIr" value="755" />
                <node concept="2HvfSZ" id="4tzOUaV86l6" role="39821P">
                  <node concept="3LWZYx" id="4tzOUaV86l7" role="2HvfZ1">
                    <property role="3LWZYw" value="**/*.py" />
                  </node>
                  <node concept="3co7Ac" id="4tzOUaV86l8" role="2HvfZ1">
                    <property role="3co7Am" value="3D3G23Q8WAL/lf" />
                    <property role="3cpA_W" value="true" />
                  </node>
                  <node concept="398BVA" id="4tzOUaV86l9" role="2HvfZ0">
                    <ref role="398BVh" node="4tzOUaV86lv" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="4tzOUaV86la" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="4tzOUaV86lb" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28u9K_" id="4tzOUaV86lc" role="39821P">
                <property role="28hIV_" value="Required libraries" />
              </node>
              <node concept="yKbIv" id="4tzOUaV86ld" role="39821P">
                <node concept="2HvfSZ" id="4tzOUaV86le" role="39821P">
                  <node concept="3LWZYx" id="4tzOUaV86lf" role="2HvfZ1">
                    <property role="3LWZYw" value="**/*.dylib" />
                  </node>
                  <node concept="398BVA" id="4tzOUaV86lg" role="2HvfZ0">
                    <ref role="398BVh" node="4tzOUaV86lv" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="4tzOUaV86lh" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="4tzOUaV86li" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28u9K_" id="4tzOUaV86lj" role="39821P">
                <property role="28hIV_" value="MacOSX distribution should always use 64 bit startup options" />
              </node>
              <node concept="28jJK3" id="4tzOUaV86lk" role="39821P">
                <node concept="3co7Ac" id="4tzOUaV86ll" role="28jJR8">
                  <property role="3co7Am" value="3D3G23Q8WAL/lf" />
                  <property role="3cpA_W" value="true" />
                </node>
                <node concept="55IIr" id="4tzOUaV86lm" role="28jJRO">
                  <node concept="2Ry0Ak" id="4tzOUaV86ln" role="iGT6I">
                    <property role="2Ry0Am" value="build" />
                    <node concept="2Ry0Ak" id="4tzOUaV86lo" role="2Ry0An">
                      <property role="2Ry0Am" value="startup" />
                      <node concept="2Ry0Ak" id="4tzOUaV86lp" role="2Ry0An">
                        <property role="2Ry0Am" value="fbme64.vmoptions" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2$htT0" id="4tzOUaV86lq" role="28jJR8">
                  <property role="2$htTZ" value="fbme64.vmoptions" />
                  <property role="2$htTY" value="fbme.vmoptions" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="4tzOUaV86lr" role="Nbhlr">
            <node concept="3Mxwew" id="4tzOUaV86ls" role="3MwsjC">
              <property role="3MwjfP" value="fbme " />
            </node>
            <node concept="3Mxwey" id="4tzOUaV86lt" role="3MwsjC">
              <ref role="3Mxwex" node="4tzOUaV8K7k" resolve="version" />
            </node>
            <node concept="3Mxwew" id="4tzOUaV86lu" role="3MwsjC">
              <property role="3MwjfP" value=".app" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="4tzOUaV86lv" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="4tzOUaV86lw" role="398pKh">
        <node concept="2Ry0Ak" id="4tzOUaV86lx" role="iGT6I">
          <property role="2Ry0Am" value="lib" />
          <node concept="2Ry0Ak" id="4tzOUaV86ly" role="2Ry0An">
            <property role="2Ry0Am" value="MPS 2021.3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="4tzOUaV8K6Y" role="1l3spd">
      <property role="TrG5h" value="build.number" />
      <node concept="aVJcg" id="4tzOUaV8K6Z" role="aVJcv">
        <node concept="NbPM2" id="4tzOUaV8K70" role="aVJcq" />
      </node>
    </node>
    <node concept="2kB4xC" id="4tzOUaV8K7k" role="1l3spd">
      <property role="TrG5h" value="version" />
      <node concept="aVJcg" id="4tzOUaV8K7x" role="aVJcv">
        <node concept="NbPM2" id="4tzOUaV8K7w" role="aVJcq">
          <node concept="3Mxwew" id="2iirf$jLKBy" role="3MwsjC">
            <property role="3MwjfP" value="1.0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="4tzOUaV86lz" role="auvoZ">
      <node concept="2Ry0Ak" id="4tzOUaV86l$" role="iGT6I">
        <property role="2Ry0Am" value="build" />
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="4tzOUaV86mZ">
    <property role="TrG5h" value="fbme_rcp_linux" />
    <property role="2DA0ip" value="../" />
    <property role="turDy" value="build-rcp-linux.xml" />
    <node concept="2sgV4H" id="4tzOUaV86n0" role="1l3spa">
      <ref role="1l3spb" node="1mPaNys5H5_" resolve="fbme_rcp_shared" />
    </node>
    <node concept="1l3spV" id="4tzOUaV86n1" role="1l3spN">
      <node concept="1tmT9g" id="4tzOUaV86n2" role="39821P">
        <property role="AB_bT" value="1HQQX4XU8$A/gzip" />
        <node concept="3ygNvl" id="4tzOUaV86n3" role="39821P">
          <ref role="3ygNvj" node="1mPaNys5H6_" />
        </node>
        <node concept="398223" id="4tzOUaV8XEy" role="39821P">
          <node concept="3_J27D" id="4tzOUaV8XE$" role="Nbhlr">
            <node concept="3Mxwew" id="4tzOUaV8XF6" role="3MwsjC">
              <property role="3MwjfP" value="jbr" />
            </node>
          </node>
          <node concept="2HvfSZ" id="4tzOUaV8XF8" role="39821P">
            <node concept="55IIr" id="4tzOUaV8XF9" role="2HvfZ0">
              <node concept="2Ry0Ak" id="4tzOUaV8XFf" role="iGT6I">
                <property role="2Ry0Am" value="lib" />
                <node concept="2Ry0Ak" id="4tzOUaV8XFk" role="2Ry0An">
                  <property role="2Ry0Am" value="jbr" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="398223" id="4tzOUaV86n4" role="39821P">
          <node concept="3_J27D" id="4tzOUaV86n5" role="Nbhlr">
            <node concept="3Mxwew" id="4tzOUaV86n6" role="3MwsjC">
              <property role="3MwjfP" value="bin" />
            </node>
          </node>
          <node concept="28u9K_" id="4tzOUaV86n7" role="39821P">
            <property role="28hIV_" value="Linux executable files and fsnotifier" />
          </node>
          <node concept="yKbIv" id="4tzOUaV86n8" role="39821P">
            <property role="yKbIr" value="755" />
            <node concept="2HvfSZ" id="4tzOUaV86n9" role="39821P">
              <node concept="398BVA" id="4tzOUaV86na" role="2HvfZ0">
                <ref role="398BVh" node="4tzOUaV86pN" resolve="mps_home" />
                <node concept="2Ry0Ak" id="4tzOUaV86nb" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="4tzOUaV86nc" role="2Ry0An">
                    <property role="2Ry0Am" value="linux" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28u9K_" id="4tzOUaV86nd" role="39821P">
            <property role="28hIV_" value="Startup options for 32 and 64 bit systems" />
          </node>
          <node concept="28jJK3" id="4tzOUaV86ne" role="39821P">
            <node concept="3co7Ac" id="4tzOUaV86nf" role="28jJR8">
              <property role="3co7Am" value="3D3G23Q8WAL/lf" />
              <property role="3cpA_W" value="true" />
            </node>
            <node concept="55IIr" id="4tzOUaV86ng" role="28jJRO">
              <node concept="2Ry0Ak" id="4tzOUaV86nh" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4tzOUaV86ni" role="2Ry0An">
                  <property role="2Ry0Am" value="startup" />
                  <node concept="2Ry0Ak" id="4tzOUaV86nj" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="4tzOUaV86nk" role="39821P">
            <node concept="3co7Ac" id="4tzOUaV86nl" role="28jJR8">
              <property role="3co7Am" value="3D3G23Q8WAL/lf" />
              <property role="3cpA_W" value="true" />
            </node>
            <node concept="55IIr" id="4tzOUaV86nm" role="28jJRO">
              <node concept="2Ry0Ak" id="4tzOUaV86nn" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4tzOUaV86no" role="2Ry0An">
                  <property role="2Ry0Am" value="startup" />
                  <node concept="2Ry0Ak" id="4tzOUaV86np" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme64.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28u9K_" id="4tzOUaV86nq" role="39821P">
            <property role="28hIV_" value="Linux startup script" />
          </node>
          <node concept="28jJK3" id="4tzOUaV86nr" role="39821P">
            <property role="28jJZ5" value="755" />
            <node concept="3co7Ac" id="4tzOUaV86ns" role="28jJR8">
              <property role="3co7Am" value="3D3G23Q8WAL/lf" />
              <property role="3cpA_W" value="true" />
            </node>
            <node concept="55IIr" id="4tzOUaV86nt" role="28jJRO">
              <node concept="2Ry0Ak" id="4tzOUaV86nu" role="iGT6I">
                <property role="2Ry0Am" value="build" />
                <node concept="2Ry0Ak" id="4tzOUaV86nv" role="2Ry0An">
                  <property role="2Ry0Am" value="startup" />
                  <node concept="2Ry0Ak" id="4tzOUaV86nw" role="2Ry0An">
                    <property role="2Ry0Am" value="fbme.sh" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="4tzOUaV86nx" role="Nbhlr">
          <node concept="3Mxwew" id="4tzOUaV86ny" role="3MwsjC">
            <property role="3MwjfP" value="fbme" />
          </node>
          <node concept="3Mxwew" id="4tzOUaV86nz" role="3MwsjC">
            <property role="3MwjfP" value="-" />
          </node>
          <node concept="3Mxwey" id="4tzOUaV86n$" role="3MwsjC">
            <ref role="3Mxwex" node="2iirf$jLKB$" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="4tzOUaV86n_" role="3MwsjC">
            <property role="3MwjfP" value=".tar.gz" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="4tzOUaV86pN" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="4tzOUaV86pO" role="398pKh">
        <node concept="2Ry0Ak" id="4tzOUaV86pP" role="iGT6I">
          <property role="2Ry0Am" value="lib" />
          <node concept="2Ry0Ak" id="4tzOUaV86pQ" role="2Ry0An">
            <property role="2Ry0Am" value="MPS 2021.3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="2iirf$jLKB$" role="1l3spd">
      <property role="TrG5h" value="build.number" />
      <node concept="aVJcg" id="2iirf$jLKB_" role="aVJcv">
        <node concept="NbPM2" id="2iirf$jLKBA" role="aVJcq" />
      </node>
    </node>
    <node concept="2kB4xC" id="2iirf$jLKBB" role="1l3spd">
      <property role="TrG5h" value="version" />
      <node concept="aVJcg" id="2iirf$jLKBC" role="aVJcv">
        <node concept="NbPM2" id="2iirf$jLKBD" role="aVJcq">
          <node concept="3Mxwew" id="2iirf$jLKBE" role="3MwsjC">
            <property role="3MwjfP" value="1.0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="4tzOUaV86pR" role="auvoZ">
      <node concept="2Ry0Ak" id="4tzOUaV86pS" role="iGT6I">
        <property role="2Ry0Am" value="build" />
      </node>
    </node>
  </node>
</model>

