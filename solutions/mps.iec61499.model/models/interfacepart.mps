<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c95c1d38-95d5-42ab-aead-d308fc2b6566(mps.iec61499.model.interfacepart)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(mps.lang.iec61499.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tphl" ref="r:633df809-762d-4f16-bc5b-7387c85c4bd1(common.iec61499.model.fbnetwork)" />
    <import index="2xsi" ref="r:65444cdf-4c94-4902-99af-ca11b363595e(common.iec61499.model.interfacepart)" />
    <import index="rwq3" ref="r:c1a93deb-50a3-4728-ba16-8df97b360951(mps.iec61499.model.fbnetwork)" />
    <import index="6ehz" ref="r:cb9dc0d6-4720-4b3b-b2e2-f2ed5e59d4e7(common.iec61499.model.ecc)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="lv7i" ref="r:5472e35e-027d-42bb-bcce-32726ec4c9a9(mps.iec61499.model.ecc)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
      </concept>
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1225711141656" name="jetbrains.mps.baseLanguage.collections.structure.ListElementAccessExpression" flags="nn" index="1y4W85">
        <child id="1225711182005" name="list" index="1y566C" />
        <child id="1225711191269" name="index" index="1y58nS" />
      </concept>
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="312cEu" id="1R4IoyQ$gqL">
    <property role="TrG5h" value="CompositeFBTypeByNode" />
    <node concept="3Tm1VV" id="1R4IoyQ$gqM" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQA3C1" role="1zkMxy">
      <ref role="3uigEE" node="1R4IoyQ_Pw7" resolve="FBTypeDescriptorWithAdaptersByNode" />
      <node concept="3Tqbb2" id="1R4IoyQA3Ct" role="11_B2D">
        <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQA3GU" role="jymVt" />
    <node concept="3uibUv" id="1R4IoyQA3Hp" role="EKbjA">
      <ref role="3uigEE" to="2xsi:1R4IoyQwdvz" resolve="CompositeFBType" />
    </node>
    <node concept="3clFbW" id="1R4IoyQA3I2" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQA3I3" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQA3I4" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQA3I6" role="3clF47">
        <node concept="XkiVB" id="1R4IoyQA3I8" role="3cqZAp">
          <ref role="37wK5l" node="1R4IoyQA1jy" resolve="FBTypeDescriptorWithAdaptersByNode" />
          <node concept="37vLTw" id="1R4IoyQA3Ic" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQA3I9" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQA3I9" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R4IoyQA3SS" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQA3Wm" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQGq49" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="1R4IoyQGq4b" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQGq4c" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="3clFbS" id="1R4IoyQGq4g" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQGq75" role="3cqZAp">
          <node concept="2ShNRf" id="1R4IoyQGq6Z" role="3clFbG">
            <node concept="1pGfFk" id="1R4IoyQGqnX" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="1R4IoyQGqph" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQGq4h" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1R4IoyQ_1A_">
    <property role="TrG5h" value="FBTypeDescriptorByNode" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="1R4IoyQ_1EN" role="jymVt" />
    <node concept="312cEg" id="1R4IoyQ_1Yn" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="1R4IoyQ_1Yc" role="1B3o_S" />
      <node concept="16syzq" id="1R4IoyQ_1Y2" role="1tU5fm">
        <ref role="16sUi3" node="1R4IoyQ_1BB" resolve="T" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQ_1YE" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQ_Trz" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQ_Tr$" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQ_Tr_" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQ_TrB" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQ_TrF" role="3cqZAp">
          <node concept="37vLTI" id="1R4IoyQ_TrH" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQ_TrO" role="37vLTx">
              <ref role="3cqZAo" node="1R4IoyQ_TrE" resolve="node" />
            </node>
            <node concept="37vLTw" id="1R4IoyQ_WbX" role="37vLTJ">
              <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQ_TrE" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="16syzq" id="1R4IoyQ_TrD" role="1tU5fm">
          <ref role="16sUi3" node="1R4IoyQ_1BB" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQ_RKv" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKbji4" role="jymVt">
      <property role="TrG5h" value="getEventInputPorts" />
      <node concept="3Tm1VV" id="3IX4BsKbji5" role="1B3o_S" />
      <node concept="3uibUv" id="3IX4BsKbji6" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3IX4BsKbji7" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="3IX4BsKbji8" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKbji9" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKbjia" role="3clFbG">
            <node concept="2OqwBi" id="3IX4BsKbjib" role="2Oq$k0">
              <node concept="2OqwBi" id="3IX4BsKbjic" role="2Oq$k0">
                <node concept="37vLTw" id="1R4IoyQ_35R" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="3IX4BsKbjie" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                </node>
              </node>
              <node concept="3$u5V9" id="3IX4BsKbjif" role="2OqNvi">
                <node concept="1bVj0M" id="3IX4BsKbjig" role="23t8la">
                  <node concept="3clFbS" id="3IX4BsKbjih" role="1bW5cS">
                    <node concept="3clFbF" id="3IX4BsKbjii" role="3cqZAp">
                      <node concept="2ShNRf" id="3IX4BsKbjij" role="3clFbG">
                        <node concept="1pGfFk" id="3IX4BsKbjik" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortDescriptor" />
                          <node concept="2OqwBi" id="3IX4BsKbjil" role="37wK5m">
                            <node concept="37vLTw" id="3IX4BsKbjim" role="2Oq$k0">
                              <ref role="3cqZAo" node="3IX4BsKbjiq" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="3IX4BsKbjin" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="Rm8GO" id="3IX4BsKbjip" role="37wK5m">
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                          </node>
                          <node concept="2OqwBi" id="3DiEZ8TNl2D" role="37wK5m">
                            <node concept="37vLTw" id="3DiEZ8TNkFt" role="2Oq$k0">
                              <ref role="3cqZAo" node="3IX4BsKbjiq" resolve="it" />
                            </node>
                            <node concept="2bSWHS" id="3DiEZ8TNpAY" role="2OqNvi" />
                          </node>
                          <node concept="3clFbT" id="3DiEZ8TNyhi" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3IX4BsKbjiq" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3IX4BsKbjir" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="3IX4BsKbjis" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKbjit" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKbkAE" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKbjiu" role="jymVt">
      <property role="TrG5h" value="getEventOutputPorts" />
      <node concept="3Tm1VV" id="3IX4BsKbjiv" role="1B3o_S" />
      <node concept="3uibUv" id="3IX4BsKbjiw" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3IX4BsKbjix" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="3IX4BsKbjiy" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKbjiz" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKbji$" role="3clFbG">
            <node concept="2OqwBi" id="3IX4BsKbji_" role="2Oq$k0">
              <node concept="2OqwBi" id="3IX4BsKbjiA" role="2Oq$k0">
                <node concept="3Tsc0h" id="3IX4BsKbjiC" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                </node>
                <node concept="37vLTw" id="1R4IoyQ_3ym" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                </node>
              </node>
              <node concept="3$u5V9" id="3IX4BsKbjiD" role="2OqNvi">
                <node concept="1bVj0M" id="3IX4BsKbjiE" role="23t8la">
                  <node concept="3clFbS" id="3IX4BsKbjiF" role="1bW5cS">
                    <node concept="3clFbF" id="3IX4BsKbjiG" role="3cqZAp">
                      <node concept="2ShNRf" id="3IX4BsKbjiH" role="3clFbG">
                        <node concept="1pGfFk" id="3IX4BsKbjiI" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortDescriptor" />
                          <node concept="2OqwBi" id="3IX4BsKbjiJ" role="37wK5m">
                            <node concept="37vLTw" id="3IX4BsKbjiK" role="2Oq$k0">
                              <ref role="3cqZAo" node="3IX4BsKbjiO" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="3IX4BsKbjiL" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="Rm8GO" id="3IX4BsKbjiN" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm2Y" resolve="EVENT" />
                          </node>
                          <node concept="2OqwBi" id="3DiEZ8TNqiu" role="37wK5m">
                            <node concept="37vLTw" id="3DiEZ8TNqiv" role="2Oq$k0">
                              <ref role="3cqZAo" node="3IX4BsKbjiO" resolve="it" />
                            </node>
                            <node concept="2bSWHS" id="3DiEZ8TNqiw" role="2OqNvi" />
                          </node>
                          <node concept="3clFbT" id="3DiEZ8TNyKa" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3IX4BsKbjiO" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3IX4BsKbjiP" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="3IX4BsKbjiQ" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKbjiR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKblJc" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKbjiS" role="jymVt">
      <property role="TrG5h" value="getDataInputPorts" />
      <node concept="3Tm1VV" id="3IX4BsKbjiT" role="1B3o_S" />
      <node concept="3uibUv" id="3IX4BsKbjiU" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3IX4BsKbjiV" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="3IX4BsKbjiW" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKbjiX" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKbjiY" role="3clFbG">
            <node concept="2OqwBi" id="3IX4BsKbjiZ" role="2Oq$k0">
              <node concept="2OqwBi" id="3IX4BsKbjj0" role="2Oq$k0">
                <node concept="3Tsc0h" id="3IX4BsKbjj2" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                </node>
                <node concept="37vLTw" id="1R4IoyQ_3TM" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                </node>
              </node>
              <node concept="3$u5V9" id="3IX4BsKbjj3" role="2OqNvi">
                <node concept="1bVj0M" id="3IX4BsKbjj4" role="23t8la">
                  <node concept="3clFbS" id="3IX4BsKbjj5" role="1bW5cS">
                    <node concept="3clFbF" id="3IX4BsKbjj6" role="3cqZAp">
                      <node concept="2ShNRf" id="3IX4BsKbjj7" role="3clFbG">
                        <node concept="1pGfFk" id="3IX4BsKbjj8" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortDescriptor" />
                          <node concept="2OqwBi" id="3IX4BsKbjj9" role="37wK5m">
                            <node concept="37vLTw" id="3IX4BsKbjja" role="2Oq$k0">
                              <ref role="3cqZAo" node="3IX4BsKbjje" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="3IX4BsKbjjb" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="Rm8GO" id="3IX4BsKbjjd" role="37wK5m">
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                          </node>
                          <node concept="2OqwBi" id="3DiEZ8TNqxH" role="37wK5m">
                            <node concept="37vLTw" id="3DiEZ8TNqxI" role="2Oq$k0">
                              <ref role="3cqZAo" node="3IX4BsKbjje" resolve="it" />
                            </node>
                            <node concept="2bSWHS" id="3DiEZ8TNqxJ" role="2OqNvi" />
                          </node>
                          <node concept="3clFbT" id="3DiEZ8TNzwQ" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3IX4BsKbjje" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3IX4BsKbjjf" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="3IX4BsKbjjg" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKbjjh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKbmRJ" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsKbjji" role="jymVt">
      <property role="TrG5h" value="getDataOutputPorts" />
      <node concept="3Tm1VV" id="3IX4BsKbjjj" role="1B3o_S" />
      <node concept="3uibUv" id="3IX4BsKbjjk" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3IX4BsKbjjl" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="3IX4BsKbjjm" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKbjjn" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKbjjo" role="3clFbG">
            <node concept="2OqwBi" id="3IX4BsKbjjp" role="2Oq$k0">
              <node concept="2OqwBi" id="3IX4BsKbjjq" role="2Oq$k0">
                <node concept="3Tsc0h" id="3IX4BsKbjjs" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                </node>
                <node concept="37vLTw" id="1R4IoyQ_4kg" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                </node>
              </node>
              <node concept="3$u5V9" id="3IX4BsKbjjt" role="2OqNvi">
                <node concept="1bVj0M" id="3IX4BsKbjju" role="23t8la">
                  <node concept="3clFbS" id="3IX4BsKbjjv" role="1bW5cS">
                    <node concept="3clFbF" id="3IX4BsKbjjw" role="3cqZAp">
                      <node concept="2ShNRf" id="3IX4BsKbjjx" role="3clFbG">
                        <node concept="1pGfFk" id="3IX4BsKbjjy" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortDescriptor" />
                          <node concept="2OqwBi" id="3IX4BsKbjjz" role="37wK5m">
                            <node concept="37vLTw" id="3IX4BsKbjj$" role="2Oq$k0">
                              <ref role="3cqZAo" node="3IX4BsKbjjC" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="3IX4BsKbjj_" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="Rm8GO" id="3IX4BsKbjjB" role="37wK5m">
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm4$" resolve="DATA" />
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                          </node>
                          <node concept="2OqwBi" id="3DiEZ8TNqJx" role="37wK5m">
                            <node concept="37vLTw" id="3DiEZ8TNqJy" role="2Oq$k0">
                              <ref role="3cqZAo" node="3IX4BsKbjjC" resolve="it" />
                            </node>
                            <node concept="2bSWHS" id="3DiEZ8TNqJz" role="2OqNvi" />
                          </node>
                          <node concept="3clFbT" id="3DiEZ8TNzgg" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="3IX4BsKbjjC" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="3IX4BsKbjjD" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="3IX4BsKbjjE" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsKbjjF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BNRYEv" role="jymVt" />
    <node concept="3clFb_" id="6LU90BNRYP_" role="jymVt">
      <property role="TrG5h" value="getSocketPorts" />
      <node concept="3Tm1VV" id="6LU90BNRYPA" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BNRYPB" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BNRYPC" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BNRYPD" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQ_8Hv" role="3cqZAp">
          <node concept="2ShNRf" id="1R4IoyQ_8Hw" role="3clFbG">
            <node concept="1pGfFk" id="1R4IoyQ_8Hx" role="2ShVmc">
              <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
              <node concept="3uibUv" id="1R4IoyQ_8Hy" role="1pMfVU">
                <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BNRYPY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BNRYPZ" role="jymVt" />
    <node concept="3clFb_" id="6LU90BNRYQ0" role="jymVt">
      <property role="TrG5h" value="getPlugPorts" />
      <node concept="3Tm1VV" id="6LU90BNRYQ1" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BNRYQ2" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BNRYQ3" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="6LU90BNRYQ4" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQ_6xz" role="3cqZAp">
          <node concept="2ShNRf" id="1R4IoyQ_6xv" role="3clFbG">
            <node concept="1pGfFk" id="1R4IoyQ_82l" role="2ShVmc">
              <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
              <node concept="3uibUv" id="1R4IoyQ_8md" role="1pMfVU">
                <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6LU90BNRYQp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQ_9ab" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQ_9NW" role="jymVt">
      <property role="TrG5h" value="getAssociatedVariablesForInputEvent" />
      <node concept="3Tm1VV" id="1R4IoyQ_9NY" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQ_9NZ" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQ_9O0" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQ_9O1" role="3clF46">
        <property role="TrG5h" value="eventNumber" />
        <node concept="10Oyi0" id="1R4IoyQ_9O2" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1R4IoyQ_9O3" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQ_dxK" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQ_yUm" role="3clFbG">
            <node concept="2OqwBi" id="1R4IoyQ_wi0" role="2Oq$k0">
              <node concept="2OqwBi" id="1R4IoyQ_q3L" role="2Oq$k0">
                <node concept="1y4W85" id="1R4IoyQ_phZ" role="2Oq$k0">
                  <node concept="37vLTw" id="1R4IoyQ_pFe" role="1y58nS">
                    <ref role="3cqZAo" node="1R4IoyQ_9O1" resolve="eventNumber" />
                  </node>
                  <node concept="2OqwBi" id="1R4IoyQ_dYt" role="1y566C">
                    <node concept="37vLTw" id="1R4IoyQ_dxJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                    </node>
                    <node concept="3Tsc0h" id="1R4IoyQ_eq5" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                    </node>
                  </node>
                </node>
                <node concept="3Tsc0h" id="1R4IoyQ_qum" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
                </node>
              </node>
              <node concept="3$u5V9" id="1R4IoyQ_xP1" role="2OqNvi">
                <node concept="1bVj0M" id="1R4IoyQ_xP3" role="23t8la">
                  <node concept="3clFbS" id="1R4IoyQ_xP4" role="1bW5cS">
                    <node concept="3clFbF" id="1R4IoyQ_y3$" role="3cqZAp">
                      <node concept="2OqwBi" id="1R4IoyQ_yhb" role="3clFbG">
                        <node concept="37vLTw" id="1R4IoyQ_y3z" role="2Oq$k0">
                          <ref role="3cqZAo" node="1R4IoyQ_xP5" resolve="it" />
                        </node>
                        <node concept="2bSWHS" id="1R4IoyQ_yzr" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1R4IoyQ_xP5" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1R4IoyQ_xP6" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="1R4IoyQ_K6m" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQ_9O4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1R4IoyQ_9O7" role="jymVt">
      <property role="TrG5h" value="getAssociatedVariablesForOutputEvent" />
      <node concept="3Tm1VV" id="1R4IoyQ_9O9" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQ_9Oa" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQ_9Ob" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQ_9Oc" role="3clF46">
        <property role="TrG5h" value="eventNumber" />
        <node concept="10Oyi0" id="1R4IoyQ_9Od" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1R4IoyQ_9Oe" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQ_Kj1" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQ_Kj2" role="3clFbG">
            <node concept="2OqwBi" id="1R4IoyQ_Kj3" role="2Oq$k0">
              <node concept="2OqwBi" id="1R4IoyQ_Kj4" role="2Oq$k0">
                <node concept="1y4W85" id="1R4IoyQ_Kj5" role="2Oq$k0">
                  <node concept="37vLTw" id="1R4IoyQ_Kj6" role="1y58nS">
                    <ref role="3cqZAo" node="1R4IoyQ_9Oc" resolve="eventNumber" />
                  </node>
                  <node concept="2OqwBi" id="1R4IoyQ_Kj7" role="1y566C">
                    <node concept="37vLTw" id="1R4IoyQ_Kj8" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                    </node>
                    <node concept="3Tsc0h" id="1R4IoyQ_Oux" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                    </node>
                  </node>
                </node>
                <node concept="3Tsc0h" id="1R4IoyQ_Kja" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
                </node>
              </node>
              <node concept="3$u5V9" id="1R4IoyQ_Kjb" role="2OqNvi">
                <node concept="1bVj0M" id="1R4IoyQ_Kjc" role="23t8la">
                  <node concept="3clFbS" id="1R4IoyQ_Kjd" role="1bW5cS">
                    <node concept="3clFbF" id="1R4IoyQ_Kje" role="3cqZAp">
                      <node concept="2OqwBi" id="1R4IoyQ_Kjf" role="3clFbG">
                        <node concept="37vLTw" id="1R4IoyQ_Kjg" role="2Oq$k0">
                          <ref role="3cqZAo" node="1R4IoyQ_Kji" resolve="it" />
                        </node>
                        <node concept="2bSWHS" id="1R4IoyQ_Kjh" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1R4IoyQ_Kji" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1R4IoyQ_Kjj" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="1R4IoyQ_Kjk" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQ_9Of" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3IX4BsKa0o3" role="jymVt" />
    <node concept="3clFb_" id="3IX4BsK9Wq5" role="jymVt">
      <property role="TrG5h" value="getTypeName" />
      <node concept="3Tm1VV" id="3IX4BsK9Wq7" role="1B3o_S" />
      <node concept="3uibUv" id="3IX4BsK9Wq8" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3IX4BsK9Wqb" role="3clF47">
        <node concept="3clFbF" id="3IX4BsKb7NJ" role="3cqZAp">
          <node concept="2OqwBi" id="3IX4BsKbdnV" role="3clFbG">
            <node concept="3TrcHB" id="3IX4BsKbhOY" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
            <node concept="37vLTw" id="1R4IoyQ_5JX" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3IX4BsK9Wqc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQJhp6" role="jymVt" />
    <node concept="2YIFZL" id="1R4IoyQJjh9" role="jymVt">
      <property role="TrG5h" value="create" />
      <node concept="3clFbS" id="1R4IoyQJjhc" role="3clF47">
        <node concept="3clFbJ" id="1R4IoyQJkhI" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQJkqF" role="3clFbw">
            <node concept="37vLTw" id="1R4IoyQJkij" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJk6t" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="1R4IoyQJkKy" role="2OqNvi">
              <node concept="chp4Y" id="1R4IoyQJkMz" role="cj9EA">
                <ref role="cht4Q" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1R4IoyQJkhK" role="3clFbx">
            <node concept="3cpWs6" id="1R4IoyQJkQY" role="3cqZAp">
              <node concept="2ShNRf" id="1R4IoyQJkRk" role="3cqZAk">
                <node concept="1pGfFk" id="1R4IoyQJl3C" role="2ShVmc">
                  <ref role="37wK5l" node="1R4IoyQHbEt" resolve="BasicFBTypeByNode" />
                  <node concept="1PxgMI" id="1R4IoyQJmTx" role="37wK5m">
                    <node concept="chp4Y" id="1R4IoyQJn9a" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQJmt8" role="1m5AlR">
                      <ref role="3cqZAo" node="1R4IoyQJk6t" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1R4IoyQJnoZ" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQJnp0" role="3clFbw">
            <node concept="37vLTw" id="1R4IoyQJnp1" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJk6t" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="1R4IoyQJnp2" role="2OqNvi">
              <node concept="chp4Y" id="1R4IoyQJnJ7" role="cj9EA">
                <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1R4IoyQJnp4" role="3clFbx">
            <node concept="3cpWs6" id="1R4IoyQJnp5" role="3cqZAp">
              <node concept="2ShNRf" id="1R4IoyQJnp6" role="3cqZAk">
                <node concept="1pGfFk" id="1R4IoyQJnp7" role="2ShVmc">
                  <ref role="37wK5l" node="1R4IoyQA3I2" resolve="CompositeFBTypeByNode" />
                  <node concept="1PxgMI" id="1R4IoyQJnp8" role="37wK5m">
                    <node concept="chp4Y" id="1R4IoyQJohF" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQJnpa" role="1m5AlR">
                      <ref role="3cqZAo" node="1R4IoyQJk6t" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1R4IoyQJoKD" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQJoKE" role="3clFbw">
            <node concept="37vLTw" id="1R4IoyQJoKF" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJk6t" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="1R4IoyQJoKG" role="2OqNvi">
              <node concept="chp4Y" id="1R4IoyQJpcp" role="cj9EA">
                <ref role="cht4Q" to="xiqq:23XkovVSBlc" resolve="ServiceInterfaceFBTypeDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1R4IoyQJoKI" role="3clFbx">
            <node concept="3cpWs6" id="1R4IoyQJoKJ" role="3cqZAp">
              <node concept="2ShNRf" id="1R4IoyQJoKK" role="3cqZAk">
                <node concept="1pGfFk" id="1R4IoyQJoKL" role="2ShVmc">
                  <ref role="37wK5l" node="1R4IoyQJsG$" resolve="ServiceInterfaceFBTypeByNode" />
                  <node concept="1PxgMI" id="1R4IoyQJoKM" role="37wK5m">
                    <node concept="chp4Y" id="1R4IoyQJprK" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:23XkovVSBlc" resolve="ServiceInterfaceFBTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQJoKO" role="1m5AlR">
                      <ref role="3cqZAo" node="1R4IoyQJk6t" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1R4IoyQN67a" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQN67b" role="3clFbw">
            <node concept="37vLTw" id="1R4IoyQN67c" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJk6t" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="1R4IoyQN67d" role="2OqNvi">
              <node concept="chp4Y" id="1R4IoyQN6HW" role="cj9EA">
                <ref role="cht4Q" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1R4IoyQN67f" role="3clFbx">
            <node concept="3cpWs6" id="1R4IoyQN67g" role="3cqZAp">
              <node concept="2ShNRf" id="1R4IoyQN67h" role="3cqZAk">
                <node concept="1pGfFk" id="1R4IoyQN67i" role="2ShVmc">
                  <ref role="37wK5l" node="1R4IoyQJyUq" resolve="SubapplicationTypeByNode" />
                  <node concept="1PxgMI" id="1R4IoyQN67j" role="37wK5m">
                    <node concept="chp4Y" id="1R4IoyQN7Du" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQN67l" role="1m5AlR">
                      <ref role="3cqZAo" node="1R4IoyQJk6t" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1R4IoyQN8e$" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQN8e_" role="3clFbw">
            <node concept="37vLTw" id="1R4IoyQN8eA" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJk6t" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="1R4IoyQN8eB" role="2OqNvi">
              <node concept="chp4Y" id="1R4IoyQN8U6" role="cj9EA">
                <ref role="cht4Q" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1R4IoyQN8eD" role="3clFbx">
            <node concept="3cpWs6" id="1R4IoyQN8eE" role="3cqZAp">
              <node concept="2ShNRf" id="1R4IoyQN8eF" role="3cqZAk">
                <node concept="1pGfFk" id="1R4IoyQN8eG" role="2ShVmc">
                  <ref role="37wK5l" node="1R4IoyQKaxv" resolve="AdapterTypeByNode" />
                  <node concept="1PxgMI" id="1R4IoyQN8eH" role="37wK5m">
                    <node concept="chp4Y" id="1R4IoyQN9gG" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQN8eJ" role="1m5AlR">
                      <ref role="3cqZAo" node="1R4IoyQJk6t" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1R4IoyQJtNt" role="3cqZAp">
          <node concept="10Nm6u" id="1R4IoyQJueR" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyQJihs" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJj6y" role="3clF45">
        <ref role="3uigEE" to="2xsi:1R4IoyQ$Zv8" resolve="FBTypeDescriptor" />
      </node>
      <node concept="37vLTG" id="1R4IoyQJk6t" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R4IoyQJk6s" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1JYTWWzyYzW" role="jymVt" />
    <node concept="3clFb_" id="1JYTWWzyZUR" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="1JYTWWzyZUT" role="1B3o_S" />
      <node concept="3uibUv" id="1JYTWWzyZUU" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3clFbS" id="1JYTWWzyZUV" role="3clF47">
        <node concept="3clFbF" id="1JYTWWzz1kZ" role="3cqZAp">
          <node concept="37vLTw" id="1JYTWWzz1kY" role="3clFbG">
            <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1JYTWWzyZUW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1R4IoyQ_1AA" role="1B3o_S" />
    <node concept="16euLQ" id="1R4IoyQ_1BB" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3Tqbb2" id="1R4IoyQ_1CU" role="3ztrMU">
        <ref role="ehGHo" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
      </node>
    </node>
    <node concept="3uibUv" id="1R4IoyQ_1E_" role="EKbjA">
      <ref role="3uigEE" to="2xsi:1R4IoyQ$Zv8" resolve="FBTypeDescriptor" />
    </node>
    <node concept="3uibUv" id="1JYTWWzyXeC" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="HasNode" />
    </node>
  </node>
  <node concept="312cEu" id="1R4IoyQ_Pw7">
    <property role="TrG5h" value="FBTypeDescriptorWithAdaptersByNode" />
    <node concept="2tJIrI" id="1R4IoyQ_XwY" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQA1jy" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQA1jz" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQA1j$" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQA1jA" role="3clF47">
        <node concept="XkiVB" id="1R4IoyQA1jC" role="3cqZAp">
          <ref role="37wK5l" node="1R4IoyQ_Trz" resolve="FBTypeDescriptorByNode" />
          <node concept="37vLTw" id="1R4IoyQA1jG" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQA1jD" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQA1jD" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="16syzq" id="1R4IoyQA1jF" role="1tU5fm">
          <ref role="16sUi3" node="1R4IoyQ_QUe" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQA0W0" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQ_XNt" role="jymVt">
      <property role="TrG5h" value="getSocketPorts" />
      <node concept="3Tm1VV" id="1R4IoyQ_XNu" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQ_XNv" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQ_XNw" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQ_XNU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="1R4IoyQ_XNV" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQ_Z5M" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BNRYPF" role="3clFbG">
            <node concept="2OqwBi" id="6LU90BNRYPG" role="2Oq$k0">
              <node concept="2OqwBi" id="6LU90BNRYPH" role="2Oq$k0">
                <node concept="3Tsc0h" id="6LU90BNRYPI" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                </node>
                <node concept="37vLTw" id="1R4IoyQ_4Fq" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                </node>
              </node>
              <node concept="3$u5V9" id="6LU90BNRYPK" role="2OqNvi">
                <node concept="1bVj0M" id="6LU90BNRYPL" role="23t8la">
                  <node concept="3clFbS" id="6LU90BNRYPM" role="1bW5cS">
                    <node concept="3clFbF" id="6LU90BNRYPN" role="3cqZAp">
                      <node concept="2ShNRf" id="6LU90BNRYPO" role="3clFbG">
                        <node concept="1pGfFk" id="6LU90BNRYPP" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortDescriptor" />
                          <node concept="2OqwBi" id="6LU90BNRYPQ" role="37wK5m">
                            <node concept="37vLTw" id="6LU90BNRYPR" role="2Oq$k0">
                              <ref role="3cqZAo" node="6LU90BNRYPV" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="6LU90BNRYPS" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="Rm8GO" id="6LU90BNRYPU" role="37wK5m">
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm6t" resolve="ADAPTER" />
                          </node>
                          <node concept="2OqwBi" id="3DiEZ8TNr_K" role="37wK5m">
                            <node concept="37vLTw" id="3DiEZ8TNr_L" role="2Oq$k0">
                              <ref role="3cqZAo" node="6LU90BNRYPV" resolve="it" />
                            </node>
                            <node concept="2bSWHS" id="3DiEZ8TNr_M" role="2OqNvi" />
                          </node>
                          <node concept="3clFbT" id="3DiEZ8TN$SR" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6LU90BNRYPV" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6LU90BNRYPW" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="6LU90BNRYPX" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQJzQE" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQ_XNY" role="jymVt">
      <property role="TrG5h" value="getPlugPorts" />
      <node concept="3Tm1VV" id="1R4IoyQ_XNZ" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQ_XO0" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQ_XO1" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQ_XOr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="1R4IoyQ_XOs" role="3clF47">
        <node concept="3clFbF" id="6LU90BNRYQ5" role="3cqZAp">
          <node concept="2OqwBi" id="6LU90BNRYQ6" role="3clFbG">
            <node concept="2OqwBi" id="6LU90BNRYQ7" role="2Oq$k0">
              <node concept="2OqwBi" id="6LU90BNRYQ8" role="2Oq$k0">
                <node concept="3Tsc0h" id="6LU90BNRYQa" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQR7" resolve="plugs" />
                </node>
                <node concept="37vLTw" id="1R4IoyQ_5tD" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                </node>
              </node>
              <node concept="3$u5V9" id="6LU90BNRYQb" role="2OqNvi">
                <node concept="1bVj0M" id="6LU90BNRYQc" role="23t8la">
                  <node concept="3clFbS" id="6LU90BNRYQd" role="1bW5cS">
                    <node concept="3clFbF" id="6LU90BNRYQe" role="3cqZAp">
                      <node concept="2ShNRf" id="6LU90BNRYQf" role="3clFbG">
                        <node concept="1pGfFk" id="6LU90BNRYQg" role="2ShVmc">
                          <ref role="37wK5l" to="2xsi:1HEL0zWehAJ" resolve="FBPortDescriptor" />
                          <node concept="2OqwBi" id="6LU90BNRYQh" role="37wK5m">
                            <node concept="37vLTw" id="6LU90BNRYQi" role="2Oq$k0">
                              <ref role="3cqZAo" node="6LU90BNRYQm" resolve="it" />
                            </node>
                            <node concept="3TrcHB" id="6LU90BNRYQj" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="Rm8GO" id="6LU90BNRYQl" role="37wK5m">
                            <ref role="Rm8GQ" to="tphl:2R0WzquZm6t" resolve="ADAPTER" />
                            <ref role="1Px2BO" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
                          </node>
                          <node concept="2OqwBi" id="3DiEZ8TNrQr" role="37wK5m">
                            <node concept="37vLTw" id="3DiEZ8TNrQs" role="2Oq$k0">
                              <ref role="3cqZAo" node="6LU90BNRYQm" resolve="it" />
                            </node>
                            <node concept="2bSWHS" id="3DiEZ8TNrQt" role="2OqNvi" />
                          </node>
                          <node concept="3clFbT" id="3DiEZ8TN_qE" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6LU90BNRYQm" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6LU90BNRYQn" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="6LU90BNRYQo" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1R4IoyQ_Pw8" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQ_Xel" role="1zkMxy">
      <ref role="3uigEE" node="1R4IoyQ_1A_" resolve="FBTypeDescriptorByNode" />
      <node concept="16syzq" id="1R4IoyQ_XeP" role="11_B2D">
        <ref role="16sUi3" node="1R4IoyQ_QUe" resolve="T" />
      </node>
    </node>
    <node concept="16euLQ" id="1R4IoyQ_QUe" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3Tqbb2" id="1R4IoyQ_Xea" role="3ztrMU">
        <ref role="ehGHo" to="xiqq:uLhTRQWXSY" resolve="DeclarationWithInterfaceAndAdapters" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1R4IoyQHa9H">
    <property role="TrG5h" value="BasicFBTypeByNode" />
    <node concept="3Tm1VV" id="1R4IoyQHa9I" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQHb$P" role="1zkMxy">
      <ref role="3uigEE" node="1R4IoyQ_Pw7" resolve="FBTypeDescriptorWithAdaptersByNode" />
      <node concept="3Tqbb2" id="1R4IoyQHb_h" role="11_B2D">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQHbDG" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQHbEt" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQHbEu" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQHbEv" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQHbEx" role="3clF47">
        <node concept="XkiVB" id="1R4IoyQHbEz" role="3cqZAp">
          <ref role="37wK5l" node="1R4IoyQA1jy" resolve="FBTypeDescriptorWithAdaptersByNode" />
          <node concept="37vLTw" id="1R4IoyQHbEB" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQHbE$" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQHbE$" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R4IoyQHbME" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQHbPt" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQHc1S" role="jymVt">
      <property role="TrG5h" value="getEcc" />
      <node concept="3Tm1VV" id="1R4IoyQHc1U" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQHc1V" role="3clF45">
        <ref role="3uigEE" to="6ehz:1R4IoyQwdM8" resolve="ECC" />
      </node>
      <node concept="2AHcQZ" id="1R4IoyQHc1W" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1R4IoyQHc20" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQHcgh" role="3cqZAp">
          <node concept="2ShNRf" id="1R4IoyQHcgf" role="3clFbG">
            <node concept="1pGfFk" id="1R4IoyQJes5" role="2ShVmc">
              <ref role="37wK5l" to="lv7i:5jb5jNC4z8M" resolve="ECCByNode" />
              <node concept="37vLTw" id="1R4IoyQJetp" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQHc21" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="1R4IoyQHc0Y" role="EKbjA">
      <ref role="3uigEE" to="2xsi:1R4IoyQwdLk" resolve="BasicFBType" />
    </node>
  </node>
  <node concept="312cEu" id="1R4IoyQJoAV">
    <property role="TrG5h" value="ServiceInterfaceFBTypeByNode" />
    <node concept="3Tm1VV" id="1R4IoyQJoAW" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQJoCq" role="1zkMxy">
      <ref role="3uigEE" node="1R4IoyQ_Pw7" resolve="FBTypeDescriptorWithAdaptersByNode" />
      <node concept="3Tqbb2" id="1R4IoyQJoCS" role="11_B2D">
        <ref role="ehGHo" to="xiqq:23XkovVSBlc" resolve="ServiceInterfaceFBTypeDeclaration" />
      </node>
    </node>
    <node concept="3uibUv" id="1R4IoyQJoHl" role="EKbjA">
      <ref role="3uigEE" to="2xsi:1R4IoyQ_1dm" resolve="ServiceInterfaceFBType" />
    </node>
    <node concept="2tJIrI" id="1R4IoyQJsFq" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQJsG$" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQJsG_" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQJsGA" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQJsGC" role="3clF47">
        <node concept="XkiVB" id="1R4IoyQJsGE" role="3cqZAp">
          <ref role="37wK5l" node="1R4IoyQA1jy" resolve="FBTypeDescriptorWithAdaptersByNode" />
          <node concept="37vLTw" id="1R4IoyQJsGI" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQJsGF" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQJsGF" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R4IoyQJsOz" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:23XkovVSBlc" resolve="ServiceInterfaceFBTypeDeclaration" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1R4IoyQJyKg">
    <property role="TrG5h" value="SubapplicationTypeByNode" />
    <node concept="2tJIrI" id="1R4IoyQJyTd" role="jymVt" />
    <node concept="3Tm1VV" id="1R4IoyQJyKh" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQJyLq" role="1zkMxy">
      <ref role="3uigEE" node="1R4IoyQ_1A_" resolve="FBTypeDescriptorByNode" />
      <node concept="3Tqbb2" id="1R4IoyQJyLT" role="11_B2D">
        <ref role="ehGHo" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
      </node>
    </node>
    <node concept="3uibUv" id="1R4IoyQJySZ" role="EKbjA">
      <ref role="3uigEE" to="2xsi:1R4IoyQ$Zos" resolve="SubapplicationType" />
    </node>
    <node concept="3clFbW" id="1R4IoyQJyUq" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQJyUr" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQJyUs" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQJyUu" role="3clF47">
        <node concept="XkiVB" id="1R4IoyQJyUw" role="3cqZAp">
          <ref role="37wK5l" node="1R4IoyQ_Trz" resolve="FBTypeDescriptorByNode" />
          <node concept="37vLTw" id="1R4IoyQJyU$" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQJyUx" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQJyUx" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R4IoyQJyZH" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQJz2y" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQJz4u" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="1R4IoyQJz4w" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJz4x" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="3clFbS" id="1R4IoyQJz4z" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJz7i" role="3cqZAp">
          <node concept="2ShNRf" id="1R4IoyQJz7c" role="3clFbG">
            <node concept="1pGfFk" id="1R4IoyQJzjz" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:7oJsd9x2CPz" resolve="SubappNetworkByNode" />
              <node concept="37vLTw" id="1R4IoyQJzlA" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJz4$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1R4IoyQK9Hs">
    <property role="TrG5h" value="AdapterTypeByNode" />
    <node concept="3Tm1VV" id="1R4IoyQK9Ht" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQK9IH" role="1zkMxy">
      <ref role="3uigEE" node="1R4IoyQ_1A_" resolve="FBTypeDescriptorByNode" />
      <node concept="3Tqbb2" id="1R4IoyQKatd" role="11_B2D">
        <ref role="ehGHo" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
      </node>
    </node>
    <node concept="3uibUv" id="1R4IoyQKawr" role="EKbjA">
      <ref role="3uigEE" to="2xsi:1R4IoyQ$ZBc" resolve="AdapterType" />
    </node>
    <node concept="2tJIrI" id="1R4IoyQKawP" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQKaxv" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQKaxw" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQKaxx" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQKaxz" role="3clF47">
        <node concept="XkiVB" id="1R4IoyQKax_" role="3cqZAp">
          <ref role="37wK5l" node="1R4IoyQ_Trz" resolve="FBTypeDescriptorByNode" />
          <node concept="37vLTw" id="1R4IoyQKaxD" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQKaxA" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQKaxA" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R4IoyQKa_f" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="1JYTWWzyU94">
    <property role="TrG5h" value="HasNode" />
    <node concept="2tJIrI" id="1JYTWWzyU9i" role="jymVt" />
    <node concept="3clFb_" id="1JYTWWzyU9A" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3clFbS" id="1JYTWWzyU9D" role="3clF47" />
      <node concept="3Tm1VV" id="1JYTWWzyU9E" role="1B3o_S" />
      <node concept="3uibUv" id="1JYTWWzyU9r" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1JYTWWzyU95" role="1B3o_S" />
  </node>
</model>

