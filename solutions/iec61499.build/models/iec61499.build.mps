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
      <concept id="2591537044435828004" name="jetbrains.mps.build.structure.BuildLayout_CompileOutputOf" flags="ng" index="Saw0i">
        <reference id="2591537044435828006" name="module" index="Saw0g" />
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
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="6592112598314586625" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroup" flags="ng" index="m$f5U">
        <reference id="6592112598314586626" name="group" index="m$f5T" />
        <child id="4034578608468929327" name="customPackaging" index="1ZOTzL" />
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
        <child id="7962467864633062782" name="progressHeight" index="2gqIGF" />
        <child id="6108265972537182997" name="aboutScreen" index="2EqU2s" />
        <child id="6108265972537182996" name="splashScreen" index="2EqU2t" />
        <child id="6108265972537229337" name="buildNumber" index="2EteIg" />
        <child id="6108265972537229339" name="icon16" index="2EteIi" />
        <child id="6108265972537229338" name="icon32" index="2EteIj" />
        <child id="6108265972537229340" name="icon32opaque" index="2EteIl" />
        <child id="6108265972537372847" name="shortName" index="2EtHGA" />
        <child id="6108265972537372848" name="fullName" index="2EtHGT" />
        <child id="3497141547781549827" name="codename" index="2OjNyQ" />
        <child id="1462305029084462472" name="buildDate" index="R$TG_" />
        <child id="772379520210716142" name="welcomeLogo" index="3vi$VU" />
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
      <concept id="4034578608468929319" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginGroupCustomModule" flags="ng" index="1ZOTzT">
        <reference id="4034578608468929320" name="target" index="1ZOTzQ" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="1MNTMxMGFnA">
    <property role="TrG5h" value="iec61499" />
    <property role="2DA0ip" value="../../" />
    <node concept="1zClus" id="1MNTMxMGFnP" role="3989C9">
      <property role="2OjLBK" value="1" />
      <property role="TrG5h" value="MPS" />
      <property role="2OjLBL" value="0" />
      <node concept="55IIr" id="1MNTMxMGFnQ" role="3vi$VU">
        <node concept="2Ry0Ak" id="1MNTMxMGFnR" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="1MNTMxMGFnS" role="2Ry0An">
            <property role="2Ry0Am" value="logo.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="1MNTMxMGFnT" role="2EteIg">
        <node concept="3Mxwey" id="1MNTMxMGFnU" role="3MwsjC">
          <ref role="3Mxwex" node="1MNTMxMGFnF" resolve="build.number" />
        </node>
      </node>
      <node concept="55IIr" id="1MNTMxMGFnV" role="2EteIi">
        <node concept="2Ry0Ak" id="1MNTMxMGFnW" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="1MNTMxMGFnX" role="2Ry0An">
            <property role="2Ry0Am" value="MPS16.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="1MNTMxMGFnY" role="2EtHGA">
        <node concept="3Mxwew" id="1MNTMxMGFnZ" role="3MwsjC">
          <property role="3MwjfP" value="iec61499" />
        </node>
      </node>
      <node concept="3_J27D" id="1MNTMxMGFo0" role="2EtHGT">
        <node concept="3Mxwew" id="1MNTMxMGFo1" role="3MwsjC">
          <property role="3MwjfP" value="IEC 61499 IDE" />
        </node>
      </node>
      <node concept="NbPM2" id="1MNTMxMGFo2" role="2OjNyQ">
        <node concept="3Mxwew" id="1MNTMxMGFo3" role="3MwsjC">
          <property role="3MwjfP" value="iec61499" />
        </node>
      </node>
      <node concept="55IIr" id="1MNTMxMGFo6" role="2EteIj">
        <node concept="2Ry0Ak" id="1MNTMxMGFo7" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="1MNTMxMGFo8" role="2Ry0An">
            <property role="2Ry0Am" value="MPS32.png" />
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="1MNTMxMGFo9" role="R$TG_">
        <node concept="3Mxwey" id="1MNTMxMGFoa" role="3MwsjC">
          <ref role="3Mxwex" node="1MNTMxMGFnD" resolve="date" />
        </node>
      </node>
      <node concept="55IIr" id="1MNTMxMGFob" role="2EteIl">
        <node concept="2Ry0Ak" id="1MNTMxMGFoc" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="1MNTMxMGFod" role="2Ry0An">
            <property role="2Ry0Am" value="MPS32.png" />
          </node>
        </node>
      </node>
      <node concept="55IIr" id="1MNTMxMGFoe" role="2EqU2t">
        <node concept="2Ry0Ak" id="1MNTMxMGFof" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="1MNTMxMGFog" role="2Ry0An">
            <property role="2Ry0Am" value="splash.png" />
          </node>
        </node>
      </node>
      <node concept="55IIr" id="1MNTMxMGFoh" role="2EqU2s">
        <node concept="2Ry0Ak" id="1MNTMxMGFoi" role="iGT6I">
          <property role="2Ry0Am" value="icons" />
          <node concept="2Ry0Ak" id="1MNTMxMGFoj" role="2Ry0An">
            <property role="2Ry0Am" value="about.png" />
          </node>
        </node>
      </node>
      <node concept="NbPM2" id="6qUHOBcxAxL" role="2gqIGF" />
    </node>
    <node concept="10PD9b" id="1MNTMxMGFnB" role="10PD9s" />
    <node concept="3b7kt6" id="1MNTMxMGFnC" role="10PD9s" />
    <node concept="2kB4xC" id="1MNTMxMGFnD" role="1l3spd">
      <property role="TrG5h" value="date" />
      <node concept="hHN3E" id="1MNTMxMGFnE" role="aVJcv">
        <property role="hHN3Y" value="yyyyMMdd" />
      </node>
    </node>
    <node concept="2kB4xC" id="1MNTMxMGFnF" role="1l3spd">
      <property role="TrG5h" value="build.number" />
      <node concept="aVJcg" id="1MNTMxMGFnG" role="aVJcv">
        <node concept="NbPM2" id="1MNTMxMGFnH" role="aVJcq">
          <node concept="3Mxwew" id="1MNTMxMGFnI" role="3MwsjC">
            <property role="3MwjfP" value="iec61499-172.SNAPSHOT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="1MNTMxMGFnJ" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="6qUHOBcxAly" role="398pKh">
        <node concept="2Ry0Ak" id="6qUHOBcxAl_" role="iGT6I">
          <property role="2Ry0Am" value="lib" />
          <node concept="2Ry0Ak" id="6qUHOBcxAoo" role="2Ry0An">
            <property role="2Ry0Am" value="mps" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="6qUHOBcxAfs" role="1l3spd">
      <property role="TrG5h" value="ide-version" />
      <node concept="aVJcg" id="6qUHOBcxAj4" role="aVJcv">
        <node concept="NbPM2" id="6qUHOBcxAj3" role="aVJcq">
          <node concept="3Mxwew" id="6qUHOBcxAj2" role="3MwsjC">
            <property role="3MwjfP" value="0.1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="1MNTMxMGFoK" role="1l3spN">
      <node concept="3_I8Xc" id="1MNTMxMGFoS" role="39821P">
        <ref role="3_I8Xa" to="ffeo:1diLdO26H79" resolve="languages" />
      </node>
      <node concept="3_I8Xc" id="1MNTMxMGFoT" role="39821P">
        <ref role="3_I8Xa" to="ffeo:1aRUp2KiMC$" resolve="license" />
      </node>
      <node concept="3ygNvl" id="5XWI2lHR6Hm" role="39821P">
        <ref role="3ygNvj" to="al5i:6ucYLjolhRD" resolve="mbeddr.platform" />
      </node>
      <node concept="398223" id="1MNTMxMGFoU" role="39821P">
        <node concept="3_J27D" id="1MNTMxMGFoV" role="Nbhlr">
          <node concept="3Mxwew" id="1MNTMxMGFoW" role="3MwsjC">
            <property role="3MwjfP" value="bin" />
          </node>
        </node>
        <node concept="3ygNvl" id="1MNTMxMGFoX" role="39821P">
          <ref role="3ygNvj" to="ffeo:3cxBkkDa4_O" resolve="bin" />
          <node concept="3LWZYx" id="1MNTMxMGFoY" role="1juEy9">
            <property role="3LWZYw" value="log.xml" />
          </node>
          <node concept="3LWZYx" id="1MNTMxMGFoZ" role="1juEy9">
            <property role="3LWZYw" value="log4j.dtd" />
          </node>
        </node>
        <node concept="28jJK3" id="1MNTMxMGFp0" role="39821P">
          <node concept="1688n2" id="1MNTMxMGFp1" role="28jJR8">
            <property role="1688n6" value="g" />
            <property role="1688n3" value="\.MPS(\w+)" />
            <node concept="NbPM2" id="1MNTMxMGFp2" role="1688n0">
              <node concept="3Mxwew" id="1MNTMxMGFp3" role="3MwsjC">
                <property role="3MwjfP" value="\." />
              </node>
              <node concept="3Mxwey" id="1MNTMxMGFp4" role="3MwsjC">
                <ref role="3Mxwex" node="1MNTMxMGFnF" resolve="build.number" />
              </node>
            </node>
          </node>
          <node concept="398BVA" id="1MNTMxMGFoO" role="28jJRO">
            <ref role="398BVh" node="1MNTMxMGFnJ" resolve="mps_home" />
            <node concept="2Ry0Ak" id="1MNTMxMGFoP" role="iGT6I">
              <property role="2Ry0Am" value="bin" />
              <node concept="2Ry0Ak" id="1MNTMxMGFoQ" role="2Ry0An">
                <property role="2Ry0Am" value="idea.properties" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="398223" id="1MNTMxMGFp5" role="39821P">
        <node concept="3_J27D" id="1MNTMxMGFp6" role="Nbhlr">
          <node concept="3Mxwew" id="1MNTMxMGFp7" role="3MwsjC">
            <property role="3MwjfP" value="lib" />
          </node>
        </node>
        <node concept="3ygNvl" id="1MNTMxMGFp8" role="39821P">
          <ref role="3ygNvj" to="ffeo:1diLdO26H7f" resolve="lib" />
          <node concept="3LWZYq" id="1MNTMxMGFp9" role="1juEy9">
            <property role="3LWZYl" value="MPS-src.zip" />
          </node>
          <node concept="3LWZYq" id="1MNTMxMGFpa" role="1juEy9">
            <property role="3LWZYl" value="branding.jar" />
          </node>
        </node>
        <node concept="3981dx" id="1MNTMxMGFpb" role="39821P">
          <node concept="3_J27D" id="1MNTMxMGFpc" role="Nbhlr">
            <node concept="3Mxwew" id="1MNTMxMGFpd" role="3MwsjC">
              <property role="3MwjfP" value="branding.jar" />
            </node>
          </node>
          <node concept="1zDrgl" id="5CerqETJiPR" role="39821P">
            <ref role="1zDrgn" node="1MNTMxMGFnP" resolve="IEC 61499 IDE 0.1" />
          </node>
        </node>
      </node>
      <node concept="398223" id="1MNTMxMGFpf" role="39821P">
        <node concept="3_I8Xc" id="1MNTMxMGFpg" role="39821P">
          <ref role="3_I8Xa" to="ffeo:1diLdO26H7T" resolve="cvsIntegration" />
        </node>
        <node concept="3_I8Xc" id="1MNTMxMGFph" role="39821P">
          <ref role="3_I8Xa" to="ffeo:3nGzrDEfcNJ" resolve="svn4idea" />
        </node>
        <node concept="3_I8Xc" id="1MNTMxMGFpi" role="39821P">
          <ref role="3_I8Xa" to="ffeo:I6XuqH2zYV" resolve="git4idea" />
        </node>
        <node concept="3_I8Xc" id="1MNTMxMGFpj" role="39821P">
          <ref role="3_I8Xa" to="ffeo:ymnOULBdbM" resolve="mps-core" />
        </node>
        <node concept="3_I8Xc" id="5XWI2lHR6JA" role="39821P">
          <ref role="3_I8Xa" to="ffeo:1x6h9EwqP32" resolve="mps-make" />
        </node>
        <node concept="3ygNvl" id="5XWI2lHR6Yf" role="39821P">
          <ref role="3ygNvj" to="ffeo:5yMuYWFN8P3" />
          <node concept="3LWZYq" id="5XWI2lHR6Z5" role="1juEy9">
            <property role="3LWZYl" value="samples.jar" />
          </node>
        </node>
        <node concept="3ygNvl" id="5XWI2lHR6WV" role="39821P">
          <ref role="3ygNvj" to="al5i:3AVJcIMlF9x" />
        </node>
        <node concept="m$_wl" id="5CerqETJm33" role="39821P">
          <ref role="m_rDy" node="1MNTMxMGFoB" resolve="iec61499" />
        </node>
        <node concept="3_J27D" id="1MNTMxMGFpl" role="Nbhlr">
          <node concept="3Mxwew" id="1MNTMxMGFpm" role="3MwsjC">
            <property role="3MwjfP" value="plugins" />
          </node>
        </node>
      </node>
      <node concept="1TblL5" id="1MNTMxMGFpn" role="39821P">
        <node concept="3_J27D" id="1MNTMxMGFpo" role="1TblL3">
          <node concept="3Mxwew" id="1MNTMxMGFpp" role="3MwsjC">
            <property role="3MwjfP" value="build.number" />
          </node>
        </node>
        <node concept="1TblLo" id="1MNTMxMGFpq" role="1TblLl">
          <property role="1TblLn" value="build.number" />
          <node concept="NbPM2" id="1MNTMxMGFpr" role="1TblLm">
            <node concept="3Mxwey" id="1MNTMxMGFps" role="3MwsjC">
              <ref role="3Mxwex" node="1MNTMxMGFnF" resolve="build.number" />
            </node>
          </node>
        </node>
        <node concept="1TblLo" id="1MNTMxMGFpt" role="1TblLl">
          <property role="1TblLn" value="date" />
          <node concept="NbPM2" id="1MNTMxMGFpu" role="1TblLm">
            <node concept="3Mxwey" id="1MNTMxMGFpv" role="3MwsjC">
              <ref role="3Mxwex" node="1MNTMxMGFnD" resolve="date" />
            </node>
          </node>
        </node>
        <node concept="1TblLo" id="1MNTMxMGFpw" role="1TblLl">
          <property role="1TblLn" value="version" />
          <node concept="NbPM2" id="1MNTMxMGFpx" role="1TblLm">
            <node concept="3Mxwey" id="6qUHOBcxAtl" role="3MwsjC">
              <ref role="3Mxwex" node="6qUHOBcxAfs" resolve="ide-version" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="1MNTMxMGFoB" role="3989C9">
      <property role="m$_wk" value="iec61499" />
      <node concept="2pNNFK" id="6qUHOBcxALo" role="20twgj">
        <property role="2pNNFO" value="extensions" />
        <node concept="2pNUuL" id="6qUHOBcxALp" role="2pNNFR">
          <property role="2pNUuO" value="defaultExtensionNs" />
          <node concept="2pMdtt" id="6qUHOBcxALq" role="2pMdts">
            <property role="2pMdty" value="com.intellij" />
          </node>
        </node>
        <node concept="3o6iSG" id="6qUHOBcxALr" role="3o6s8t" />
        <node concept="2pNNFK" id="6qUHOBcxALs" role="3o6s8t">
          <property role="2pNNFO" value="mps.ModelFactoryProvider" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="6qUHOBcxALt" role="2pNNFR">
            <property role="2pNUuO" value="implementationClass" />
            <node concept="2pMdtt" id="6qUHOBcxALu" role="2pMdts">
              <property role="2pMdty" value="iec61499.ide.persistence.IEC61499StandartPersistence" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="1MNTMxMGFoC" role="m$_yQ">
        <node concept="3Mxwew" id="1MNTMxMGFoD" role="3MwsjC">
          <property role="3MwjfP" value="IEC 61499" />
        </node>
      </node>
      <node concept="3_J27D" id="1MNTMxMGFoE" role="m$_w8">
        <node concept="3Mxwey" id="6qUHOBcxApM" role="3MwsjC">
          <ref role="3Mxwex" node="6qUHOBcxAfs" resolve="ide-version" />
        </node>
      </node>
      <node concept="m$f5U" id="1MNTMxMGFoG" role="m$_yh">
        <ref role="m$f5T" node="1MNTMxMGFoA" resolve="iec61499" />
      </node>
      <node concept="m$_yC" id="1MNTMxMGFoH" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="1MNTMxMGJ5F" role="m$_yJ">
        <ref role="m$_y1" to="al5i:$bJ0jguQdg" resolve="com.mbeddr.platform" />
      </node>
      <node concept="3_J27D" id="1MNTMxMGFoI" role="m_cZH">
        <node concept="3Mxwew" id="1MNTMxMGFoJ" role="3MwsjC">
          <property role="3MwjfP" value="iec61499" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="1MNTMxMGFoA" role="3989C9">
      <property role="TrG5h" value="iec61499" />
      <node concept="1E1JtD" id="1MNTMxMGFop" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="iec61499" />
        <property role="3LESm3" value="6594f340-4d73-4027-b7d3-c6ca2e70a53b" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="1MNTMxMGFok" role="3LF7KH">
          <node concept="2Ry0Ak" id="1MNTMxMGFol" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="1MNTMxMGFom" role="2Ry0An">
              <property role="2Ry0Am" value="iec61499" />
              <node concept="2Ry0Ak" id="1MNTMxMGFon" role="2Ry0An">
                <property role="2Ry0Am" value="iec61499.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1MNTMxMGFpz" role="3bR37C">
          <node concept="3bR9La" id="1MNTMxMGFp$" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="1MNTMxMGFp_" role="3bR37C">
          <node concept="3bR9La" id="1MNTMxMGFpA" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="1MNTMxMGJ4n" role="3bR37C">
          <node concept="3bR9La" id="1MNTMxMGJ4o" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="90a9:4be$WTb1AQa" resolve="de.itemis.mps.editor.diagram.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="1MNTMxMGJ4p" role="3bR37C">
          <node concept="3bR9La" id="1MNTMxMGJ4q" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="1MNTMxMGJ4r" role="3bR37C">
          <node concept="3bR9La" id="1MNTMxMGJ4s" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="1MNTMxMGJ4t" role="3bR37C">
          <node concept="3bR9La" id="1MNTMxMGJ4u" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="1MNTMxMGFop" resolve="iec61499" />
          </node>
        </node>
        <node concept="1yeLz9" id="1MNTMxMGJ4v" role="1TViLv">
          <property role="TrG5h" value="iec61499#4280485643801969762" />
          <property role="3LESm3" value="e6474e26-f6d9-4046-9342-1ef045999378" />
          <property role="2GAjPV" value="false" />
          <node concept="1SiIV0" id="1MNTMxMGJ4w" role="3bR37C">
            <node concept="3bR9La" id="1MNTMxMGJ4x" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:568PkTlOK5Q" resolve="jetbrains.mps.core.xml" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7rp$r$8eG5s" role="3bR37C">
          <node concept="3bR9La" id="7rp$r$8eG5t" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="1MNTMxMGFov" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="iec61499.ide" />
        <property role="3LESm3" value="b3cce17b-f294-46d7-8f0f-dd4b7ecc0044" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="1MNTMxMGFoq" role="3LF7KH">
          <node concept="2Ry0Ak" id="1MNTMxMGFor" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="1MNTMxMGFos" role="2Ry0An">
              <property role="2Ry0Am" value="iec61499.ide" />
              <node concept="2Ry0Ak" id="1MNTMxMGFot" role="2Ry0An">
                <property role="2Ry0Am" value="iec61499.ide.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1MNTMxMGFpB" role="3bR37C">
          <node concept="3bR9La" id="1MNTMxMGFpC" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="1MNTMxMGFpF" role="3bR37C">
          <node concept="3bR9La" id="1MNTMxMGFpG" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="1MNTMxMGJ3C" role="3bR37C">
          <node concept="3bR9La" id="1MNTMxMGJ3D" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="1MNTMxMGFop" resolve="iec61499" />
          </node>
        </node>
        <node concept="1SiIV0" id="1MNTMxMGJ3E" role="3bR37C">
          <node concept="3bR9La" id="1MNTMxMGJ3F" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="69kfkbstcnF" role="3bR37C">
          <node concept="3bR9La" id="69kfkbstcnG" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="4KS_gINlEl1" role="3bR37C">
          <node concept="3bR9La" id="4KS_gINlEl2" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4KS_gINlEl3" role="3bR37C">
          <node concept="3bR9La" id="4KS_gINlEl4" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lfi" resolve="jetbrains.mps.generator" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="1MNTMxMGFo_" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="iec61499.meta.diagram" />
        <property role="3LESm3" value="8dfbe92d-d233-4cc1-8ddb-a2863fd64843" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="1MNTMxMGFow" role="3LF7KH">
          <node concept="2Ry0Ak" id="1MNTMxMGFox" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="1MNTMxMGFoy" role="2Ry0An">
              <property role="2Ry0Am" value="iec61499.meta.diagram" />
              <node concept="2Ry0Ak" id="1MNTMxMGFoz" role="2Ry0An">
                <property role="2Ry0Am" value="iec61499.meta.diagram.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1MNTMxMGJ2w" role="3bR37C">
          <node concept="3bR9La" id="1MNTMxMGJ2x" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="90a9:4be$WTb1CbJ" resolve="de.itemis.mps.editor.diagram" />
          </node>
        </node>
        <node concept="1SiIV0" id="1MNTMxMGJ2y" role="3bR37C">
          <node concept="1Busua" id="1MNTMxMGJ2z" role="1SiIV1">
            <ref role="1Busuk" to="90a9:4be$WTb1CbJ" resolve="de.itemis.mps.editor.diagram" />
          </node>
        </node>
        <node concept="1yeLz9" id="1MNTMxMGJ2$" role="1TViLv">
          <property role="TrG5h" value="iec61499.meta.diagram#3165118101539151995" />
          <property role="3LESm3" value="70d46d48-b971-44d7-874c-f0f70b17dd57" />
          <property role="2GAjPV" value="false" />
          <node concept="1SiIV0" id="1MNTMxMGJ2_" role="3bR37C">
            <node concept="3bR9La" id="1MNTMxMGJ2A" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="90a9:4be$WTb1CbJ" resolve="de.itemis.mps.editor.diagram" />
            </node>
          </node>
          <node concept="1SiIV0" id="1MNTMxMGJ2B" role="3bR37C">
            <node concept="3bR9La" id="1MNTMxMGJ2C" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
          <node concept="1SiIV0" id="1MNTMxMGJ2D" role="3bR37C">
            <node concept="3bR9La" id="1MNTMxMGJ2E" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="90a9:4be$WTb1AQa" resolve="de.itemis.mps.editor.diagram.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="1MNTMxMGJ2F" role="3bR37C">
            <node concept="3bR9La" id="1MNTMxMGJ2G" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
            </node>
          </node>
          <node concept="1SiIV0" id="1MNTMxMGJ2H" role="3bR37C">
            <node concept="3bR9La" id="1MNTMxMGJ2I" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
            </node>
          </node>
          <node concept="1SiIV0" id="1MNTMxMGJ2J" role="3bR37C">
            <node concept="3bR9La" id="1MNTMxMGJ2K" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="90a9:4be$WTb1CRn" resolve="de.itemis.mps.editor.diagram#1110129820007083940" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="5CerqETJj2r" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="5CerqETJj2s" role="2JcizS">
        <ref role="398BVh" node="1MNTMxMGFnJ" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="5CerqETJj2t" role="1l3spa">
      <ref role="1l3spb" to="ffeo:1diLdO26mQ6" resolve="mpsStandalone" />
      <node concept="398BVA" id="5CerqETJj2u" role="2JcizS">
        <ref role="398BVh" node="1MNTMxMGFnJ" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="5CerqETJj2v" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5rNMDvYzelV" resolve="mpsMakePlugin" />
      <node concept="398BVA" id="5CerqETJj2w" role="2JcizS">
        <ref role="398BVh" node="1MNTMxMGFnJ" resolve="mps_home" />
        <node concept="2Ry0Ak" id="5CerqETJj2x" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="5CerqETJj2y" role="1l3spa">
      <ref role="1l3spb" to="ffeo:1lMM4owFq4Y" resolve="mpsVcs" />
      <node concept="398BVA" id="5CerqETJj2z" role="2JcizS">
        <ref role="398BVh" node="1MNTMxMGFnJ" resolve="mps_home" />
        <node concept="2Ry0Ak" id="5CerqETJj2$" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="5CerqETJj2_" role="1l3spa">
      <ref role="1l3spb" to="ffeo:5yMuYWFN8P1" resolve="mpsPlugins" />
      <node concept="398BVA" id="5CerqETJj2A" role="2JcizS">
        <ref role="398BVh" node="1MNTMxMGFnJ" resolve="mps_home" />
        <node concept="2Ry0Ak" id="5CerqETJj2B" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="5CerqETJj2C" role="1l3spa">
      <ref role="1l3spb" to="al5i:3AVJcIMlF8l" resolve="com.mbeddr.platform" />
      <node concept="398BVA" id="5CerqETJj2D" role="2JcizS">
        <ref role="398BVh" node="1MNTMxMGFnJ" resolve="mps_home" />
        <node concept="2Ry0Ak" id="5CerqETJj2E" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="1MNTMxMGFpH">
    <property role="TrG5h" value="iec61499Distribution" />
    <property role="turDy" value="buildDistribution.xml" />
    <property role="2DA0ip" value="../../" />
    <node concept="2sgV4H" id="5CerqETJnwE" role="1l3spa">
      <ref role="1l3spb" node="1MNTMxMGFnA" resolve="iec61499" />
    </node>
    <node concept="1l3spV" id="1MNTMxMGFpJ" role="1l3spN">
      <node concept="1tmT9g" id="1MNTMxMGFqt" role="39821P">
        <property role="AB_bT" value="gzip" />
        <node concept="398223" id="1MNTMxMGFqu" role="39821P">
          <node concept="3ygNvl" id="1MNTMxMGFqv" role="39821P">
            <ref role="3ygNvj" node="1MNTMxMGFoK" />
          </node>
          <node concept="398223" id="1MNTMxMGFqw" role="39821P">
            <node concept="28jJK3" id="1MNTMxMGFqx" role="39821P">
              <property role="28jJZ5" value="755" />
              <node concept="398BVA" id="1MNTMxMGFpV" role="28jJRO">
                <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                <node concept="2Ry0Ak" id="1MNTMxMGFpW" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFpX" role="2Ry0An">
                    <property role="2Ry0Am" value="linux" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFpY" role="2Ry0An">
                      <property role="2Ry0Am" value="fsnotifier" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="1MNTMxMGFqy" role="39821P">
              <property role="28jJZ5" value="755" />
              <node concept="398BVA" id="1MNTMxMGFq3" role="28jJRO">
                <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                <node concept="2Ry0Ak" id="1MNTMxMGFq4" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFq5" role="2Ry0An">
                    <property role="2Ry0Am" value="linux" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFq6" role="2Ry0An">
                      <property role="2Ry0Am" value="fsnotifier64" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="1MNTMxMGFqz" role="39821P">
              <node concept="3co7Ac" id="1MNTMxMGFq$" role="28jJR8">
                <property role="3co7Am" value="lf" />
                <property role="3cpA_W" value="true" />
              </node>
              <node concept="398BVA" id="1MNTMxMGFqa" role="28jJRO">
                <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                <node concept="2Ry0Ak" id="1MNTMxMGFqb" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFqc" role="2Ry0An">
                    <property role="2Ry0Am" value="mps.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="1MNTMxMGFq_" role="39821P">
              <node concept="3co7Ac" id="1MNTMxMGFqA" role="28jJR8">
                <property role="3co7Am" value="lf" />
                <property role="3cpA_W" value="true" />
              </node>
              <node concept="398BVA" id="1MNTMxMGFqg" role="28jJRO">
                <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                <node concept="2Ry0Ak" id="1MNTMxMGFqh" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFqi" role="2Ry0An">
                    <property role="2Ry0Am" value="mps64.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2HvfSZ" id="1MNTMxMGFqB" role="39821P">
              <node concept="3LWZYq" id="1MNTMxMGFqC" role="2HvfZ1">
                <property role="3LWZYl" value="**/fsnotifier" />
              </node>
              <node concept="3LWZYq" id="1MNTMxMGFqD" role="2HvfZ1">
                <property role="3LWZYl" value="**/fsnotifier64" />
              </node>
              <node concept="398BVA" id="1MNTMxMGFqm" role="2HvfZ0">
                <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                <node concept="2Ry0Ak" id="1MNTMxMGFqn" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFqo" role="2Ry0An">
                    <property role="2Ry0Am" value="linux" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3_J27D" id="1MNTMxMGFqE" role="Nbhlr">
              <node concept="3Mxwew" id="1MNTMxMGFqF" role="3MwsjC">
                <property role="3MwjfP" value="bin" />
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="1MNTMxMGFqG" role="39821P">
            <property role="28jJZ5" value="755" />
            <node concept="3co7Ac" id="1MNTMxMGFqH" role="28jJR8">
              <property role="3co7Am" value="lf" />
              <property role="3cpA_W" value="true" />
            </node>
            <node concept="398BVA" id="1MNTMxMGFqr" role="28jJRO">
              <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
              <node concept="2Ry0Ak" id="1MNTMxMGFwX" role="iGT6I">
                <property role="2Ry0Am" value="bin" />
                <node concept="2Ry0Ak" id="1MNTMxMGFx2" role="2Ry0An">
                  <property role="2Ry0Am" value="mps.sh" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="1MNTMxMGFqI" role="Nbhlr">
            <node concept="3Mxwew" id="1MNTMxMGFqJ" role="3MwsjC">
              <property role="3MwjfP" value="iec61499 " />
            </node>
            <node concept="3Mxwey" id="1MNTMxMGFqK" role="3MwsjC">
              <ref role="3Mxwex" node="6qUHOBcxAfs" resolve="ide-version" />
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="1MNTMxMGFqL" role="Nbhlr">
          <node concept="3Mxwey" id="1MNTMxMGFqM" role="3MwsjC">
            <ref role="3Mxwex" node="1MNTMxMGFnF" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="1MNTMxMGFqN" role="3MwsjC">
            <property role="3MwjfP" value="-linux.tar.gz" />
          </node>
        </node>
      </node>
      <node concept="3981dG" id="1MNTMxMGFti" role="39821P">
        <node concept="398223" id="1MNTMxMGFtj" role="39821P">
          <node concept="3ygNvl" id="1MNTMxMGFtk" role="39821P">
            <ref role="3ygNvj" node="1MNTMxMGFoK" />
          </node>
          <node concept="398223" id="1MNTMxMGFtl" role="39821P">
            <node concept="3_J27D" id="1MNTMxMGFtm" role="Nbhlr">
              <node concept="3Mxwew" id="1MNTMxMGFtn" role="3MwsjC">
                <property role="3MwjfP" value="bin" />
              </node>
            </node>
            <node concept="28jJK3" id="1MNTMxMGFto" role="39821P">
              <node concept="398BVA" id="1MNTMxMGFqR" role="28jJRO">
                <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                <node concept="2Ry0Ak" id="1MNTMxMGFqS" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFqT" role="2Ry0An">
                    <property role="2Ry0Am" value="mps.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="1MNTMxMGFtp" role="39821P">
              <node concept="398BVA" id="1MNTMxMGFqX" role="28jJRO">
                <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                <node concept="2Ry0Ak" id="1MNTMxMGFqY" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFqZ" role="2Ry0An">
                    <property role="2Ry0Am" value="mps.exe.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="1MNTMxMGFtq" role="39821P">
              <node concept="398BVA" id="1MNTMxMGFr3" role="28jJRO">
                <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                <node concept="2Ry0Ak" id="1MNTMxMGFr4" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFr5" role="2Ry0An">
                    <property role="2Ry0Am" value="mps64.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="1MNTMxMGFtr" role="39821P">
              <node concept="398BVA" id="1MNTMxMGFr9" role="28jJRO">
                <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                <node concept="2Ry0Ak" id="1MNTMxMGFra" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFrb" role="2Ry0An">
                    <property role="2Ry0Am" value="mps64.exe.vmoptions" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="1MNTMxMGFts" role="39821P">
              <node concept="3_J27D" id="1MNTMxMGFtt" role="Nbhlr">
                <node concept="3Mxwew" id="1MNTMxMGFtu" role="3MwsjC">
                  <property role="3MwjfP" value="win" />
                </node>
              </node>
              <node concept="2HvfSZ" id="1MNTMxMGFtv" role="39821P">
                <node concept="3LWZYq" id="1MNTMxMGFtw" role="2HvfZ1">
                  <property role="3LWZYl" value="**/*.exe" />
                </node>
                <node concept="398BVA" id="1MNTMxMGFrf" role="2HvfZ0">
                  <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFrg" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFrh" role="2Ry0An">
                      <property role="2Ry0Am" value="win" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="yKbIv" id="1MNTMxMGFtx" role="39821P">
                <property role="yKbIr" value="755" />
                <node concept="2HvfSZ" id="1MNTMxMGFty" role="39821P">
                  <node concept="3LWZYx" id="1MNTMxMGFtz" role="2HvfZ1">
                    <property role="3LWZYw" value="**/*.exe" />
                  </node>
                  <node concept="398BVA" id="1MNTMxMGFrl" role="2HvfZ0">
                    <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFrm" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="1MNTMxMGFrn" role="2Ry0An">
                        <property role="2Ry0Am" value="win" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="1MNTMxMGFt$" role="39821P">
              <node concept="2HvfSZ" id="1MNTMxMGFt_" role="39821P">
                <node concept="3LWZYq" id="1MNTMxMGFtA" role="2HvfZ1">
                  <property role="3LWZYl" value="**/fsnotifier" />
                </node>
                <node concept="3LWZYq" id="1MNTMxMGFtB" role="2HvfZ1">
                  <property role="3LWZYl" value="**/fsnotifier64" />
                </node>
                <node concept="398BVA" id="1MNTMxMGFrr" role="2HvfZ0">
                  <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFrs" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFrt" role="2Ry0An">
                      <property role="2Ry0Am" value="linux" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="1MNTMxMGFtC" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="1MNTMxMGFry" role="28jJRO">
                  <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFrz" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFr$" role="2Ry0An">
                      <property role="2Ry0Am" value="linux" />
                      <node concept="2Ry0Ak" id="1MNTMxMGFr_" role="2Ry0An">
                        <property role="2Ry0Am" value="fsnotifier" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="1MNTMxMGFtD" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="1MNTMxMGFrE" role="28jJRO">
                  <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFrF" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFrG" role="2Ry0An">
                      <property role="2Ry0Am" value="linux" />
                      <node concept="2Ry0Ak" id="1MNTMxMGFrH" role="2Ry0An">
                        <property role="2Ry0Am" value="fsnotifier64" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="1MNTMxMGFtE" role="Nbhlr">
                <node concept="3Mxwew" id="1MNTMxMGFtF" role="3MwsjC">
                  <property role="3MwjfP" value="linux" />
                </node>
              </node>
            </node>
            <node concept="398223" id="1MNTMxMGFtG" role="39821P">
              <node concept="yKbIv" id="1MNTMxMGFtH" role="39821P">
                <property role="yKbIr" value="755" />
                <node concept="2HvfSZ" id="1MNTMxMGFtI" role="39821P">
                  <node concept="398BVA" id="1MNTMxMGFrL" role="2HvfZ0">
                    <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFrM" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="1MNTMxMGFx4" role="2Ry0An">
                        <property role="2Ry0Am" value="linux" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="1MNTMxMGFtJ" role="Nbhlr">
                <node concept="3Mxwew" id="1MNTMxMGFtK" role="3MwsjC">
                  <property role="3MwjfP" value="nix" />
                </node>
              </node>
            </node>
            <node concept="398223" id="1MNTMxMGFtL" role="39821P">
              <node concept="28jJK3" id="1MNTMxMGFtO" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="1MNTMxMGFs8" role="28jJRO">
                  <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFs9" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFsa" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="1MNTMxMGFsb" role="2Ry0An">
                        <property role="2Ry0Am" value="restarter" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="1MNTMxMGFtP" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="1MNTMxMGFsg" role="28jJRO">
                  <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFsh" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFsi" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="1MNTMxMGFsj" role="2Ry0An">
                        <property role="2Ry0Am" value="fsnotifier" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="1MNTMxMGFtQ" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="1MNTMxMGFso" role="28jJRO">
                  <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFsp" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFsq" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="1MNTMxMGFsr" role="2Ry0An">
                        <property role="2Ry0Am" value="printenv.py" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="398223" id="1MNTMxMGFtR" role="39821P">
                <node concept="3_J27D" id="1MNTMxMGFtS" role="Nbhlr">
                  <node concept="3Mxwew" id="1MNTMxMGFtT" role="3MwsjC">
                    <property role="3MwjfP" value="Contents" />
                  </node>
                </node>
                <node concept="398223" id="1MNTMxMGFtU" role="39821P">
                  <node concept="3_J27D" id="1MNTMxMGFtV" role="Nbhlr">
                    <node concept="3Mxwew" id="1MNTMxMGFtW" role="3MwsjC">
                      <property role="3MwjfP" value="Resources" />
                    </node>
                  </node>
                  <node concept="28jJK3" id="1MNTMxMGFtX" role="39821P">
                    <node concept="398BVA" id="1MNTMxMGFsy" role="28jJRO">
                      <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                      <node concept="2Ry0Ak" id="1MNTMxMGFsz" role="iGT6I">
                        <property role="2Ry0Am" value="bin" />
                        <node concept="2Ry0Ak" id="1MNTMxMGFs$" role="2Ry0An">
                          <property role="2Ry0Am" value="mac" />
                          <node concept="2Ry0Ak" id="1MNTMxMGFs_" role="2Ry0An">
                            <property role="2Ry0Am" value="Contents" />
                            <node concept="2Ry0Ak" id="1MNTMxMGFsA" role="2Ry0An">
                              <property role="2Ry0Am" value="Resources" />
                              <node concept="2Ry0Ak" id="1MNTMxMGFsB" role="2Ry0An">
                                <property role="2Ry0Am" value="mps.icns" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="398223" id="1MNTMxMGFtY" role="39821P">
                  <node concept="3_J27D" id="1MNTMxMGFtZ" role="Nbhlr">
                    <node concept="3Mxwew" id="1MNTMxMGFu0" role="3MwsjC">
                      <property role="3MwjfP" value="MacOS" />
                    </node>
                  </node>
                  <node concept="28jJK3" id="1MNTMxMGFu1" role="39821P">
                    <property role="28jJZ5" value="755" />
                    <node concept="398BVA" id="1MNTMxMGFsI" role="28jJRO">
                      <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                      <node concept="2Ry0Ak" id="1MNTMxMGFsJ" role="iGT6I">
                        <property role="2Ry0Am" value="bin" />
                        <node concept="2Ry0Ak" id="1MNTMxMGFsK" role="2Ry0An">
                          <property role="2Ry0Am" value="mac" />
                          <node concept="2Ry0Ak" id="1MNTMxMGFsL" role="2Ry0An">
                            <property role="2Ry0Am" value="Contents" />
                            <node concept="2Ry0Ak" id="1MNTMxMGFsM" role="2Ry0An">
                              <property role="2Ry0Am" value="MacOS" />
                              <node concept="2Ry0Ak" id="1MNTMxMGFsN" role="2Ry0An">
                                <property role="2Ry0Am" value="mps" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="28jJK3" id="1MNTMxMGFu3" role="39821P">
                  <node concept="398BVA" id="1MNTMxMGFt5" role="28jJRO">
                    <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFt6" role="iGT6I">
                      <property role="2Ry0Am" value="bin" />
                      <node concept="2Ry0Ak" id="1MNTMxMGFt7" role="2Ry0An">
                        <property role="2Ry0Am" value="mac" />
                        <node concept="2Ry0Ak" id="1MNTMxMGFt8" role="2Ry0An">
                          <property role="2Ry0Am" value="Contents" />
                          <node concept="2Ry0Ak" id="1MNTMxMGFt9" role="2Ry0An">
                            <property role="2Ry0Am" value="Info.plist" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="1MNTMxMGFu4" role="Nbhlr">
                <node concept="3Mxwew" id="1MNTMxMGFu5" role="3MwsjC">
                  <property role="3MwjfP" value="mac" />
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="1MNTMxMGFu6" role="39821P">
            <property role="28jJZ5" value="755" />
            <node concept="398BVA" id="1MNTMxMGFtc" role="28jJRO">
              <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
              <node concept="2Ry0Ak" id="1MNTMxMGFyr" role="iGT6I">
                <property role="2Ry0Am" value="bin" />
                <node concept="2Ry0Ak" id="1MNTMxMGFyw" role="2Ry0An">
                  <property role="2Ry0Am" value="mps.sh" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="1MNTMxMGFu8" role="Nbhlr">
            <node concept="3Mxwew" id="1MNTMxMGFu9" role="3MwsjC">
              <property role="3MwjfP" value="iec61499 " />
            </node>
            <node concept="3Mxwey" id="1MNTMxMGFua" role="3MwsjC">
              <ref role="3Mxwex" node="6qUHOBcxAfs" resolve="ide-version" />
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="1MNTMxMGFub" role="Nbhlr">
          <node concept="3Mxwey" id="1MNTMxMGFuc" role="3MwsjC">
            <ref role="3Mxwex" node="1MNTMxMGFnF" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="1MNTMxMGFud" role="3MwsjC">
            <property role="3MwjfP" value=".zip" />
          </node>
        </node>
      </node>
      <node concept="3981dG" id="1MNTMxMGFvO" role="39821P">
        <node concept="3_J27D" id="1MNTMxMGFvP" role="Nbhlr">
          <node concept="3Mxwey" id="1MNTMxMGFvQ" role="3MwsjC">
            <ref role="3Mxwex" node="1MNTMxMGFnF" resolve="build.number" />
          </node>
          <node concept="3Mxwew" id="1MNTMxMGFvR" role="3MwsjC">
            <property role="3MwjfP" value="-macos.zip" />
          </node>
        </node>
        <node concept="398223" id="1MNTMxMGFvS" role="39821P">
          <node concept="398223" id="1MNTMxMGFvT" role="39821P">
            <node concept="3ygNvl" id="1MNTMxMGFvU" role="39821P">
              <ref role="3ygNvj" node="1MNTMxMGFoK" />
            </node>
            <node concept="3_J27D" id="1MNTMxMGFvV" role="Nbhlr">
              <node concept="3Mxwew" id="1MNTMxMGFvW" role="3MwsjC">
                <property role="3MwjfP" value="Contents" />
              </node>
            </node>
            <node concept="398223" id="1MNTMxMGFvX" role="39821P">
              <node concept="3_J27D" id="1MNTMxMGFvY" role="Nbhlr">
                <node concept="3Mxwew" id="1MNTMxMGFvZ" role="3MwsjC">
                  <property role="3MwjfP" value="Resources" />
                </node>
              </node>
              <node concept="28jJK3" id="1MNTMxMGFw0" role="39821P">
                <node concept="398BVA" id="1MNTMxMGFuk" role="28jJRO">
                  <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFul" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFum" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="1MNTMxMGFun" role="2Ry0An">
                        <property role="2Ry0Am" value="Contents" />
                        <node concept="2Ry0Ak" id="1MNTMxMGFuo" role="2Ry0An">
                          <property role="2Ry0Am" value="Resources" />
                          <node concept="2Ry0Ak" id="1MNTMxMGFup" role="2Ry0An">
                            <property role="2Ry0Am" value="mps.icns" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="1MNTMxMGFw1" role="39821P">
              <node concept="28jJK3" id="1MNTMxMGFw2" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="1MNTMxMGFuw" role="28jJRO">
                  <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFux" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFuy" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="1MNTMxMGFuz" role="2Ry0An">
                        <property role="2Ry0Am" value="Contents" />
                        <node concept="2Ry0Ak" id="1MNTMxMGFu$" role="2Ry0An">
                          <property role="2Ry0Am" value="MacOS" />
                          <node concept="2Ry0Ak" id="1MNTMxMGFu_" role="2Ry0An">
                            <property role="2Ry0Am" value="mps" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3_J27D" id="1MNTMxMGFw3" role="Nbhlr">
                <node concept="3Mxwew" id="1MNTMxMGFw4" role="3MwsjC">
                  <property role="3MwjfP" value="MacOS" />
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="1MNTMxMGFw6" role="39821P">
              <node concept="1688n2" id="6qUHOBcxI5t" role="28jJR8">
                <property role="1688n3" value="JetBrains MPS" />
                <property role="1688n6" value="g" />
                <node concept="NbPM2" id="6qUHOBcxI5v" role="1688n0">
                  <node concept="3Mxwew" id="6qUHOBcxI5z" role="3MwsjC">
                    <property role="3MwjfP" value="IEC 61499" />
                  </node>
                </node>
              </node>
              <node concept="1688n2" id="1cA0VFL5CwR" role="28jJR8">
                <property role="1688n3" value="\$version\$" />
                <node concept="NbPM2" id="1cA0VFL5CwT" role="1688n0">
                  <node concept="3Mxwey" id="1cA0VFL5Cx$" role="3MwsjC">
                    <ref role="3Mxwex" node="6qUHOBcxAfs" resolve="ide-version" />
                  </node>
                </node>
              </node>
              <node concept="1688n2" id="1cA0VFL5CxQ" role="28jJR8">
                <property role="1688n3" value="\$build\$" />
                <node concept="NbPM2" id="1cA0VFL5CxS" role="1688n0">
                  <node concept="3Mxwey" id="1cA0VFL5Cya" role="3MwsjC">
                    <ref role="3Mxwex" node="1MNTMxMGFnF" resolve="build.number" />
                  </node>
                </node>
              </node>
              <node concept="1688n2" id="6qUHOBcxI5V" role="28jJR8">
                <property role="1688n3" value="string&amp;gt;MPS&amp;lt;/string" />
                <node concept="NbPM2" id="6qUHOBcxI5X" role="1688n0">
                  <node concept="3Mxwew" id="6qUHOBcxI6s" role="3MwsjC">
                    <property role="3MwjfP" value="string&amp;gt;IEC 61499&amp;lt;/string" />
                  </node>
                </node>
              </node>
              <node concept="1688n2" id="1cA0VFL5wR7" role="28jJR8">
                <property role="1688n3" value="string&amp;gt;MPS\d+&amp;lt;/string" />
                <node concept="NbPM2" id="1cA0VFL5wR9" role="1688n0">
                  <node concept="3Mxwew" id="1cA0VFL5wRj" role="3MwsjC">
                    <property role="3MwjfP" value="string&amp;gt;" />
                  </node>
                  <node concept="3Mxwey" id="1cA0VFL5wRm" role="3MwsjC">
                    <ref role="3Mxwex" node="1cA0VFL5wQI" resolve="path.selector" />
                  </node>
                  <node concept="3Mxwew" id="1cA0VFL5wRl" role="3MwsjC">
                    <property role="3MwjfP" value="&amp;lt;/string" />
                  </node>
                </node>
              </node>
              <node concept="398BVA" id="1MNTMxMGFuR" role="28jJRO">
                <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                <node concept="2Ry0Ak" id="1MNTMxMGFuS" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFuT" role="2Ry0An">
                    <property role="2Ry0Am" value="mac" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFuU" role="2Ry0An">
                      <property role="2Ry0Am" value="Contents" />
                      <node concept="2Ry0Ak" id="1MNTMxMGFuV" role="2Ry0An">
                        <property role="2Ry0Am" value="Info.plist" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="398223" id="1MNTMxMGFw7" role="39821P">
              <node concept="3_J27D" id="1MNTMxMGFw8" role="Nbhlr">
                <node concept="3Mxwew" id="1MNTMxMGFw9" role="3MwsjC">
                  <property role="3MwjfP" value="bin" />
                </node>
              </node>
              <node concept="28jJK3" id="1MNTMxMGFwc" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="1MNTMxMGFvg" role="28jJRO">
                  <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFvh" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFvi" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="1MNTMxMGFvj" role="2Ry0An">
                        <property role="2Ry0Am" value="restarter" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="1MNTMxMGFwd" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="398BVA" id="1MNTMxMGFvo" role="28jJRO">
                  <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFvp" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFvq" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="1MNTMxMGFvr" role="2Ry0An">
                        <property role="2Ry0Am" value="fsnotifier" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="1MNTMxMGFwe" role="39821P">
                <node concept="3co7Ac" id="1MNTMxMGFwf" role="28jJR8">
                  <property role="3co7Am" value="lf" />
                  <property role="3cpA_W" value="true" />
                </node>
                <node concept="398BVA" id="1MNTMxMGFvv" role="28jJRO">
                  <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFvw" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFvx" role="2Ry0An">
                      <property role="2Ry0Am" value="mps.vmoptions" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="1MNTMxMGFwg" role="39821P">
                <node concept="3co7Ac" id="1MNTMxMGFwh" role="28jJR8">
                  <property role="3co7Am" value="lf" />
                  <property role="3cpA_W" value="true" />
                </node>
                <node concept="398BVA" id="1MNTMxMGFv_" role="28jJRO">
                  <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFvA" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFvB" role="2Ry0An">
                      <property role="2Ry0Am" value="mps64.vmoptions" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="28jJK3" id="1MNTMxMGFwi" role="39821P">
                <property role="28jJZ5" value="755" />
                <node concept="3co7Ac" id="1MNTMxMGFwj" role="28jJR8">
                  <property role="3co7Am" value="lf" />
                  <property role="3cpA_W" value="true" />
                </node>
                <node concept="398BVA" id="1MNTMxMGFvG" role="28jJRO">
                  <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="1MNTMxMGFvH" role="iGT6I">
                    <property role="2Ry0Am" value="bin" />
                    <node concept="2Ry0Ak" id="1MNTMxMGFvI" role="2Ry0An">
                      <property role="2Ry0Am" value="mac" />
                      <node concept="2Ry0Ak" id="1MNTMxMGFvJ" role="2Ry0An">
                        <property role="2Ry0Am" value="printenv.py" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="28jJK3" id="1MNTMxMGFwk" role="39821P">
              <property role="28jJZ5" value="755" />
              <node concept="3co7Ac" id="1MNTMxMGFwl" role="28jJR8">
                <property role="3co7Am" value="lf" />
                <property role="3cpA_W" value="true" />
              </node>
              <node concept="398BVA" id="1MNTMxMGFvM" role="28jJRO">
                <ref role="398BVh" node="1MNTMxMGFpK" resolve="mps_home" />
                <node concept="2Ry0Ak" id="1MNTMxMGF$S" role="iGT6I">
                  <property role="2Ry0Am" value="bin" />
                  <node concept="2Ry0Ak" id="1MNTMxMGF$X" role="2Ry0An">
                    <property role="2Ry0Am" value="mps.sh" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="1MNTMxMGFwm" role="Nbhlr">
            <node concept="3Mxwew" id="1MNTMxMGFwn" role="3MwsjC">
              <property role="3MwjfP" value="iec61499 " />
            </node>
            <node concept="3Mxwey" id="1MNTMxMGFwo" role="3MwsjC">
              <ref role="3Mxwex" node="6qUHOBcxAfs" resolve="ide-version" />
            </node>
            <node concept="3Mxwew" id="1MNTMxMGFwp" role="3MwsjC">
              <property role="3MwjfP" value=".app" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="1MNTMxMGFpK" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="1MNTMxMGFw$" role="398pKh">
        <node concept="2Ry0Ak" id="1MNTMxMGFwB" role="iGT6I">
          <property role="2Ry0Am" value="lib" />
          <node concept="2Ry0Ak" id="1MNTMxMGFwJ" role="2Ry0An">
            <property role="2Ry0Am" value="mps" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2kB4xC" id="1cA0VFL5wQI" role="1l3spd">
      <property role="TrG5h" value="path.selector" />
      <node concept="aVJcg" id="1cA0VFL5wQS" role="aVJcv">
        <node concept="NbPM2" id="1cA0VFL5wQR" role="aVJcq">
          <node concept="3Mxwew" id="1cA0VFL5wQQ" role="3MwsjC">
            <property role="3MwjfP" value="iec61499-" />
          </node>
          <node concept="3Mxwey" id="1cA0VFL5wQW" role="3MwsjC">
            <ref role="3Mxwex" node="6qUHOBcxAfs" resolve="ide-version" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="68dTcycFmrj">
    <property role="TrG5h" value="iec61499Plugin" />
    <property role="2DA0ip" value="../../" />
    <property role="turDy" value="buildPlugin.xml" />
    <node concept="10PD9b" id="68dTcycFmrM" role="10PD9s" />
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
            <property role="3MwjfP" value="iec61499-172.SNAPSHOT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="68dTcycFmrU" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="68dTcycFmrV" role="398pKh">
        <node concept="2Ry0Ak" id="68dTcycFmrW" role="iGT6I">
          <property role="2Ry0Am" value="lib" />
          <node concept="2Ry0Ak" id="68dTcycFmrX" role="2Ry0An">
            <property role="2Ry0Am" value="mps" />
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
    <node concept="1l3spV" id="68dTcycFms2" role="1l3spN">
      <node concept="m$_wl" id="68dTcycFm$Z" role="39821P">
        <ref role="m_rDy" node="68dTcycFmsQ" resolve="iec61499.plugin" />
        <node concept="398223" id="IQ9Taq0R33" role="39821P">
          <node concept="3_J27D" id="IQ9Taq0R34" role="Nbhlr">
            <node concept="3Mxwew" id="IQ9Taq0R37" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
          <node concept="3981dx" id="IQ9Taq0SEC" role="39821P">
            <node concept="3_J27D" id="IQ9Taq0SED" role="Nbhlr">
              <node concept="3Mxwew" id="IQ9Taq0SEG" role="3MwsjC">
                <property role="3MwjfP" value="iec61499-ide.jar" />
              </node>
            </node>
            <node concept="Saw0i" id="IQ9Taq0SEI" role="39821P">
              <ref role="Saw0g" node="68dTcycFmts" resolve="iec61499.ide" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="68dTcycFmsQ" role="3989C9">
      <property role="m$_wk" value="iec61499.plugin" />
      <node concept="2pNNFK" id="68dTcycFmsR" role="20twgj">
        <property role="2pNNFO" value="extensions" />
        <node concept="2pNUuL" id="68dTcycFmsS" role="2pNNFR">
          <property role="2pNUuO" value="defaultExtensionNs" />
          <node concept="2pMdtt" id="68dTcycFmsT" role="2pMdts">
            <property role="2pMdty" value="com.intellij" />
          </node>
        </node>
        <node concept="3o6iSG" id="68dTcycFmsU" role="3o6s8t" />
        <node concept="2pNNFK" id="68dTcycFmsV" role="3o6s8t">
          <property role="2pNNFO" value="mps.ModelFactoryProvider" />
          <property role="qg3DV" value="true" />
          <node concept="2pNUuL" id="68dTcycFmsW" role="2pNNFR">
            <property role="2pNUuO" value="implementationClass" />
            <node concept="2pMdtt" id="68dTcycFmsX" role="2pMdts">
              <property role="2pMdty" value="iec61499.ide.persistence.IEC61499StandartPersistence" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3_J27D" id="68dTcycFmsY" role="m$_yQ">
        <node concept="3Mxwew" id="68dTcycFmsZ" role="3MwsjC">
          <property role="3MwjfP" value="IEC 61499 Plugin" />
        </node>
      </node>
      <node concept="3_J27D" id="68dTcycFmt0" role="m$_w8">
        <node concept="3Mxwey" id="68dTcycFmt1" role="3MwsjC">
          <ref role="3Mxwex" node="68dTcycFmrY" resolve="ide-version" />
        </node>
      </node>
      <node concept="m$f5U" id="68dTcycFmt2" role="m$_yh">
        <ref role="m$f5T" node="68dTcycFmt7" resolve="iec61499" />
        <node concept="1ZOTzT" id="IQ9Taq0R2E" role="1ZOTzL">
          <ref role="1ZOTzQ" node="68dTcycFmts" resolve="iec61499.ide" />
        </node>
      </node>
      <node concept="m$_yC" id="68dTcycFmt3" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="68dTcycFmt4" role="m$_yJ">
        <ref role="m$_y1" to="al5i:$bJ0jguQdg" resolve="com.mbeddr.platform" />
      </node>
      <node concept="3_J27D" id="68dTcycFmt5" role="m_cZH">
        <node concept="3Mxwew" id="68dTcycFmt6" role="3MwsjC">
          <property role="3MwjfP" value="iec61499.plugin" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="68dTcycFmt7" role="3989C9">
      <property role="TrG5h" value="iec61499" />
      <node concept="1E1JtD" id="68dTcycFmt8" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="iec61499" />
        <property role="3LESm3" value="6594f340-4d73-4027-b7d3-c6ca2e70a53b" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="68dTcycFmt9" role="3LF7KH">
          <node concept="2Ry0Ak" id="68dTcycFmta" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="68dTcycFmtb" role="2Ry0An">
              <property role="2Ry0Am" value="iec61499" />
              <node concept="2Ry0Ak" id="68dTcycFmtc" role="2Ry0An">
                <property role="2Ry0Am" value="iec61499.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmtd" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmte" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmtf" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmtg" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmth" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmti" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="90a9:4be$WTb1AQa" resolve="de.itemis.mps.editor.diagram.runtime" />
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmtj" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmtk" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmtl" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmtm" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmtn" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmto" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="68dTcycFmt8" resolve="iec61499" />
          </node>
        </node>
        <node concept="1yeLz9" id="68dTcycFmtp" role="1TViLv">
          <property role="TrG5h" value="iec61499#4280485643801969762" />
          <property role="3LESm3" value="e6474e26-f6d9-4046-9342-1ef045999378" />
          <property role="2GAjPV" value="false" />
          <node concept="1SiIV0" id="68dTcycFmtq" role="3bR37C">
            <node concept="3bR9La" id="68dTcycFmtr" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:568PkTlOK5Q" resolve="jetbrains.mps.core.xml" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="7rp$r$8eG4n" role="3bR37C">
          <node concept="3bR9La" id="7rp$r$8eG4o" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="68dTcycFmts" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="iec61499.ide" />
        <property role="3LESm3" value="b3cce17b-f294-46d7-8f0f-dd4b7ecc0044" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="68dTcycFmtt" role="3LF7KH">
          <node concept="2Ry0Ak" id="68dTcycFmtu" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="68dTcycFmtv" role="2Ry0An">
              <property role="2Ry0Am" value="iec61499.ide" />
              <node concept="2Ry0Ak" id="68dTcycFmtw" role="2Ry0An">
                <property role="2Ry0Am" value="iec61499.ide.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmtx" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmty" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmt_" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmtA" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmtB" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmtC" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="68dTcycFmt8" resolve="iec61499" />
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmtD" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmtE" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="69kfkbstcgt" role="3bR37C">
          <node concept="3bR9La" id="69kfkbstcgu" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="4KS_gINlEjQ" role="3bR37C">
          <node concept="3bR9La" id="4KS_gINlEjR" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4KS_gINlEjS" role="3bR37C">
          <node concept="3bR9La" id="4KS_gINlEjT" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lfi" resolve="jetbrains.mps.generator" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="68dTcycFmtF" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="iec61499.meta.diagram" />
        <property role="3LESm3" value="8dfbe92d-d233-4cc1-8ddb-a2863fd64843" />
        <property role="2GAjPV" value="false" />
        <node concept="55IIr" id="68dTcycFmtG" role="3LF7KH">
          <node concept="2Ry0Ak" id="68dTcycFmtH" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="68dTcycFmtI" role="2Ry0An">
              <property role="2Ry0Am" value="iec61499.meta.diagram" />
              <node concept="2Ry0Ak" id="68dTcycFmtJ" role="2Ry0An">
                <property role="2Ry0Am" value="iec61499.meta.diagram.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmtK" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmtL" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="90a9:4be$WTb1CbJ" resolve="de.itemis.mps.editor.diagram" />
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmtM" role="3bR37C">
          <node concept="1Busua" id="68dTcycFmtN" role="1SiIV1">
            <ref role="1Busuk" to="90a9:4be$WTb1CbJ" resolve="de.itemis.mps.editor.diagram" />
          </node>
        </node>
        <node concept="1yeLz9" id="68dTcycFmtO" role="1TViLv">
          <property role="TrG5h" value="iec61499.meta.diagram#3165118101539151995" />
          <property role="3LESm3" value="70d46d48-b971-44d7-874c-f0f70b17dd57" />
          <property role="2GAjPV" value="false" />
          <node concept="1SiIV0" id="68dTcycFmtP" role="3bR37C">
            <node concept="3bR9La" id="68dTcycFmtQ" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="90a9:4be$WTb1CbJ" resolve="de.itemis.mps.editor.diagram" />
            </node>
          </node>
          <node concept="1SiIV0" id="68dTcycFmtR" role="3bR37C">
            <node concept="3bR9La" id="68dTcycFmtS" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
          <node concept="1SiIV0" id="68dTcycFmtT" role="3bR37C">
            <node concept="3bR9La" id="68dTcycFmtU" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="90a9:4be$WTb1AQa" resolve="de.itemis.mps.editor.diagram.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="68dTcycFmtV" role="3bR37C">
            <node concept="3bR9La" id="68dTcycFmtW" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
            </node>
          </node>
          <node concept="1SiIV0" id="68dTcycFmtX" role="3bR37C">
            <node concept="3bR9La" id="68dTcycFmtY" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
            </node>
          </node>
          <node concept="1SiIV0" id="68dTcycFmtZ" role="3bR37C">
            <node concept="3bR9La" id="68dTcycFmu0" role="1SiIV1">
              <property role="3bR36h" value="false" />
              <ref role="3bR37D" to="90a9:4be$WTb1CRn" resolve="de.itemis.mps.editor.diagram#1110129820007083940" />
            </node>
          </node>
        </node>
      </node>
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
    <node concept="2sgV4H" id="68dTcycFoqx" role="1l3spa">
      <ref role="1l3spb" to="al5i:3AVJcIMlF8l" resolve="com.mbeddr.platform" />
      <node concept="398BVA" id="68dTcycFoqy" role="2JcizS">
        <ref role="398BVh" node="68dTcycFmrU" resolve="mps_home" />
        <node concept="2Ry0Ak" id="68dTcycFoqz" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
  </node>
</model>

