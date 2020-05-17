<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ff24162f-099d-43d8-a0b8-3a06f2c9c0a1(org.fbme.ide.platform)">
  <persistence version="9" />
  <languages>
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="22e72e4c-0f69-46ce-8403-6750153aa615" name="jetbrains.mps.execution.configurations" version="1" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
    <use id="756e911c-3f1f-4a48-bdf5-a2ceb91b723c" name="jetbrains.mps.execution.settings" version="0" />
    <use id="f3347d8a-0e79-4f35-8ac9-1574f25c986f" name="jetbrains.mps.execution.commands" version="0" />
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="0" />
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="2" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ends" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence(MPS.Core/)" />
    <import index="fpme" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.workbench.dialogs.project.newproject(MPS.Workbench/)" />
    <import index="9ti4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.extensions(MPS.IDEA/)" />
    <import index="o04u" ref="r:f0179f23-61bb-4719-8c52-ffe510b63d71(org.fbme.ide.platform.debugger)" />
    <import index="vdx1" ref="r:9323096f-e22f-41d1-bc4e-66d2c0d81159(org.fbme.ide.platform.projectWizard)" />
    <import index="51vd" ref="r:61dddea3-21a4-4a11-920c-747c8c1e4777(org.fbme.ide.platform.persistence)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="de0p" ref="r:d7cab6e9-7043-4e10-b77e-569e7736ba5e(org.fbme.ide.platform.editor)" />
    <import index="7bx7" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.workbench.action(MPS.Platform/)" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" />
    <import index="webo" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.text.html(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="1u7h" ref="r:3c4663c2-1cde-45a1-97cb-9049b04f4007(org.fbme.ide.iec61499.repository)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" implicit="true" />
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
        <child id="481983775135178838" name="fieldDeclaration" index="2uRRBA" />
      </concept>
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
        <child id="481983775135178844" name="fieldDeclaration" index="2uRRBG" />
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2uRRBC" id="1_Zi$XmjztV">
    <property role="TrG5h" value="IEC-61499 Persistence" />
    <property role="3GE5qa" value="" />
    <node concept="2uRRBj" id="1_Zi$XmjFJ_" role="2uRRBE">
      <node concept="3clFbS" id="1_Zi$XmjFJA" role="2VODD2">
        <node concept="3clFbF" id="6kvdbYu8uiF" role="3cqZAp">
          <node concept="2OqwBi" id="6kvdbYu8uBP" role="3clFbG">
            <node concept="2YIFZM" id="6kvdbYu8uoy" role="2Oq$k0">
              <ref role="37wK5l" to="ends:~ModelFactoryService.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="ends:~ModelFactoryService" resolve="ModelFactoryService" />
            </node>
            <node concept="liA8E" id="6kvdbYu8v0l" role="2OqNvi">
              <ref role="37wK5l" to="ends:~ModelFactoryService.register(org.jetbrains.mps.openapi.persistence.ModelFactory)" resolve="register" />
              <node concept="10M0yZ" id="7pEplJkuzte" role="37wK5m">
                <ref role="3cqZAo" to="51vd:1_Zi$XmmA7o" resolve="MODEL_FACTORY" />
                <ref role="1PxDUh" to="51vd:1_Zi$Xmm_zm" resolve="IEC61499Persistence" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kvdbYu7vil" role="3cqZAp">
          <node concept="2YIFZM" id="3inNSRVw7JW" role="3clFbG">
            <ref role="37wK5l" to="51vd:3inNSRVvx8C" resolve="reloadAll" />
            <ref role="1Pybhc" to="51vd:1_Zi$Xmm_zm" resolve="IEC61499Persistence" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="1_Zi$Xmm_77" role="2uRRBF">
      <node concept="3clFbS" id="1_Zi$Xmm_78" role="2VODD2">
        <node concept="3clFbF" id="6kvdbYu8$HH" role="3cqZAp">
          <node concept="2OqwBi" id="6kvdbYu8$HI" role="3clFbG">
            <node concept="2YIFZM" id="6kvdbYu8$HJ" role="2Oq$k0">
              <ref role="1Pybhc" to="ends:~ModelFactoryService" resolve="ModelFactoryService" />
              <ref role="37wK5l" to="ends:~ModelFactoryService.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="6kvdbYu8$HK" role="2OqNvi">
              <ref role="37wK5l" to="ends:~ModelFactoryService.unregister(org.jetbrains.mps.openapi.persistence.ModelFactory)" resolve="unregister" />
              <node concept="10M0yZ" id="7pEplJkuzwz" role="37wK5m">
                <ref role="3cqZAo" to="51vd:1_Zi$XmmA7o" resolve="MODEL_FACTORY" />
                <ref role="1PxDUh" to="51vd:1_Zi$Xmm_zm" resolve="IEC61499Persistence" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kvdbYu7vol" role="3cqZAp">
          <node concept="2YIFZM" id="3inNSRVw7L0" role="3clFbG">
            <ref role="37wK5l" to="51vd:3inNSRVvx8C" resolve="reloadAll" />
            <ref role="1Pybhc" to="51vd:1_Zi$Xmm_zm" resolve="IEC61499Persistence" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="4sMntFAig8l">
    <property role="3_H9TB" value="true" />
  </node>
  <node concept="2uRRBC" id="7OBD32IhL2h">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="IEC-61499 Project Templates" />
    <node concept="2BZ0e9" id="7OBD32IhL2i" role="2uRRBG">
      <property role="TrG5h" value="myTemplateGroup" />
      <node concept="3Tm6S6" id="7OBD32IhL2j" role="1B3o_S" />
      <node concept="3uibUv" id="7pEplJktKYv" role="1tU5fm">
        <ref role="3uigEE" to="vdx1:7OBD32Ii_tb" resolve="IEC61499ProjectTemplateGroup" />
      </node>
      <node concept="2ShNRf" id="7OBD32IhL9m" role="33vP2m">
        <node concept="HV5vD" id="7OBD32IhLDD" role="2ShVmc">
          <ref role="HV5vE" to="vdx1:7OBD32Ii_tb" resolve="IEC61499ProjectTemplateGroup" />
        </node>
      </node>
    </node>
    <node concept="2uRRBj" id="7OBD32IhLDS" role="2uRRBE">
      <node concept="3clFbS" id="7OBD32IhLDT" role="2VODD2">
        <node concept="3clFbF" id="7OBD32IhMgS" role="3cqZAp">
          <node concept="2OqwBi" id="7OBD32IhNal" role="3clFbG">
            <node concept="2OqwBi" id="7OBD32IhMov" role="2Oq$k0">
              <node concept="2YIFZM" id="7OBD32IhMhj" role="2Oq$k0">
                <ref role="37wK5l" to="9ti4:~Extensions.getRootArea()" resolve="getRootArea" />
                <ref role="1Pybhc" to="9ti4:~Extensions" resolve="Extensions" />
              </node>
              <node concept="liA8E" id="7OBD32IhMUt" role="2OqNvi">
                <ref role="37wK5l" to="9ti4:~ExtensionsArea.getExtensionPoint(com.intellij.openapi.extensions.ExtensionPointName)" resolve="getExtensionPoint" />
                <node concept="10M0yZ" id="7OBD32Ijjl2" role="37wK5m">
                  <ref role="3cqZAo" to="fpme:~ProjectTemplatesGroup.EP_NAME" resolve="EP_NAME" />
                  <ref role="1PxDUh" to="fpme:~ProjectTemplatesGroup" resolve="ProjectTemplatesGroup" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7OBD32IhQMM" role="2OqNvi">
              <ref role="37wK5l" to="9ti4:~ExtensionPoint.registerExtension(java.lang.Object)" resolve="registerExtension" />
              <node concept="2OqwBi" id="7OBD32IhQQS" role="37wK5m">
                <node concept="2WthIp" id="7OBD32IhQQV" role="2Oq$k0" />
                <node concept="2BZ7hE" id="7OBD32IhQQX" role="2OqNvi">
                  <ref role="2WH_rO" node="7OBD32IhL2i" resolve="myTemplateGroup" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="7OBD32IhQYG" role="2uRRBF">
      <node concept="3clFbS" id="7OBD32IhQYH" role="2VODD2">
        <node concept="3clFbF" id="7OBD32IhR1g" role="3cqZAp">
          <node concept="2OqwBi" id="7OBD32IhR1h" role="3clFbG">
            <node concept="2OqwBi" id="7OBD32IhR1i" role="2Oq$k0">
              <node concept="2YIFZM" id="7OBD32IhR1j" role="2Oq$k0">
                <ref role="37wK5l" to="9ti4:~Extensions.getRootArea()" resolve="getRootArea" />
                <ref role="1Pybhc" to="9ti4:~Extensions" resolve="Extensions" />
              </node>
              <node concept="liA8E" id="7OBD32IhR1k" role="2OqNvi">
                <ref role="37wK5l" to="9ti4:~ExtensionsArea.getExtensionPoint(com.intellij.openapi.extensions.ExtensionPointName)" resolve="getExtensionPoint" />
                <node concept="10M0yZ" id="7OBD32Ijjpu" role="37wK5m">
                  <ref role="3cqZAo" to="fpme:~ProjectTemplatesGroup.EP_NAME" resolve="EP_NAME" />
                  <ref role="1PxDUh" to="fpme:~ProjectTemplatesGroup" resolve="ProjectTemplatesGroup" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7OBD32IhR1m" role="2OqNvi">
              <ref role="37wK5l" to="9ti4:~ExtensionPoint.unregisterExtension(java.lang.Object)" resolve="unregisterExtension" />
              <node concept="2OqwBi" id="7OBD32IhR1n" role="37wK5m">
                <node concept="2WthIp" id="7OBD32IhR1o" role="2Oq$k0" />
                <node concept="2BZ7hE" id="7OBD32IhR1p" role="2OqNvi">
                  <ref role="2WH_rO" node="7OBD32IhL2i" resolve="myTemplateGroup" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2uRRBC" id="42vv4xszWLk">
    <property role="TrG5h" value="IEC-61499 Devices" />
    <node concept="2BZ0e9" id="42vv4xs_OKB" role="2uRRBG">
      <property role="TrG5h" value="devices" />
      <node concept="3Tm6S6" id="42vv4xs_OKC" role="1B3o_S" />
      <node concept="3uibUv" id="42vv4xs_P4u" role="1tU5fm">
        <ref role="3uigEE" to="o04u:3wAsKTkhPuA" resolve="DevicesFacade" />
      </node>
      <node concept="2ShNRf" id="42vv4xs_OKE" role="33vP2m">
        <node concept="HV5vD" id="42vv4xs_OKF" role="2ShVmc">
          <ref role="HV5vE" to="o04u:3wAsKTkhPuA" resolve="DevicesFacade" />
        </node>
      </node>
    </node>
    <node concept="2BZ0e9" id="5jACUPF_n3p" role="2uRRBG">
      <property role="TrG5h" value="watchers" />
      <node concept="3Tm6S6" id="5jACUPF_n3q" role="1B3o_S" />
      <node concept="3uibUv" id="5jACUPF_na1" role="1tU5fm">
        <ref role="3uigEE" to="o04u:3wAsKTk9819" resolve="WatcherFacade" />
      </node>
      <node concept="2ShNRf" id="5jACUPF_nak" role="33vP2m">
        <node concept="HV5vD" id="5jACUPF_nCc" role="2ShVmc">
          <ref role="HV5vE" to="o04u:3wAsKTk9819" resolve="WatcherFacade" />
        </node>
      </node>
    </node>
    <node concept="2uRRBj" id="42vv4xszWQY" role="2uRRBE">
      <node concept="3clFbS" id="42vv4xszWQZ" role="2VODD2">
        <node concept="3clFbF" id="42vv4xsA1cm" role="3cqZAp">
          <node concept="2OqwBi" id="42vv4xsA1cn" role="3clFbG">
            <node concept="2OqwBi" id="42vv4xsA1co" role="2Oq$k0">
              <node concept="2WthIp" id="42vv4xsA1cp" role="2Oq$k0" />
              <node concept="2BZ7hE" id="42vv4xsA1L7" role="2OqNvi">
                <ref role="2WH_rO" node="42vv4xs_OKB" resolve="devices" />
              </node>
            </node>
            <node concept="liA8E" id="42vv4xsA1cr" role="2OqNvi">
              <ref role="37wK5l" to="o04u:42vv4xs$24w" resolve="start" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jACUPF_nJp" role="3cqZAp">
          <node concept="2OqwBi" id="5jACUPF_o3J" role="3clFbG">
            <node concept="2OqwBi" id="5jACUPF_nJj" role="2Oq$k0">
              <node concept="2WthIp" id="5jACUPF_nJm" role="2Oq$k0" />
              <node concept="2BZ7hE" id="5jACUPF_nJo" role="2OqNvi">
                <ref role="2WH_rO" node="5jACUPF_n3p" resolve="watchers" />
              </node>
            </node>
            <node concept="liA8E" id="5jACUPF_J$g" role="2OqNvi">
              <ref role="37wK5l" to="o04u:5jACUPF_oRt" resolve="start" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="42vv4xszWTP" role="2uRRBF">
      <node concept="3clFbS" id="42vv4xszWTQ" role="2VODD2">
        <node concept="3clFbF" id="42vv4xszWUV" role="3cqZAp">
          <node concept="2OqwBi" id="42vv4xszWUW" role="3clFbG">
            <node concept="2OqwBi" id="42vv4xszWUX" role="2Oq$k0">
              <node concept="2WthIp" id="42vv4xszWUY" role="2Oq$k0" />
              <node concept="2BZ7hE" id="42vv4xszWUZ" role="2OqNvi">
                <ref role="2WH_rO" node="5jACUPF_n3p" resolve="watchers" />
              </node>
            </node>
            <node concept="liA8E" id="42vv4xszWV0" role="2OqNvi">
              <ref role="37wK5l" to="o04u:5jACUPF_vta" resolve="stop" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42vv4xsA1MZ" role="3cqZAp">
          <node concept="2OqwBi" id="42vv4xsA1N0" role="3clFbG">
            <node concept="2OqwBi" id="42vv4xsA1N1" role="2Oq$k0">
              <node concept="2WthIp" id="42vv4xsA1N2" role="2Oq$k0" />
              <node concept="2BZ7hE" id="42vv4xsA1N3" role="2OqNvi">
                <ref role="2WH_rO" node="42vv4xs_OKB" resolve="devices" />
              </node>
            </node>
            <node concept="liA8E" id="42vv4xsA1N4" role="2OqNvi">
              <ref role="37wK5l" to="o04u:42vv4xs$2hD" resolve="stop" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2uRRBy" id="1eL5bn4Qprw">
    <property role="TrG5h" value="IEC-61499 Persistence Refs Fixer" />
    <node concept="2BZ0e9" id="1eL5bn4ReMp" role="2uRRBA">
      <property role="TrG5h" value="myFixer" />
      <node concept="3Tm6S6" id="1eL5bn4ReMq" role="1B3o_S" />
      <node concept="3uibUv" id="1eL5bn4ReSH" role="1tU5fm">
        <ref role="3uigEE" to="51vd:1eL5bn4QprR" resolve="PersistenceReferencesFixer" />
      </node>
      <node concept="2ShNRf" id="4oNJRLlxzEw" role="33vP2m">
        <node concept="HV5vD" id="4oNJRLlxP0K" role="2ShVmc">
          <ref role="HV5vE" to="51vd:1eL5bn4QprR" resolve="PersistenceReferencesFixer" />
        </node>
      </node>
    </node>
    <node concept="2uRRBT" id="1eL5bn4Qprx" role="2uRRB$">
      <node concept="3clFbS" id="1eL5bn4Qpry" role="2VODD2">
        <node concept="3clFbF" id="1eL5bn4ReZ9" role="3cqZAp">
          <node concept="2OqwBi" id="1eL5bn4RfkC" role="3clFbG">
            <node concept="2OqwBi" id="1eL5bn4ReZ3" role="2Oq$k0">
              <node concept="2WthIp" id="1eL5bn4ReZ6" role="2Oq$k0" />
              <node concept="2BZ7hE" id="1eL5bn4ReZ8" role="2OqNvi">
                <ref role="2WH_rO" node="1eL5bn4ReMp" resolve="myFixer" />
              </node>
            </node>
            <node concept="liA8E" id="1eL5bn4RfyI" role="2OqNvi">
              <ref role="37wK5l" to="51vd:1eL5bn4Rb4V" resolve="attach" />
              <node concept="1KvdUw" id="1eL5bn4Rfzu" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="1eL5bn4RfBK" role="2uRRB_">
      <node concept="3clFbS" id="1eL5bn4RfBL" role="2VODD2">
        <node concept="3clFbF" id="1eL5bn4RfG8" role="3cqZAp">
          <node concept="2OqwBi" id="1eL5bn4RfG9" role="3clFbG">
            <node concept="2OqwBi" id="1eL5bn4RfGa" role="2Oq$k0">
              <node concept="2WthIp" id="1eL5bn4RfGb" role="2Oq$k0" />
              <node concept="2BZ7hE" id="1eL5bn4RfGc" role="2OqNvi">
                <ref role="2WH_rO" node="1eL5bn4ReMp" resolve="myFixer" />
              </node>
            </node>
            <node concept="liA8E" id="1eL5bn4RfGd" role="2OqNvi">
              <ref role="37wK5l" to="51vd:1eL5bn4Re2W" resolve="detach" />
              <node concept="1KvdUw" id="1eL5bn4RfGe" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2uRRBy" id="7Y8B9wpfmhS">
    <property role="TrG5h" value="IEC-61499 Headered Editors" />
    <node concept="2uRRBT" id="7Y8B9wpfmE7" role="2uRRB$">
      <node concept="3clFbS" id="7Y8B9wpfmE8" role="2VODD2">
        <node concept="3clFbF" id="1vJkp1TP2yK" role="3cqZAp">
          <node concept="2OqwBi" id="1vJkp1TP4ZL" role="3clFbG">
            <node concept="2OqwBi" id="1vJkp1TP3n0" role="2Oq$k0">
              <node concept="1KvdUw" id="1vJkp1TP2yI" role="2Oq$k0" />
              <node concept="liA8E" id="1vJkp1TP4RV" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="1vJkp1TP5k$" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runWriteInEDT(java.lang.Runnable)" resolve="runWriteInEDT" />
              <node concept="1bVj0M" id="1vJkp1TP5lw" role="37wK5m">
                <node concept="3clFbS" id="1vJkp1TP5lx" role="1bW5cS">
                  <node concept="3clFbF" id="2hWn4IdWKfH" role="3cqZAp">
                    <node concept="2YIFZM" id="2hWn4IdWKwx" role="3clFbG">
                      <ref role="37wK5l" to="de0p:2hWn4IdWCPe" resolve="install" />
                      <ref role="1Pybhc" to="de0p:2hWn4IdUWjD" resolve="ProjectHeaderedEditorSpecs" />
                      <node concept="1KvdUw" id="2hWn4IdWKB0" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Y8B9wpfmKG" role="3cqZAp">
          <node concept="2OqwBi" id="7Y8B9wpfocE" role="3clFbG">
            <node concept="2OqwBi" id="7Y8B9wpfn3W" role="2Oq$k0">
              <node concept="10M0yZ" id="7Y8B9wpfmL4" role="2Oq$k0">
                <ref role="3cqZAo" to="k3nr:~NodeEditorFactory.EXT_POINT" resolve="EXT_POINT" />
                <ref role="1PxDUh" to="k3nr:~NodeEditorFactory" resolve="NodeEditorFactory" />
              </node>
              <node concept="liA8E" id="7Y8B9wpfnG1" role="2OqNvi">
                <ref role="37wK5l" to="9ti4:~ExtensionPointName.getPoint(com.intellij.openapi.extensions.AreaInstance)" resolve="getPoint" />
                <node concept="2OqwBi" id="7Y8B9wpfpWs" role="37wK5m">
                  <node concept="1KvdUw" id="7Y8B9wpfnYH" role="2Oq$k0" />
                  <node concept="liA8E" id="7Y8B9wpfria" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7Y8B9wpfrHw" role="2OqNvi">
              <ref role="37wK5l" to="9ti4:~ExtensionPoint.registerExtension(java.lang.Object)" resolve="registerExtension" />
              <node concept="2ShNRf" id="7Y8B9wpfrW0" role="37wK5m">
                <node concept="1pGfFk" id="7Y8B9wpfsfI" role="2ShVmc">
                  <ref role="37wK5l" to="de0p:7Y8B9wpduOV" resolve="HeaderedEditorFactory" />
                  <node concept="1KvdUw" id="7Y8B9wpfsiT" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="7Y8B9wpftRr" role="2uRRB_">
      <node concept="3clFbS" id="7Y8B9wpftRs" role="2VODD2">
        <node concept="3clFbF" id="1vJkp1TPgIK" role="3cqZAp">
          <node concept="2OqwBi" id="1vJkp1TPgIL" role="3clFbG">
            <node concept="2OqwBi" id="1vJkp1TPgIM" role="2Oq$k0">
              <node concept="1KvdUw" id="1vJkp1TPgIN" role="2Oq$k0" />
              <node concept="liA8E" id="1vJkp1TPgIO" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="1vJkp1TPgIP" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runWriteInEDT(java.lang.Runnable)" resolve="runWriteInEDT" />
              <node concept="1bVj0M" id="1vJkp1TPgIQ" role="37wK5m">
                <node concept="3clFbS" id="1vJkp1TPgIR" role="1bW5cS">
                  <node concept="3clFbF" id="2hWn4IdWKLy" role="3cqZAp">
                    <node concept="2YIFZM" id="2hWn4IdWKUi" role="3clFbG">
                      <ref role="1Pybhc" to="de0p:2hWn4IdUWjD" resolve="ProjectHeaderedEditorSpecs" />
                      <ref role="37wK5l" to="de0p:2hWn4IdWFAH" resolve="uninstall" />
                      <node concept="1KvdUw" id="2hWn4IdWKUj" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Y8B9wpftSW" role="3cqZAp">
          <node concept="2OqwBi" id="7Y8B9wpftSX" role="3clFbG">
            <node concept="2OqwBi" id="7Y8B9wpftSY" role="2Oq$k0">
              <node concept="10M0yZ" id="7Y8B9wpftSZ" role="2Oq$k0">
                <ref role="1PxDUh" to="k3nr:~NodeEditorFactory" resolve="NodeEditorFactory" />
                <ref role="3cqZAo" to="k3nr:~NodeEditorFactory.EXT_POINT" resolve="EXT_POINT" />
              </node>
              <node concept="liA8E" id="7Y8B9wpftT0" role="2OqNvi">
                <ref role="37wK5l" to="9ti4:~ExtensionPointName.getPoint(com.intellij.openapi.extensions.AreaInstance)" resolve="getPoint" />
                <node concept="2OqwBi" id="7Y8B9wpftT1" role="37wK5m">
                  <node concept="1KvdUw" id="7Y8B9wpftT2" role="2Oq$k0" />
                  <node concept="liA8E" id="7Y8B9wpftT3" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7Y8B9wpftT4" role="2OqNvi">
              <ref role="37wK5l" to="9ti4:~ExtensionPoint.unregisterExtension(java.lang.Class)" resolve="unregisterExtension" />
              <node concept="3VsKOn" id="7Y8B9wpfuUQ" role="37wK5m">
                <ref role="3VsUkX" to="de0p:7Y8B9wpdlUb" resolve="HeaderedEditorFactory" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6YcNwH3$7Vx">
    <property role="TrG5h" value="PlatformRepositoryProvider" />
    <node concept="2tJIrI" id="6YcNwH3$7X7" role="jymVt" />
    <node concept="Wx3nA" id="6YcNwH3$fkG" role="jymVt">
      <property role="TrG5h" value="ourRepositories" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6YcNwH3$8mJ" role="1B3o_S" />
      <node concept="3uibUv" id="6YcNwH3$eyh" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="6YcNwH3$AoN" role="11_B2D">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
        <node concept="3uibUv" id="1hwo9XLFXIm" role="11_B2D">
          <ref role="3uigEE" to="1u7h:1IuIrLUoxLf" resolve="PlatformRepository" />
        </node>
      </node>
      <node concept="2ShNRf" id="6YcNwH3$fmh" role="33vP2m">
        <node concept="1pGfFk" id="6YcNwH3$hAk" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="6YcNwH3$AR_" role="1pMfVU">
            <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
          </node>
          <node concept="3uibUv" id="1hwo9XLFY4H" role="1pMfVU">
            <ref role="3uigEE" to="1u7h:1IuIrLUoxLf" resolve="PlatformRepository" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6YcNwH3$hRn" role="jymVt" />
    <node concept="2YIFZL" id="6YcNwH3$i5x" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3clFbS" id="6YcNwH3$i5$" role="3clF47">
        <node concept="3clFbF" id="6YcNwH3$igG" role="3cqZAp">
          <node concept="2OqwBi" id="6YcNwH3$iZr" role="3clFbG">
            <node concept="37vLTw" id="6YcNwH3$iC3" role="2Oq$k0">
              <ref role="3cqZAo" node="6YcNwH3$fkG" resolve="ourRepositories" />
            </node>
            <node concept="liA8E" id="6YcNwH3$jVh" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="6YcNwH3$k33" role="37wK5m">
                <ref role="3cqZAo" node="6YcNwH3$i9l" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6YcNwH3$hVi" role="1B3o_S" />
      <node concept="3uibUv" id="1hwo9XLG0Ue" role="3clF45">
        <ref role="3uigEE" to="1u7h:1IuIrLUoxLf" resolve="PlatformRepository" />
      </node>
      <node concept="37vLTG" id="6YcNwH3$i9l" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="sOaa8ZZZHz" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6YcNwH3$khb" role="jymVt" />
    <node concept="2YIFZL" id="6YcNwH3$kvb" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="37vLTG" id="6YcNwH3$kz3" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6YcNwH3$_DX" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3clFbS" id="6YcNwH3$kve" role="3clF47">
        <node concept="3clFbF" id="6YcNwH3$kTT" role="3cqZAp">
          <node concept="2OqwBi" id="6YcNwH3$lpW" role="3clFbG">
            <node concept="37vLTw" id="6YcNwH3$kTS" role="2Oq$k0">
              <ref role="3cqZAo" node="6YcNwH3$fkG" resolve="ourRepositories" />
            </node>
            <node concept="liA8E" id="6YcNwH3$mi0" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="6YcNwH3$msO" role="37wK5m">
                <ref role="3cqZAo" node="6YcNwH3$kz3" resolve="project" />
              </node>
              <node concept="2ShNRf" id="6YcNwH3$mMq" role="37wK5m">
                <node concept="1pGfFk" id="6YcNwH3$n6W" role="2ShVmc">
                  <ref role="37wK5l" to="1u7h:1R0_JUQTDoZ" resolve="PlatformRepository" />
                  <node concept="2OqwBi" id="6YcNwH3$pfc" role="37wK5m">
                    <node concept="37vLTw" id="6YcNwH3$nbb" role="2Oq$k0">
                      <ref role="3cqZAo" node="6YcNwH3$kz3" resolve="project" />
                    </node>
                    <node concept="liA8E" id="6YcNwH3$snV" role="2OqNvi">
                      <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6YcNwH3$kEv" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6YcNwH3$kJu" role="jymVt" />
    <node concept="2YIFZL" id="6YcNwH3$kEP" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="37vLTG" id="6YcNwH3$kEQ" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="6YcNwH3$Adr" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
      <node concept="3clFbS" id="6YcNwH3$kES" role="3clF47">
        <node concept="3clFbF" id="6YcNwH3$zt_" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZoCvH" role="3clFbG">
            <node concept="2OqwBi" id="6YcNwH3$zMN" role="2Oq$k0">
              <node concept="37vLTw" id="6YcNwH3$zt$" role="2Oq$k0">
                <ref role="3cqZAo" node="6YcNwH3$fkG" resolve="ourRepositories" />
              </node>
              <node concept="liA8E" id="6YcNwH3$$wj" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object)" resolve="remove" />
                <node concept="37vLTw" id="6YcNwH3$$Ib" role="37wK5m">
                  <ref role="3cqZAo" node="6YcNwH3$kEQ" resolve="project" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="_2FpOZoD0H" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:_2FpOZoola" resolve="dispose" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6YcNwH3$kET" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="6YcNwH3$7Vy" role="1B3o_S" />
  </node>
  <node concept="2uRRBy" id="6YcNwH3$$Zx">
    <property role="TrG5h" value="IEC-61499 Repository" />
    <node concept="2uRRBT" id="6YcNwH3$$ZE" role="2uRRB$">
      <node concept="3clFbS" id="6YcNwH3$$ZF" role="2VODD2">
        <node concept="3clFbF" id="6YcNwH3$_6h" role="3cqZAp">
          <node concept="2YIFZM" id="6YcNwH3$_74" role="3clFbG">
            <ref role="37wK5l" node="6YcNwH3$kvb" resolve="init" />
            <ref role="1Pybhc" node="6YcNwH3$7Vx" resolve="PlatformRepositoryProvider" />
            <node concept="1KvdUw" id="6YcNwH3$_7w" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="6YcNwH3$_84" role="2uRRB_">
      <node concept="3clFbS" id="6YcNwH3$_85" role="2VODD2">
        <node concept="3clFbF" id="6YcNwH3$_8e" role="3cqZAp">
          <node concept="2YIFZM" id="6YcNwH3$_9m" role="3clFbG">
            <ref role="37wK5l" node="6YcNwH3$kEP" resolve="dispose" />
            <ref role="1Pybhc" node="6YcNwH3$7Vx" resolve="PlatformRepositoryProvider" />
            <node concept="1KvdUw" id="6YcNwH3$_9n" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

