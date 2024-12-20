<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ee522dab-c61c-457c-91bc-e4dac8b7bbab(org.fbme.ide.iec61499.adapter.common)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="7adg" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.common(org.fbme.lib/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mmaq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.jdom(MPS.Core/)" />
    <import index="79zb" ref="r:ada5657a-12e1-4531-852c-54732bcbaa7f(org.fbme.ide.attributes.structure)" />
    <import index="uvki" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.iec61499.repository(org.fbme.platform.lib/)" />
    <import index="80rz" ref="r:8923b760-80ff-427a-a226-9ed8b621742d(org.fbme.ide.attributes.behavior)" implicit="true" />
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
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
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
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
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
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="6407023681583036853" name="jetbrains.mps.lang.smodel.structure.NodeAttributeQualifier" flags="ng" index="3CFYIy">
        <reference id="6407023681583036854" name="attributeConcept" index="3CFYIx" />
      </concept>
      <concept id="6407023681583031218" name="jetbrains.mps.lang.smodel.structure.AttributeAccess" flags="nn" index="3CFZ6_">
        <child id="6407023681583036852" name="qualifier" index="3CFYIz" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
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
  <node concept="312cEu" id="1hwo9XLD_LP">
    <property role="TrG5h" value="PlatformContainedDeclarationBase" />
    <property role="1sVAO0" value="true" />
    <node concept="15s5l7" id="1hwo9XLD_LQ" role="lGtFl">
      <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: The type @PlatformDeclarationBase.T extends node&lt;INamedConcept&gt; is not a valid substitute for the bounded parameter T&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/6871159928248660343]&quot;;" />
      <property role="huDt6" value="Error: The type @PlatformDeclarationBase.T extends node&lt;INamedConcept&gt; is not a valid substitute for the bounded parameter T" />
    </node>
    <node concept="3Tm1VV" id="1hwo9XLD_LR" role="1B3o_S" />
    <node concept="16euLQ" id="1hwo9XLD_LS" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3Tqbb2" id="1hwo9XLD_LT" role="3ztrMU">
        <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
      </node>
    </node>
    <node concept="3uibUv" id="1hwo9XLDBbk" role="EKbjA">
      <ref role="3uigEE" to="7adg:~ContainedElement" resolve="ContainedElement" />
    </node>
    <node concept="2tJIrI" id="1hwo9XLD_LW" role="jymVt" />
    <node concept="3clFbW" id="1hwo9XLD_LX" role="jymVt">
      <node concept="3cqZAl" id="1hwo9XLD_LY" role="3clF45" />
      <node concept="3Tm1VV" id="1hwo9XLD_LZ" role="1B3o_S" />
      <node concept="3clFbS" id="1hwo9XLD_M0" role="3clF47">
        <node concept="XkiVB" id="1hwo9XLD_M1" role="3cqZAp">
          <ref role="37wK5l" node="1IuIrLUpCCt" resolve="PlatformDeclarationBase" />
          <node concept="37vLTw" id="1hwo9XLD_M2" role="37wK5m">
            <ref role="3cqZAo" node="1hwo9XLD_M4" resolve="node" />
          </node>
          <node concept="37vLTw" id="1hwo9XLD_M3" role="37wK5m">
            <ref role="3cqZAo" node="1hwo9XLD_M6" resolve="owner" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1hwo9XLD_M4" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="16syzq" id="1hwo9XLD_M5" role="1tU5fm">
          <ref role="16sUi3" node="1hwo9XLD_LS" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="1hwo9XLD_M6" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5Kxyj4Do" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1hwo9XLD_M8" role="jymVt" />
    <node concept="3uibUv" id="1hwo9XLD_M9" role="1zkMxy">
      <ref role="3uigEE" node="1IuIrLUpCCg" resolve="PlatformDeclarationBase" />
      <node concept="16syzq" id="1hwo9XLD_Ma" role="11_B2D">
        <ref role="16sUi3" node="1hwo9XLD_LS" resolve="T" />
      </node>
    </node>
    <node concept="3clFb_" id="1hwo9XLDC3c" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="1hwo9XLDC3d" role="1B3o_S" />
      <node concept="3cqZAl" id="1hwo9XLDC3e" role="3clF45" />
      <node concept="3clFbS" id="1hwo9XLDC3f" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLDC3g" role="3cqZAp">
          <node concept="2OqwBi" id="1hwo9XLDC3h" role="3clFbG">
            <node concept="37vLTw" id="1hwo9XLDC3i" role="2Oq$k0">
              <ref role="3cqZAo" node="1IuIrLUoZ0z" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="1hwo9XLDC3j" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1hwo9XLDC3k" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hwo9XLDC3l" role="jymVt" />
    <node concept="3clFb_" id="1hwo9XLDC3m" role="jymVt">
      <property role="TrG5h" value="getRole" />
      <node concept="3Tm1VV" id="1hwo9XLDC3n" role="1B3o_S" />
      <node concept="2AHcQZ" id="1hwo9XLDC3o" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="1hwo9XLDC3p" role="3clF45">
        <ref role="3uigEE" to="7adg:~Role" resolve="Role" />
      </node>
      <node concept="3clFbS" id="1hwo9XLDC3q" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLDC3r" role="3cqZAp">
          <node concept="10Nm6u" id="1hwo9XLDC3s" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1hwo9XLDC3t" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hwo9XLDC3u" role="jymVt" />
    <node concept="3clFb_" id="1hwo9XLDC3v" role="jymVt">
      <property role="TrG5h" value="index" />
      <node concept="3Tm1VV" id="1hwo9XLDC3w" role="1B3o_S" />
      <node concept="10Oyi0" id="1hwo9XLDC3x" role="3clF45" />
      <node concept="3clFbS" id="1hwo9XLDC3y" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLDC3z" role="3cqZAp">
          <node concept="2OqwBi" id="1hwo9XLDC3$" role="3clFbG">
            <node concept="37vLTw" id="1hwo9XLDC3_" role="2Oq$k0">
              <ref role="3cqZAo" node="1IuIrLUoZ0z" resolve="myNode" />
            </node>
            <node concept="2bSWHS" id="1hwo9XLDC3A" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1hwo9XLDC3B" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hwo9XLDGC0" role="jymVt" />
  </node>
  <node concept="312cEu" id="1hwo9XLDvRT">
    <property role="TrG5h" value="PlatformContainedElementBase" />
    <property role="1sVAO0" value="true" />
    <node concept="15s5l7" id="1hwo9XLDyrh" role="lGtFl">
      <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: The type @PlatformContainedElementBase.T extends node&lt;&gt; is not a valid substitute for the bounded parameter T&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/6871159928248660343]&quot;;" />
      <property role="huDt6" value="Error: The type @PlatformContainedElementBase.T extends node&lt;&gt; is not a valid substitute for the bounded parameter T" />
    </node>
    <node concept="2tJIrI" id="1hwo9XLD_aB" role="jymVt" />
    <node concept="3Tm1VV" id="1hwo9XLDvS2" role="1B3o_S" />
    <node concept="16euLQ" id="1hwo9XLDvS3" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3Tqbb2" id="1hwo9XLDvS4" role="3ztrMU" />
    </node>
    <node concept="3uibUv" id="1hwo9XLDyFv" role="EKbjA">
      <ref role="3uigEE" to="7adg:~ContainedElement" resolve="ContainedElement" />
    </node>
    <node concept="3uibUv" id="1hwo9XLDxmd" role="1zkMxy">
      <ref role="3uigEE" node="1IuIrLUoYWZ" resolve="PlatformElementBase" />
      <node concept="16syzq" id="1hwo9XLDy9m" role="11_B2D">
        <ref role="16sUi3" node="1hwo9XLDvS3" resolve="T" />
      </node>
    </node>
    <node concept="3clFbW" id="1hwo9XLD_fE" role="jymVt">
      <node concept="3cqZAl" id="1hwo9XLD_fF" role="3clF45" />
      <node concept="3Tm1VV" id="1hwo9XLD_fG" role="1B3o_S" />
      <node concept="3clFbS" id="1hwo9XLD_fI" role="3clF47">
        <node concept="XkiVB" id="1hwo9XLD_fK" role="3cqZAp">
          <ref role="37wK5l" node="1IuIrLUoZzq" resolve="PlatformElementBase" />
          <node concept="37vLTw" id="1hwo9XLD_fO" role="37wK5m">
            <ref role="3cqZAo" node="1hwo9XLD_fL" resolve="node" />
          </node>
          <node concept="37vLTw" id="1hwo9XLD_fS" role="37wK5m">
            <ref role="3cqZAo" node="1hwo9XLD_fP" resolve="owner" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1hwo9XLD_fL" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="16syzq" id="1hwo9XLD_HG" role="1tU5fm">
          <ref role="16sUi3" node="1hwo9XLDvS3" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="1hwo9XLD_fP" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5Kxyj4MC" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1hwo9XLD_yU" role="jymVt" />
    <node concept="3clFb_" id="1hwo9XLDzkg" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="1hwo9XLDzkh" role="1B3o_S" />
      <node concept="3cqZAl" id="1hwo9XLDzkj" role="3clF45" />
      <node concept="3clFbS" id="1hwo9XLDzkl" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLDzv0" role="3cqZAp">
          <node concept="2OqwBi" id="1hwo9XLDzB0" role="3clFbG">
            <node concept="37vLTw" id="1hwo9XLDzuZ" role="2Oq$k0">
              <ref role="3cqZAo" node="1IuIrLUoZ0z" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="1hwo9XLDzPZ" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1hwo9XLDzkm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hwo9XLD$03" role="jymVt" />
    <node concept="3clFb_" id="1hwo9XLDzkn" role="jymVt">
      <property role="TrG5h" value="getRole" />
      <node concept="3Tm1VV" id="1hwo9XLDzko" role="1B3o_S" />
      <node concept="2AHcQZ" id="1hwo9XLDzkq" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="1hwo9XLDzkr" role="3clF45">
        <ref role="3uigEE" to="7adg:~Role" resolve="Role" />
      </node>
      <node concept="3clFbS" id="1hwo9XLDzkt" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLDzkw" role="3cqZAp">
          <node concept="10Nm6u" id="1hwo9XLDzkv" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1hwo9XLDzku" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hwo9XLD$P2" role="jymVt" />
    <node concept="3clFb_" id="1hwo9XLDzkx" role="jymVt">
      <property role="TrG5h" value="index" />
      <node concept="3Tm1VV" id="1hwo9XLDzky" role="1B3o_S" />
      <node concept="10Oyi0" id="1hwo9XLDzk$" role="3clF45" />
      <node concept="3clFbS" id="1hwo9XLDzkA" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLD$9f" role="3cqZAp">
          <node concept="2OqwBi" id="1hwo9XLD$rs" role="3clFbG">
            <node concept="37vLTw" id="1hwo9XLD$9e" role="2Oq$k0">
              <ref role="3cqZAo" node="1IuIrLUoZ0z" resolve="myNode" />
            </node>
            <node concept="2bSWHS" id="1hwo9XLD$Fr" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1hwo9XLDzkB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1IuIrLUpCCg">
    <property role="TrG5h" value="PlatformDeclarationBase" />
    <property role="1sVAO0" value="true" />
    <node concept="15s5l7" id="1IuIrLUpFNL" role="lGtFl">
      <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: The type @PlatformDeclarationBase.T extends node&lt;INamedConcept&gt; is not a valid substitute for the bounded parameter T&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/6871159928248660343]&quot;;" />
      <property role="huDt6" value="Error: The type @PlatformDeclarationBase.T extends node&lt;INamedConcept&gt; is not a valid substitute for the bounded parameter T" />
    </node>
    <node concept="3Tm1VV" id="1IuIrLUpCCp" role="1B3o_S" />
    <node concept="16euLQ" id="1IuIrLUpCCq" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3Tqbb2" id="1IuIrLUpCCr" role="3ztrMU">
        <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
      </node>
    </node>
    <node concept="3uibUv" id="3WC2DnYvTVd" role="EKbjA">
      <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
    </node>
    <node concept="3uibUv" id="1IuIrLUpGIV" role="EKbjA">
      <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
    </node>
    <node concept="2tJIrI" id="1IuIrLUpHbp" role="jymVt" />
    <node concept="3clFbW" id="1IuIrLUpCCt" role="jymVt">
      <node concept="3cqZAl" id="1IuIrLUpCCu" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUpCCv" role="1B3o_S" />
      <node concept="3clFbS" id="1IuIrLUpCCw" role="3clF47">
        <node concept="XkiVB" id="1IuIrLUpH3y" role="3cqZAp">
          <ref role="37wK5l" node="1IuIrLUoZzq" resolve="PlatformElementBase" />
          <node concept="37vLTw" id="1IuIrLUpH5N" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUpCCD" resolve="node" />
          </node>
          <node concept="37vLTw" id="1IuIrLUpH9o" role="37wK5m">
            <ref role="3cqZAo" node="1IuIrLUpCCF" resolve="owner" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUpCCD" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="16syzq" id="1IuIrLUpCCE" role="1tU5fm">
          <ref role="16sUi3" node="1IuIrLUpCCq" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUpCCF" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5Kxyj56A" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUpHch" role="jymVt" />
    <node concept="3uibUv" id="1IuIrLUpEHJ" role="1zkMxy">
      <ref role="3uigEE" node="1IuIrLUoYWZ" resolve="PlatformElementBase" />
      <node concept="16syzq" id="1IuIrLUpFz5" role="11_B2D">
        <ref role="16sUi3" node="1IuIrLUpCCq" resolve="T" />
      </node>
    </node>
    <node concept="3clFb_" id="1IuIrLUpHdC" role="jymVt">
      <property role="TrG5h" value="getIdentifier" />
      <node concept="3Tm1VV" id="1IuIrLUpHdD" role="1B3o_S" />
      <node concept="2AHcQZ" id="1IuIrLUpHdF" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="1IuIrLUpHdG" role="3clF45">
        <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
      </node>
      <node concept="3clFbS" id="1IuIrLUpHdJ" role="3clF47">
        <node concept="3clFbF" id="1IuIrLUpH$3" role="3cqZAp">
          <node concept="2ShNRf" id="1IuIrLUpHzX" role="3clFbG">
            <node concept="1pGfFk" id="1IuIrLUpHUW" role="2ShVmc">
              <ref role="37wK5l" to="uvki:~PlatformIdentifier.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="PlatformIdentifier" />
              <node concept="2OqwBi" id="1IuIrLUpI7E" role="37wK5m">
                <node concept="37vLTw" id="1IuIrLUpHWs" role="2Oq$k0">
                  <ref role="3cqZAo" node="1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="iZEcu" id="1IuIrLUpIoc" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1IuIrLUpHdK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUpHpt" role="jymVt" />
    <node concept="3clFb_" id="1IuIrLUpHdN" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="1IuIrLUpHdO" role="1B3o_S" />
      <node concept="2AHcQZ" id="1IuIrLUpHdQ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="1IuIrLUpHdR" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="1IuIrLUpHdU" role="3clF47">
        <node concept="3clFbF" id="1IuIrLUpIpK" role="3cqZAp">
          <node concept="3K4zz7" id="5YIz88x0V8m" role="3clFbG">
            <node concept="Xl_RD" id="5YIz88x0V9I" role="3K4E3e">
              <property role="Xl_RC" value="" />
            </node>
            <node concept="2OqwBi" id="5YIz88x0WD7" role="3K4GZi">
              <node concept="37vLTw" id="5YIz88x0WD8" role="2Oq$k0">
                <ref role="3cqZAo" node="1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="5YIz88x0WD9" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="2OqwBi" id="5YIz88x0UtP" role="3K4Cdx">
              <node concept="2OqwBi" id="5YIz88x0WD3" role="2Oq$k0">
                <node concept="37vLTw" id="5YIz88x0WD4" role="2Oq$k0">
                  <ref role="3cqZAo" node="1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3TrcHB" id="5YIz88x0WD5" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="17RlXB" id="5YIz88x0UIm" role="2OqNvi" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1IuIrLUpHdV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUpHup" role="jymVt" />
    <node concept="3clFb_" id="1IuIrLUpHdY" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="1IuIrLUpHdZ" role="1B3o_S" />
      <node concept="3cqZAl" id="1IuIrLUpHe1" role="3clF45" />
      <node concept="37vLTG" id="1IuIrLUpHe2" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="1IuIrLUpHe3" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="1IuIrLUpHe4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1IuIrLUpHe7" role="3clF47">
        <node concept="3clFbF" id="1IuIrLUpJuS" role="3cqZAp">
          <node concept="37vLTI" id="1IuIrLUpK8E" role="3clFbG">
            <node concept="3K4zz7" id="5YIz88x0Ws9" role="37vLTx">
              <node concept="10Nm6u" id="5YIz88x0Wy$" role="3K4E3e" />
              <node concept="37vLTw" id="5YIz88x0WzZ" role="3K4GZi">
                <ref role="3cqZAo" node="1IuIrLUpHe2" resolve="name" />
              </node>
              <node concept="2OqwBi" id="5YIz88x0Vvr" role="3K4Cdx">
                <node concept="37vLTw" id="1IuIrLUpKjl" role="2Oq$k0">
                  <ref role="3cqZAo" node="1IuIrLUpHe2" resolve="name" />
                </node>
                <node concept="17RlXB" id="5YIz88x0VZZ" role="2OqNvi" />
              </node>
            </node>
            <node concept="2OqwBi" id="1IuIrLUpJAD" role="37vLTJ">
              <node concept="37vLTw" id="1IuIrLUpJuR" role="2Oq$k0">
                <ref role="3cqZAo" node="1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="1IuIrLUpJOt" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1IuIrLUpHe8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1IuIrLUoYWZ">
    <property role="TrG5h" value="PlatformElementBase" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="1IuIrLUoYZ8" role="jymVt" />
    <node concept="312cEg" id="1IuIrLUoZ0z" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="1IuIrLUoYZy" role="1B3o_S" />
      <node concept="16syzq" id="1IuIrLUoZ0h" role="1tU5fm">
        <ref role="16sUi3" node="1IuIrLUoYY0" resolve="T" />
      </node>
    </node>
    <node concept="312cEg" id="1IuIrLUoZ2w" role="jymVt">
      <property role="TrG5h" value="myOwner" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="1IuIrLUoZ1n" role="1B3o_S" />
      <node concept="3uibUv" id="QE5Kxyj7fA" role="1tU5fm">
        <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUoZ2X" role="jymVt" />
    <node concept="3Tm1VV" id="1IuIrLUoYX0" role="1B3o_S" />
    <node concept="16euLQ" id="1IuIrLUoYY0" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3Tqbb2" id="1IuIrLUoYYu" role="3ztrMU" />
    </node>
    <node concept="3uibUv" id="5onjsxWddUu" role="EKbjA">
      <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
    </node>
    <node concept="3clFbW" id="1IuIrLUoZzq" role="jymVt">
      <node concept="3cqZAl" id="1IuIrLUoZzr" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUoZzs" role="1B3o_S" />
      <node concept="3clFbS" id="1IuIrLUoZzu" role="3clF47">
        <node concept="3clFbF" id="1IuIrLUoZzy" role="3cqZAp">
          <node concept="37vLTI" id="1IuIrLUoZz$" role="3clFbG">
            <node concept="37vLTw" id="1IuIrLUoZzF" role="37vLTx">
              <ref role="3cqZAo" node="1IuIrLUoZzx" resolve="node" />
            </node>
            <node concept="37vLTw" id="1IuIrLUoZHo" role="37vLTJ">
              <ref role="3cqZAo" node="1IuIrLUoZ0z" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1IuIrLUoZzI" role="3cqZAp">
          <node concept="37vLTI" id="1IuIrLUoZzK" role="3clFbG">
            <node concept="37vLTw" id="1IuIrLUoZzR" role="37vLTx">
              <ref role="3cqZAo" node="1IuIrLUoZzH" resolve="owner" />
            </node>
            <node concept="37vLTw" id="1IuIrLUoZLv" role="37vLTJ">
              <ref role="3cqZAo" node="1IuIrLUoZ2w" resolve="myOwner" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUoZzx" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="16syzq" id="1IuIrLUoZzw" role="1tU5fm">
          <ref role="16sUi3" node="1IuIrLUoYY0" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUoZzH" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5Kxyj7sA" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUoZSo" role="jymVt" />
    <node concept="3clFb_" id="1IuIrLUoZ3S" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="1IuIrLUoZ3U" role="1B3o_S" />
      <node concept="16syzq" id="1IuIrLUoZOY" role="3clF45">
        <ref role="16sUi3" node="1IuIrLUoYY0" resolve="T" />
      </node>
      <node concept="2AHcQZ" id="1IuIrLUoZ3W" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1IuIrLUoZ3X" role="3clF47">
        <node concept="3clFbF" id="1IuIrLUoZaX" role="3cqZAp">
          <node concept="37vLTw" id="1IuIrLUoZaU" role="3clFbG">
            <ref role="3cqZAo" node="1IuIrLUoZ0z" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1IuIrLUoZ3Y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUoZiA" role="jymVt" />
    <node concept="3clFb_" id="1IuIrLUoZ41" role="jymVt">
      <property role="TrG5h" value="getOwner" />
      <node concept="3Tm1VV" id="1IuIrLUoZ43" role="1B3o_S" />
      <node concept="3uibUv" id="QE5Kxyj7ty" role="3clF45">
        <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
      </node>
      <node concept="2AHcQZ" id="1IuIrLUoZ45" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1IuIrLUoZ46" role="3clF47">
        <node concept="3clFbF" id="1IuIrLUoZfm" role="3cqZAp">
          <node concept="37vLTw" id="1IuIrLUoZfj" role="3clFbG">
            <ref role="3cqZAo" node="1IuIrLUoZ2w" resolve="myOwner" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1IuIrLUoZ47" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUp03o" role="jymVt" />
    <node concept="3clFb_" id="1IuIrLUp09G" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="1IuIrLUp09H" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUp09I" role="1B3o_S" />
      <node concept="3clFbS" id="1IuIrLUp09J" role="3clF47">
        <node concept="3clFbJ" id="1IuIrLUp09K" role="3cqZAp">
          <node concept="3clFbS" id="1IuIrLUp09L" role="3clFbx">
            <node concept="3cpWs6" id="1IuIrLUp09M" role="3cqZAp">
              <node concept="3clFbT" id="1IuIrLUp09N" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1IuIrLUp09O" role="3clFbw">
            <node concept="Xjq3P" id="1IuIrLUp09F" role="3uHU7B" />
            <node concept="37vLTw" id="1IuIrLUp09P" role="3uHU7w">
              <ref role="3cqZAo" node="1IuIrLUp0ac" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1IuIrLUp09Q" role="3cqZAp">
          <node concept="3clFbS" id="1IuIrLUp09R" role="3clFbx">
            <node concept="3cpWs6" id="1IuIrLUp09S" role="3cqZAp">
              <node concept="3clFbT" id="1IuIrLUp09T" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="1IuIrLUp09U" role="3clFbw">
            <node concept="3clFbC" id="1IuIrLUp09V" role="3uHU7B">
              <node concept="37vLTw" id="1IuIrLUp09W" role="3uHU7B">
                <ref role="3cqZAo" node="1IuIrLUp0ac" resolve="o" />
              </node>
              <node concept="10Nm6u" id="1IuIrLUp09X" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="1IuIrLUp09Y" role="3uHU7w">
              <node concept="2OqwBi" id="1IuIrLUp09Z" role="3uHU7B">
                <node concept="Xjq3P" id="1IuIrLUp0a0" role="2Oq$k0" />
                <node concept="liA8E" id="1IuIrLUp0a1" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
              <node concept="2OqwBi" id="1IuIrLUp0a2" role="3uHU7w">
                <node concept="37vLTw" id="1IuIrLUp0a3" role="2Oq$k0">
                  <ref role="3cqZAo" node="1IuIrLUp0ac" resolve="o" />
                </node>
                <node concept="liA8E" id="1IuIrLUp0a4" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1IuIrLUp0a5" role="3cqZAp" />
        <node concept="3cpWs8" id="1IuIrLUp0a6" role="3cqZAp">
          <node concept="3cpWsn" id="1IuIrLUp0a7" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="1IuIrLUp0a8" role="1tU5fm">
              <ref role="3uigEE" node="1IuIrLUoYWZ" resolve="PlatformElementBase" />
            </node>
            <node concept="10QFUN" id="1IuIrLUp0a9" role="33vP2m">
              <node concept="3uibUv" id="1IuIrLUp0aa" role="10QFUM">
                <ref role="3uigEE" node="1IuIrLUoYWZ" resolve="PlatformElementBase" />
              </node>
              <node concept="37vLTw" id="1IuIrLUp0ab" role="10QFUP">
                <ref role="3cqZAo" node="1IuIrLUp0ac" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1IuIrLUp4Du" role="3cqZAp">
          <node concept="17R0WA" id="1IuIrLUp5$I" role="3cqZAk">
            <node concept="37vLTw" id="1IuIrLUp4Tc" role="3uHU7B">
              <ref role="3cqZAo" node="1IuIrLUoZ0z" resolve="myNode" />
            </node>
            <node concept="2OqwBi" id="1IuIrLUp6RA" role="3uHU7w">
              <node concept="37vLTw" id="1IuIrLUp63Q" role="2Oq$k0">
                <ref role="3cqZAo" node="1IuIrLUp0a7" resolve="that" />
              </node>
              <node concept="2OwXpG" id="1IuIrLUp7kH" role="2OqNvi">
                <ref role="2Oxat5" node="1IuIrLUoZ0z" resolve="myNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1IuIrLUp0ac" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="1IuIrLUp0ad" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1IuIrLUp0ae" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1IuIrLUp1CO" role="jymVt" />
    <node concept="3clFb_" id="1IuIrLUp0aZ" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="1IuIrLUp0b0" role="3clF45" />
      <node concept="3Tm1VV" id="1IuIrLUp0b1" role="1B3o_S" />
      <node concept="3clFbS" id="1IuIrLUp0b2" role="3clF47">
        <node concept="3clFbF" id="1IuIrLUp7HW" role="3cqZAp">
          <node concept="2OqwBi" id="1IuIrLUpaTA" role="3clFbG">
            <node concept="1eOMI4" id="1IuIrLUpawH" role="2Oq$k0">
              <node concept="10QFUN" id="1IuIrLUp9Qu" role="1eOMHV">
                <node concept="37vLTw" id="1IuIrLUp9Qt" role="10QFUP">
                  <ref role="3cqZAo" node="1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3uibUv" id="1IuIrLUpa0L" role="10QFUM">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1IuIrLUpb9W" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1IuIrLUp0b3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hwo9XLDI$h" role="jymVt" />
    <node concept="3clFb_" id="1hwo9XLDGQM" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3clFbS" id="1hwo9XLDGQP" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLDJbj" role="3cqZAp">
          <node concept="2OqwBi" id="1hwo9XLDJmq" role="3clFbG">
            <node concept="37vLTw" id="1hwo9XLDJBj" role="2Oq$k0">
              <ref role="3cqZAo" node="1IuIrLUoZ2w" resolve="myOwner" />
            </node>
            <node concept="liA8E" id="1hwo9XLDJRa" role="2OqNvi">
              <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapterNullable(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapterNullable" />
              <node concept="2OqwBi" id="1hwo9XLDK0U" role="37wK5m">
                <node concept="37vLTw" id="1hwo9XLDJSC" role="2Oq$k0">
                  <ref role="3cqZAo" node="1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="1mfA1w" id="1hwo9XLDKjz" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="1hwo9XLDKnK" role="37wK5m">
                <ref role="3cqZAo" node="1hwo9XLDHok" resolve="parentClass" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="1hwo9XLDGJH" role="1B3o_S" />
      <node concept="16euLQ" id="1hwo9XLDH2h" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="16syzq" id="1hwo9XLDHdy" role="3clF45">
        <ref role="16sUi3" node="1hwo9XLDH2h" resolve="T" />
      </node>
      <node concept="37vLTG" id="1hwo9XLDHok" role="3clF46">
        <property role="TrG5h" value="parentClass" />
        <node concept="3uibUv" id="1hwo9XLDHoj" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="1hwo9XLDHuz" role="11_B2D">
            <ref role="16sUi3" node="1hwo9XLDH2h" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1hwo9XLDI_P" role="jymVt" />
    <node concept="3clFb_" id="723cCDWM03H" role="jymVt">
      <property role="TrG5h" value="getExternalContent" />
      <node concept="3Tm1VV" id="723cCDWM03I" role="1B3o_S" />
      <node concept="2AHcQZ" id="723cCDWM03K" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="723cCDWM03L" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="723cCDWM03M" role="11_B2D">
          <ref role="3uigEE" to="mmaq:~Content" resolve="Content" />
        </node>
      </node>
      <node concept="3clFbS" id="723cCDWM03P" role="3clF47">
        <node concept="3cpWs8" id="723cCDWMomk" role="3cqZAp">
          <node concept="3cpWsn" id="723cCDWMoml" role="3cpWs9">
            <property role="TrG5h" value="xmlContent" />
            <node concept="3Tqbb2" id="723cCDWMo53" role="1tU5fm">
              <ref role="ehGHo" to="79zb:3qWNnbt9XhI" resolve="XmlAdditionalContent" />
            </node>
            <node concept="2OqwBi" id="723cCDWMomm" role="33vP2m">
              <node concept="37vLTw" id="723cCDWMomn" role="2Oq$k0">
                <ref role="3cqZAo" node="1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3CFZ6_" id="723cCDWMomo" role="2OqNvi">
                <node concept="3CFYIy" id="723cCDWMomp" role="3CFYIz">
                  <ref role="3CFYIx" to="79zb:3qWNnbt9XhI" resolve="XmlAdditionalContent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="723cCDWMoKv" role="3cqZAp">
          <node concept="3clFbS" id="723cCDWMoKx" role="3clFbx">
            <node concept="3cpWs6" id="723cCDWMpuC" role="3cqZAp">
              <node concept="2YIFZM" id="723cCDWMr0S" role="3cqZAk">
                <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="723cCDWMpgm" role="3clFbw">
            <node concept="37vLTw" id="723cCDWMoMC" role="2Oq$k0">
              <ref role="3cqZAo" node="723cCDWMoml" resolve="xmlContent" />
            </node>
            <node concept="3w_OXm" id="723cCDWMppH" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs6" id="723cCDWMrMI" role="3cqZAp">
          <node concept="2OqwBi" id="723cCDWMviw" role="3cqZAk">
            <node concept="2OqwBi" id="723cCDWMtz1" role="2Oq$k0">
              <node concept="37vLTw" id="723cCDWMsZh" role="2Oq$k0">
                <ref role="3cqZAo" node="723cCDWMoml" resolve="xmlContent" />
              </node>
              <node concept="2qgKlT" id="723cCDWMu6X" role="2OqNvi">
                <ref role="37wK5l" to="80rz:3qWNnbta766" resolve="getContent" />
              </node>
            </node>
            <node concept="liA8E" id="723cCDWMw1v" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.getContent()" resolve="getContent" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="723cCDWM03Q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="723cCDWMwr5" role="jymVt" />
    <node concept="3clFb_" id="723cCDWM03T" role="jymVt">
      <property role="TrG5h" value="setExternalContent" />
      <node concept="3Tm1VV" id="723cCDWM03U" role="1B3o_S" />
      <node concept="3cqZAl" id="723cCDWM03W" role="3clF45" />
      <node concept="37vLTG" id="723cCDWM03X" role="3clF46">
        <property role="TrG5h" value="list" />
        <node concept="3uibUv" id="723cCDWM03Y" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3qUE_q" id="7Kh6vnY6gRH" role="11_B2D">
            <node concept="3uibUv" id="7Kh6vnY6hiA" role="3qUE_r">
              <ref role="3uigEE" to="mmaq:~Content" resolve="Content" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="723cCDWM040" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="723cCDWM043" role="3clF47">
        <node concept="3cpWs8" id="723cCDWMykA" role="3cqZAp">
          <node concept="3cpWsn" id="723cCDWMykB" role="3cpWs9">
            <property role="TrG5h" value="xmlContent" />
            <node concept="3Tqbb2" id="723cCDWMyko" role="1tU5fm">
              <ref role="ehGHo" to="79zb:3qWNnbt9XhI" resolve="XmlAdditionalContent" />
            </node>
            <node concept="2OqwBi" id="723cCDWMykC" role="33vP2m">
              <node concept="2OqwBi" id="723cCDWMykD" role="2Oq$k0">
                <node concept="37vLTw" id="723cCDWMykE" role="2Oq$k0">
                  <ref role="3cqZAo" node="1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3CFZ6_" id="723cCDWMykF" role="2OqNvi">
                  <node concept="3CFYIy" id="723cCDWMykG" role="3CFYIz">
                    <ref role="3CFYIx" to="79zb:3qWNnbt9XhI" resolve="XmlAdditionalContent" />
                  </node>
                </node>
              </node>
              <node concept="zfrQC" id="723cCDWMykH" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="723cCDWM_5V" role="3cqZAp">
          <node concept="3cpWsn" id="723cCDWM_5W" role="3cpWs9">
            <property role="TrG5h" value="element" />
            <node concept="3uibUv" id="723cCDWM_5B" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
            </node>
            <node concept="2ShNRf" id="723cCDWM_5X" role="33vP2m">
              <node concept="1pGfFk" id="723cCDWM_5Y" role="2ShVmc">
                <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                <node concept="Xl_RD" id="723cCDWM_aX" role="37wK5m">
                  <property role="Xl_RC" value="ExternalContent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="723cCDWM_uE" role="3cqZAp">
          <node concept="2OqwBi" id="723cCDWM_SH" role="3clFbG">
            <node concept="37vLTw" id="723cCDWM_uC" role="2Oq$k0">
              <ref role="3cqZAo" node="723cCDWM_5W" resolve="element" />
            </node>
            <node concept="liA8E" id="723cCDWMAfK" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.addContent(java.util.Collection)" resolve="addContent" />
              <node concept="37vLTw" id="723cCDWMAh9" role="37wK5m">
                <ref role="3cqZAo" node="723cCDWM03X" resolve="list" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="723cCDWMwS4" role="3cqZAp">
          <node concept="2OqwBi" id="723cCDWMyNd" role="3clFbG">
            <node concept="37vLTw" id="723cCDWMykI" role="2Oq$k0">
              <ref role="3cqZAo" node="723cCDWMykB" resolve="xmlContent" />
            </node>
            <node concept="2qgKlT" id="723cCDWMyWy" role="2OqNvi">
              <ref role="37wK5l" to="80rz:3qWNnbta3uu" resolve="setContent" />
              <node concept="37vLTw" id="723cCDWM_5Z" role="37wK5m">
                <ref role="3cqZAo" node="723cCDWM_5W" resolve="element" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="723cCDWM044" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3lxP5h46M7s">
    <property role="TrG5h" value="PlatformReference" />
    <node concept="2tJIrI" id="3lxP5h46Ne_" role="jymVt" />
    <node concept="312cEg" id="3lxP5h46O5H" role="jymVt">
      <property role="TrG5h" value="myContainer" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h46NSe" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h4796p" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="312cEg" id="3lxP5h476YM" role="jymVt">
      <property role="TrG5h" value="myLink" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h476xW" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h476Rh" role="1tU5fm">
        <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
      </node>
    </node>
    <node concept="312cEg" id="3lxP5h46QRv" role="jymVt">
      <property role="TrG5h" value="myTargetClass" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h46Qzc" role="1B3o_S" />
      <node concept="3uibUv" id="3lxP5h46QED" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="16syzq" id="3lxP5h46QLP" role="11_B2D">
          <ref role="16sUi3" node="3lxP5h46M8l" resolve="DeclarationT" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3lxP5h46Pyt" role="jymVt">
      <property role="TrG5h" value="myOwner" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3lxP5h46Pkt" role="1B3o_S" />
      <node concept="3uibUv" id="QE5Kxyj95s" role="1tU5fm">
        <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h46Oce" role="jymVt" />
    <node concept="3Tm1VV" id="3lxP5h46M7t" role="1B3o_S" />
    <node concept="3uibUv" id="3lxP5h46M8J" role="EKbjA">
      <ref role="3uigEE" to="7adg:~Reference" resolve="Reference" />
      <node concept="16syzq" id="3lxP5h46M9u" role="11_B2D">
        <ref role="16sUi3" node="3lxP5h46M8l" resolve="DeclarationT" />
      </node>
    </node>
    <node concept="16euLQ" id="3lxP5h46M8l" role="16eVyc">
      <property role="TrG5h" value="DeclarationT" />
      <node concept="3uibUv" id="6bsr$eaq0Si" role="3ztrMU">
        <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
      </node>
    </node>
    <node concept="3clFbW" id="3lxP5h46OjL" role="jymVt">
      <node concept="3cqZAl" id="3lxP5h46OjM" role="3clF45" />
      <node concept="3Tm1VV" id="3lxP5h46OjN" role="1B3o_S" />
      <node concept="3clFbS" id="3lxP5h46OjP" role="3clF47">
        <node concept="3clFbF" id="3lxP5h46OjT" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h46OjV" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h46Ok2" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h46OjS" resolve="container" />
            </node>
            <node concept="37vLTw" id="3lxP5h46OWp" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h46O5H" resolve="myContainer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h477Bd" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h4784D" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h478gi" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h477m$" resolve="link" />
            </node>
            <node concept="37vLTw" id="3lxP5h477Bb" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h476YM" resolve="myLink" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h46RzO" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h46S2E" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h46SaJ" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h46Qie" resolve="targetClass" />
            </node>
            <node concept="37vLTw" id="3lxP5h46RzM" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h46QRv" resolve="myTargetClass" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h46PPP" role="3cqZAp">
          <node concept="37vLTI" id="3lxP5h46PXw" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h46Q5S" role="37vLTx">
              <ref role="3cqZAo" node="3lxP5h46PEc" resolve="owner" />
            </node>
            <node concept="37vLTw" id="3lxP5h46PPN" role="37vLTJ">
              <ref role="3cqZAo" node="3lxP5h46Pyt" resolve="myOwner" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h46OjS" role="3clF46">
        <property role="TrG5h" value="container" />
        <node concept="3Tqbb2" id="3lxP5h477jb" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3lxP5h477m$" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="3lxP5h477xl" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h46Qie" role="3clF46">
        <property role="TrG5h" value="targetClass" />
        <node concept="3uibUv" id="3lxP5h46RnF" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="3lxP5h46Roy" role="11_B2D">
            <ref role="16sUi3" node="3lxP5h46M8l" resolve="DeclarationT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3lxP5h46PEc" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5Kxyj9ho" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h46OIZ" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h46Mbg" role="jymVt">
      <property role="TrG5h" value="getTarget" />
      <node concept="3Tm1VV" id="3lxP5h46Mbh" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h46Mbj" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="16syzq" id="3lxP5h46Mbl" role="3clF45">
        <ref role="16sUi3" node="3lxP5h46M8l" resolve="DeclarationT" />
      </node>
      <node concept="3clFbS" id="3lxP5h46Mbm" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h46SVR" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h46SVS" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="3lxP5h47b8n" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="3lxP5h47a8H" role="33vP2m">
              <node concept="37vLTw" id="3lxP5h46Tbs" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h46O5H" resolve="myContainer" />
              </node>
              <node concept="liA8E" id="3lxP5h47aqN" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                <node concept="37vLTw" id="3lxP5h47avQ" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h476YM" resolve="myLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h46SVX" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h46SVY" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h46SVZ" role="2Oq$k0">
              <ref role="3cqZAo" node="3lxP5h46Pyt" resolve="myOwner" />
            </node>
            <node concept="liA8E" id="3lxP5h46SW0" role="2OqNvi">
              <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapterNullable(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapterNullable" />
              <node concept="37vLTw" id="3lxP5h46SW1" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h46SVS" resolve="node" />
              </node>
              <node concept="37vLTw" id="3lxP5h46TqH" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h46QRv" resolve="myTargetClass" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h46Mbn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h46N8c" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h46Mbo" role="jymVt">
      <property role="TrG5h" value="getIdentifier" />
      <node concept="3Tm1VV" id="3lxP5h46Mbp" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h46Mbr" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="6bsr$eaq1dz" role="3clF45">
        <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
      </node>
      <node concept="3clFbS" id="3lxP5h46Mbt" role="3clF47">
        <node concept="3clFbF" id="1VyPeINMrvf" role="3cqZAp">
          <node concept="1rXfSq" id="1VyPeINMrvd" role="3clFbG">
            <ref role="37wK5l" node="1VyPeINMcx0" resolve="getIdentifier" />
            <node concept="37vLTw" id="1VyPeINMrUG" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h46O5H" resolve="myContainer" />
            </node>
            <node concept="37vLTw" id="1VyPeINMssN" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h476YM" resolve="myLink" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h46Mbu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h46N1O" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h46Mbx" role="jymVt">
      <property role="TrG5h" value="getPresentation" />
      <node concept="3Tm1VV" id="3lxP5h46Mby" role="1B3o_S" />
      <node concept="2AHcQZ" id="3lxP5h46Mb$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="3lxP5h46Mb_" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="3lxP5h46MbA" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h46X20" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h46X21" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3lxP5h46X22" role="1tU5fm" />
            <node concept="2OqwBi" id="3lxP5h47E6G" role="33vP2m">
              <node concept="37vLTw" id="3lxP5h46X24" role="2Oq$k0">
                <ref role="3cqZAo" node="3lxP5h46O5H" resolve="myContainer" />
              </node>
              <node concept="liA8E" id="3lxP5h47EAi" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceTarget" />
                <node concept="37vLTw" id="3lxP5h47F7t" role="37wK5m">
                  <ref role="3cqZAo" node="3lxP5h476YM" resolve="myLink" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3lxP5h46X26" role="3cqZAp">
          <node concept="3clFbS" id="3lxP5h46X27" role="3clFbx">
            <node concept="3cpWs6" id="3lxP5h46X28" role="3cqZAp">
              <node concept="2OqwBi" id="3lxP5h46X29" role="3cqZAk">
                <node concept="1PxgMI" id="3lxP5h46X2a" role="2Oq$k0">
                  <node concept="37vLTw" id="3lxP5h46X2c" role="1m5AlR">
                    <ref role="3cqZAo" node="3lxP5h46X21" resolve="node" />
                  </node>
                  <node concept="chp4Y" id="3lxP5h46X$5" role="3oSUPX">
                    <ref role="cht4Q" to="tpck:h0TrEE$" resolve="INamedConcept" />
                  </node>
                </node>
                <node concept="3TrcHB" id="3lxP5h46X2d" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3lxP5h46X2e" role="3clFbw">
            <node concept="10Nm6u" id="3lxP5h46X2f" role="3uHU7w" />
            <node concept="37vLTw" id="3lxP5h46X2g" role="3uHU7B">
              <ref role="3cqZAo" node="3lxP5h46X21" resolve="node" />
            </node>
          </node>
          <node concept="9aQIb" id="3lxP5h46X2h" role="9aQIa">
            <node concept="3clFbS" id="3lxP5h46X2i" role="9aQI4">
              <node concept="3cpWs8" id="3lxP5h47IzG" role="3cqZAp">
                <node concept="3cpWsn" id="3lxP5h47IzH" role="3cpWs9">
                  <property role="TrG5h" value="reference" />
                  <node concept="3uibUv" id="3lxP5h47IgV" role="1tU5fm">
                    <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
                  </node>
                  <node concept="2OqwBi" id="3lxP5h47IzI" role="33vP2m">
                    <node concept="37vLTw" id="3lxP5h47IzJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="3lxP5h46O5H" resolve="myContainer" />
                    </node>
                    <node concept="liA8E" id="3lxP5h47IzK" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getReference(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReference" />
                      <node concept="37vLTw" id="3lxP5h47IzL" role="37wK5m">
                        <ref role="3cqZAo" node="3lxP5h476YM" resolve="myLink" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="5Iel3Y12VHY" role="3cqZAp">
                <node concept="3clFbS" id="5Iel3Y12VI0" role="3clFbx">
                  <node concept="3cpWs6" id="5Iel3Y12WjD" role="3cqZAp">
                    <node concept="Xl_RD" id="5Iel3Y12WSZ" role="3cqZAk">
                      <property role="Xl_RC" value="" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="5Iel3Y12WdD" role="3clFbw">
                  <node concept="10Nm6u" id="5Iel3Y12Wik" role="3uHU7w" />
                  <node concept="37vLTw" id="5Iel3Y12W52" role="3uHU7B">
                    <ref role="3cqZAo" node="3lxP5h47IzH" resolve="reference" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="3lxP5h47KIF" role="3cqZAp">
                <node concept="2OqwBi" id="3lxP5h47OOU" role="3cqZAk">
                  <node concept="1eOMI4" id="3lxP5h47L_q" role="2Oq$k0">
                    <node concept="10QFUN" id="3lxP5h47NBb" role="1eOMHV">
                      <node concept="37vLTw" id="3lxP5h47OuC" role="10QFUP">
                        <ref role="3cqZAo" node="3lxP5h47IzH" resolve="reference" />
                      </node>
                      <node concept="3uibUv" id="3lxP5h47Qej" role="10QFUM">
                        <ref role="3uigEE" to="w1kc:~SReference" resolve="SReference" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3lxP5h47Ppn" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~SReference.getResolveInfo()" resolve="getResolveInfo" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h46MbB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h46MVt" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h46MbE" role="jymVt">
      <property role="TrG5h" value="setTarget" />
      <node concept="3Tm1VV" id="3lxP5h46MbF" role="1B3o_S" />
      <node concept="3cqZAl" id="3lxP5h46MbH" role="3clF45" />
      <node concept="37vLTG" id="3lxP5h46MbI" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="16syzq" id="3lxP5h46MbL" role="1tU5fm">
          <ref role="16sUi3" node="3lxP5h46M8l" resolve="DeclarationT" />
        </node>
        <node concept="2AHcQZ" id="3lxP5h46MbK" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h46MbM" role="3clF47">
        <node concept="3cpWs8" id="3lxP5h474qJ" role="3cqZAp">
          <node concept="3cpWsn" id="3lxP5h474qK" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3uibUv" id="3lxP5h474qg" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
            </node>
            <node concept="2OqwBi" id="3lxP5h474qL" role="33vP2m">
              <node concept="1eOMI4" id="3lxP5h474qM" role="2Oq$k0">
                <node concept="10QFUN" id="3lxP5h474qN" role="1eOMHV">
                  <node concept="3uibUv" id="3WC2DnYvVT1" role="10QFUM">
                    <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                  </node>
                  <node concept="37vLTw" id="3lxP5h474qP" role="10QFUP">
                    <ref role="3cqZAo" node="3lxP5h46MbI" resolve="target" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="3lxP5h474qQ" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3lxP5h474AM" role="3cqZAp">
          <node concept="2OqwBi" id="3lxP5h474Jt" role="3clFbG">
            <node concept="37vLTw" id="3lxP5h474AJ" role="2Oq$k0">
              <ref role="3cqZAo" node="3lxP5h46O5H" resolve="myContainer" />
            </node>
            <node concept="liA8E" id="3lxP5h47bxx" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
              <node concept="37vLTw" id="3lxP5h47c0l" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h476YM" resolve="myLink" />
              </node>
              <node concept="37vLTw" id="3lxP5h47chQ" role="37wK5m">
                <ref role="3cqZAo" node="3lxP5h474qK" resolve="node" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h46MbN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h46Nyh" role="jymVt" />
    <node concept="3clFb_" id="3lxP5h46MbO" role="jymVt">
      <property role="TrG5h" value="setIdentifier" />
      <node concept="3Tm1VV" id="3lxP5h46MbP" role="1B3o_S" />
      <node concept="3cqZAl" id="3lxP5h46MbR" role="3clF45" />
      <node concept="37vLTG" id="3lxP5h46MbS" role="3clF46">
        <property role="TrG5h" value="identifier" />
        <node concept="3uibUv" id="6bsr$eaq1$Y" role="1tU5fm">
          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
        </node>
        <node concept="2AHcQZ" id="3lxP5h46MbU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="3lxP5h46MbV" role="3clF47">
        <node concept="3clFbF" id="1VyPeINMjGV" role="3cqZAp">
          <node concept="1rXfSq" id="1VyPeINMjGT" role="3clFbG">
            <ref role="37wK5l" node="1VyPeINMe$r" resolve="setIndentifier" />
            <node concept="37vLTw" id="1VyPeINMk8H" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h46O5H" resolve="myContainer" />
            </node>
            <node concept="37vLTw" id="1VyPeINMknU" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h476YM" resolve="myLink" />
            </node>
            <node concept="37vLTw" id="1VyPeINMkJI" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h46Pyt" resolve="myOwner" />
            </node>
            <node concept="37vLTw" id="1VyPeINMl3W" role="37wK5m">
              <ref role="3cqZAo" node="3lxP5h46MbS" resolve="identifier" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3lxP5h46MbW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3lxP5h47jCv" role="jymVt" />
    <node concept="2YIFZL" id="1VyPeINM9Q8" role="jymVt">
      <property role="TrG5h" value="resolveInfo" />
      <node concept="3clFbS" id="1VyPeINM9Qe" role="3clF47">
        <node concept="3clFbJ" id="1VyPeINM9Qf" role="3cqZAp">
          <node concept="3clFbS" id="1VyPeINM9Qg" role="3clFbx">
            <node concept="3cpWs8" id="1VyPeINM9Qh" role="3cqZAp">
              <node concept="3cpWsn" id="1VyPeINM9Qi" role="3cpWs9">
                <property role="TrG5h" value="target" />
                <node concept="3uibUv" id="1VyPeINM9Qj" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                </node>
                <node concept="2OqwBi" id="1VyPeINM9Qk" role="33vP2m">
                  <node concept="37vLTw" id="1VyPeINM9Ql" role="2Oq$k0">
                    <ref role="3cqZAo" node="1VyPeINM9Qc" resolve="ref" />
                  </node>
                  <node concept="liA8E" id="1VyPeINM9Qm" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                    <node concept="2OqwBi" id="1VyPeINM9Qn" role="37wK5m">
                      <node concept="1eOMI4" id="1VyPeINM9Qo" role="2Oq$k0">
                        <node concept="10QFUN" id="1VyPeINM9Qp" role="1eOMHV">
                          <node concept="37vLTw" id="1VyPeINMb6X" role="10QFUP">
                            <ref role="3cqZAo" node="1VyPeINMan5" resolve="owner" />
                          </node>
                          <node concept="3uibUv" id="5vstEPJdVfT" role="10QFUM">
                            <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7sg$MFETHwm" role="2OqNvi">
                        <ref role="37wK5l" to="uvki:~PlatformRepository.getMpsRepository()" resolve="getMpsRepository" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1VyPeINM9Qt" role="3cqZAp">
              <node concept="3clFbS" id="1VyPeINM9Qu" role="3clFbx">
                <node concept="3cpWs6" id="1VyPeINM9Qv" role="3cqZAp">
                  <node concept="2OqwBi" id="1VyPeINM9Qw" role="3cqZAk">
                    <node concept="37vLTw" id="1VyPeINM9Qx" role="2Oq$k0">
                      <ref role="3cqZAo" node="1VyPeINM9Qi" resolve="target" />
                    </node>
                    <node concept="liA8E" id="1VyPeINM9Qy" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="1VyPeINM9Qz" role="3clFbw">
                <node concept="10Nm6u" id="1VyPeINM9Q$" role="3uHU7w" />
                <node concept="37vLTw" id="1VyPeINM9Q_" role="3uHU7B">
                  <ref role="3cqZAo" node="1VyPeINM9Qi" resolve="target" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1VyPeINM9QA" role="3clFbw">
            <node concept="3uibUv" id="5vstEPJdVfq" role="2ZW6by">
              <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
            </node>
            <node concept="37vLTw" id="1VyPeINMaWP" role="2ZW6bz">
              <ref role="3cqZAo" node="1VyPeINMan5" resolve="owner" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1VyPeINM9QD" role="3cqZAp">
          <node concept="3cpWsn" id="1VyPeINM9QE" role="3cpWs9">
            <property role="TrG5h" value="nodeId" />
            <node concept="3uibUv" id="1VyPeINM9QF" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeId" resolve="SNodeId" />
            </node>
            <node concept="2OqwBi" id="1VyPeINM9QG" role="33vP2m">
              <node concept="37vLTw" id="1VyPeINM9QH" role="2Oq$k0">
                <ref role="3cqZAo" node="1VyPeINM9Qc" resolve="ref" />
              </node>
              <node concept="liA8E" id="1VyPeINM9QI" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNodeReference.getNodeId()" resolve="getNodeId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1VyPeINM9QJ" role="3cqZAp">
          <node concept="3clFbS" id="1VyPeINM9QK" role="3clFbx">
            <node concept="3cpWs6" id="1VyPeINM9QL" role="3cqZAp">
              <node concept="2OqwBi" id="1VyPeINM9QM" role="3cqZAk">
                <node concept="1eOMI4" id="1VyPeINM9QN" role="2Oq$k0">
                  <node concept="10QFUN" id="1VyPeINM9QO" role="1eOMHV">
                    <node concept="37vLTw" id="1VyPeINM9QP" role="10QFUP">
                      <ref role="3cqZAo" node="1VyPeINM9QE" resolve="nodeId" />
                    </node>
                    <node concept="3uibUv" id="1VyPeINM9QQ" role="10QFUM">
                      <ref role="3uigEE" to="w1kc:~SNodeId$Foreign" resolve="SNodeId.Foreign" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="1VyPeINM9QR" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SNodeId$Foreign.getId()" resolve="getId" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1VyPeINM9QS" role="3clFbw">
            <node concept="3uibUv" id="1VyPeINM9QT" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~SNodeId$Foreign" resolve="SNodeId.Foreign" />
            </node>
            <node concept="37vLTw" id="1VyPeINM9QU" role="2ZW6bz">
              <ref role="3cqZAo" node="1VyPeINM9QE" resolve="nodeId" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1VyPeINM9QV" role="3cqZAp">
          <node concept="10Nm6u" id="1VyPeINM9QW" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="1VyPeINM9Qb" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="1VyPeINMan5" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5Kxyj9_b" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="37vLTG" id="1VyPeINM9Qc" role="3clF46">
        <property role="TrG5h" value="ref" />
        <node concept="3uibUv" id="1VyPeINM9Qd" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1VyPeINM9Qa" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1VyPeINM98C" role="jymVt" />
    <node concept="2YIFZL" id="1VyPeINMcx0" role="jymVt">
      <property role="TrG5h" value="getIdentifier" />
      <node concept="37vLTG" id="1VyPeINMdc6" role="3clF46">
        <property role="TrG5h" value="container" />
        <node concept="3uibUv" id="1VyPeINMmxv" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="1VyPeINMdc8" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="1VyPeINMdc9" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="3clFbS" id="1VyPeINMcx3" role="3clF47">
        <node concept="3cpWs8" id="1VyPeINMmMc" role="3cqZAp">
          <node concept="3cpWsn" id="1VyPeINMmMd" role="3cpWs9">
            <property role="TrG5h" value="reference" />
            <node concept="3uibUv" id="1VyPeINMmLD" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SReference" resolve="SReference" />
            </node>
            <node concept="2OqwBi" id="1VyPeINMmMe" role="33vP2m">
              <node concept="37vLTw" id="1VyPeINMmMf" role="2Oq$k0">
                <ref role="3cqZAo" node="1VyPeINMdc6" resolve="container" />
              </node>
              <node concept="liA8E" id="1VyPeINMmMg" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReference(org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReference" />
                <node concept="37vLTw" id="1VyPeINMmMh" role="37wK5m">
                  <ref role="3cqZAo" node="1VyPeINMdc8" resolve="link" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1VyPeINMmYS" role="3cqZAp">
          <node concept="3clFbS" id="1VyPeINMmYU" role="3clFbx">
            <node concept="3cpWs6" id="1VyPeINMnfV" role="3cqZAp">
              <node concept="2ShNRf" id="1VyPeINMnhP" role="3cqZAk">
                <node concept="1pGfFk" id="1VyPeINMpdQ" role="2ShVmc">
                  <ref role="37wK5l" to="7adg:~StringIdentifier.&lt;init&gt;(java.lang.String)" resolve="StringIdentifier" />
                  <node concept="2OqwBi" id="1VyPeINMpJ9" role="37wK5m">
                    <node concept="1eOMI4" id="1VyPeINMqbl" role="2Oq$k0">
                      <node concept="10QFUN" id="1VyPeINMqnv" role="1eOMHV">
                        <node concept="37vLTw" id="1VyPeINMqnu" role="10QFUP">
                          <ref role="3cqZAo" node="1VyPeINMmMd" resolve="reference" />
                        </node>
                        <node concept="3uibUv" id="1VyPeINMq_F" role="10QFUM">
                          <ref role="3uigEE" to="w1kc:~DynamicReference" resolve="DynamicReference" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1VyPeINMqYa" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~SReference.getResolveInfo()" resolve="getResolveInfo" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1VyPeINMnbR" role="3clFbw">
            <node concept="3uibUv" id="1VyPeINMneD" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~DynamicReference" resolve="DynamicReference" />
            </node>
            <node concept="37vLTw" id="1VyPeINMn2k" role="2ZW6bz">
              <ref role="3cqZAo" node="1VyPeINMmMd" resolve="reference" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6a1guh8wSUi" role="3cqZAp">
          <node concept="3cpWsn" id="6a1guh8wSUj" role="3cpWs9">
            <property role="TrG5h" value="targetNodeReference" />
            <node concept="3uibUv" id="6a1guh8wRN1" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="2OqwBi" id="6a1guh8wSUk" role="33vP2m">
              <node concept="37vLTw" id="6a1guh8wSUl" role="2Oq$k0">
                <ref role="3cqZAo" node="1VyPeINMmMd" resolve="reference" />
              </node>
              <node concept="liA8E" id="6a1guh8wSUm" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SReference.getTargetNodeReference()" resolve="getTargetNodeReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6a1guh8wVHb" role="3cqZAp">
          <node concept="3clFbS" id="6a1guh8wVHd" role="3clFbx">
            <node concept="3clFbF" id="1VyPeINMlBb" role="3cqZAp">
              <node concept="2ShNRf" id="1VyPeINMlBc" role="3clFbG">
                <node concept="1pGfFk" id="1VyPeINMlBd" role="2ShVmc">
                  <ref role="37wK5l" to="uvki:~PlatformIdentifier.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="PlatformIdentifier" />
                  <node concept="37vLTw" id="6a1guh8wSUn" role="37wK5m">
                    <ref role="3cqZAo" node="6a1guh8wSUj" resolve="targetNodeReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="6a1guh8wXtL" role="3clFbw">
            <node concept="10Nm6u" id="6a1guh8wY0g" role="3uHU7w" />
            <node concept="37vLTw" id="6a1guh8wWTn" role="3uHU7B">
              <ref role="3cqZAo" node="6a1guh8wSUj" resolve="targetNodeReference" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6a1guh8wZcV" role="3cqZAp">
          <node concept="10Nm6u" id="6a1guh8wZNl" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1VyPeINMbE4" role="1B3o_S" />
      <node concept="3uibUv" id="1VyPeINMcpt" role="3clF45">
        <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
      </node>
      <node concept="2AHcQZ" id="6a1guh8x2GN" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1VyPeINMd_q" role="jymVt" />
    <node concept="2YIFZL" id="1VyPeINMe$r" role="jymVt">
      <property role="TrG5h" value="setIndentifier" />
      <node concept="37vLTG" id="1VyPeINMfg5" role="3clF46">
        <property role="TrG5h" value="container" />
        <node concept="3uibUv" id="1VyPeINMi2q" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="1VyPeINMfg7" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="1VyPeINMfg8" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SReferenceLink" resolve="SReferenceLink" />
        </node>
      </node>
      <node concept="37vLTG" id="1VyPeINMfg9" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5Kxyj9nf" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="37vLTG" id="1VyPeINMfsk" role="3clF46">
        <property role="TrG5h" value="identifier" />
        <node concept="3uibUv" id="1VyPeINMf_t" role="1tU5fm">
          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
        </node>
      </node>
      <node concept="3clFbS" id="1VyPeINMe$u" role="3clF47">
        <node concept="3clFbJ" id="1VyPeINMfPS" role="3cqZAp">
          <node concept="3clFbS" id="1VyPeINMfPT" role="3clFbx">
            <node concept="3cpWs8" id="1VyPeINMfPU" role="3cqZAp">
              <node concept="3cpWsn" id="1VyPeINMfPV" role="3cpWs9">
                <property role="TrG5h" value="reference" />
                <node concept="3uibUv" id="1VyPeINMfPW" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                </node>
                <node concept="2OqwBi" id="1VyPeINMfPX" role="33vP2m">
                  <node concept="1eOMI4" id="1VyPeINMfPY" role="2Oq$k0">
                    <node concept="10QFUN" id="1VyPeINMfPZ" role="1eOMHV">
                      <node concept="3uibUv" id="5vstEPJdVNA" role="10QFUM">
                        <ref role="3uigEE" to="uvki:~PlatformIdentifier" resolve="PlatformIdentifier" />
                      </node>
                      <node concept="37vLTw" id="1VyPeINMfQ1" role="10QFUP">
                        <ref role="3cqZAo" node="1VyPeINMfsk" resolve="identifier" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1VyPeINMfQ2" role="2OqNvi">
                    <ref role="37wK5l" to="uvki:~PlatformIdentifier.getReference()" resolve="getReference" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1VyPeINMfQ3" role="3cqZAp">
              <node concept="2OqwBi" id="1VyPeINMfQ4" role="3clFbG">
                <node concept="37vLTw" id="1VyPeINMgus" role="2Oq$k0">
                  <ref role="3cqZAo" node="1VyPeINMfg5" resolve="container" />
                </node>
                <node concept="liA8E" id="1VyPeINMfQ6" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.setReference(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SReference)" resolve="setReference" />
                  <node concept="37vLTw" id="1VyPeINMgPY" role="37wK5m">
                    <ref role="3cqZAo" node="1VyPeINMfg7" resolve="link" />
                  </node>
                  <node concept="2YIFZM" id="1VyPeINMfQ8" role="37wK5m">
                    <ref role="37wK5l" to="w1kc:~SReference.create(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.model.SNodeReference,java.lang.String)" resolve="create" />
                    <ref role="1Pybhc" to="w1kc:~SReference" resolve="SReference" />
                    <node concept="37vLTw" id="1VyPeINMh8g" role="37wK5m">
                      <ref role="3cqZAo" node="1VyPeINMfg7" resolve="link" />
                    </node>
                    <node concept="37vLTw" id="1VyPeINMhuJ" role="37wK5m">
                      <ref role="3cqZAo" node="1VyPeINMfg5" resolve="container" />
                    </node>
                    <node concept="37vLTw" id="1VyPeINMfQb" role="37wK5m">
                      <ref role="3cqZAo" node="1VyPeINMfPV" resolve="reference" />
                    </node>
                    <node concept="1rXfSq" id="1VyPeINMfQc" role="37wK5m">
                      <ref role="37wK5l" node="1VyPeINM9Q8" resolve="resolveInfo" />
                      <node concept="37vLTw" id="1VyPeINMhH9" role="37wK5m">
                        <ref role="3cqZAo" node="1VyPeINMfg9" resolve="owner" />
                      </node>
                      <node concept="37vLTw" id="1VyPeINMfQe" role="37wK5m">
                        <ref role="3cqZAo" node="1VyPeINMfPV" resolve="reference" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1VyPeINMfQf" role="3clFbw">
            <node concept="3uibUv" id="5vstEPJdVNc" role="2ZW6by">
              <ref role="3uigEE" to="uvki:~PlatformIdentifier" resolve="PlatformIdentifier" />
            </node>
            <node concept="37vLTw" id="1VyPeINMfQh" role="2ZW6bz">
              <ref role="3cqZAo" node="1VyPeINMfsk" resolve="identifier" />
            </node>
          </node>
          <node concept="3eNFk2" id="1VyPeINMfQi" role="3eNLev">
            <node concept="2ZW3vV" id="1VyPeINMfQj" role="3eO9$A">
              <node concept="3uibUv" id="1VyPeINMfQk" role="2ZW6by">
                <ref role="3uigEE" to="7adg:~StringIdentifier" resolve="StringIdentifier" />
              </node>
              <node concept="37vLTw" id="1VyPeINMfQl" role="2ZW6bz">
                <ref role="3cqZAo" node="1VyPeINMfsk" resolve="identifier" />
              </node>
            </node>
            <node concept="3clFbS" id="1VyPeINMfQm" role="3eOfB_">
              <node concept="3cpWs8" id="1VyPeINMfQn" role="3cqZAp">
                <node concept="3cpWsn" id="1VyPeINMfQo" role="3cpWs9">
                  <property role="TrG5h" value="name" />
                  <node concept="3uibUv" id="1VyPeINMfQp" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="2OqwBi" id="1VyPeINMfQq" role="33vP2m">
                    <node concept="1eOMI4" id="1VyPeINMfQr" role="2Oq$k0">
                      <node concept="10QFUN" id="1VyPeINMfQs" role="1eOMHV">
                        <node concept="3uibUv" id="1VyPeINMfQt" role="10QFUM">
                          <ref role="3uigEE" to="7adg:~StringIdentifier" resolve="StringIdentifier" />
                        </node>
                        <node concept="37vLTw" id="1VyPeINMfQu" role="10QFUP">
                          <ref role="3cqZAo" node="1VyPeINMfsk" resolve="identifier" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1VyPeINMfQv" role="2OqNvi">
                      <ref role="37wK5l" to="7adg:~StringIdentifier.getValue()" resolve="getValue" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1VyPeINMfQw" role="3cqZAp">
                <node concept="2OqwBi" id="1VyPeINMfQx" role="3clFbG">
                  <node concept="37vLTw" id="1VyPeINMil2" role="2Oq$k0">
                    <ref role="3cqZAo" node="1VyPeINMfg5" resolve="container" />
                  </node>
                  <node concept="liA8E" id="1VyPeINMfQz" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.setReference(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SReference)" resolve="setReference" />
                    <node concept="37vLTw" id="1VyPeINMiEZ" role="37wK5m">
                      <ref role="3cqZAo" node="1VyPeINMfg7" resolve="link" />
                    </node>
                    <node concept="2YIFZM" id="1VyPeINMfQ_" role="37wK5m">
                      <ref role="37wK5l" to="w1kc:~DynamicReference.createDynamicReference(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode,java.lang.String,java.lang.String)" resolve="createDynamicReference" />
                      <ref role="1Pybhc" to="w1kc:~DynamicReference" resolve="DynamicReference" />
                      <node concept="37vLTw" id="1VyPeINMiWt" role="37wK5m">
                        <ref role="3cqZAo" node="1VyPeINMfg7" resolve="link" />
                      </node>
                      <node concept="37vLTw" id="1VyPeINMjiy" role="37wK5m">
                        <ref role="3cqZAo" node="1VyPeINMfg5" resolve="container" />
                      </node>
                      <node concept="10Nm6u" id="1VyPeINMfQC" role="37wK5m" />
                      <node concept="37vLTw" id="1VyPeINMfQD" role="37wK5m">
                        <ref role="3cqZAo" node="1VyPeINMfQo" resolve="name" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1VyPeINMejO" role="1B3o_S" />
      <node concept="3cqZAl" id="1VyPeINMe$p" role="3clF45" />
    </node>
  </node>
  <node concept="312cEu" id="1R0_JUQUTr7">
    <property role="TrG5h" value="AdaptedNodesList" />
    <node concept="2tJIrI" id="1R0_JUQUTxt" role="jymVt" />
    <node concept="312cEg" id="1R0_JUQUTPK" role="jymVt">
      <property role="TrG5h" value="myNodes" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="1R0_JUQVUsp" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R0_JUQVVCK" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1R0_JUQUTT_" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="1R0_JUQUUsL" role="jymVt">
      <property role="TrG5h" value="myTargetClass" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R0_JUQUU8P" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQUUgp" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
        <node concept="16syzq" id="1R0_JUQUUqn" role="11_B2D">
          <ref role="16sUi3" node="1R0_JUQUUkd" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1R0_JUQUUOQ" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R0_JUQUU_i" role="1B3o_S" />
      <node concept="3uibUv" id="QE5Kxyj3P1" role="1tU5fm">
        <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQUUx2" role="jymVt" />
    <node concept="2tJIrI" id="1R0_JUQUUxg" role="jymVt" />
    <node concept="3Tm1VV" id="1R0_JUQUTr8" role="1B3o_S" />
    <node concept="3uibUv" id="1R0_JUQUTtL" role="1zkMxy">
      <ref role="3uigEE" to="33ny:~AbstractList" resolve="AbstractList" />
      <node concept="16syzq" id="1R0_JUQV3u6" role="11_B2D">
        <ref role="16sUi3" node="1R0_JUQUUkd" resolve="T" />
      </node>
    </node>
    <node concept="16euLQ" id="1R0_JUQUUkd" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
    <node concept="3clFbW" id="1R0_JUQUUZN" role="jymVt">
      <node concept="3cqZAl" id="1R0_JUQUUZO" role="3clF45" />
      <node concept="3Tm1VV" id="1R0_JUQUUZP" role="1B3o_S" />
      <node concept="3clFbS" id="1R0_JUQUUZR" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQUUZW" role="3cqZAp">
          <node concept="37vLTI" id="1R0_JUQUUZY" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQUV05" role="37vLTx">
              <ref role="3cqZAo" node="1R0_JUQUUZV" resolve="nodes" />
            </node>
            <node concept="37vLTw" id="1R0_JUQUVHn" role="37vLTJ">
              <ref role="3cqZAo" node="1R0_JUQUTPK" resolve="myNodes" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R0_JUQUV09" role="3cqZAp">
          <node concept="37vLTI" id="1R0_JUQUV0b" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQUV0i" role="37vLTx">
              <ref role="3cqZAo" node="1R0_JUQUV08" resolve="targetClass" />
            </node>
            <node concept="37vLTw" id="1R0_JUQUW7a" role="37vLTJ">
              <ref role="3cqZAo" node="1R0_JUQUUsL" resolve="myTargetClass" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R0_JUQUV0l" role="3cqZAp">
          <node concept="37vLTI" id="1R0_JUQUV0n" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQUV0u" role="37vLTx">
              <ref role="3cqZAo" node="1R0_JUQUV0k" resolve="repository" />
            </node>
            <node concept="37vLTw" id="1R0_JUQUWm0" role="37vLTJ">
              <ref role="3cqZAo" node="1R0_JUQUUOQ" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R0_JUQUUZV" role="3clF46">
        <property role="TrG5h" value="nodes" />
        <node concept="3uibUv" id="1R0_JUQVWsf" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="1R0_JUQVWsg" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R0_JUQUV08" role="3clF46">
        <property role="TrG5h" value="targetClass" />
        <node concept="3uibUv" id="1R0_JUQUV06" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Class" resolve="Class" />
          <node concept="16syzq" id="1R0_JUQUV07" role="11_B2D">
            <ref role="16sUi3" node="1R0_JUQUUkd" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R0_JUQUV0k" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="QE5Kxyj4up" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQUWtf" role="jymVt" />
    <node concept="3clFb_" id="1R0_JUQUWAY" role="jymVt">
      <property role="TrG5h" value="get" />
      <node concept="3Tm1VV" id="1R0_JUQUWAZ" role="1B3o_S" />
      <node concept="16syzq" id="1R0_JUQV44U" role="3clF45">
        <ref role="16sUi3" node="1R0_JUQUUkd" resolve="T" />
      </node>
      <node concept="37vLTG" id="1R0_JUQUWB2" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="1R0_JUQUWB3" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1R0_JUQUWBf" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQVKY5" role="3cqZAp">
          <node concept="1rXfSq" id="1R0_JUQVQ9P" role="3clFbG">
            <ref role="37wK5l" node="1R0_JUQVtuP" resolve="to" />
            <node concept="2OqwBi" id="1R0_JUQVM9n" role="37wK5m">
              <node concept="37vLTw" id="1R0_JUQVKY4" role="2Oq$k0">
                <ref role="3cqZAo" node="1R0_JUQUTPK" resolve="myNodes" />
              </node>
              <node concept="liA8E" id="1R0_JUQVNdp" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                <node concept="37vLTw" id="1R0_JUQVO33" role="37wK5m">
                  <ref role="3cqZAo" node="1R0_JUQUWB2" resolve="index" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R0_JUQUWBg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQVJIK" role="jymVt" />
    <node concept="3clFb_" id="1R0_JUQUWBh" role="jymVt">
      <property role="TrG5h" value="size" />
      <node concept="3Tm1VV" id="1R0_JUQUWBi" role="1B3o_S" />
      <node concept="10Oyi0" id="1R0_JUQUWBk" role="3clF45" />
      <node concept="3clFbS" id="1R0_JUQUWBy" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQVEq4" role="3cqZAp">
          <node concept="2OqwBi" id="1R0_JUQVFZV" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQVEq3" role="2Oq$k0">
              <ref role="3cqZAo" node="1R0_JUQUTPK" resolve="myNodes" />
            </node>
            <node concept="liA8E" id="1R0_JUQVJ5j" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R0_JUQUWBz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQUZgG" role="jymVt" />
    <node concept="3clFb_" id="1R0_JUQUZSN" role="jymVt">
      <property role="TrG5h" value="set" />
      <node concept="3Tm1VV" id="1R0_JUQUZSO" role="1B3o_S" />
      <node concept="16syzq" id="1R0_JUQV4p0" role="3clF45">
        <ref role="16sUi3" node="1R0_JUQUUkd" resolve="T" />
      </node>
      <node concept="37vLTG" id="1R0_JUQUZSR" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="1R0_JUQUZSS" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1R0_JUQUZST" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="16syzq" id="1R0_JUQV4Jl" role="1tU5fm">
          <ref role="16sUi3" node="1R0_JUQUUkd" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="1R0_JUQUZSX" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQVAMr" role="3cqZAp">
          <node concept="1rXfSq" id="1R0_JUQVCOa" role="3clFbG">
            <ref role="37wK5l" node="1R0_JUQVtuP" resolve="to" />
            <node concept="2OqwBi" id="1R0_JUQVAMs" role="37wK5m">
              <node concept="37vLTw" id="1R0_JUQVAMt" role="2Oq$k0">
                <ref role="3cqZAo" node="1R0_JUQUTPK" resolve="myNodes" />
              </node>
              <node concept="liA8E" id="1R0_JUQVAMu" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.set(int,java.lang.Object)" resolve="set" />
                <node concept="37vLTw" id="1R0_JUQVAMv" role="37wK5m">
                  <ref role="3cqZAo" node="1R0_JUQUZSR" resolve="index" />
                </node>
                <node concept="1rXfSq" id="1R0_JUQVAMw" role="37wK5m">
                  <ref role="37wK5l" node="1R0_JUQVjqQ" resolve="from" />
                  <node concept="37vLTw" id="1R0_JUQVAMx" role="37wK5m">
                    <ref role="3cqZAo" node="1R0_JUQUZST" resolve="element" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R0_JUQUZSY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQV0qH" role="jymVt" />
    <node concept="3clFb_" id="1R0_JUQV0Yo" role="jymVt">
      <property role="TrG5h" value="add" />
      <node concept="3Tm1VV" id="1R0_JUQV0Yp" role="1B3o_S" />
      <node concept="3cqZAl" id="1R0_JUQV0Yr" role="3clF45" />
      <node concept="37vLTG" id="1R0_JUQV0Ys" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="1R0_JUQV0Yt" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1R0_JUQV0Yu" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="16syzq" id="1R0_JUQV5bU" role="1tU5fm">
          <ref role="16sUi3" node="1R0_JUQUUkd" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="1R0_JUQV0Yx" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQVcry" role="3cqZAp">
          <node concept="2OqwBi" id="1R0_JUQVdIz" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQVcrt" role="2Oq$k0">
              <ref role="3cqZAo" node="1R0_JUQUTPK" resolve="myNodes" />
            </node>
            <node concept="liA8E" id="1R0_JUQVfLc" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~List.add(int,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="1R0_JUQVgp5" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQV0Ys" resolve="index" />
              </node>
              <node concept="1rXfSq" id="1R0_JUQVmUJ" role="37wK5m">
                <ref role="37wK5l" node="1R0_JUQVjqQ" resolve="from" />
                <node concept="37vLTw" id="1R0_JUQVnYO" role="37wK5m">
                  <ref role="3cqZAo" node="1R0_JUQV0Yu" resolve="element" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R0_JUQV0Yy" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQV1Q1" role="jymVt" />
    <node concept="3clFb_" id="1R0_JUQV2rn" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="1R0_JUQV2ro" role="1B3o_S" />
      <node concept="16syzq" id="1R0_JUQV5vs" role="3clF45">
        <ref role="16sUi3" node="1R0_JUQUUkd" resolve="T" />
      </node>
      <node concept="37vLTG" id="1R0_JUQV2rr" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="1R0_JUQV2rs" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1R0_JUQV2ru" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQV7yN" role="3cqZAp">
          <node concept="1rXfSq" id="1R0_JUQV_i5" role="3clFbG">
            <ref role="37wK5l" node="1R0_JUQVtuP" resolve="to" />
            <node concept="2OqwBi" id="1R0_JUQV8Ox" role="37wK5m">
              <node concept="37vLTw" id="1R0_JUQV7yJ" role="2Oq$k0">
                <ref role="3cqZAo" node="1R0_JUQUTPK" resolve="myNodes" />
              </node>
              <node concept="liA8E" id="1R0_JUQVqEp" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.remove(int)" resolve="remove" />
                <node concept="37vLTw" id="1R0_JUQVrjn" role="37wK5m">
                  <ref role="3cqZAo" node="1R0_JUQV2rr" resolve="index" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R0_JUQV2rv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQVhJI" role="jymVt" />
    <node concept="3clFb_" id="1R0_JUQVjqQ" role="jymVt">
      <property role="TrG5h" value="from" />
      <node concept="3clFbS" id="1R0_JUQVjqT" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQVm3e" role="3cqZAp">
          <node concept="2OqwBi" id="1R0_JUQVmDb" role="3clFbG">
            <node concept="1eOMI4" id="1R0_JUQVmkd" role="2Oq$k0">
              <node concept="10QFUN" id="1R0_JUQVmuV" role="1eOMHV">
                <node concept="3uibUv" id="3WC2DnYvTAt" role="10QFUM">
                  <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                </node>
                <node concept="37vLTw" id="1R0_JUQVm3d" role="10QFUP">
                  <ref role="3cqZAo" node="1R0_JUQVkXh" resolve="adapted" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1R0_JUQVmLK" role="2OqNvi">
              <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1R0_JUQVitD" role="1B3o_S" />
      <node concept="3Tqbb2" id="1R0_JUQVkz4" role="3clF45" />
      <node concept="37vLTG" id="1R0_JUQVkXh" role="3clF46">
        <property role="TrG5h" value="adapted" />
        <node concept="16syzq" id="1R0_JUQVkXg" role="1tU5fm">
          <ref role="16sUi3" node="1R0_JUQUUkd" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R0_JUQVzOA" role="jymVt" />
    <node concept="3clFb_" id="1R0_JUQVtuP" role="jymVt">
      <property role="TrG5h" value="to" />
      <node concept="3clFbS" id="1R0_JUQVtuQ" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQVxy8" role="3cqZAp">
          <node concept="2OqwBi" id="1R0_JUQVyfg" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQVxy7" role="2Oq$k0">
              <ref role="3cqZAo" node="1R0_JUQUUOQ" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="1R0_JUQVyEo" role="2OqNvi">
              <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
              <node concept="37vLTw" id="1R0_JUQVyWv" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQVtv0" resolve="node" />
              </node>
              <node concept="37vLTw" id="1R0_JUQVzjn" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQUUsL" resolve="myTargetClass" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1R0_JUQVtuY" role="1B3o_S" />
      <node concept="16syzq" id="1R0_JUQVw7e" role="3clF45">
        <ref role="16sUi3" node="1R0_JUQUUkd" resolve="T" />
      </node>
      <node concept="37vLTG" id="1R0_JUQVtv0" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R0_JUQVwDS" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7_LxsObuvqi">
    <property role="TrG5h" value="LibraryByModule" />
    <property role="1sVAO0" value="true" />
    <node concept="15s5l7" id="7_LxsObuvqj" role="lGtFl">
      <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: The type @PlatformDeclarationBase.T extends node&lt;INamedConcept&gt; is not a valid substitute for the bounded parameter T&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/6871159928248660343]&quot;;" />
      <property role="huDt6" value="Error: The type @PlatformDeclarationBase.T extends node&lt;INamedConcept&gt; is not a valid substitute for the bounded parameter T" />
    </node>
    <node concept="3Tm1VV" id="7_LxsObuvqk" role="1B3o_S" />
    <node concept="16euLQ" id="7_LxsObuvql" role="16eVyc">
      <property role="TrG5h" value="T" />
      <node concept="3Tqbb2" id="7_LxsObuvqm" role="3ztrMU">
        <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
      </node>
    </node>
    <node concept="3uibUv" id="7_LxsObuvqn" role="EKbjA">
      <ref role="3uigEE" to="7adg:~ContainedElement" resolve="ContainedElement" />
    </node>
    <node concept="2tJIrI" id="7_LxsObuvqo" role="jymVt" />
    <node concept="3clFbW" id="7_LxsObuvqp" role="jymVt">
      <node concept="3cqZAl" id="7_LxsObuvqq" role="3clF45" />
      <node concept="3Tm1VV" id="7_LxsObuvqr" role="1B3o_S" />
      <node concept="3clFbS" id="7_LxsObuvqs" role="3clF47">
        <node concept="XkiVB" id="7_LxsObuvqt" role="3cqZAp">
          <ref role="37wK5l" node="1IuIrLUpCCt" resolve="PlatformDeclarationBase" />
          <node concept="37vLTw" id="7_LxsObuvqu" role="37wK5m">
            <ref role="3cqZAo" node="7_LxsObuvqw" resolve="node" />
          </node>
          <node concept="37vLTw" id="7_LxsObuvqv" role="37wK5m">
            <ref role="3cqZAo" node="7_LxsObuvqy" resolve="owner" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7_LxsObuvqw" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="16syzq" id="7_LxsObuvqx" role="1tU5fm">
          <ref role="16sUi3" node="7_LxsObuvql" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="7_LxsObuvqy" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="7_LxsObuvqz" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7_LxsObuvq$" role="jymVt" />
    <node concept="3uibUv" id="7_LxsObuvq_" role="1zkMxy">
      <ref role="3uigEE" node="1IuIrLUpCCg" resolve="PlatformDeclarationBase" />
      <node concept="16syzq" id="7_LxsObuvqA" role="11_B2D">
        <ref role="16sUi3" node="7_LxsObuvql" resolve="T" />
      </node>
    </node>
    <node concept="3clFb_" id="7_LxsObuvqB" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="7_LxsObuvqC" role="1B3o_S" />
      <node concept="3cqZAl" id="7_LxsObuvqD" role="3clF45" />
      <node concept="3clFbS" id="7_LxsObuvqE" role="3clF47">
        <node concept="3clFbF" id="7_LxsObuvqF" role="3cqZAp">
          <node concept="2OqwBi" id="7_LxsObuvqG" role="3clFbG">
            <node concept="37vLTw" id="7_LxsObuvqH" role="2Oq$k0">
              <ref role="3cqZAo" node="1IuIrLUoZ0z" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="7_LxsObuvqI" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7_LxsObuvqJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7_LxsObuvqK" role="jymVt" />
    <node concept="3clFb_" id="7_LxsObuvqL" role="jymVt">
      <property role="TrG5h" value="getRole" />
      <node concept="3Tm1VV" id="7_LxsObuvqM" role="1B3o_S" />
      <node concept="2AHcQZ" id="7_LxsObuvqN" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="7_LxsObuvqO" role="3clF45">
        <ref role="3uigEE" to="7adg:~Role" resolve="Role" />
      </node>
      <node concept="3clFbS" id="7_LxsObuvqP" role="3clF47">
        <node concept="3clFbF" id="7_LxsObuvqQ" role="3cqZAp">
          <node concept="10Nm6u" id="7_LxsObuvqR" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7_LxsObuvqS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7_LxsObuvqT" role="jymVt" />
    <node concept="3clFb_" id="7_LxsObuvqU" role="jymVt">
      <property role="TrG5h" value="index" />
      <node concept="3Tm1VV" id="7_LxsObuvqV" role="1B3o_S" />
      <node concept="10Oyi0" id="7_LxsObuvqW" role="3clF45" />
      <node concept="3clFbS" id="7_LxsObuvqX" role="3clF47">
        <node concept="3clFbF" id="7_LxsObuvqY" role="3cqZAp">
          <node concept="2OqwBi" id="7_LxsObuvqZ" role="3clFbG">
            <node concept="37vLTw" id="7_LxsObuvr0" role="2Oq$k0">
              <ref role="3cqZAo" node="1IuIrLUoZ0z" resolve="myNode" />
            </node>
            <node concept="2bSWHS" id="7_LxsObuvr1" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7_LxsObuvr2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7_LxsObuvr3" role="jymVt" />
  </node>
</model>

