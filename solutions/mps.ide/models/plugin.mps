<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d7ebf872-1ce9-4246-93f2-9bff5c1173e6(mps.ide.plugin)">
  <persistence version="9" />
  <languages>
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="2" />
    <use id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="13" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="o04u" ref="r:f0179f23-61bb-4719-8c52-ffe510b63d71(mps.ide.debugger)" />
    <import index="de0p" ref="r:d7cab6e9-7043-4e10-b77e-569e7736ba5e(mps.ide.editor)" />
    <import index="90d" ref="r:421d64ed-8024-497f-aeab-8bddeb389dd2(jetbrains.mps.lang.extension.methods)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(mps.lang.iec61499.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension">
      <concept id="3729007189729192406" name="jetbrains.mps.lang.extension.structure.ExtensionPointDeclaration" flags="ng" index="vrV6u">
        <child id="8029776554053057803" name="objectType" index="luc8K" />
      </concept>
      <concept id="126958800891274162" name="jetbrains.mps.lang.extension.structure.Extension" flags="ig" index="1lYeZD">
        <reference id="126958800891274597" name="extensionPoint" index="1lYe$Y" />
      </concept>
    </language>
    <language id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl">
      <concept id="3751132065236767083" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.DependentTypeInstance" flags="ig" index="q3mfm">
        <reference id="3751132065236767084" name="decl" index="q3mfh" />
        <reference id="9097849371505568270" name="point" index="1QQUv3" />
      </concept>
      <concept id="3751132065236767060" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodInstance" flags="ig" index="q3mfD">
        <reference id="19209059688387895" name="decl" index="2VtyIY" />
      </concept>
      <concept id="6478870542308703666" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MemberPlaceholder" flags="ng" index="3tTeZs">
        <property id="6478870542308703667" name="caption" index="3tTeZt" />
        <reference id="6478870542308703669" name="decl" index="3tTeZr" />
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
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="vrV6u" id="42vv4xszEpV">
    <property role="TrG5h" value="DeviceConnectorEP" />
    <node concept="3uibUv" id="42vv4xszHdM" role="luc8K">
      <ref role="3uigEE" to="o04u:7pEplJkHbCZ" resolve="DeviceConnector" />
    </node>
  </node>
  <node concept="vrV6u" id="7Y8B9wpjmV_">
    <property role="TrG5h" value="HeaderedEditorProjectionControllerEP" />
    <node concept="3uibUv" id="7Y8B9wpl23z" role="luc8K">
      <ref role="3uigEE" to="de0p:7Y8B9wpl1pB" resolve="HeaderedEditorProjectionController.Factory" />
    </node>
  </node>
  <node concept="1lYeZD" id="7Y8B9wpjmYo">
    <property role="TrG5h" value="SourceProjectionExtension" />
    <ref role="1lYe$Y" node="7Y8B9wpjmV_" resolve="HeaderedEditorProjectionControllerEP" />
    <node concept="3Tm1VV" id="7Y8B9wpjmYp" role="1B3o_S" />
    <node concept="2tJIrI" id="7Y8B9wpjmYq" role="jymVt" />
    <node concept="3tTeZs" id="7Y8B9wpjmYr" role="jymVt">
      <property role="3tTeZt" value="activate" />
      <ref role="3tTeZr" to="90d:3zLwYDe0CPy" resolve="activate" />
    </node>
    <node concept="3tTeZs" id="7Y8B9wpjmYs" role="jymVt">
      <property role="3tTeZt" value="deactivate" />
      <ref role="3tTeZr" to="90d:3zLwYDe0BDO" resolve="deactivate" />
    </node>
    <node concept="2tJIrI" id="7Y8B9wpjmYt" role="jymVt" />
    <node concept="q3mfD" id="7Y8B9wpjmYu" role="jymVt">
      <property role="TrG5h" value="get" />
      <ref role="2VtyIY" to="90d:3zLwYDe0svr" resolve="get" />
      <node concept="3Tm1VV" id="7Y8B9wpjmYw" role="1B3o_S" />
      <node concept="3clFbS" id="7Y8B9wpjmYy" role="3clF47">
        <node concept="3clFbF" id="7Y8B9wpl4ev" role="3cqZAp">
          <node concept="37vLTw" id="7Y8B9wpl4xx" role="3clFbG">
            <ref role="3cqZAo" node="7Y8B9wpl4BP" resolve="myFactory" />
          </node>
        </node>
      </node>
      <node concept="q3mfm" id="7Y8B9wpjmYz" role="3clF45">
        <ref role="q3mfh" to="90d:3zLwYDe0sv$" />
        <ref role="1QQUv3" node="7Y8B9wpjmYu" resolve="get" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpl5gS" role="jymVt" />
    <node concept="312cEg" id="7Y8B9wpl4BP" role="jymVt">
      <property role="TrG5h" value="myFactory" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Y8B9wpl4BT" role="1tU5fm">
        <ref role="3uigEE" to="de0p:7Y8B9wpl1pB" resolve="HeaderedEditorProjectionController.Factory" />
      </node>
      <node concept="2ShNRf" id="7Y8B9wpl4BU" role="33vP2m">
        <node concept="YeOm9" id="7Y8B9wpl4BV" role="2ShVmc">
          <node concept="1Y3b0j" id="7Y8B9wpl4BW" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="de0p:7Y8B9wpl1pB" resolve="HeaderedEditorProjectionController.Factory" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
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
              <node concept="3uibUv" id="1vJkp1TWFh1" role="3clF45">
                <ref role="3uigEE" to="de0p:7Y8B9wpj6Z6" resolve="HeaderedEditorProjectionController" />
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
                  <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                </node>
                <node concept="2AHcQZ" id="1vJkp1TWFh7" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="1vJkp1TWFh9" role="3clF47">
                <node concept="3clFbF" id="7Y8B9wpl4Jg" role="3cqZAp">
                  <node concept="2ShNRf" id="7Y8B9wpl4Ja" role="3clFbG">
                    <node concept="1pGfFk" id="1QSEqLhBmkn" role="2ShVmc">
                      <ref role="37wK5l" to="de0p:7ii99HMn_Fj" resolve="SimpleHeaderedEditorProjectionController" />
                      <node concept="37vLTw" id="1vJkp1TWFyC" role="37wK5m">
                        <ref role="3cqZAo" node="1vJkp1TWFh2" resolve="node" />
                      </node>
                      <node concept="Xl_RD" id="7ii99HMnJii" role="37wK5m">
                        <property role="Xl_RC" value="Source" />
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
      <node concept="3Tm6S6" id="7Y8B9wpl4BS" role="1B3o_S" />
    </node>
  </node>
</model>

