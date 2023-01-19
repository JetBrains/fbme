<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c951fe04-0ad9-4d6c-9dc3-bae009e3b17b(org.fbme.integration.nxt.build)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="ci81" ref="r:ddb2cc39-021f-4bf6-ab5a-b4bcff106c32(org.fbme.language.build)" />
    <import index="ci82" ref="r:ddb2cc39-021f-4bf6-ab5a-b4bcff106c31(org.fbme.platform.build)" />
    <import index="bco3" ref="r:4904ab70-42df-49dd-8218-a04fff347a01(org.fbme.richediting.build)" />
    <import index="kvgc" ref="r:033fa9ec-1120-40c6-8124-b58f4474b999(org.fbme.ide.build.plugins)" />
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
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
      </concept>
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC">
        <reference id="1265949165890536425" name="module" index="L2wRA" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
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
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
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
    <property role="TrG5h" value="fbme_nxt" />
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
        <node concept="2Ry0Ak" id="6ZWeIInkr0R" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="Ej4tEplx2t" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="Ej4tEplx2w" role="2Ry0An">
              <property role="2Ry0Am" value="lib" />
              <node concept="2Ry0Ak" id="Ej4tEplx2x" role="2Ry0An">
                <property role="2Ry0Am" value="MPS 2021.3" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="68dTcycFms2" role="1l3spN">
      <node concept="L2wRC" id="ApHj0p3W97" role="39821P">
        <ref role="L2wRA" node="42vv4xsIHLX" resolve="org.fbme.integration.nxt" />
      </node>
    </node>
    <node concept="2G$12M" id="68dTcycFmt7" role="3989C9">
      <property role="TrG5h" value="fbme-platform" />
      <node concept="1E1JtA" id="42vv4xsIHLX" role="2G$12L">
        <property role="TrG5h" value="org.fbme.integration.nxt" />
        <property role="3LESm3" value="a4712a21-b0bb-4e62-8857-e1c5ecf8c0ea" />
        <property role="BnDLt" value="true" />
        <node concept="3rtmxn" id="qjx41CDwI6" role="3bR31x">
          <node concept="3LXTmp" id="qjx41CDwI8" role="3rtmxm">
            <node concept="55IIr" id="qjx41CDwIa" role="3LXTmr">
              <node concept="2Ry0Ak" id="qjx41CDwIv" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5rownaaWTr8" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.integration.nxt" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="qjx41CDwIA" role="3LXTna">
              <property role="3qWCbO" value="startup.properties" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="6wzd0wHWh3D" role="3bR31x">
          <node concept="3LXTmp" id="6wzd0wHWh3E" role="3rtmxm">
            <node concept="55IIr" id="6wzd0wHWh3F" role="3LXTmr">
              <node concept="2Ry0Ak" id="6wzd0wHWh3G" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="6wzd0wHWh3H" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.integration.nxt" />
                  <node concept="2Ry0Ak" id="6wzd0wHWh43" role="2Ry0An">
                    <property role="2Ry0Am" value="icons" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6wzd0wHWh3I" role="3LXTna">
              <property role="3qWCbO" value="**/*.svg" />
            </node>
          </node>
        </node>
        <node concept="55IIr" id="42vv4xsIHM0" role="3LF7KH">
          <node concept="2Ry0Ak" id="3f0ZsV2QMej" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="3f0ZsV2QMek" role="2Ry0An">
              <property role="2Ry0Am" value="org.fbme.integration.nxt" />
              <node concept="2Ry0Ak" id="2mxBo27MIO5" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.integration.nxt.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="6zYxdPXe68d" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="2mxBo27MIOb" role="1HemKq">
            <node concept="55IIr" id="2mxBo27MIO7" role="3LXTmr">
              <node concept="2Ry0Ak" id="2mxBo27MIO8" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="2mxBo27MIO9" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.integration.nxt" />
                  <node concept="2Ry0Ak" id="2mxBo27MIOa" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="2mxBo27MIOc" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5rownaaWE7I" role="3bR37C">
          <node concept="3bR9La" id="5rownaaWE7J" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5rownaaWE7K" role="3bR37C">
          <node concept="3bR9La" id="5rownaaWE7L" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="5rownaaWE8L" role="3bR37C">
          <node concept="3bR9La" id="5rownaaWE8M" role="1SiIV1">
            <ref role="3bR37D" to="ci82:42vv4xsIHLX" resolve="org.fbme.ide.platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="6wb8cxJeslY" role="3bR37C">
          <node concept="3bR9La" id="6wb8cxJeslZ" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
          </node>
        </node>
        <node concept="1SiIV0" id="6wb8cxJesm0" role="3bR37C">
          <node concept="3bR9La" id="6wb8cxJesm1" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="X8OuacFwMf" role="3bR37C">
          <node concept="3bR9La" id="X8OuacFwMg" role="1SiIV1">
            <ref role="3bR37D" to="bco3:42vv4xsIIT7" resolve="org.fbme.ide.richediting" />
          </node>
        </node>
        <node concept="1SiIV0" id="1Hry6ntOK82" role="3bR37C">
          <node concept="3bR9La" id="1Hry6ntOK83" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
          </node>
        </node>
        <node concept="1SiIV0" id="1Hry6ntOK84" role="3bR37C">
          <node concept="3bR9La" id="1Hry6ntOK85" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="1Hry6ntOK86" role="3bR37C">
          <node concept="3bR9La" id="1Hry6ntOK87" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
          </node>
        </node>
        <node concept="1SiIV0" id="1Hry6ntOK88" role="3bR37C">
          <node concept="3bR9La" id="1Hry6ntOK89" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="1Hry6ntOK8a" role="3bR37C">
          <node concept="3bR9La" id="1Hry6ntOK8b" role="1SiIV1">
            <ref role="3bR37D" to="ci81:68dTcycFmt8" resolve="org.fbme.ide.iec61499.lang" />
          </node>
        </node>
        <node concept="1SiIV0" id="1Hry6ntOK8c" role="3bR37C">
          <node concept="3bR9La" id="1Hry6ntOK8d" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7KapL9OABnm" resolve="jetbrains.mps.ide.ui" />
          </node>
        </node>
        <node concept="1SiIV0" id="1wt__nLb4yy" role="3bR37C">
          <node concept="3bR9La" id="1wt__nLb4yz" role="1SiIV1">
            <ref role="3bR37D" to="kvgc:177eUH8B7m3" resolve="org.fbme.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="6AO1fiEOM8N" role="3bR37C">
          <node concept="3bR9La" id="6AO1fiEOM8O" role="1SiIV1">
            <ref role="3bR37D" to="kvgc:6AO1fiEOKn8" resolve="org.fbme.scenes.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="7rWf3U0O39C" role="3bR37C">
          <node concept="3bR9La" id="7rWf3U0O39D" role="1SiIV1">
            <ref role="3bR37D" to="ci81:1JYTWWzvsHw" resolve="org.fbme.ide.iec61499.adapter" />
          </node>
        </node>
        <node concept="1SiIV0" id="7rWf3U1QKYv" role="3bR37C">
          <node concept="3bR9La" id="7rWf3U1QKYw" role="1SiIV1">
            <ref role="3bR37D" to="kvgc:6AO1fiESjIi" resolve="org.fbme.richediting.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="7rWf3U1QKYx" role="3bR37C">
          <node concept="3bR9La" id="7rWf3U1QKYy" role="1SiIV1">
            <ref role="3bR37D" to="kvgc:DMI5IaKFsE" resolve="org.fbme.platform.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="7rWf3U1QKYz" role="3bR37C">
          <node concept="3bR9La" id="7rWf3U1QKY$" role="1SiIV1">
            <ref role="3bR37D" to="kvgc:2Ine_yKUjxR" resolve="org.fbme.integration.nxt.lib" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="ApHj0p0DQy" role="1l3spa">
      <ref role="1l3spb" to="ci81:68dTcycFmrj" resolve="fbme_language" />
    </node>
    <node concept="2sgV4H" id="5rownaaWE8_" role="1l3spa">
      <ref role="1l3spb" to="ci82:68dTcycFmrj" resolve="fbme_platform" />
    </node>
    <node concept="2sgV4H" id="X8OuacFwLx" role="1l3spa">
      <ref role="1l3spb" to="bco3:68dTcycFmrj" resolve="fbme_richediting" />
    </node>
    <node concept="2sgV4H" id="1wt__nLadNG" role="1l3spa">
      <ref role="1l3spb" to="kvgc:177eUH8B7jw" resolve="fbme_source_plugins" />
      <node concept="55IIr" id="gklq2k_p1q" role="2JcizS">
        <node concept="2Ry0Ak" id="gklq2k_p1_" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="gklq2k_p1C" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="gklq2k_p1H" role="2Ry0An">
              <property role="2Ry0Am" value="build" />
              <node concept="2Ry0Ak" id="gklq2k_p1M" role="2Ry0An">
                <property role="2Ry0Am" value="src-plugins" />
                <node concept="2Ry0Ak" id="gklq2k_p1P" role="2Ry0An">
                  <property role="2Ry0Am" value="" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="Ej4tEpmvVf" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="Ej4tEpmvVh" role="2JcizS">
        <ref role="398BVh" node="68dTcycFmrU" resolve="mps_home" />
      </node>
    </node>
  </node>
</model>

