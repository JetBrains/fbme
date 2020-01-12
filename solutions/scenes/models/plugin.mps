<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c6ea7922-aebe-4759-8f3d-4be187bd9081(scenes.plugin)">
  <persistence version="9" />
  <languages>
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="wvnl" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.extensions(MPS.Editor/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="3bo0" ref="r:2b66dd0d-2c90-4da0-994d-d7579a6bca2a(scenes.controllers.scene)" />
    <import index="7zu8" ref="r:a3d9cb66-c492-4189-9359-282b020eccf4(scenes.ext.contextMenu)" />
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
  <node concept="2uRRBy" id="7eBFChAbxrR">
    <property role="TrG5h" value="SceneStateManager_Plugin" />
    <node concept="2uRRBT" id="7eBFChAbxrS" role="2uRRB$">
      <node concept="3clFbS" id="7eBFChAbxrT" role="2VODD2">
        <node concept="3cpWs8" id="7eBFChAbzs5" role="3cqZAp">
          <node concept="3cpWsn" id="7eBFChAbzs6" role="3cpWs9">
            <property role="TrG5h" value="reg" />
            <node concept="3uibUv" id="7eBFChAbzrZ" role="1tU5fm">
              <ref role="3uigEE" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
            </node>
            <node concept="2OqwBi" id="7eBFChAbzs7" role="33vP2m">
              <node concept="1KvdUw" id="7eBFChAbzs8" role="2Oq$k0" />
              <node concept="liA8E" id="7eBFChAbzs9" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="7eBFChAbzsa" role="37wK5m">
                  <ref role="3VsUkX" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eBFChAbxvr" role="3cqZAp">
          <node concept="2OqwBi" id="7eBFChAbz$e" role="3clFbG">
            <node concept="37vLTw" id="7eBFChAbzsb" role="2Oq$k0">
              <ref role="3cqZAo" node="7eBFChAbzs6" resolve="reg" />
            </node>
            <node concept="liA8E" id="7eBFChAbzFr" role="2OqNvi">
              <ref role="37wK5l" to="wvnl:~EditorExtensionRegistry.registerExtension(jetbrains.mps.openapi.editor.extensions.EditorExtension)" resolve="registerExtension" />
              <node concept="10M0yZ" id="7eBFChAbzKI" role="37wK5m">
                <ref role="3cqZAo" to="3bo0:7eBFChA9ZlF" resolve="EDITOR_EXTENSION" />
                <ref role="1PxDUh" to="3bo0:7eBFChA9Ziz" resolve="SceneStateManager" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="7eBFChAbzUg" role="2uRRB_">
      <node concept="3clFbS" id="7eBFChAbzUh" role="2VODD2">
        <node concept="3cpWs8" id="7eBFChAbzUH" role="3cqZAp">
          <node concept="3cpWsn" id="7eBFChAbzUI" role="3cpWs9">
            <property role="TrG5h" value="reg" />
            <node concept="3uibUv" id="7eBFChAbzUJ" role="1tU5fm">
              <ref role="3uigEE" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
            </node>
            <node concept="2OqwBi" id="7eBFChAbzUK" role="33vP2m">
              <node concept="1KvdUw" id="7eBFChAbzUL" role="2Oq$k0" />
              <node concept="liA8E" id="7eBFChAbzUM" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="7eBFChAbzUN" role="37wK5m">
                  <ref role="3VsUkX" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eBFChAbzUO" role="3cqZAp">
          <node concept="2OqwBi" id="7eBFChAbzUP" role="3clFbG">
            <node concept="37vLTw" id="7eBFChAbzUQ" role="2Oq$k0">
              <ref role="3cqZAo" node="7eBFChAbzUI" resolve="reg" />
            </node>
            <node concept="liA8E" id="7eBFChAbzUR" role="2OqNvi">
              <ref role="37wK5l" to="wvnl:~EditorExtensionRegistry.unregisterExtension(jetbrains.mps.openapi.editor.extensions.EditorExtension)" resolve="unregisterExtension" />
              <node concept="10M0yZ" id="7eBFChAbzUS" role="37wK5m">
                <ref role="3cqZAo" to="3bo0:7eBFChA9ZlF" resolve="EDITOR_EXTENSION" />
                <ref role="1PxDUh" to="3bo0:7eBFChA9Ziz" resolve="SceneStateManager" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="6wZUH2AM58e">
    <property role="3_H9TB" value="true" />
  </node>
  <node concept="2uRRBy" id="1KzgIApPLV1">
    <property role="TrG5h" value="CellSelectionOnPopupTrigger_Plugin" />
    <node concept="2uRRBT" id="1KzgIApPMsE" role="2uRRB$">
      <node concept="3clFbS" id="1KzgIApPMsF" role="2VODD2">
        <node concept="3cpWs8" id="1KzgIApPMt0" role="3cqZAp">
          <node concept="3cpWsn" id="1KzgIApPMt1" role="3cpWs9">
            <property role="TrG5h" value="reg" />
            <node concept="3uibUv" id="1KzgIApPMt2" role="1tU5fm">
              <ref role="3uigEE" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
            </node>
            <node concept="2OqwBi" id="1KzgIApPMt3" role="33vP2m">
              <node concept="1KvdUw" id="1KzgIApPMt4" role="2Oq$k0" />
              <node concept="liA8E" id="1KzgIApPMt5" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="1KzgIApPMt6" role="37wK5m">
                  <ref role="3VsUkX" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KzgIApPMt7" role="3cqZAp">
          <node concept="2OqwBi" id="1KzgIApPMt8" role="3clFbG">
            <node concept="37vLTw" id="1KzgIApPMt9" role="2Oq$k0">
              <ref role="3cqZAo" node="1KzgIApPMt1" resolve="reg" />
            </node>
            <node concept="liA8E" id="1KzgIApPMta" role="2OqNvi">
              <ref role="37wK5l" to="wvnl:~EditorExtensionRegistry.registerExtension(jetbrains.mps.openapi.editor.extensions.EditorExtension)" resolve="registerExtension" />
              <node concept="10M0yZ" id="1KzgIApPM$6" role="37wK5m">
                <ref role="3cqZAo" to="7zu8:7eBFChA9ZlF" resolve="EDITOR_EXTENSION" />
                <ref role="1PxDUh" to="7zu8:1KzgIApMed1" resolve="CellSelectionOnPopupTrigger" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="1KzgIApPMGo" role="2uRRB_">
      <node concept="3clFbS" id="1KzgIApPMGp" role="2VODD2">
        <node concept="3cpWs8" id="1KzgIApPMGP" role="3cqZAp">
          <node concept="3cpWsn" id="1KzgIApPMGQ" role="3cpWs9">
            <property role="TrG5h" value="reg" />
            <node concept="3uibUv" id="1KzgIApPMGR" role="1tU5fm">
              <ref role="3uigEE" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
            </node>
            <node concept="2OqwBi" id="1KzgIApPMGS" role="33vP2m">
              <node concept="1KvdUw" id="1KzgIApPMGT" role="2Oq$k0" />
              <node concept="liA8E" id="1KzgIApPMGU" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="1KzgIApPMGV" role="37wK5m">
                  <ref role="3VsUkX" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KzgIApPMGW" role="3cqZAp">
          <node concept="2OqwBi" id="1KzgIApPMGX" role="3clFbG">
            <node concept="37vLTw" id="1KzgIApPMGY" role="2Oq$k0">
              <ref role="3cqZAo" node="1KzgIApPMGQ" resolve="reg" />
            </node>
            <node concept="liA8E" id="1KzgIApPMGZ" role="2OqNvi">
              <ref role="37wK5l" to="wvnl:~EditorExtensionRegistry.unregisterExtension(jetbrains.mps.openapi.editor.extensions.EditorExtension)" resolve="unregisterExtension" />
              <node concept="10M0yZ" id="1KzgIApPMH0" role="37wK5m">
                <ref role="1PxDUh" to="7zu8:1KzgIApMed1" resolve="CellSelectionOnPopupTrigger" />
                <ref role="3cqZAo" to="7zu8:7eBFChA9ZlF" resolve="EDITOR_EXTENSION" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

