<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:e617f9b7-4078-4f43-b620-871a161535c7(org.fbme.ide.iec61499.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
  </languages>
  <imports>
    <import index="m1e1" ref="r:ce018f97-56b9-4ee7-9b5f-2d462b6628bf(org.fbme.ide.iec61499.repository)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="7u3r" ref="r:b054d510-f3eb-4f3b-8611-d75feed6cb53(org.fbme.ide.iec61499.editor)" />
    <import index="uvki" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.iec61499.repository(org.fbme.platform.lib/)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1204478074808" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_MPSProject" flags="nn" index="1KvdUw" />
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
      </concept>
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="481983775135178819" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock" flags="in" index="2uRRBN" />
      <concept id="481983775135178825" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock" flags="in" index="2uRRBT" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR">
        <property id="6862207549896125199" name="needInitConfig" index="3_H9TB" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2uRRBC" id="5vstEPJdCkp">
    <property role="TrG5h" value="FBME MPS Bridge" />
    <node concept="2uRRBj" id="5vstEPJdCpZ" role="2uRRBE">
      <node concept="3clFbS" id="5vstEPJdCq0" role="2VODD2">
        <node concept="3clFbF" id="5vstEPJdCw$" role="3cqZAp">
          <node concept="2YIFZM" id="5vstEPJdCxj" role="3clFbG">
            <ref role="37wK5l" to="m1e1:5vstEPJdmmV" resolve="install" />
            <ref role="1Pybhc" to="m1e1:5vstEPJ8LFK" resolve="MpsBridgeImpl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="5vstEPJdC$r" role="2uRRBF">
      <node concept="3clFbS" id="5vstEPJdC$s" role="2VODD2">
        <node concept="3clFbF" id="5vstEPJdC$N" role="3cqZAp">
          <node concept="2YIFZM" id="5vstEPJdC_v" role="3clFbG">
            <ref role="1Pybhc" to="m1e1:5vstEPJ8LFK" resolve="MpsBridgeImpl" />
            <ref role="37wK5l" to="m1e1:5vstEPJdnqL" resolve="uninstall" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2uRRBy" id="6YcNwH3$$Zx">
    <property role="TrG5h" value="FBME Platform Repository" />
    <node concept="2uRRBT" id="6YcNwH3$$ZE" role="2uRRB$">
      <node concept="3clFbS" id="6YcNwH3$$ZF" role="2VODD2">
        <node concept="3clFbF" id="6YcNwH3$_6h" role="3cqZAp">
          <node concept="2YIFZM" id="6YcNwH3$_74" role="3clFbG">
            <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
            <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.init(jetbrains.mps.project.Project)" resolve="init" />
            <node concept="1KvdUw" id="6YcNwH3$_7w" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="6YcNwH3$_84" role="2uRRB_">
      <node concept="3clFbS" id="6YcNwH3$_85" role="2VODD2">
        <node concept="3clFbF" id="6YcNwH3$_8e" role="3cqZAp">
          <node concept="2YIFZM" id="6YcNwH3$_9m" role="3clFbG">
            <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
            <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.dispose(jetbrains.mps.project.Project)" resolve="dispose" />
            <node concept="1KvdUw" id="6YcNwH3$_9n" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2uRRBy" id="1EsE0fsvKJp">
    <property role="TrG5h" value="FBME Projection Specs" />
    <node concept="2uRRBT" id="1EsE0fsvKKs" role="2uRRB$">
      <node concept="3clFbS" id="1EsE0fsvKKt" role="2VODD2">
        <node concept="3clFbF" id="1vJkp1TP2yK" role="3cqZAp">
          <node concept="2OqwBi" id="1vJkp1TP4ZL" role="3clFbG">
            <node concept="2OqwBi" id="1vJkp1TP3n0" role="2Oq$k0">
              <node concept="1KvdUw" id="1vJkp1TP2yI" role="2Oq$k0" />
              <node concept="liA8E" id="1vJkp1TP4RV" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="1vJkp1TP5k$" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runWriteInEDT(java.lang.Runnable)" resolve="runWriteInEDT" />
              <node concept="1bVj0M" id="1vJkp1TP5lw" role="37wK5m">
                <node concept="3clFbS" id="1vJkp1TP5lx" role="1bW5cS">
                  <node concept="3clFbF" id="2hWn4IdWKfH" role="3cqZAp">
                    <node concept="2YIFZM" id="2hWn4IdWKwx" role="3clFbG">
                      <ref role="1Pybhc" to="7u3r:2hWn4IdUWjD" resolve="ProjectEditorSpecsImpl" />
                      <ref role="37wK5l" to="7u3r:2hWn4IdWCPe" resolve="install" />
                      <node concept="1KvdUw" id="2hWn4IdWKB0" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="1EsE0fsvNbK" role="2uRRB_">
      <node concept="3clFbS" id="1EsE0fsvNbL" role="2VODD2">
        <node concept="3clFbF" id="1vJkp1TPgIK" role="3cqZAp">
          <node concept="2OqwBi" id="1vJkp1TPgIL" role="3clFbG">
            <node concept="2OqwBi" id="1vJkp1TPgIM" role="2Oq$k0">
              <node concept="1KvdUw" id="1vJkp1TPgIN" role="2Oq$k0" />
              <node concept="liA8E" id="1vJkp1TPgIO" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="1vJkp1TPgIP" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runWriteInEDT(java.lang.Runnable)" resolve="runWriteInEDT" />
              <node concept="1bVj0M" id="1vJkp1TPgIQ" role="37wK5m">
                <node concept="3clFbS" id="1vJkp1TPgIR" role="1bW5cS">
                  <node concept="3clFbF" id="2hWn4IdWKLy" role="3cqZAp">
                    <node concept="2YIFZM" id="2hWn4IdWKUi" role="3clFbG">
                      <ref role="1Pybhc" to="7u3r:2hWn4IdUWjD" resolve="ProjectEditorSpecsImpl" />
                      <ref role="37wK5l" to="7u3r:2hWn4IdWFAH" resolve="uninstall" />
                      <node concept="1KvdUw" id="2hWn4IdWKUj" role="37wK5m" />
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
  <node concept="2DaZZR" id="4sMntFAig8l">
    <property role="3_H9TB" value="true" />
  </node>
</model>

