<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4904ab70-42df-49dd-8218-a04fff347a01(org.fbme.richediting.build)">
  <persistence version="9" />
  <languages>
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="ci82" ref="r:ddb2cc39-021f-4bf6-ab5a-b4bcff106c31(org.fbme.platform.build)" />
    <import index="jh3g" ref="r:96a6171e-d03e-4270-ab9e-fd0a743a5228(org.fbme.scenes.build)" />
    <import index="66wk" ref="r:ca36cb90-c978-4e82-b9cd-9f3922cfc65f(org.fbme.library.build)" />
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
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
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
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
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
      <concept id="3570488090019868065" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_AutoPluginLayoutType" flags="ng" index="pUk6x" />
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
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
      <concept id="4278635856200817744" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleModelRoot" flags="ng" index="1BupzO">
        <property id="8137134783396907368" name="convert2binary" index="1Hdu6h" />
        <property id="8137134783396676838" name="extracted" index="1HemKv" />
        <property id="2889113830911481881" name="deployFolderName" index="3ZfqAx" />
        <child id="8137134783396676835" name="location" index="1HemKq" />
      </concept>
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD" />
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
    <property role="TrG5h" value="fbme_richediting" />
    <property role="2DA0ip" value="../" />
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
        <node concept="2Ry0Ak" id="Ej4tEplrTQ" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="Ej4tEplrTT" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="Ej4tEplrTW" role="2Ry0An">
              <property role="2Ry0Am" value="lib" />
              <node concept="2Ry0Ak" id="Ej4tEplrTZ" role="2Ry0An">
                <property role="2Ry0Am" value="MPS 2020.1" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="68dTcycFms2" role="1l3spN">
      <node concept="m$_wl" id="42vv4xsJM_o" role="39821P">
        <ref role="m_rDy" node="42vv4xsIIHl" resolve="fbme.richediting" />
        <node concept="pUk6x" id="42vv4xsJMAs" role="pUk7w" />
      </node>
    </node>
    <node concept="m$_wf" id="42vv4xsIIHl" role="3989C9">
      <property role="m$_wk" value="fbme.richediting" />
      <node concept="m$_yC" id="Ej4tEplrU$" role="m$_yJ">
        <ref role="m$_y1" to="ci82:68dTcycFmsQ" resolve="fbme.platform" />
      </node>
      <node concept="m$_yC" id="Ej4tEplrUA" role="m$_yJ">
        <ref role="m$_y1" to="jh3g:42vv4xsIJ5y" resolve="scenes" />
      </node>
      <node concept="3_J27D" id="42vv4xsIIHn" role="m$_yQ">
        <node concept="3Mxwew" id="42vv4xsIILY" role="3MwsjC">
          <property role="3MwjfP" value="FBME - Rich editing" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsIIHp" role="m_cZH">
        <node concept="3Mxwew" id="42vv4xsIILO" role="3MwsjC">
          <property role="3MwjfP" value="fbme.richediting" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsIIHr" role="m$_w8">
        <node concept="3Mxwey" id="42vv4xsIIMc" role="3MwsjC">
          <ref role="3Mxwex" node="68dTcycFmrY" resolve="ide-version" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsIIM0" role="3s6cr7">
        <node concept="3Mxwew" id="42vv4xsIIM2" role="3MwsjC">
          <property role="3MwjfP" value="Rich editing support for IEC 61499 systems" />
        </node>
      </node>
      <node concept="m$f5U" id="42vv4xsIIWP" role="m$_yh">
        <ref role="m$f5T" node="42vv4xsIIPs" resolve="fbme-richediting" />
      </node>
    </node>
    <node concept="2G$12M" id="42vv4xsIIPs" role="3989C9">
      <property role="TrG5h" value="fbme-richediting" />
      <node concept="1E1JtA" id="42vv4xsIIT7" role="2G$12L">
        <property role="TrG5h" value="org.fbme.ide.richediting" />
        <property role="3LESm3" value="ce053d11-5ec7-4fac-b419-6715b4a97d3a" />
        <property role="BnDLt" value="true" />
        <node concept="3rtmxn" id="mO0SGikARj" role="3bR31x">
          <node concept="3LXTmp" id="mO0SGikARk" role="3rtmxm">
            <node concept="3LWZYx" id="mO0SGikARp" role="3LXTna">
              <property role="3LWZYw" value="startup.properties" />
            </node>
            <node concept="55IIr" id="3f0ZsV2Yqzs" role="3LXTmr">
              <node concept="2Ry0Ak" id="3f0ZsV2Yqzv" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3f0ZsV2Yqzw" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.ide.richediting" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="42vv4xsIITa" role="3LF7KH">
          <node concept="2Ry0Ak" id="3f0ZsV2QMgT" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="3f0ZsV2QMgU" role="2Ry0An">
              <property role="2Ry0Am" value="org.fbme.ide.richediting" />
              <node concept="2Ry0Ak" id="3f0ZsV2QMgV" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.ide.richediting.msd" />
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
        <node concept="1SiIV0" id="42vv4xsIIW7" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIIW8" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
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
        <node concept="1SiIV0" id="44qSI5$WMqF" role="3bR37C">
          <node concept="3bR9La" id="44qSI5$WMqG" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJ$" resolve="jetbrains.mps.ide.editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="44qSI5$WMqH" role="3bR37C">
          <node concept="3bR9La" id="44qSI5$WMqI" role="1SiIV1">
            <ref role="3bR37D" node="42vv4xsIIUH" resolve="org.fbme.ide.richediting.lang" />
          </node>
        </node>
        <node concept="1SiIV0" id="44qSI5$WMqJ" role="3bR37C">
          <node concept="3bR9La" id="44qSI5$WMqK" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1BupzO" id="6zYxdPXe68r" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="Ej4tEplrUS" role="1HemKq">
            <node concept="55IIr" id="Ej4tEplrUO" role="3LXTmr">
              <node concept="2Ry0Ak" id="Ej4tEplrUP" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="Ej4tEplrUQ" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.ide.richediting" />
                  <node concept="2Ry0Ak" id="Ej4tEplrUR" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="Ej4tEplrUT" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1a1larLfpph" role="3bR37C">
          <node concept="3bR9La" id="1a1larLfppi" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6L5O" resolve="jetbrains.mps.lang.extension" />
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
        <node concept="1SiIV0" id="Ej4tEplrUC" role="3bR37C">
          <node concept="3bR9La" id="Ej4tEplrUD" role="1SiIV1">
            <ref role="3bR37D" to="ci82:1a1larLevcL" resolve="org.fbme.ide.util.lang" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ej4tEplrUE" role="3bR37C">
          <node concept="3bR9La" id="Ej4tEplrUF" role="1SiIV1">
            <ref role="3bR37D" to="ci82:1JYTWWzvsHw" resolve="org.fbme.ide.iec61499.adapter" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ej4tEplrUG" role="3bR37C">
          <node concept="3bR9La" id="Ej4tEplrUH" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="66wk:42vv4xsIHXY" resolve="org.fbme.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ej4tEplrUI" role="3bR37C">
          <node concept="3bR9La" id="Ej4tEplrUJ" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="jh3g:42vv4xsIJiX" resolve="org.fbme.scenes" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ej4tEplrUK" role="3bR37C">
          <node concept="3bR9La" id="Ej4tEplrUL" role="1SiIV1">
            <ref role="3bR37D" to="ci82:42vv4xsIHLX" resolve="org.fbme.ide.platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ej4tEplrUM" role="3bR37C">
          <node concept="3bR9La" id="Ej4tEplrUN" role="1SiIV1">
            <ref role="3bR37D" to="ci82:68dTcycFmt8" resolve="org.fbme.ide.iec61499.lang" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="42vv4xsIIUH" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.fbme.ide.richediting.lang" />
        <property role="3LESm3" value="111cc10b-fa1e-4e11-8e9c-37e957c4043f" />
        <node concept="55IIr" id="42vv4xsIIUK" role="3LF7KH">
          <node concept="2Ry0Ak" id="3f0ZsV2QMi7" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="3f0ZsV2QMi8" role="2Ry0An">
              <property role="2Ry0Am" value="org.fbme.ide.richediting.lang" />
              <node concept="2Ry0Ak" id="3f0ZsV2QMi9" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.ide.richediting.lang.mpl" />
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
        <node concept="1SiIV0" id="42vv4xsIJk7" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIJk8" role="1SiIV1">
            <ref role="3bR37D" node="42vv4xsIIT7" resolve="org.fbme.ide.richediting" />
          </node>
        </node>
        <node concept="1SiIV0" id="1JYTWWzvsEG" role="3bR37C">
          <node concept="3bR9La" id="1JYTWWzvsEH" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
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
          <node concept="3LXTmp" id="Ej4tEplrV8" role="1HemKq">
            <node concept="55IIr" id="Ej4tEplrV4" role="3LXTmr">
              <node concept="2Ry0Ak" id="Ej4tEplrV5" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="Ej4tEplrV6" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.ide.richediting.lang" />
                  <node concept="2Ry0Ak" id="Ej4tEplrV7" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="Ej4tEplrV9" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="Ej4tEplrUU" role="3bR37C">
          <node concept="3bR9La" id="Ej4tEplrUV" role="1SiIV1">
            <ref role="3bR37D" to="66wk:42vv4xsIHXY" resolve="org.fbme.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ej4tEplrUW" role="3bR37C">
          <node concept="3bR9La" id="Ej4tEplrUX" role="1SiIV1">
            <ref role="3bR37D" to="ci82:42vv4xsIHLX" resolve="org.fbme.ide.platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ej4tEplrUY" role="3bR37C">
          <node concept="3bR9La" id="Ej4tEplrUZ" role="1SiIV1">
            <ref role="3bR37D" to="ci82:68dTcycFmt8" resolve="org.fbme.ide.iec61499.lang" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ej4tEplrV0" role="3bR37C">
          <node concept="3bR9La" id="Ej4tEplrV1" role="1SiIV1">
            <ref role="3bR37D" to="jh3g:42vv4xsIJiX" resolve="org.fbme.scenes" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ej4tEplrV2" role="3bR37C">
          <node concept="3bR9La" id="Ej4tEplrV3" role="1SiIV1">
            <ref role="3bR37D" to="ci82:1JYTWWzvsHw" resolve="org.fbme.ide.iec61499.adapter" />
          </node>
        </node>
        <node concept="1SiIV0" id="Ej4tEplrVa" role="3bR37C">
          <node concept="1Busua" id="Ej4tEplrVb" role="1SiIV1">
            <ref role="1Busuk" to="ci82:68dTcycFmt8" resolve="org.fbme.ide.iec61499.lang" />
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
    <node concept="2sgV4H" id="Ej4tEplrU1" role="1l3spa">
      <ref role="1l3spb" to="ci82:68dTcycFmrj" resolve="fbme_platform" />
    </node>
    <node concept="2sgV4H" id="Ej4tEplrUy" role="1l3spa">
      <ref role="1l3spb" to="jh3g:Ej4tEplrN$" resolve="fbme_scenes" />
    </node>
    <node concept="2sgV4H" id="Ej4tEplrVd" role="1l3spa">
      <ref role="1l3spb" to="66wk:68dTcycFmrj" resolve="fbme_library" />
    </node>
  </node>
</model>

