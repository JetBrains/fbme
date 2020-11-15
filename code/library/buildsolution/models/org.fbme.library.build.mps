<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ca36cb90-c978-4e82-b9cd-9f3922cfc65f(org.fbme.library.build)">
  <persistence version="9" />
  <languages>
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="2755237150521975431" name="jetbrains.mps.build.structure.BuildVariableMacroInitWithString" flags="ng" index="aVJcg">
        <child id="2755237150521975437" name="value" index="aVJcq" />
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
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
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
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
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
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC">
        <reference id="1265949165890536425" name="module" index="L2wRA" />
        <child id="4356762679305730677" name="jarLocations" index="3yL2VB" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <property id="1500819558096356884" name="doNotCompile" index="2GAjPV" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="4356762679305675652" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleXml_CustomJarLocation" flags="ng" index="3yLZsm">
        <property id="4356762679305675654" name="packagedLocation" index="3yLZsk" />
        <child id="4356762679305675653" name="path" index="3yLZsn" />
      </concept>
      <concept id="4278635856200826393" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar" flags="ng" index="1BurEX">
        <child id="4278635856200826394" name="path" index="1BurEY" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA">
        <property id="269707337715731330" name="sourcesKind" index="aoJFB" />
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
    <property role="TrG5h" value="fbme_library" />
    <property role="2DA0ip" value="../" />
    <node concept="m$_wf" id="42vv4xsIHQK" role="3989C9">
      <property role="m$_wk" value="fbme.library" />
      <node concept="3_J27D" id="42vv4xsIHQM" role="m$_yQ">
        <node concept="3Mxwew" id="42vv4xsIHT5" role="3MwsjC">
          <property role="3MwjfP" value="FBME Library" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsIHQO" role="m_cZH">
        <node concept="3Mxwew" id="42vv4xsIHT7" role="3MwsjC">
          <property role="3MwjfP" value="fbme.library" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsIHQQ" role="m$_w8">
        <node concept="3Mxwey" id="42vv4xsIHTf" role="3MwsjC">
          <ref role="3Mxwex" node="68dTcycFmrY" resolve="ide-version" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsIHT9" role="3s6cr7">
        <node concept="3Mxwew" id="42vv4xsIHTb" role="3MwsjC">
          <property role="3MwjfP" value="Common library for IEC 61499" />
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
        <property role="TrG5h" value="org.fbme.lib" />
        <property role="3LESm3" value="1db6de07-b355-4c0f-9979-75b4ac1e8215" />
        <property role="2GAjPV" value="true" />
        <property role="BnDLt" value="true" />
        <property role="aoJFB" value="eYcmk9QOli/sources" />
        <node concept="55IIr" id="42vv4xsIHXZ" role="3LF7KH">
          <node concept="2Ry0Ak" id="Ej4tEplrRK" role="iGT6I">
            <property role="2Ry0Am" value="org.fbme.lib.msd" />
          </node>
        </node>
        <node concept="1SiIV0" id="5oxN2jlMhEl" role="3bR37C">
          <node concept="3bR9La" id="5oxN2jlMhEm" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5oxN2jlMhEr" role="3bR37C">
          <node concept="1BurEX" id="5oxN2jlMhEs" role="1SiIV1">
            <node concept="55IIr" id="5oxN2jlMhEn" role="1BurEY">
              <node concept="2Ry0Ak" id="3f0ZsV2QMj8" role="iGT6I">
                <property role="2Ry0Am" value="out" />
                <node concept="2Ry0Ak" id="Ej4tEpqdyD" role="2Ry0An">
                  <property role="2Ry0Am" value="antlr4-runtime-4.5.jar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5oxN2jlMhEx" role="3bR37C">
          <node concept="1BurEX" id="5oxN2jlMhEy" role="1SiIV1">
            <node concept="55IIr" id="5oxN2jlMhEt" role="1BurEY">
              <node concept="2Ry0Ak" id="3f0ZsV2QMjw" role="iGT6I">
                <property role="2Ry0Am" value="out" />
                <node concept="2Ry0Ak" id="Ej4tEpqdzd" role="2Ry0An">
                  <property role="2Ry0Am" value="library.jar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="4Hbpy_fMSp_" role="3bR37C">
          <node concept="3bR9La" id="4Hbpy_fMSpA" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="2H5LTAROD4A" role="10PD9s" />
    <node concept="3b7kt6" id="68dTcycFmrN" role="10PD9s" />
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
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="Ej4tEplrRD" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="Ej4tEplrRG" role="2Ry0An">
              <property role="2Ry0Am" value="lib" />
              <node concept="2Ry0Ak" id="Ej4tEplrRH" role="2Ry0An">
                <property role="2Ry0Am" value="MPS 2020.1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="68dTcycFms2" role="1l3spN">
      <node concept="m$_wl" id="42vv4xsIIBm" role="39821P">
        <ref role="m_rDy" node="42vv4xsIHQK" resolve="fbme.library" />
        <node concept="pUk6w" id="3vIqldixoJB" role="pUk7w" />
        <node concept="398223" id="3vIqldixlPM" role="39821P">
          <node concept="3_J27D" id="3vIqldixlPO" role="Nbhlr">
            <node concept="3Mxwew" id="3vIqldixlPW" role="3MwsjC">
              <property role="3MwjfP" value="languages" />
            </node>
          </node>
          <node concept="L2wRC" id="3vIqldixlPX" role="39821P">
            <ref role="L2wRA" node="42vv4xsIHXY" resolve="org.fbme.lib" />
            <node concept="3yLZsm" id="3vIqldixlQa" role="3yL2VB">
              <property role="3yLZsk" value="../lib/library.jar" />
              <node concept="55IIr" id="3vIqldixlQy" role="3yLZsn">
                <node concept="2Ry0Ak" id="3vIqldixlQF" role="iGT6I">
                  <property role="2Ry0Am" value="out" />
                  <node concept="2Ry0Ak" id="3vIqldixlQO" role="2Ry0An">
                    <property role="2Ry0Am" value="library.jar" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3yLZsm" id="3vIqldixlRp" role="3yL2VB">
              <property role="3yLZsk" value="../lib/antlr4-runtime-4.5.jar" />
              <node concept="55IIr" id="3vIqldixlRq" role="3yLZsn">
                <node concept="2Ry0Ak" id="3vIqldixlRr" role="iGT6I">
                  <property role="2Ry0Am" value="out" />
                  <node concept="2Ry0Ak" id="3vIqldixlRz" role="2Ry0An">
                    <property role="2Ry0Am" value="antlr4-runtime-4.5.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="398223" id="Ej4tEpqtuU" role="39821P">
          <node concept="3_J27D" id="Ej4tEpqtuV" role="Nbhlr">
            <node concept="3Mxwew" id="Ej4tEpqtv2" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
          <node concept="2HvfSZ" id="Ej4tEpqtv3" role="39821P">
            <node concept="55IIr" id="Ej4tEpqtv4" role="2HvfZ0">
              <node concept="2Ry0Ak" id="Ej4tEpqtvc" role="iGT6I">
                <property role="2Ry0Am" value="out" />
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
  </node>
</model>

