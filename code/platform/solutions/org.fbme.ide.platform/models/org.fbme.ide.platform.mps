<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ff24162f-099d-43d8-a0b8-3a06f2c9c0a1(org.fbme.ide.platform)">
  <persistence version="9" />
  <languages>
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="22e72e4c-0f69-46ce-8403-6750153aa615" name="jetbrains.mps.execution.configurations" version="2" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
    <use id="756e911c-3f1f-4a48-bdf5-a2ceb91b723c" name="jetbrains.mps.execution.settings" version="0" />
    <use id="f3347d8a-0e79-4f35-8ac9-1574f25c986f" name="jetbrains.mps.execution.commands" version="0" />
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="0" />
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="2" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ends" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence(MPS.Core/)" />
    <import index="fpme" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.workbench.dialogs.project.newproject(MPS.Workbench/)" />
    <import index="9ti4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.extensions(MPS.IDEA/)" />
    <import index="vdx1" ref="r:9323096f-e22f-41d1-bc4e-66d2c0d81159(org.fbme.ide.platform.projectWizard)" />
    <import index="51vd" ref="r:61dddea3-21a4-4a11-920c-747c8c1e4777(org.fbme.ide.platform.persistence)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="6w4o" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.platform.debugger(org.fbme.platform.lib/)" />
    <import index="8gms" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.platform.editor(org.fbme.platform.lib/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
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
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2" />
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
      <node concept="3uibUv" id="407BnQQhL8t" role="1tU5fm">
        <ref role="3uigEE" to="6w4o:~DevicesFacade" resolve="DevicesFacade" />
      </node>
      <node concept="2ShNRf" id="42vv4xs_OKE" role="33vP2m">
        <node concept="1pGfFk" id="407BnQQhMSa" role="2ShVmc">
          <ref role="37wK5l" to="6w4o:~DevicesFacade.&lt;init&gt;()" resolve="DevicesFacade" />
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
              <ref role="37wK5l" to="6w4o:~DevicesFacade.start()" resolve="start" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="42vv4xszWTP" role="2uRRBF">
      <node concept="3clFbS" id="42vv4xszWTQ" role="2VODD2">
        <node concept="3clFbF" id="42vv4xsA1MZ" role="3cqZAp">
          <node concept="2OqwBi" id="42vv4xsA1N0" role="3clFbG">
            <node concept="2OqwBi" id="42vv4xsA1N1" role="2Oq$k0">
              <node concept="2WthIp" id="42vv4xsA1N2" role="2Oq$k0" />
              <node concept="2BZ7hE" id="42vv4xsA1N3" role="2OqNvi">
                <ref role="2WH_rO" node="42vv4xs_OKB" resolve="devices" />
              </node>
            </node>
            <node concept="liA8E" id="42vv4xsA1N4" role="2OqNvi">
              <ref role="37wK5l" to="6w4o:~DevicesFacade.stop()" resolve="stop" />
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
                  <ref role="37wK5l" to="8gms:~PlatformEditorFactory.&lt;init&gt;(jetbrains.mps.project.MPSProject)" resolve="PlatformEditorFactory" />
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
                <ref role="3VsUkX" to="8gms:~PlatformEditorFactory" resolve="PlatformEditorFactory" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2uRRBC" id="1lhPVEAdo5p">
    <property role="TrG5h" value="IEC-61499 Headered Projection" />
    <node concept="2BZ0e9" id="1lhPVEAdo5q" role="2uRRBG">
      <property role="TrG5h" value="myFactory" />
      <node concept="3Tm6S6" id="1lhPVEAdo5r" role="1B3o_S" />
      <node concept="3uibUv" id="1lhPVEAdsGf" role="1tU5fm">
        <ref role="3uigEE" to="8gms:~EditorProjectionController$Factory" resolve="EditorProjectionController.Factory" />
      </node>
      <node concept="2ShNRf" id="7Y8B9wpl4BU" role="33vP2m">
        <node concept="YeOm9" id="7Y8B9wpl4BV" role="2ShVmc">
          <node concept="1Y3b0j" id="7Y8B9wpl4BW" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="8gms:~EditorProjectionController$Factory" resolve="EditorProjectionController.Factory" />
            <node concept="3Tm1VV" id="7Y8B9wpl4BX" role="1B3o_S" />
            <node concept="3clFb_" id="7Y8B9wpl4BY" role="jymVt">
              <property role="TrG5h" value="getId" />
              <node concept="3Tm1VV" id="7Y8B9wpl4BZ" role="1B3o_S" />
              <node concept="3uibUv" id="7Y8B9wpl4C0" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="7Y8B9wpl4C1" role="3clF47">
                <node concept="3clFbF" id="7Y8B9wpl4C2" role="3cqZAp">
                  <node concept="Xl_RD" id="7Y8B9wpl4C3" role="3clFbG">
                    <property role="Xl_RC" value="Source" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7Y8B9wpl4C4" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
              <node concept="2AHcQZ" id="7Y8B9wpmUah" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
            </node>
            <node concept="2tJIrI" id="1vJkp1TWF8v" role="jymVt" />
            <node concept="3clFb_" id="1vJkp1TWFgY" role="jymVt">
              <property role="TrG5h" value="create" />
              <node concept="3Tm1VV" id="1vJkp1TWFh0" role="1B3o_S" />
              <node concept="3uibUv" id="1lhPVEAdfXg" role="3clF45">
                <ref role="3uigEE" to="8gms:~EditorProjectionController" resolve="EditorProjectionController" />
              </node>
              <node concept="37vLTG" id="1vJkp1TWFh2" role="3clF46">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="4DPb1mRQv3z" role="1tU5fm" />
                <node concept="2AHcQZ" id="1vJkp1TWFh4" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="37vLTG" id="1vJkp1TWFh5" role="3clF46">
                <property role="TrG5h" value="project" />
                <node concept="3uibUv" id="1vJkp1TWFh6" role="1tU5fm">
                  <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
                </node>
                <node concept="2AHcQZ" id="1vJkp1TWFh7" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="1vJkp1TWFh9" role="3clF47">
                <node concept="3clFbF" id="7Y8B9wpl4Jg" role="3cqZAp">
                  <node concept="2ShNRf" id="7Y8B9wpl4Ja" role="3clFbG">
                    <node concept="1pGfFk" id="1QSEqLhBmkn" role="2ShVmc">
                      <ref role="37wK5l" to="8gms:~SimpleEditorProjectionController.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String,jetbrains.mps.project.Project,java.lang.String[],boolean,int)" resolve="SimpleEditorProjectionController" />
                      <node concept="37vLTw" id="1vJkp1TWFyC" role="37wK5m">
                        <ref role="3cqZAo" node="1vJkp1TWFh2" resolve="node" />
                      </node>
                      <node concept="Xl_RD" id="7ii99HMnJii" role="37wK5m">
                        <property role="Xl_RC" value="Source" />
                      </node>
                      <node concept="37vLTw" id="1lhPVEAdj2x" role="37wK5m">
                        <ref role="3cqZAo" node="1vJkp1TWFh5" resolve="project" />
                      </node>
                      <node concept="2ShNRf" id="7ii99HMnJss" role="37wK5m">
                        <node concept="3$_iS1" id="7ii99HMnJMv" role="2ShVmc">
                          <node concept="3$GHV9" id="7ii99HMnJMx" role="3$GQph">
                            <node concept="3cmrfG" id="7ii99HMnJVM" role="3$I4v7">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                          <node concept="17QB3L" id="7ii99HMnJK7" role="3$_nBY" />
                        </node>
                      </node>
                      <node concept="22lmx$" id="4DPb1mRQvdn" role="37wK5m">
                        <node concept="2OqwBi" id="4DPb1mRQvdo" role="3uHU7w">
                          <node concept="37vLTw" id="4DPb1mRQvdp" role="2Oq$k0">
                            <ref role="3cqZAo" node="1vJkp1TWFh2" resolve="node" />
                          </node>
                          <node concept="1mIQ4w" id="4DPb1mRQvdq" role="2OqNvi">
                            <node concept="chp4Y" id="4DPb1mRQvdr" role="cj9EA">
                              <ref role="cht4Q" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4DPb1mRQvdA" role="3uHU7B">
                          <node concept="37vLTw" id="4DPb1mRQvdB" role="2Oq$k0">
                            <ref role="3cqZAo" node="1vJkp1TWFh2" resolve="node" />
                          </node>
                          <node concept="1mIQ4w" id="4DPb1mRQvdC" role="2OqNvi">
                            <node concept="chp4Y" id="4DPb1mRQvdD" role="cj9EA">
                              <ref role="cht4Q" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cmrfG" id="63LEJF2oZWJ" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="1vJkp1TWFha" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="1kUX9T6kuuB" role="jymVt" />
            <node concept="3clFb_" id="1kUX9T6kuz7" role="jymVt">
              <property role="TrG5h" value="isApplicable" />
              <node concept="37vLTG" id="1kUX9T6kuz8" role="3clF46">
                <property role="TrG5h" value="node" />
                <node concept="3Tqbb2" id="1kUX9T6kzWQ" role="1tU5fm" />
                <node concept="2AHcQZ" id="1kUX9T6kuza" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3Tm1VV" id="1kUX9T6kuzc" role="1B3o_S" />
              <node concept="10P_77" id="1kUX9T6kuzd" role="3clF45" />
              <node concept="3clFbS" id="1kUX9T6kuzf" role="3clF47">
                <node concept="3clFbF" id="1kUX9T6kzEv" role="3cqZAp">
                  <node concept="22lmx$" id="1kUX9T6kBu3" role="3clFbG">
                    <node concept="2OqwBi" id="1kUX9T6kBVa" role="3uHU7w">
                      <node concept="37vLTw" id="1kUX9T6kBzS" role="2Oq$k0">
                        <ref role="3cqZAo" node="1kUX9T6kuz8" resolve="node" />
                      </node>
                      <node concept="1mIQ4w" id="1kUX9T6kCjb" role="2OqNvi">
                        <node concept="chp4Y" id="1kUX9T6kCov" role="cj9EA">
                          <ref role="cht4Q" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
                        </node>
                      </node>
                    </node>
                    <node concept="22lmx$" id="1kUX9T6k_Q_" role="3uHU7B">
                      <node concept="22lmx$" id="1kUX9T6k$yV" role="3uHU7B">
                        <node concept="2OqwBi" id="1kUX9T6kzT0" role="3uHU7B">
                          <node concept="37vLTw" id="1kUX9T6kzEu" role="2Oq$k0">
                            <ref role="3cqZAo" node="1kUX9T6kuz8" resolve="node" />
                          </node>
                          <node concept="1mIQ4w" id="1kUX9T6k$8m" role="2OqNvi">
                            <node concept="chp4Y" id="1kUX9T6k$dT" role="cj9EA">
                              <ref role="cht4Q" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1kUX9T6k$M_" role="3uHU7w">
                          <node concept="37vLTw" id="1kUX9T6k$By" role="2Oq$k0">
                            <ref role="3cqZAo" node="1kUX9T6kuz8" resolve="node" />
                          </node>
                          <node concept="1mIQ4w" id="1kUX9T6k_5R" role="2OqNvi">
                            <node concept="chp4Y" id="1kUX9T6k_p8" role="cj9EA">
                              <ref role="cht4Q" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1kUX9T6kAaf" role="3uHU7w">
                        <node concept="37vLTw" id="1kUX9T6k_VP" role="2Oq$k0">
                          <ref role="3cqZAo" node="1kUX9T6kuz8" resolve="node" />
                        </node>
                        <node concept="1mIQ4w" id="1kUX9T6kAOH" role="2OqNvi">
                          <node concept="chp4Y" id="1kUX9T6kB0F" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="1kUX9T6kuzg" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBj" id="1lhPVEAdJlx" role="2uRRBE">
      <node concept="3clFbS" id="1lhPVEAdJly" role="2VODD2">
        <node concept="3clFbF" id="1lhPVEAdJwk" role="3cqZAp">
          <node concept="2OqwBi" id="1lhPVEAdJBK" role="3clFbG">
            <node concept="2OqwBi" id="1r7YWVUoAKl" role="2Oq$k0">
              <node concept="10M0yZ" id="1r7YWVUoACv" role="2Oq$k0">
                <ref role="1PxDUh" to="8gms:~EditorProjectionControllerRegistry" resolve="EditorProjectionControllerRegistry" />
                <ref role="3cqZAo" to="8gms:~EditorProjectionControllerRegistry.Companion" resolve="Companion" />
              </node>
              <node concept="liA8E" id="1r7YWVUoAYG" role="2OqNvi">
                <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry$Companion.getInstance()" resolve="getInstance" />
              </node>
            </node>
            <node concept="liA8E" id="1lhPVEAdJPQ" role="2OqNvi">
              <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry.register(org.fbme.ide.platform.editor.EditorProjectionController$Factory)" resolve="register" />
              <node concept="2OqwBi" id="1lhPVEAdKo3" role="37wK5m">
                <node concept="2WthIp" id="1lhPVEAdKo6" role="2Oq$k0" />
                <node concept="2BZ7hE" id="1lhPVEAdKo8" role="2OqNvi">
                  <ref role="2WH_rO" node="1lhPVEAdo5q" resolve="myFactory" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="1lhPVEAdKsc" role="2uRRBF">
      <node concept="3clFbS" id="1lhPVEAdKsd" role="2VODD2">
        <node concept="3clFbF" id="1lhPVEAdKzS" role="3cqZAp">
          <node concept="2OqwBi" id="1lhPVEAdKzT" role="3clFbG">
            <node concept="2OqwBi" id="1r7YWVUoB15" role="2Oq$k0">
              <node concept="10M0yZ" id="1r7YWVUoAZN" role="2Oq$k0">
                <ref role="1PxDUh" to="8gms:~EditorProjectionControllerRegistry" resolve="EditorProjectionControllerRegistry" />
                <ref role="3cqZAo" to="8gms:~EditorProjectionControllerRegistry.Companion" resolve="Companion" />
              </node>
              <node concept="liA8E" id="1r7YWVUoB2s" role="2OqNvi">
                <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry$Companion.getInstance()" resolve="getInstance" />
              </node>
            </node>
            <node concept="liA8E" id="1lhPVEAdKzV" role="2OqNvi">
              <ref role="37wK5l" to="8gms:~EditorProjectionControllerRegistry.unregister(org.fbme.ide.platform.editor.EditorProjectionController$Factory)" resolve="unregister" />
              <node concept="2OqwBi" id="1lhPVEAdKzW" role="37wK5m">
                <node concept="2WthIp" id="1lhPVEAdKzX" role="2Oq$k0" />
                <node concept="2BZ7hE" id="1lhPVEAdKzY" role="2OqNvi">
                  <ref role="2WH_rO" node="1lhPVEAdo5q" resolve="myFactory" />
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
  <node concept="2uRRBy" id="1UP38w$52rt">
    <property role="TrG5h" value="FBME Watchers" />
    <node concept="2uRRBT" id="1UP38w$52ru" role="2uRRB$">
      <node concept="3clFbS" id="1UP38w$52rv" role="2VODD2">
        <node concept="3clFbF" id="1UP38w$52WR" role="3cqZAp">
          <node concept="2YIFZM" id="1UP38w$52Xh" role="3clFbG">
            <ref role="1Pybhc" to="6w4o:~WatcherFacade" resolve="WatcherFacade" />
            <ref role="37wK5l" to="6w4o:~WatcherFacade.register(jetbrains.mps.project.Project)" resolve="register" />
            <node concept="1KvdUw" id="1UP38w$52XD" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="1UP38w$530R" role="2uRRB_">
      <node concept="3clFbS" id="1UP38w$530S" role="2VODD2">
        <node concept="3clFbF" id="1UP38w$537F" role="3cqZAp">
          <node concept="2YIFZM" id="1UP38w$538d" role="3clFbG">
            <ref role="1Pybhc" to="6w4o:~WatcherFacade" resolve="WatcherFacade" />
            <ref role="37wK5l" to="6w4o:~WatcherFacade.unregister(jetbrains.mps.project.Project)" resolve="unregister" />
            <node concept="1KvdUw" id="1UP38w$538A" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

