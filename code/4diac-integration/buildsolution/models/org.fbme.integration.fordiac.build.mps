<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d3cdc78f-1e25-43ab-bb29-d75cffece3a5(org.fbme.integration.fordiac.build)">
  <persistence version="9" />
  <languages>
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="ci82" ref="r:ddb2cc39-021f-4bf6-ab5a-b4bcff106c31(org.fbme.platform.build)" />
    <import index="66wk" ref="r:ca36cb90-c978-4e82-b9cd-9f3922cfc65f(org.fbme.library.build)" />
    <import index="ci81" ref="r:ddb2cc39-021f-4bf6-ab5a-b4bcff106c32(org.fbme.language.build)" />
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
      <concept id="1251221292903960366" name="jetbrains.mps.build.structure.BuildLayout_JarManifest" flags="ng" index="3FFNgc" />
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
      <concept id="978600701690054692" name="jetbrains.mps.build.mps.structure.GeneratorInternal_String" flags="ng" index="1cIVw3">
        <property id="978600701690054695" name="path" index="1cIVw0" />
      </concept>
      <concept id="7655580649838764660" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleXml" flags="ng" index="1kK7hY">
        <reference id="7655580649838764661" name="module" index="1kK7hZ" />
        <child id="7477562766051177430" name="sourceDescriptorFile" index="2JVP1x" />
        <child id="506537499308757750" name="sourcesJarLocation" index="3SGgvt" />
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
    <property role="TrG5h" value="fbme_fordiac" />
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
          <node concept="2Ry0Ak" id="Ej4tEplvB9" role="2Ry0An">
            <property role="2Ry0Am" value=".." />
            <node concept="2Ry0Ak" id="Ej4tEplvBc" role="2Ry0An">
              <property role="2Ry0Am" value="lib" />
              <node concept="2Ry0Ak" id="Ej4tEplvBd" role="2Ry0An">
                <property role="2Ry0Am" value="MPS 2020.2" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1l3spV" id="68dTcycFms2" role="1l3spN">
      <node concept="m$_wl" id="6YXqqolsxwi" role="39821P">
        <ref role="m_rDy" node="42vv4xsJqzV" resolve="fbme.integration.fordiac" />
        <node concept="pUk6w" id="6YXqqolsxwj" role="pUk7w" />
        <node concept="398223" id="6YXqqolsxwk" role="39821P">
          <node concept="L2wRC" id="6YXqqolsxwl" role="39821P">
            <ref role="L2wRA" node="42vv4xsJqS4" resolve="org.fbme.ide.integration.fordiac" />
          </node>
          <node concept="3981dx" id="6YXqqolsxwm" role="39821P">
            <node concept="3_J27D" id="6YXqqolsxwn" role="Nbhlr">
              <node concept="3Mxwew" id="6YXqqolsxwo" role="3MwsjC">
                <property role="3MwjfP" value="stdlib-stubs.jar" />
              </node>
            </node>
            <node concept="398223" id="6YXqqolsxwp" role="39821P">
              <node concept="3_J27D" id="6YXqqolsxwq" role="Nbhlr">
                <node concept="3Mxwew" id="6YXqqolsxwr" role="3MwsjC">
                  <property role="3MwjfP" value="META-INF" />
                </node>
              </node>
              <node concept="1kK7hY" id="6YXqqolsxws" role="39821P">
                <ref role="1kK7hZ" node="42vv4xsJqQi" resolve="IEC-61499" />
                <node concept="1cIVw3" id="6YXqqolsxwt" role="3SGgvt">
                  <property role="1cIVw0" value="." />
                </node>
                <node concept="1cIVw3" id="6YXqqolsxwu" role="2JVP1x">
                  <property role="1cIVw0" value="stdlib.msd" />
                </node>
              </node>
              <node concept="3FFNgc" id="6YXqqolsxwv" role="39821P" />
            </node>
            <node concept="398223" id="6YXqqolsxww" role="39821P">
              <node concept="3_J27D" id="6YXqqolsxwx" role="Nbhlr">
                <node concept="3Mxwew" id="6YXqqolsxwy" role="3MwsjC">
                  <property role="3MwjfP" value="module" />
                </node>
              </node>
              <node concept="2HvfSZ" id="6YXqqolsxwz" role="39821P">
                <node concept="55IIr" id="42vv4xsJMDf" role="2HvfZ0">
                  <node concept="2Ry0Ak" id="42vv4xsJMDg" role="iGT6I">
                    <property role="2Ry0Am" value="solutions" />
                    <node concept="2Ry0Ak" id="42vv4xsJMDh" role="2Ry0An">
                      <property role="2Ry0Am" value="stdlib" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3_J27D" id="6YXqqolsxw$" role="Nbhlr">
            <node concept="3Mxwew" id="6YXqqolsxw_" role="3MwsjC">
              <property role="3MwjfP" value="languages" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="m$_wf" id="42vv4xsJqzV" role="3989C9">
      <property role="m$_wk" value="fbme.integration.fordiac" />
      <node concept="3_J27D" id="42vv4xsJqzX" role="m$_yQ">
        <node concept="3Mxwew" id="42vv4xsJqD7" role="3MwsjC">
          <property role="3MwjfP" value="FBME - 4DIAC Integration" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsJqzZ" role="m_cZH">
        <node concept="3Mxwew" id="42vv4xsJqDL" role="3MwsjC">
          <property role="3MwjfP" value="fbme.integration.4diac" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsJq$1" role="m$_w8">
        <node concept="3Mxwey" id="42vv4xsJqFH" role="3MwsjC">
          <ref role="3Mxwex" node="68dTcycFmrY" resolve="ide-version" />
        </node>
      </node>
      <node concept="3_J27D" id="42vv4xsJqDV" role="3s6cr7">
        <node concept="3Mxwew" id="42vv4xsJqDX" role="3MwsjC">
          <property role="3MwjfP" value="4DIAC runtime library integration" />
        </node>
      </node>
      <node concept="m$f5U" id="42vv4xsJqQ8" role="m$_yh">
        <ref role="m$f5T" node="42vv4xsJqKs" resolve="fbme-4diac" />
      </node>
      <node concept="m$_yC" id="42vv4xsJtI4" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="2r29JVYdLfO" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:5CFKsRWV4Nl" resolve="jetbrains.mps.execution.languages" />
      </node>
      <node concept="m$_yC" id="Ej4tEplvBw" role="m$_yJ">
        <ref role="m$_y1" to="ci82:68dTcycFmsQ" resolve="fbme.platform" />
      </node>
    </node>
    <node concept="2G$12M" id="42vv4xsJqKs" role="3989C9">
      <property role="TrG5h" value="fbme-4diac" />
      <node concept="1E1JtA" id="42vv4xsJqQi" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="IEC-61499" />
        <property role="3LESm3" value="b8a7e14f-52ea-4ee2-b17e-26c27da8084c" />
        <property role="2GAjPV" value="true" />
        <node concept="55IIr" id="42vv4xsJqQj" role="3LF7KH">
          <node concept="2Ry0Ak" id="3f0ZsV2QQxu" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="3f0ZsV2QQxw" role="2Ry0An">
              <property role="2Ry0Am" value="stdlib" />
              <node concept="2Ry0Ak" id="3f0ZsV2QQxx" role="2Ry0An">
                <property role="2Ry0Am" value="stdlib.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="6zYxdPXe68I" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="3f0ZsV2Yqu7" role="1HemKq">
            <node concept="55IIr" id="3f0ZsV2Yqu1" role="3LXTmr">
              <node concept="2Ry0Ak" id="3f0ZsV2Yqu4" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3f0ZsV2Yqu5" role="2Ry0An">
                  <property role="2Ry0Am" value="stdlib" />
                  <node concept="2Ry0Ak" id="3f0ZsV2Yqu6" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3f0ZsV2Yqu8" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="42vv4xsJqS4" role="2G$12L">
        <property role="TrG5h" value="org.fbme.ide.integration.fordiac" />
        <property role="3LESm3" value="493a4cca-9505-4b07-b547-5711c9dc63e8" />
        <property role="BnDLt" value="true" />
        <node concept="3rtmxn" id="mO0SGikAQ_" role="3bR31x">
          <node concept="3LXTmp" id="mO0SGikAQA" role="3rtmxm">
            <node concept="3LWZYx" id="mO0SGikAQF" role="3LXTna">
              <property role="3LWZYw" value="startup.properties" />
            </node>
            <node concept="55IIr" id="3f0ZsV2YqAo" role="3LXTmr">
              <node concept="2Ry0Ak" id="3f0ZsV2YqAr" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3f0ZsV2YqAs" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.ide.integration.fordiac" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="55IIr" id="42vv4xsJqS7" role="3LF7KH">
          <node concept="2Ry0Ak" id="3f0ZsV2QQzd" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="3f0ZsV2QQze" role="2Ry0An">
              <property role="2Ry0Am" value="org.fbme.ide.integration.fordiac" />
              <node concept="2Ry0Ak" id="3f0ZsV2QQzf" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.ide.integration.fordiac.msd" />
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
          <node concept="3LXTmp" id="Ej4tEplvBM" role="1HemKq">
            <node concept="55IIr" id="Ej4tEplvBI" role="3LXTmr">
              <node concept="2Ry0Ak" id="Ej4tEplvBJ" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="Ej4tEplvBK" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.ide.integration.fordiac" />
                  <node concept="2Ry0Ak" id="Ej4tEplvBL" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="Ej4tEplvBN" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
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
        <node concept="1SiIV0" id="Ej4tEplvBE" role="3bR37C">
          <node concept="3bR9La" id="Ej4tEplvBF" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ci82:42vv4xsIHLX" resolve="org.fbme.ide.platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="ApHj0p4ZOu" role="3bR37C">
          <node concept="3bR9La" id="ApHj0p4ZOv" role="1SiIV1">
            <ref role="3bR37D" to="ci81:42vv4xsIHDZ" resolve="org.fbme.ide.st.lang" />
          </node>
        </node>
        <node concept="1SiIV0" id="ApHj0p4ZOw" role="3bR37C">
          <node concept="3bR9La" id="ApHj0p4ZOx" role="1SiIV1">
            <ref role="3bR37D" to="ci81:68dTcycFmt8" resolve="org.fbme.ide.iec61499.lang" />
          </node>
        </node>
        <node concept="1SiIV0" id="407BnQQqdnq" role="3bR37C">
          <node concept="3bR9La" id="407BnQQqdnr" role="1SiIV1">
            <ref role="3bR37D" to="ci81:1JYTWWzvsHw" resolve="org.fbme.ide.iec61499.adapter" />
          </node>
        </node>
        <node concept="1SiIV0" id="407BnQQqdns" role="3bR37C">
          <node concept="3bR9La" id="407BnQQqdnt" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
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
    <node concept="2sgV4H" id="Ej4tEpnai2" role="1l3spa">
      <ref role="1l3spb" to="66wk:68dTcycFmrj" resolve="fbme_library" />
    </node>
    <node concept="2sgV4H" id="ApHj0p4ZOh" role="1l3spa">
      <ref role="1l3spb" to="ci81:68dTcycFmrj" resolve="fbme_language" />
    </node>
    <node concept="2sgV4H" id="Ej4tEplvBf" role="1l3spa">
      <ref role="1l3spb" to="ci82:68dTcycFmrj" resolve="fbme_platform" />
    </node>
  </node>
</model>

