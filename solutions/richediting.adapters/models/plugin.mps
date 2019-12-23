<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cb5ca339-5ab1-4d45-82cc-3e94fa36eca9(richediting.adapters.plugin)">
  <persistence version="9" />
  <languages>
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ppqf" ref="r:bc5caf0f-df14-4a61-a09e-297c528e7095(richediting.adapters.inspections)" />
    <import index="wvnl" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.extensions(MPS.Editor/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1204478074808" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_MPSProject" flags="nn" index="1KvdUw" />
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
      </concept>
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
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2DaZZR" id="1R4IoyRA8wZ">
    <property role="3_H9TB" value="true" />
  </node>
  <node concept="2uRRBy" id="7eBFChAk6_E">
    <property role="TrG5h" value="InspectionsManager" />
    <node concept="2uRRBT" id="7eBFChAkMK2" role="2uRRB$">
      <node concept="3clFbS" id="7eBFChAkMK3" role="2VODD2">
        <node concept="3cpWs8" id="7eBFChAkOBg" role="3cqZAp">
          <node concept="3cpWsn" id="7eBFChAkOBh" role="3cpWs9">
            <property role="TrG5h" value="reg" />
            <node concept="3uibUv" id="7eBFChAkOBf" role="1tU5fm">
              <ref role="3uigEE" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
            </node>
            <node concept="2OqwBi" id="7eBFChAkOBi" role="33vP2m">
              <node concept="1KvdUw" id="7eBFChAkOBj" role="2Oq$k0" />
              <node concept="liA8E" id="7eBFChAkOBk" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getComponent(java.lang.Class):java.lang.Object" resolve="getComponent" />
                <node concept="3VsKOn" id="7eBFChAkOBl" role="37wK5m">
                  <ref role="3VsUkX" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eBFChAkMNA" role="3cqZAp">
          <node concept="2OqwBi" id="7eBFChAkOJI" role="3clFbG">
            <node concept="37vLTw" id="7eBFChAkOBm" role="2Oq$k0">
              <ref role="3cqZAo" node="7eBFChAkOBh" resolve="reg" />
            </node>
            <node concept="liA8E" id="7eBFChAkOQV" role="2OqNvi">
              <ref role="37wK5l" to="wvnl:~EditorExtensionRegistry.registerExtension(jetbrains.mps.openapi.editor.extensions.EditorExtension):void" resolve="registerExtension" />
              <node concept="10M0yZ" id="7eBFChAkQ4u" role="37wK5m">
                <ref role="3cqZAo" to="ppqf:7eBFChAkdvZ" resolve="EDITOR_EXTENSION" />
                <ref role="1PxDUh" to="ppqf:1R4IoyRpADU" resolve="InspectionManagerImpl" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="7eBFChAkQc4" role="2uRRB_">
      <node concept="3clFbS" id="7eBFChAkQc5" role="2VODD2">
        <node concept="3cpWs8" id="7eBFChAkQcx" role="3cqZAp">
          <node concept="3cpWsn" id="7eBFChAkQcy" role="3cpWs9">
            <property role="TrG5h" value="reg" />
            <node concept="3uibUv" id="7eBFChAkQcz" role="1tU5fm">
              <ref role="3uigEE" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
            </node>
            <node concept="2OqwBi" id="7eBFChAkQc$" role="33vP2m">
              <node concept="1KvdUw" id="7eBFChAkQc_" role="2Oq$k0" />
              <node concept="liA8E" id="7eBFChAkQcA" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getComponent(java.lang.Class):java.lang.Object" resolve="getComponent" />
                <node concept="3VsKOn" id="7eBFChAkQcB" role="37wK5m">
                  <ref role="3VsUkX" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eBFChAkQcC" role="3cqZAp">
          <node concept="2OqwBi" id="7eBFChAkQcD" role="3clFbG">
            <node concept="37vLTw" id="7eBFChAkQcE" role="2Oq$k0">
              <ref role="3cqZAo" node="7eBFChAkQcy" resolve="reg" />
            </node>
            <node concept="liA8E" id="7eBFChAkQcF" role="2OqNvi">
              <ref role="37wK5l" to="wvnl:~EditorExtensionRegistry.unregisterExtension(jetbrains.mps.openapi.editor.extensions.EditorExtension):void" resolve="unregisterExtension" />
              <node concept="10M0yZ" id="7eBFChAkQcG" role="37wK5m">
                <ref role="3cqZAo" to="ppqf:7eBFChAkdvZ" resolve="EDITOR_EXTENSION" />
                <ref role="1PxDUh" to="ppqf:1R4IoyRpADU" resolve="InspectionManagerImpl" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

