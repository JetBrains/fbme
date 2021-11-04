<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8c25bb6d-a5ff-4b85-a0e5-d5a94a24a533(org.fbme.debugger.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="ci82" ref="r:ddb2cc39-021f-4bf6-ab5a-b4bcff106c31(org.fbme.platform.build)" />
    <import index="jh3g" ref="r:96a6171e-d03e-4270-ab9e-fd0a743a5228(org.fbme.scenes.build)" />
    <import index="ci81" ref="r:ddb2cc39-021f-4bf6-ab5a-b4bcff106c32(org.fbme.language.build)" />
    <import index="66wk" ref="r:ca36cb90-c978-4e82-b9cd-9f3922cfc65f(org.fbme.library.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="9126048691955220717" name="jetbrains.mps.build.structure.BuildLayout_File" flags="ng" index="28jJK3">
        <child id="9126048691955220762" name="path" index="28jJRO" />
      </concept>
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
        <reference id="5253498789149547705" name="module" index="3bR37D" />
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
  <node concept="1l3spW" id="7ZpdjDjcHim">
    <property role="TrG5h" value="fbme_debugger" />
    <property role="2DA0ip" value="../" />
    <node concept="2kB4xC" id="7ZpdjDjcLBi" role="1l3spd">
      <property role="TrG5h" value="ide-version" />
      <node concept="aVJcg" id="7ZpdjDjcLBt" role="aVJcv">
        <node concept="NbPM2" id="7ZpdjDjcLBs" role="aVJcq">
          <node concept="3Mxwew" id="7ZpdjDjcLBx" role="3MwsjC">
            <property role="3MwjfP" value="0.1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="10PD9b" id="7ZpdjDjcHin" role="10PD9s" />
    <node concept="3b7kt6" id="7ZpdjDjcHio" role="10PD9s" />
    <node concept="398rNT" id="7ZpdjDjcHip" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="55IIr" id="7ZpdjDjcLAF" role="398pKh">
        <node concept="2Ry0Ak" id="7ZpdjDjcLAI" role="iGT6I">
          <property role="2Ry0Am" value=".." />
          <node concept="2Ry0Ak" id="7ZpdjDjcLAL" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="7ZpdjDjcLAT" role="2Ry0An">
              <property role="2Ry0Am" value="lib" />
              <node concept="2Ry0Ak" id="7ZpdjDjcLB0" role="2Ry0An">
                <property role="2Ry0Am" value="MPS 2021.2" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="7ZpdjDjcHiq" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" />
      <node concept="398BVA" id="7ZpdjDjcHir" role="2JcizS">
        <ref role="398BVh" node="7ZpdjDjcHip" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="Ej4tEplrU1" role="1l3spa">
      <ref role="1l3spb" to="ci82:68dTcycFmrj" resolve="fbme_platform" />
    </node>
    <node concept="2sgV4H" id="Ej4tEplrVd" role="1l3spa">
      <ref role="1l3spb" to="66wk:68dTcycFmrj" resolve="fbme_library" />
    </node>
    <node concept="2sgV4H" id="ApHj0p88Dx" role="1l3spa">
      <ref role="1l3spb" to="ci81:68dTcycFmrj" resolve="fbme_language" />
    </node>
    <node concept="2sgV4H" id="1b51meRUDDi" role="1l3spa">
      <ref role="1l3spb" to="jh3g:Ej4tEplrN$" resolve="fbme_scenes" />
    </node>
    <node concept="1l3spV" id="7ZpdjDjcHiM" role="1l3spN">
      <node concept="m$_wl" id="7ZpdjDjcHiQ" role="39821P">
        <ref role="m_rDy" node="7ZpdjDjcHi_" resolve="fbme.debugger" />
        <node concept="pUk6x" id="7ZpdjDjcHiR" role="pUk7w" />
        <node concept="398223" id="7ZpdjDjcLBC" role="39821P">
          <node concept="28jJK3" id="7ZpdjDjcLBP" role="39821P">
            <node concept="55IIr" id="7ZpdjDjcLBT" role="28jJRO">
              <node concept="2Ry0Ak" id="7ZpdjDjcLBZ" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="7ZpdjDjcLC4" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="7ZpdjDjcLC7" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="7ZpdjDjcLCd" role="2Ry0An">
                      <property role="2Ry0Am" value="debugger.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXV2w" role="39821P">
            <node concept="55IIr" id="48WAbeCXV2y" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXV4B" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXV4G" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXV4L" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXV4Q" role="2Ry0An">
                      <property role="2Ry0Am" value="animation-core-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="7ZpdjDjcLBD" role="Nbhlr">
            <node concept="3Mxwew" id="7ZpdjDjcLBN" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXVkD" role="39821P">
            <node concept="55IIr" id="48WAbeCXVkF" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXVmQ" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXVmV" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXVn0" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXVn5" role="2Ry0An">
                      <property role="2Ry0Am" value="animation-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXVpj" role="39821P">
            <node concept="55IIr" id="48WAbeCXVpl" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXVrA" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXVrF" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXVrK" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXVrP" role="2Ry0An">
                      <property role="2Ry0Am" value="desktop-jvm-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXVu9" role="39821P">
            <node concept="55IIr" id="48WAbeCXVua" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXVub" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXVuc" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXVud" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXVwA" role="2Ry0An">
                      <property role="2Ry0Am" value="foundation-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXVHd" role="39821P">
            <node concept="55IIr" id="48WAbeCXVHe" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXVHf" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXVHg" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXVHh" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXW8_" role="2Ry0An">
                      <property role="2Ry0Am" value="foundation-layout-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXVLD" role="39821P">
            <node concept="55IIr" id="48WAbeCXVLE" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXVLF" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXVLG" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXVLH" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXWav" role="2Ry0An">
                      <property role="2Ry0Am" value="kotlinx-coroutines-core-jvm-1.5.2.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXWej" role="39821P">
            <node concept="55IIr" id="48WAbeCXWek" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXWel" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXWem" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXWen" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXWh7" role="2Ry0An">
                      <property role="2Ry0Am" value="kotlinx-coroutines-swing-1.5.2.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXWnP" role="39821P">
            <node concept="55IIr" id="48WAbeCXWnQ" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXWnR" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXWnS" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXWnT" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXWqP" role="2Ry0An">
                      <property role="2Ry0Am" value="material-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXWsJ" role="39821P">
            <node concept="55IIr" id="48WAbeCXWsK" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXWsL" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXWsM" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXWsN" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXWvP" role="2Ry0An">
                      <property role="2Ry0Am" value="material-icons-core-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXWxJ" role="39821P">
            <node concept="55IIr" id="48WAbeCXWxK" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXWxL" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXWxM" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXWxN" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXW$V" role="2Ry0An">
                      <property role="2Ry0Am" value="material-ripple-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXWAP" role="39821P">
            <node concept="55IIr" id="48WAbeCXWAQ" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXWAR" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXWAS" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXWAT" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXWE7" role="2Ry0An">
                      <property role="2Ry0Am" value="runtime-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXWG1" role="39821P">
            <node concept="55IIr" id="48WAbeCXWG2" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXWG3" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXWG4" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXWG5" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXWJp" role="2Ry0An">
                      <property role="2Ry0Am" value="runtime-saveable-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXWLj" role="39821P">
            <node concept="55IIr" id="48WAbeCXWLk" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXWLl" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXWLm" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXWLn" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXWOL" role="2Ry0An">
                      <property role="2Ry0Am" value="skiko-jvm-0.5.9.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXWQF" role="39821P">
            <node concept="55IIr" id="48WAbeCXWQG" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXWQH" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXWQI" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXWQJ" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXWUf" role="2Ry0An">
                      <property role="2Ry0Am" value="skiko-jvm-runtime-macos-arm64-0.5.9.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXWW9" role="39821P">
            <node concept="55IIr" id="48WAbeCXWWa" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXWWb" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXWWc" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXWWd" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXWZN" role="2Ry0An">
                      <property role="2Ry0Am" value="ui-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXX1H" role="39821P">
            <node concept="55IIr" id="48WAbeCXX1I" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXX1J" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXX1K" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXX1L" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXX5t" role="2Ry0An">
                      <property role="2Ry0Am" value="ui-geometry-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXX7n" role="39821P">
            <node concept="55IIr" id="48WAbeCXX7o" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXX7p" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXX7q" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXX7r" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXXj2" role="2Ry0An">
                      <property role="2Ry0Am" value="ui-graphics-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXXd7" role="39821P">
            <node concept="55IIr" id="48WAbeCXXd8" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXXd9" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXXda" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXXdb" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXXkW" role="2Ry0An">
                      <property role="2Ry0Am" value="ui-text-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXXmQ" role="39821P">
            <node concept="55IIr" id="48WAbeCXXmR" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXXmS" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXXmT" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXXmU" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXXqS" role="2Ry0An">
                      <property role="2Ry0Am" value="ui-tooling-preview-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXXsM" role="39821P">
            <node concept="55IIr" id="48WAbeCXXsN" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXXsO" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXXsP" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXXsQ" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXXwU" role="2Ry0An">
                      <property role="2Ry0Am" value="ui-unit-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="48WAbeCXXyO" role="39821P">
            <node concept="55IIr" id="48WAbeCXXyP" role="28jJRO">
              <node concept="2Ry0Ak" id="48WAbeCXXyQ" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="48WAbeCXXyR" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="48WAbeCXXyS" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="48WAbeCXXB2" role="2Ry0An">
                      <property role="2Ry0Am" value="ui-util-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="7ZpdjDjcHi_" role="3989C9">
      <property role="m$_wk" value="fbme.debugger" />
      <node concept="3_J27D" id="7ZpdjDjcHiA" role="m$_yQ">
        <node concept="3Mxwew" id="7ZpdjDjcHiB" role="3MwsjC">
          <property role="3MwjfP" value="FBME - Debugger" />
        </node>
      </node>
      <node concept="3_J27D" id="7ZpdjDjcHiC" role="m$_w8">
        <node concept="3Mxwey" id="7ZpdjDjcLBz" role="3MwsjC">
          <ref role="3Mxwex" node="7ZpdjDjcLBi" resolve="ide-version" />
        </node>
      </node>
      <node concept="m$f5U" id="7ZpdjDjcHiE" role="m$_yh">
        <ref role="m$f5T" node="7ZpdjDjcHi$" resolve="FBME" />
      </node>
      <node concept="m$_yC" id="2ww0H4BOCwh" role="m$_yJ">
        <ref role="m$_y1" to="ci82:68dTcycFmsQ" resolve="fbme.platform" />
      </node>
      <node concept="m$_yC" id="6NYBTcTrtab" role="m$_yJ">
        <ref role="m$_y1" to="66wk:42vv4xsIHQK" resolve="fbme.library" />
      </node>
      <node concept="m$_yC" id="6NYBTcTrtdw" role="m$_yJ">
        <ref role="m$_y1" to="jh3g:42vv4xsIJ5y" resolve="fbme.scenes" />
      </node>
      <node concept="3_J27D" id="7ZpdjDjcHiG" role="m_cZH">
        <node concept="3Mxwew" id="7ZpdjDjcLB2" role="3MwsjC">
          <property role="3MwjfP" value="fbme.debugger" />
        </node>
      </node>
      <node concept="3_J27D" id="7ZpdjDjcLB4" role="3s6cr7">
        <node concept="3Mxwew" id="7ZpdjDjcLB8" role="3MwsjC">
          <property role="3MwjfP" value="Intelligent debugger for FBME platform" />
        </node>
      </node>
    </node>
    <node concept="2G$12M" id="7ZpdjDjcHi$" role="3989C9">
      <property role="TrG5h" value="fbme-debugger" />
      <node concept="1E1JtA" id="7ZpdjDjcHiz" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.fbme.debugger" />
        <property role="3LESm3" value="15002a50-4ccf-4200-98db-35093fe08692" />
        <node concept="55IIr" id="7ZpdjDjcHis" role="3LF7KH">
          <node concept="2Ry0Ak" id="7ZpdjDjcHiv" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="7ZpdjDjcHiw" role="2Ry0An">
              <property role="2Ry0Am" value="org.fbme.debugger" />
              <node concept="2Ry0Ak" id="7ZpdjDjcHix" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.debugger.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="7ZpdjDjcHiY" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="5FNCztzn89r" role="1HemKq">
            <node concept="55IIr" id="5FNCztzn89n" role="3LXTmr">
              <node concept="2Ry0Ak" id="5FNCztzn89o" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5FNCztzn89p" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5FNCztzn89q" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="5FNCztzn89s" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5FNCztzn89e" role="3bR37C">
          <node concept="3bR9La" id="5FNCztzn89f" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUjt" role="3bR37C">
          <node concept="3bR9La" id="5RHICbZmUju" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUjx" role="3bR37C">
          <node concept="3bR9La" id="5RHICbZmUjy" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUjL" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUjM" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUjG" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUjH" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUjI" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUjJ" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUjK" role="2Ry0An">
                      <property role="2Ry0Am" value="animation-core-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUjS" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUjT" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUjN" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUjO" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUjP" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUjQ" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUjR" role="2Ry0An">
                      <property role="2Ry0Am" value="animation-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUjZ" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUk0" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUjU" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUjV" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUjW" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUjX" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUjY" role="2Ry0An">
                      <property role="2Ry0Am" value="desktop-jvm-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUk6" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUk7" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUk1" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUk2" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUk3" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUk4" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUk5" role="2Ry0An">
                      <property role="2Ry0Am" value="foundation-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUkd" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUke" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUk8" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUk9" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUka" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUkb" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUkc" role="2Ry0An">
                      <property role="2Ry0Am" value="foundation-layout-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUkk" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUkl" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUkf" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUkg" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUkh" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUki" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUkj" role="2Ry0An">
                      <property role="2Ry0Am" value="material-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUkr" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUks" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUkm" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUkn" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUko" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUkp" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUkq" role="2Ry0An">
                      <property role="2Ry0Am" value="material-icons-core-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUky" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUkz" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUkt" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUku" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUkv" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUkw" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUkx" role="2Ry0An">
                      <property role="2Ry0Am" value="material-ripple-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUkD" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUkE" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUk$" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUk_" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUkA" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUkB" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUkC" role="2Ry0An">
                      <property role="2Ry0Am" value="runtime-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUkK" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUkL" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUkF" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUkG" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUkH" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUkI" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUkJ" role="2Ry0An">
                      <property role="2Ry0Am" value="runtime-saveable-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUkR" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUkS" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUkM" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUkN" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUkO" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUkP" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUkQ" role="2Ry0An">
                      <property role="2Ry0Am" value="ui-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUkY" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUkZ" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUkT" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUkU" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUkV" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUkW" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUkX" role="2Ry0An">
                      <property role="2Ry0Am" value="ui-geometry-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUl5" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUl6" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUl0" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUl1" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUl2" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUl3" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUl4" role="2Ry0An">
                      <property role="2Ry0Am" value="ui-graphics-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUlc" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUld" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUl7" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUl8" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUl9" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUla" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUlb" role="2Ry0An">
                      <property role="2Ry0Am" value="ui-text-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUlj" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUlk" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUle" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUlf" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUlg" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUlh" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUli" role="2Ry0An">
                      <property role="2Ry0Am" value="ui-tooling-preview-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUlq" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUlr" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUll" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUlm" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUln" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUlo" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUlp" role="2Ry0An">
                      <property role="2Ry0Am" value="ui-unit-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUlx" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUly" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUls" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUlt" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUlu" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUlv" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUlw" role="2Ry0An">
                      <property role="2Ry0Am" value="ui-util-desktop-1.0.0-beta5.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUlC" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUlD" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUlz" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUl$" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUl_" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUlA" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUlB" role="2Ry0An">
                      <property role="2Ry0Am" value="skiko-jvm-0.5.9.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUlJ" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUlK" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUlE" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUlF" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUlG" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUlH" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUlI" role="2Ry0An">
                      <property role="2Ry0Am" value="skiko-jvm-runtime-macos-arm64-0.5.9.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUlQ" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUlR" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUlL" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUlM" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUlN" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUlO" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUlP" role="2Ry0An">
                      <property role="2Ry0Am" value="kotlinx-coroutines-core-jvm-1.5.2.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="5RHICbZmUlX" role="3bR37C">
          <node concept="1BurEX" id="5RHICbZmUlY" role="1SiIV1">
            <node concept="55IIr" id="5RHICbZmUlS" role="1BurEY">
              <node concept="2Ry0Ak" id="5RHICbZmUlT" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="5RHICbZmUlU" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="5RHICbZmUlV" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="5RHICbZmUlW" role="2Ry0An">
                      <property role="2Ry0Am" value="kotlinx-coroutines-swing-1.5.2.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="78JiGmJJGix" role="3bR37C">
          <node concept="1BurEX" id="78JiGmJJGiy" role="1SiIV1">
            <node concept="55IIr" id="78JiGmJJGis" role="1BurEY">
              <node concept="2Ry0Ak" id="78JiGmJJGit" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="78JiGmJJGiu" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.debugger" />
                  <node concept="2Ry0Ak" id="78JiGmJJGiv" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="78JiGmJJGiw" role="2Ry0An">
                      <property role="2Ry0Am" value="debugger.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3_hdbcJ6bki" role="3bR37C">
          <node concept="3bR9La" id="3_hdbcJ6bkj" role="1SiIV1">
            <ref role="3bR37D" to="ci82:42vv4xsIHLX" resolve="org.fbme.ide.platform" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

