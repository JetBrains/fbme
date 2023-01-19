<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ddb2cc39-021f-4bf6-ab5a-b4bcff106c32(org.fbme.language.build)">
  <persistence version="9" />
  <languages>
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
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
      <concept id="5507251971038816436" name="jetbrains.mps.build.mps.structure.BuildMps_Generator" flags="ng" index="1yeLz9" />
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
    <property role="TrG5h" value="fbme_language" />
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
      <node concept="L2wRC" id="ApHj0p3Lgg" role="39821P">
        <ref role="L2wRA" node="1JYTWWzvsHw" resolve="org.fbme.ide.iec61499.adapter" />
      </node>
      <node concept="L2wRC" id="ApHj0p3Lgj" role="39821P">
        <ref role="L2wRA" node="68dTcycFmt8" resolve="org.fbme.ide.iec61499.lang" />
      </node>
      <node concept="L2wRC" id="ApHj0p3Lgm" role="39821P">
        <ref role="L2wRA" node="42vv4xsIHDZ" resolve="org.fbme.ide.st.lang" />
      </node>
      <node concept="L2wRC" id="ApHj0p3Lgq" role="39821P">
        <ref role="L2wRA" node="42vv4xsIHG4" resolve="org.fbme.ide.meta.editor" />
      </node>
      <node concept="L2wRC" id="ApHj0p3Lgv" role="39821P">
        <ref role="L2wRA" node="1a1larLevcL" resolve="org.fbme.ide.util.lang" />
      </node>
      <node concept="L2wRC" id="723cCDWLyQm" role="39821P">
        <ref role="L2wRA" node="723cCDWLyJu" resolve="org.fbme.ide.attributes" />
      </node>
    </node>
    <node concept="2G$12M" id="68dTcycFmt7" role="3989C9">
      <property role="TrG5h" value="fbme-language" />
      <node concept="1E1JtA" id="1JYTWWzvsHw" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.fbme.ide.iec61499.adapter" />
        <property role="3LESm3" value="5aff85f5-c1e8-49b6-a1f1-66d79702cceb" />
        <node concept="55IIr" id="1JYTWWzvsHz" role="3LF7KH">
          <node concept="2Ry0Ak" id="3f0ZsV2QM6Q" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="3f0ZsV2QM6R" role="2Ry0An">
              <property role="2Ry0Am" value="org.fbme.ide.iec61499.adapter" />
              <node concept="2Ry0Ak" id="3f0ZsV2QM6S" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.ide.iec61499.adapter.msd" />
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
        <node concept="1SiIV0" id="1JYTWWzvsLB" role="3bR37C">
          <node concept="3bR9La" id="1JYTWWzvsLC" role="1SiIV1">
            <ref role="3bR37D" node="68dTcycFmt8" resolve="org.fbme.ide.iec61499.lang" />
          </node>
        </node>
        <node concept="3rtmxn" id="3ZIdPazvNDE" role="3bR31x">
          <node concept="3LXTmp" id="3ZIdPazvNDG" role="3rtmxm">
            <node concept="3LWZYx" id="3ZIdPazvNE6" role="3LXTna">
              <property role="3LWZYw" value="startup.properties" />
            </node>
            <node concept="55IIr" id="3ZIdPazvNDI" role="3LXTmr">
              <node concept="2Ry0Ak" id="3ZIdPazvNEm" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3ZIdPazvNEw" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.ide.iec61499.adapter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="6zYxdPXe67p" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="40XHEQlWSkS" role="1HemKq">
            <node concept="3qWCbU" id="40XHEQlWSkT" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
            <node concept="55IIr" id="3f0ZsV2YqrK" role="3LXTmr">
              <node concept="2Ry0Ak" id="3f0ZsV2YqrN" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3f0ZsV2YqrO" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.ide.iec61499.adapter" />
                  <node concept="2Ry0Ak" id="3f0ZsV2Yqs0" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1lhPVEAcJEd" role="3bR37C">
          <node concept="3bR9La" id="1lhPVEAcJEe" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
        <node concept="1SiIV0" id="1lhPVEAcJEf" role="3bR37C">
          <node concept="3bR9La" id="1lhPVEAcJEg" role="1SiIV1">
            <ref role="3bR37D" node="1a1larLevcL" resolve="org.fbme.ide.util.lang" />
          </node>
        </node>
        <node concept="1SiIV0" id="723cCDWSRrG" role="3bR37C">
          <node concept="3bR9La" id="723cCDWSRrH" role="1SiIV1">
            <ref role="3bR37D" node="723cCDWLyJu" resolve="org.fbme.ide.attributes" />
          </node>
        </node>
        <node concept="1SiIV0" id="1wt__nLadNQ" role="3bR37C">
          <node concept="3bR9La" id="1wt__nLadNR" role="1SiIV1">
            <ref role="3bR37D" to="kvgc:177eUH8B7m3" resolve="org.fbme.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="DMI5IaKG23" role="3bR37C">
          <node concept="3bR9La" id="DMI5IaKG24" role="1SiIV1">
            <ref role="3bR37D" to="kvgc:DMI5IaKFsE" resolve="org.fbme.platform.lib" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="68dTcycFmt8" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.fbme.ide.iec61499.lang" />
        <property role="3LESm3" value="6594f340-4d73-4027-b7d3-c6ca2e70a53b" />
        <node concept="55IIr" id="68dTcycFmt9" role="3LF7KH">
          <node concept="2Ry0Ak" id="3f0ZsV2QM8l" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="3f0ZsV2QM8m" role="2Ry0An">
              <property role="2Ry0Am" value="org.fbme.ide.iec61499.lang" />
              <node concept="2Ry0Ak" id="3f0ZsV2QM8n" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.ide.iec61499.lang.mpl" />
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
        <node concept="1SiIV0" id="68dTcycFmtl" role="3bR37C">
          <node concept="3bR9La" id="68dTcycFmtm" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:7Kfy9QB6LfQ" resolve="jetbrains.mps.kernel" />
          </node>
        </node>
        <node concept="1yeLz9" id="68dTcycFmtp" role="1TViLv">
          <property role="TrG5h" value="org.fbme.ide.iec61499.lang#4280485643801969762" />
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
            <node concept="3LXTmp" id="40XHEQlWSl5" role="1HemKq">
              <node concept="55IIr" id="40XHEQlWSl0" role="3LXTmr">
                <node concept="2Ry0Ak" id="40XHEQlWSl1" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="40XHEQlWSl2" role="2Ry0An">
                    <property role="2Ry0Am" value="org.fbme.ide.iec61499.lang" />
                    <node concept="2Ry0Ak" id="40XHEQlWSl3" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="40XHEQlWSl4" role="2Ry0An">
                        <property role="2Ry0Am" value="template" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="40XHEQlWSl6" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
          <node concept="1SiIV0" id="5cUQ_BhKDbM" role="3bR37C">
            <node concept="3bR9La" id="5cUQ_BhKDbN" role="1SiIV1">
              <ref role="3bR37D" to="ffeo:rD7wKO5Iy" resolve="MPS.TextGen" />
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
            <ref role="3bR37D" node="42vv4xsIHDZ" resolve="org.fbme.ide.st.lang" />
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHHS" role="3bR37C">
          <node concept="1Busua" id="42vv4xsIHHT" role="1SiIV1">
            <ref role="1Busuk" node="42vv4xsIHDZ" resolve="org.fbme.ide.st.lang" />
          </node>
        </node>
        <node concept="1SiIV0" id="1GFn66qEgIo" role="3bR37C">
          <node concept="3bR9La" id="1GFn66qEgIp" role="1SiIV1">
            <ref role="3bR37D" node="1JYTWWzvsHw" resolve="org.fbme.ide.iec61499.adapter" />
          </node>
        </node>
        <node concept="1BupzO" id="3f0ZsV2YqsF" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="Ej4tEpmLt2" role="1HemKq">
            <node concept="55IIr" id="Ej4tEpmLsY" role="3LXTmr">
              <node concept="2Ry0Ak" id="Ej4tEpmLsZ" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="Ej4tEpmLt0" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.ide.iec61499.lang" />
                  <node concept="2Ry0Ak" id="Ej4tEpmLt1" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="Ej4tEpmLt3" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="6wzd0wHWh45" role="3bR31x">
          <node concept="3LXTmp" id="6wzd0wHWh46" role="3rtmxm">
            <node concept="55IIr" id="6wzd0wHWh47" role="3LXTmr">
              <node concept="2Ry0Ak" id="6wzd0wHWh48" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="6wzd0wHWh49" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.ide.iec61499.lang" />
                  <node concept="2Ry0Ak" id="6wzd0wHWh4v" role="2Ry0An">
                    <property role="2Ry0Am" value="icons" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6wzd0wHWh4a" role="3LXTna">
              <property role="3qWCbO" value="**/*.svg" />
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="1wt__nLadO1" role="3bR37C">
          <node concept="3bR9La" id="1wt__nLadO2" role="1SiIV1">
            <ref role="3bR37D" to="kvgc:177eUH8B7m3" resolve="org.fbme.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="DMI5IaKG29" role="3bR37C">
          <node concept="3bR9La" id="DMI5IaKG2a" role="1SiIV1">
            <ref role="3bR37D" to="kvgc:DMI5IaKFsE" resolve="org.fbme.platform.lib" />
          </node>
        </node>
        <node concept="1SiIV0" id="5WcZ9cNMFCD" role="3bR37C">
          <node concept="3bR9La" id="5WcZ9cNMFCE" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1d41uYMTVPB" resolve="jetbrains.mps.lang.scopes.runtime" />
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="42vv4xsIHDZ" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.fbme.ide.st.lang" />
        <property role="3LESm3" value="2046780a-246e-4cb0-90fe-56a2b7d92c54" />
        <node concept="1yeLz9" id="42vv4xsIHF1" role="1TViLv">
          <property role="TrG5h" value="org.fbme.ide.st.lang#01" />
          <property role="3LESm3" value="9b4b978d-2989-49ae-b210-968bb0aee375" />
          <node concept="1BupzO" id="6zYxdPXe67R" role="3bR31x">
            <property role="3ZfqAx" value="generator/template" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="40XHEQlWSli" role="1HemKq">
              <node concept="55IIr" id="40XHEQlWSld" role="3LXTmr">
                <node concept="2Ry0Ak" id="40XHEQlWSle" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="40XHEQlWSlf" role="2Ry0An">
                    <property role="2Ry0Am" value="org.fbme.ide.st.lang" />
                    <node concept="2Ry0Ak" id="40XHEQlWSlg" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="40XHEQlWSlh" role="2Ry0An">
                        <property role="2Ry0Am" value="template" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="40XHEQlWSlj" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="42vv4xsIHHU" role="3bR37C">
          <node concept="3bR9La" id="42vv4xsIHHV" role="1SiIV1">
            <ref role="3bR37D" node="42vv4xsIHDZ" resolve="org.fbme.ide.st.lang" />
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
          <node concept="3LXTmp" id="3f0ZsV2YqsX" role="1HemKq">
            <node concept="55IIr" id="3f0ZsV2YqsR" role="3LXTmr">
              <node concept="2Ry0Ak" id="3f0ZsV2YqsU" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="3f0ZsV2YqsV" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.ide.st.lang" />
                  <node concept="2Ry0Ak" id="3f0ZsV2YqsW" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3f0ZsV2YqsY" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="55IIr" id="3f0ZsV2QM9U" role="3LF7KH">
          <node concept="2Ry0Ak" id="3f0ZsV2QM9X" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="3f0ZsV2QM9Y" role="2Ry0An">
              <property role="2Ry0Am" value="org.fbme.ide.st.lang" />
              <node concept="2Ry0Ak" id="3f0ZsV2QMak" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.ide.st.lang.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="6wzd0wHWhwX" role="3bR31x">
          <node concept="3LXTmp" id="6wzd0wHWhwY" role="3rtmxm">
            <node concept="55IIr" id="6wzd0wHWhwZ" role="3LXTmr">
              <node concept="2Ry0Ak" id="6wzd0wHWhx0" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="6wzd0wHWhx1" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.ide.st.lang" />
                  <node concept="2Ry0Ak" id="6wzd0wHWhx2" role="2Ry0An">
                    <property role="2Ry0Am" value="icons" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="6wzd0wHWhx3" role="3LXTna">
              <property role="3qWCbO" value="**/*.svg" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="42vv4xsIHG4" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.fbme.ide.meta.editor" />
        <property role="3LESm3" value="8dfbe92d-d233-4cc1-8ddb-a2863fd64843" />
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
          <property role="TrG5h" value="org.fbme.ide.meta.editor#3165118101539151995" />
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
            <node concept="3LXTmp" id="40XHEQlWSlv" role="1HemKq">
              <node concept="55IIr" id="40XHEQlWSlq" role="3LXTmr">
                <node concept="2Ry0Ak" id="40XHEQlWSlr" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="40XHEQlWSls" role="2Ry0An">
                    <property role="2Ry0Am" value="org.fbme.ide.meta.editor" />
                    <node concept="2Ry0Ak" id="40XHEQlWSlt" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="40XHEQlWSlu" role="2Ry0An">
                        <property role="2Ry0Am" value="template" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="40XHEQlWSlw" role="3LXTna">
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
          <node concept="3LXTmp" id="3f0ZsV2Yqte" role="1HemKq">
            <node concept="55IIr" id="3f0ZsV2Yqt8" role="3LXTmr">
              <node concept="2Ry0Ak" id="3f0ZsV2Yqtb" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="3f0ZsV2Yqtc" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.ide.meta.editor" />
                  <node concept="2Ry0Ak" id="3f0ZsV2Yqtd" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3f0ZsV2Yqtf" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="55IIr" id="3f0ZsV2QMaF" role="3LF7KH">
          <node concept="2Ry0Ak" id="3f0ZsV2QMaI" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="3f0ZsV2QMaJ" role="2Ry0An">
              <property role="2Ry0Am" value="org.fbme.ide.meta.editor" />
              <node concept="2Ry0Ak" id="3f0ZsV2QMb5" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.ide.meta.editor.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="ApHj0p0xRD" role="3bR31x">
          <node concept="3LXTmp" id="ApHj0p0xRE" role="3rtmxm">
            <node concept="55IIr" id="ApHj0p0xRF" role="3LXTmr">
              <node concept="2Ry0Ak" id="ApHj0p0xRG" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="ApHj0p0xRH" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.ide.meta.editor" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="ApHj0p0xRJ" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="1a1larLevcL" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.fbme.ide.util.lang" />
        <property role="3LESm3" value="14f8fb68-9526-41ae-a986-e33a7382fe12" />
        <node concept="55IIr" id="1a1larLevcO" role="3LF7KH">
          <node concept="2Ry0Ak" id="3f0ZsV2QMcr" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="3f0ZsV2QMcs" role="2Ry0An">
              <property role="2Ry0Am" value="org.fbme.ide.util.lang" />
              <node concept="2Ry0Ak" id="3f0ZsV2QMct" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.ide.util.lang.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1BupzO" id="1a1larLeveP" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="3f0ZsV2Yqtv" role="1HemKq">
            <node concept="55IIr" id="3f0ZsV2Yqtp" role="3LXTmr">
              <node concept="2Ry0Ak" id="3f0ZsV2Yqts" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="3f0ZsV2Yqtt" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.ide.util.lang" />
                  <node concept="2Ry0Ak" id="3f0ZsV2Yqtu" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="3f0ZsV2Yqtw" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="ApHj0p0xRc" role="3bR31x">
          <node concept="3LXTmp" id="ApHj0p0xRd" role="3rtmxm">
            <node concept="55IIr" id="ApHj0p0xRe" role="3LXTmr">
              <node concept="2Ry0Ak" id="ApHj0p0xRf" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="ApHj0p0xRg" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.ide.util.lang" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="ApHj0p0xRi" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtD" id="723cCDWLyJu" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="org.fbme.ide.attributes" />
        <property role="3LESm3" value="491a88b6-52bd-4c4e-a61a-8496046b69aa" />
        <node concept="55IIr" id="723cCDWLyJx" role="3LF7KH">
          <node concept="2Ry0Ak" id="723cCDWLyMR" role="iGT6I">
            <property role="2Ry0Am" value="languages" />
            <node concept="2Ry0Ak" id="723cCDWLyNb" role="2Ry0An">
              <property role="2Ry0Am" value="org.fbme.ide.attributes" />
              <node concept="2Ry0Ak" id="723cCDWLyNl" role="2Ry0An">
                <property role="2Ry0Am" value="org.fbme.ide.attributes.mpl" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="723cCDWLyO0" role="3bR37C">
          <node concept="3bR9La" id="723cCDWLyO1" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
        <node concept="1SiIV0" id="723cCDWLyO2" role="3bR37C">
          <node concept="3bR9La" id="723cCDWLyO3" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:568PkTlOK5Q" resolve="jetbrains.mps.core.xml" />
          </node>
        </node>
        <node concept="1BupzO" id="723cCDWLyO8" role="3bR31x">
          <property role="3ZfqAx" value="models" />
          <property role="1Hdu6h" value="true" />
          <property role="1HemKv" value="true" />
          <node concept="3LXTmp" id="723cCDWLyO9" role="1HemKq">
            <node concept="55IIr" id="723cCDWLyO4" role="3LXTmr">
              <node concept="2Ry0Ak" id="723cCDWLyO5" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="723cCDWLyO6" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.ide.attributes" />
                  <node concept="2Ry0Ak" id="723cCDWLyO7" role="2Ry0An">
                    <property role="2Ry0Am" value="models" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="723cCDWLyOa" role="3LXTna">
              <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
            </node>
          </node>
        </node>
        <node concept="1yeLz9" id="723cCDWLyOb" role="1TViLv">
          <property role="TrG5h" value="org.fbme.ide.attributes.generator" />
          <property role="3LESm3" value="4ad4b816-d563-495e-8bc7-f4dfa08fa19b" />
          <node concept="1BupzO" id="723cCDWLyOh" role="3bR31x">
            <property role="3ZfqAx" value="generator/templates" />
            <property role="1Hdu6h" value="true" />
            <property role="1HemKv" value="true" />
            <node concept="3LXTmp" id="723cCDWLyOi" role="1HemKq">
              <node concept="55IIr" id="723cCDWLyOc" role="3LXTmr">
                <node concept="2Ry0Ak" id="723cCDWLyOd" role="iGT6I">
                  <property role="2Ry0Am" value="languages" />
                  <node concept="2Ry0Ak" id="723cCDWLyOe" role="2Ry0An">
                    <property role="2Ry0Am" value="org.fbme.ide.attributes" />
                    <node concept="2Ry0Ak" id="723cCDWLyOf" role="2Ry0An">
                      <property role="2Ry0Am" value="generator" />
                      <node concept="2Ry0Ak" id="723cCDWLyOg" role="2Ry0An">
                        <property role="2Ry0Am" value="templates" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3qWCbU" id="723cCDWLyOj" role="3LXTna">
                <property role="3qWCbO" value="**/*.mps, **/*.mpsr, **/.model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3rtmxn" id="723cCDWLyPC" role="3bR31x">
          <node concept="3LXTmp" id="723cCDWLyPD" role="3rtmxm">
            <node concept="55IIr" id="723cCDWLyPE" role="3LXTmr">
              <node concept="2Ry0Ak" id="723cCDWLyPF" role="iGT6I">
                <property role="2Ry0Am" value="languages" />
                <node concept="2Ry0Ak" id="723cCDWLyPG" role="2Ry0An">
                  <property role="2Ry0Am" value="org.fbme.ide.attributes" />
                </node>
              </node>
            </node>
            <node concept="3qWCbU" id="723cCDWLyPI" role="3LXTna">
              <property role="3qWCbO" value="icons/**, resources/**" />
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
  </node>
</model>

