<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c95c1d38-95d5-42ab-aead-d308fc2b6566(org.fbme.ide.iec61499.adapter.interfacepart)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="rwq3" ref="r:c1a93deb-50a3-4728-ba16-8df97b360951(mps.iec61499.model.fbnetwork)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="lv7i" ref="r:5472e35e-027d-42bb-bcce-32726ec4c9a9(mps.iec61499.model.ecc)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="ntnl" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.descriptors(org.fbme.lib/)" />
    <import index="g27j" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork(org.fbme.lib/)" />
    <import index="g136" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.ecc(org.fbme.lib/)" />
    <import index="1u7h" ref="r:3c4663c2-1cde-45a1-97cb-9049b04f4007(org.fbme.ide.iec61499.repository)" />
    <import index="v4vf" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499(org.fbme.lib/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="gpgy" ref="r:70ba2090-1a36-4ca3-87ef-116d9af7b3ac(org.fbme.ide.st.lang.structure)" implicit="true" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
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
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204834851141" name="jetbrains.mps.lang.smodel.structure.PoundExpression" flags="ng" index="25Kdxt">
        <child id="1204834868751" name="expression" index="25KhWn" />
      </concept>
      <concept id="1204851882688" name="jetbrains.mps.lang.smodel.structure.LinkRefQualifier" flags="ng" index="26LbJo">
        <reference id="1204851882689" name="link" index="26LbJp" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU">
        <reference id="7400021826771268269" name="concept" index="2sp9C9" />
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
      <concept id="942336824646299470" name="jetbrains.mps.lang.smodel.structure.Link_SetTargetPointerOperation" flags="ng" index="1AR3kn">
        <child id="942336824646299471" name="linkTarget" index="1AR3km" />
      </concept>
      <concept id="5708036808576088033" name="jetbrains.mps.lang.smodel.structure.Reference_GetResolveInfo" flags="nn" index="1FfNbt" />
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
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
  </registry>
  <node concept="312cEu" id="1R4IoyQ$gqL">
    <property role="TrG5h" value="CompositeFBTypeByNode" />
    <node concept="3Tm1VV" id="1R4IoyQ$gqM" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQA3C1" role="1zkMxy">
      <ref role="3uigEE" node="1R4IoyQ_Pw7" resolve="FBInterfaceDeclarationWithAdaptersByNode" />
      <node concept="3Tqbb2" id="1R4IoyQA3Ct" role="11_B2D">
        <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
      </node>
    </node>
    <node concept="3uibUv" id="1R4IoyQA3Hp" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~CompositeFBTypeDeclaration" resolve="CompositeFBTypeDeclaration" />
    </node>
    <node concept="2tJIrI" id="1v1P8mMvfhN" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQA3I2" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQA3I3" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQA3I4" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQA3I6" role="3clF47">
        <node concept="XkiVB" id="1R4IoyQA3I8" role="3cqZAp">
          <ref role="37wK5l" node="1R4IoyQA1jy" resolve="FBInterfaceDeclarationWithAdaptersByNode" />
          <node concept="37vLTw" id="1R4IoyQA3Ic" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQA3I9" resolve="node" />
          </node>
          <node concept="37vLTw" id="29$Ci4mLRvo" role="37wK5m">
            <ref role="3cqZAo" node="29$Ci4mLRiR" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQA3I9" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R4IoyQA3SS" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="29$Ci4mLRiR" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="29$Ci4mLRm0" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQA3Wm" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQGq49" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="1R4IoyQGq4b" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQGq4c" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
      </node>
      <node concept="3clFbS" id="1R4IoyQGq4g" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQGq75" role="3cqZAp">
          <node concept="2ShNRf" id="1R4IoyQGq6Z" role="3clFbG">
            <node concept="1pGfFk" id="1R4IoyQGqnX" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="1R4IoyQGqph" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="29$Ci4mLWPh" role="37wK5m">
                <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
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
    <property role="TrG5h" value="FBInterfaceDeclarationByNode" />
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
    <node concept="312cEg" id="29$Ci4mLccL" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="29$Ci4mLaP3" role="1B3o_S" />
      <node concept="3uibUv" id="29$Ci4mLc21" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
        <node concept="3clFbF" id="29$Ci4mLdpQ" role="3cqZAp">
          <node concept="37vLTI" id="29$Ci4mLdGd" role="3clFbG">
            <node concept="37vLTw" id="29$Ci4mLdTh" role="37vLTx">
              <ref role="3cqZAo" node="29$Ci4mLd8H" resolve="repository" />
            </node>
            <node concept="37vLTw" id="29$Ci4mLdpO" role="37vLTJ">
              <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
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
      <node concept="37vLTG" id="29$Ci4mLd8H" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="29$Ci4mLdms" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
    <node concept="2tJIrI" id="3VhUp_YPYL8" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YQ0bC" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="3VhUp_YQ0bD" role="1B3o_S" />
      <node concept="3cqZAl" id="3VhUp_YQ0bF" role="3clF45" />
      <node concept="37vLTG" id="3VhUp_YQ0bG" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="3VhUp_YQ0bH" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="3VhUp_YQ0bJ" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YQ1af" role="3cqZAp">
          <node concept="37vLTI" id="3VhUp_YQ2sF" role="3clFbG">
            <node concept="37vLTw" id="3VhUp_YQ2MH" role="37vLTx">
              <ref role="3cqZAo" node="3VhUp_YQ0bG" resolve="name" />
            </node>
            <node concept="2OqwBi" id="3VhUp_YQ1E7" role="37vLTJ">
              <node concept="37vLTw" id="3VhUp_YQ1ae" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="3VhUp_YQ29f" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YQ0bK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQ_RKv" role="jymVt" />
    <node concept="3clFb_" id="29$Ci4mLfi5" role="jymVt">
      <property role="TrG5h" value="getInputEvents" />
      <node concept="3Tm1VV" id="29$Ci4mLfi6" role="1B3o_S" />
      <node concept="3uibUv" id="29$Ci4mLfi8" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="29$Ci4mLfi9" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="29$Ci4mLfia" role="3clF47">
        <node concept="3clFbF" id="29$Ci4mLgCO" role="3cqZAp">
          <node concept="2ShNRf" id="29$Ci4mLgCM" role="3clFbG">
            <node concept="1pGfFk" id="29$Ci4mLhWL" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="29$Ci4mLiiK" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
              </node>
              <node concept="2OqwBi" id="29$Ci4mLj1w" role="37wK5m">
                <node concept="37vLTw" id="29$Ci4mLiFq" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="29$Ci4mLjTH" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
                </node>
              </node>
              <node concept="3VsKOn" id="29$Ci4mLlEk" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
              </node>
              <node concept="37vLTw" id="29$Ci4mLmeC" role="37wK5m">
                <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="29$Ci4mLfib" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="29$Ci4mLw0w" role="jymVt" />
    <node concept="3clFb_" id="29$Ci4mLfie" role="jymVt">
      <property role="TrG5h" value="getOutputEvents" />
      <node concept="3Tm1VV" id="29$Ci4mLfif" role="1B3o_S" />
      <node concept="3uibUv" id="29$Ci4mLfih" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="29$Ci4mLfii" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="29$Ci4mLfij" role="3clF47">
        <node concept="3clFbF" id="29$Ci4mLmAy" role="3cqZAp">
          <node concept="2ShNRf" id="29$Ci4mLmAz" role="3clFbG">
            <node concept="1pGfFk" id="29$Ci4mLmA$" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="29$Ci4mLmA_" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
              </node>
              <node concept="2OqwBi" id="29$Ci4mLmAA" role="37wK5m">
                <node concept="37vLTw" id="29$Ci4mLmAB" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="29$Ci4mLnKY" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
                </node>
              </node>
              <node concept="3VsKOn" id="29$Ci4mLmAD" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
              </node>
              <node concept="37vLTw" id="29$Ci4mLmAE" role="37wK5m">
                <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="29$Ci4mLfik" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="29$Ci4mLuE5" role="jymVt" />
    <node concept="3clFb_" id="29$Ci4mLfin" role="jymVt">
      <property role="TrG5h" value="getInputParameters" />
      <node concept="3Tm1VV" id="29$Ci4mLfio" role="1B3o_S" />
      <node concept="3uibUv" id="29$Ci4mLfiq" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="29$Ci4mLfir" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="29$Ci4mLfis" role="3clF47">
        <node concept="3clFbF" id="29$Ci4mLnTs" role="3cqZAp">
          <node concept="2ShNRf" id="29$Ci4mLnTt" role="3clFbG">
            <node concept="1pGfFk" id="29$Ci4mLnTu" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="29$Ci4mLotd" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="2OqwBi" id="29$Ci4mLnTw" role="37wK5m">
                <node concept="37vLTw" id="29$Ci4mLnTx" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="29$Ci4mLpee" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
                </node>
              </node>
              <node concept="3VsKOn" id="29$Ci4mLnTz" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="29$Ci4mLnT$" role="37wK5m">
                <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="29$Ci4mLfit" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="29$Ci4mLtLU" role="jymVt" />
    <node concept="3clFb_" id="29$Ci4mLfiw" role="jymVt">
      <property role="TrG5h" value="getOutputParameters" />
      <node concept="3Tm1VV" id="29$Ci4mLfix" role="1B3o_S" />
      <node concept="3uibUv" id="29$Ci4mLfiz" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="29$Ci4mLfi$" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="29$Ci4mLfi_" role="3clF47">
        <node concept="3clFbF" id="29$Ci4mLqmi" role="3cqZAp">
          <node concept="2ShNRf" id="29$Ci4mLqmj" role="3clFbG">
            <node concept="1pGfFk" id="29$Ci4mLqmk" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="29$Ci4mLqml" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="2OqwBi" id="29$Ci4mLqmm" role="37wK5m">
                <node concept="37vLTw" id="29$Ci4mLqmn" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="29$Ci4mLrq3" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
                </node>
              </node>
              <node concept="3VsKOn" id="29$Ci4mLqmp" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="29$Ci4mLqmq" role="37wK5m">
                <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="29$Ci4mLfiA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1JYTWWzyYzW" role="jymVt" />
    <node concept="3clFb_" id="1JYTWWzyZUR" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="1JYTWWzyZUT" role="1B3o_S" />
      <node concept="16syzq" id="1DfKejr9V21" role="3clF45">
        <ref role="16sUi3" node="1R4IoyQ_1BB" resolve="T" />
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
    <node concept="2tJIrI" id="31DWWgFh8Y5" role="jymVt" />
    <node concept="3clFb_" id="31DWWgFhavC" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="31DWWgFhavE" role="1B3o_S" />
      <node concept="3uibUv" id="31DWWgFhavF" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="31DWWgFhavH" role="3clF47">
        <node concept="3clFbF" id="31DWWgFhbOC" role="3cqZAp">
          <node concept="37vLTw" id="31DWWgFhbO_" role="3clFbG">
            <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="31DWWgFhavI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3tYGpuLw7cf" role="jymVt" />
    <node concept="3Tm1VV" id="1R4IoyQ_1AA" role="1B3o_S" />
    <node concept="16euLQ" id="1R4IoyQ_1BB" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3Tqbb2" id="1R4IoyQ_1CU" role="3ztrMU">
        <ref role="ehGHo" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
      </node>
    </node>
    <node concept="3uibUv" id="29$Ci4mL8J0" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~FBInterfaceDeclaration" resolve="FBInterfaceDeclaration" />
    </node>
    <node concept="3uibUv" id="1JYTWWzyXeC" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFb_" id="3tYGpuLw8xl" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="3tYGpuLw8xm" role="3clF45" />
      <node concept="3Tm1VV" id="3tYGpuLw8xn" role="1B3o_S" />
      <node concept="3clFbS" id="3tYGpuLw8xo" role="3clF47">
        <node concept="3clFbJ" id="3tYGpuLw8xp" role="3cqZAp">
          <node concept="3clFbS" id="3tYGpuLw8xq" role="3clFbx">
            <node concept="3cpWs6" id="3tYGpuLw8xr" role="3cqZAp">
              <node concept="3clFbT" id="3tYGpuLw8xs" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3tYGpuLw8xt" role="3clFbw">
            <node concept="Xjq3P" id="3tYGpuLw8xk" role="3uHU7B" />
            <node concept="37vLTw" id="3tYGpuLw8xu" role="3uHU7w">
              <ref role="3cqZAo" node="3tYGpuLw8xP" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3tYGpuLw8xv" role="3cqZAp">
          <node concept="3clFbS" id="3tYGpuLw8xw" role="3clFbx">
            <node concept="3cpWs6" id="3tYGpuLw8xx" role="3cqZAp">
              <node concept="3clFbT" id="3tYGpuLw8xy" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="3tYGpuLw8xz" role="3clFbw">
            <node concept="3clFbC" id="3tYGpuLw8x$" role="3uHU7B">
              <node concept="37vLTw" id="3tYGpuLw8x_" role="3uHU7B">
                <ref role="3cqZAo" node="3tYGpuLw8xP" resolve="o" />
              </node>
              <node concept="10Nm6u" id="3tYGpuLw8xA" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="3tYGpuLw8xB" role="3uHU7w">
              <node concept="2OqwBi" id="3tYGpuLw8xC" role="3uHU7B">
                <node concept="Xjq3P" id="3tYGpuLw8xD" role="2Oq$k0" />
                <node concept="liA8E" id="3tYGpuLw8xE" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="3tYGpuLw8xF" role="3uHU7w">
                <node concept="37vLTw" id="3tYGpuLw8xG" role="2Oq$k0">
                  <ref role="3cqZAo" node="3tYGpuLw8xP" resolve="o" />
                </node>
                <node concept="liA8E" id="3tYGpuLw8xH" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3tYGpuLw8xI" role="3cqZAp" />
        <node concept="3cpWs8" id="3tYGpuLw8xJ" role="3cqZAp">
          <node concept="3cpWsn" id="3tYGpuLw8xK" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="3tYGpuLw8xL" role="1tU5fm">
              <ref role="3uigEE" node="1R4IoyQ_1A_" resolve="FBInterfaceDeclarationByNode" />
            </node>
            <node concept="10QFUN" id="3tYGpuLw8xM" role="33vP2m">
              <node concept="3uibUv" id="3tYGpuLw8xN" role="10QFUM">
                <ref role="3uigEE" node="1R4IoyQ_1A_" resolve="FBInterfaceDeclarationByNode" />
              </node>
              <node concept="37vLTw" id="3tYGpuLw8xO" role="10QFUP">
                <ref role="3cqZAo" node="3tYGpuLw8xP" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3tYGpuLw8xZ" role="3cqZAp">
          <node concept="3clFbS" id="3tYGpuLw8y0" role="3clFbx">
            <node concept="3cpWs6" id="3tYGpuLw8y1" role="3cqZAp">
              <node concept="3clFbT" id="3tYGpuLw8y2" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="3tYGpuLwdj2" role="3clFbw">
            <node concept="2OqwBi" id="3tYGpuLwf9v" role="3uHU7w">
              <node concept="37vLTw" id="3tYGpuLweKD" role="2Oq$k0">
                <ref role="3cqZAo" node="3tYGpuLw8xK" resolve="that" />
              </node>
              <node concept="2OwXpG" id="3tYGpuLwfti" role="2OqNvi">
                <ref role="2Oxat5" node="1R4IoyQ_1Yn" resolve="myNode" />
              </node>
            </node>
            <node concept="37vLTw" id="3tYGpuLwbNY" role="3uHU7B">
              <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3tYGpuLw8yh" role="3cqZAp" />
        <node concept="3clFbF" id="3tYGpuLw8yi" role="3cqZAp">
          <node concept="3clFbT" id="3tYGpuLw8yj" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3tYGpuLw8xP" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="3tYGpuLw8xQ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYGpuLw8xR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="3tYGpuLw8yk" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="3tYGpuLw8yl" role="3clF45" />
      <node concept="3Tm1VV" id="3tYGpuLw8ym" role="1B3o_S" />
      <node concept="3clFbS" id="3tYGpuLw8yn" role="3clF47">
        <node concept="3clFbF" id="3tYGpuLwqVf" role="3cqZAp">
          <node concept="3K4zz7" id="3tYGpuLw8yE" role="3clFbG">
            <node concept="3cmrfG" id="3tYGpuLw8yF" role="3K4GZi">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="3y3z36" id="3tYGpuLw8yG" role="3K4Cdx">
              <node concept="10Nm6u" id="3tYGpuLw8yH" role="3uHU7w" />
              <node concept="37vLTw" id="3tYGpuLw8y$" role="3uHU7B">
                <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="3tYGpuLwoQz" role="3K4E3e">
              <node concept="1eOMI4" id="3tYGpuLwn2y" role="2Oq$k0">
                <node concept="10QFUN" id="3tYGpuLwnuv" role="1eOMHV">
                  <node concept="3uibUv" id="3tYGpuLwokJ" role="10QFUM">
                    <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                  </node>
                  <node concept="37vLTw" id="3tYGpuLw8y_" role="10QFUP">
                    <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3tYGpuLwpw9" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3tYGpuLw8yo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1R4IoyQ_Pw7">
    <property role="TrG5h" value="FBInterfaceDeclarationWithAdaptersByNode" />
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
          <ref role="37wK5l" node="1R4IoyQ_Trz" resolve="FBInterfaceDeclarationByNode" />
          <node concept="37vLTw" id="1R4IoyQA1jG" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQA1jD" resolve="node" />
          </node>
          <node concept="37vLTw" id="29$Ci4mL$oz" role="37wK5m">
            <ref role="3cqZAo" node="29$Ci4mL$il" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQA1jD" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="16syzq" id="1R4IoyQA1jF" role="1tU5fm">
          <ref role="16sUi3" node="1R4IoyQ_QUe" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="29$Ci4mL$il" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="29$Ci4mL$j6" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQA0W0" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQ_XNt" role="jymVt">
      <property role="TrG5h" value="getSockets" />
      <node concept="3Tm1VV" id="1R4IoyQ_XNu" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQ_XNv" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="29$Ci4mL$FU" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~SocketDeclaration" resolve="SocketDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQ_XNU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="1R4IoyQ_XNV" role="3clF47">
        <node concept="3clFbF" id="29$Ci4mL$Rj" role="3cqZAp">
          <node concept="2ShNRf" id="29$Ci4mL$Rf" role="3clFbG">
            <node concept="1pGfFk" id="29$Ci4mL_v_" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="29$Ci4mL_Kx" role="37wK5m">
                <node concept="37vLTw" id="29$Ci4mL_wW" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="29$Ci4mLA6e" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                </node>
              </node>
              <node concept="3VsKOn" id="29$Ci4mLAFJ" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~SocketDeclaration" resolve="SocketDeclaration" />
              </node>
              <node concept="37vLTw" id="29$Ci4mLB2u" role="37wK5m">
                <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
              </node>
              <node concept="3uibUv" id="29$Ci4mLCpN" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~SocketDeclaration" resolve="SocketDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQJzQE" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQ_XNY" role="jymVt">
      <property role="TrG5h" value="getPlugs" />
      <node concept="3Tm1VV" id="1R4IoyQ_XNZ" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQ_XO0" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="29$Ci4mLCVI" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~PlugDeclaration" resolve="PlugDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQ_XOr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="1R4IoyQ_XOs" role="3clF47">
        <node concept="3clFbF" id="29$Ci4mLBpa" role="3cqZAp">
          <node concept="2ShNRf" id="29$Ci4mLBpb" role="3clFbG">
            <node concept="1pGfFk" id="29$Ci4mLBpc" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="29$Ci4mLBpd" role="37wK5m">
                <node concept="37vLTw" id="29$Ci4mLBpe" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="29$Ci4mLBpf" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:75nMhMfSQRy" resolve="sockets" />
                </node>
              </node>
              <node concept="3VsKOn" id="29$Ci4mLBpg" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~PlugDeclaration" resolve="PlugDeclaration" />
              </node>
              <node concept="37vLTw" id="29$Ci4mLBph" role="37wK5m">
                <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
              </node>
              <node concept="3uibUv" id="29$Ci4mLCKF" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~PlugDeclaration" resolve="PlugDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1R4IoyQ_Pw8" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQ_Xel" role="1zkMxy">
      <ref role="3uigEE" node="1R4IoyQ_1A_" resolve="FBInterfaceDeclarationByNode" />
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
    <node concept="3uibUv" id="29$Ci4mLzZt" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~FBInterfaceDeclarationWithAdapters" resolve="FBInterfaceDeclarationWithAdapters" />
    </node>
  </node>
  <node concept="312cEu" id="1R4IoyQHa9H">
    <property role="TrG5h" value="BasicFBTypeByNode" />
    <node concept="3Tm1VV" id="1R4IoyQHa9I" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQHb$P" role="1zkMxy">
      <ref role="3uigEE" node="1R4IoyQ_Pw7" resolve="FBInterfaceDeclarationWithAdaptersByNode" />
      <node concept="3Tqbb2" id="1R4IoyQHb_h" role="11_B2D">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQHbDG" role="jymVt" />
    <node concept="2tJIrI" id="1R0_JUQUMu4" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQHbEt" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQHbEu" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQHbEv" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQHbEx" role="3clF47">
        <node concept="XkiVB" id="1R4IoyQHbEz" role="3cqZAp">
          <ref role="37wK5l" node="1R4IoyQA1jy" resolve="FBInterfaceDeclarationWithAdaptersByNode" />
          <node concept="37vLTw" id="1R4IoyQHbEB" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQHbE$" resolve="node" />
          </node>
          <node concept="37vLTw" id="29$Ci4mLDXu" role="37wK5m">
            <ref role="3cqZAo" node="1R0_JUQUMx0" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQHbE$" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R4IoyQHbME" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1R0_JUQUMx0" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1R0_JUQUMyY" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQHbPt" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQHc1S" role="jymVt">
      <property role="TrG5h" value="getEcc" />
      <node concept="3Tm1VV" id="1R4IoyQHc1U" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQHc1V" role="3clF45">
        <ref role="3uigEE" to="g136:~ECC" resolve="ECC" />
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
              <node concept="37vLTw" id="29$Ci4mLDYd" role="37wK5m">
                <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
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
      <ref role="3uigEE" to="cwd8:~BasicFBTypeDeclaration" resolve="BasicFBTypeDeclaration" />
    </node>
  </node>
  <node concept="312cEu" id="1R4IoyQJoAV">
    <property role="TrG5h" value="ServiceInterfaceFBTypeByNode" />
    <node concept="3Tm1VV" id="1R4IoyQJoAW" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQJoCq" role="1zkMxy">
      <ref role="3uigEE" node="1R4IoyQ_Pw7" resolve="FBInterfaceDeclarationWithAdaptersByNode" />
      <node concept="3Tqbb2" id="1R4IoyQJoCS" role="11_B2D">
        <ref role="ehGHo" to="xiqq:23XkovVSBlc" resolve="ServiceInterfaceFBTypeDeclaration" />
      </node>
    </node>
    <node concept="3uibUv" id="1R4IoyQJoHl" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~ServiceInterfaceFBTypeDeclaration" resolve="ServiceInterfaceFBTypeDeclaration" />
    </node>
    <node concept="2tJIrI" id="1R4IoyQJsFq" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQJsG$" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQJsG_" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQJsGA" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQJsGC" role="3clF47">
        <node concept="XkiVB" id="1R4IoyQJsGE" role="3cqZAp">
          <ref role="37wK5l" node="1R4IoyQA1jy" resolve="FBInterfaceDeclarationWithAdaptersByNode" />
          <node concept="37vLTw" id="1R4IoyQJsGI" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQJsGF" resolve="node" />
          </node>
          <node concept="37vLTw" id="29$Ci4mLXc0" role="37wK5m">
            <ref role="3cqZAo" node="29$Ci4mLX5v" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQJsGF" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R4IoyQJsOz" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:23XkovVSBlc" resolve="ServiceInterfaceFBTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="29$Ci4mLX5v" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="29$Ci4mLX6e" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1R4IoyQJyKg">
    <property role="TrG5h" value="SubapplicationTypeByNode" />
    <node concept="2tJIrI" id="1R4IoyQJyTd" role="jymVt" />
    <node concept="3Tm1VV" id="1R4IoyQJyKh" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyQJyLq" role="1zkMxy">
      <ref role="3uigEE" node="1R4IoyQ_Pw7" resolve="FBInterfaceDeclarationWithAdaptersByNode" />
      <node concept="3Tqbb2" id="1R4IoyQJyLT" role="11_B2D">
        <ref role="ehGHo" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
      </node>
    </node>
    <node concept="3uibUv" id="1R4IoyQJySZ" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~SubapplicationTypeDeclaration" resolve="SubapplicationTypeDeclaration" />
    </node>
    <node concept="3clFbW" id="1R4IoyQJyUq" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQJyUr" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQJyUs" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQJyUu" role="3clF47">
        <node concept="XkiVB" id="1R4IoyQJyUw" role="3cqZAp">
          <ref role="37wK5l" node="1R4IoyQA1jy" resolve="FBInterfaceDeclarationWithAdaptersByNode" />
          <node concept="37vLTw" id="1R4IoyQJyU$" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQJyUx" resolve="node" />
          </node>
          <node concept="37vLTw" id="29$Ci4mMaa_" role="37wK5m">
            <ref role="3cqZAo" node="29$Ci4mMa3k" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQJyUx" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R4IoyQJyZH" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="29$Ci4mMa3k" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="29$Ci4mMa6g" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQJz2y" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQJz4u" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="1R4IoyQJz4w" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJz4x" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
      </node>
      <node concept="3clFbS" id="1R4IoyQJz4z" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJz7i" role="3cqZAp">
          <node concept="2ShNRf" id="1R4IoyQJz7c" role="3clFbG">
            <node concept="1pGfFk" id="1R4IoyQJzjz" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="1R4IoyQJzlA" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyQ_1Yn" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="29$Ci4mMaqV" role="37wK5m">
                <ref role="3cqZAo" node="29$Ci4mLccL" resolve="myRepository" />
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
      <ref role="3uigEE" node="1R4IoyQ_1A_" resolve="FBInterfaceDeclarationByNode" />
      <node concept="3Tqbb2" id="1R4IoyQKatd" role="11_B2D">
        <ref role="ehGHo" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
      </node>
    </node>
    <node concept="3uibUv" id="1R4IoyQKawr" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
    </node>
    <node concept="2tJIrI" id="1R4IoyQKawP" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQKaxv" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQKaxw" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQKaxx" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQKaxz" role="3clF47">
        <node concept="XkiVB" id="1R4IoyQKax_" role="3cqZAp">
          <ref role="37wK5l" node="1R4IoyQ_Trz" resolve="FBInterfaceDeclarationByNode" />
          <node concept="37vLTw" id="1R4IoyQKaxD" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQKaxA" resolve="node" />
          </node>
          <node concept="37vLTw" id="3VhUp_YVBDs" role="37wK5m">
            <ref role="3cqZAo" node="1v1P8mMut_e" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQKaxA" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R4IoyQKa_f" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1v1P8mMut_e" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1v1P8mMutA1" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="1JYTWWzyU94">
    <property role="TrG5h" value="RepositoryEntry" />
    <node concept="2tJIrI" id="1JYTWWzyU9i" role="jymVt" />
    <node concept="3clFb_" id="1JYTWWzyU9A" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3clFbS" id="1JYTWWzyU9D" role="3clF47" />
      <node concept="3Tm1VV" id="1JYTWWzyU9E" role="1B3o_S" />
      <node concept="3uibUv" id="1JYTWWzyU9r" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="4FdYnQC9Fqw" role="jymVt" />
    <node concept="3clFb_" id="4FdYnQC9Frm" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3clFbS" id="4FdYnQC9Frp" role="3clF47" />
      <node concept="3Tm1VV" id="4FdYnQC9Frq" role="1B3o_S" />
      <node concept="3uibUv" id="4FdYnQC9Fr1" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1JYTWWzyU95" role="1B3o_S" />
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
    <node concept="312cEg" id="1R0_JUQWciC" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R0_JUQWbYu" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQWcdk" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
      <node concept="37vLTG" id="1R0_JUQWcPo" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1R0_JUQWcXr" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
        <node concept="3clFbF" id="1R0_JUQWcyi" role="3cqZAp">
          <node concept="37vLTI" id="1R0_JUQWcIs" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQWcYw" role="37vLTx">
              <ref role="3cqZAo" node="1R0_JUQWcPo" resolve="repository" />
            </node>
            <node concept="37vLTw" id="1R0_JUQWcyg" role="37vLTJ">
              <ref role="3cqZAo" node="1R0_JUQWciC" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2SU8oJdHMP0" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2SU8oJdHN50" role="jymVt" />
    <node concept="3Tm1VV" id="2SU8oJdHGJG" role="1B3o_S" />
    <node concept="3uibUv" id="2SU8oJdHMOp" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
    </node>
    <node concept="3uibUv" id="2SU8oJdHMOE" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
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
    <node concept="2tJIrI" id="sOaa8ZWPb3" role="jymVt" />
    <node concept="3clFb_" id="sOaa8ZWP$I" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="sOaa8ZWP$K" role="1B3o_S" />
      <node concept="3uibUv" id="sOaa8ZWP$L" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="sOaa8ZWP$N" role="3clF47">
        <node concept="3clFbF" id="sOaa8ZWPZp" role="3cqZAp">
          <node concept="37vLTw" id="sOaa8ZWPZm" role="3clFbG">
            <ref role="3cqZAo" node="1R0_JUQWciC" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="sOaa8ZWP$O" role="2AJF6D">
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
    <node concept="2tJIrI" id="_2FpOZlgOK" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZlhmS" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="_2FpOZlhmT" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZlhmV" role="3clF45" />
      <node concept="37vLTG" id="_2FpOZlhmW" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="_2FpOZlhmX" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZlhmZ" role="3clF47">
        <node concept="3clFbF" id="_2FpOZlhNO" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZliGX" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZliZk" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZlhmW" resolve="name" />
            </node>
            <node concept="2OqwBi" id="_2FpOZli54" role="37vLTJ">
              <node concept="37vLTw" id="_2FpOZlhNN" role="2Oq$k0">
                <ref role="3cqZAo" node="2SU8oJdHMRl" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="_2FpOZlinz" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZlhn0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdUdQX" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdUdT8" role="jymVt">
      <property role="TrG5h" value="getApplications" />
      <node concept="3Tm1VV" id="2SU8oJdUdTa" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdUdTb" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2SU8oJdUdTc" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ApplicationDeclaration" resolve="ApplicationDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdUdTd" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2SU8oJdUdTe" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQWdkI" role="3cqZAp">
          <node concept="2ShNRf" id="1R0_JUQWdkE" role="3clFbG">
            <node concept="1pGfFk" id="1R0_JUQWdFB" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="1R0_JUQWe2b" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQWdGG" role="2Oq$k0">
                  <ref role="3cqZAo" node="2SU8oJdHMRl" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQWevI" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:uLhTRR7MVq" resolve="applications" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWhvj" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ApplicationDeclaration" resolve="ApplicationDeclaration" />
              </node>
              <node concept="37vLTw" id="1R0_JUQWhKA" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWciC" resolve="myRepository" />
              </node>
              <node concept="3uibUv" id="1R0_JUQWizU" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ApplicationDeclaration" resolve="ApplicationDeclaration" />
              </node>
            </node>
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
          <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdUdTn" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2SU8oJdUdTo" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQWiW3" role="3cqZAp">
          <node concept="2ShNRf" id="1R0_JUQWiW4" role="3clFbG">
            <node concept="1pGfFk" id="1R0_JUQWiW5" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="1R0_JUQWiW6" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQWiW7" role="2Oq$k0">
                  <ref role="3cqZAo" node="2SU8oJdHMRl" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQWjtZ" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:uLhTRR7MVs" resolve="devices" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWiW9" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
              </node>
              <node concept="37vLTw" id="1R0_JUQWiWa" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWciC" resolve="myRepository" />
              </node>
              <node concept="3uibUv" id="1R0_JUQWk8R" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
              </node>
            </node>
          </node>
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
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4gibKcMrfNm" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQWkH_" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMrduz" role="jymVt" />
    <node concept="3Tm1VV" id="4dM3MZ7oKoR" role="1B3o_S" />
    <node concept="3uibUv" id="4gibKcMrdui" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~ApplicationDeclaration" resolve="ApplicationDeclaration" />
    </node>
    <node concept="3uibUv" id="4gibKcMrdFU" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
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
              <ref role="3cqZAo" node="4gibKcMrg36" resolve="repository" />
            </node>
            <node concept="37vLTw" id="4gibKcMrgaA" role="37vLTJ">
              <ref role="3cqZAo" node="4gibKcMrfXn" resolve="myRepository" />
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
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1R0_JUQWkUs" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMrdQM" role="jymVt" />
    <node concept="3clFb_" id="4gibKcMrdRG" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="4gibKcMrdRI" role="1B3o_S" />
      <node concept="3uibUv" id="4gibKcMrdRJ" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
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
              <node concept="37vLTw" id="29$Ci4mLZnz" role="37wK5m">
                <ref role="3cqZAo" node="4gibKcMrfXn" resolve="myRepository" />
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
      <node concept="3Tqbb2" id="1DfKejra0Su" role="3clF45">
        <ref role="ehGHo" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="sOaa8ZXk3S" role="jymVt" />
    <node concept="3clFb_" id="sOaa8ZXkl3" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="sOaa8ZXkl5" role="1B3o_S" />
      <node concept="3uibUv" id="sOaa8ZXkl6" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="sOaa8ZXkl8" role="3clF47">
        <node concept="3clFbF" id="sOaa8ZXklb" role="3cqZAp">
          <node concept="37vLTw" id="sOaa8ZXkww" role="3clFbG">
            <ref role="3cqZAo" node="4gibKcMrfXn" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="sOaa8ZXkl9" role="2AJF6D">
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
    <node concept="2tJIrI" id="sOaa8ZXkCv" role="jymVt" />
    <node concept="3clFb_" id="sOaa8ZXkV2" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="sOaa8ZXkV3" role="1B3o_S" />
      <node concept="3cqZAl" id="sOaa8ZXkV5" role="3clF45" />
      <node concept="37vLTG" id="sOaa8ZXkV6" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="sOaa8ZXkV7" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="sOaa8ZXkV9" role="3clF47">
        <node concept="3clFbF" id="sOaa8ZXllL" role="3cqZAp">
          <node concept="37vLTI" id="sOaa8ZXmaO" role="3clFbG">
            <node concept="37vLTw" id="sOaa8ZXmn0" role="37vLTx">
              <ref role="3cqZAo" node="sOaa8ZXkV6" resolve="name" />
            </node>
            <node concept="2OqwBi" id="sOaa8ZXlxd" role="37vLTJ">
              <node concept="37vLTw" id="sOaa8ZXllK" role="2Oq$k0">
                <ref role="3cqZAo" node="4gibKcMrdFn" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="sOaa8ZXlSI" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="sOaa8ZXkVa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMrgBQ" role="jymVt" />
    <node concept="3clFb_" id="4gibKcMrgNG" role="jymVt">
      <property role="TrG5h" value="getSytem" />
      <node concept="3Tm1VV" id="4gibKcMrgNI" role="1B3o_S" />
      <node concept="3uibUv" id="4gibKcMrgNJ" role="3clF45">
        <ref role="3uigEE" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
      </node>
      <node concept="2AHcQZ" id="4gibKcMrgNK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4gibKcMrgNL" role="3clF47">
        <node concept="3clFbF" id="4gibKcMrh52" role="3cqZAp">
          <node concept="2OqwBi" id="1R0_JUQWlrG" role="3clFbG">
            <node concept="37vLTw" id="4gibKcMrh4Z" role="2Oq$k0">
              <ref role="3cqZAo" node="4gibKcMrfXn" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="1R0_JUQWlBW" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="2OqwBi" id="1R0_JUQWlQu" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQWlDH" role="2Oq$k0">
                  <ref role="3cqZAo" node="4gibKcMrdFn" resolve="myNode" />
                </node>
                <node concept="1mfA1w" id="1R0_JUQWm9y" role="2OqNvi" />
              </node>
              <node concept="3VsKOn" id="1R0_JUQWmmw" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
              </node>
            </node>
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
    <node concept="312cEg" id="3MncU7wPdR9" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MncU7wPdQb" role="1B3o_S" />
      <node concept="3Tqbb2" id="3MncU7wPdQy" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="1R0_JUQWogq" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R0_JUQWnU4" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQWo8z" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQWnJE" role="jymVt" />
    <node concept="3Tm1VV" id="3MncU7wPdcv" role="1B3o_S" />
    <node concept="3uibUv" id="3MncU7wPdP$" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
    </node>
    <node concept="3uibUv" id="3MncU7wPdPP" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFbW" id="3MncU7wPdU_" role="jymVt">
      <node concept="3cqZAl" id="3MncU7wPdUA" role="3clF45" />
      <node concept="3Tm1VV" id="3MncU7wPdUB" role="1B3o_S" />
      <node concept="3clFbS" id="3MncU7wPdUD" role="3clF47">
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
        <node concept="3clFbF" id="3MncU7wPdUH" role="3cqZAp">
          <node concept="37vLTI" id="3MncU7wPdUJ" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPdUQ" role="37vLTx">
              <ref role="3cqZAo" node="3MncU7wPdUG" resolve="repository" />
            </node>
            <node concept="37vLTw" id="1R0_JUQWozJ" role="37vLTJ">
              <ref role="3cqZAo" node="1R0_JUQWogq" resolve="myRepository" />
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
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1R0_JUQWoqU" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPe5_" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPe8E" role="jymVt">
      <property role="TrG5h" value="getSystem" />
      <node concept="3Tm1VV" id="3MncU7wPe8G" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPe8H" role="3clF45">
        <ref role="3uigEE" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
      </node>
      <node concept="3clFbS" id="3MncU7wPe8I" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPel7" role="3cqZAp">
          <node concept="2OqwBi" id="1R0_JUQWp0t" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQWoTZ" role="2Oq$k0">
              <ref role="3cqZAo" node="1R0_JUQWogq" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="1R0_JUQWpf9" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="37vLTw" id="1R0_JUQWqLu" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPdR9" resolve="myNode" />
              </node>
              <node concept="3VsKOn" id="1R0_JUQWrDJ" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~SystemDeclaration" resolve="SystemDeclaration" />
              </node>
            </node>
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
        <ref role="3uigEE" to="ntnl:~DeviceTypeDescriptor" resolve="DeviceTypeDescriptor" />
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
        <node concept="3uibUv" id="sOaa8ZXaOf" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
        </node>
      </node>
      <node concept="3clFbS" id="3MncU7wPe8Z" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQWsnr" role="3cqZAp">
          <node concept="2ShNRf" id="1R0_JUQWsnh" role="3clFbG">
            <node concept="1pGfFk" id="1R0_JUQWsJ4" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="1R0_JUQWtg8" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQWsTY" role="2Oq$k0">
                  <ref role="3cqZAo" node="3MncU7wPdR9" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQWtO7" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:fshQXbRNVN" resolve="parameters" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWuTc" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
              <node concept="37vLTw" id="1R0_JUQWvkz" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWogq" resolve="myRepository" />
              </node>
              <node concept="3uibUv" id="sOaa8ZXbui" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
            </node>
          </node>
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
          <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3MncU7wPe98" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQWwF_" role="3cqZAp">
          <node concept="2ShNRf" id="1R0_JUQWwFB" role="3clFbG">
            <node concept="1pGfFk" id="1R0_JUQWwFC" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="1R0_JUQWwFD" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQWwFE" role="2Oq$k0">
                  <ref role="3cqZAo" node="3MncU7wPdR9" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQWxWl" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:1WTKUmKKVPK" resolve="resources" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWwFG" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
              </node>
              <node concept="37vLTw" id="1R0_JUQWwFH" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWogq" resolve="myRepository" />
              </node>
              <node concept="3uibUv" id="1R0_JUQWx3s" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
              </node>
            </node>
          </node>
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
        <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
      </node>
      <node concept="2AHcQZ" id="3MncU7wPe9g" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="3MncU7wPe9h" role="3clF47">
        <node concept="3clFbF" id="_2FpOZlwOv" role="3cqZAp">
          <node concept="2ShNRf" id="_2FpOZlwOp" role="3clFbG">
            <node concept="1pGfFk" id="_2FpOZlx4s" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="_2FpOZlx5$" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPdR9" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="_2FpOZlxWM" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWogq" resolve="myRepository" />
              </node>
            </node>
          </node>
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
    <node concept="3clFb_" id="_2FpOZlyID" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="_2FpOZlyIF" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZlyIG" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="_2FpOZlyII" role="3clF47">
        <node concept="3clFbF" id="_2FpOZlyIL" role="3cqZAp">
          <node concept="10Nm6u" id="_2FpOZlyIK" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZlyIJ" role="2AJF6D">
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
    <node concept="3clFb_" id="_2FpOZlyIM" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="_2FpOZlyIN" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZlyIP" role="3clF45" />
      <node concept="37vLTG" id="_2FpOZlyIQ" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="_2FpOZlyIR" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZlyIT" role="3clF47">
        <node concept="3clFbF" id="_2FpOZl$E8" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZl_xx" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZl_KF" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZlyIQ" resolve="name" />
            </node>
            <node concept="2OqwBi" id="_2FpOZl$P$" role="37vLTJ">
              <node concept="37vLTw" id="_2FpOZl$E7" role="2Oq$k0">
                <ref role="3cqZAo" node="3MncU7wPdR9" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="_2FpOZl_fo" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZlyIU" role="2AJF6D">
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
    <node concept="312cEg" id="29$Ci4mM1iI" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="29$Ci4mM14o" role="1B3o_S" />
      <node concept="3uibUv" id="29$Ci4mM1fI" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPirJ" role="jymVt" />
    <node concept="3Tm1VV" id="3MncU7wPin$" role="1B3o_S" />
    <node concept="3uibUv" id="3MncU7wPioS" role="EKbjA">
      <ref role="3uigEE" to="ntnl:~DeviceTypeDescriptor" resolve="DeviceTypeDescriptor" />
    </node>
    <node concept="3clFbW" id="3MncU7wPisj" role="jymVt">
      <node concept="3cqZAl" id="3MncU7wPisk" role="3clF45" />
      <node concept="3Tm1VV" id="3MncU7wPisl" role="1B3o_S" />
      <node concept="3clFbS" id="3MncU7wPisn" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPisr" role="3cqZAp">
          <node concept="37vLTI" id="3MncU7wPist" role="3clFbG">
            <node concept="37vLTw" id="3MncU7wPis$" role="37vLTx">
              <ref role="3cqZAo" node="3MncU7wPisq" resolve="deviceTypeRefence" />
            </node>
            <node concept="37vLTw" id="29$Ci4mM1y2" role="37vLTJ">
              <ref role="3cqZAo" node="3MncU7wPiqr" resolve="myDeviceTypeRefence" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="29$Ci4mM1AZ" role="3cqZAp">
          <node concept="37vLTI" id="29$Ci4mM1Ll" role="3clFbG">
            <node concept="37vLTw" id="29$Ci4mM1PB" role="37vLTx">
              <ref role="3cqZAo" node="29$Ci4mM1pD" resolve="repository" />
            </node>
            <node concept="37vLTw" id="29$Ci4mM1AX" role="37vLTJ">
              <ref role="3cqZAo" node="29$Ci4mM1iI" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MncU7wPisq" role="3clF46">
        <property role="TrG5h" value="deviceTypeRefence" />
        <node concept="2z4iKi" id="3MncU7wPisp" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="29$Ci4mM1pD" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="29$Ci4mM1te" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPivk" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPiwl" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3Tm1VV" id="3MncU7wPiwn" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPiwo" role="3clF45">
        <ref role="3uigEE" to="cwd8:~DeviceTypeDeclaration" resolve="DeviceTypeDeclaration" />
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
        <node concept="3clFbF" id="29$Ci4mM38p" role="3cqZAp">
          <node concept="2OqwBi" id="29$Ci4mM2ez" role="3clFbG">
            <node concept="37vLTw" id="29$Ci4mM24U" role="2Oq$k0">
              <ref role="3cqZAo" node="29$Ci4mM1iI" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="29$Ci4mM2pH" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="37vLTw" id="29$Ci4mM2w2" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPiYn" resolve="node" />
              </node>
              <node concept="3VsKOn" id="29$Ci4mM2Sz" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~DeviceTypeDeclaration" resolve="DeviceTypeDeclaration" />
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
          <ref role="3uigEE" to="ntnl:~ParameterDescriptor" resolve="ParameterDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="3MncU7wPiwE" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmOI0" role="3cqZAp">
          <node concept="2YIFZM" id="_2FpOZmOI1" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="_2FpOZmOI2" role="3PaCim">
              <ref role="3uigEE" to="ntnl:~ParameterDescriptor" resolve="ParameterDescriptor" />
            </node>
          </node>
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
      <ref role="3uigEE" to="cwd8:~DeviceTypeDeclaration" resolve="DeviceTypeDeclaration" />
    </node>
    <node concept="3uibUv" id="_2FpOZlbk9" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
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
    <node concept="312cEg" id="1R0_JUQWzk7" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R0_JUQWz4y" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQWzfC" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
      <node concept="37vLTG" id="1R0_JUQWzw7" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1R0_JUQWz_n" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
        <node concept="3clFbF" id="1R0_JUQWzB2" role="3cqZAp">
          <node concept="37vLTI" id="1R0_JUQWzNC" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQWzTx" role="37vLTx">
              <ref role="3cqZAo" node="1R0_JUQWzw7" resolve="repository" />
            </node>
            <node concept="37vLTw" id="1R0_JUQWzB0" role="37vLTJ">
              <ref role="3cqZAo" node="1R0_JUQWzk7" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQWFnI" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPk7y" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="3MncU7wPk7$" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPk7_" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3MncU7wPk7A" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPk7B" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPk7C" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQW$2h" role="3cqZAp">
          <node concept="2ShNRf" id="1R0_JUQW$2f" role="3clFbG">
            <node concept="1pGfFk" id="1R0_JUQW$hu" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="1R0_JUQW$_N" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="2OqwBi" id="1R0_JUQW_qz" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQW_3Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="3MncU7wPjQL" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQW_VL" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:2lwHqHkyELb" resolve="parameters" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWC3l" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="1R0_JUQWCr9" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWzk7" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPk7D" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQWFJd" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPk7G" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="3MncU7wPk7I" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPk7J" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
      </node>
      <node concept="3clFbS" id="3MncU7wPk7K" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPklb" role="3cqZAp">
          <node concept="2ShNRf" id="3MncU7wPkl5" role="3clFbG">
            <node concept="1pGfFk" id="3MncU7wPkMP" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="3MncU7wPkO4" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPjQL" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="29$Ci4mM3pC" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWzk7" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPk7L" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQWG6H" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPk7O" role="jymVt">
      <property role="TrG5h" value="getResources" />
      <node concept="3Tm1VV" id="3MncU7wPk7Q" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPk7R" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3MncU7wPk7S" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPk7T" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPk7U" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQWCLf" role="3cqZAp">
          <node concept="2ShNRf" id="1R0_JUQWCLg" role="3clFbG">
            <node concept="1pGfFk" id="1R0_JUQWCLh" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="1R0_JUQWDdQ" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
              </node>
              <node concept="2OqwBi" id="1R0_JUQWCLj" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQWCLk" role="2Oq$k0">
                  <ref role="3cqZAo" node="3MncU7wPjQL" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQWDYq" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:2lwHqHk$uBA" resolve="resources" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWCLm" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
              </node>
              <node concept="37vLTw" id="1R0_JUQWCLn" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWzk7" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPk7V" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQWGCH" role="jymVt" />
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
    <node concept="2tJIrI" id="_2FpOZl9Q5" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZlalo" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="_2FpOZlalp" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZlalr" role="3clF45" />
      <node concept="37vLTG" id="_2FpOZlals" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="_2FpOZlalt" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZlalv" role="3clF47">
        <node concept="3clFbF" id="_2FpOZleN$" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZlfDl" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZlfFd" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZlals" resolve="name" />
            </node>
            <node concept="2OqwBi" id="_2FpOZleYe" role="37vLTJ">
              <node concept="37vLTw" id="_2FpOZleNz" role="2Oq$k0">
                <ref role="3cqZAo" node="3MncU7wPjQL" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="_2FpOZlfkH" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZlalw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZlbI3" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZlca3" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="_2FpOZlca5" role="1B3o_S" />
      <node concept="3Tqbb2" id="_2FpOZlcY3" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
      </node>
      <node concept="3clFbS" id="_2FpOZlca8" role="3clF47">
        <node concept="3clFbF" id="_2FpOZlcND" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZlcNA" role="3clFbG">
            <ref role="3cqZAo" node="3MncU7wPjQL" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZlca9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZle1f" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZlcac" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="_2FpOZlcae" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZlcaf" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="_2FpOZlcah" role="3clF47">
        <node concept="3clFbF" id="_2FpOZleuR" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZleuO" role="3clFbG">
            <ref role="3cqZAo" node="1R0_JUQWzk7" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZlcai" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3MncU7wPlNy">
    <property role="TrG5h" value="ResourceDeclarationByNode" />
    <node concept="2tJIrI" id="3MncU7wPlP8" role="jymVt" />
    <node concept="312cEg" id="3MncU7wPlQM" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MncU7wPlPp" role="1B3o_S" />
      <node concept="3Tqbb2" id="3MncU7wPlPT" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="3MncU7wPGbb" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MncU7wPFWA" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQUEMB" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPlR5" role="jymVt" />
    <node concept="3Tm1VV" id="3MncU7wPlNz" role="1B3o_S" />
    <node concept="3uibUv" id="2YkCud38mtj" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
    </node>
    <node concept="3uibUv" id="3MncU7wPlYc" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
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
              <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3MncU7wPHDE" role="3cqZAp">
          <node concept="37vLTI" id="3MncU7wPHTf" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQUFES" role="37vLTx">
              <ref role="3cqZAo" node="1R0_JUQUyJG" resolve="repository" />
            </node>
            <node concept="37vLTw" id="3MncU7wPHDC" role="37vLTJ">
              <ref role="3cqZAo" node="3MncU7wPGbb" resolve="myRepository" />
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
      <node concept="37vLTG" id="1R0_JUQUyJG" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1R0_JUQUEIa" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPz7W" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPGEs" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="3MncU7wPGEu" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPGEv" role="3clF45">
        <ref role="3uigEE" to="cwd8:~Declaration" resolve="Declaration" />
      </node>
      <node concept="2AHcQZ" id="3MncU7wPGEw" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPGEx" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQUGSg" role="3cqZAp">
          <node concept="2OqwBi" id="1R0_JUQUGYM" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQUGSf" role="2Oq$k0">
              <ref role="3cqZAo" node="3MncU7wPGbb" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="1R0_JUQUHdm" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="2OqwBi" id="1R0_JUQUGnt" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQUG1X" role="2Oq$k0">
                  <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myNode" />
                </node>
                <node concept="1mfA1w" id="1R0_JUQUGG3" role="2OqNvi" />
              </node>
              <node concept="3VsKOn" id="1R0_JUQUHBH" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~Declaration" resolve="Declaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPGEy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPlWO" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPm1m" role="jymVt">
      <property role="TrG5h" value="getNetwork" />
      <node concept="3Tm1VV" id="3MncU7wPm1o" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPm1p" role="3clF45">
        <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
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
                <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="sOaa8ZXcCd" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPGbb" resolve="myRepository" />
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
      <node concept="3clFbS" id="3MncU7wPm1$" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPmH3" role="3cqZAp">
          <node concept="37vLTw" id="3MncU7wPmH0" role="3clFbG">
            <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPm1_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tqbb2" id="1DfKejraene" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
      </node>
    </node>
    <node concept="3clFb_" id="_2FpOZjZdY" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="_2FpOZjZe0" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZjZe1" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="_2FpOZjZe3" role="3clF47">
        <node concept="3clFbF" id="_2FpOZjZIv" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZjZIs" role="3clFbG">
            <ref role="3cqZAo" node="3MncU7wPGbb" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZjZe4" role="2AJF6D">
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
              <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myNode" />
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
    <node concept="2tJIrI" id="_2FpOZjZRk" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZk0fy" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="_2FpOZk0fz" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZk0f_" role="3clF45" />
      <node concept="37vLTG" id="_2FpOZk0fA" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="_2FpOZk0fB" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZk0fD" role="3clF47">
        <node concept="3clFbF" id="_2FpOZk0Fc" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZk1Am" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZk1Cm" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZk0fA" resolve="name" />
            </node>
            <node concept="2OqwBi" id="_2FpOZk0QC" role="37vLTJ">
              <node concept="37vLTw" id="_2FpOZk0Fb" role="2Oq$k0">
                <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="_2FpOZk1fP" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZk0fE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPnOO" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPo2a" role="jymVt">
      <property role="TrG5h" value="getType" />
      <node concept="3Tm1VV" id="3MncU7wPo2c" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPo2d" role="3clF45">
        <ref role="3uigEE" to="ntnl:~ResourceTypeDescriptor" resolve="ResourceTypeDescriptor" />
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
                  <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myNode" />
                </node>
                <node concept="37Cfm0" id="3MncU7wPx$Y" role="2OqNvi">
                  <node concept="1aIX9F" id="3MncU7wPx_0" role="37CeNk">
                    <node concept="26LbJo" id="3MncU7wPxBR" role="1aIX9E">
                      <ref role="26LbJp" to="xiqq:2lwHqHkyELp" resolve="type" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="_2FpOZjZ2p" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPGbb" resolve="myRepository" />
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
        <node concept="3uibUv" id="sOaa8ZXddN" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPo2o" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPo2p" role="3clF47">
        <node concept="3clFbF" id="sOaa8ZXdlk" role="3cqZAp">
          <node concept="2ShNRf" id="sOaa8ZXdlg" role="3clFbG">
            <node concept="1pGfFk" id="sOaa8ZXeDy" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="sOaa8ZXeFo" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
              <node concept="2OqwBi" id="sOaa8ZXf3d" role="37wK5m">
                <node concept="37vLTw" id="sOaa8ZXeOz" role="2Oq$k0">
                  <ref role="3cqZAo" node="3MncU7wPlQM" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="sOaa8ZXfyi" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:2lwHqHk$ftU" resolve="parameters" />
                </node>
              </node>
              <node concept="3VsKOn" id="sOaa8ZXfMP" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
              </node>
              <node concept="37vLTw" id="sOaa8ZXg5A" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPGbb" resolve="myRepository" />
              </node>
            </node>
          </node>
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
    <node concept="312cEg" id="1R0_JUQWSAg" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R0_JUQWSpy" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQWSx3" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPr3u" role="jymVt" />
    <node concept="3Tm1VV" id="3MncU7wPn$_" role="1B3o_S" />
    <node concept="3uibUv" id="3MncU7wPr07" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~ResourceTypeDeclaration" resolve="ResourceTypeDeclaration" />
    </node>
    <node concept="3uibUv" id="3MncU7wPr17" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
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
        <node concept="3clFbF" id="1R0_JUQWSWe" role="3cqZAp">
          <node concept="37vLTI" id="1R0_JUQWT8h" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQWTeU" role="37vLTx">
              <ref role="3cqZAo" node="1R0_JUQWSNo" resolve="repository" />
            </node>
            <node concept="37vLTw" id="1R0_JUQWSWc" role="37vLTJ">
              <ref role="3cqZAo" node="1R0_JUQWSAg" resolve="myRepository" />
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
      <node concept="37vLTG" id="1R0_JUQWSNo" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1R0_JUQWSTj" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
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
          <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="3MncU7wPr9u" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQWTfD" role="3cqZAp">
          <node concept="2ShNRf" id="1R0_JUQWTfB" role="3clFbG">
            <node concept="1pGfFk" id="1R0_JUQWTvg" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="3uibUv" id="1R0_JUQWTNL" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="2OqwBi" id="1R0_JUQWUoV" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQWU2r" role="2Oq$k0">
                  <ref role="3cqZAo" node="3MncU7wPr2r" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQWUXz" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:2lwHqHjNQ73" resolve="parameters" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQWWlU" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
              <node concept="37vLTw" id="1R0_JUQWZ9V" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWSAg" resolve="myRepository" />
              </node>
            </node>
          </node>
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
        <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
      </node>
      <node concept="3clFbS" id="3MncU7wPr9A" role="3clF47">
        <node concept="3clFbF" id="3MncU7wPrtS" role="3cqZAp">
          <node concept="2ShNRf" id="3MncU7wPrtM" role="3clFbG">
            <node concept="1pGfFk" id="3MncU7wPrHm" role="2ShVmc">
              <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
              <node concept="37vLTw" id="3MncU7wPrIB" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPr2r" resolve="myNode" />
              </node>
              <node concept="37vLTw" id="sOaa8ZXh9S" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQWSAg" resolve="myRepository" />
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
      <node concept="3Tqbb2" id="_2FpOZlqP8" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZlqxC" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZlpJQ" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="_2FpOZlpJS" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZlpJT" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="_2FpOZlpJV" role="3clF47">
        <node concept="3clFbF" id="_2FpOZlsf5" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZlsf2" role="3clFbG">
            <ref role="3cqZAo" node="1R0_JUQWSAg" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZlpJW" role="2AJF6D">
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
    <node concept="2tJIrI" id="_2FpOZlppW" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZlpJZ" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="_2FpOZlpK0" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZlpK2" role="3clF45" />
      <node concept="37vLTG" id="_2FpOZlpK3" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="_2FpOZlpK4" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZlpK6" role="3clF47" />
      <node concept="2AHcQZ" id="_2FpOZlpK7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3MncU7wPobc">
    <property role="TrG5h" value="ResourceTypeDescriptorByReference" />
    <node concept="3Tm1VV" id="3MncU7wPobd" role="1B3o_S" />
    <node concept="3uibUv" id="3MncU7wPodM" role="EKbjA">
      <ref role="3uigEE" to="ntnl:~ResourceTypeDescriptor" resolve="ResourceTypeDescriptor" />
    </node>
    <node concept="2tJIrI" id="3MncU7wPoex" role="jymVt" />
    <node concept="312cEg" id="3MncU7wPof4" role="jymVt">
      <property role="TrG5h" value="myResourceTypeReference" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3MncU7wPoeM" role="1B3o_S" />
      <node concept="2z4iKi" id="3MncU7wPofm" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="_2FpOZjW1B" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="_2FpOZjVRy" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZjVYw" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
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
        <node concept="3clFbF" id="_2FpOZjWeq" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZjWod" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZjWs_" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZjVBf" resolve="repository" />
            </node>
            <node concept="37vLTw" id="_2FpOZjWeo" role="37vLTJ">
              <ref role="3cqZAo" node="_2FpOZjW1B" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3MncU7wPsQi" role="3clF46">
        <property role="TrG5h" value="resourceTypeReference" />
        <node concept="2z4iKi" id="3MncU7wPsQh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="_2FpOZjVBf" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="_2FpOZjVES" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPsUb" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPsV8" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3Tm1VV" id="3MncU7wPsVa" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPsVb" role="3clF45">
        <ref role="3uigEE" to="cwd8:~ResourceTypeDeclaration" resolve="ResourceTypeDeclaration" />
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
        <node concept="3clFbF" id="_2FpOZjXcU" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZjXmZ" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZjXcJ" role="2Oq$k0">
              <ref role="3cqZAo" node="_2FpOZjW1B" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="_2FpOZjXwX" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="37vLTw" id="_2FpOZjXxZ" role="37wK5m">
                <ref role="3cqZAo" node="3MncU7wPt16" resolve="node" />
              </node>
              <node concept="3VsKOn" id="_2FpOZjXHB" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ResourceTypeDeclaration" resolve="ResourceTypeDeclaration" />
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
          <ref role="3uigEE" to="ntnl:~ParameterDescriptor" resolve="ParameterDescriptor" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPsVv" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3MncU7wPsVw" role="3clF47">
        <node concept="3clFbF" id="_2FpOZjXN0" role="3cqZAp">
          <node concept="2YIFZM" id="_2FpOZjXON" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="_2FpOZjYsq" role="3PaCim">
              <ref role="3uigEE" to="ntnl:~ParameterDescriptor" resolve="ParameterDescriptor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPsVx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1R0_JUQTAc2">
    <property role="TrG5h" value="ParameterAssignmentByNode" />
    <node concept="2tJIrI" id="1R0_JUQTAdQ" role="jymVt" />
    <node concept="312cEg" id="1R0_JUQTAeX" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R0_JUQTAea" role="1B3o_S" />
      <node concept="3Tqbb2" id="1R0_JUQTAev" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
      </node>
    </node>
    <node concept="312cEg" id="1R0_JUQW7ET" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R0_JUQW5ST" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQW61V" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQTAg4" role="jymVt" />
    <node concept="3clFbW" id="1R0_JUQW86A" role="jymVt">
      <node concept="3cqZAl" id="1R0_JUQW86B" role="3clF45" />
      <node concept="3Tm1VV" id="1R0_JUQW86C" role="1B3o_S" />
      <node concept="3clFbS" id="1R0_JUQW86E" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQW86I" role="3cqZAp">
          <node concept="37vLTI" id="1R0_JUQW86K" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQW86R" role="37vLTx">
              <ref role="3cqZAo" node="1R0_JUQW86H" resolve="node" />
            </node>
            <node concept="37vLTw" id="1R0_JUQW8_i" role="37vLTJ">
              <ref role="3cqZAo" node="1R0_JUQTAeX" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R0_JUQW86U" role="3cqZAp">
          <node concept="37vLTI" id="1R0_JUQW86W" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQW873" role="37vLTx">
              <ref role="3cqZAo" node="1R0_JUQW86T" resolve="repository" />
            </node>
            <node concept="37vLTw" id="1R0_JUQW8DQ" role="37vLTJ">
              <ref role="3cqZAo" node="1R0_JUQW7ET" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R0_JUQW86H" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R0_JUQW86G" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
        </node>
      </node>
      <node concept="37vLTG" id="1R0_JUQW86T" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1R0_JUQW86S" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQW8uY" role="jymVt" />
    <node concept="3clFb_" id="1R0_JUQTAkG" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="1R0_JUQTAkH" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQTAkJ" role="3clF45">
        <ref role="3uigEE" to="cwd8:~Declaration" resolve="Declaration" />
      </node>
      <node concept="3clFbS" id="1R0_JUQTAkK" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQW8Ik" role="3cqZAp">
          <node concept="2OqwBi" id="1R0_JUQW8VT" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQW8Ii" role="2Oq$k0">
              <ref role="3cqZAo" node="1R0_JUQW7ET" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="1R0_JUQW98G" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="2OqwBi" id="1R0_JUQTAFn" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQTAsw" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R0_JUQTAeX" resolve="myNode" />
                </node>
                <node concept="1mfA1w" id="1R0_JUQW7X0" role="2OqNvi" />
              </node>
              <node concept="3VsKOn" id="1R0_JUQW9AD" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~Declaration" resolve="Declaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R0_JUQTAkL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQW9FU" role="jymVt" />
    <node concept="3clFb_" id="1R0_JUQTAkO" role="jymVt">
      <property role="TrG5h" value="getParameter" />
      <node concept="3Tm1VV" id="1R0_JUQTAkP" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQTAkR" role="3clF45">
        <ref role="3uigEE" to="ntnl:~ParameterDescriptor" resolve="ParameterDescriptor" />
      </node>
      <node concept="3clFbS" id="1R0_JUQTAkS" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQTAkV" role="3cqZAp">
          <node concept="10Nm6u" id="1R0_JUQTAkU" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R0_JUQTAkT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQW9MQ" role="jymVt" />
    <node concept="3clFb_" id="1R0_JUQTAkW" role="jymVt">
      <property role="TrG5h" value="getValue" />
      <node concept="3Tm1VV" id="1R0_JUQTAkX" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQTAkZ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="1R0_JUQTAl0" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQW9Vp" role="3cqZAp">
          <node concept="2OqwBi" id="1R0_JUQWax5" role="3clFbG">
            <node concept="2OqwBi" id="1R0_JUQWa9Y" role="2Oq$k0">
              <node concept="37vLTw" id="1R0_JUQW9Vo" role="2Oq$k0">
                <ref role="3cqZAo" node="1R0_JUQTAeX" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="1R0_JUQWal0" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7f" resolve="value" />
              </node>
            </node>
            <node concept="2qgKlT" id="1R0_JUQWb6m" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R0_JUQTAl1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQTAgv" role="jymVt" />
    <node concept="3Tm1VV" id="1R0_JUQTAc3" role="1B3o_S" />
    <node concept="3uibUv" id="4FdYnQC7eEl" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
    </node>
    <node concept="3uibUv" id="1R0_JUQTAfA" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFb_" id="1R0_JUQTAh3" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tqbb2" id="1R0_JUQTAh4" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
      </node>
      <node concept="3Tm1VV" id="1R0_JUQTAh5" role="1B3o_S" />
      <node concept="3clFbS" id="1R0_JUQTAh6" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQTAh7" role="3cqZAp">
          <node concept="37vLTw" id="1R0_JUQWbi2" role="3clFbG">
            <ref role="3cqZAo" node="1R0_JUQTAeX" resolve="myNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="sOaa8ZXnaL" role="jymVt" />
    <node concept="3clFb_" id="sOaa8ZXnxL" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="sOaa8ZXnxN" role="1B3o_S" />
      <node concept="3uibUv" id="sOaa8ZXnxO" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="sOaa8ZXnxP" role="3clF47">
        <node concept="3clFbF" id="sOaa8ZXoES" role="3cqZAp">
          <node concept="37vLTw" id="sOaa8ZXoEP" role="3clFbG">
            <ref role="3cqZAo" node="1R0_JUQW7ET" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="sOaa8ZXnxQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="sOaa8ZXogp" role="jymVt" />
    <node concept="3clFb_" id="sOaa8ZXnxF" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="sOaa8ZXnxG" role="1B3o_S" />
      <node concept="3cqZAl" id="sOaa8ZXnxI" role="3clF45" />
      <node concept="3clFbS" id="sOaa8ZXnxJ" role="3clF47">
        <node concept="3clFbF" id="sOaa8ZXnGs" role="3cqZAp">
          <node concept="2OqwBi" id="sOaa8ZXnTW" role="3clFbG">
            <node concept="37vLTw" id="sOaa8ZXnGr" role="2Oq$k0">
              <ref role="3cqZAo" node="1R0_JUQTAeX" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="sOaa8ZXoeN" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="sOaa8ZXnxK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3VhUp_YSqd4">
    <property role="TrG5h" value="PlugDeclarationByNode" />
    <node concept="2tJIrI" id="3VhUp_YSr0G" role="jymVt" />
    <node concept="3Tm1VV" id="3VhUp_YSqd5" role="1B3o_S" />
    <node concept="3uibUv" id="3VhUp_YSqg4" role="1zkMxy">
      <ref role="3uigEE" to="rwq3:3VhUp_YMiEx" resolve="FunctionBlockDeclarationBaseByNode" />
      <node concept="3Tqbb2" id="3VhUp_YSqWO" role="11_B2D">
        <ref role="ehGHo" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
      </node>
    </node>
    <node concept="3uibUv" id="3VhUp_YSr06" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~PlugDeclaration" resolve="PlugDeclaration" />
    </node>
    <node concept="3clFbW" id="3VhUp_YSrol" role="jymVt">
      <node concept="3cqZAl" id="3VhUp_YSrom" role="3clF45" />
      <node concept="3Tm1VV" id="3VhUp_YSron" role="1B3o_S" />
      <node concept="3clFbS" id="3VhUp_YSrop" role="3clF47">
        <node concept="XkiVB" id="3VhUp_YSror" role="3cqZAp">
          <ref role="37wK5l" to="rwq3:3VhUp_YMkxn" resolve="FunctionBlockDeclarationBaseByNode" />
          <node concept="37vLTw" id="3VhUp_YSrov" role="37wK5m">
            <ref role="3cqZAo" node="3VhUp_YSros" resolve="node" />
          </node>
          <node concept="37vLTw" id="3VhUp_YSroz" role="37wK5m">
            <ref role="3cqZAo" node="3VhUp_YSrow" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3VhUp_YSros" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3VhUp_YSrCp" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="3VhUp_YSrow" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3VhUp_YSroy" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YSrxS" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YSr32" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <node concept="3Tqbb2" id="3VhUp_YSr34" role="3clF45">
        <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
      </node>
      <node concept="3Tmbuc" id="3VhUp_YSr35" role="1B3o_S" />
      <node concept="3clFbS" id="3VhUp_YSr36" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YTnoM" role="3cqZAp">
          <node concept="2OqwBi" id="3VhUp_YTn_j" role="3clFbG">
            <node concept="37vLTw" id="3VhUp_YTnoL" role="2Oq$k0">
              <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
            </node>
            <node concept="3TrEf2" id="3VhUp_YTnVp" role="2OqNvi">
              <ref role="3Tt5mk" to="xiqq:6LU90BOchbE" resolve="position" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YSr37" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YSsaF" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YSr3k" role="jymVt">
      <property role="TrG5h" value="setAdapterType" />
      <node concept="3Tm1VV" id="3VhUp_YSr3l" role="1B3o_S" />
      <node concept="3cqZAl" id="3VhUp_YSr3n" role="3clF45" />
      <node concept="37vLTG" id="3VhUp_YSr3o" role="3clF46">
        <property role="TrG5h" value="identifier" />
        <node concept="3uibUv" id="3VhUp_YSr3p" role="1tU5fm">
          <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
        </node>
        <node concept="2AHcQZ" id="3VhUp_YSr3q" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3VhUp_YSr3v" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YTT8Z" role="3cqZAp">
          <node concept="2OqwBi" id="3VhUp_YQf2e" role="3clFbG">
            <node concept="2OqwBi" id="3VhUp_YQewI" role="2Oq$k0">
              <node concept="37vLTw" id="3VhUp_YQend" role="2Oq$k0">
                <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="3VhUp_YTTD8" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              </node>
            </node>
            <node concept="1AR3kn" id="3VhUp_YQg2w" role="2OqNvi">
              <node concept="25Kdxt" id="3VhUp_YQg4J" role="1AR3km">
                <node concept="10QFUN" id="3VhUp_YQhRo" role="25KhWn">
                  <node concept="2OqwBi" id="3VhUp_YQhoF" role="10QFUP">
                    <node concept="1eOMI4" id="3VhUp_YQh2g" role="2Oq$k0">
                      <node concept="10QFUN" id="3VhUp_YQg$W" role="1eOMHV">
                        <node concept="3uibUv" id="3VhUp_YQgLr" role="10QFUM">
                          <ref role="3uigEE" to="1u7h:1R0_JUQSzrX" resolve="PlatformIdentifier" />
                        </node>
                        <node concept="37vLTw" id="3VhUp_YQggY" role="10QFUP">
                          <ref role="3cqZAo" node="3VhUp_YSr3o" resolve="identifier" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3VhUp_YQhOr" role="2OqNvi">
                      <ref role="37wK5l" to="1u7h:1R0_JUQSzv_" resolve="getReference" />
                    </node>
                  </node>
                  <node concept="2sp9CU" id="3VhUp_YQifU" role="10QFUM">
                    <ref role="2sp9C9" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YSr3w" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YTlwP" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YSr3x" role="jymVt">
      <property role="TrG5h" value="setAdapterType" />
      <node concept="3Tm1VV" id="3VhUp_YSr3y" role="1B3o_S" />
      <node concept="3cqZAl" id="3VhUp_YSr3$" role="3clF45" />
      <node concept="37vLTG" id="3VhUp_YSr3_" role="3clF46">
        <property role="TrG5h" value="declaration" />
        <node concept="3uibUv" id="3VhUp_YTlo1" role="1tU5fm">
          <ref role="3uigEE" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
        </node>
        <node concept="2AHcQZ" id="3VhUp_YSr3B" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3VhUp_YSr3G" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YPTv9" role="3cqZAp">
          <node concept="37vLTI" id="3VhUp_YPUm4" role="3clFbG">
            <node concept="1eOMI4" id="3VhUp_YQdV0" role="37vLTx">
              <node concept="10QFUN" id="3VhUp_YQdUX" role="1eOMHV">
                <node concept="3Tqbb2" id="3VhUp_YQega" role="10QFUM">
                  <ref role="ehGHo" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
                </node>
                <node concept="2OqwBi" id="3VhUp_YPVSl" role="10QFUP">
                  <node concept="1eOMI4" id="3VhUp_YPU$y" role="2Oq$k0">
                    <node concept="10QFUN" id="3VhUp_YPVg6" role="1eOMHV">
                      <node concept="3uibUv" id="3VhUp_YPV_D" role="10QFUM">
                        <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
                      </node>
                      <node concept="37vLTw" id="3VhUp_YPUOn" role="10QFUP">
                        <ref role="3cqZAo" node="3VhUp_YSr3_" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3VhUp_YPWhq" role="2OqNvi">
                    <ref role="37wK5l" node="1JYTWWzyU9A" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3VhUp_YPTFj" role="37vLTJ">
              <node concept="37vLTw" id="3VhUp_YPTv8" role="2Oq$k0">
                <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="3VhUp_YTUOK" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YSr3H" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YTrMm" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YTldY" role="jymVt">
      <property role="TrG5h" value="getType" />
      <node concept="3Tm1VV" id="3VhUp_YTldZ" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YTle1" role="3clF45">
        <ref role="3uigEE" to="ntnl:~FBTypeDescriptor" resolve="FBTypeDescriptor" />
      </node>
      <node concept="3clFbS" id="3VhUp_YTled" role="3clF47">
        <node concept="3cpWs8" id="3VhUp_YNOVt" role="3cqZAp">
          <node concept="3cpWsn" id="3VhUp_YNOVu" role="3cpWs9">
            <property role="TrG5h" value="network" />
            <node concept="3uibUv" id="3VhUp_YNOI9" role="1tU5fm">
              <ref role="3uigEE" to="rwq3:1R4IoyQA3Yn" resolve="FBNetworkByNode" />
            </node>
            <node concept="1rXfSq" id="3VhUp_YNOVv" role="33vP2m">
              <ref role="37wK5l" to="rwq3:3VhUp_YNILC" resolve="getNetwork" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3VhUp_YNStZ" role="3cqZAp">
          <node concept="3cpWsn" id="3VhUp_YNSu0" role="3cpWs9">
            <property role="TrG5h" value="declaration" />
            <node concept="3uibUv" id="3VhUp_YTpAy" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
            </node>
            <node concept="2OqwBi" id="3VhUp_YNTo5" role="33vP2m">
              <node concept="37vLTw" id="3VhUp_YOJ9C" role="2Oq$k0">
                <ref role="3cqZAo" to="rwq3:3VhUp_YNzQc" resolve="myRepository" />
              </node>
              <node concept="liA8E" id="3VhUp_YNTEn" role="2OqNvi">
                <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                <node concept="2OqwBi" id="3VhUp_YNRyX" role="37wK5m">
                  <node concept="37vLTw" id="3VhUp_YNRfL" role="2Oq$k0">
                    <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
                  </node>
                  <node concept="3TrEf2" id="3VhUp_YTpba" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:37fub3vk1KS" resolve="adapterType" />
                  </node>
                </node>
                <node concept="3VsKOn" id="3VhUp_YNUme" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3VhUp_YNPkw" role="3cqZAp">
          <node concept="3clFbS" id="3VhUp_YNPky" role="3clFbx">
            <node concept="3cpWs6" id="3VhUp_YPDFR" role="3cqZAp">
              <node concept="3K4zz7" id="3VhUp_YPFsx" role="3cqZAk">
                <node concept="2ShNRf" id="3VhUp_YPFQg" role="3K4E3e">
                  <node concept="1pGfFk" id="3VhUp_YPIOL" role="2ShVmc">
                    <ref role="37wK5l" to="rwq3:3VhUp_YORJb" resolve="EmptyTypeDescriptor" />
                    <node concept="1rXfSq" id="3VhUp_YPK0n" role="37wK5m">
                      <ref role="37wK5l" node="3VhUp_YPK0k" resolve="getBrokenTypeName" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3VhUp_YPLlt" role="3K4GZi">
                  <node concept="37vLTw" id="3VhUp_YPKLO" role="2Oq$k0">
                    <ref role="3cqZAo" node="3VhUp_YNSu0" resolve="declaration" />
                  </node>
                  <node concept="liA8E" id="3bdNQ1lGJkV" role="2OqNvi">
                    <ref role="37wK5l" to="cwd8:~AdapterTypeDeclaration.getPlugTypeDescriptor()" resolve="getPlugTypeDescriptor" />
                  </node>
                </node>
                <node concept="3clFbC" id="3VhUp_YPEJW" role="3K4Cdx">
                  <node concept="10Nm6u" id="3VhUp_YPFbY" role="3uHU7w" />
                  <node concept="37vLTw" id="3VhUp_YPE6b" role="3uHU7B">
                    <ref role="3cqZAo" node="3VhUp_YNSu0" resolve="declaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3VhUp_YNPM9" role="3clFbw">
            <node concept="10Nm6u" id="3VhUp_YNPXX" role="3uHU7w" />
            <node concept="37vLTw" id="3VhUp_YNPrk" role="3uHU7B">
              <ref role="3cqZAo" node="3VhUp_YNOVu" resolve="network" />
            </node>
          </node>
          <node concept="9aQIb" id="3VhUp_YNR5N" role="9aQIa">
            <node concept="3clFbS" id="3VhUp_YNR5O" role="9aQI4">
              <node concept="3cpWs8" id="31Fn7oZB$JE" role="3cqZAp">
                <node concept="3cpWsn" id="31Fn7oZB$JF" role="3cpWs9">
                  <property role="TrG5h" value="brokenTargets" />
                  <node concept="3uibUv" id="31Fn7oZB$o$" role="1tU5fm">
                    <ref role="3uigEE" to="rwq3:31Fn7oZuPIn" resolve="NetworkBrokenTargets" />
                  </node>
                  <node concept="2OqwBi" id="31Fn7oZB$JG" role="33vP2m">
                    <node concept="37vLTw" id="3VhUp_YNOVw" role="2Oq$k0">
                      <ref role="3cqZAo" node="3VhUp_YNOVu" resolve="network" />
                    </node>
                    <node concept="liA8E" id="31Fn7oZB$JI" role="2OqNvi">
                      <ref role="37wK5l" to="rwq3:31Fn7oZAYo3" resolve="getBrokenTargets" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3VhUp_YPSIH" role="3cqZAp">
                <node concept="3K4zz7" id="31Fn7oZB$lq" role="3cqZAk">
                  <node concept="2OqwBi" id="31Fn7oZB_GY" role="3K4E3e">
                    <node concept="37vLTw" id="31Fn7oZB_h2" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZB$JF" resolve="brokenTargets" />
                    </node>
                    <node concept="liA8E" id="31Fn7oZB_M4" role="2OqNvi">
                      <ref role="37wK5l" to="rwq3:31Fn7oZyaoy" resolve="adaptFBBrokenType" />
                      <node concept="Xjq3P" id="31Fn7oZB_Nl" role="37wK5m" />
                      <node concept="1rXfSq" id="3VhUp_YPR93" role="37wK5m">
                        <ref role="37wK5l" node="3VhUp_YPK0k" resolve="getBrokenTypeName" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="31Fn7oZBC42" role="3K4GZi">
                    <node concept="37vLTw" id="31Fn7oZBBTz" role="2Oq$k0">
                      <ref role="3cqZAo" node="31Fn7oZB$JF" resolve="brokenTargets" />
                    </node>
                    <node concept="liA8E" id="31Fn7oZBCaH" role="2OqNvi">
                      <ref role="37wK5l" to="rwq3:31Fn7oZwpUZ" resolve="adaptFBType" />
                      <node concept="Xjq3P" id="31Fn7oZBCbY" role="37wK5m" />
                      <node concept="2OqwBi" id="3VhUp_YPRL2" role="37wK5m">
                        <node concept="37vLTw" id="3VhUp_YPRsI" role="2Oq$k0">
                          <ref role="3cqZAo" node="3VhUp_YNSu0" resolve="declaration" />
                        </node>
                        <node concept="liA8E" id="3bdNQ1lGJdp" role="2OqNvi">
                          <ref role="37wK5l" to="cwd8:~AdapterTypeDeclaration.getPlugTypeDescriptor()" resolve="getPlugTypeDescriptor" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="31Fn7oZB$dD" role="3K4Cdx">
                    <node concept="10Nm6u" id="31Fn7oZB$ec" role="3uHU7w" />
                    <node concept="37vLTw" id="3VhUp_YPNS7" role="3uHU7B">
                      <ref role="3cqZAo" node="3VhUp_YNSu0" resolve="declaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YTlee" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZltYb" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZluqL" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="_2FpOZluqM" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZluqO" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="_2FpOZluqP" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZluqW" role="3clF47">
        <node concept="3clFbF" id="_2FpOZluNM" role="3cqZAp">
          <node concept="2YIFZM" id="_2FpOZluP_" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="_2FpOZluTS" role="3PaCim">
              <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZluqX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YSs4b" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YPK0k" role="jymVt">
      <property role="TrG5h" value="getBrokenTypeName" />
      <node concept="3Tm6S6" id="3VhUp_YPK0l" role="1B3o_S" />
      <node concept="17QB3L" id="3VhUp_YPK0m" role="3clF45" />
      <node concept="3clFbS" id="3VhUp_YPK0a" role="3clF47">
        <node concept="3cpWs6" id="3VhUp_YPK0b" role="3cqZAp">
          <node concept="2OqwBi" id="3VhUp_YPK0c" role="3cqZAk">
            <node concept="2OqwBi" id="3VhUp_YPK0d" role="2Oq$k0">
              <node concept="37vLTw" id="3VhUp_YPK0e" role="2Oq$k0">
                <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
              </node>
              <node concept="37Cfm0" id="3VhUp_YPK0f" role="2OqNvi">
                <node concept="1aIX9F" id="3VhUp_YPK0g" role="37CeNk">
                  <node concept="26LbJo" id="3VhUp_YTs6v" role="1aIX9E">
                    <ref role="26LbJp" to="xiqq:37fub3vk1KS" resolve="adapterType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1FfNbt" id="3VhUp_YPK0i" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3VhUp_YTV0x">
    <property role="TrG5h" value="SocketDeclarationByNode" />
    <node concept="2tJIrI" id="3VhUp_YTV0y" role="jymVt" />
    <node concept="3Tm1VV" id="3VhUp_YTV0z" role="1B3o_S" />
    <node concept="3uibUv" id="3VhUp_YTV0$" role="1zkMxy">
      <ref role="3uigEE" to="rwq3:3VhUp_YMiEx" resolve="FunctionBlockDeclarationBaseByNode" />
      <node concept="3Tqbb2" id="3VhUp_YTV0_" role="11_B2D">
        <ref role="ehGHo" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
      </node>
    </node>
    <node concept="3uibUv" id="3VhUp_YTV0A" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~PlugDeclaration" resolve="PlugDeclaration" />
    </node>
    <node concept="3clFbW" id="3VhUp_YTV0B" role="jymVt">
      <node concept="3cqZAl" id="3VhUp_YTV0C" role="3clF45" />
      <node concept="3Tm1VV" id="3VhUp_YTV0D" role="1B3o_S" />
      <node concept="3clFbS" id="3VhUp_YTV0E" role="3clF47">
        <node concept="XkiVB" id="3VhUp_YTV0F" role="3cqZAp">
          <ref role="37wK5l" to="rwq3:3VhUp_YMkxn" resolve="FunctionBlockDeclarationBaseByNode" />
          <node concept="37vLTw" id="3VhUp_YTV0G" role="37wK5m">
            <ref role="3cqZAo" node="3VhUp_YTV0I" resolve="node" />
          </node>
          <node concept="37vLTw" id="3VhUp_YTV0H" role="37wK5m">
            <ref role="3cqZAo" node="3VhUp_YTV0K" resolve="repository" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3VhUp_YTV0I" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="3VhUp_YTV0J" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="3VhUp_YTV0K" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="3VhUp_YTV0L" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YTV0M" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YTV0N" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <node concept="3Tqbb2" id="3VhUp_YTV0O" role="3clF45">
        <ref role="ehGHo" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
      </node>
      <node concept="3Tmbuc" id="3VhUp_YTV0P" role="1B3o_S" />
      <node concept="3clFbS" id="3VhUp_YTV0Q" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YTV0R" role="3cqZAp">
          <node concept="2OqwBi" id="3VhUp_YTV0S" role="3clFbG">
            <node concept="37vLTw" id="3VhUp_YTV0T" role="2Oq$k0">
              <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
            </node>
            <node concept="3TrEf2" id="3VhUp_YTV0U" role="2OqNvi">
              <ref role="3Tt5mk" to="xiqq:6LU90BOcpSo" resolve="position" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YTV0V" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YTV0W" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YTV0X" role="jymVt">
      <property role="TrG5h" value="setAdapterType" />
      <node concept="3Tm1VV" id="3VhUp_YTV0Y" role="1B3o_S" />
      <node concept="3cqZAl" id="3VhUp_YTV0Z" role="3clF45" />
      <node concept="37vLTG" id="3VhUp_YTV10" role="3clF46">
        <property role="TrG5h" value="identifier" />
        <node concept="3uibUv" id="3VhUp_YTV11" role="1tU5fm">
          <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
        </node>
        <node concept="2AHcQZ" id="3VhUp_YTV12" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3VhUp_YTV13" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YTV14" role="3cqZAp">
          <node concept="2OqwBi" id="3VhUp_YTV15" role="3clFbG">
            <node concept="2OqwBi" id="3VhUp_YTV16" role="2Oq$k0">
              <node concept="37vLTw" id="3VhUp_YTV17" role="2Oq$k0">
                <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="3VhUp_YTV18" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              </node>
            </node>
            <node concept="1AR3kn" id="3VhUp_YTV19" role="2OqNvi">
              <node concept="25Kdxt" id="3VhUp_YTV1a" role="1AR3km">
                <node concept="10QFUN" id="3VhUp_YTV1b" role="25KhWn">
                  <node concept="2OqwBi" id="3VhUp_YTV1c" role="10QFUP">
                    <node concept="1eOMI4" id="3VhUp_YTV1d" role="2Oq$k0">
                      <node concept="10QFUN" id="3VhUp_YTV1e" role="1eOMHV">
                        <node concept="3uibUv" id="3VhUp_YTV1f" role="10QFUM">
                          <ref role="3uigEE" to="1u7h:1R0_JUQSzrX" resolve="PlatformIdentifier" />
                        </node>
                        <node concept="37vLTw" id="3VhUp_YTV1g" role="10QFUP">
                          <ref role="3cqZAo" node="3VhUp_YTV10" resolve="identifier" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="3VhUp_YTV1h" role="2OqNvi">
                      <ref role="37wK5l" to="1u7h:1R0_JUQSzv_" resolve="getReference" />
                    </node>
                  </node>
                  <node concept="2sp9CU" id="3VhUp_YTV1i" role="10QFUM">
                    <ref role="2sp9C9" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YTV1j" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YTV1k" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YTV1l" role="jymVt">
      <property role="TrG5h" value="setAdapterType" />
      <node concept="3Tm1VV" id="3VhUp_YTV1m" role="1B3o_S" />
      <node concept="3cqZAl" id="3VhUp_YTV1n" role="3clF45" />
      <node concept="37vLTG" id="3VhUp_YTV1o" role="3clF46">
        <property role="TrG5h" value="declaration" />
        <node concept="3uibUv" id="3VhUp_YTV1p" role="1tU5fm">
          <ref role="3uigEE" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
        </node>
        <node concept="2AHcQZ" id="3VhUp_YTV1q" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3VhUp_YTV1r" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YTV1s" role="3cqZAp">
          <node concept="37vLTI" id="3VhUp_YTV1t" role="3clFbG">
            <node concept="1eOMI4" id="3VhUp_YTV1u" role="37vLTx">
              <node concept="10QFUN" id="3VhUp_YTV1v" role="1eOMHV">
                <node concept="3Tqbb2" id="3VhUp_YTV1w" role="10QFUM">
                  <ref role="ehGHo" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
                </node>
                <node concept="2OqwBi" id="3VhUp_YTV1x" role="10QFUP">
                  <node concept="1eOMI4" id="3VhUp_YTV1y" role="2Oq$k0">
                    <node concept="10QFUN" id="3VhUp_YTV1z" role="1eOMHV">
                      <node concept="3uibUv" id="3VhUp_YTV1$" role="10QFUM">
                        <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
                      </node>
                      <node concept="37vLTw" id="3VhUp_YTV1_" role="10QFUP">
                        <ref role="3cqZAo" node="3VhUp_YTV1o" resolve="declaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3VhUp_YTV1A" role="2OqNvi">
                    <ref role="37wK5l" node="1JYTWWzyU9A" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3VhUp_YTV1B" role="37vLTJ">
              <node concept="37vLTw" id="3VhUp_YTV1C" role="2Oq$k0">
                <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="3VhUp_YTV1D" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YTV1E" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YTV1F" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YTV1G" role="jymVt">
      <property role="TrG5h" value="getType" />
      <node concept="3Tm1VV" id="3VhUp_YTV1H" role="1B3o_S" />
      <node concept="3uibUv" id="3VhUp_YTV1I" role="3clF45">
        <ref role="3uigEE" to="ntnl:~FBTypeDescriptor" resolve="FBTypeDescriptor" />
      </node>
      <node concept="3clFbS" id="3VhUp_YTV1J" role="3clF47">
        <node concept="3cpWs8" id="3VhUp_YTV1K" role="3cqZAp">
          <node concept="3cpWsn" id="3VhUp_YTV1L" role="3cpWs9">
            <property role="TrG5h" value="network" />
            <node concept="3uibUv" id="3VhUp_YTV1M" role="1tU5fm">
              <ref role="3uigEE" to="rwq3:1R4IoyQA3Yn" resolve="FBNetworkByNode" />
            </node>
            <node concept="1rXfSq" id="3VhUp_YTV1N" role="33vP2m">
              <ref role="37wK5l" to="rwq3:3VhUp_YNILC" resolve="getNetwork" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3VhUp_YTV1O" role="3cqZAp">
          <node concept="3cpWsn" id="3VhUp_YTV1P" role="3cpWs9">
            <property role="TrG5h" value="declaration" />
            <node concept="3uibUv" id="3VhUp_YTV1Q" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
            </node>
            <node concept="2OqwBi" id="3VhUp_YTV1R" role="33vP2m">
              <node concept="37vLTw" id="3VhUp_YTV1S" role="2Oq$k0">
                <ref role="3cqZAo" to="rwq3:3VhUp_YNzQc" resolve="myRepository" />
              </node>
              <node concept="liA8E" id="3VhUp_YTV1T" role="2OqNvi">
                <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
                <node concept="2OqwBi" id="3VhUp_YTV1U" role="37wK5m">
                  <node concept="37vLTw" id="3VhUp_YTV1V" role="2Oq$k0">
                    <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
                  </node>
                  <node concept="3TrEf2" id="3VhUp_YTV1W" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:37fub3vjRJt" resolve="adapterType" />
                  </node>
                </node>
                <node concept="3VsKOn" id="3VhUp_YTV1X" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~AdapterTypeDeclaration" resolve="AdapterTypeDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3VhUp_YTV1Y" role="3cqZAp">
          <node concept="3clFbS" id="3VhUp_YTV1Z" role="3clFbx">
            <node concept="3cpWs6" id="3VhUp_YTV20" role="3cqZAp">
              <node concept="3K4zz7" id="3VhUp_YTV21" role="3cqZAk">
                <node concept="2ShNRf" id="3VhUp_YTV22" role="3K4E3e">
                  <node concept="1pGfFk" id="3VhUp_YTV23" role="2ShVmc">
                    <ref role="37wK5l" to="rwq3:3VhUp_YORJb" resolve="EmptyTypeDescriptor" />
                    <node concept="1rXfSq" id="3VhUp_YTV24" role="37wK5m">
                      <ref role="37wK5l" node="3VhUp_YTV2D" resolve="getBrokenTypeName" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3VhUp_YTV25" role="3K4GZi">
                  <node concept="37vLTw" id="3VhUp_YTV26" role="2Oq$k0">
                    <ref role="3cqZAo" node="3VhUp_YTV1P" resolve="declaration" />
                  </node>
                  <node concept="liA8E" id="3bdNQ1lGK2C" role="2OqNvi">
                    <ref role="37wK5l" to="cwd8:~AdapterTypeDeclaration.getSocketTypeDescriptor()" resolve="getSocketTypeDescriptor" />
                  </node>
                </node>
                <node concept="3clFbC" id="3VhUp_YTV28" role="3K4Cdx">
                  <node concept="10Nm6u" id="3VhUp_YTV29" role="3uHU7w" />
                  <node concept="37vLTw" id="3VhUp_YTV2a" role="3uHU7B">
                    <ref role="3cqZAo" node="3VhUp_YTV1P" resolve="declaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3VhUp_YTV2b" role="3clFbw">
            <node concept="10Nm6u" id="3VhUp_YTV2c" role="3uHU7w" />
            <node concept="37vLTw" id="3VhUp_YTV2d" role="3uHU7B">
              <ref role="3cqZAo" node="3VhUp_YTV1L" resolve="network" />
            </node>
          </node>
          <node concept="9aQIb" id="3VhUp_YTV2e" role="9aQIa">
            <node concept="3clFbS" id="3VhUp_YTV2f" role="9aQI4">
              <node concept="3cpWs8" id="3VhUp_YTV2g" role="3cqZAp">
                <node concept="3cpWsn" id="3VhUp_YTV2h" role="3cpWs9">
                  <property role="TrG5h" value="brokenTargets" />
                  <node concept="3uibUv" id="3VhUp_YTV2i" role="1tU5fm">
                    <ref role="3uigEE" to="rwq3:31Fn7oZuPIn" resolve="NetworkBrokenTargets" />
                  </node>
                  <node concept="2OqwBi" id="3VhUp_YTV2j" role="33vP2m">
                    <node concept="37vLTw" id="3VhUp_YTV2k" role="2Oq$k0">
                      <ref role="3cqZAo" node="3VhUp_YTV1L" resolve="network" />
                    </node>
                    <node concept="liA8E" id="3VhUp_YTV2l" role="2OqNvi">
                      <ref role="37wK5l" to="rwq3:31Fn7oZAYo3" resolve="getBrokenTargets" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3VhUp_YTV2m" role="3cqZAp">
                <node concept="3K4zz7" id="3VhUp_YTV2n" role="3cqZAk">
                  <node concept="2OqwBi" id="3VhUp_YTV2o" role="3K4E3e">
                    <node concept="37vLTw" id="3VhUp_YTV2p" role="2Oq$k0">
                      <ref role="3cqZAo" node="3VhUp_YTV2h" resolve="brokenTargets" />
                    </node>
                    <node concept="liA8E" id="3VhUp_YTV2q" role="2OqNvi">
                      <ref role="37wK5l" to="rwq3:31Fn7oZyaoy" resolve="adaptFBBrokenType" />
                      <node concept="Xjq3P" id="3VhUp_YTV2r" role="37wK5m" />
                      <node concept="1rXfSq" id="3VhUp_YTV2s" role="37wK5m">
                        <ref role="37wK5l" node="3VhUp_YTV2D" resolve="getBrokenTypeName" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3VhUp_YTV2t" role="3K4GZi">
                    <node concept="37vLTw" id="3VhUp_YTV2u" role="2Oq$k0">
                      <ref role="3cqZAo" node="3VhUp_YTV2h" resolve="brokenTargets" />
                    </node>
                    <node concept="liA8E" id="3VhUp_YTV2v" role="2OqNvi">
                      <ref role="37wK5l" to="rwq3:31Fn7oZwpUZ" resolve="adaptFBType" />
                      <node concept="Xjq3P" id="3VhUp_YTV2w" role="37wK5m" />
                      <node concept="2OqwBi" id="3VhUp_YTV2x" role="37wK5m">
                        <node concept="37vLTw" id="3VhUp_YTV2y" role="2Oq$k0">
                          <ref role="3cqZAo" node="3VhUp_YTV1P" resolve="declaration" />
                        </node>
                        <node concept="liA8E" id="3bdNQ1lGK5y" role="2OqNvi">
                          <ref role="37wK5l" to="cwd8:~AdapterTypeDeclaration.getSocketTypeDescriptor()" resolve="getSocketTypeDescriptor" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="3VhUp_YTV2$" role="3K4Cdx">
                    <node concept="10Nm6u" id="3VhUp_YTV2_" role="3uHU7w" />
                    <node concept="37vLTw" id="3VhUp_YTV2A" role="3uHU7B">
                      <ref role="3cqZAo" node="3VhUp_YTV1P" resolve="declaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3VhUp_YTV2B" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3VhUp_YTV2C" role="jymVt" />
    <node concept="3clFb_" id="3VhUp_YTV2D" role="jymVt">
      <property role="TrG5h" value="getBrokenTypeName" />
      <node concept="3Tm6S6" id="3VhUp_YTV2E" role="1B3o_S" />
      <node concept="17QB3L" id="3VhUp_YTV2F" role="3clF45" />
      <node concept="3clFbS" id="3VhUp_YTV2G" role="3clF47">
        <node concept="3cpWs6" id="3VhUp_YTV2H" role="3cqZAp">
          <node concept="2OqwBi" id="3VhUp_YTV2I" role="3cqZAk">
            <node concept="2OqwBi" id="3VhUp_YTV2J" role="2Oq$k0">
              <node concept="37vLTw" id="3VhUp_YTV2K" role="2Oq$k0">
                <ref role="3cqZAo" to="rwq3:2syzu7qTgQb" resolve="myNode" />
              </node>
              <node concept="37Cfm0" id="3VhUp_YTV2L" role="2OqNvi">
                <node concept="1aIX9F" id="3VhUp_YTV2M" role="37CeNk">
                  <node concept="26LbJo" id="3VhUp_YTV2N" role="1aIX9E">
                    <ref role="26LbJp" to="xiqq:37fub3vjRJt" resolve="adapterType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1FfNbt" id="3VhUp_YTV2O" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="sOaa8ZXpMd" role="jymVt" />
    <node concept="3clFb_" id="sOaa8ZXqws" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3Tm1VV" id="sOaa8ZXqwt" role="1B3o_S" />
      <node concept="3uibUv" id="sOaa8ZXqwv" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="sOaa8ZXqww" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
        </node>
      </node>
      <node concept="3clFbS" id="sOaa8ZXqwB" role="3clF47">
        <node concept="3clFbF" id="_2FpOZk7OX" role="3cqZAp">
          <node concept="2YIFZM" id="_2FpOZk7QK" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="_2FpOZk7V3" role="3PaCim">
              <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="sOaa8ZXqwC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="_2FpOZmNmF">
    <property role="TrG5h" value="ParameterDeclarationByNode" />
    <node concept="2tJIrI" id="_2FpOZmNoY" role="jymVt" />
    <node concept="312cEg" id="_2FpOZmPJW" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="_2FpOZmNSF" role="1B3o_S" />
      <node concept="3Tqbb2" id="_2FpOZmO1S" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="_2FpOZmQsi" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="_2FpOZmQ2o" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZmQjV" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZmQIN" role="jymVt" />
    <node concept="3Tm1VV" id="_2FpOZmNmG" role="1B3o_S" />
    <node concept="3uibUv" id="_2FpOZmNo3" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
    </node>
    <node concept="3uibUv" id="_2FpOZmNoA" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFbW" id="_2FpOZmQSV" role="jymVt">
      <node concept="3cqZAl" id="_2FpOZmQSW" role="3clF45" />
      <node concept="3Tm1VV" id="_2FpOZmQSX" role="1B3o_S" />
      <node concept="3clFbS" id="_2FpOZmQSZ" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmQT3" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZmQT5" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZmQTc" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZmQT2" resolve="node" />
            </node>
            <node concept="37vLTw" id="_2FpOZmR_W" role="37vLTJ">
              <ref role="3cqZAo" node="_2FpOZmPJW" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_2FpOZmQTf" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZmQTh" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZmQTo" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZmQTe" resolve="repository" />
            </node>
            <node concept="37vLTw" id="_2FpOZmRTM" role="37vLTJ">
              <ref role="3cqZAo" node="_2FpOZmQsi" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="_2FpOZmQT2" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="_2FpOZmQT1" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="_2FpOZmQTe" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="_2FpOZmQTd" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZmRrw" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZmNq2" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="_2FpOZmNq3" role="1B3o_S" />
      <node concept="2AHcQZ" id="_2FpOZmNq5" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="_2FpOZmNq6" role="3clF45">
        <ref role="3uigEE" to="cwd8:~Declaration" resolve="Declaration" />
      </node>
      <node concept="3clFbS" id="_2FpOZmNq7" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmUND" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZmUU8" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZmUNA" role="2Oq$k0">
              <ref role="3cqZAo" node="_2FpOZmQsi" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="_2FpOZmV9t" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="2OqwBi" id="_2FpOZmVnw" role="37wK5m">
                <node concept="37vLTw" id="_2FpOZmVba" role="2Oq$k0">
                  <ref role="3cqZAo" node="_2FpOZmPJW" resolve="myNode" />
                </node>
                <node concept="1mfA1w" id="_2FpOZmVGG" role="2OqNvi" />
              </node>
              <node concept="3VsKOn" id="_2FpOZmVJr" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~Declaration" resolve="Declaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmNq8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="_2FpOZmNqb" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="_2FpOZmNqc" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZmNqe" role="3clF45" />
      <node concept="3clFbS" id="_2FpOZmNqf" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmUiX" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZmUu0" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZmUiW" role="2Oq$k0">
              <ref role="3cqZAo" node="_2FpOZmPJW" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="_2FpOZmUMq" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmNqg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="_2FpOZmNqh" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="_2FpOZmNqj" role="1B3o_S" />
      <node concept="3clFbS" id="_2FpOZmNqm" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmScF" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZmScC" role="3clFbG">
            <ref role="3cqZAo" node="_2FpOZmPJW" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmNqn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tqbb2" id="_2FpOZmS38" role="3clF45">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
      </node>
    </node>
    <node concept="3clFb_" id="_2FpOZmNqq" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="_2FpOZmNqs" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZmNqt" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="_2FpOZmNqv" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmSpg" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZmSpd" role="3clFbG">
            <ref role="3cqZAo" node="_2FpOZmQsi" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmNqw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="_2FpOZmNqz" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="_2FpOZmNq$" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZmNqA" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="_2FpOZmNqC" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmSyS" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZmSJ6" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZmSyP" role="2Oq$k0">
              <ref role="3cqZAo" node="_2FpOZmPJW" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="_2FpOZmSTi" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmNqD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="_2FpOZmNqG" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="_2FpOZmNqH" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZmNqJ" role="3clF45" />
      <node concept="37vLTG" id="_2FpOZmNqK" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="_2FpOZmNqL" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZmNqN" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmTac" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZmTL3" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZmTY1" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZmNqK" resolve="name" />
            </node>
            <node concept="2OqwBi" id="_2FpOZmTls" role="37vLTJ">
              <node concept="37vLTw" id="_2FpOZmTab" role="2Oq$k0">
                <ref role="3cqZAo" node="_2FpOZmPJW" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="_2FpOZmTuU" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmNqO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="_2FpOZmVWN">
    <property role="TrG5h" value="EventDeclarationByNode" />
    <node concept="2tJIrI" id="_2FpOZmVYW" role="jymVt" />
    <node concept="312cEg" id="_2FpOZmVZO" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="_2FpOZmVZq" role="1B3o_S" />
      <node concept="3Tqbb2" id="_2FpOZmW0e" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="_2FpOZmW27" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="_2FpOZmW1k" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZmW1L" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZmW2B" role="jymVt" />
    <node concept="3Tm1VV" id="_2FpOZmVWO" role="1B3o_S" />
    <node concept="3uibUv" id="_2FpOZmVY1" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
    </node>
    <node concept="3uibUv" id="_2FpOZmVY$" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFbW" id="_2FpOZmW3j" role="jymVt">
      <node concept="3cqZAl" id="_2FpOZmW3k" role="3clF45" />
      <node concept="3Tm1VV" id="_2FpOZmW3l" role="1B3o_S" />
      <node concept="3clFbS" id="_2FpOZmW3n" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmW3r" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZmW3t" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZmW3$" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZmW3q" resolve="node" />
            </node>
            <node concept="37vLTw" id="_2FpOZmW8N" role="37vLTJ">
              <ref role="3cqZAo" node="_2FpOZmVZO" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_2FpOZmW3B" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZmW3D" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZmW3K" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZmW3A" resolve="repository" />
            </node>
            <node concept="37vLTw" id="_2FpOZmWcC" role="37vLTJ">
              <ref role="3cqZAo" node="_2FpOZmW27" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="_2FpOZmW3q" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="_2FpOZmW3p" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="_2FpOZmW3A" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="_2FpOZmW3_" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZmWfc" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZmWjT" role="jymVt">
      <property role="TrG5h" value="getAssociations" />
      <node concept="3Tm1VV" id="_2FpOZmWjU" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZmWjW" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="_2FpOZmWjX" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~EventAssociation" resolve="EventAssociation" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZmWjY" role="3clF47">
        <node concept="3clFbF" id="_2FpOZmWHX" role="3cqZAp">
          <node concept="2ShNRf" id="_2FpOZmWHR" role="3clFbG">
            <node concept="1pGfFk" id="_2FpOZmWY0" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="_2FpOZmXpY" role="37wK5m">
                <node concept="37vLTw" id="_2FpOZmX6N" role="2Oq$k0">
                  <ref role="3cqZAo" node="_2FpOZmVZO" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="_2FpOZmXMS" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
                </node>
              </node>
              <node concept="3VsKOn" id="_2FpOZmZds" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~EventAssociation" resolve="EventAssociation" />
              </node>
              <node concept="3uibUv" id="_2FpOZmYsQ" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~EventAssociation" resolve="EventAssociation" />
              </node>
              <node concept="37vLTw" id="_2FpOZmZDi" role="37wK5m">
                <ref role="3cqZAo" node="_2FpOZmW27" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmWjZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="_2FpOZmWk2" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="_2FpOZmWk3" role="1B3o_S" />
      <node concept="2AHcQZ" id="_2FpOZmWk5" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="_2FpOZmWk6" role="3clF45">
        <ref role="3uigEE" to="cwd8:~Declaration" resolve="Declaration" />
      </node>
      <node concept="3clFbS" id="_2FpOZmWk7" role="3clF47">
        <node concept="3clFbF" id="_2FpOZn0mT" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZn0to" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZn0mS" role="2Oq$k0">
              <ref role="3cqZAo" node="_2FpOZmW27" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="_2FpOZn0Hn" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="2OqwBi" id="_2FpOZn13q" role="37wK5m">
                <node concept="37vLTw" id="_2FpOZn0J4" role="2Oq$k0">
                  <ref role="3cqZAo" node="_2FpOZmVZO" resolve="myNode" />
                </node>
                <node concept="1mfA1w" id="_2FpOZn1mP" role="2OqNvi" />
              </node>
              <node concept="3VsKOn" id="_2FpOZn1Ax" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~Declaration" resolve="Declaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmWk8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="_2FpOZmWkb" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="_2FpOZmWkc" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZmWke" role="3clF45" />
      <node concept="3clFbS" id="_2FpOZmWkf" role="3clF47">
        <node concept="3clFbF" id="_2FpOZn1Lv" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZn1Uk" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZn1Lu" role="2Oq$k0">
              <ref role="3cqZAo" node="_2FpOZmVZO" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="_2FpOZn2cQ" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmWkg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="_2FpOZmWkh" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="_2FpOZmWkj" role="1B3o_S" />
      <node concept="3clFbS" id="_2FpOZmWkm" role="3clF47">
        <node concept="3clFbF" id="_2FpOZn2dS" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZn2dP" role="3clFbG">
            <ref role="3cqZAo" node="_2FpOZmVZO" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmWkn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tqbb2" id="_2FpOZn2qY" role="3clF45">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
      </node>
    </node>
    <node concept="3clFb_" id="_2FpOZmWkq" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="_2FpOZmWks" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZmWkt" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="_2FpOZmWkv" role="3clF47">
        <node concept="3clFbF" id="_2FpOZn2Ou" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZn2Or" role="3clFbG">
            <ref role="3cqZAo" node="_2FpOZmW27" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmWkw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="_2FpOZmWkz" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="_2FpOZmWk$" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZmWkA" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="_2FpOZmWkC" role="3clF47">
        <node concept="3clFbF" id="_2FpOZn2YI" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZn3jt" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZn2YF" role="2Oq$k0">
              <ref role="3cqZAo" node="_2FpOZmVZO" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="_2FpOZn3_5" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmWkD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="_2FpOZmWkG" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="_2FpOZmWkH" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZmWkJ" role="3clF45" />
      <node concept="37vLTG" id="_2FpOZmWkK" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="_2FpOZmWkL" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZmWkN" role="3clF47">
        <node concept="3clFbF" id="_2FpOZn3BH" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZn4vs" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZn4Ga" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZmWkK" resolve="name" />
            </node>
            <node concept="2OqwBi" id="_2FpOZn3UK" role="37vLTJ">
              <node concept="37vLTw" id="_2FpOZn3BG" role="2Oq$k0">
                <ref role="3cqZAo" node="_2FpOZmVZO" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="_2FpOZn4cb" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZmWkO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="_2FpOZn5bZ">
    <property role="TrG5h" value="EventAssociationByNode" />
    <node concept="2tJIrI" id="_2FpOZn5dY" role="jymVt" />
    <node concept="312cEg" id="_2FpOZn5g7" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="_2FpOZn5eM" role="1B3o_S" />
      <node concept="3Tqbb2" id="_2FpOZn5fv" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsiT" resolve="ParameterAssociation" />
      </node>
    </node>
    <node concept="312cEg" id="_2FpOZn5hK" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="_2FpOZn5gX" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZn5hq" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZn5ig" role="jymVt" />
    <node concept="3Tm1VV" id="_2FpOZn5c0" role="1B3o_S" />
    <node concept="3uibUv" id="_2FpOZn5dn" role="EKbjA">
      <ref role="3uigEE" to="cwd8:~EventAssociation" resolve="EventAssociation" />
    </node>
    <node concept="3uibUv" id="_2FpOZn5dV" role="EKbjA">
      <ref role="3uigEE" node="1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFbW" id="_2FpOZn5ml" role="jymVt">
      <node concept="3cqZAl" id="_2FpOZn5mm" role="3clF45" />
      <node concept="3Tm1VV" id="_2FpOZn5mn" role="1B3o_S" />
      <node concept="3clFbS" id="_2FpOZn5mp" role="3clF47">
        <node concept="3clFbF" id="_2FpOZn5mt" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZn5mv" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZn5mA" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZn5ms" resolve="node" />
            </node>
            <node concept="37vLTw" id="_2FpOZn5re" role="37vLTJ">
              <ref role="3cqZAo" node="_2FpOZn5g7" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_2FpOZn5mD" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZn5mF" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZn5mM" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZn5mC" resolve="repository" />
            </node>
            <node concept="37vLTw" id="_2FpOZn5tV" role="37vLTJ">
              <ref role="3cqZAo" node="_2FpOZn5hK" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="_2FpOZn5ms" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="_2FpOZn5mr" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsiT" resolve="ParameterAssociation" />
        </node>
      </node>
      <node concept="37vLTG" id="_2FpOZn5mC" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="_2FpOZn5mB" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZn5vh" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZn5yx" role="jymVt">
      <property role="TrG5h" value="getEvent" />
      <node concept="3Tm1VV" id="_2FpOZn5yy" role="1B3o_S" />
      <node concept="2AHcQZ" id="_2FpOZn5y$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="_2FpOZn5y_" role="3clF45">
        <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
      </node>
      <node concept="3clFbS" id="_2FpOZn5yA" role="3clF47">
        <node concept="3clFbF" id="_2FpOZn5Jj" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZn6YJ" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZn6Lg" role="2Oq$k0">
              <ref role="3cqZAo" node="_2FpOZn5hK" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="_2FpOZn7cb" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="2OqwBi" id="_2FpOZn5T2" role="37wK5m">
                <node concept="37vLTw" id="_2FpOZn5Jg" role="2Oq$k0">
                  <ref role="3cqZAo" node="_2FpOZn5g7" resolve="myNode" />
                </node>
                <node concept="1mfA1w" id="_2FpOZn661" role="2OqNvi" />
              </node>
              <node concept="3VsKOn" id="_2FpOZn7se" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZn5yB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZn697" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZn5yE" role="jymVt">
      <property role="TrG5h" value="getParameter" />
      <node concept="3Tm1VV" id="_2FpOZn5yF" role="1B3o_S" />
      <node concept="2AHcQZ" id="_2FpOZn5yH" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="_2FpOZn5yI" role="3clF45">
        <ref role="3uigEE" to="ntnl:~ParameterDescriptor" resolve="ParameterDescriptor" />
      </node>
      <node concept="3clFbS" id="_2FpOZn5yJ" role="3clF47">
        <node concept="3clFbF" id="_2FpOZn7Kt" role="3cqZAp">
          <node concept="2ShNRf" id="_2FpOZn7Kn" role="3clFbG">
            <node concept="1pGfFk" id="_2FpOZnq7N" role="2ShVmc">
              <ref role="37wK5l" node="_2FpOZn80H" resolve="ParameterDescriptorByReference" />
              <node concept="2OqwBi" id="_2FpOZnql6" role="37wK5m">
                <node concept="37vLTw" id="_2FpOZnq8U" role="2Oq$k0">
                  <ref role="3cqZAo" node="_2FpOZn5g7" resolve="myNode" />
                </node>
                <node concept="37Cfm0" id="_2FpOZnqAg" role="2OqNvi">
                  <node concept="1aIX9F" id="_2FpOZnqAi" role="37CeNk">
                    <node concept="26LbJo" id="_2FpOZnqDa" role="1aIX9E">
                      <ref role="26LbJp" to="xiqq:3HBlKeoYsiU" resolve="declaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="_2FpOZnqG_" role="37wK5m">
                <ref role="3cqZAo" node="_2FpOZn5hK" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZn5yK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZn7A9" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZn5yN" role="jymVt">
      <property role="TrG5h" value="setParameter" />
      <node concept="3Tm1VV" id="_2FpOZn5yO" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZn5yQ" role="3clF45" />
      <node concept="37vLTG" id="_2FpOZn5yR" role="3clF46">
        <property role="TrG5h" value="identifier" />
        <node concept="3uibUv" id="_2FpOZn5yS" role="1tU5fm">
          <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
        </node>
        <node concept="2AHcQZ" id="_2FpOZn5yT" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZn5yU" role="3clF47">
        <node concept="3clFbF" id="3VhUp_YQene" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZnsep" role="3clFbG">
            <node concept="2OqwBi" id="_2FpOZnseq" role="2Oq$k0">
              <node concept="37vLTw" id="_2FpOZnser" role="2Oq$k0">
                <ref role="3cqZAo" node="_2FpOZn5g7" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="_2FpOZns_V" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3HBlKeoYsiU" resolve="declaration" />
              </node>
            </node>
            <node concept="1AR3kn" id="_2FpOZnses" role="2OqNvi">
              <node concept="25Kdxt" id="_2FpOZnset" role="1AR3km">
                <node concept="10QFUN" id="_2FpOZnseu" role="25KhWn">
                  <node concept="2OqwBi" id="_2FpOZnsev" role="10QFUP">
                    <node concept="1eOMI4" id="_2FpOZnsew" role="2Oq$k0">
                      <node concept="10QFUN" id="_2FpOZnsex" role="1eOMHV">
                        <node concept="3uibUv" id="_2FpOZnsey" role="10QFUM">
                          <ref role="3uigEE" to="1u7h:1R0_JUQSzrX" resolve="PlatformIdentifier" />
                        </node>
                        <node concept="37vLTw" id="_2FpOZnsez" role="10QFUP">
                          <ref role="3cqZAo" node="_2FpOZn5yR" resolve="identifier" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="_2FpOZnse$" role="2OqNvi">
                      <ref role="37wK5l" to="1u7h:1R0_JUQSzv_" resolve="getReference" />
                    </node>
                  </node>
                  <node concept="2sp9CU" id="_2FpOZnse_" role="10QFUM">
                    <ref role="2sp9C9" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZn5yV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="_2FpOZn5yW" role="jymVt">
      <property role="TrG5h" value="setParameter" />
      <node concept="3Tm1VV" id="_2FpOZn5yX" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZn5yZ" role="3clF45" />
      <node concept="37vLTG" id="_2FpOZn5z0" role="3clF46">
        <property role="TrG5h" value="declaration" />
        <node concept="3uibUv" id="_2FpOZn5z1" role="1tU5fm">
          <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
        </node>
        <node concept="2AHcQZ" id="_2FpOZn5z2" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZn5z3" role="3clF47">
        <node concept="3clFbF" id="_2FpOZntSQ" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZntSR" role="3clFbG">
            <node concept="2OqwBi" id="_2FpOZntSV" role="37vLTx">
              <node concept="1eOMI4" id="_2FpOZntSW" role="2Oq$k0">
                <node concept="10QFUN" id="_2FpOZntSX" role="1eOMHV">
                  <node concept="3uibUv" id="_2FpOZnuyE" role="10QFUM">
                    <ref role="3uigEE" node="_2FpOZmNmF" resolve="ParameterDeclarationByNode" />
                  </node>
                  <node concept="37vLTw" id="_2FpOZntSZ" role="10QFUP">
                    <ref role="3cqZAo" node="_2FpOZn5z0" resolve="declaration" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="_2FpOZntT0" role="2OqNvi">
                <ref role="37wK5l" node="_2FpOZmNqh" resolve="getNode" />
              </node>
            </node>
            <node concept="2OqwBi" id="_2FpOZntT1" role="37vLTJ">
              <node concept="37vLTw" id="_2FpOZntT2" role="2Oq$k0">
                <ref role="3cqZAo" node="_2FpOZn5g7" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="_2FpOZnubR" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3HBlKeoYsiU" resolve="declaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZn5z4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="_2FpOZn5z5" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="_2FpOZn5z6" role="1B3o_S" />
      <node concept="3cqZAl" id="_2FpOZn5z8" role="3clF45" />
      <node concept="3clFbS" id="_2FpOZn5z9" role="3clF47">
        <node concept="3clFbF" id="_2FpOZnx9J" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZnxia" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZnx9I" role="2Oq$k0">
              <ref role="3cqZAo" node="_2FpOZn5g7" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="_2FpOZnxxM" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZn5za" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="_2FpOZn5zb" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="_2FpOZn5zd" role="1B3o_S" />
      <node concept="3clFbS" id="_2FpOZn5zf" role="3clF47">
        <node concept="3clFbF" id="_2FpOZnxzJ" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZnxzG" role="3clFbG">
            <ref role="3cqZAo" node="_2FpOZn5g7" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZn5zg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tqbb2" id="_2FpOZnxHp" role="3clF45">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsiT" resolve="ParameterAssociation" />
      </node>
    </node>
    <node concept="3clFb_" id="_2FpOZn5zj" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="_2FpOZn5zl" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZn5zm" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="_2FpOZn5zn" role="3clF47">
        <node concept="3clFbF" id="_2FpOZnxZx" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZnxZu" role="3clFbG">
            <ref role="3cqZAo" node="_2FpOZn5hK" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZn5zo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="_2FpOZn80y">
    <property role="TrG5h" value="ParameterDescriptorByReference" />
    <node concept="2tJIrI" id="_2FpOZn80z" role="jymVt" />
    <node concept="312cEg" id="_2FpOZn80$" role="jymVt">
      <property role="TrG5h" value="myReference" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="_2FpOZn80_" role="1B3o_S" />
      <node concept="2z4iKi" id="_2FpOZn80A" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="_2FpOZn80B" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="_2FpOZn80C" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZn80D" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZn80E" role="jymVt" />
    <node concept="3Tm1VV" id="_2FpOZn80F" role="1B3o_S" />
    <node concept="3uibUv" id="_2FpOZn8qr" role="EKbjA">
      <ref role="3uigEE" to="ntnl:~ParameterDescriptor" resolve="ParameterDescriptor" />
    </node>
    <node concept="3clFbW" id="_2FpOZn80H" role="jymVt">
      <node concept="3cqZAl" id="_2FpOZn80I" role="3clF45" />
      <node concept="3Tm1VV" id="_2FpOZn80J" role="1B3o_S" />
      <node concept="3clFbS" id="_2FpOZn80K" role="3clF47">
        <node concept="3clFbF" id="_2FpOZn80L" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZn80M" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZn80N" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZn80T" resolve="deviceTypeRefence" />
            </node>
            <node concept="37vLTw" id="_2FpOZn80O" role="37vLTJ">
              <ref role="3cqZAo" node="_2FpOZn80$" resolve="myReference" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_2FpOZn80P" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZn80Q" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZn80R" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZn80V" resolve="repository" />
            </node>
            <node concept="37vLTw" id="_2FpOZn80S" role="37vLTJ">
              <ref role="3cqZAo" node="_2FpOZn80B" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="_2FpOZn80T" role="3clF46">
        <property role="TrG5h" value="deviceTypeRefence" />
        <node concept="2z4iKi" id="_2FpOZn80U" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="_2FpOZn80V" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="_2FpOZn80W" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZn80X" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZn80Y" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3Tm1VV" id="_2FpOZn80Z" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZn8Gc" role="3clF45">
        <ref role="3uigEE" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
      </node>
      <node concept="3clFbS" id="_2FpOZn811" role="3clF47">
        <node concept="3cpWs8" id="_2FpOZn812" role="3cqZAp">
          <node concept="3cpWsn" id="_2FpOZn813" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="_2FpOZn814" role="1tU5fm" />
            <node concept="2OqwBi" id="_2FpOZn815" role="33vP2m">
              <node concept="37vLTw" id="_2FpOZn816" role="2Oq$k0">
                <ref role="3cqZAo" node="_2FpOZn80$" resolve="myReference" />
              </node>
              <node concept="2ZHEkA" id="_2FpOZn817" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_2FpOZn818" role="3cqZAp">
          <node concept="2OqwBi" id="_2FpOZn819" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZn81a" role="2Oq$k0">
              <ref role="3cqZAo" node="_2FpOZn80B" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="_2FpOZn81b" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="37vLTw" id="_2FpOZn81c" role="37wK5m">
                <ref role="3cqZAo" node="_2FpOZn813" resolve="node" />
              </node>
              <node concept="3VsKOn" id="_2FpOZn81d" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~ParameterDeclaration" resolve="ParameterDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZn81e" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZn81f" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZn9$V" role="jymVt">
      <property role="TrG5h" value="getIdentifier" />
      <node concept="3Tm1VV" id="_2FpOZn9$W" role="1B3o_S" />
      <node concept="2AHcQZ" id="_2FpOZn9$Y" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="_2FpOZn9$Z" role="3clF45">
        <ref role="3uigEE" to="v4vf:~Identifier" resolve="Identifier" />
      </node>
      <node concept="3clFbS" id="_2FpOZn9_0" role="3clF47">
        <node concept="3clFbF" id="_2FpOZna4m" role="3cqZAp">
          <node concept="2ShNRf" id="_2FpOZna4i" role="3clFbG">
            <node concept="1pGfFk" id="_2FpOZnaky" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQSz$o" resolve="PlatformIdentifier" />
              <node concept="2OqwBi" id="_2FpOZn9UN" role="37wK5m">
                <node concept="37vLTw" id="_2FpOZn9Lz" role="2Oq$k0">
                  <ref role="3cqZAo" node="_2FpOZn80$" resolve="myReference" />
                </node>
                <node concept="liA8E" id="_2FpOZna1Z" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZn9_1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZn9rc" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZn81g" role="jymVt">
      <property role="TrG5h" value="getParameterName" />
      <node concept="3Tm1VV" id="_2FpOZn81h" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZn81i" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="_2FpOZn81j" role="3clF47">
        <node concept="3cpWs8" id="_2FpOZn81k" role="3cqZAp">
          <node concept="3cpWsn" id="_2FpOZn81l" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="_2FpOZn81m" role="1tU5fm" />
            <node concept="2OqwBi" id="_2FpOZn81n" role="33vP2m">
              <node concept="37vLTw" id="_2FpOZn81o" role="2Oq$k0">
                <ref role="3cqZAo" node="_2FpOZn80$" resolve="myReference" />
              </node>
              <node concept="2ZHEkA" id="_2FpOZn81p" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="_2FpOZn81q" role="3cqZAp">
          <node concept="3clFbS" id="_2FpOZn81r" role="3clFbx">
            <node concept="3cpWs6" id="_2FpOZn81s" role="3cqZAp">
              <node concept="2OqwBi" id="_2FpOZn81t" role="3cqZAk">
                <node concept="37vLTw" id="_2FpOZn81u" role="2Oq$k0">
                  <ref role="3cqZAo" node="_2FpOZn80$" resolve="myReference" />
                </node>
                <node concept="1FfNbt" id="_2FpOZn81v" role="2OqNvi" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="_2FpOZn81w" role="3clFbw">
            <node concept="10Nm6u" id="_2FpOZn81x" role="3uHU7w" />
            <node concept="37vLTw" id="_2FpOZn81y" role="3uHU7B">
              <ref role="3cqZAo" node="_2FpOZn81l" resolve="node" />
            </node>
          </node>
          <node concept="9aQIb" id="_2FpOZn81z" role="9aQIa">
            <node concept="3clFbS" id="_2FpOZn81$" role="9aQI4">
              <node concept="3cpWs6" id="_2FpOZn81_" role="3cqZAp">
                <node concept="2OqwBi" id="_2FpOZn81A" role="3cqZAk">
                  <node concept="1PxgMI" id="_2FpOZn81B" role="2Oq$k0">
                    <node concept="chp4Y" id="_2FpOZn81C" role="3oSUPX">
                      <ref role="cht4Q" to="gpgy:23XkovVUTCw" resolve="DataTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="_2FpOZn81D" role="1m5AlR">
                      <ref role="3cqZAo" node="_2FpOZn81l" resolve="node" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="_2FpOZn81E" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZn81F" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

