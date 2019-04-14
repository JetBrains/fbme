<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d873dcfc-44fd-449a-83a0-b73f30522ba6(iec61499.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
    <use id="9ded098b-ad6a-4657-bfd9-48636cfe8bc3" name="jetbrains.mps.lang.traceable" version="0" />
    <use id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml" version="0" />
    <use id="d5033cee-f632-44b6-b308-89d4fbde34ff" name="jetbrains.mps.build.startup" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="al5i" ref="r:742f344d-4dc4-4862-992c-4bc94b094870(com.mbeddr.mpsutil.dev.build)" />
    <import index="90a9" ref="r:fb24ac52-5985-4947-bba9-25be6fd32c1a(de.itemis.mps.extensions.build)" />
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
      <concept id="2750015747481074431" name="jetbrains.mps.build.structure.BuildLayout_Files" flags="ng" index="2HvfSZ">
        <child id="2750015747481074432" name="path" index="2HvfZ0" />
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
      <concept id="7389400916848050074" name="jetbrains.mps.build.structure.BuildLayout_Jar" flags="ng" index="3981dx" />
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
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
        <child id="3570488090019868128" name="packagingType" index="pUk7w" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="3570488090019868064" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ManualPluginLayoutType" flags="ng" index="pUk6w" />
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
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
      <concept id="763829979718664966" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleResources" flags="ng" index="3rtmxn">
        <child id="763829979718664967" name="files" index="3rtmxm" />
      </concept>
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
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
            <property role="3MwjfP" value="iec61499-173.SNAPSHOT" />
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
            <property role="2Ry0Am" value="MPS 2018.3" />
          </node>
        </node>
      </node>
    </node>
    <node concept="398rNT" id="6ZWeIInkr0T" role="1l3spd">
      <property role="TrG5h" value="mbeddr_home" />
      <node concept="55IIr" id="6ZWeIInkr0U" role="398pKh">
        <node concept="2Ry0Ak" id="6ZWeIInkr0V" role="iGT6I">
          <property role="2Ry0Am" value="lib" />
          <node concept="2Ry0Ak" id="6ZWeIInkr0W" role="2Ry0An">
            <property role="2Ry0Am" value="com.mbeddr.platform" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="68dTcycFms2" role="1l3spN">
      <node concept="m$_wl" id="68dTcycFm$Z" role="39821P">
        <ref role="m_rDy" node="68dTcycFmsQ" resolve="iec61499.plugin" />
        <node concept="398223" id="IQ9Taq0R33" role="39821P">
          <node concept="2HvfSZ" id="ahlxKSr24q" role="39821P">
            <node concept="55IIr" id="ahlxKSr24H" role="2HvfZ0">
              <node concept="2Ry0Ak" id="ahlxKSr24V" role="iGT6I">
                <property role="2Ry0Am" value="st-parser" />
                <node concept="2Ry0Ak" id="ahlxKSr258" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                </node>
              </node>
            </node>
          </node>
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
        <node concept="pUk6w" id="2nIOssUNieC" role="pUk7w" />
        <node concept="398223" id="2nIOssUNieD" role="39821P">
          <node concept="398223" id="7bQ9AP7zvdR" role="39821P">
            <node concept="3_J27D" id="7bQ9AP7zvdT" role="Nbhlr">
              <node concept="3Mxwew" id="7bQ9AP7zvea" role="3MwsjC">
                <property role="3MwjfP" value="ST" />
              </node>
            </node>
            <node concept="L2wRC" id="7bQ9AP7zvec" role="39821P">
              <ref role="L2wRA" node="ahlxKSr1W7" resolve="ST" />
            </node>
          </node>
          <node concept="3_J27D" id="2nIOssUNieE" role="Nbhlr">
            <node concept="3Mxwew" id="2nIOssUNieF" role="3MwsjC">
              <property role="3MwjfP" value="languages" />
            </node>
          </node>
          <node concept="398223" id="2nIOssUNieG" role="39821P">
            <node concept="3_J27D" id="2nIOssUNieH" role="Nbhlr">
              <node concept="3Mxwew" id="2nIOssUNieI" role="3MwsjC">
                <property role="3MwjfP" value="iec61499" />
              </node>
            </node>
            <node concept="L2wRC" id="2nIOssUNieJ" role="39821P">
              <ref role="L2wRA" node="68dTcycFmt8" resolve="iec61499" />
            </node>
            <node concept="L2wRC" id="2nIOssUNieK" role="39821P">
              <ref role="L2wRA" node="68dTcycFmtF" resolve="iec61499.meta.editor" />
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
      </node>
      <node concept="m$_yC" id="68dTcycFmt3" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="3_J27D" id="68dTcycFmt5" role="m_cZH">
        <node concept="3Mxwew" id="68dTcycFmt6" role="3MwsjC">
          <property role="3MwjfP" value="iec61499.plugin" />
        </node>
      </node>
      <node concept="m$_yC" id="6ZWeIInkX2n" role="m$_yJ">
        <ref role="m$_y1" to="90a9:4be$WTb1MZD" resolve="de.itemis.mps.editor.diagram" />
      </node>
      <node concept="m$_yC" id="6ZWeIInkX3q" role="m$_yJ">
        <ref role="m$_y1" to="al5i:$bJ0jguQdg" resolve="com.mbeddr.platform" />
      </node>
    </node>
    <node concept="2G$12M" id="68dTcycFmt7" role="3989C9">
      <property role="TrG5h" value="iec61499" />
      <node concept="1E1JtD" id="68dTcycFmt8" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="iec61499" />
        <property role="3LESm3" value="6594f340-4d73-4027-b7d3-c6ca2e70a53b" />
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
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmtf" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmtg" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmth" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmti" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4be$WTb1AQa" resolve="de.itemis.mps.editor.diagram.runtime" />
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
          <property role="TrG5h" value="iec61499#4280485643801969762" />
          <property role="3LESm3" value="e6474e26-f6d9-4046-9342-1ef045999378" />
          <node concept="1SiIV0" id="7bQ9AP7ye66" role="3bR37C">
            <node concept="3bR9La" id="7bQ9AP7ye67" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
          <node concept="1SiIV0" id="7bQ9AP7ye68" role="3bR37C">
            <node concept="3bR9La" id="7bQ9AP7ye69" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:568PkTlOK5Q" resolve="jetbrains.mps.core.xml" />
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
                <node concept="2Ry0Ak" id="3c8BrEoHyev" role="2Ry0An">
                  <property role="2Ry0Am" value="iec61499" />
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
                  <property role="2Ry0Am" value="iec61499" />
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
        <node concept="1SiIV0" id="ahlxKSr21g" role="3bR37C">
          <node concept="3bR9La" id="ahlxKSr21h" role="1SiIV1">
            <ref role="3bR37D" node="ahlxKSr1W7" resolve="ST" />
          </node>
        </node>
        <node concept="1SiIV0" id="ahlxKSr21i" role="3bR37C">
          <node concept="1Busua" id="ahlxKSr21j" role="1SiIV1">
            <ref role="1Busuk" node="ahlxKSr1W7" resolve="ST" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="68dTcycFmts" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="iec61499.ide" />
        <property role="3LESm3" value="b3cce17b-f294-46d7-8f0f-dd4b7ecc0044" />
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
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmt_" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmtA" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmtB" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmtC" role="1SiIV1">
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
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="4KS_gINlEjQ" role="3bR37C">
          <node concept="3bR9La" id="4KS_gINlEjR" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="4KS_gINlEjS" role="3bR37C">
          <node concept="3bR9La" id="4KS_gINlEjT" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6Lfi" resolve="jetbrains.mps.generator" />
          </node>
        </node>
        <node concept="3rtmxn" id="3c8BrEoHyeJ" role="3bR31x">
          <node concept="3LXTmp" id="3c8BrEoHyeK" role="3rtmxm">
            <node concept="3qWCbU" id="3c8BrEoHyeL" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
            <node concept="55IIr" id="3c8BrEoHyeM" role="3LXTmr">
              <node concept="2Ry0Ak" id="3c8BrEoHyeN" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3c8BrEoHyeO" role="2Ry0An">
                  <property role="2Ry0Am" value="iec61499.ide" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="ahlxKSr1RO" role="3bR37C">
          <node concept="3bR9La" id="ahlxKSr1RP" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:568PkTlOK5Q" resolve="jetbrains.mps.core.xml" />
          </node>
        </node>
        <node concept="1SiIV0" id="ahlxKSr21k" role="3bR37C">
          <node concept="3bR9La" id="ahlxKSr21l" role="1SiIV1">
            <ref role="3bR37D" node="ahlxKSr1W7" resolve="ST" />
          </node>
        </node>
        <node concept="1SiIV0" id="ahlxKSr21m" role="3bR37C">
          <node concept="3bR9La" id="ahlxKSr21n" role="1SiIV1">
            <ref role="3bR37D" node="ahlxKSr1Z1" resolve="ST.parser" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="68dTcycFmtF" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="iec61499.meta.editor" />
        <property role="3LESm3" value="8dfbe92d-d233-4cc1-8ddb-a2863fd64843" />
        <node concept="55IIr" id="68dTcycFmtG" role="3LF7KH">
          <node concept="2Ry0Ak" id="68dTcycFmtH" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="68dTcycFmtI" role="2Ry0An">
              <property role="2Ry0Am" value="iec61499.meta.editor" />
              <node concept="2Ry0Ak" id="ahlxKSr22G" role="2Ry0An">
                <property role="2Ry0Am" value="iec61499.meta.editor.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmtK" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmtL" role="1SiIV1">
            <ref role="3bR37D" to="90a9:4be$WTb1CbJ" resolve="de.itemis.mps.editor.diagram" />
          </node>
        </node>
        <node concept="1SiIV0" id="68dTcycFmtM" role="3bR37C">
          <node concept="1Busua" id="68dTcycFmtN" role="1SiIV1">
            <ref role="1Busuk" to="90a9:4be$WTb1CbJ" resolve="de.itemis.mps.editor.diagram" />
          </node>
        </node>
        <node concept="1yeLz9" id="68dTcycFmtO" role="1TViLv">
          <property role="TrG5h" value="iec61499.meta.editor#3165118101539151995" />
          <property role="3LESm3" value="70d46d48-b971-44d7-874c-f0f70b17dd57" />
          <node concept="1SiIV0" id="68dTcycFmtP" role="3bR37C">
            <node concept="3bR9La" id="68dTcycFmtQ" role="1SiIV1">
              <ref role="3bR37D" to="90a9:4be$WTb1CbJ" resolve="de.itemis.mps.editor.diagram" />
            </node>
          </node>
          <node concept="1SiIV0" id="68dTcycFmtR" role="3bR37C">
            <node concept="3bR9La" id="68dTcycFmtS" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
            </node>
          </node>
          <node concept="1SiIV0" id="68dTcycFmtT" role="3bR37C">
            <node concept="3bR9La" id="68dTcycFmtU" role="1SiIV1">
              <ref role="3bR37D" to="90a9:4be$WTb1AQa" resolve="de.itemis.mps.editor.diagram.runtime" />
            </node>
          </node>
          <node concept="1SiIV0" id="68dTcycFmtV" role="3bR37C">
            <node concept="3bR9La" id="68dTcycFmtW" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KYb" resolve="jetbrains.mps.baseLanguage" />
            </node>
          </node>
          <node concept="1SiIV0" id="68dTcycFmtX" role="3bR37C">
            <node concept="3bR9La" id="68dTcycFmtY" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L9O" resolve="jetbrains.mps.lang.smodel" />
            </node>
          </node>
          <node concept="1SiIV0" id="68dTcycFmtZ" role="3bR37C">
            <node concept="3bR9La" id="68dTcycFmu0" role="1SiIV1">
              <ref role="3bR37D" to="90a9:4be$WTb1CRn" resolve="de.itemis.mps.editor.diagram#1110129820007083940" />
            </node>
          </node>
          <node concept="1SiIV0" id="ahlxKSr22U" role="3bR37C">
            <node concept="3bR9La" id="ahlxKSr22V" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6L4X" resolve="jetbrains.mps.lang.editor" />
            </node>
          </node>
          <node concept="1SiIV0" id="ahlxKSr22W" role="3bR37C">
            <node concept="3bR9La" id="ahlxKSr22X" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="3c8BrEoHyec" role="3bR31x">
          <node concept="3LXTmp" id="3c8BrEoHyed" role="3rtmxm">
            <node concept="3qWCbU" id="3c8BrEoHyee" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**, source_gen/**/*.png" />
            </node>
            <node concept="55IIr" id="3c8BrEoHyef" role="3LXTmr">
              <node concept="2Ry0Ak" id="3c8BrEoHyeg" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="7bQ9AP7yRlO" role="2Ry0An">
                  <property role="2Ry0Am" value="iec61499.meta.editor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="ahlxKSr22Q" role="3bR37C">
          <node concept="3bR9La" id="ahlxKSr22R" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L4X" resolve="jetbrains.mps.lang.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="ahlxKSr22S" role="3bR37C">
          <node concept="3bR9La" id="ahlxKSr22T" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LaO" resolve="jetbrains.mps.lang.structure" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="ahlxKSr1W7" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="ST" />
        <property role="3LESm3" value="2046780a-246e-4cb0-90fe-56a2b7d92c54" />
        <node concept="55IIr" id="ahlxKSr1Wa" role="3LF7KH">
          <node concept="2Ry0Ak" id="ahlxKSr1Xv" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="ahlxKSr1Xy" role="2Ry0An">
              <property role="2Ry0Am" value="ST" />
              <node concept="2Ry0Ak" id="ahlxKSr1XB" role="2Ry0An">
                <property role="2Ry0Am" value="ST.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="ahlxKSr20E" role="1TViLv">
          <property role="TrG5h" value="ST#01" />
          <property role="3LESm3" value="9b4b978d-2989-49ae-b210-968bb0aee375" />
        </node>
      </node>
      <node concept="1E1JtA" id="ahlxKSr1Z1" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="ST.parser" />
        <property role="3LESm3" value="1db6de07-b355-4c0f-9979-75b4ac1e8215" />
        <property role="2GAjPV" value="true" />
        <node concept="55IIr" id="ahlxKSr1Z4" role="3LF7KH">
          <node concept="2Ry0Ak" id="ahlxKSr20z" role="iGT6I">
            <property role="2Ry0Am" value="st-parser" />
            <node concept="2Ry0Ak" id="ahlxKSr20C" role="2Ry0An">
              <property role="2Ry0Am" value="ST.parser.msd" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="ahlxKSr20F" role="3bR37C">
          <node concept="3bR9La" id="ahlxKSr20G" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="ahlxKSr20L" role="3bR37C">
          <node concept="1BurEX" id="ahlxKSr20M" role="1SiIV1">
            <node concept="55IIr" id="ahlxKSr20H" role="1BurEY">
              <node concept="2Ry0Ak" id="ahlxKSr20I" role="iGT6I">
                <property role="2Ry0Am" value="st-parser" />
                <node concept="2Ry0Ak" id="ahlxKSr20J" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="ahlxKSr20K" role="2Ry0An">
                    <property role="2Ry0Am" value="antlr4-runtime-4.5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="ahlxKSr20R" role="3bR37C">
          <node concept="1BurEX" id="ahlxKSr20S" role="1SiIV1">
            <node concept="55IIr" id="ahlxKSr20N" role="1BurEY">
              <node concept="2Ry0Ak" id="ahlxKSr20O" role="iGT6I">
                <property role="2Ry0Am" value="st-parser" />
                <node concept="2Ry0Ak" id="ahlxKSr20P" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="ahlxKSr20Q" role="2Ry0An">
                    <property role="2Ry0Am" value="st-parser.jar" />
                  </node>
                </node>
              </node>
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
    <node concept="2sgV4H" id="6ZWeIInkIZI" role="1l3spa">
      <ref role="1l3spb" to="90a9:2Xjt3l56m0V" resolve="de.itemis.mps.extensions" />
      <node concept="398BVA" id="6ZWeIInkJ00" role="2JcizS">
        <ref role="398BVh" node="6ZWeIInkr0T" resolve="mbeddr_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="68dTcycFoqx" role="1l3spa">
      <ref role="1l3spb" to="al5i:3AVJcIMlF8l" resolve="com.mbeddr.platform" />
      <node concept="398BVA" id="6ZWeIInkr2W" role="2JcizS">
        <ref role="398BVh" node="6ZWeIInkr0T" resolve="mbeddr_home" />
      </node>
    </node>
  </node>
</model>

