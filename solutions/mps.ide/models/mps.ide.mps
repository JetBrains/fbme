<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ff24162f-099d-43d8-a0b8-3a06f2c9c0a1(mps.ide)">
  <persistence version="9" />
  <languages>
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="22e72e4c-0f69-46ce-8403-6750153aa615" name="jetbrains.mps.execution.configurations" version="1" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
    <use id="756e911c-3f1f-4a48-bdf5-a2ceb91b723c" name="jetbrains.mps.execution.settings" version="0" />
    <use id="f3347d8a-0e79-4f35-8ac9-1574f25c986f" name="jetbrains.mps.execution.commands" version="0" />
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="0" />
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ends" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence(MPS.Core/)" />
    <import index="fpme" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.workbench.dialogs.project.newproject(MPS.Workbench/)" />
    <import index="9ti4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.extensions(MPS.IDEA/)" />
    <import index="o04u" ref="r:f0179f23-61bb-4719-8c52-ffe510b63d71(mps.ide.debugger)" />
    <import index="vdx1" ref="r:9323096f-e22f-41d1-bc4e-66d2c0d81159(mps.ide.projectWizard)" />
    <import index="51vd" ref="r:61dddea3-21a4-4a11-920c-747c8c1e4777(mps.ide.persistence)" />
  </imports>
  <registry>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
        <child id="481983775135178844" name="fieldDeclaration" index="2uRRBG" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR">
        <property id="6862207549896125199" name="needInitConfig" index="3_H9TB" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
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
              <ref role="37wK5l" to="ends:~ModelFactoryService.getInstance():jetbrains.mps.extapi.persistence.ModelFactoryService" resolve="getInstance" />
              <ref role="1Pybhc" to="ends:~ModelFactoryService" resolve="ModelFactoryService" />
            </node>
            <node concept="liA8E" id="6kvdbYu8v0l" role="2OqNvi">
              <ref role="37wK5l" to="ends:~ModelFactoryService.register(org.jetbrains.mps.openapi.persistence.ModelFactory):void" resolve="register" />
              <node concept="10M0yZ" id="7pEplJkuzte" role="37wK5m">
                <ref role="3cqZAo" to="51vd:1_Zi$XmmA7o" resolve="MODEL_FACTORY" />
                <ref role="1PxDUh" to="51vd:1_Zi$Xmm_zm" resolve="IEC61499Persistence" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kvdbYu7vil" role="3cqZAp">
          <node concept="2YIFZM" id="6kvdbYu7vlk" role="3clFbG">
            <ref role="1Pybhc" to="51vd:1_Zi$Xmm_zm" resolve="IEC61499Persistence" />
            <ref role="37wK5l" to="51vd:6kvdbYu7uFn" resolve="reloadLibraries" />
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
              <ref role="37wK5l" to="ends:~ModelFactoryService.getInstance():jetbrains.mps.extapi.persistence.ModelFactoryService" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="6kvdbYu8$HK" role="2OqNvi">
              <ref role="37wK5l" to="ends:~ModelFactoryService.unregister(org.jetbrains.mps.openapi.persistence.ModelFactory):void" resolve="unregister" />
              <node concept="10M0yZ" id="7pEplJkuzwz" role="37wK5m">
                <ref role="3cqZAo" to="51vd:1_Zi$XmmA7o" resolve="MODEL_FACTORY" />
                <ref role="1PxDUh" to="51vd:1_Zi$Xmm_zm" resolve="IEC61499Persistence" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kvdbYu7vol" role="3cqZAp">
          <node concept="2YIFZM" id="6kvdbYu7vom" role="3clFbG">
            <ref role="1Pybhc" to="51vd:1_Zi$Xmm_zm" resolve="IEC61499Persistence" />
            <ref role="37wK5l" to="51vd:6kvdbYu7uFn" resolve="reloadLibraries" />
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
                <ref role="37wK5l" to="9ti4:~Extensions.getRootArea():com.intellij.openapi.extensions.ExtensionsArea" resolve="getRootArea" />
                <ref role="1Pybhc" to="9ti4:~Extensions" resolve="Extensions" />
              </node>
              <node concept="liA8E" id="7OBD32IhMUt" role="2OqNvi">
                <ref role="37wK5l" to="9ti4:~ExtensionsArea.getExtensionPoint(com.intellij.openapi.extensions.ExtensionPointName):com.intellij.openapi.extensions.ExtensionPoint" resolve="getExtensionPoint" />
                <node concept="10M0yZ" id="7OBD32Ijjl2" role="37wK5m">
                  <ref role="3cqZAo" to="fpme:~ProjectTemplatesGroup.EP_NAME" resolve="EP_NAME" />
                  <ref role="1PxDUh" to="fpme:~ProjectTemplatesGroup" resolve="ProjectTemplatesGroup" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7OBD32IhQMM" role="2OqNvi">
              <ref role="37wK5l" to="9ti4:~ExtensionPoint.registerExtension(java.lang.Object):void" resolve="registerExtension" />
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
                <ref role="37wK5l" to="9ti4:~Extensions.getRootArea():com.intellij.openapi.extensions.ExtensionsArea" resolve="getRootArea" />
                <ref role="1Pybhc" to="9ti4:~Extensions" resolve="Extensions" />
              </node>
              <node concept="liA8E" id="7OBD32IhR1k" role="2OqNvi">
                <ref role="37wK5l" to="9ti4:~ExtensionsArea.getExtensionPoint(com.intellij.openapi.extensions.ExtensionPointName):com.intellij.openapi.extensions.ExtensionPoint" resolve="getExtensionPoint" />
                <node concept="10M0yZ" id="7OBD32Ijjpu" role="37wK5m">
                  <ref role="3cqZAo" to="fpme:~ProjectTemplatesGroup.EP_NAME" resolve="EP_NAME" />
                  <ref role="1PxDUh" to="fpme:~ProjectTemplatesGroup" resolve="ProjectTemplatesGroup" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7OBD32IhR1m" role="2OqNvi">
              <ref role="37wK5l" to="9ti4:~ExtensionPoint.unregisterExtension(java.lang.Object):void" resolve="unregisterExtension" />
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
</model>

