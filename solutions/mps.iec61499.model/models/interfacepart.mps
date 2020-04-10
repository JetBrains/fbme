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
    <import index="gpgy" ref="r:70ba2090-1a36-4ca3-87ef-116d9af7b3ac(mps.lang.ST.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
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
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
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
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204851882688" name="jetbrains.mps.lang.smodel.structure.LinkRefQualifier" flags="ng" index="26LbJo">
        <reference id="1204851882689" name="link" index="26LbJp" />
      </concept>
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="8758390115029295477" name="jetbrains.mps.lang.smodel.structure.SReferenceType" flags="in" index="2z4iKi" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="4124388153790980106" name="jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation" flags="nn" index="2ZHEkA" />
      <concept id="3609773094169249792" name="jetbrains.mps.lang.smodel.structure.Node_GetReferenceOperation" flags="nn" index="37Cfm0">
        <child id="3609773094169252180" name="linkQualifier" index="37CeNk" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="5708036808576088033" name="jetbrains.mps.lang.smodel.structure.Reference_GetResolveInfo" flags="nn" index="1FfNbt" />
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
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
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
      <ref role="3uigEE" to="2xsi:1R4IoyQwdvz" resolve="CompositeFBTypeDeclaration" />
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
              <node concept="3clFbT" id="2SU8oJdTV7n" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQGq4h" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdTV82" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdTVaY" role="jymVt">
      <property role="TrG5h" value="getReadonlyNetwork" />
      <node concept="3Tm1VV" id="2SU8oJdTVb0" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdTVb1" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="2SU8oJdTVb2" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2SU8oJdTVb6" role="3clF47">
        <node concept="3clFbF" id="2SU8oJdTVb9" role="3cqZAp">
          <node concept="2ShNRf" id="2SU8oJdTVf9" role="3clFbG">
            <node concept="1pGfFk" id="2SU8oJdTVfa" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="2SU8oJdTVfb" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
              </node>
              <node concept="3clFbT" id="2SU8oJdTVfc" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdTVb7" role="2AJF6D">
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
    <node concept="2tJIrI" id="31Fn7oZJdQq" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZJeE6" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="31Fn7oZJeE8" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZJeE9" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="31Fn7oZJeEa" role="3clF47">
        <node concept="3clFbF" id="31Fn7oZJftK" role="3cqZAp">
          <node concept="2OqwBi" id="31Fn7oZJfQR" role="3clFbG">
            <node concept="37vLTw" id="31Fn7oZJftH" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="31Fn7oZJgfR" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="31Fn7oZJeEb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
                          <node concept="3clFbT" id="31Fn7oZvRK0" role="37wK5m">
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
                          <node concept="3clFbT" id="31Fn7oZvRTV" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
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
                          <node concept="3clFbT" id="31Fn7oZvS2$" role="37wK5m">
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
                          <node concept="3clFbT" id="31Fn7oZvSgE" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
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
    <node concept="3uibUv" id="31Fn7oZJcF4" role="EKbjA">
      <ref role="3uigEE" to="2xsi:31Fn7oZJ7qm" resolve="NamedDeclaration" />
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
    <property role="1sVAO0" value="true" />
    <node concept="15s5l7" id="6z_cCa85Faz" role="lGtFl">
      <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: The type @FBTypeDescriptorWithAdaptersByNode.T extends node&lt;DeclarationWithInterfaceAndAdapters&gt; is not a valid substitute for the bounded parameter T&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/6871159928248660343]&quot;;" />
      <property role="huDt6" value="Error: The type @FBTypeDescriptorWithAdaptersByNode.T extends node&lt;DeclarationWithInterfaceAndAdapters&gt; is not a valid substitute for the bounded parameter T" />
    </node>
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
                          <node concept="3clFbT" id="31Fn7oZvSuW" role="37wK5m">
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
                          <node concept="3clFbT" id="31Fn7oZvSJw" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
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
      <ref role="3uigEE" to="2xsi:1R4IoyQwdLk" resolve="BasicFBTypeDeclaration" />
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
      <ref role="3uigEE" to="2xsi:1R4IoyQ_1dm" resolve="ServiceInterfaceFBTypeDeclaration" />
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
      <ref role="3uigEE" to="2xsi:1R4IoyQ$Zos" resolve="SubapplicationTypeDeclaration" />
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
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="1R4IoyQJzlA" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
              </node>
              <node concept="3clFbT" id="2SU8oJdTSqh" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJz4$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdTXHv" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdTXDa" role="jymVt">
      <property role="TrG5h" value="getReadonlyNetwork" />
      <node concept="3Tm1VV" id="2SU8oJdTXDb" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdTXDc" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="3clFbS" id="2SU8oJdTXDd" role="3clF47">
        <node concept="3clFbF" id="2SU8oJdTXDe" role="3cqZAp">
          <node concept="2ShNRf" id="2SU8oJdTXDf" role="3clFbG">
            <node concept="1pGfFk" id="2SU8oJdTXDg" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="2SU8oJdTXDh" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
              </node>
              <node concept="3clFbT" id="2SU8oJdTXDi" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdTXDj" role="2AJF6D">
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
      <ref role="3uigEE" to="2xsi:1R4IoyQ$ZBc" resolve="AdapterTypeDeclaration" />
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
  <node concept="312cEu" id="31Fn7oZJid9">
    <property role="TrG5h" value="NodesAdapter" />
    <property role="1EXbeo" value="true" />
    <node concept="3clFbW" id="31Fn7oZJig1" role="jymVt">
      <node concept="3cqZAl" id="31Fn7oZJig3" role="3clF45" />
      <node concept="3Tm6S6" id="31Fn7oZJigs" role="1B3o_S" />
      <node concept="3clFbS" id="31Fn7oZJig5" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="31Fn7oZJifm" role="jymVt" />
    <node concept="2YIFZL" id="31Fn7oZJiij" role="jymVt">
      <property role="TrG5h" value="adaptTypeDeclaration" />
      <property role="DiZV1" value="true" />
      <node concept="3clFbS" id="31Fn7oZJiim" role="3clF47">
        <node concept="3clFbJ" id="31Fn7oZJkb9" role="3cqZAp">
          <node concept="2OqwBi" id="31Fn7oZJkba" role="3clFbw">
            <node concept="37vLTw" id="31Fn7oZJkbb" role="2Oq$k0">
              <ref role="3cqZAo" node="31Fn7oZJikJ" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="31Fn7oZJkbc" role="2OqNvi">
              <node concept="chp4Y" id="31Fn7oZJkbd" role="cj9EA">
                <ref role="cht4Q" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="31Fn7oZJkbe" role="3clFbx">
            <node concept="3cpWs6" id="31Fn7oZJkbf" role="3cqZAp">
              <node concept="2ShNRf" id="31Fn7oZJkbg" role="3cqZAk">
                <node concept="1pGfFk" id="31Fn7oZJkbh" role="2ShVmc">
                  <ref role="37wK5l" node="1R4IoyQHbEt" resolve="BasicFBTypeByNode" />
                  <node concept="1PxgMI" id="31Fn7oZJkbi" role="37wK5m">
                    <node concept="chp4Y" id="31Fn7oZJkbj" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="31Fn7oZJkbk" role="1m5AlR">
                      <ref role="3cqZAo" node="31Fn7oZJikJ" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="31Fn7oZJkbl" role="3cqZAp">
          <node concept="2OqwBi" id="31Fn7oZJkbm" role="3clFbw">
            <node concept="37vLTw" id="31Fn7oZJkbn" role="2Oq$k0">
              <ref role="3cqZAo" node="31Fn7oZJikJ" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="31Fn7oZJkbo" role="2OqNvi">
              <node concept="chp4Y" id="31Fn7oZJkbp" role="cj9EA">
                <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="31Fn7oZJkbq" role="3clFbx">
            <node concept="3cpWs6" id="31Fn7oZJkbr" role="3cqZAp">
              <node concept="2ShNRf" id="31Fn7oZJkbs" role="3cqZAk">
                <node concept="1pGfFk" id="31Fn7oZJkbt" role="2ShVmc">
                  <ref role="37wK5l" node="1R4IoyQA3I2" resolve="CompositeFBTypeByNode" />
                  <node concept="1PxgMI" id="31Fn7oZJkbu" role="37wK5m">
                    <node concept="chp4Y" id="31Fn7oZJkbv" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="31Fn7oZJkbw" role="1m5AlR">
                      <ref role="3cqZAo" node="31Fn7oZJikJ" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="31Fn7oZJkbx" role="3cqZAp">
          <node concept="2OqwBi" id="31Fn7oZJkby" role="3clFbw">
            <node concept="37vLTw" id="31Fn7oZJkbz" role="2Oq$k0">
              <ref role="3cqZAo" node="31Fn7oZJikJ" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="31Fn7oZJkb$" role="2OqNvi">
              <node concept="chp4Y" id="31Fn7oZJkb_" role="cj9EA">
                <ref role="cht4Q" to="xiqq:23XkovVSBlc" resolve="ServiceInterfaceFBTypeDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="31Fn7oZJkbA" role="3clFbx">
            <node concept="3cpWs6" id="31Fn7oZJkbB" role="3cqZAp">
              <node concept="2ShNRf" id="31Fn7oZJkbC" role="3cqZAk">
                <node concept="1pGfFk" id="31Fn7oZJkbD" role="2ShVmc">
                  <ref role="37wK5l" node="1R4IoyQJsG$" resolve="ServiceInterfaceFBTypeByNode" />
                  <node concept="1PxgMI" id="31Fn7oZJkbE" role="37wK5m">
                    <node concept="chp4Y" id="31Fn7oZJkbF" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:23XkovVSBlc" resolve="ServiceInterfaceFBTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="31Fn7oZJkbG" role="1m5AlR">
                      <ref role="3cqZAo" node="31Fn7oZJikJ" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="31Fn7oZJkE$" role="3cqZAp">
          <node concept="10Nm6u" id="31Fn7oZJkID" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="31Fn7oZJihW" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZJizV" role="3clF45">
        <ref role="3uigEE" to="2xsi:1HEL0zVYBFE" resolve="FBTypeDeclaration" />
      </node>
      <node concept="37vLTG" id="31Fn7oZJikJ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="31Fn7oZJikI" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhWqrg" role="jymVt" />
    <node concept="2YIFZL" id="1QSEqLhWmX0" role="jymVt">
      <property role="TrG5h" value="adaptDeclaration" />
      <property role="DiZV1" value="true" />
      <node concept="3clFbS" id="1QSEqLhWmX1" role="3clF47">
        <node concept="3clFbJ" id="1QSEqLhWo$s" role="3cqZAp">
          <node concept="3clFbS" id="1QSEqLhWo$t" role="3clFbx">
            <node concept="3cpWs6" id="1QSEqLhWo$u" role="3cqZAp">
              <node concept="1rXfSq" id="1QSEqLhWo$v" role="3cqZAk">
                <ref role="37wK5l" node="31Fn7oZJiij" resolve="adaptTypeDeclaration" />
                <node concept="1PxgMI" id="1QSEqLhWo$w" role="37wK5m">
                  <node concept="chp4Y" id="1QSEqLhWo$x" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
                  </node>
                  <node concept="37vLTw" id="1QSEqLhWo$y" role="1m5AlR">
                    <ref role="3cqZAo" node="1QSEqLhWmXE" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1QSEqLhWo$z" role="3clFbw">
            <node concept="37vLTw" id="1QSEqLhWo$$" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLhWmXE" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="1QSEqLhWo$_" role="2OqNvi">
              <node concept="chp4Y" id="1QSEqLhWo$A" role="cj9EA">
                <ref role="cht4Q" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1QSEqLhWoEt" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLhWoEu" role="3clFbw">
            <node concept="37vLTw" id="1QSEqLhWoEv" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLhWmXE" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="1QSEqLhWoEw" role="2OqNvi">
              <node concept="chp4Y" id="1QSEqLhWoEx" role="cj9EA">
                <ref role="cht4Q" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1QSEqLhWoEy" role="3clFbx">
            <node concept="3cpWs6" id="1QSEqLhWoEz" role="3cqZAp">
              <node concept="2ShNRf" id="1QSEqLhWoE$" role="3cqZAk">
                <node concept="1pGfFk" id="1QSEqLhWoE_" role="2ShVmc">
                  <ref role="37wK5l" node="1R4IoyQJyUq" resolve="SubapplicationTypeByNode" />
                  <node concept="1PxgMI" id="1QSEqLhWoEA" role="37wK5m">
                    <node concept="chp4Y" id="1QSEqLhWoEB" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="1QSEqLhWoEC" role="1m5AlR">
                      <ref role="3cqZAo" node="1QSEqLhWmXE" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1QSEqLhWoED" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLhWoEE" role="3clFbw">
            <node concept="37vLTw" id="1QSEqLhWoEF" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLhWmXE" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="1QSEqLhWoEG" role="2OqNvi">
              <node concept="chp4Y" id="1QSEqLhWoEH" role="cj9EA">
                <ref role="cht4Q" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1QSEqLhWoEI" role="3clFbx">
            <node concept="3cpWs6" id="1QSEqLhWoEJ" role="3cqZAp">
              <node concept="2ShNRf" id="1QSEqLhWoEK" role="3cqZAk">
                <node concept="1pGfFk" id="1QSEqLhWoEL" role="2ShVmc">
                  <ref role="37wK5l" node="1R4IoyQKaxv" resolve="AdapterTypeByNode" />
                  <node concept="1PxgMI" id="1QSEqLhWoEM" role="37wK5m">
                    <node concept="chp4Y" id="1QSEqLhWoEN" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="1QSEqLhWoEO" role="1m5AlR">
                      <ref role="3cqZAo" node="1QSEqLhWmXE" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4gibKcMrc2N" role="3cqZAp">
          <node concept="2OqwBi" id="4gibKcMrc2O" role="3clFbw">
            <node concept="37vLTw" id="4gibKcMrc2P" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLhWmXE" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="4gibKcMrc2Q" role="2OqNvi">
              <node concept="chp4Y" id="4gibKcMrc5O" role="cj9EA">
                <ref role="cht4Q" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4gibKcMrc2S" role="3clFbx">
            <node concept="3cpWs6" id="4gibKcMrc2T" role="3cqZAp">
              <node concept="2ShNRf" id="4gibKcMrwy3" role="3cqZAk">
                <node concept="1pGfFk" id="4gibKcMrwMt" role="2ShVmc">
                  <ref role="37wK5l" node="4gibKcMrx9X" resolve="ApplicationDeclarationByNode" />
                  <node concept="1PxgMI" id="4gibKcMrJES" role="37wK5m">
                    <node concept="chp4Y" id="4gibKcMrJHb" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
                    </node>
                    <node concept="37vLTw" id="4gibKcMrJgo" role="1m5AlR">
                      <ref role="3cqZAo" node="1QSEqLhWmXE" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1QSEqLhWmXA" role="3cqZAp">
          <node concept="10Nm6u" id="1QSEqLhWmXB" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1QSEqLhWmXC" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhWn5R" role="3clF45">
        <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
      </node>
      <node concept="37vLTG" id="1QSEqLhWmXE" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1QSEqLhWmXF" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZJkKp" role="jymVt" />
    <node concept="2YIFZL" id="31Fn7oZK1vY" role="jymVt">
      <property role="TrG5h" value="adaptTypeDescriptor" />
      <property role="DiZV1" value="true" />
      <node concept="3clFbS" id="31Fn7oZK1w1" role="3clF47">
        <node concept="3clFbJ" id="31Fn7oZK2gj" role="3cqZAp">
          <node concept="3clFbS" id="31Fn7oZK2gl" role="3clFbx">
            <node concept="3cpWs6" id="31Fn7oZK4rj" role="3cqZAp">
              <node concept="1rXfSq" id="31Fn7oZK4t4" role="3cqZAk">
                <ref role="37wK5l" node="31Fn7oZJiij" resolve="adaptTypeDeclaration" />
                <node concept="1PxgMI" id="31Fn7oZK4Fn" role="37wK5m">
                  <node concept="chp4Y" id="31Fn7oZK4JS" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
                  </node>
                  <node concept="37vLTw" id="31Fn7oZK4uO" role="1m5AlR">
                    <ref role="3cqZAo" node="31Fn7oZK1xj" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="31Fn7oZK2t6" role="3clFbw">
            <node concept="37vLTw" id="31Fn7oZK2hW" role="2Oq$k0">
              <ref role="3cqZAo" node="31Fn7oZK1xj" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="31Fn7oZK4iL" role="2OqNvi">
              <node concept="chp4Y" id="31Fn7oZK4m9" role="cj9EA">
                <ref role="cht4Q" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="31Fn7oZK55m" role="3cqZAp">
          <node concept="2OqwBi" id="31Fn7oZK55n" role="3clFbw">
            <node concept="37vLTw" id="31Fn7oZK55o" role="2Oq$k0">
              <ref role="3cqZAo" node="31Fn7oZK1xj" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="31Fn7oZK55p" role="2OqNvi">
              <node concept="chp4Y" id="31Fn7oZK55q" role="cj9EA">
                <ref role="cht4Q" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="31Fn7oZK55r" role="3clFbx">
            <node concept="3cpWs6" id="31Fn7oZK55s" role="3cqZAp">
              <node concept="2ShNRf" id="31Fn7oZK55t" role="3cqZAk">
                <node concept="1pGfFk" id="31Fn7oZK55u" role="2ShVmc">
                  <ref role="37wK5l" node="1R4IoyQJyUq" resolve="SubapplicationTypeByNode" />
                  <node concept="1PxgMI" id="31Fn7oZK55v" role="37wK5m">
                    <node concept="chp4Y" id="31Fn7oZK55w" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="31Fn7oZK55x" role="1m5AlR">
                      <ref role="3cqZAo" node="31Fn7oZK1xj" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="31Fn7oZK55y" role="3cqZAp">
          <node concept="2OqwBi" id="31Fn7oZK55z" role="3clFbw">
            <node concept="37vLTw" id="31Fn7oZK55$" role="2Oq$k0">
              <ref role="3cqZAo" node="31Fn7oZK1xj" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="31Fn7oZK55_" role="2OqNvi">
              <node concept="chp4Y" id="31Fn7oZK55A" role="cj9EA">
                <ref role="cht4Q" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="31Fn7oZK55B" role="3clFbx">
            <node concept="3cpWs6" id="31Fn7oZK55C" role="3cqZAp">
              <node concept="2ShNRf" id="31Fn7oZK55D" role="3cqZAk">
                <node concept="1pGfFk" id="31Fn7oZK55E" role="2ShVmc">
                  <ref role="37wK5l" node="1R4IoyQKaxv" resolve="AdapterTypeByNode" />
                  <node concept="1PxgMI" id="31Fn7oZK55F" role="37wK5m">
                    <node concept="chp4Y" id="31Fn7oZK55G" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="31Fn7oZK55H" role="1m5AlR">
                      <ref role="3cqZAo" node="31Fn7oZK1xj" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="31Fn7oZK55I" role="3cqZAp">
          <node concept="10Nm6u" id="31Fn7oZK55J" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="31Fn7oZJkMm" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZK1vN" role="3clF45">
        <ref role="3uigEE" to="2xsi:1R4IoyQ$Zv8" resolve="FBTypeDescriptor" />
      </node>
      <node concept="37vLTG" id="31Fn7oZK1xj" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="31Fn7oZK1xi" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdHGIV" role="jymVt" />
    <node concept="3Tm1VV" id="31Fn7oZJida" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2SU8oJdHGJF">
    <property role="TrG5h" value="SystemDeclarationByNode" />
    <node concept="2tJIrI" id="2SU8oJdHGKl" role="jymVt" />
    <node concept="312cEg" id="2SU8oJdHMRl" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2SU8oJdHMQt" role="1B3o_S" />
      <node concept="3Tqbb2" id="2SU8oJdHMQM" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdHMPn" role="jymVt" />
    <node concept="3clFbW" id="2SU8oJdHMPG" role="jymVt">
      <node concept="37vLTG" id="2SU8oJdHMRF" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2SU8oJdHMRH" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
        </node>
      </node>
      <node concept="3cqZAl" id="2SU8oJdHMPH" role="3clF45" />
      <node concept="3clFbS" id="2SU8oJdHMPJ" role="3clF47">
        <node concept="3clFbF" id="2SU8oJdHMSO" role="3cqZAp">
          <node concept="37vLTI" id="2SU8oJdHN2p" role="3clFbG">
            <node concept="37vLTw" id="2SU8oJdHN4_" role="37vLTx">
              <ref role="3cqZAo" node="2SU8oJdHMRF" resolve="node" />
            </node>
            <node concept="37vLTw" id="2SU8oJdHMSN" role="37vLTJ">
              <ref role="3cqZAo" node="2SU8oJdHMRl" resolve="myNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2SU8oJdHMP0" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2SU8oJdHN50" role="jymVt" />
    <node concept="3Tm1VV" id="2SU8oJdHGJG" role="1B3o_S" />
    <node concept="3uibUv" id="2SU8oJdHMOp" role="EKbjA">
      <ref role="3uigEE" to="2xsi:2SU8oJdH$Ob" resolve="SystemDeclaration" />
    </node>
    <node concept="3uibUv" id="2SU8oJdHMOE" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="HasNode" />
    </node>
    <node concept="3clFb_" id="2SU8oJdHN5U" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="2SU8oJdHN5W" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdHN5X" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3clFbS" id="2SU8oJdHN5Z" role="3clF47">
        <node concept="3clFbF" id="2SU8oJdHN8t" role="3cqZAp">
          <node concept="37vLTw" id="2SU8oJdHN8q" role="3clFbG">
            <ref role="3cqZAo" node="2SU8oJdHMRl" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdHN60" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdUe3L" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdUedU" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="2SU8oJdUedW" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdUedX" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="2SU8oJdUedZ" role="3clF47">
        <node concept="3clFbF" id="2SU8oJdUelh" role="3cqZAp">
          <node concept="2OqwBi" id="2SU8oJdUe_V" role="3clFbG">
            <node concept="37vLTw" id="2SU8oJdUele" role="2Oq$k0">
              <ref role="3cqZAo" node="2SU8oJdHMRl" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="2SU8oJdUeO2" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdUee0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdUdQX" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdUdT8" role="jymVt">
      <property role="TrG5h" value="getApplcations" />
      <node concept="3Tm1VV" id="2SU8oJdUdTa" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdUdTb" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2SU8oJdUdTc" role="11_B2D">
          <ref role="3uigEE" to="2xsi:2SU8oJdH$Pn" resolve="ApplicationDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdUdTd" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2SU8oJdUdTe" role="3clF47">
        <node concept="3clFbF" id="4gibKcMrhue" role="3cqZAp">
          <node concept="2OqwBi" id="4gibKcMrnzW" role="3clFbG">
            <node concept="2OqwBi" id="4gibKcMrkg6" role="2Oq$k0">
              <node concept="2OqwBi" id="4gibKcMrhJl" role="2Oq$k0">
                <node concept="37vLTw" id="4gibKcMrhub" role="2Oq$k0">
                  <ref role="3cqZAo" node="2SU8oJdHMRl" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="4gibKcMrhXh" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:uLhTRR7MVq" resolve="applications" />
                </node>
              </node>
              <node concept="3$u5V9" id="4gibKcMrmJ3" role="2OqNvi">
                <node concept="1bVj0M" id="4gibKcMrmJ5" role="23t8la">
                  <node concept="3clFbS" id="4gibKcMrmJ6" role="1bW5cS">
                    <node concept="3clFbF" id="4gibKcMrmOw" role="3cqZAp">
                      <node concept="10QFUN" id="4gibKcMrocS" role="3clFbG">
                        <node concept="3uibUv" id="4gibKcMroqH" role="10QFUM">
                          <ref role="3uigEE" to="2xsi:2SU8oJdH$Pn" resolve="ApplicationDeclaration" />
                        </node>
                        <node concept="2ShNRf" id="4gibKcMrmOu" role="10QFUP">
                          <node concept="1pGfFk" id="4gibKcMrn6i" role="2ShVmc">
                            <ref role="37wK5l" node="4gibKcMrdGG" resolve="ApplicationDeclarationByNode" />
                            <node concept="37vLTw" id="4gibKcMrnlr" role="37wK5m">
                              <ref role="3cqZAo" node="4gibKcMrmJ7" resolve="it" />
                            </node>
                            <node concept="Xjq3P" id="4gibKcMrneN" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="4gibKcMrmJ7" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="4gibKcMrmJ8" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="4gibKcMro3B" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdUdTf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMrtiB" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdUdTi" role="jymVt">
      <property role="TrG5h" value="getDevices" />
      <node concept="3Tm1VV" id="2SU8oJdUdTk" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdUdTl" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2SU8oJdUdTm" role="11_B2D">
          <ref role="3uigEE" to="2xsi:2SU8oJdHTR3" resolve="DeviceDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdUdTn" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2SU8oJdUdTo" role="3clF47">
        <node concept="3clFbF" id="2SU8oJdUdTr" role="3cqZAp">
          <node concept="10Nm6u" id="2SU8oJdUdTq" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdUdTp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4dM3MZ7oKoQ">
    <property role="TrG5h" value="ApplicationDeclarationByNode" />
    <node concept="2tJIrI" id="4gibKcMrduy" role="jymVt" />
    <node concept="312cEg" id="4gibKcMrdFn" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tqbb2" id="4gibKcMrdER" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
      </node>
      <node concept="3Tm6S6" id="4gibKcMrdGg" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4gibKcMrfXn" role="jymVt">
      <property role="TrG5h" value="mySystem" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4gibKcMrfNm" role="1B3o_S" />
      <node concept="3uibUv" id="4gibKcMrfT3" role="1tU5fm">
        <ref role="3uigEE" node="2SU8oJdHGJF" resolve="SystemDeclarationByNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMrduz" role="jymVt" />
    <node concept="3Tm1VV" id="4dM3MZ7oKoR" role="1B3o_S" />
    <node concept="3uibUv" id="4gibKcMrdui" role="EKbjA">
      <ref role="3uigEE" to="2xsi:2SU8oJdH$Pn" resolve="ApplicationDeclaration" />
    </node>
    <node concept="3uibUv" id="4gibKcMrdFU" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="HasNode" />
    </node>
    <node concept="3clFbW" id="4gibKcMrdGG" role="jymVt">
      <node concept="3cqZAl" id="4gibKcMrdGH" role="3clF45" />
      <node concept="3Tm1VV" id="4gibKcMrdGI" role="1B3o_S" />
      <node concept="3clFbS" id="4gibKcMrdGK" role="3clF47">
        <node concept="3clFbF" id="4gibKcMrdGO" role="3cqZAp">
          <node concept="37vLTI" id="4gibKcMrdGQ" role="3clFbG">
            <node concept="37vLTw" id="4gibKcMrdQ6" role="37vLTJ">
              <ref role="3cqZAo" node="4gibKcMrdFn" resolve="myNode" />
            </node>
            <node concept="37vLTw" id="4gibKcMrdGX" role="37vLTx">
              <ref role="3cqZAo" node="4gibKcMrdGN" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4gibKcMrgaC" role="3cqZAp">
          <node concept="37vLTI" id="4gibKcMrgvG" role="3clFbG">
            <node concept="37vLTw" id="4gibKcMrg$J" role="37vLTx">
              <ref role="3cqZAo" node="4gibKcMrg36" resolve="system" />
            </node>
            <node concept="37vLTw" id="4gibKcMrgaA" role="37vLTJ">
              <ref role="3cqZAo" node="4gibKcMrfXn" resolve="mySystem" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4gibKcMrdGN" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4gibKcMrdGM" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="4gibKcMrg36" role="3clF46">
        <property role="TrG5h" value="system" />
        <node concept="3uibUv" id="4gibKcMrg9i" role="1tU5fm">
          <ref role="3uigEE" node="2SU8oJdHGJF" resolve="SystemDeclarationByNode" />
        </node>
      </node>
    </node>
    <node concept="3clFbW" id="4gibKcMrx9X" role="jymVt">
      <node concept="3cqZAl" id="4gibKcMrx9Y" role="3clF45" />
      <node concept="3Tm1VV" id="4gibKcMrx9Z" role="1B3o_S" />
      <node concept="3clFbS" id="4gibKcMrxa0" role="3clF47">
        <node concept="1VxSAg" id="4gibKcMrxLh" role="3cqZAp">
          <ref role="37wK5l" node="4gibKcMrdGG" resolve="ApplicationDeclarationByNode" />
          <node concept="37vLTw" id="4gibKcMrznu" role="37wK5m">
            <ref role="3cqZAo" node="4gibKcMrxab" resolve="node" />
          </node>
          <node concept="2ShNRf" id="4gibKcMrxRp" role="37wK5m">
            <node concept="1pGfFk" id="4gibKcMrygN" role="2ShVmc">
              <ref role="37wK5l" node="2SU8oJdHMPG" resolve="SystemDeclarationByNode" />
              <node concept="1PxgMI" id="4gibKcMrz6k" role="37wK5m">
                <node concept="chp4Y" id="4gibKcMrzbg" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
                </node>
                <node concept="2OqwBi" id="4gibKcMry_y" role="1m5AlR">
                  <node concept="37vLTw" id="4gibKcMrylm" role="2Oq$k0">
                    <ref role="3cqZAo" node="4gibKcMrxab" resolve="node" />
                  </node>
                  <node concept="1mfA1w" id="4gibKcMryMu" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4gibKcMrxab" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="4gibKcMrxac" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMrdQM" role="jymVt" />
    <node concept="3clFb_" id="4gibKcMrdRG" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="4gibKcMrdRI" role="1B3o_S" />
      <node concept="3uibUv" id="4gibKcMrdRJ" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="4gibKcMrdRK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4gibKcMrdRL" role="3clF47">
        <node concept="3clFbF" id="4gibKcMrenp" role="3cqZAp">
          <node concept="2ShNRf" id="4gibKcMrenj" role="3clFbG">
            <node concept="1pGfFk" id="4gibKcMreF3" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="4gibKcMreGk" role="37wK5m">
                <ref role="3cqZAo" node="4gibKcMrdFn" resolve="myNode" />
              </node>
              <node concept="3clFbT" id="4gibKcMreNL" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4gibKcMrdRM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMre2H" role="jymVt" />
    <node concept="3clFb_" id="4gibKcMrdRP" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="4gibKcMrdRR" role="1B3o_S" />
      <node concept="3uibUv" id="4gibKcMrdRS" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3clFbS" id="4gibKcMrdRU" role="3clF47">
        <node concept="3clFbF" id="4gibKcMreOP" role="3cqZAp">
          <node concept="37vLTw" id="4gibKcMreOM" role="3clFbG">
            <ref role="3cqZAo" node="4gibKcMrdFn" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4gibKcMrdRV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMre7v" role="jymVt" />
    <node concept="3clFb_" id="4gibKcMrdRY" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="4gibKcMrdS0" role="1B3o_S" />
      <node concept="3uibUv" id="4gibKcMrdS1" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="4gibKcMrdS3" role="3clF47">
        <node concept="3clFbF" id="4gibKcMreVP" role="3cqZAp">
          <node concept="2OqwBi" id="4gibKcMrfcS" role="3clFbG">
            <node concept="37vLTw" id="4gibKcMreVM" role="2Oq$k0">
              <ref role="3cqZAo" node="4gibKcMrdFn" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="4gibKcMrfu8" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4gibKcMrdS4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMrgBQ" role="jymVt" />
    <node concept="3clFb_" id="4gibKcMrgNG" role="jymVt">
      <property role="TrG5h" value="getSytem" />
      <node concept="3Tm1VV" id="4gibKcMrgNI" role="1B3o_S" />
      <node concept="3uibUv" id="4gibKcMrgNJ" role="3clF45">
        <ref role="3uigEE" to="2xsi:2SU8oJdH$Ob" resolve="SystemDeclaration" />
      </node>
      <node concept="2AHcQZ" id="4gibKcMrgNK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4gibKcMrgNL" role="3clF47">
        <node concept="3clFbF" id="4gibKcMrh52" role="3cqZAp">
          <node concept="37vLTw" id="4gibKcMrh4Z" role="3clFbG">
            <ref role="3cqZAo" node="4gibKcMrfXn" resolve="mySystem" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4gibKcMrgNM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3MncU7wPdcu">
    <property role="TrG5h" value="DeviceDeclarationByNode" />
    <node concept="2tJIrI" id="3MncU7wPdds" role="jymVt" />
    <node concept="312cEg" id="3MncU7wPdTO" role="jymVt">
      <property role="TrG5h" value="mySystem" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MncU7wPdT9" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPdTw" role="1tU5fm">
        <ref role="3uigEE" to="2xsi:2SU8oJdH$Ob" resolve="SystemDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPdSO" role="jymVt" />
    <node concept="312cEg" id="3MncU7wPdR9" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MncU7wPdQb" role="1B3o_S" />
      <node concept="3Tqbb2" id="3MncU7wPdQy" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPdRx" role="jymVt" />
    <node concept="3Tm1VV" id="3MncU7wPdcv" role="1B3o_S" />
    <node concept="3uibUv" id="3MncU7wPdP$" role="EKbjA">
      <ref role="3uigEE" to="2xsi:2SU8oJdHTR3" resolve="DeviceDeclaration" />
    </node>
    <node concept="3uibUv" id="3MncU7wPdPP" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="HasNode" />
    </node>
    <node concept="3clFbW" id="3MncU7wPdU_" role="jymVt">
      <node concept="3cqZAl" id="3MncU7wPdUA" role="3clF45" />
      <node concept="3Tm1VV" id="3MncU7wPdUB" role="1B3o_S" />
      <node concept="3clFbS" id="3MncU7wPdUD" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPdUH" role="3cqZAp">
          <node concept="37vLTI" id="3MncU7wPdUJ" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPdUQ" role="37vLTx">
              <ref role="3cqZAo" node="3MncU7wPdUG" resolve="system" />
            </node>
            <node concept="37vLTw" id="3MncU7wPe0u" role="37vLTJ">
              <ref role="3cqZAo" node="3MncU7wPdTO" resolve="mySystem" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3MncU7wPdUT" role="3cqZAp">
          <node concept="37vLTI" id="3MncU7wPdUV" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPdV2" role="37vLTx">
              <ref role="3cqZAo" node="3MncU7wPdUS" resolve="node" />
            </node>
            <node concept="37vLTw" id="3MncU7wPe3w" role="37vLTJ">
              <ref role="3cqZAo" node="3MncU7wPdR9" resolve="myNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MncU7wPdUS" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3MncU7wPdUR" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="3MncU7wPdUG" role="3clF46">
        <property role="TrG5h" value="system" />
        <node concept="3uibUv" id="3MncU7wPdUF" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:2SU8oJdH$Ob" resolve="SystemDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPCj_" role="jymVt" />
    <node concept="3clFbW" id="3MncU7wP_hx" role="jymVt">
      <node concept="3cqZAl" id="3MncU7wP_hy" role="3clF45" />
      <node concept="3Tm1VV" id="3MncU7wP_hz" role="1B3o_S" />
      <node concept="3clFbS" id="3MncU7wP_h$" role="3clF47">
        <node concept="1VxSAg" id="3MncU7wPAjC" role="3cqZAp">
          <ref role="37wK5l" node="3MncU7wPdU_" resolve="DeviceDeclarationByNode" />
          <node concept="37vLTw" id="3MncU7wPAsn" role="37wK5m">
            <ref role="3cqZAo" node="3MncU7wP_hJ" resolve="node" />
          </node>
          <node concept="2ShNRf" id="3MncU7wPAJy" role="37wK5m">
            <node concept="1pGfFk" id="3MncU7wPAZ0" role="2ShVmc">
              <ref role="37wK5l" node="2SU8oJdHMPG" resolve="SystemDeclarationByNode" />
              <node concept="1PxgMI" id="3MncU7wPBpn" role="37wK5m">
                <node concept="chp4Y" id="3MncU7wPBqu" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
                </node>
                <node concept="2OqwBi" id="3MncU7wPBvn" role="1m5AlR">
                  <node concept="37vLTw" id="3MncU7wPBck" role="2Oq$k0">
                    <ref role="3cqZAo" node="3MncU7wP_hJ" resolve="node" />
                  </node>
                  <node concept="1mfA1w" id="3MncU7wPBTM" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MncU7wP_hJ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3MncU7wP_hK" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPe5_" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPe8E" role="jymVt">
      <property role="TrG5h" value="getSystem" />
      <node concept="3Tm1VV" id="3MncU7wPe8G" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPe8H" role="3clF45">
        <ref role="3uigEE" to="2xsi:2SU8oJdH$Ob" resolve="SystemDeclaration" />
      </node>
      <node concept="3clFbS" id="3MncU7wPe8I" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPel7" role="3cqZAp">
          <node concept="37vLTw" id="3MncU7wPel6" role="3clFbG">
            <ref role="3cqZAo" node="3MncU7wPdTO" resolve="mySystem" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPe8J" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3MncU7wPe8M" role="jymVt">
      <property role="TrG5h" value="getType" />
      <node concept="3Tm1VV" id="3MncU7wPe8O" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPe8P" role="3clF45">
        <ref role="3uigEE" to="2xsi:2SU8oJdIdgm" resolve="DeviceTypeDescriptor" />
      </node>
      <node concept="3clFbS" id="3MncU7wPe8Q" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPe8T" role="3cqZAp">
          <node concept="10Nm6u" id="3MncU7wPe8S" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPe8R" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3MncU7wPe8U" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="3MncU7wPe8W" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPe8X" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3MncU7wPe8Y" role="11_B2D">
          <ref role="3uigEE" to="2xsi:2SU8oJdHUP_" resolve="ParameterAssigment" />
        </node>
      </node>
      <node concept="3clFbS" id="3MncU7wPe8Z" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPe92" role="3cqZAp">
          <node concept="10Nm6u" id="3MncU7wPe91" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPe90" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3MncU7wPe93" role="jymVt">
      <property role="TrG5h" value="getResources" />
      <node concept="3Tm1VV" id="3MncU7wPe95" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPe96" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3MncU7wPe97" role="11_B2D">
          <ref role="3uigEE" to="2xsi:2SU8oJdIdeb" resolve="ResourceDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3MncU7wPe98" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPe9b" role="3cqZAp">
          <node concept="10Nm6u" id="3MncU7wPe9a" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPe99" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3MncU7wPe9c" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="3MncU7wPe9e" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPe9f" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="3MncU7wPe9g" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="3MncU7wPe9h" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPe9k" role="3cqZAp">
          <node concept="10Nm6u" id="3MncU7wPe9j" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPe9i" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3MncU7wPe9l" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="3MncU7wPe9n" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPe9o" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3clFbS" id="3MncU7wPe9q" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPexc" role="3cqZAp">
          <node concept="37vLTw" id="3MncU7wPex9" role="3clFbG">
            <ref role="3cqZAo" node="3MncU7wPdR9" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPe9r" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3MncU7wPe9u" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="3MncU7wPe9w" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPe9x" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3MncU7wPe9z" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPeFA" role="3cqZAp">
          <node concept="2OqwBi" id="3MncU7wPf01" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPeFz" role="2Oq$k0">
              <ref role="3cqZAo" node="3MncU7wPdR9" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="3MncU7wPfml" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPe9$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3MncU7wPinz">
    <property role="TrG5h" value="DeviceTypeDescriptorByReference" />
    <node concept="2tJIrI" id="3MncU7wPip9" role="jymVt" />
    <node concept="312cEg" id="3MncU7wPiqr" role="jymVt">
      <property role="TrG5h" value="myDeviceTypeRefence" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MncU7wPipD" role="1B3o_S" />
      <node concept="2z4iKi" id="3MncU7wPiqb" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="3MncU7wPirJ" role="jymVt" />
    <node concept="3Tm1VV" id="3MncU7wPin$" role="1B3o_S" />
    <node concept="3uibUv" id="3MncU7wPioS" role="EKbjA">
      <ref role="3uigEE" to="2xsi:2SU8oJdIdgm" resolve="DeviceTypeDescriptor" />
    </node>
    <node concept="3clFbW" id="3MncU7wPisj" role="jymVt">
      <node concept="3cqZAl" id="3MncU7wPisk" role="3clF45" />
      <node concept="3Tm1VV" id="3MncU7wPisl" role="1B3o_S" />
      <node concept="3clFbS" id="3MncU7wPisn" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPisr" role="3cqZAp">
          <node concept="37vLTI" id="3MncU7wPist" role="3clFbG">
            <node concept="2OqwBi" id="3MncU7wPisx" role="37vLTJ">
              <node concept="Xjq3P" id="3MncU7wPisy" role="2Oq$k0" />
              <node concept="2OwXpG" id="3MncU7wPisz" role="2OqNvi">
                <ref role="2Oxat5" node="3MncU7wPiqr" resolve="myDeviceTypeRefence" />
              </node>
            </node>
            <node concept="37vLTw" id="3MncU7wPis$" role="37vLTx">
              <ref role="3cqZAo" node="3MncU7wPisq" resolve="deviceTypeRefence" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MncU7wPisq" role="3clF46">
        <property role="TrG5h" value="deviceTypeRefence" />
        <node concept="2z4iKi" id="3MncU7wPisp" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPivk" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPiwl" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3Tm1VV" id="3MncU7wPiwn" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPiwo" role="3clF45">
        <ref role="3uigEE" to="2xsi:2SU8oJdHTRH" resolve="DeviceTypeDeclaration" />
      </node>
      <node concept="3clFbS" id="3MncU7wPiwp" role="3clF47">
        <node concept="3cpWs8" id="3MncU7wPiYm" role="3cqZAp">
          <node concept="3cpWsn" id="3MncU7wPiYn" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3MncU7wPiW_" role="1tU5fm" />
            <node concept="2OqwBi" id="3MncU7wPiYo" role="33vP2m">
              <node concept="37vLTw" id="3MncU7wPiYp" role="2Oq$k0">
                <ref role="3cqZAo" node="3MncU7wPiqr" resolve="myDeviceTypeRefence" />
              </node>
              <node concept="2ZHEkA" id="3MncU7wPiYq" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3MncU7wPjcZ" role="3cqZAp">
          <node concept="3clFbS" id="3MncU7wPjd1" role="3clFbx">
            <node concept="3cpWs6" id="3MncU7wPjrr" role="3cqZAp">
              <node concept="10Nm6u" id="3MncU7wPjrC" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="3MncU7wPjlJ" role="3clFbw">
            <node concept="10Nm6u" id="3MncU7wPjqV" role="3uHU7w" />
            <node concept="37vLTw" id="3MncU7wPjdD" role="3uHU7B">
              <ref role="3cqZAo" node="3MncU7wPiYn" resolve="node" />
            </node>
          </node>
          <node concept="9aQIb" id="3MncU7wPjs5" role="9aQIa">
            <node concept="3clFbS" id="3MncU7wPjs6" role="9aQI4">
              <node concept="3cpWs6" id="3MncU7wPoTk" role="3cqZAp">
                <node concept="2ShNRf" id="3MncU7wPjwW" role="3cqZAk">
                  <node concept="1pGfFk" id="3MncU7wPoAZ" role="2ShVmc">
                    <ref role="37wK5l" node="3MncU7wPjR$" resolve="DeviceTypeDeclarationByNode" />
                    <node concept="1PxgMI" id="3MncU7wPoJK" role="37wK5m">
                      <node concept="chp4Y" id="3MncU7wPoKm" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
                      </node>
                      <node concept="37vLTw" id="3MncU7wPoBq" role="1m5AlR">
                        <ref role="3cqZAo" node="3MncU7wPiYn" resolve="node" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPiwq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPqEe" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPiwt" role="jymVt">
      <property role="TrG5h" value="getTypeName" />
      <node concept="3Tm1VV" id="3MncU7wPiwv" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPiww" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3MncU7wPiwx" role="3clF47">
        <node concept="3cpWs8" id="3MncU7wPoUM" role="3cqZAp">
          <node concept="3cpWsn" id="3MncU7wPoUN" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3MncU7wPoUO" role="1tU5fm" />
            <node concept="2OqwBi" id="3MncU7wPoUP" role="33vP2m">
              <node concept="37vLTw" id="3MncU7wPoUQ" role="2Oq$k0">
                <ref role="3cqZAo" node="3MncU7wPiqr" resolve="myDeviceTypeRefence" />
              </node>
              <node concept="2ZHEkA" id="3MncU7wPoUR" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3MncU7wPoUS" role="3cqZAp">
          <node concept="3clFbS" id="3MncU7wPoUT" role="3clFbx">
            <node concept="3cpWs6" id="3MncU7wPoUU" role="3cqZAp">
              <node concept="2OqwBi" id="3MncU7wPpfl" role="3cqZAk">
                <node concept="37vLTw" id="3MncU7wPp0E" role="2Oq$k0">
                  <ref role="3cqZAo" node="3MncU7wPiqr" resolve="myDeviceTypeRefence" />
                </node>
                <node concept="1FfNbt" id="3MncU7wPprt" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3MncU7wPoUW" role="3clFbw">
            <node concept="10Nm6u" id="3MncU7wPoUX" role="3uHU7w" />
            <node concept="37vLTw" id="3MncU7wPoUY" role="3uHU7B">
              <ref role="3cqZAo" node="3MncU7wPoUN" resolve="node" />
            </node>
          </node>
          <node concept="9aQIb" id="3MncU7wPoUZ" role="9aQIa">
            <node concept="3clFbS" id="3MncU7wPoV0" role="9aQI4">
              <node concept="3cpWs6" id="3MncU7wPoV1" role="3cqZAp">
                <node concept="2OqwBi" id="3MncU7wPqdM" role="3cqZAk">
                  <node concept="1PxgMI" id="3MncU7wPpWg" role="2Oq$k0">
                    <node concept="chp4Y" id="3MncU7wPq1E" role="3oSUPX">
                      <ref role="cht4Q" to="gpgy:23XkovVUTCw" resolve="DataTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="3MncU7wPpHn" role="1m5AlR">
                      <ref role="3cqZAo" node="3MncU7wPoUN" resolve="node" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3MncU7wPqt6" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPiwy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPq$G" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPiw_" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="3MncU7wPiwB" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPiwC" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3MncU7wPiwD" role="11_B2D">
          <ref role="3uigEE" to="2xsi:2SU8oJdIdjZ" resolve="ParameterDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="3MncU7wPiwE" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPiwH" role="3cqZAp">
          <node concept="10Nm6u" id="3MncU7wPiwG" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPiwF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3MncU7wPjJU">
    <property role="TrG5h" value="DeviceTypeDeclarationByNode" />
    <node concept="3Tm1VV" id="3MncU7wPjJV" role="1B3o_S" />
    <node concept="3uibUv" id="3MncU7wPjMl" role="EKbjA">
      <ref role="3uigEE" to="2xsi:2SU8oJdHTRH" resolve="DeviceTypeDeclaration" />
    </node>
    <node concept="2tJIrI" id="3MncU7wPjPL" role="jymVt" />
    <node concept="312cEg" id="3MncU7wPjQL" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MncU7wPjQ2" role="1B3o_S" />
      <node concept="3Tqbb2" id="3MncU7wPjQk" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPjR4" role="jymVt" />
    <node concept="3clFbW" id="3MncU7wPjR$" role="jymVt">
      <node concept="37vLTG" id="3MncU7wPjRZ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3MncU7wPjS1" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
        </node>
      </node>
      <node concept="3cqZAl" id="3MncU7wPjRA" role="3clF45" />
      <node concept="3Tm1VV" id="3MncU7wPjRB" role="1B3o_S" />
      <node concept="3clFbS" id="3MncU7wPjRC" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPjT1" role="3cqZAp">
          <node concept="37vLTI" id="3MncU7wPk3X" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPk6b" role="37vLTx">
              <ref role="3cqZAo" node="3MncU7wPjRZ" resolve="node" />
            </node>
            <node concept="37vLTw" id="3MncU7wPjT0" role="37vLTJ">
              <ref role="3cqZAo" node="3MncU7wPjQL" resolve="myNode" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPk6_" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPk7y" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="3MncU7wPk7$" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPk7_" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3MncU7wPk7A" role="11_B2D">
          <ref role="3uigEE" to="2xsi:2SU8oJdHUP3" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPk7B" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPk7C" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPk7F" role="3cqZAp">
          <node concept="10Nm6u" id="3MncU7wPk7E" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPk7D" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPl4H" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPk7G" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="3MncU7wPk7I" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPk7J" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="3clFbS" id="3MncU7wPk7K" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPklb" role="3cqZAp">
          <node concept="2ShNRf" id="3MncU7wPkl5" role="3clFbG">
            <node concept="1pGfFk" id="3MncU7wPkMP" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="3MncU7wPkO4" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPjQL" resolve="myNode" />
              </node>
              <node concept="3clFbT" id="3MncU7wPkYM" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPk7L" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPkZi" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPk7O" role="jymVt">
      <property role="TrG5h" value="getResources" />
      <node concept="3Tm1VV" id="3MncU7wPk7Q" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPk7R" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3MncU7wPk7S" role="11_B2D">
          <ref role="3uigEE" to="2xsi:2SU8oJdIdeb" resolve="ResourceDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPk7T" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPk7U" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPk7X" role="3cqZAp">
          <node concept="10Nm6u" id="3MncU7wPk7W" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPk7V" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3MncU7wPk7Y" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="3MncU7wPk80" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPk81" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3MncU7wPk83" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPlbX" role="3cqZAp">
          <node concept="2OqwBi" id="3MncU7wPluf" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPlbU" role="2Oq$k0">
              <ref role="3cqZAo" node="3MncU7wPjQL" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="3MncU7wPlJh" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPk84" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3MncU7wPlNy">
    <property role="TrG5h" value="ResourceDeclarationByNode" />
    <node concept="2tJIrI" id="3MncU7wPlP8" role="jymVt" />
    <node concept="312cEg" id="3MncU7wPGbb" role="jymVt">
      <property role="TrG5h" value="myContainer" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MncU7wPFWA" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPG4P" role="1tU5fm">
        <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
      </node>
    </node>
    <node concept="312cEg" id="3MncU7wPlQM" role="jymVt">
      <property role="TrG5h" value="myResource" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MncU7wPlPp" role="1B3o_S" />
      <node concept="3Tqbb2" id="3MncU7wPlPT" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPlR5" role="jymVt" />
    <node concept="3Tm1VV" id="3MncU7wPlNz" role="1B3o_S" />
    <node concept="3uibUv" id="3MncU7wPlOS" role="EKbjA">
      <ref role="3uigEE" to="2xsi:2SU8oJdIdeb" resolve="ResourceDeclaration" />
    </node>
    <node concept="3uibUv" id="3MncU7wPlYc" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="HasNode" />
    </node>
    <node concept="3clFbW" id="3MncU7wPlRE" role="jymVt">
      <node concept="3cqZAl" id="3MncU7wPlRF" role="3clF45" />
      <node concept="3Tm1VV" id="3MncU7wPlRG" role="1B3o_S" />
      <node concept="3clFbS" id="3MncU7wPlRI" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPlRM" role="3cqZAp">
          <node concept="37vLTI" id="3MncU7wPlRO" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPlRV" role="37vLTx">
              <ref role="3cqZAo" node="3MncU7wPlRL" resolve="resource" />
            </node>
            <node concept="37vLTw" id="3MncU7wPlUi" role="37vLTJ">
              <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myResource" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3MncU7wPHDE" role="3cqZAp">
          <node concept="37vLTI" id="3MncU7wPHTf" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPI1l" role="37vLTx">
              <ref role="3cqZAo" node="3MncU7wPygS" resolve="container" />
            </node>
            <node concept="37vLTw" id="3MncU7wPHDC" role="37vLTJ">
              <ref role="3cqZAo" node="3MncU7wPGbb" resolve="myContainer" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MncU7wPlRL" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="3MncU7wPlRK" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="3MncU7wPygS" role="3clF46">
        <property role="TrG5h" value="container" />
        <node concept="3uibUv" id="3MncU7wPypc" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPFvc" role="jymVt" />
    <node concept="3clFbW" id="3MncU7wPyCn" role="jymVt">
      <node concept="3cqZAl" id="3MncU7wPyCo" role="3clF45" />
      <node concept="3Tm1VV" id="3MncU7wPyCp" role="1B3o_S" />
      <node concept="3clFbS" id="3MncU7wPyCq" role="3clF47">
        <node concept="1VxSAg" id="3MncU7wPFhu" role="3cqZAp">
          <ref role="37wK5l" node="3MncU7wPlRE" resolve="ResourceDeclarationByNode" />
          <node concept="37vLTw" id="3MncU7wPE0r" role="37wK5m">
            <ref role="3cqZAo" node="3MncU7wPyCv" resolve="resource" />
          </node>
          <node concept="1rXfSq" id="3MncU7wPE17" role="37wK5m">
            <ref role="37wK5l" node="3MncU7wPz$9" resolve="containerFromParentNode" />
            <node concept="2OqwBi" id="3MncU7wPEji" role="37wK5m">
              <node concept="37vLTw" id="3MncU7wPE8p" role="2Oq$k0">
                <ref role="3cqZAo" node="3MncU7wPyCv" resolve="resource" />
              </node>
              <node concept="1mfA1w" id="3MncU7wPExW" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MncU7wPyCv" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="3MncU7wPyCw" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPz7W" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPGEs" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="3MncU7wPGEu" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPGEv" role="3clF45">
        <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
      </node>
      <node concept="2AHcQZ" id="3MncU7wPGEw" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPGEx" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPGRE" role="3cqZAp">
          <node concept="37vLTw" id="3MncU7wPGRB" role="3clFbG">
            <ref role="3cqZAo" node="3MncU7wPGbb" resolve="myContainer" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPGEy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPGqE" role="jymVt" />
    <node concept="2YIFZL" id="3MncU7wPz$9" role="jymVt">
      <property role="TrG5h" value="containerFromParentNode" />
      <node concept="3clFbS" id="3MncU7wPz$c" role="3clF47">
        <node concept="3clFbJ" id="3MncU7wPzUR" role="3cqZAp">
          <node concept="2OqwBi" id="3MncU7wP$40" role="3clFbw">
            <node concept="37vLTw" id="3MncU7wPzVy" role="2Oq$k0">
              <ref role="3cqZAo" node="3MncU7wPzNl" resolve="resourceParent" />
            </node>
            <node concept="1mIQ4w" id="3MncU7wP$9J" role="2OqNvi">
              <node concept="chp4Y" id="3MncU7wP$bG" role="cj9EA">
                <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3MncU7wPzUT" role="3clFbx">
            <node concept="3cpWs6" id="3MncU7wP$ei" role="3cqZAp">
              <node concept="2ShNRf" id="3MncU7wP$eK" role="3cqZAk">
                <node concept="1pGfFk" id="3MncU7wP$$s" role="2ShVmc">
                  <ref role="37wK5l" node="3MncU7wP_hx" resolve="DeviceDeclarationByNode" />
                  <node concept="1PxgMI" id="3MncU7wPCU6" role="37wK5m">
                    <node concept="chp4Y" id="3MncU7wPD0Q" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
                    </node>
                    <node concept="37vLTw" id="3MncU7wPCBW" role="1m5AlR">
                      <ref role="3cqZAo" node="3MncU7wPzNl" resolve="resourceParent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3MncU7wPDes" role="3cqZAp">
          <node concept="2OqwBi" id="3MncU7wPDet" role="3clFbw">
            <node concept="37vLTw" id="3MncU7wPDeu" role="2Oq$k0">
              <ref role="3cqZAo" node="3MncU7wPzNl" resolve="resourceParent" />
            </node>
            <node concept="1mIQ4w" id="3MncU7wPDev" role="2OqNvi">
              <node concept="chp4Y" id="3MncU7wPDnO" role="cj9EA">
                <ref role="cht4Q" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3MncU7wPDex" role="3clFbx">
            <node concept="3cpWs6" id="3MncU7wPDey" role="3cqZAp">
              <node concept="2ShNRf" id="3MncU7wPDez" role="3cqZAk">
                <node concept="1pGfFk" id="3MncU7wPDe$" role="2ShVmc">
                  <ref role="37wK5l" node="3MncU7wPjR$" resolve="DeviceTypeDeclarationByNode" />
                  <node concept="1PxgMI" id="3MncU7wPDe_" role="37wK5m">
                    <node concept="chp4Y" id="3MncU7wPDqf" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="3MncU7wPDeB" role="1m5AlR">
                      <ref role="3cqZAo" node="3MncU7wPzNl" resolve="resourceParent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3MncU7wPDLr" role="3cqZAp">
          <node concept="10Nm6u" id="3MncU7wPDSM" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3MncU7wPzly" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPztZ" role="3clF45">
        <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
      </node>
      <node concept="37vLTG" id="3MncU7wPzNl" role="3clF46">
        <property role="TrG5h" value="resourceParent" />
        <node concept="3Tqbb2" id="3MncU7wPzNk" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPlWO" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPm1m" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="3MncU7wPm1o" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPm1p" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="3MncU7wPm1q" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPm1r" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPme3" role="3cqZAp">
          <node concept="2ShNRf" id="3MncU7wPmdX" role="3clFbG">
            <node concept="1pGfFk" id="3MncU7wPmtp" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="3MncU7wPmuE" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myResource" />
              </node>
              <node concept="3clFbT" id="3MncU7wPmAQ" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPm1s" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPmBm" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPm1v" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="3MncU7wPm1x" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPm1y" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3clFbS" id="3MncU7wPm1$" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPmH3" role="3cqZAp">
          <node concept="37vLTw" id="3MncU7wPmH0" role="3clFbG">
            <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myResource" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPm1_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPxYz" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPm1C" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="3MncU7wPm1E" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPm1F" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3MncU7wPm1H" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPmO5" role="3cqZAp">
          <node concept="2OqwBi" id="3MncU7wPn7k" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPmO2" role="2Oq$k0">
              <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myResource" />
            </node>
            <node concept="3TrcHB" id="3MncU7wPnoy" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPm1I" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPnOO" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPo2a" role="jymVt">
      <property role="TrG5h" value="getType" />
      <node concept="3Tm1VV" id="3MncU7wPo2c" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPo2d" role="3clF45">
        <ref role="3uigEE" to="2xsi:2SU8oJdIhW2" resolve="ResourceTypeDescriptor" />
      </node>
      <node concept="2AHcQZ" id="3MncU7wPo2e" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPo2f" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPwwW" role="3cqZAp">
          <node concept="2ShNRf" id="3MncU7wPwwQ" role="3clFbG">
            <node concept="1pGfFk" id="3MncU7wPwKm" role="2ShVmc">
              <ref role="37wK5l" node="3MncU7wPsQb" resolve="ResourceTypeDescriptorByReference" />
              <node concept="2OqwBi" id="3MncU7wPx68" role="37wK5m">
                <node concept="37vLTw" id="3MncU7wPwLA" role="2Oq$k0">
                  <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myResource" />
                </node>
                <node concept="37Cfm0" id="3MncU7wPx$Y" role="2OqNvi">
                  <node concept="1aIX9F" id="3MncU7wPx_0" role="37CeNk">
                    <node concept="26LbJo" id="3MncU7wPxBR" role="1aIX9E">
                      <ref role="26LbJp" to="xiqq:2lwHqHkyELp" resolve="type" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPo2g" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPxEc" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPo2j" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="3MncU7wPo2l" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPo2m" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3MncU7wPo2n" role="11_B2D">
          <ref role="3uigEE" to="2xsi:2SU8oJdHUP_" resolve="ParameterAssigment" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPo2o" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPo2p" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPo2s" role="3cqZAp">
          <node concept="10Nm6u" id="3MncU7wPo2r" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPo2q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3MncU7wPn$$">
    <property role="TrG5h" value="ResourceTypeDeclarationByNode" />
    <node concept="2tJIrI" id="3MncU7wPr0n" role="jymVt" />
    <node concept="312cEg" id="3MncU7wPr2r" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MncU7wPr1t" role="1B3o_S" />
      <node concept="3Tqbb2" id="3MncU7wPr1O" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPr3u" role="jymVt" />
    <node concept="3Tm1VV" id="3MncU7wPn$_" role="1B3o_S" />
    <node concept="3uibUv" id="3MncU7wPr07" role="EKbjA">
      <ref role="3uigEE" to="2xsi:2SU8oJdIdfg" resolve="ResourceTypeDeclaration" />
    </node>
    <node concept="3uibUv" id="3MncU7wPr17" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="HasNode" />
    </node>
    <node concept="3clFbW" id="3MncU7wPr3S" role="jymVt">
      <node concept="3cqZAl" id="3MncU7wPr3T" role="3clF45" />
      <node concept="3Tm1VV" id="3MncU7wPr3U" role="1B3o_S" />
      <node concept="3clFbS" id="3MncU7wPr3W" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPr40" role="3cqZAp">
          <node concept="37vLTI" id="3MncU7wPr42" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPr49" role="37vLTx">
              <ref role="3cqZAo" node="3MncU7wPr3Z" resolve="node" />
            </node>
            <node concept="37vLTw" id="3MncU7wPr6u" role="37vLTJ">
              <ref role="3cqZAo" node="3MncU7wPr2r" resolve="myNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MncU7wPr3Z" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3MncU7wPr3Y" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPr8i" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPr9p" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="3MncU7wPr9r" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPr9s" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3MncU7wPr9t" role="11_B2D">
          <ref role="3uigEE" to="2xsi:2SU8oJdHUP3" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3MncU7wPr9u" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPr9x" role="3cqZAp">
          <node concept="10Nm6u" id="3MncU7wPr9w" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPr9v" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPrnU" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPr9y" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="3MncU7wPr9$" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPr9_" role="3clF45">
        <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
      </node>
      <node concept="3clFbS" id="3MncU7wPr9A" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPrtS" role="3cqZAp">
          <node concept="2ShNRf" id="3MncU7wPrtM" role="3clFbG">
            <node concept="1pGfFk" id="3MncU7wPrHm" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="3MncU7wPrIB" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPr2r" resolve="myNode" />
              </node>
              <node concept="3clFbT" id="3MncU7wPrUL" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPr9B" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPrVh" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPr9E" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="3MncU7wPr9G" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPr9H" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="3clFbS" id="3MncU7wPr9J" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPs1V" role="3cqZAp">
          <node concept="37vLTw" id="3MncU7wPs1S" role="3clFbG">
            <ref role="3cqZAo" node="3MncU7wPr2r" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPr9K" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPs7T" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPr9N" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="3MncU7wPr9P" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPr9Q" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3MncU7wPr9S" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPseJ" role="3cqZAp">
          <node concept="2OqwBi" id="3MncU7wPsx7" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPseG" role="2Oq$k0">
              <ref role="3cqZAo" node="3MncU7wPr2r" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="3MncU7wPsN1" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPr9T" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3MncU7wPobc">
    <property role="TrG5h" value="ResourceTypeDescriptorByReference" />
    <node concept="3Tm1VV" id="3MncU7wPobd" role="1B3o_S" />
    <node concept="3uibUv" id="3MncU7wPodM" role="EKbjA">
      <ref role="3uigEE" to="2xsi:2SU8oJdIhW2" resolve="ResourceTypeDescriptor" />
    </node>
    <node concept="2tJIrI" id="3MncU7wPoex" role="jymVt" />
    <node concept="312cEg" id="3MncU7wPof4" role="jymVt">
      <property role="TrG5h" value="myResourceTypeReference" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MncU7wPoeM" role="1B3o_S" />
      <node concept="2z4iKi" id="3MncU7wPofm" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="3MncU7wPofB" role="jymVt" />
    <node concept="3clFbW" id="3MncU7wPsQb" role="jymVt">
      <node concept="3cqZAl" id="3MncU7wPsQc" role="3clF45" />
      <node concept="3Tm1VV" id="3MncU7wPsQd" role="1B3o_S" />
      <node concept="3clFbS" id="3MncU7wPsQf" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPsQj" role="3cqZAp">
          <node concept="37vLTI" id="3MncU7wPsQl" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPsQs" role="37vLTx">
              <ref role="3cqZAo" node="3MncU7wPsQi" resolve="resourceTypeReference" />
            </node>
            <node concept="37vLTw" id="3MncU7wPsSv" role="37vLTJ">
              <ref role="3cqZAo" node="3MncU7wPof4" resolve="myResourceTypeReference" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MncU7wPsQi" role="3clF46">
        <property role="TrG5h" value="resourceTypeReference" />
        <node concept="2z4iKi" id="3MncU7wPsQh" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPsUb" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPsV8" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3Tm1VV" id="3MncU7wPsVa" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPsVb" role="3clF45">
        <ref role="3uigEE" to="2xsi:2SU8oJdIdfg" resolve="ResourceTypeDeclaration" />
      </node>
      <node concept="2AHcQZ" id="3MncU7wPsVc" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="3MncU7wPsVd" role="3clF47">
        <node concept="3cpWs8" id="3MncU7wPt13" role="3cqZAp">
          <node concept="3cpWsn" id="3MncU7wPt16" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3MncU7wPt11" role="1tU5fm" />
            <node concept="2OqwBi" id="3MncU7wPtep" role="33vP2m">
              <node concept="37vLTw" id="3MncU7wPt1W" role="2Oq$k0">
                <ref role="3cqZAo" node="3MncU7wPof4" resolve="myResourceTypeReference" />
              </node>
              <node concept="2ZHEkA" id="3MncU7wPtnm" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3MncU7wPt0j" role="3cqZAp">
          <node concept="3clFbS" id="3MncU7wPt0l" role="3clFbx">
            <node concept="3cpWs6" id="3MncU7wPtAz" role="3cqZAp">
              <node concept="2ShNRf" id="3MncU7wPtBf" role="3cqZAk">
                <node concept="1pGfFk" id="3MncU7wPtUS" role="2ShVmc">
                  <ref role="37wK5l" node="3MncU7wPr3S" resolve="ResourceTypeDeclarationByNode" />
                  <node concept="1PxgMI" id="3MncU7wPuwv" role="37wK5m">
                    <node concept="chp4Y" id="3MncU7wPuAf" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="3MncU7wPtZX" role="1m5AlR">
                      <ref role="3cqZAo" node="3MncU7wPt16" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3MncU7wPtwR" role="3clFbw">
            <node concept="10Nm6u" id="3MncU7wPtA3" role="3uHU7w" />
            <node concept="37vLTw" id="3MncU7wPtoB" role="3uHU7B">
              <ref role="3cqZAo" node="3MncU7wPt16" resolve="node" />
            </node>
          </node>
          <node concept="9aQIb" id="3MncU7wPuEV" role="9aQIa">
            <node concept="3clFbS" id="3MncU7wPuEW" role="9aQI4">
              <node concept="3cpWs6" id="3MncU7wPuJs" role="3cqZAp">
                <node concept="10Nm6u" id="3MncU7wPuJC" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPsVe" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPwbd" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPsVh" role="jymVt">
      <property role="TrG5h" value="getTypeName" />
      <node concept="3Tm1VV" id="3MncU7wPsVj" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPsVk" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="3MncU7wPsVl" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPsVm" role="3clF47">
        <node concept="3cpWs8" id="3MncU7wPuJX" role="3cqZAp">
          <node concept="3cpWsn" id="3MncU7wPuJY" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3MncU7wPuJZ" role="1tU5fm" />
            <node concept="2OqwBi" id="3MncU7wPuK0" role="33vP2m">
              <node concept="37vLTw" id="3MncU7wPuK1" role="2Oq$k0">
                <ref role="3cqZAo" node="3MncU7wPof4" resolve="myResourceTypeReference" />
              </node>
              <node concept="2ZHEkA" id="3MncU7wPuK2" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3MncU7wPuK3" role="3cqZAp">
          <node concept="3clFbS" id="3MncU7wPuK4" role="3clFbx">
            <node concept="3cpWs6" id="3MncU7wPuK5" role="3cqZAp">
              <node concept="2OqwBi" id="3MncU7wPvc5" role="3cqZAk">
                <node concept="1PxgMI" id="3MncU7wPuK8" role="2Oq$k0">
                  <node concept="chp4Y" id="3MncU7wPuK9" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
                  </node>
                  <node concept="37vLTw" id="3MncU7wPuKa" role="1m5AlR">
                    <ref role="3cqZAo" node="3MncU7wPuJY" resolve="node" />
                  </node>
                </node>
                <node concept="3TrcHB" id="3MncU7wPvsK" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3MncU7wPuKb" role="3clFbw">
            <node concept="10Nm6u" id="3MncU7wPuKc" role="3uHU7w" />
            <node concept="37vLTw" id="3MncU7wPuKd" role="3uHU7B">
              <ref role="3cqZAo" node="3MncU7wPuJY" resolve="node" />
            </node>
          </node>
          <node concept="9aQIb" id="3MncU7wPuKe" role="9aQIa">
            <node concept="3clFbS" id="3MncU7wPuKf" role="9aQI4">
              <node concept="3cpWs6" id="3MncU7wPuKg" role="3cqZAp">
                <node concept="2OqwBi" id="3MncU7wPvMd" role="3cqZAk">
                  <node concept="37vLTw" id="3MncU7wPv$O" role="2Oq$k0">
                    <ref role="3cqZAo" node="3MncU7wPof4" resolve="myResourceTypeReference" />
                  </node>
                  <node concept="1FfNbt" id="3MncU7wPvZX" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPsVn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPw5C" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPsVq" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="3MncU7wPsVs" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPsVt" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3MncU7wPsVu" role="11_B2D">
          <ref role="3uigEE" to="2xsi:2SU8oJdIdjZ" resolve="ParameterDescriptor" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPsVv" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPsVw" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPsVz" role="3cqZAp">
          <node concept="10Nm6u" id="3MncU7wPsVy" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPsVx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

