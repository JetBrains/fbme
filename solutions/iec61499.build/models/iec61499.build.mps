<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d873dcfc-44fd-449a-83a0-b73f30522ba6(iec61499.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="3" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml" version="0" />
    <use id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="al5i" ref="r:742f344d-4dc4-4862-992c-4bc94b094870(com.mbeddr.mpsutil.dev.build)" />
    <import index="90a9" ref="r:fb24ac52-5985-4947-bba9-25be6fd32c1a(de.slisson.mps.all.build)" implicit="true" />
  </imports>
  <registry>
    <language id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml">
      <concept id="6666499814681541919" name="jetbrains.mps.core.xml.structure.XmlTextValue" flags="ng" index="2pMdtt">
        <property id="6666499814681541920" name="text" index="2pMdty" />
      </concept>
      <concept id="6666499814681415858" name="jetbrains.mps.core.xml.structure.XmlElement" flags="ng" index="2pNNFK">
        <property id="6666499814681415862" name="tagName" index="2pNNFO" />
        <property id="6999033275467544021" name="shortEmptyNotation" index="qg3DV" />
        <child id="6666499814681415861" name="attributes" index="2pNNFR" />
        <child id="1622293396948928802" name="content" index="3o6s8t" />
      </concept>
      <concept id="6666499814681447923" name="jetbrains.mps.core.xml.structure.XmlAttribute" flags="ng" index="2pNUuL">
        <property id="6666499814681447926" name="attrName" index="2pNUuO" />
        <child id="6666499814681541918" name="value" index="2pMdts" />
      </concept>
      <concept id="1622293396948952339" name="jetbrains.mps.core.xml.structure.XmlText" flags="nn" index="3o6iSG" />
    </language>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="9126048691955220717" name="jetbrains.mps.build.structure.BuildLayout_File" flags="ng" index="28jJK3">
        <property id="9126048691955221291" name="filemode" index="28jJZ5" />
        <child id="9126048691955220774" name="parameters" index="28jJR8" />
        <child id="9126048691955220762" name="path" index="28jJRO" />
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
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT" />
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
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
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
      <concept id="6592112598314586625" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup" flags="ng" index="m$f5U">
        <reference id="6592112598314586626" name="group" index="m$f5T" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="1359186315025500371" name="xml" index="20twgj" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <property id="1500819558096356884" name="doNotCompile" index="2GAjPV" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
      <concept id="7753544965996377997" name="jetbrains.mps.build.mps.structure.BuildMps_Branding" flags="ng" index="1zClus">
        <property id="3497141547781541445" name="minor" index="2OjLBK" />
        <property id="3497141547781541444" name="major" index="2OjLBL" />
        <property id="3497141547781541446" name="eap" index="2OjLBN" />
        <child id="6845119683729337285" name="progressY" index="27hAJg" />
        <child id="6845119683729294884" name="progressColor" index="27hGoL" />
        <child id="7962467864632399185" name="progressX" index="2gocG4" />
        <child id="7962467864633062782" name="progressHeight" index="2gqIGF" />
        <child id="6108265972537182997" name="aboutScreen" index="2EqU2s" />
        <child id="6108265972537182996" name="splashScreen" index="2EqU2t" />
        <child id="6108265972537229337" name="buildNumber" index="2EteIg" />
        <child id="6108265972537229339" name="icon16" index="2EteIi" />
        <child id="6108265972537229338" name="icon32" index="2EteIj" />
        <child id="6108265972537229340" name="icon32opaque" index="2EteIl" />
        <child id="6108265972537372847" name="shortName" index="2EtHGA" />
        <child id="6108265972537372848" name="fullName" index="2EtHGT" />
        <child id="8795525031433238889" name="textColor" index="HFo83" />
        <child id="3497141547781549827" name="codename" index="2OjNyQ" />
        <child id="1462305029084462472" name="buildDate" index="R$TG_" />
        <child id="772379520210716142" name="welcomeLogo" index="3vi$VU" />
      </concept>
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD">
        <child id="9200313594498201639" name="generator" index="1TViLv" />
      </concept>
      <concept id="3189788309731922642" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyUseLanguage" flags="ng" index="1E1Vl3">
        <reference id="3189788309731922643" name="language" index="1E1Vl2" />
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
  <node concept="1l3spW" id="DRbyvqGLli">
    <property role="TrG5h" value="iec61499" />
    <property role="2DA0ip" value="../../" />
    <node concept="10PD9b" id="DRbyvqGLlj" role="10PD9s" />
    <node concept="3b7kt6" id="DRbyvqGLlk" role="10PD9s" />
    <node concept="1zClus" id="DRbyvqGLlx" role="3989C9">
      <property role="2OjLBK" value="99" />
      <property role="TrG5h" value="MPS" />
      <property role="2OjLBN" value="true" />
      <property role="2OjLBL" value="0" />
      <node concept="55IIr" id="DRbyvqGLly" role="3vi$VU">
        <node concept="2Ry0Ak" id="DRbyvqGLlz" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="DRbyvqGLl$" role="2Ry0An">
            <property role="2Ry0Am" value="logo.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="DRbyvqGLl_" role="2EteIg">
        <node concept="3Mxwey" id="DRbyvqGLlA" role="3MwsjC">
          <ref role="3Mxwex" node="DRbyvqGLln" resolve="build.number" />
        </node>
      </node>
      <node concept="55IIr" id="DRbyvqGLlB" role="2EteIi">
        <node concept="2Ry0Ak" id="DRbyvqGLlC" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="DRbyvqGLlD" role="2Ry0An">
            <property role="2Ry0Am" value="MPS16.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="DRbyvqGLlE" role="2EtHGA">
        <node concept="3Mxwew" id="DRbyvqGLlF" role="3MwsjC">
          <property role="3MwjfP" value="iec61499" />
        </node>
      </node>
      <node concept="3_J27D" id="DRbyvqGLlG" role="2EtHGT">
        <node concept="3Mxwew" id="DRbyvqGLlH" role="3MwsjC">
          <property role="3MwjfP" value="iec61499" />
        </node>
      </node>
      <node concept="NbPM2" id="DRbyvqGLlI" role="2OjNyQ">
        <node concept="3Mxwew" id="DRbyvqGLlJ" role="3MwsjC">
          <property role="3MwjfP" value="iec61499" />
        </node>
      </node>
      <node concept="3_J27D" id="DRbyvqGLlK" role="HFo83">
        <node concept="3Mxwew" id="DRbyvqGLlL" role="3MwsjC">
          <property role="3MwjfP" value="002387" />
        </node>
      </node>
      <node concept="55IIr" id="DRbyvqGLlM" role="2EteIj">
        <node concept="2Ry0Ak" id="DRbyvqGLlN" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="DRbyvqGLlO" role="2Ry0An">
            <property role="2Ry0Am" value="MPS32.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="DRbyvqGLlP" role="R$TG_">
        <node concept="3Mxwey" id="DRbyvqGLlQ" role="3MwsjC">
          <ref role="3Mxwex" node="DRbyvqGLll" resolve="date" />
        </node>
      </node>
      <node concept="55IIr" id="DRbyvqGLlR" role="2EteIl">
        <node concept="2Ry0Ak" id="DRbyvqGLlS" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="DRbyvqGLlT" role="2Ry0An">
            <property role="2Ry0Am" value="MPS32.png" />
          </node>
        </node>
      </node>
      <node concept="55IIr" id="DRbyvqGLlU" role="2EqU2t">
        <node concept="2Ry0Ak" id="DRbyvqGLlV" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="DRbyvqGLlW" role="2Ry0An">
            <property role="2Ry0Am" value="splash.png" />
          </node>
        </node>
      </node>
      <node concept="55IIr" id="DRbyvqGLlX" role="2EqU2s">
        <node concept="2Ry0Ak" id="DRbyvqGLlY" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="DRbyvqGLlZ" role="2Ry0An">
            <property role="2Ry0Am" value="about.png" />
          </node>
        </node>
      </node>
      <node concept="NbPM2" id="537nKv8IlDx" role="27hGoL">
        <node concept="3Mxwew" id="537nKv8IlDw" role="3MwsjC">
          <property role="3MwjfP" value="000000" />
        </node>
      </node>
      <node concept="NbPM2" id="537nKv8IlDR" role="2gocG4">
        <node concept="3Mxwew" id="537nKv8IlDQ" role="3MwsjC">
          <property role="3MwjfP" value="100" />
        </node>
      </node>
      <node concept="NbPM2" id="537nKv8IlEd" role="27hAJg">
        <node concept="3Mxwew" id="537nKv8IlEc" role="3MwsjC">
          <property role="3MwjfP" value="50" />
        </node>
      </node>
      <node concept="NbPM2" id="537nKv8IlEz" role="2gqIGF">
        <node concept="3Mxwew" id="537nKv8IlEy" role="3MwsjC">
          <property role="3MwjfP" value="10" />
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="DRbyvqGLll" role="1l3spd">
      <property role="TrG5h" value="date" />
      <node concept="hHN3E" id="DRbyvqGLlm" role="aVJcv">
        <property role="hHN3Y" value="yyyyMMdd" />
      </node>
    </node>
    <node concept="2kB4xC" id="DRbyvqGLln" role="1l3spd">
      <property role="TrG5h" value="build.number" />
      <node concept="aVJcg" id="DRbyvqGLlo" role="aVJcv">
        <node concept="NbPM2" id="DRbyvqGLlp" role="aVJcq">
          <node concept="3Mxwew" id="DRbyvqGLlq" role="3MwsjC">
            <property role="3MwjfP" value="iec61499-172.SNAPSHOT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="DRbyvqGLlr" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
    <node concept="2kB4xC" id="537nKv8IlFj" role="1l3spd">
      <property role="TrG5h" value="ide-version" />
      <node concept="aVJcg" id="537nKv8IlG3" role="aVJcv">
        <node concept="NbPM2" id="537nKv8IlG2" role="aVJcq">
          <node concept="3Mxwew" id="537nKv8IlG1" role="3MwsjC">
            <property role="3MwjfP" value="0.99" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="DRbyvqGLls" role="1l3spa">
      <ref role="1l3spb" to="ffeo:1diLdO26mQ6" resolve="mpsStandalone" />
      <node concept="398BVA" id="DRbyvqGLlt" role="2JcizS">
        <ref role="398BVh" node="DRbyvqGLlr" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="DRbyvqGLlu" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5rNMDvYzelV" resolve="mpsMakePlugin" />
      <node concept="398BVA" id="DRbyvqGLlv" role="2JcizS">
        <ref role="398BVh" node="DRbyvqGLlr" resolve="mps_home" />
        <node concept="2Ry0Ak" id="DRbyvqGLlw" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="DRbyvqIUyA" role="1l3spa">
      <ref role="1l3spb" to="al5i:3AVJcIMlF8l" resolve="com.mbeddr.platform" />
      <node concept="398BVA" id="DRbyvqIUzS" role="2JcizS">
        <ref role="398BVh" node="DRbyvqGLlr" resolve="mps_home" />
        <node concept="2Ry0Ak" id="DRbyvqIUzZ" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="DRbyvqGLmt" role="1l3spN">
      <node concept="3_I8Xc" id="DRbyvqGLm_" role="39821P">
        <ref role="3_I8Xa" to="ffeo:1diLdO26H79" resolve="languages" />
      </node>
      <node concept="3_I8Xc" id="DRbyvqGLmA" role="39821P">
        <ref role="3_I8Xa" to="ffeo:1aRUp2KiMC$" resolve="license" />
      </node>
      <node concept="398223" id="DRbyvqGLmB" role="39821P">
        <node concept="3_J27D" id="DRbyvqGLmC" role="Nbhlr">
          <node concept="3Mxwew" id="DRbyvqGLmD" role="3MwsjC">
            <property role="3MwjfP" value="bin" />
          </node>
        </node>
        <node concept="3ygNvl" id="DRbyvqGLmE" role="39821P">
          <ref role="3ygNvj" to="ffeo:3cxBkkDa4_O" resolve="bin" />
          <node concept="3LWZYx" id="DRbyvqGLmF" role="1juEy9">
            <property role="3LWZYw" value="log.xml" />
          </node>
          <node concept="3LWZYx" id="DRbyvqGLmG" role="1juEy9">
            <property role="3LWZYw" value="log4j.dtd" />
          </node>
        </node>
        <node concept="28jJK3" id="DRbyvqGLmH" role="39821P">
          <node concept="1688n2" id="DRbyvqGLmI" role="28jJR8">
            <property role="1688n6" value="g" />
            <property role="1688n3" value="\.MPS(\w+)" />
            <node concept="NbPM2" id="DRbyvqGLmJ" role="1688n0">
              <node concept="3Mxwew" id="DRbyvqGLmK" role="3MwsjC">
                <property role="3MwjfP" value="\." />
              </node>
              <node concept="3Mxwey" id="DRbyvqGLmL" role="3MwsjC">
                <ref role="3Mxwex" node="DRbyvqGLln" resolve="build.number" />
              </node>
            </node>
          </node>
          <node concept="398BVA" id="DRbyvqGLmx" role="28jJRO">
            <ref role="398BVh" node="DRbyvqGLlr" resolve="mps_home" />
            <node concept="2Ry0Ak" id="DRbyvqGLmy" role="iGT6I">
              <property role="2Ry0Am" value="bin" />
              <node concept="2Ry0Ak" id="DRbyvqGLmz" role="2Ry0An">
                <property role="2Ry0Am" value="idea.properties" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="398223" id="DRbyvqGLmM" role="39821P">
        <node concept="3_J27D" id="DRbyvqGLmN" role="Nbhlr">
          <node concept="3Mxwew" id="DRbyvqGLmO" role="3MwsjC">
            <property role="3MwjfP" value="lib" />
          </node>
        </node>
        <node concept="3ygNvl" id="DRbyvqGLmP" role="39821P">
          <ref role="3ygNvj" to="ffeo:1diLdO26H7f" resolve="lib" />
          <node concept="3LWZYq" id="DRbyvqGLmQ" role="1juEy9">
            <property role="3LWZYl" value="MPS-src.zip" />
          </node>
          <node concept="3LWZYq" id="DRbyvqGLmR" role="1juEy9">
            <property role="3LWZYl" value="branding.jar" />
          </node>
        </node>
        <node concept="3981dx" id="DRbyvqGLmS" role="39821P">
          <node concept="3_J27D" id="DRbyvqGLmT" role="Nbhlr">
            <node concept="3Mxwew" id="DRbyvqGLmU" role="3MwsjC">
              <property role="3MwjfP" value="branding.jar" />
            </node>
          </node>
          <node concept="1zDrgl" id="DRbyvqGLmV" role="39821P">
            <ref role="1zDrgn" node="DRbyvqGLlx" resolve="iec61499 0.99" />
          </node>
        </node>
      </node>
      <node concept="398223" id="DRbyvqGLmW" role="39821P">
        <node concept="3_I8Xc" id="DRbyvqGLmX" role="39821P">
          <ref role="3_I8Xa" to="ffeo:1diLdO26H7T" resolve="cvsIntegration" />
        </node>
        <node concept="3_I8Xc" id="DRbyvqGLmY" role="39821P">
          <ref role="3_I8Xa" to="ffeo:3nGzrDEfcNJ" resolve="svn4idea" />
        </node>
        <node concept="3_I8Xc" id="DRbyvqGLmZ" role="39821P">
          <ref role="3_I8Xa" to="ffeo:I6XuqH2zYV" resolve="git4idea" />
        </node>
        <node concept="3_I8Xc" id="DRbyvqGLn0" role="39821P">
          <ref role="3_I8Xa" to="ffeo:ymnOULBdbM" resolve="mps-core" />
        </node>
        <node concept="m$_wl" id="DRbyvqGLn1" role="39821P">
          <ref role="m_rDy" node="DRbyvqGLmk" resolve="iec61499" />
        </node>
        <node concept="3_J27D" id="DRbyvqGLn2" role="Nbhlr">
          <node concept="3Mxwew" id="DRbyvqGLn3" role="3MwsjC">
            <property role="3MwjfP" value="plugins" />
          </node>
        </node>
      </node>
      <node concept="1TblL5" id="DRbyvqGLn4" role="39821P">
        <node concept="3_J27D" id="DRbyvqGLn5" role="1TblL3">
          <node concept="3Mxwew" id="DRbyvqGLn6" role="3MwsjC">
            <property role="3MwjfP" value="build.number" />
          </node>
        </node>
        <node concept="1TblLo" id="DRbyvqGLn7" role="1TblLl">
          <property role="1TblLn" value="build.number" />
          <node concept="NbPM2" id="DRbyvqGLn8" role="1TblLm">
            <node concept="3Mxwey" id="DRbyvqGLn9" role="3MwsjC">
              <ref role="3Mxwex" node="DRbyvqGLln" resolve="build.number" />
            </node>
          </node>
        </node>
        <node concept="1TblLo" id="DRbyvqGLna" role="1TblLl">
          <property role="1TblLn" value="date" />
          <node concept="NbPM2" id="DRbyvqGLnb" role="1TblLm">
            <node concept="3Mxwey" id="DRbyvqGLnc" role="3MwsjC">
              <ref role="3Mxwex" node="DRbyvqGLll" resolve="date" />
            </node>
          </node>
        </node>
        <node concept="1TblLo" id="DRbyvqGLnd" role="1TblLl">
          <property role="1TblLn" value="version" />
          <node concept="NbPM2" id="DRbyvqGLne" role="1TblLm">
            <node concept="3Mxwey" id="537nKv8IlGX" role="3MwsjC">
              <ref role="3Mxwex" node="537nKv8IlFj" resolve="ide-version" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="DRbyvqGLmk" role="3989C9">
      <property role="m$_wk" value="iec61499" />
      <node concept="2pNNFK" id="49FXEugKUo$" role="20twgj">
        <property role="2pNNFO" value="extensions" />
        <node concept="2pNUuL" id="49FXEugKV_K" role="2pNNFR">
          <property role="2pNUuO" value="defaultExtensionNs" />
          <node concept="2pMdtt" id="49FXEugKV_M" role="2pMdts">
            <property role="2pMdty" value="com.intellij" />
          </node>
        </node>
        <node concept="3o6iSG" id="49FXEugKV_v" role="3o6s8t" />
        <node concept="2pNNFK" id="49FXEugKV_S" role="3o6s8t">
          <property role="2pNNFO" value="mps.ModelFactoryPrvider" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="49FXEugKVA2" role="2pNNFR">
            <property role="2pNUuO" value="implementationClass" />
            <node concept="2pMdtt" id="49FXEugKVA4" role="2pMdts">
              <property role="2pMdty" value="iec61499.ide.persistence.IEC61499StandartPersistence" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="DRbyvqGLml" role="m$_yQ">
        <node concept="3Mxwew" id="DRbyvqGLmm" role="3MwsjC">
          <property role="3MwjfP" value="iec61499" />
        </node>
      </node>
      <node concept="3_J27D" id="DRbyvqGLmn" role="m$_w8">
        <node concept="3Mxwew" id="DRbyvqGLmo" role="3MwsjC">
          <property role="3MwjfP" value="0.99" />
        </node>
      </node>
      <node concept="m$f5U" id="DRbyvqGLmp" role="m$_yh">
        <ref role="m$f5T" node="DRbyvqGLmj" resolve="iec61499" />
      </node>
      <node concept="m$_yC" id="DRbyvqGLmq" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="DRbyvqIUF_" role="m$_yJ">
        <ref role="m$_y1" to="al5i:$bJ0jguQdg" resolve="com.mbeddr.platform" />
      </node>
      <node concept="3_J27D" id="DRbyvqGLmr" role="m_cZH">
        <node concept="3Mxwew" id="DRbyvqGLms" role="3MwsjC">
          <property role="3MwjfP" value="iec61499" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="DRbyvqGLmj" role="3989C9">
      <property role="TrG5h" value="iec61499" />
      <node concept="1E1JtD" id="DRbyvqGRbT" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="iec61499" />
        <property role="3LESm3" value="6594f340-4d73-4027-b7d3-c6ca2e70a53b" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="DRbyvqGRbU" role="3LF7KH">
          <node concept="2Ry0Ak" id="DRbyvqGRc0" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="DRbyvqGRc5" role="2Ry0An">
              <property role="2Ry0Am" value="iec61499" />
              <node concept="2Ry0Ak" id="DRbyvqGRca" role="2Ry0An">
                <property role="2Ry0Am" value="iec61499.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="DRbyvqIUEu" role="3bR37C">
          <node concept="3bR9La" id="DRbyvqIUEv" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="DRbyvqIUEw" role="3bR37C">
          <node concept="3bR9La" id="DRbyvqIUEx" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="DRbyvqIUEy" role="3bR37C">
          <node concept="3bR9La" id="DRbyvqIUEz" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="90a9:4be$WTb1AQa" resolve="de.itemis.mps.editor.diagram.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="DRbyvqIUE$" role="3bR37C">
          <node concept="3bR9La" id="DRbyvqIUE_" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="DRbyvqIUEA" role="3bR37C">
          <node concept="3bR9La" id="DRbyvqIUEB" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="DRbyvqIUEC" role="3bR37C">
          <node concept="3bR9La" id="DRbyvqIUED" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="DRbyvqGRbT" resolve="iec61499" />
          </node>
        </node>
        <node concept="1E1Vl3" id="DRbyvqIXeo" role="3bR37C">
          <ref role="1E1Vl2" node="DRbyvqIXaI" resolve="iec61499.meta.diagram" />
        </node>
        <node concept="1yeLz9" id="DRbyvqIUEE" role="1TViLv">
          <property role="TrG5h" value="iec61499#4280485643801969762" />
          <property role="3LESm3" value="e6474e26-f6d9-4046-9342-1ef045999378" />
          <property role="2GAjPV" value="false" />
          <node concept="1SiIV0" id="DRbyvqIUEF" role="3bR37C">
            <node concept="3bR9La" id="DRbyvqIUEG" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:568PkTlOK5Q" resolve="jetbrains.mps.core.xml" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="DRbyvqIXaI" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="iec61499.meta.diagram" />
        <property role="3LESm3" value="8dfbe92d-d233-4cc1-8ddb-a2863fd64843" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="DRbyvqIXaL" role="3LF7KH">
          <node concept="2Ry0Ak" id="DRbyvqIXbi" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="DRbyvqIXcd" role="2Ry0An">
              <property role="2Ry0Am" value="iec61499.meta.diagram" />
              <node concept="2Ry0Ak" id="DRbyvqIXc$" role="2Ry0An">
                <property role="2Ry0Am" value="iec61499.meta.diagram.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="DRbyvqIXcJ" role="3bR37C">
          <node concept="3bR9La" id="DRbyvqIXcK" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="90a9:4be$WTb1CbJ" resolve="de.itemis.mps.editor.diagram" />
          </node>
        </node>
        <node concept="1SiIV0" id="DRbyvqIXcL" role="3bR37C">
          <node concept="1Busua" id="DRbyvqIXcM" role="1SiIV1">
            <ref role="1Busuk" to="90a9:4be$WTb1CbJ" resolve="de.itemis.mps.editor.diagram" />
          </node>
        </node>
        <node concept="1yeLz9" id="DRbyvqIXcN" role="1TViLv">
          <property role="TrG5h" value="iec61499.meta.diagram#3165118101539151995" />
          <property role="3LESm3" value="70d46d48-b971-44d7-874c-f0f70b17dd57" />
          <property role="2GAjPV" value="false" />
          <node concept="1SiIV0" id="DRbyvqIXcO" role="3bR37C">
            <node concept="3bR9La" id="DRbyvqIXcP" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="90a9:4be$WTb1CbJ" resolve="de.itemis.mps.editor.diagram" />
            </node>
          </node>
          <node concept="1SiIV0" id="DRbyvqIXcQ" role="3bR37C">
            <node concept="3bR9La" id="DRbyvqIXcR" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
          <node concept="1SiIV0" id="DRbyvqIXcS" role="3bR37C">
            <node concept="3bR9La" id="DRbyvqIXcT" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="90a9:4be$WTb1AQa" resolve="de.itemis.mps.editor.diagram.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="DRbyvqIXcU" role="3bR37C">
            <node concept="3bR9La" id="DRbyvqIXcV" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
            </node>
          </node>
          <node concept="1SiIV0" id="DRbyvqIXcW" role="3bR37C">
            <node concept="3bR9La" id="DRbyvqIXcX" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
            </node>
          </node>
          <node concept="1SiIV0" id="DRbyvqIXcY" role="3bR37C">
            <node concept="3bR9La" id="DRbyvqIXcZ" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="90a9:4be$WTb1CRn" resolve="de.itemis.mps.editor.diagram#1110129820007083940" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="DRbyvqGLnl">
    <property role="TrG5h" value="iec61499Distribution" />
    <property role="turDy" value="buildDistribution.xml" />
    <property role="2DA0ip" value="../../" />
    <node concept="2sgV4H" id="DRbyvqGLnm" role="1l3spa">
      <ref role="1l3spb" node="DRbyvqGLli" resolve="iec61499" />
    </node>
    <node concept="1l3spV" id="DRbyvqGLnn" role="1l3spN">
      <node concept="1tmT9g" id="DRbyvqGLo5" role="39821P">
        <property role="AB_bT" value="gzip" />
        <node concept="3ygNvl" id="DRbyvqGLo7" role="39821P">
          <ref role="3ygNvj" node="DRbyvqGLmt" />
        </node>
        <node concept="398223" id="DRbyvqGLo8" role="39821P">
          <node concept="yKbIv" id="49FXEugKVFT" role="39821P">
            <property role="yKbIr" value="755" />
            <node concept="2HvfSZ" id="49FXEugKVGq" role="39821P">
              <node concept="398BVA" id="49FXEugKVGy" role="2HvfZ0">
                <ref role="398BVh" node="DRbyvqGLno" resolve="mps_home" />
                <node concept="2Ry0Ak" id="49FXEugKVGA" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="49FXEugKVGD" role="2Ry0An">
                    <property role="2Ry0Am" value="linux" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="49FXEugKVHc" role="39821P">
            <node concept="3co7Ac" id="49FXEugL2XR" role="28jJR8">
              <property role="3co7Am" value="lf" />
              <property role="3cpA_W" value="true" />
            </node>
            <node concept="55IIr" id="49FXEugKVHe" role="28jJRO">
              <node concept="2Ry0Ak" id="49FXEugKVHO" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="49FXEugKVHT" role="2Ry0An">
                  <property role="2Ry0Am" value="iec61499.build" />
                  <node concept="2Ry0Ak" id="49FXEugKVHY" role="2Ry0An">
                    <property role="2Ry0Am" value="source_gen" />
                    <node concept="2Ry0Ak" id="49FXEugKVI3" role="2Ry0An">
                      <property role="2Ry0Am" value="iec61499" />
                      <node concept="2Ry0Ak" id="49FXEugKVI8" role="2Ry0An">
                        <property role="2Ry0Am" value="build" />
                        <node concept="2Ry0Ak" id="49FXEugL2XN" role="2Ry0An">
                          <property role="2Ry0Am" value="iec61499Sripts.vmoptions" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="49FXEugL2Ym" role="39821P">
            <node concept="3co7Ac" id="49FXEugL2Yn" role="28jJR8">
              <property role="3co7Am" value="lf" />
              <property role="3cpA_W" value="true" />
            </node>
            <node concept="55IIr" id="49FXEugL2Yo" role="28jJRO">
              <node concept="2Ry0Ak" id="49FXEugL2Yp" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="49FXEugL2Yq" role="2Ry0An">
                  <property role="2Ry0Am" value="iec61499.build" />
                  <node concept="2Ry0Ak" id="49FXEugL2Yr" role="2Ry0An">
                    <property role="2Ry0Am" value="source_gen" />
                    <node concept="2Ry0Ak" id="49FXEugL2Ys" role="2Ry0An">
                      <property role="2Ry0Am" value="iec61499" />
                      <node concept="2Ry0Ak" id="49FXEugL2Yt" role="2Ry0An">
                        <property role="2Ry0Am" value="build" />
                        <node concept="2Ry0Ak" id="49FXEugL2Zi" role="2Ry0An">
                          <property role="2Ry0Am" value="iec61499Sripts64.vmoptions" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="49FXEugL308" role="39821P">
            <node concept="3co7Ac" id="49FXEugL31r" role="28jJR8">
              <property role="3co7Am" value="lf" />
              <property role="3cpA_W" value="true" />
            </node>
            <node concept="55IIr" id="49FXEugL30a" role="28jJRO">
              <node concept="2Ry0Ak" id="49FXEugL30C" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="49FXEugL30H" role="2Ry0An">
                  <property role="2Ry0Am" value="iec61499.build" />
                  <node concept="2Ry0Ak" id="49FXEugL30M" role="2Ry0An">
                    <property role="2Ry0Am" value="source_gen" />
                    <node concept="2Ry0Ak" id="49FXEugL30R" role="2Ry0An">
                      <property role="2Ry0Am" value="iec61499" />
                      <node concept="2Ry0Ak" id="49FXEugL30Y" role="2Ry0An">
                        <property role="2Ry0Am" value="build" />
                        <node concept="2Ry0Ak" id="49FXEugL313" role="2Ry0An">
                          <property role="2Ry0Am" value="mps.sh" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="DRbyvqGLoi" role="Nbhlr">
            <node concept="3Mxwew" id="DRbyvqGLoj" role="3MwsjC">
              <property role="3MwjfP" value="bin" />
            </node>
          </node>
        </node>
        <node concept="28jJK3" id="DRbyvqGLok" role="39821P">
          <property role="28jJZ5" value="755" />
          <node concept="3co7Ac" id="DRbyvqGLol" role="28jJR8">
            <property role="3co7Am" value="lf" />
            <property role="3cpA_W" value="true" />
          </node>
          <node concept="398BVA" id="DRbyvqGLo3" role="28jJRO">
            <ref role="398BVh" node="DRbyvqGLno" resolve="mps_home" />
            <node concept="2Ry0Ak" id="DRbyvqGLo4" role="iGT6I">
              <property role="2Ry0Am" value="mps.sh" />
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="DRbyvqGLop" role="Nbhlr">
          <node concept="3Mxwey" id="DRbyvqGLoq" role="3MwsjC">
            <ref role="3Mxwex" node="DRbyvqGLln" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="DRbyvqGLor" role="3MwsjC">
            <property role="3MwjfP" value="-linux.tar.gz" />
          </node>
        </node>
      </node>
      <node concept="3981dG" id="DRbyvqGLqU" role="39821P">
        <node concept="3ygNvl" id="DRbyvqGLqW" role="39821P">
          <ref role="3ygNvj" node="DRbyvqGLmt" />
        </node>
        <node concept="398223" id="DRbyvqGLqX" role="39821P">
          <node concept="28jJK3" id="49FXEugL3a_" role="39821P">
            <node concept="2$gBol" id="49FXEugL3bc" role="28jJR8">
              <property role="2$htvj" value="*" />
              <node concept="NbPM2" id="49FXEugL3be" role="2$htvi">
                <node concept="3Mxwew" id="49FXEugL3bj" role="3MwsjC">
                  <property role="3MwjfP" value="iec61499Scripts.exe.vmoptions" />
                </node>
              </node>
            </node>
            <node concept="3co7Ac" id="49FXEugL3aA" role="28jJR8">
              <property role="3co7Am" value="cr" />
              <property role="3cpA_W" value="true" />
            </node>
            <node concept="55IIr" id="49FXEugL3aB" role="28jJRO">
              <node concept="2Ry0Ak" id="49FXEugL3aC" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="49FXEugL3aD" role="2Ry0An">
                  <property role="2Ry0Am" value="iec61499.build" />
                  <node concept="2Ry0Ak" id="49FXEugL3aE" role="2Ry0An">
                    <property role="2Ry0Am" value="source_gen" />
                    <node concept="2Ry0Ak" id="49FXEugL3aF" role="2Ry0An">
                      <property role="2Ry0Am" value="iec61499" />
                      <node concept="2Ry0Ak" id="49FXEugL3aG" role="2Ry0An">
                        <property role="2Ry0Am" value="build" />
                        <node concept="2Ry0Ak" id="49FXEugL3aH" role="2Ry0An">
                          <property role="2Ry0Am" value="iec61499Sripts.vmoptions" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="49FXEugL3aI" role="39821P">
            <node concept="2$gBol" id="49FXEugL3c4" role="28jJR8">
              <property role="2$htvj" value="*" />
              <node concept="NbPM2" id="49FXEugL3c5" role="2$htvi">
                <node concept="3Mxwew" id="49FXEugL3c6" role="3MwsjC">
                  <property role="3MwjfP" value="iec61499Scripts64.exe.vmoptions" />
                </node>
              </node>
            </node>
            <node concept="3co7Ac" id="49FXEugL3aJ" role="28jJR8">
              <property role="3co7Am" value="cr" />
              <property role="3cpA_W" value="true" />
            </node>
            <node concept="55IIr" id="49FXEugL3aK" role="28jJRO">
              <node concept="2Ry0Ak" id="49FXEugL3aL" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="49FXEugL3aM" role="2Ry0An">
                  <property role="2Ry0Am" value="iec61499.build" />
                  <node concept="2Ry0Ak" id="49FXEugL3aN" role="2Ry0An">
                    <property role="2Ry0Am" value="source_gen" />
                    <node concept="2Ry0Ak" id="49FXEugL3aO" role="2Ry0An">
                      <property role="2Ry0Am" value="iec61499" />
                      <node concept="2Ry0Ak" id="49FXEugL3aP" role="2Ry0An">
                        <property role="2Ry0Am" value="build" />
                        <node concept="2Ry0Ak" id="49FXEugL3aQ" role="2Ry0An">
                          <property role="2Ry0Am" value="iec61499Sripts64.vmoptions" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2HvfSZ" id="49FXEugL3cI" role="39821P">
            <node concept="3LWZYq" id="49FXEugL3eL" role="2HvfZ1">
              <property role="3LWZYl" value="**/*.exe" />
            </node>
            <node concept="3LWZYq" id="49FXEugL3eR" role="2HvfZ1">
              <property role="3LWZYl" value="**/*.bat" />
            </node>
            <node concept="398BVA" id="49FXEugL3dc" role="2HvfZ0">
              <ref role="398BVh" node="DRbyvqGLno" resolve="mps_home" />
              <node concept="2Ry0Ak" id="49FXEugL3dg" role="iGT6I">
                <property role="2Ry0Am" value="bin" />
                <node concept="2Ry0Ak" id="49FXEugL3dj" role="2Ry0An">
                  <property role="2Ry0Am" value="win" />
                </node>
              </node>
            </node>
          </node>
          <node concept="yKbIv" id="49FXEugL3eV" role="39821P">
            <property role="yKbIr" value="755" />
            <node concept="2HvfSZ" id="49FXEugL3fu" role="39821P">
              <node concept="3LWZYx" id="49FXEugL3gI" role="2HvfZ1">
                <property role="3LWZYw" value="**/*.exe" />
              </node>
              <node concept="3LWZYx" id="49FXEugL3gX" role="2HvfZ1">
                <property role="3LWZYw" value="**/append.bat" />
              </node>
              <node concept="398BVA" id="49FXEugL3f$" role="2HvfZ0">
                <ref role="398BVh" node="DRbyvqGLno" resolve="mps_home" />
                <node concept="2Ry0Ak" id="49FXEugL3fC" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="49FXEugL3fF" role="2Ry0An">
                    <property role="2Ry0Am" value="win" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="49FXEugL3hI" role="39821P">
            <property role="28jJZ5" value="755" />
            <node concept="3co7Ac" id="49FXEugL3iT" role="28jJR8">
              <property role="3co7Am" value="crlf" />
            </node>
            <node concept="55IIr" id="49FXEugL3hK" role="28jJRO">
              <node concept="2Ry0Ak" id="49FXEugL3is" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="49FXEugL3ix" role="2Ry0An">
                  <property role="2Ry0Am" value="iec61499.build" />
                  <node concept="2Ry0Ak" id="49FXEugL3iA" role="2Ry0An">
                    <property role="2Ry0Am" value="source_gen" />
                    <node concept="2Ry0Ak" id="49FXEugL3iF" role="2Ry0An">
                      <property role="2Ry0Am" value="iec61499" />
                      <node concept="2Ry0Ak" id="49FXEugL3iK" role="2Ry0An">
                        <property role="2Ry0Am" value="build" />
                        <node concept="2Ry0Ak" id="49FXEugL3iP" role="2Ry0An">
                          <property role="2Ry0Am" value="iec61499Sripts.bat" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="DRbyvqGLqY" role="Nbhlr">
            <node concept="3Mxwew" id="DRbyvqGLqZ" role="3MwsjC">
              <property role="3MwjfP" value="bin" />
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="DRbyvqGLrN" role="Nbhlr">
          <node concept="3Mxwey" id="DRbyvqGLrO" role="3MwsjC">
            <ref role="3Mxwex" node="DRbyvqGLln" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="DRbyvqGLrP" role="3MwsjC">
            <property role="3MwjfP" value="-win.zip" />
          </node>
        </node>
      </node>
      <node concept="3981dG" id="DRbyvqGLts" role="39821P">
        <node concept="3_J27D" id="DRbyvqGLtt" role="Nbhlr">
          <node concept="3Mxwey" id="DRbyvqGLtu" role="3MwsjC">
            <ref role="3Mxwex" node="DRbyvqGLln" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="DRbyvqGLtv" role="3MwsjC">
            <property role="3MwjfP" value="-macos.zip" />
          </node>
        </node>
        <node concept="398223" id="DRbyvqGLtw" role="39821P">
          <node concept="398223" id="DRbyvqGLtx" role="39821P">
            <node concept="3ygNvl" id="DRbyvqGLty" role="39821P">
              <ref role="3ygNvj" node="DRbyvqGLmt" />
            </node>
            <node concept="3_J27D" id="DRbyvqGLtz" role="Nbhlr">
              <node concept="3Mxwew" id="DRbyvqGLt$" role="3MwsjC">
                <property role="3MwjfP" value="Contents" />
              </node>
            </node>
            <node concept="398223" id="DRbyvqGLt_" role="39821P">
              <node concept="3_J27D" id="DRbyvqGLtA" role="Nbhlr">
                <node concept="3Mxwew" id="DRbyvqGLtB" role="3MwsjC">
                  <property role="3MwjfP" value="Resources" />
                </node>
              </node>
              <node concept="28jJK3" id="DRbyvqGLtC" role="39821P">
                <node concept="398BVA" id="DRbyvqGLrW" role="28jJRO">
                  <ref role="398BVh" node="DRbyvqGLno" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="DRbyvqGLs0" role="iGT6I">
                    <property role="2Ry0Am" value="Resources" />
                    <node concept="2Ry0Ak" id="DRbyvqGLs1" role="2Ry0An">
                      <property role="2Ry0Am" value="mps.icns" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="DRbyvqGLtD" role="39821P">
              <node concept="28jJK3" id="DRbyvqGLtE" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="2$gBol" id="49FXEugL3k5" role="28jJR8">
                  <property role="2$htvj" value="*" />
                  <node concept="NbPM2" id="49FXEugL3k7" role="2$htvi">
                    <node concept="3Mxwew" id="49FXEugL3kb" role="3MwsjC">
                      <property role="3MwjfP" value="iec61499" />
                    </node>
                  </node>
                </node>
                <node concept="398BVA" id="49FXEugL3jL" role="28jJRO">
                  <ref role="398BVh" node="DRbyvqGLno" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="49FXEugL3jP" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="49FXEugL3jS" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="49FXEugL3jV" role="2Ry0An">
                        <property role="2Ry0Am" value="Contents" />
                        <node concept="2Ry0Ak" id="49FXEugL3jY" role="2Ry0An">
                          <property role="2Ry0Am" value="MacOS" />
                          <node concept="2Ry0Ak" id="49FXEugL3k1" role="2Ry0An">
                            <property role="2Ry0Am" value="mps" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="DRbyvqGLtF" role="Nbhlr">
                <node concept="3Mxwew" id="DRbyvqGLtG" role="3MwsjC">
                  <property role="3MwjfP" value="MacOS" />
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="49FXEugL3ll" role="39821P">
              <node concept="2$gBol" id="49FXEugL3mH" role="28jJR8">
                <property role="2$htvj" value="*" />
                <node concept="NbPM2" id="49FXEugL3mJ" role="2$htvi">
                  <node concept="3Mxwew" id="49FXEugL3mN" role="3MwsjC">
                    <property role="3MwjfP" value="Info.plist" />
                  </node>
                </node>
              </node>
              <node concept="1688n2" id="49FXEugL3mU" role="28jJR8">
                <property role="1688n3" value="\$version\$" />
                <node concept="NbPM2" id="49FXEugL3mW" role="1688n0">
                  <node concept="3Mxwey" id="49FXEugL3n3" role="3MwsjC">
                    <ref role="3Mxwex" to="ffeo:5HVSRHdVf2d" resolve="version" />
                  </node>
                </node>
              </node>
              <node concept="1688n2" id="49FXEugL3nd" role="28jJR8">
                <property role="1688n3" value="\$build\$" />
                <node concept="NbPM2" id="49FXEugL3nf" role="1688n0">
                  <node concept="3Mxwey" id="49FXEugL3np" role="3MwsjC">
                    <ref role="3Mxwex" node="DRbyvqGLln" resolve="build.number" />
                  </node>
                </node>
              </node>
              <node concept="3co7Ac" id="49FXEugL3nA" role="28jJR8">
                <property role="3co7Am" value="lf" />
                <property role="3cpA_W" value="true" />
              </node>
              <node concept="55IIr" id="49FXEugL3lp" role="28jJRO">
                <node concept="2Ry0Ak" id="49FXEugL3mg" role="iGT6I">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="49FXEugL3ml" role="2Ry0An">
                    <property role="2Ry0Am" value="iec61499.build" />
                    <node concept="2Ry0Ak" id="49FXEugL3mq" role="2Ry0An">
                      <property role="2Ry0Am" value="source_gen" />
                      <node concept="2Ry0Ak" id="49FXEugL3mv" role="2Ry0An">
                        <property role="2Ry0Am" value="iec61499" />
                        <node concept="2Ry0Ak" id="49FXEugL3m$" role="2Ry0An">
                          <property role="2Ry0Am" value="build" />
                          <node concept="2Ry0Ak" id="49FXEugL3mD" role="2Ry0An">
                            <property role="2Ry0Am" value="Info.plist.xml" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="DRbyvqGLtJ" role="39821P">
              <node concept="3_J27D" id="DRbyvqGLtK" role="Nbhlr">
                <node concept="3Mxwew" id="DRbyvqGLtL" role="3MwsjC">
                  <property role="3MwjfP" value="bin" />
                </node>
              </node>
              <node concept="yKbIv" id="49FXEugL3oa" role="39821P">
                <property role="yKbIr" value="755" />
                <node concept="2HvfSZ" id="49FXEugL3oz" role="39821P">
                  <node concept="3LWZYq" id="49FXEugL3pe" role="2HvfZ1">
                    <property role="3LWZYl" value="**/*.dylib" />
                  </node>
                  <node concept="3LWZYq" id="49FXEugL3pk" role="2HvfZ1">
                    <property role="3LWZYl" value="**/*.py" />
                  </node>
                  <node concept="398BVA" id="49FXEugL3oB" role="2HvfZ0">
                    <ref role="398BVh" node="DRbyvqGLno" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="49FXEugL3oF" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="49FXEugL3oI" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="yKbIv" id="49FXEugL3pX" role="39821P">
                <property role="yKbIr" value="755" />
                <node concept="2HvfSZ" id="49FXEugL3pY" role="39821P">
                  <node concept="3LWZYx" id="49FXEugL3qE" role="2HvfZ1">
                    <property role="3LWZYw" value="**/*.py" />
                  </node>
                  <node concept="3co7Ac" id="49FXEugL3qY" role="2HvfZ1">
                    <property role="3co7Am" value="lf" />
                    <property role="3cpA_W" value="true" />
                  </node>
                  <node concept="398BVA" id="49FXEugL3q1" role="2HvfZ0">
                    <ref role="398BVh" node="DRbyvqGLno" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="49FXEugL3q2" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="49FXEugL3q3" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="yKbIv" id="49FXEugL3sl" role="39821P">
                <node concept="2HvfSZ" id="49FXEugL3sm" role="39821P">
                  <node concept="3LWZYx" id="49FXEugL3tb" role="2HvfZ1">
                    <property role="3LWZYw" value="**/*.dylib" />
                  </node>
                  <node concept="398BVA" id="49FXEugL3sp" role="2HvfZ0">
                    <ref role="398BVh" node="DRbyvqGLno" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="49FXEugL3sq" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="49FXEugL3sr" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="49FXEugL3Kb" role="39821P">
                <node concept="3co7Ac" id="49FXEugL3L8" role="28jJR8">
                  <property role="3co7Am" value="lf" />
                  <property role="3cpA_W" value="true" />
                </node>
                <node concept="2$htT0" id="49FXEugL3Mc" role="28jJR8">
                  <property role="2$htTZ" value="iec61499Sripts64.vmoptions" />
                  <property role="2$htTY" value="iec61499Sripts.vmoptions" />
                </node>
                <node concept="55IIr" id="49FXEugL3Kd" role="28jJRO">
                  <node concept="2Ry0Ak" id="49FXEugL3KC" role="iGT6I">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="49FXEugL3KH" role="2Ry0An">
                      <property role="2Ry0Am" value="iec61499.build" />
                      <node concept="2Ry0Ak" id="49FXEugL3KM" role="2Ry0An">
                        <property role="2Ry0Am" value="source_gen" />
                        <node concept="2Ry0Ak" id="49FXEugL3KU" role="2Ry0An">
                          <property role="2Ry0Am" value="iec61499" />
                          <node concept="2Ry0Ak" id="49FXEugL3KZ" role="2Ry0An">
                            <property role="2Ry0Am" value="build" />
                            <node concept="2Ry0Ak" id="49FXEugL3L4" role="2Ry0An">
                              <property role="2Ry0Am" value="iec61499Sripts64.vmoptions" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="DRbyvqGLtY" role="Nbhlr">
            <node concept="3Mxwew" id="DRbyvqGLtZ" role="3MwsjC">
              <property role="3MwjfP" value="iec61499 " />
            </node>
            <node concept="3Mxwey" id="DRbyvqGLu0" role="3MwsjC">
              <ref role="3Mxwex" to="ffeo:5HVSRHdVf2d" resolve="version" />
            </node>
            <node concept="3Mxwew" id="DRbyvqGLu1" role="3MwsjC">
              <property role="3MwjfP" value=".app" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="DRbyvqGLno" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
    </node>
  </node>
  <node concept="26EafH" id="49FXEugKVId">
    <property role="TrG5h" value="iec61499Sripts" />
    <property role="26FY9R" value="jetbrains.mps.Launcher" />
    <property role="26EafI" value="-" />
    <ref role="1_kbm$" node="DRbyvqGLlx" resolve="iec61499 0.99" />
    <node concept="26EafG" id="49FXEugKVIh" role="26Ea7d">
      <property role="26EafJ" value="lib/branding.jar" />
    </node>
    <node concept="26EafG" id="49FXEugKVIj" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-boot.jar" />
    </node>
    <node concept="26EafG" id="49FXEugKVIm" role="26Ea7d">
      <property role="26EafJ" value="lib/mps-boot-util.jar" />
    </node>
    <node concept="26EafG" id="49FXEugKVIq" role="26Ea7d">
      <property role="26EafJ" value="lib/bootstrap.jar" />
    </node>
    <node concept="26EafG" id="49FXEugKVIv" role="26Ea7d">
      <property role="26EafJ" value="lib/extensions.jar" />
    </node>
    <node concept="26EafG" id="49FXEugKVI_" role="26Ea7d">
      <property role="26EafJ" value="lib/util.jar" />
    </node>
    <node concept="26EafG" id="49FXEugKVIG" role="26Ea7d">
      <property role="26EafJ" value="lib/jdom.jar" />
    </node>
    <node concept="26EafG" id="49FXEugKVIO" role="26Ea7d">
      <property role="26EafJ" value="lib/log4j.jar" />
    </node>
    <node concept="26EafG" id="49FXEugKVIX" role="26Ea7d">
      <property role="26EafJ" value="lib/jna.jar" />
    </node>
  </node>
</model>

