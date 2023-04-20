<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5472e35e-027d-42bb-bcce-32726ec4c9a9(org.fbme.ide.iec61499.adapter.ecc)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(org.fbme.ide.iec61499.lang.behavior)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="g136" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.ecc(org.fbme.lib/)" />
    <import index="m1e1" ref="r:ce018f97-56b9-4ee7-9b5f-2d462b6628bf(org.fbme.ide.iec61499.repository)" />
    <import index="go3h" ref="r:c95c1d38-95d5-42ab-aead-d308fc2b6566(org.fbme.ide.iec61499.adapter.interfacepart)" />
    <import index="7adg" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.common(org.fbme.lib/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="fcfa" ref="r:ee522dab-c61c-457c-91bc-e4dac8b7bbab(org.fbme.ide.iec61499.adapter.common)" />
    <import index="g27j" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork(org.fbme.lib/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="h353" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.st.expressions(org.fbme.lib/)" />
    <import index="sm75" ref="r:4a1e3170-2b3f-429d-845f-93bf3a5a9633(org.fbme.ide.iec61499.adapter.st)" />
    <import index="uvki" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.iec61499.repository(org.fbme.platform.lib/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
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
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
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
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk">
        <child id="1212687122400" name="typeParameter" index="1pMfVU" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="312cEu" id="5jb5jNC4n69">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="ECCByNode" />
    <node concept="2tJIrI" id="5jb5jNC4nlJ" role="jymVt" />
    <node concept="3Tm1VV" id="5jb5jNC4n6a" role="1B3o_S" />
    <node concept="3clFbW" id="5jb5jNC4z8M" role="jymVt">
      <node concept="3cqZAl" id="5jb5jNC4z8N" role="3clF45" />
      <node concept="3Tm1VV" id="5jb5jNC4z8O" role="1B3o_S" />
      <node concept="3clFbS" id="5jb5jNC4z8Q" role="3clF47">
        <node concept="XkiVB" id="38F6aFurNrH" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1IuIrLUoZzq" resolve="PlatformElementBase" />
          <node concept="37vLTw" id="38F6aFurNBa" role="37wK5m">
            <ref role="3cqZAo" node="5jb5jNC4z8T" resolve="node" />
          </node>
          <node concept="37vLTw" id="38F6aFurNFs" role="37wK5m">
            <ref role="3cqZAo" node="1R0_JUQURKF" resolve="owner" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5jb5jNC4z8T" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5jb5jNC4z8S" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1R0_JUQURKF" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjaQ3" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6bsr$eapVKV" role="jymVt" />
    <node concept="3clFb_" id="6bsr$eapWdC" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="6bsr$eapWdD" role="1B3o_S" />
      <node concept="2AHcQZ" id="6bsr$eapWdF" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="6bsr$eapW_W" role="3clF45">
        <ref role="3uigEE" to="cwd8:~BasicFBTypeDeclaration" resolve="BasicFBTypeDeclaration" />
      </node>
      <node concept="3clFbS" id="6bsr$eapWdI" role="3clF47">
        <node concept="3clFbF" id="6bsr$eapX8l" role="3cqZAp">
          <node concept="2OqwBi" id="6bsr$eapXgX" role="3clFbG">
            <node concept="37vLTw" id="38F6aFurLPi" role="2Oq$k0">
              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
            </node>
            <node concept="liA8E" id="6bsr$eapXuM" role="2OqNvi">
              <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
              <node concept="37vLTw" id="38F6aFurLtH" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3VsKOn" id="6bsr$eapXV8" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~BasicFBTypeDeclaration" resolve="BasicFBTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6bsr$eapWdJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRFY9a" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNC4zzY" role="jymVt">
      <property role="TrG5h" value="getStates" />
      <node concept="3Tm1VV" id="5jb5jNC4z$0" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNC4z$1" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7kgI$LQSsMd" role="11_B2D">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="5jb5jNC4z$4" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQVXzN" role="3cqZAp">
          <node concept="2ShNRf" id="1R0_JUQVXzJ" role="3clFbG">
            <node concept="1pGfFk" id="1R0_JUQVY2H" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="1R0_JUQVYiR" role="37wK5m">
                <node concept="37vLTw" id="38F6aFurM47" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQVYFY" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoZ0WX" resolve="states" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQVZeN" role="37wK5m">
                <ref role="3VsUkX" to="g136:~StateDeclaration" resolve="StateDeclaration" />
              </node>
              <node concept="37vLTw" id="38F6aFurOih" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="7kgI$LQSt8_" role="1pMfVU">
                <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNC4z$5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="2AHcQZ" id="38k27IRG1ew" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNC5hlJ" role="jymVt" />
    <node concept="3clFb_" id="38k27IRG7hF" role="jymVt">
      <property role="TrG5h" value="getTransitions" />
      <node concept="3Tm1VV" id="38k27IRG7hH" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRG7hI" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7kgI$LQSt_1" role="11_B2D">
          <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRG7hK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="38k27IRG7hS" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQW1Ez" role="3cqZAp">
          <node concept="2ShNRf" id="1R0_JUQW1E$" role="3clFbG">
            <node concept="1pGfFk" id="1R0_JUQW1E_" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="1R0_JUQW1EA" role="37wK5m">
                <node concept="37vLTw" id="38F6aFurMo6" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQW2gk" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoZ0X_" resolve="transitions" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQW1ED" role="37wK5m">
                <ref role="3VsUkX" to="g136:~StateTransition" resolve="StateTransition" />
              </node>
              <node concept="37vLTw" id="38F6aFurOFb" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="7kgI$LQStS$" role="1pMfVU">
                <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRG7hT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="1R4IoyQINE7" role="EKbjA">
      <ref role="3uigEE" to="g136:~ECC" resolve="ECC" />
    </node>
    <node concept="3uibUv" id="1IuIrLUv2IN" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1IuIrLUoYWZ" resolve="PlatformElementBase" />
      <node concept="3Tqbb2" id="1IuIrLUvlTt" role="11_B2D">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="5jb5jNC4nmA">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="StateDeclarationByNode" />
    <node concept="2tJIrI" id="7kgI$LQTJTS" role="jymVt" />
    <node concept="3clFbW" id="7kgI$LQTMSK" role="jymVt">
      <node concept="3cqZAl" id="7kgI$LQTMSL" role="3clF45" />
      <node concept="3Tm1VV" id="7kgI$LQTMSM" role="1B3o_S" />
      <node concept="37vLTG" id="7kgI$LQTMSR" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7kgI$LQTMSV" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="7kgI$LQTMST" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5Kxyji_Q" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3clFbS" id="7kgI$LQTMSW" role="3clF47">
        <node concept="XkiVB" id="7kgI$LQTMSZ" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_LX" resolve="PlatformContainedDeclarationBase" />
          <node concept="37vLTw" id="7kgI$LQTMSX" role="37wK5m">
            <ref role="3cqZAo" node="7kgI$LQTMSR" resolve="node" />
          </node>
          <node concept="37vLTw" id="7kgI$LQTMSY" role="37wK5m">
            <ref role="3cqZAo" node="7kgI$LQTMST" resolve="owner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7kgI$LQTKGg" role="jymVt" />
    <node concept="3Tm1VV" id="5jb5jNC4nmB" role="1B3o_S" />
    <node concept="3uibUv" id="1IuIrLUogBD" role="EKbjA">
      <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
    </node>
    <node concept="3uibUv" id="3WC2DnYvXdO" role="EKbjA">
      <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
    </node>
    <node concept="3clFb_" id="5jb5jNCf0$m" role="jymVt">
      <property role="TrG5h" value="getX" />
      <node concept="3Tm1VV" id="5jb5jNCf0$o" role="1B3o_S" />
      <node concept="10Oyi0" id="5jb5jNCf0$p" role="3clF45" />
      <node concept="3clFbS" id="5jb5jNCf0$q" role="3clF47">
        <node concept="3clFbF" id="5jb5jNCf127" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNCf5E6" role="3clFbG">
            <node concept="2OqwBi" id="5jb5jNCf1oD" role="2Oq$k0">
              <node concept="37vLTw" id="7kgI$LQTOQc" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="5jb5jNCf1O$" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:5jb5jNC67p4" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="5jb5jNCfdQJ" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3isp" resolve="getX" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNCf0$r" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5jb5jNCf0$s" role="jymVt">
      <property role="TrG5h" value="setX" />
      <node concept="3Tm1VV" id="5jb5jNCf0$t" role="1B3o_S" />
      <node concept="3cqZAl" id="5jb5jNCf0$u" role="3clF45" />
      <node concept="37vLTG" id="5jb5jNCf0$v" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="5jb5jNCf0$w" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5jb5jNCf0$y" role="3clF47">
        <node concept="3clFbF" id="5jb5jNCfeuk" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNCfeul" role="3clFbG">
            <node concept="2OqwBi" id="5jb5jNCfeum" role="2Oq$k0">
              <node concept="37vLTw" id="7kgI$LQTP_U" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="5jb5jNCfeuo" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:5jb5jNC67p4" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="5jb5jNCfeZF" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3jp5" resolve="setX" />
              <node concept="37vLTw" id="5jb5jNCffb8" role="37wK5m">
                <ref role="3cqZAo" node="5jb5jNCf0$v" resolve="x" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNCf0$z" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5jb5jNCf0$$" role="jymVt">
      <property role="TrG5h" value="getY" />
      <node concept="3Tm1VV" id="5jb5jNCf0$A" role="1B3o_S" />
      <node concept="10Oyi0" id="5jb5jNCf0$B" role="3clF45" />
      <node concept="3clFbS" id="5jb5jNCf0$C" role="3clF47">
        <node concept="3clFbF" id="5jb5jNCfgm2" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNCfgm3" role="3clFbG">
            <node concept="2OqwBi" id="5jb5jNCfgm4" role="2Oq$k0">
              <node concept="37vLTw" id="7kgI$LQTQej" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="5jb5jNCfgm6" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:5jb5jNC67p4" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="5jb5jNCfkUT" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3iXb" resolve="getY" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNCf0$D" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="5jb5jNCf0$E" role="jymVt">
      <property role="TrG5h" value="setY" />
      <node concept="3Tm1VV" id="5jb5jNCf0$F" role="1B3o_S" />
      <node concept="3cqZAl" id="5jb5jNCf0$G" role="3clF45" />
      <node concept="37vLTG" id="5jb5jNCf0$H" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="5jb5jNCf0$I" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5jb5jNCf0$K" role="3clF47">
        <node concept="3clFbF" id="5jb5jNCffuL" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNCffuM" role="3clFbG">
            <node concept="2OqwBi" id="5jb5jNCffuN" role="2Oq$k0">
              <node concept="37vLTw" id="5jb5jNCffuO" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="5jb5jNCffuP" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:5jb5jNC67p4" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="5jb5jNCffuQ" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3lay" resolve="setY" />
              <node concept="37vLTw" id="5jb5jNCffR$" role="37wK5m">
                <ref role="3cqZAo" node="5jb5jNCf0$H" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNCf0$L" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZkIUk" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZkJgC" role="jymVt">
      <property role="TrG5h" value="getActions" />
      <node concept="3Tm1VV" id="_2FpOZkJgD" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZkJgF" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1IuIrLUoim9" role="11_B2D">
          <ref role="3uigEE" to="g136:~StateAction" resolve="StateAction" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZkJgH" role="3clF47">
        <node concept="3clFbF" id="_2FpOZkJLw" role="3cqZAp">
          <node concept="2ShNRf" id="_2FpOZkJLq" role="3clFbG">
            <node concept="1pGfFk" id="_2FpOZkJYX" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="_2FpOZkKry" role="37wK5m">
                <node concept="37vLTw" id="_2FpOZkKTx" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="_2FpOZkLnn" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoZ0VN" resolve="actions" />
                </node>
              </node>
              <node concept="3VsKOn" id="_2FpOZkMhC" role="37wK5m">
                <ref role="3VsUkX" to="g136:~StateAction" resolve="StateAction" />
              </node>
              <node concept="3uibUv" id="1IuIrLUoiOI" role="1pMfVU">
                <ref role="3uigEE" to="g136:~StateAction" resolve="StateAction" />
              </node>
              <node concept="37vLTw" id="7kgI$LQTUag" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZkJgI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7kgI$LQTUIx" role="jymVt" />
    <node concept="3uibUv" id="7kgI$LQTBdw" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLD_LP" resolve="PlatformContainedDeclarationBase" />
      <node concept="3Tqbb2" id="7kgI$LQTDwu" role="11_B2D">
        <ref role="ehGHo" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
      </node>
    </node>
    <node concept="3clFb_" id="7kgI$LQTV9W" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="7kgI$LQTV9X" role="1B3o_S" />
      <node concept="2AHcQZ" id="7kgI$LQTV9Z" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="7kgI$LQTWb4" role="3clF45">
        <ref role="3uigEE" to="g136:~ECC" resolve="ECC" />
      </node>
      <node concept="3clFbS" id="7kgI$LQTVag" role="3clF47">
        <node concept="3clFbF" id="7kgI$LQTWKT" role="3cqZAp">
          <node concept="2OqwBi" id="7kgI$LQTXFe" role="3clFbG">
            <node concept="1rXfSq" id="7kgI$LQTWKQ" role="2Oq$k0">
              <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
              <node concept="3VsKOn" id="7kgI$LQTXdJ" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~BasicFBTypeDeclaration" resolve="BasicFBTypeDeclaration" />
              </node>
            </node>
            <node concept="liA8E" id="7kgI$LQTYd1" role="2OqNvi">
              <ref role="37wK5l" to="cwd8:~BasicFBTypeDeclaration.getEcc()" resolve="getEcc" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7kgI$LQTVah" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="38k27IRGoEB">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="StateTransitionByNode" />
    <node concept="2tJIrI" id="38k27IRGoEC" role="jymVt" />
    <node concept="3Tm1VV" id="38k27IRGoEH" role="1B3o_S" />
    <node concept="3uibUv" id="1hwo9XLDc$e" role="EKbjA">
      <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
    </node>
    <node concept="3clFbW" id="1hwo9XLDih9" role="jymVt">
      <node concept="3cqZAl" id="1hwo9XLDiha" role="3clF45" />
      <node concept="3Tm1VV" id="1hwo9XLDihb" role="1B3o_S" />
      <node concept="37vLTG" id="1hwo9XLDihl" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1hwo9XLDihp" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
        </node>
      </node>
      <node concept="37vLTG" id="1hwo9XLDihn" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjjjO" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3clFbS" id="1hwo9XLDihq" role="3clF47">
        <node concept="XkiVB" id="1hwo9XLDiht" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_fE" resolve="PlatformContainedElementBase" />
          <node concept="37vLTw" id="1hwo9XLDihr" role="37wK5m">
            <ref role="3cqZAo" node="1hwo9XLDihl" resolve="node" />
          </node>
          <node concept="37vLTw" id="1hwo9XLDihs" role="37wK5m">
            <ref role="3cqZAo" node="1hwo9XLDihn" resolve="owner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRGoF0" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGoF1" role="jymVt">
      <property role="TrG5h" value="getCenterX" />
      <node concept="3Tm1VV" id="38k27IRGoF2" role="1B3o_S" />
      <node concept="10Oyi0" id="38k27IRGoF3" role="3clF45" />
      <node concept="3clFbS" id="38k27IRGoF4" role="3clF47">
        <node concept="3clFbF" id="38k27IRGoF5" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRGoF6" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRGoF7" role="2Oq$k0">
              <node concept="37vLTw" id="1hwo9XLDjFn" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="38k27IRGsFD" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:5jb5jNCauI2" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="38k27IRGoFa" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3isp" resolve="getX" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGoFb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="38k27IRGoFc" role="jymVt">
      <property role="TrG5h" value="setCenterX" />
      <node concept="3Tm1VV" id="38k27IRGoFd" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRGoFe" role="3clF45" />
      <node concept="37vLTG" id="38k27IRGoFf" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="38k27IRGoFg" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="38k27IRGoFh" role="3clF47">
        <node concept="3clFbF" id="38k27IRGoFi" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRGoFj" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRGoFk" role="2Oq$k0">
              <node concept="37vLTw" id="1hwo9XLDjUO" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="38k27IS0JfH" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:5jb5jNCauI2" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="38k27IRGoFn" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3jp5" resolve="setX" />
              <node concept="37vLTw" id="38k27IRGoFo" role="37wK5m">
                <ref role="3cqZAo" node="38k27IRGoFf" resolve="x" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGoFp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="38k27IRGoFq" role="jymVt">
      <property role="TrG5h" value="getCenterY" />
      <node concept="3Tm1VV" id="38k27IRGoFr" role="1B3o_S" />
      <node concept="10Oyi0" id="38k27IRGoFs" role="3clF45" />
      <node concept="3clFbS" id="38k27IRGoFt" role="3clF47">
        <node concept="3clFbF" id="38k27IRGoFu" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRGoFv" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRGoFw" role="2Oq$k0">
              <node concept="37vLTw" id="1hwo9XLDkib" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="38k27IS0JC8" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:5jb5jNCauI2" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="38k27IRGoFz" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3iXb" resolve="getY" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGoF$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="38k27IRGoF_" role="jymVt">
      <property role="TrG5h" value="setCenterY" />
      <node concept="3Tm1VV" id="38k27IRGoFA" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRGoFB" role="3clF45" />
      <node concept="37vLTG" id="38k27IRGoFC" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="38k27IRGoFD" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="38k27IRGoFE" role="3clF47">
        <node concept="3clFbF" id="38k27IRGoFF" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRGoFG" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRGoFH" role="2Oq$k0">
              <node concept="37vLTw" id="1hwo9XLDkv5" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="38k27IS0JZ0" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:5jb5jNCauI2" resolve="position" />
              </node>
            </node>
            <node concept="2qgKlT" id="38k27IRGoFK" role="2OqNvi">
              <ref role="37wK5l" to="t4dg:5fP$Xwj3lay" resolve="setY" />
              <node concept="37vLTw" id="38k27IRGoFL" role="37wK5m">
                <ref role="3cqZAo" node="38k27IRGoFC" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGoFM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1hwo9XLDl7c" role="jymVt" />
    <node concept="3clFb_" id="1hwo9XLDlQv" role="jymVt">
      <property role="TrG5h" value="getSourceReference" />
      <node concept="3Tm1VV" id="1hwo9XLDlQw" role="1B3o_S" />
      <node concept="2AHcQZ" id="1hwo9XLDlQy" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="1hwo9XLDlQz" role="3clF45">
        <ref role="3uigEE" to="7adg:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="1hwo9XLDlQ$" role="11_B2D">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="1hwo9XLDlQA" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLDmjT" role="3cqZAp">
          <node concept="2ShNRf" id="1hwo9XLDmjN" role="3clFbG">
            <node concept="1pGfFk" id="1hwo9XLDmyW" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="1hwo9XLDmAZ" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="359W_D" id="1hwo9XLDmVo" role="37wK5m">
                <ref role="359W_E" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
                <ref role="359W_F" to="xiqq:3HBlKeoZ0X0" resolve="sourceState" />
              </node>
              <node concept="3VsKOn" id="1hwo9XLDnwX" role="37wK5m">
                <ref role="3VsUkX" to="g136:~StateDeclaration" resolve="StateDeclaration" />
              </node>
              <node concept="37vLTw" id="1hwo9XLDnF3" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="1hwo9XLDoaA" role="1pMfVU">
                <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1hwo9XLDlQB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1hwo9XLDlQE" role="jymVt">
      <property role="TrG5h" value="getTargetReference" />
      <node concept="3Tm1VV" id="1hwo9XLDlQF" role="1B3o_S" />
      <node concept="2AHcQZ" id="1hwo9XLDlQH" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="1hwo9XLDlQI" role="3clF45">
        <ref role="3uigEE" to="7adg:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="1hwo9XLDlQJ" role="11_B2D">
          <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="1hwo9XLDlQL" role="3clF47">
        <node concept="3clFbF" id="1hwo9XLDotp" role="3cqZAp">
          <node concept="2ShNRf" id="1hwo9XLDotq" role="3clFbG">
            <node concept="1pGfFk" id="1hwo9XLDotr" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="1hwo9XLDots" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="359W_D" id="1hwo9XLDott" role="37wK5m">
                <ref role="359W_E" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
                <ref role="359W_F" to="xiqq:3HBlKeoZ0X2" resolve="targetState" />
              </node>
              <node concept="3VsKOn" id="1hwo9XLDotu" role="37wK5m">
                <ref role="3VsUkX" to="g136:~StateDeclaration" resolve="StateDeclaration" />
              </node>
              <node concept="37vLTw" id="1hwo9XLDotv" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
              <node concept="3uibUv" id="1hwo9XLDotw" role="1pMfVU">
                <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1hwo9XLDlQM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7kgI$LQU387" role="jymVt" />
    <node concept="3clFb_" id="7kgI$LQU3EC" role="jymVt">
      <property role="TrG5h" value="getCondition" />
      <node concept="3Tm1VV" id="7kgI$LQU3ED" role="1B3o_S" />
      <node concept="2AHcQZ" id="7kgI$LQU3EF" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="7kgI$LQU3EG" role="3clF45">
        <ref role="3uigEE" to="g136:~ECTransitionCondition" resolve="ECTransitionCondition" />
      </node>
      <node concept="3clFbS" id="7kgI$LQU3EL" role="3clF47">
        <node concept="3clFbF" id="7kgI$LQU6qq" role="3cqZAp">
          <node concept="2OqwBi" id="7kgI$LQU6J9" role="3clFbG">
            <node concept="37vLTw" id="7kgI$LQU6ql" role="2Oq$k0">
              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
            </node>
            <node concept="liA8E" id="7kgI$LQU74W" role="2OqNvi">
              <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
              <node concept="2OqwBi" id="7kgI$LQVQC1" role="37wK5m">
                <node concept="37vLTw" id="7kgI$LQVQdN" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3TrEf2" id="7kgI$LQVR0f" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:3HBlKeoZaIs" resolve="condition" />
                </node>
              </node>
              <node concept="3VsKOn" id="7kgI$LQVR_w" role="37wK5m">
                <ref role="3VsUkX" to="g136:~ECTransitionCondition" resolve="ECTransitionCondition" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7kgI$LQU3EM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7kgI$LQU4xz" role="jymVt" />
    <node concept="3clFb_" id="7kgI$LQU3EP" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="7kgI$LQU3EQ" role="1B3o_S" />
      <node concept="2AHcQZ" id="7kgI$LQU3ES" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="7kgI$LQVW6m" role="3clF45">
        <ref role="3uigEE" to="g136:~ECC" resolve="ECC" />
      </node>
      <node concept="3clFbS" id="7kgI$LQU3F3" role="3clF47">
        <node concept="3clFbF" id="7kgI$LQVRQ4" role="3cqZAp">
          <node concept="2OqwBi" id="7kgI$LQVT1B" role="3clFbG">
            <node concept="1rXfSq" id="7kgI$LQVRQ3" role="2Oq$k0">
              <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
              <node concept="3VsKOn" id="7kgI$LQVUaV" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~BasicFBTypeDeclaration" resolve="BasicFBTypeDeclaration" />
              </node>
            </node>
            <node concept="liA8E" id="7kgI$LQVW3O" role="2OqNvi">
              <ref role="37wK5l" to="cwd8:~BasicFBTypeDeclaration.getEcc()" resolve="getEcc" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7kgI$LQU3F4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="1hwo9XLDftZ" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLDvRT" resolve="PlatformContainedElementBase" />
      <node concept="3Tqbb2" id="1hwo9XLDguE" role="11_B2D">
        <ref role="ehGHo" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="_2FpOZlGO2">
    <property role="TrG5h" value="StateActionByNode" />
    <node concept="2tJIrI" id="_2FpOZlGQa" role="jymVt" />
    <node concept="3Tm1VV" id="_2FpOZlGO3" role="1B3o_S" />
    <node concept="3uibUv" id="1hwo9XLDbS_" role="EKbjA">
      <ref role="3uigEE" to="g136:~StateAction" resolve="StateAction" />
    </node>
    <node concept="3clFbW" id="7kgI$LQSvif" role="jymVt">
      <node concept="3cqZAl" id="7kgI$LQSvig" role="3clF45" />
      <node concept="3Tm1VV" id="7kgI$LQSvih" role="1B3o_S" />
      <node concept="37vLTG" id="7kgI$LQSvim" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7kgI$LQSviq" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoZ0Uo" resolve="StateAction" />
        </node>
      </node>
      <node concept="37vLTG" id="7kgI$LQSvio" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5KxyjhI2" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3clFbS" id="7kgI$LQSvir" role="3clF47">
        <node concept="XkiVB" id="7kgI$LQSviu" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_fE" resolve="PlatformContainedElementBase" />
          <node concept="37vLTw" id="7kgI$LQSvis" role="37wK5m">
            <ref role="3cqZAo" node="7kgI$LQSvim" resolve="node" />
          </node>
          <node concept="37vLTw" id="7kgI$LQSvit" role="37wK5m">
            <ref role="3cqZAo" node="7kgI$LQSvio" resolve="owner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7kgI$LQSvux" role="jymVt" />
    <node concept="3uibUv" id="7kgI$LQSuqR" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLDvRT" resolve="PlatformContainedElementBase" />
      <node concept="3Tqbb2" id="7kgI$LQSuCK" role="11_B2D">
        <ref role="ehGHo" to="xiqq:3HBlKeoZ0Uo" resolve="StateAction" />
      </node>
    </node>
    <node concept="3clFb_" id="7kgI$LQSvxi" role="jymVt">
      <property role="TrG5h" value="getEvent" />
      <node concept="3Tm1VV" id="7kgI$LQSvxj" role="1B3o_S" />
      <node concept="2AHcQZ" id="7kgI$LQSvxl" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="7kgI$LQSvxm" role="3clF45">
        <ref role="3uigEE" to="7adg:~CompositeReference" resolve="CompositeReference" />
        <node concept="3uibUv" id="7kgI$LQSvxn" role="11_B2D">
          <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
          <node concept="3uibUv" id="7kgI$LQSvxo" role="11_B2D">
            <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7kgI$LQSvxt" role="3clF47">
        <node concept="3clFbF" id="1KgvZpgeSoW" role="3cqZAp">
          <node concept="2ShNRf" id="1KgvZpgeSoX" role="3clFbG">
            <node concept="YeOm9" id="1KgvZpgeSoY" role="2ShVmc">
              <node concept="1Y3b0j" id="1KgvZpgeSoZ" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="7adg:~CompositeReference" resolve="CompositeReference" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="1KgvZpgeSp0" role="1B3o_S" />
                <node concept="3clFb_" id="1KgvZpgeSp1" role="jymVt">
                  <property role="TrG5h" value="getTarget" />
                  <node concept="3Tm1VV" id="1KgvZpgeSp2" role="1B3o_S" />
                  <node concept="2AHcQZ" id="1KgvZpgeSp3" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                  </node>
                  <node concept="3clFbS" id="1KgvZpgeSp4" role="3clF47">
                    <node concept="3cpWs8" id="1KgvZpgeSp7" role="3cqZAp">
                      <node concept="3cpWsn" id="1KgvZpgeSp8" role="3cpWs9">
                        <property role="TrG5h" value="destination" />
                        <node concept="3Tqbb2" id="1KgvZpgeSp9" role="1tU5fm">
                          <ref role="ehGHo" to="xiqq:75nMhMfMSWG" resolve="EventDestination" />
                        </node>
                        <node concept="2OqwBi" id="1KgvZpgeSpa" role="33vP2m">
                          <node concept="37vLTw" id="1KgvZpgeSpd" role="2Oq$k0">
                            <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                          </node>
                          <node concept="3TrEf2" id="7kgI$LQTtU7" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:2R0WzquVuy5" resolve="event" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1KgvZpgeSpf" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgeSpg" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpgeSph" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgeSpi" role="3cpWs9">
                            <property role="TrG5h" value="componentDestination" />
                            <node concept="3Tqbb2" id="1KgvZpgeSpj" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                            </node>
                            <node concept="1PxgMI" id="1KgvZpgeSpk" role="33vP2m">
                              <node concept="chp4Y" id="1KgvZpgf9m8" role="3oSUPX">
                                <ref role="cht4Q" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                              </node>
                              <node concept="37vLTw" id="1KgvZpgeSpm" role="1m5AlR">
                                <ref role="3cqZAo" node="1KgvZpgeSp8" resolve="destination" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="1KgvZpgeSpn" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgeSpo" role="3cpWs9">
                            <property role="TrG5h" value="fb" />
                            <node concept="3uibUv" id="1KgvZpgeSpp" role="1tU5fm">
                              <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                            </node>
                            <node concept="2OqwBi" id="1KgvZpgeSpq" role="33vP2m">
                              <node concept="37vLTw" id="1KgvZpgeSpr" role="2Oq$k0">
                                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                              </node>
                              <node concept="liA8E" id="1KgvZpgeSps" role="2OqNvi">
                                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                <node concept="2OqwBi" id="1KgvZpgeSpt" role="37wK5m">
                                  <node concept="37vLTw" id="1KgvZpgeSpu" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1KgvZpgeSpi" resolve="componentDestination" />
                                  </node>
                                  <node concept="3TrEf2" id="1KgvZpgeSpv" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                                  </node>
                                </node>
                                <node concept="3VsKOn" id="1KgvZpgeSpw" role="37wK5m">
                                  <ref role="3VsUkX" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="1KgvZpgeSpx" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgeSpy" role="3cpWs9">
                            <property role="TrG5h" value="declaration" />
                            <node concept="3Tqbb2" id="1KgvZpgeSpz" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
                            </node>
                            <node concept="2OqwBi" id="1KgvZpgeSp$" role="33vP2m">
                              <node concept="37vLTw" id="1KgvZpgeSp_" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KgvZpgeSpi" resolve="componentDestination" />
                              </node>
                              <node concept="3TrEf2" id="1KgvZpgeSpA" role="2OqNvi">
                                <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1KgvZpgeSpB" role="3cqZAp">
                          <node concept="3clFbS" id="1KgvZpgeSpC" role="3clFbx">
                            <node concept="3cpWs6" id="1KgvZpgeSpD" role="3cqZAp">
                              <node concept="2YIFZM" id="1KgvZpgeSpE" role="3cqZAk">
                                <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                                <ref role="37wK5l" to="g27j:~PortPath.createEventPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.declarations.EventDeclaration)" resolve="createEventPortPath" />
                                <node concept="37vLTw" id="1KgvZpgeSpF" role="37wK5m">
                                  <ref role="3cqZAo" node="1KgvZpgeSpo" resolve="fb" />
                                </node>
                                <node concept="2OqwBi" id="1KgvZpgeSpG" role="37wK5m">
                                  <node concept="37vLTw" id="1KgvZpgeSpH" role="2Oq$k0">
                                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                  </node>
                                  <node concept="liA8E" id="1KgvZpgeSpI" role="2OqNvi">
                                    <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                    <node concept="37vLTw" id="1KgvZpgeSpJ" role="37wK5m">
                                      <ref role="3cqZAo" node="1KgvZpgeSpy" resolve="declaration" />
                                    </node>
                                    <node concept="3VsKOn" id="1KgvZpgeSpK" role="37wK5m">
                                      <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1KgvZpgeSpL" role="3clFbw">
                            <node concept="2OqwBi" id="1KgvZpgeSpM" role="2Oq$k0">
                              <node concept="2OqwBi" id="1KgvZpgeSpN" role="2Oq$k0">
                                <node concept="37vLTw" id="1KgvZpgeSpO" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1KgvZpgeSpi" resolve="componentDestination" />
                                </node>
                                <node concept="3TrEf2" id="1KgvZpgeSpP" role="2OqNvi">
                                  <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                                </node>
                              </node>
                              <node concept="2qgKlT" id="1KgvZpgg2Xp" role="2OqNvi">
                                <ref role="37wK5l" to="t4dg:5L1OxDukYdN" resolve="eventDestinations" />
                              </node>
                            </node>
                            <node concept="3JPx81" id="1KgvZpgeSpR" role="2OqNvi">
                              <node concept="37vLTw" id="1KgvZpgeSpS" role="25WWJ7">
                                <ref role="3cqZAo" node="1KgvZpgeSpy" resolve="declaration" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="1KgvZpgeSpT" role="3cqZAp" />
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgeSpU" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpgeSpV" role="2Oq$k0">
                          <ref role="3cqZAo" node="1KgvZpgeSp8" resolve="destination" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpgeSpW" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpgf9kq" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1KgvZpgeSpY" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgeSpZ" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpgeSq0" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgeSq1" role="3cpWs9">
                            <property role="TrG5h" value="contextDestination" />
                            <node concept="3Tqbb2" id="1KgvZpgeSq2" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                            </node>
                            <node concept="1PxgMI" id="1KgvZpgeSq3" role="33vP2m">
                              <node concept="chp4Y" id="1KgvZpgfmc2" role="3oSUPX">
                                <ref role="cht4Q" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                              </node>
                              <node concept="37vLTw" id="1KgvZpgeSq5" role="1m5AlR">
                                <ref role="3cqZAo" node="1KgvZpgeSp8" resolve="destination" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="1KgvZpgeSq6" role="3cqZAp">
                          <node concept="2YIFZM" id="1KgvZpgeSq7" role="3cqZAk">
                            <ref role="37wK5l" to="g27j:~PortPath.createEventPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.declarations.EventDeclaration)" resolve="createEventPortPath" />
                            <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                            <node concept="10Nm6u" id="1KgvZpgeSq8" role="37wK5m" />
                            <node concept="2OqwBi" id="1KgvZpgeSq9" role="37wK5m">
                              <node concept="37vLTw" id="1KgvZpgeSqa" role="2Oq$k0">
                                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                              </node>
                              <node concept="liA8E" id="1KgvZpgeSqb" role="2OqNvi">
                                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                <node concept="2OqwBi" id="1KgvZpgeSqc" role="37wK5m">
                                  <node concept="37vLTw" id="1KgvZpgeSqd" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1KgvZpgeSq1" resolve="contextDestination" />
                                  </node>
                                  <node concept="3TrEf2" id="1KgvZpgeSqe" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                                  </node>
                                </node>
                                <node concept="3VsKOn" id="1KgvZpgeSqf" role="37wK5m">
                                  <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgeSqg" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpgeSqh" role="2Oq$k0">
                          <ref role="3cqZAo" node="1KgvZpgeSp8" resolve="destination" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpgeSqi" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpgfibL" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="1KgvZpgeSsu" role="3cqZAp">
                      <node concept="10Nm6u" id="1KgvZpgeSsv" role="3cqZAk" />
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1KgvZpgeSsw" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                  <node concept="3uibUv" id="1KgvZpgeSsx" role="3clF45">
                    <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                    <node concept="3uibUv" id="7kgI$LQTyfV" role="11_B2D">
                      <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
                    </node>
                  </node>
                </node>
                <node concept="2tJIrI" id="1KgvZpgeSsz" role="jymVt" />
                <node concept="3clFb_" id="1KgvZpgeSs$" role="jymVt">
                  <property role="TrG5h" value="getPath" />
                  <node concept="3Tm1VV" id="1KgvZpgeSs_" role="1B3o_S" />
                  <node concept="2AHcQZ" id="1KgvZpgeSsA" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                  </node>
                  <node concept="3uibUv" id="1KgvZpgeSsB" role="3clF45">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="1KgvZpgeSsC" role="11_B2D">
                      <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="1KgvZpgeSsD" role="3clF47">
                    <node concept="3cpWs8" id="1KgvZpgeSsG" role="3cqZAp">
                      <node concept="3cpWsn" id="1KgvZpgeSsH" role="3cpWs9">
                        <property role="TrG5h" value="destination" />
                        <node concept="3Tqbb2" id="1KgvZpgeSsI" role="1tU5fm">
                          <ref role="ehGHo" to="xiqq:75nMhMfMSWG" resolve="EventDestination" />
                        </node>
                        <node concept="2OqwBi" id="1KgvZpgeSsJ" role="33vP2m">
                          <node concept="37vLTw" id="1KgvZpgeSsM" role="2Oq$k0">
                            <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                          </node>
                          <node concept="3TrEf2" id="7kgI$LQT$tY" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:2R0WzquVuy5" resolve="event" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1KgvZpgeSsO" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgeSsP" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpgeSsQ" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgeSsR" role="3cpWs9">
                            <property role="TrG5h" value="componentDestination" />
                            <node concept="3Tqbb2" id="1KgvZpgeSsS" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                            </node>
                            <node concept="1PxgMI" id="1KgvZpgeSsT" role="33vP2m">
                              <node concept="chp4Y" id="1KgvZpggqSQ" role="3oSUPX">
                                <ref role="cht4Q" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                              </node>
                              <node concept="37vLTw" id="1KgvZpgeSsV" role="1m5AlR">
                                <ref role="3cqZAo" node="1KgvZpgeSsH" resolve="destination" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="1KgvZpgeSsW" role="3cqZAp">
                          <node concept="2YIFZM" id="1KgvZpgeSsX" role="3cqZAk">
                            <ref role="37wK5l" to="33ny:~List.of(java.lang.Object,java.lang.Object)" resolve="of" />
                            <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                            <node concept="2YIFZM" id="1VyPeINNJ3P" role="37wK5m">
                              <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                              <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                              <node concept="37vLTw" id="1VyPeINNN4F" role="37wK5m">
                                <ref role="3cqZAo" node="1KgvZpgeSsR" resolve="componentDestination" />
                              </node>
                              <node concept="359W_D" id="1VyPeINNJ3R" role="37wK5m">
                                <ref role="359W_E" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                                <ref role="359W_F" to="xiqq:PI_pXYus4r" resolve="component" />
                              </node>
                            </node>
                            <node concept="2YIFZM" id="1VyPeINNL26" role="37wK5m">
                              <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                              <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                              <node concept="37vLTw" id="1VyPeINNNOQ" role="37wK5m">
                                <ref role="3cqZAo" node="1KgvZpgeSsR" resolve="componentDestination" />
                              </node>
                              <node concept="359W_D" id="1VyPeINNL28" role="37wK5m">
                                <ref role="359W_E" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                                <ref role="359W_F" to="xiqq:PI_pXYus4s" resolve="declaration" />
                              </node>
                            </node>
                            <node concept="3uibUv" id="1KgvZpgeStc" role="3PaCim">
                              <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgeStd" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpgeSte" role="2Oq$k0">
                          <ref role="3cqZAo" node="1KgvZpgeSsH" resolve="destination" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpgeStf" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpggk90" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1KgvZpgeSth" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgeSti" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpgeStj" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgeStk" role="3cpWs9">
                            <property role="TrG5h" value="contextDestination" />
                            <node concept="3Tqbb2" id="1KgvZpgeStl" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                            </node>
                            <node concept="1PxgMI" id="1KgvZpgeStm" role="33vP2m">
                              <node concept="chp4Y" id="1KgvZpggt4L" role="3oSUPX">
                                <ref role="cht4Q" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                              </node>
                              <node concept="37vLTw" id="1KgvZpgeSto" role="1m5AlR">
                                <ref role="3cqZAo" node="1KgvZpgeSsH" resolve="destination" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="1KgvZpgeStp" role="3cqZAp">
                          <node concept="2YIFZM" id="1KgvZpgeStq" role="3cqZAk">
                            <ref role="37wK5l" to="33ny:~List.of(java.lang.Object)" resolve="of" />
                            <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                            <node concept="2YIFZM" id="1VyPeINNRK9" role="37wK5m">
                              <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                              <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                              <node concept="37vLTw" id="1VyPeINNVbe" role="37wK5m">
                                <ref role="3cqZAo" node="1KgvZpgeStk" resolve="contextDestination" />
                              </node>
                              <node concept="359W_D" id="1VyPeINNRKb" role="37wK5m">
                                <ref role="359W_E" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                                <ref role="359W_F" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                              </node>
                            </node>
                            <node concept="3uibUv" id="1KgvZpgeSty" role="3PaCim">
                              <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgeStz" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpgeSt$" role="2Oq$k0">
                          <ref role="3cqZAo" node="1KgvZpgeSsH" resolve="destination" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpgeSt_" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpggkav" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="1KgvZpgeSvb" role="3cqZAp">
                      <node concept="2YIFZM" id="1KgvZpgeSvc" role="3cqZAk">
                        <ref role="37wK5l" to="33ny:~List.of()" resolve="of" />
                        <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1KgvZpgeSvd" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="1KgvZpgeSve" role="jymVt" />
                <node concept="3clFb_" id="1KgvZpgeSvf" role="jymVt">
                  <property role="TrG5h" value="getPresentation" />
                  <node concept="3Tm1VV" id="1KgvZpgeSvg" role="1B3o_S" />
                  <node concept="2AHcQZ" id="1KgvZpgeSvh" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                  </node>
                  <node concept="3uibUv" id="1KgvZpgeSvi" role="3clF45">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="3clFbS" id="1KgvZpgeSvj" role="3clF47">
                    <node concept="3cpWs8" id="4ES1wbxnJVZ" role="3cqZAp">
                      <node concept="3cpWsn" id="4ES1wbxnJW0" role="3cpWs9">
                        <property role="TrG5h" value="presentation" />
                        <node concept="17QB3L" id="4ES1wbxnHJs" role="1tU5fm" />
                        <node concept="2OqwBi" id="4ES1wbxnJW1" role="33vP2m">
                          <node concept="2OqwBi" id="4ES1wbxnJW2" role="2Oq$k0">
                            <node concept="37vLTw" id="4ES1wbxnJW3" role="2Oq$k0">
                              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                            </node>
                            <node concept="3TrEf2" id="4ES1wbxnJW4" role="2OqNvi">
                              <ref role="3Tt5mk" to="xiqq:2R0WzquVuy5" resolve="event" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="4ES1wbxnJW5" role="2OqNvi">
                            <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1KgvZpgeSvk" role="3cqZAp">
                      <node concept="3K4zz7" id="4ES1wbxnLni" role="3clFbG">
                        <node concept="Xl_RD" id="4ES1wbxnLwl" role="3K4E3e">
                          <property role="Xl_RC" value="" />
                        </node>
                        <node concept="37vLTw" id="4ES1wbxnLyI" role="3K4GZi">
                          <ref role="3cqZAo" node="4ES1wbxnJW0" resolve="presentation" />
                        </node>
                        <node concept="2OqwBi" id="4ES1wbxnKDg" role="3K4Cdx">
                          <node concept="37vLTw" id="4ES1wbxnJW6" role="2Oq$k0">
                            <ref role="3cqZAo" node="4ES1wbxnJW0" resolve="presentation" />
                          </node>
                          <node concept="17RlXB" id="4ES1wbxnKU7" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1KgvZpgeSvq" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="1KgvZpgeSvr" role="jymVt" />
                <node concept="3clFb_" id="1KgvZpgeSvs" role="jymVt">
                  <property role="TrG5h" value="setPath" />
                  <node concept="3Tm1VV" id="1KgvZpgeSvt" role="1B3o_S" />
                  <node concept="3cqZAl" id="1KgvZpgeSvu" role="3clF45" />
                  <node concept="37vLTG" id="1KgvZpgeSvv" role="3clF46">
                    <property role="TrG5h" value="path" />
                    <node concept="3uibUv" id="1KgvZpgeSvw" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3qUE_q" id="3dz4Yurg0xP" role="11_B2D">
                        <node concept="3uibUv" id="3dz4Yurg1$Q" role="3qUE_r">
                          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="1KgvZpgeSvy" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="1KgvZpgeSvz" role="3clF47">
                    <node concept="3clFbJ" id="1KgvZpgeSvA" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgeSvB" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpgeSvC" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgeSvD" role="3cpWs9">
                            <property role="TrG5h" value="componentDestination" />
                            <node concept="3Tqbb2" id="1KgvZpgeSvE" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                            </node>
                            <node concept="2ShNRf" id="1KgvZpgeSvF" role="33vP2m">
                              <node concept="3zrR0B" id="1KgvZpgeSvG" role="2ShVmc">
                                <node concept="3Tqbb2" id="1KgvZpgeSvH" role="3zrR0E">
                                  <ref role="ehGHo" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1VyPeINMC09" role="3cqZAp">
                          <node concept="2YIFZM" id="1VyPeINMC0a" role="3clFbG">
                            <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                            <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                            <node concept="37vLTw" id="1VyPeINMD04" role="37wK5m">
                              <ref role="3cqZAo" node="1KgvZpgeSvD" resolve="componentDestination" />
                            </node>
                            <node concept="359W_D" id="1VyPeINMC0c" role="37wK5m">
                              <ref role="359W_F" to="xiqq:PI_pXYus4r" resolve="component" />
                              <ref role="359W_E" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                            </node>
                            <node concept="37vLTw" id="1VyPeINMC0d" role="37wK5m">
                              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                            </node>
                            <node concept="2OqwBi" id="1VyPeINMC0e" role="37wK5m">
                              <node concept="37vLTw" id="1VyPeINMC0f" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KgvZpgeSvv" resolve="path" />
                              </node>
                              <node concept="liA8E" id="1VyPeINMC0g" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                <node concept="3cmrfG" id="1VyPeINMC0h" role="37wK5m">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1VyPeINMC0i" role="3cqZAp">
                          <node concept="2YIFZM" id="1VyPeINMC0j" role="3clFbG">
                            <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                            <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                            <node concept="37vLTw" id="1VyPeINMD5t" role="37wK5m">
                              <ref role="3cqZAo" node="1KgvZpgeSvD" resolve="componentDestination" />
                            </node>
                            <node concept="359W_D" id="1VyPeINMC0l" role="37wK5m">
                              <ref role="359W_F" to="xiqq:PI_pXYus4s" resolve="declaration" />
                              <ref role="359W_E" to="xiqq:75nMhMfOWeM" resolve="ComponentEventDestination" />
                            </node>
                            <node concept="37vLTw" id="1VyPeINMC0m" role="37wK5m">
                              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                            </node>
                            <node concept="2OqwBi" id="1VyPeINMC0n" role="37wK5m">
                              <node concept="37vLTw" id="1VyPeINMC0o" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KgvZpgeSvv" resolve="path" />
                              </node>
                              <node concept="liA8E" id="1VyPeINMC0p" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                <node concept="3cmrfG" id="1VyPeINMC0q" role="37wK5m">
                                  <property role="3cmrfH" value="1" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1KgvZpgeSwi" role="3cqZAp">
                          <node concept="37vLTI" id="1KgvZpgeSwj" role="3clFbG">
                            <node concept="37vLTw" id="1KgvZpgeSwk" role="37vLTx">
                              <ref role="3cqZAo" node="1KgvZpgeSvD" resolve="componentDestination" />
                            </node>
                            <node concept="2OqwBi" id="1KgvZpgeSwl" role="37vLTJ">
                              <node concept="37vLTw" id="1KgvZpgeSwm" role="2Oq$k0">
                                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                              </node>
                              <node concept="3TrEf2" id="7kgI$LQT_bT" role="2OqNvi">
                                <ref role="3Tt5mk" to="xiqq:2R0WzquVuy5" resolve="event" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="1KgvZpgeSwo" role="3clFbw">
                        <node concept="3cmrfG" id="1KgvZpgeSwp" role="3uHU7w">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="2OqwBi" id="1KgvZpgeSwq" role="3uHU7B">
                          <node concept="37vLTw" id="1KgvZpgeSwr" role="2Oq$k0">
                            <ref role="3cqZAo" node="1KgvZpgeSvv" resolve="path" />
                          </node>
                          <node concept="liA8E" id="1KgvZpgeSws" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                          </node>
                        </node>
                      </node>
                      <node concept="3eNFk2" id="1KgvZpgeSwt" role="3eNLev">
                        <node concept="3clFbC" id="1KgvZpgeSwu" role="3eO9$A">
                          <node concept="3cmrfG" id="1KgvZpgeSwv" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="1KgvZpgeSww" role="3uHU7B">
                            <node concept="37vLTw" id="1KgvZpgeSwx" role="2Oq$k0">
                              <ref role="3cqZAo" node="1KgvZpgeSvv" resolve="path" />
                            </node>
                            <node concept="liA8E" id="1KgvZpgeSwy" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="1KgvZpgeSwz" role="3eOfB_">
                          <node concept="3cpWs8" id="1KgvZpgeSw$" role="3cqZAp">
                            <node concept="3cpWsn" id="1KgvZpgeSw_" role="3cpWs9">
                              <property role="TrG5h" value="contextDestination" />
                              <node concept="3Tqbb2" id="1KgvZpgeSwA" role="1tU5fm">
                                <ref role="ehGHo" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                              </node>
                              <node concept="2ShNRf" id="1KgvZpgeSwB" role="33vP2m">
                                <node concept="3zrR0B" id="1KgvZpgeSwC" role="2ShVmc">
                                  <node concept="3Tqbb2" id="1KgvZpgeSwD" role="3zrR0E">
                                    <ref role="ehGHo" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1VyPeINMEI_" role="3cqZAp">
                            <node concept="2YIFZM" id="1VyPeINMEIA" role="3clFbG">
                              <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                              <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                              <node concept="37vLTw" id="1VyPeINMFE3" role="37wK5m">
                                <ref role="3cqZAo" node="1KgvZpgeSw_" resolve="contextDestination" />
                              </node>
                              <node concept="359W_D" id="1VyPeINMEIC" role="37wK5m">
                                <ref role="359W_F" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                                <ref role="359W_E" to="xiqq:75nMhMfSBN9" resolve="ContextEventDestination" />
                              </node>
                              <node concept="37vLTw" id="1VyPeINMEID" role="37wK5m">
                                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                              </node>
                              <node concept="2OqwBi" id="1VyPeINMEIE" role="37wK5m">
                                <node concept="37vLTw" id="1VyPeINMEIF" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1KgvZpgeSvv" resolve="path" />
                                </node>
                                <node concept="liA8E" id="1VyPeINMEIG" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                  <node concept="3cmrfG" id="1VyPeINMEIH" role="37wK5m">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1KgvZpgeSwW" role="3cqZAp">
                            <node concept="37vLTI" id="1KgvZpgeSwX" role="3clFbG">
                              <node concept="37vLTw" id="1KgvZpgeSwY" role="37vLTx">
                                <ref role="3cqZAo" node="1KgvZpgeSw_" resolve="contextDestination" />
                              </node>
                              <node concept="2OqwBi" id="1KgvZpgeSwZ" role="37vLTJ">
                                <node concept="37vLTw" id="1KgvZpgeSx0" role="2Oq$k0">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                </node>
                                <node concept="3TrEf2" id="7kgI$LQT_oQ" role="2OqNvi">
                                  <ref role="3Tt5mk" to="xiqq:2R0WzquVuy5" resolve="event" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1KgvZpgeSzu" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="3uibUv" id="1KgvZpgeSzv" role="2Ghqu4">
                  <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                  <node concept="3uibUv" id="7kgI$LQTwQh" role="11_B2D">
                    <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7kgI$LQSvxu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7kgI$LQSxdE" role="jymVt" />
    <node concept="3clFb_" id="7kgI$LQSvxx" role="jymVt">
      <property role="TrG5h" value="getAlgorithm" />
      <node concept="3Tm1VV" id="7kgI$LQSvxy" role="1B3o_S" />
      <node concept="2AHcQZ" id="7kgI$LQSvx$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="7kgI$LQSvx_" role="3clF45">
        <ref role="3uigEE" to="7adg:~Reference" resolve="Reference" />
        <node concept="3uibUv" id="7kgI$LQSvxA" role="11_B2D">
          <ref role="3uigEE" to="cwd8:~AlgorithmDeclaration" resolve="AlgorithmDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="7kgI$LQSvxF" role="3clF47">
        <node concept="3clFbF" id="7kgI$LQSxrG" role="3cqZAp">
          <node concept="2ShNRf" id="7kgI$LQSxrA" role="3clFbG">
            <node concept="1pGfFk" id="7kgI$LQSyIX" role="2ShVmc">
              <ref role="37wK5l" to="fcfa:3lxP5h46OjL" resolve="PlatformReference" />
              <node concept="37vLTw" id="7kgI$LQSyN6" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3uibUv" id="7kgI$LQSzRe" role="1pMfVU">
                <ref role="3uigEE" to="cwd8:~AlgorithmDeclaration" resolve="AlgorithmDeclaration" />
              </node>
              <node concept="359W_D" id="7kgI$LQS$Gt" role="37wK5m">
                <ref role="359W_E" to="xiqq:3HBlKeoZ0Uo" resolve="StateAction" />
                <ref role="359W_F" to="xiqq:3HBlKeoZ0Ut" resolve="algorithm" />
              </node>
              <node concept="3VsKOn" id="7kgI$LQS_$P" role="37wK5m">
                <ref role="3VsUkX" to="cwd8:~AlgorithmDeclaration" resolve="AlgorithmDeclaration" />
              </node>
              <node concept="37vLTw" id="7kgI$LQSA7p" role="37wK5m">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7kgI$LQSvxG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7kgI$LQSx25" role="jymVt" />
    <node concept="3clFb_" id="7kgI$LQSvxJ" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="7kgI$LQSvxK" role="1B3o_S" />
      <node concept="2AHcQZ" id="7kgI$LQSvxM" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="7kgI$LQSvW3" role="3clF45">
        <ref role="3uigEE" to="g136:~StateDeclaration" resolve="StateDeclaration" />
      </node>
      <node concept="3clFbS" id="7kgI$LQSvxX" role="3clF47">
        <node concept="3clFbF" id="7kgI$LQSw9c" role="3cqZAp">
          <node concept="1rXfSq" id="7kgI$LQSw9b" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
            <node concept="3VsKOn" id="7kgI$LQSwSd" role="37wK5m">
              <ref role="3VsUkX" to="g136:~StateDeclaration" resolve="StateDeclaration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7kgI$LQSvxY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7kgI$LQU77y">
    <property role="TrG5h" value="ECTransitionConditionByNode" />
    <node concept="2tJIrI" id="7kgI$LQU7b2" role="jymVt" />
    <node concept="2tJIrI" id="7kgI$LQU7xF" role="jymVt" />
    <node concept="3clFbW" id="7kgI$LQU7FM" role="jymVt">
      <node concept="3cqZAl" id="7kgI$LQU7FN" role="3clF45" />
      <node concept="3Tm1VV" id="7kgI$LQU7FO" role="1B3o_S" />
      <node concept="37vLTG" id="7kgI$LQU7FT" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7kgI$LQU7FX" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
        </node>
      </node>
      <node concept="37vLTG" id="7kgI$LQU7FV" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="QE5Kxyje6q" role="1tU5fm">
          <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
        </node>
      </node>
      <node concept="3clFbS" id="7kgI$LQU7FY" role="3clF47">
        <node concept="XkiVB" id="7kgI$LQU7G1" role="3cqZAp">
          <ref role="37wK5l" to="fcfa:1hwo9XLD_fE" resolve="PlatformContainedElementBase" />
          <node concept="37vLTw" id="7kgI$LQU7FZ" role="37wK5m">
            <ref role="3cqZAo" node="7kgI$LQU7FT" resolve="node" />
          </node>
          <node concept="37vLTw" id="7kgI$LQU7G0" role="37wK5m">
            <ref role="3cqZAo" node="7kgI$LQU7FV" resolve="owner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7kgI$LQU7yg" role="jymVt" />
    <node concept="3Tm1VV" id="7kgI$LQU77z" role="1B3o_S" />
    <node concept="3uibUv" id="7kgI$LQU78I" role="1zkMxy">
      <ref role="3uigEE" to="fcfa:1hwo9XLDvRT" resolve="PlatformContainedElementBase" />
      <node concept="3Tqbb2" id="7kgI$LQU79s" role="11_B2D">
        <ref role="ehGHo" to="xiqq:6g3sTReV9I2" resolve="TransitionCondition" />
      </node>
    </node>
    <node concept="3uibUv" id="7kgI$LQU7aE" role="EKbjA">
      <ref role="3uigEE" to="g136:~ECTransitionCondition" resolve="ECTransitionCondition" />
    </node>
    <node concept="3clFb_" id="7kgI$LQU7c6" role="jymVt">
      <property role="TrG5h" value="getEventReference" />
      <node concept="3Tm1VV" id="7kgI$LQU7c7" role="1B3o_S" />
      <node concept="2AHcQZ" id="7kgI$LQU7c9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="7kgI$LQU7ca" role="3clF45">
        <ref role="3uigEE" to="7adg:~CompositeReference" resolve="CompositeReference" />
        <node concept="3uibUv" id="7kgI$LQU7cb" role="11_B2D">
          <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
          <node concept="3uibUv" id="7kgI$LQU7cc" role="11_B2D">
            <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7kgI$LQU7ch" role="3clF47">
        <node concept="3clFbF" id="1KgvZpg7aI8" role="3cqZAp">
          <node concept="2ShNRf" id="1KgvZpg7aI2" role="3clFbG">
            <node concept="YeOm9" id="1KgvZpg7b1J" role="2ShVmc">
              <node concept="1Y3b0j" id="1KgvZpg7b1M" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="7adg:~CompositeReference" resolve="CompositeReference" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="1KgvZpg7b1N" role="1B3o_S" />
                <node concept="3clFb_" id="1KgvZpg7b1T" role="jymVt">
                  <property role="TrG5h" value="getTarget" />
                  <node concept="3Tm1VV" id="1KgvZpg7b1U" role="1B3o_S" />
                  <node concept="2AHcQZ" id="1KgvZpg7b1W" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                  </node>
                  <node concept="3clFbS" id="1KgvZpg7b1Y" role="3clF47">
                    <node concept="3cpWs8" id="6oXN8hZQPvO" role="3cqZAp">
                      <node concept="3cpWsn" id="6oXN8hZQPvP" role="3cpWs9">
                        <property role="TrG5h" value="source" />
                        <node concept="3Tqbb2" id="6oXN8hZQPvN" role="1tU5fm">
                          <ref role="ehGHo" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
                        </node>
                        <node concept="2OqwBi" id="6oXN8hZQPvS" role="33vP2m">
                          <node concept="37vLTw" id="1IuIrLUrKfg" role="2Oq$k0">
                            <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                          </node>
                          <node concept="3TrEf2" id="7kgI$LQUO$M" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:2R0WzquNT6X" resolve="event" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="6tmliaA5Bxw" role="3cqZAp">
                      <node concept="3clFbS" id="6tmliaA5Bxy" role="3clFbx">
                        <node concept="3cpWs8" id="6tmliaA5NPz" role="3cqZAp">
                          <node concept="3cpWsn" id="6tmliaA5NP$" role="3cpWs9">
                            <property role="TrG5h" value="componentSource" />
                            <node concept="3Tqbb2" id="6tmliaA5NPq" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                            </node>
                            <node concept="1PxgMI" id="6tmliaA5NP_" role="33vP2m">
                              <node concept="chp4Y" id="6tmliaA5NPA" role="3oSUPX">
                                <ref role="cht4Q" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                              </node>
                              <node concept="37vLTw" id="6tmliaA5NPB" role="1m5AlR">
                                <ref role="3cqZAo" node="6oXN8hZQPvP" resolve="source" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="31Fn7oZCjtM" role="3cqZAp">
                          <node concept="3cpWsn" id="31Fn7oZCjtN" role="3cpWs9">
                            <property role="TrG5h" value="fb" />
                            <node concept="3uibUv" id="6mkmem0DuWX" role="1tU5fm">
                              <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                            </node>
                            <node concept="2OqwBi" id="6YcNwH3A08z" role="33vP2m">
                              <node concept="37vLTw" id="1IuIrLUrMP2" role="2Oq$k0">
                                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                              </node>
                              <node concept="liA8E" id="6YcNwH3A2Co" role="2OqNvi">
                                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                <node concept="2OqwBi" id="31Fn7oZCjtP" role="37wK5m">
                                  <node concept="37vLTw" id="31Fn7oZCjtQ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6tmliaA5NP$" resolve="componentSource" />
                                  </node>
                                  <node concept="3TrEf2" id="31Fn7oZCjtR" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                                  </node>
                                </node>
                                <node concept="3VsKOn" id="6YcNwH3A9uF" role="37wK5m">
                                  <ref role="3VsUkX" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="31Fn7oZEZUl" role="3cqZAp">
                          <node concept="3cpWsn" id="31Fn7oZEZUm" role="3cpWs9">
                            <property role="TrG5h" value="declaration" />
                            <node concept="3Tqbb2" id="31Fn7oZEZUn" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
                            </node>
                            <node concept="2OqwBi" id="31Fn7oZEZUo" role="33vP2m">
                              <node concept="37vLTw" id="31Fn7oZEZUp" role="2Oq$k0">
                                <ref role="3cqZAo" node="6tmliaA5NP$" resolve="componentSource" />
                              </node>
                              <node concept="3TrEf2" id="31Fn7oZF5EA" role="2OqNvi">
                                <ref role="3Tt5mk" to="xiqq:PI_pXYus4s" resolve="declaration" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="31Fn7oZEZUr" role="3cqZAp">
                          <node concept="3clFbS" id="31Fn7oZEZUs" role="3clFbx">
                            <node concept="3cpWs6" id="1KgvZpg7nJm" role="3cqZAp">
                              <node concept="2YIFZM" id="1KgvZpg7sx9" role="3cqZAk">
                                <ref role="37wK5l" to="g27j:~PortPath.createEventPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.declarations.EventDeclaration)" resolve="createEventPortPath" />
                                <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                                <node concept="37vLTw" id="1KgvZpg7uyy" role="37wK5m">
                                  <ref role="3cqZAo" node="31Fn7oZCjtN" resolve="fb" />
                                </node>
                                <node concept="2OqwBi" id="1IuIrLUs0$f" role="37wK5m">
                                  <node concept="37vLTw" id="1IuIrLUrXKe" role="2Oq$k0">
                                    <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                                  </node>
                                  <node concept="liA8E" id="1IuIrLUs2Db" role="2OqNvi">
                                    <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                    <node concept="37vLTw" id="1IuIrLUs4XD" role="37wK5m">
                                      <ref role="3cqZAo" node="31Fn7oZEZUm" resolve="declaration" />
                                    </node>
                                    <node concept="3VsKOn" id="1IuIrLUsdaL" role="37wK5m">
                                      <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="31Fn7oZEZUF" role="3clFbw">
                            <node concept="2OqwBi" id="31Fn7oZEZUG" role="2Oq$k0">
                              <node concept="2OqwBi" id="31Fn7oZEZUH" role="2Oq$k0">
                                <node concept="37vLTw" id="31Fn7oZEZUI" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6tmliaA5NP$" resolve="componentSource" />
                                </node>
                                <node concept="3TrEf2" id="31Fn7oZEZUJ" role="2OqNvi">
                                  <ref role="3Tt5mk" to="xiqq:PI_pXYus4r" resolve="component" />
                                </node>
                              </node>
                              <node concept="2qgKlT" id="31Fn7oZF6$_" role="2OqNvi">
                                <ref role="37wK5l" to="t4dg:5L1OxDukYcu" resolve="eventSources" />
                              </node>
                            </node>
                            <node concept="3JPx81" id="31Fn7oZEZUL" role="2OqNvi">
                              <node concept="37vLTw" id="31Fn7oZEZUM" role="25WWJ7">
                                <ref role="3cqZAo" node="31Fn7oZEZUm" resolve="declaration" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="1KgvZpg8kPR" role="3cqZAp" />
                      </node>
                      <node concept="2OqwBi" id="6tmliaA5CN$" role="3clFbw">
                        <node concept="37vLTw" id="6tmliaA5CCy" role="2Oq$k0">
                          <ref role="3cqZAo" node="6oXN8hZQPvP" resolve="source" />
                        </node>
                        <node concept="1mIQ4w" id="6tmliaA5K8i" role="2OqNvi">
                          <node concept="chp4Y" id="6tmliaA5Kby" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="6tmliaA62mV" role="3cqZAp">
                      <node concept="3clFbS" id="6tmliaA62mX" role="3clFbx">
                        <node concept="3cpWs8" id="6tmliaA6b8_" role="3cqZAp">
                          <node concept="3cpWsn" id="6tmliaA6b8A" role="3cpWs9">
                            <property role="TrG5h" value="contextSource" />
                            <node concept="3Tqbb2" id="6tmliaA6b8B" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                            </node>
                            <node concept="1PxgMI" id="6tmliaA6b8C" role="33vP2m">
                              <node concept="chp4Y" id="6tmliaA6uAM" role="3oSUPX">
                                <ref role="cht4Q" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                              </node>
                              <node concept="37vLTw" id="6tmliaA6b8E" role="1m5AlR">
                                <ref role="3cqZAo" node="6oXN8hZQPvP" resolve="source" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="1KgvZpg7J6s" role="3cqZAp">
                          <node concept="2YIFZM" id="1KgvZpg7PQq" role="3cqZAk">
                            <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
                            <ref role="37wK5l" to="g27j:~PortPath.createEventPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.declarations.EventDeclaration)" resolve="createEventPortPath" />
                            <node concept="10Nm6u" id="1KgvZpg7S8N" role="37wK5m" />
                            <node concept="2OqwBi" id="1KgvZpg7Vwu" role="37wK5m">
                              <node concept="37vLTw" id="1KgvZpg7Vwv" role="2Oq$k0">
                                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                              </node>
                              <node concept="liA8E" id="1KgvZpg7Vww" role="2OqNvi">
                                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                <node concept="2OqwBi" id="31DWWgF7MDq" role="37wK5m">
                                  <node concept="37vLTw" id="31DWWgF7MDr" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6tmliaA6b8A" resolve="contextSource" />
                                  </node>
                                  <node concept="3TrEf2" id="31DWWgF7MDs" role="2OqNvi">
                                    <ref role="3Tt5mk" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                                  </node>
                                </node>
                                <node concept="3VsKOn" id="1KgvZpg7Vwy" role="37wK5m">
                                  <ref role="3VsUkX" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6tmliaA63GT" role="3clFbw">
                        <node concept="37vLTw" id="6tmliaA63xR" role="2Oq$k0">
                          <ref role="3cqZAo" node="6oXN8hZQPvP" resolve="source" />
                        </node>
                        <node concept="1mIQ4w" id="6tmliaA6b1h" role="2OqNvi">
                          <node concept="chp4Y" id="6tmliaA6b4x" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="6oXN8hZRpRb" role="3cqZAp">
                      <node concept="10Nm6u" id="6oXN8hZRq_a" role="3cqZAk" />
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1KgvZpg7b20" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                  <node concept="3uibUv" id="1KgvZpg7cue" role="3clF45">
                    <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                    <node concept="3uibUv" id="7kgI$LQV5LM" role="11_B2D">
                      <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
                    </node>
                  </node>
                </node>
                <node concept="2tJIrI" id="1KgvZpg7b21" role="jymVt" />
                <node concept="3clFb_" id="1KgvZpg7b22" role="jymVt">
                  <property role="TrG5h" value="getPath" />
                  <node concept="3Tm1VV" id="1KgvZpg7b23" role="1B3o_S" />
                  <node concept="2AHcQZ" id="1KgvZpg7b25" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                  </node>
                  <node concept="3uibUv" id="1KgvZpg7b26" role="3clF45">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="1KgvZpg7b27" role="11_B2D">
                      <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="1KgvZpg7b28" role="3clF47">
                    <node concept="3cpWs8" id="1KgvZpg95$y" role="3cqZAp">
                      <node concept="3cpWsn" id="1KgvZpg95$z" role="3cpWs9">
                        <property role="TrG5h" value="source" />
                        <node concept="3Tqbb2" id="1KgvZpg95$$" role="1tU5fm">
                          <ref role="ehGHo" to="xiqq:75nMhMfMSWD" resolve="EventSource" />
                        </node>
                        <node concept="2OqwBi" id="1KgvZpg95$_" role="33vP2m">
                          <node concept="37vLTw" id="1KgvZpg95$C" role="2Oq$k0">
                            <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                          </node>
                          <node concept="3TrEf2" id="7kgI$LQUU_b" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:2R0WzquNT6X" resolve="event" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1KgvZpg95$E" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpg95$F" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpg95$G" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpg95$H" role="3cpWs9">
                            <property role="TrG5h" value="componentSource" />
                            <node concept="3Tqbb2" id="1KgvZpg95$I" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                            </node>
                            <node concept="1PxgMI" id="1KgvZpg95$J" role="33vP2m">
                              <node concept="chp4Y" id="1KgvZpg95$K" role="3oSUPX">
                                <ref role="cht4Q" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                              </node>
                              <node concept="37vLTw" id="1KgvZpg95$L" role="1m5AlR">
                                <ref role="3cqZAo" node="1KgvZpg95$z" resolve="source" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="1KgvZpg9fdd" role="3cqZAp">
                          <node concept="2YIFZM" id="1KgvZpgagNz" role="3cqZAk">
                            <ref role="37wK5l" to="33ny:~List.of(java.lang.Object,java.lang.Object)" resolve="of" />
                            <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                            <node concept="2YIFZM" id="1VyPeINN_5g" role="37wK5m">
                              <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                              <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                              <node concept="37vLTw" id="1VyPeINN_8f" role="37wK5m">
                                <ref role="3cqZAo" node="1KgvZpg95$H" resolve="componentSource" />
                              </node>
                              <node concept="359W_D" id="1VyPeINN_dD" role="37wK5m">
                                <ref role="359W_E" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                                <ref role="359W_F" to="xiqq:PI_pXYus4r" resolve="component" />
                              </node>
                            </node>
                            <node concept="2YIFZM" id="1VyPeINNBtu" role="37wK5m">
                              <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                              <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                              <node concept="37vLTw" id="1VyPeINNBtv" role="37wK5m">
                                <ref role="3cqZAo" node="1KgvZpg95$H" resolve="componentSource" />
                              </node>
                              <node concept="359W_D" id="1VyPeINNBtw" role="37wK5m">
                                <ref role="359W_E" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                                <ref role="359W_F" to="xiqq:PI_pXYus4s" resolve="declaration" />
                              </node>
                            </node>
                            <node concept="3uibUv" id="1KgvZpgandW" role="3PaCim">
                              <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpg95_l" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpg95_m" role="2Oq$k0">
                          <ref role="3cqZAo" node="1KgvZpg95$z" resolve="source" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpg95_n" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpg95_o" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1KgvZpg95_p" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpg95_q" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpg95_r" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpg95_s" role="3cpWs9">
                            <property role="TrG5h" value="contextSource" />
                            <node concept="3Tqbb2" id="1KgvZpg95_t" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                            </node>
                            <node concept="1PxgMI" id="1KgvZpg95_u" role="33vP2m">
                              <node concept="chp4Y" id="1KgvZpg95_v" role="3oSUPX">
                                <ref role="cht4Q" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                              </node>
                              <node concept="37vLTw" id="1KgvZpg95_w" role="1m5AlR">
                                <ref role="3cqZAo" node="1KgvZpg95$z" resolve="source" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs6" id="1KgvZpgav7N" role="3cqZAp">
                          <node concept="2YIFZM" id="1KgvZpgaELs" role="3cqZAk">
                            <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                            <ref role="37wK5l" to="33ny:~List.of(java.lang.Object)" resolve="of" />
                            <node concept="2YIFZM" id="1VyPeINNEXX" role="37wK5m">
                              <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                              <ref role="37wK5l" to="fcfa:1VyPeINMcx0" resolve="getIdentifier" />
                              <node concept="37vLTw" id="1VyPeINNGxY" role="37wK5m">
                                <ref role="3cqZAo" node="1KgvZpg95_s" resolve="contextSource" />
                              </node>
                              <node concept="359W_D" id="1VyPeINNEXZ" role="37wK5m">
                                <ref role="359W_E" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                                <ref role="359W_F" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                              </node>
                            </node>
                            <node concept="3uibUv" id="1KgvZpgaKPY" role="3PaCim">
                              <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="1KgvZpg95_F" role="3clFbw">
                        <node concept="37vLTw" id="1KgvZpg95_G" role="2Oq$k0">
                          <ref role="3cqZAo" node="1KgvZpg95$z" resolve="source" />
                        </node>
                        <node concept="1mIQ4w" id="1KgvZpg95_H" role="2OqNvi">
                          <node concept="chp4Y" id="1KgvZpg95_I" role="cj9EA">
                            <ref role="cht4Q" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="1KgvZpgbt6R" role="3cqZAp">
                      <node concept="2YIFZM" id="1KgvZpgb_gl" role="3cqZAk">
                        <ref role="37wK5l" to="33ny:~List.of()" resolve="of" />
                        <ref role="1Pybhc" to="33ny:~List" resolve="List" />
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1KgvZpg7b2a" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="1KgvZpg7b2b" role="jymVt" />
                <node concept="3clFb_" id="1KgvZpg7b2c" role="jymVt">
                  <property role="TrG5h" value="getPresentation" />
                  <node concept="3Tm1VV" id="1KgvZpg7b2d" role="1B3o_S" />
                  <node concept="2AHcQZ" id="1KgvZpg7b2f" role="2AJF6D">
                    <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                  </node>
                  <node concept="3uibUv" id="1KgvZpg7b2g" role="3clF45">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="3clFbS" id="1KgvZpg7b2h" role="3clF47">
                    <node concept="3cpWs8" id="1Mwj2n78KgC" role="3cqZAp">
                      <node concept="3cpWsn" id="1Mwj2n78KgD" role="3cpWs9">
                        <property role="TrG5h" value="presentation" />
                        <node concept="17QB3L" id="1Mwj2n78K2F" role="1tU5fm" />
                        <node concept="2OqwBi" id="1Mwj2n78KgE" role="33vP2m">
                          <node concept="2OqwBi" id="1Mwj2n78KgF" role="2Oq$k0">
                            <node concept="37vLTw" id="1Mwj2n78KgG" role="2Oq$k0">
                              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                            </node>
                            <node concept="3TrEf2" id="1Mwj2n78KgH" role="2OqNvi">
                              <ref role="3Tt5mk" to="xiqq:2R0WzquNT6X" resolve="event" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="1Mwj2n78KgI" role="2OqNvi">
                            <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1KgvZpgbBds" role="3cqZAp">
                      <node concept="3K4zz7" id="1Mwj2n78L80" role="3clFbG">
                        <node concept="Xl_RD" id="1Mwj2n78Lhe" role="3K4E3e">
                          <property role="Xl_RC" value="" />
                        </node>
                        <node concept="37vLTw" id="1Mwj2n78LjF" role="3K4GZi">
                          <ref role="3cqZAo" node="1Mwj2n78KgD" resolve="presentation" />
                        </node>
                        <node concept="2OqwBi" id="1Mwj2n78K$E" role="3K4Cdx">
                          <node concept="37vLTw" id="1Mwj2n78KgJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="1Mwj2n78KgD" resolve="presentation" />
                          </node>
                          <node concept="17RlXB" id="1Mwj2n78KOy" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1KgvZpg7b2j" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="1KgvZpg7b2k" role="jymVt" />
                <node concept="3clFb_" id="1KgvZpg7b2l" role="jymVt">
                  <property role="TrG5h" value="setPath" />
                  <node concept="3Tm1VV" id="1KgvZpg7b2m" role="1B3o_S" />
                  <node concept="3cqZAl" id="1KgvZpg7b2o" role="3clF45" />
                  <node concept="37vLTG" id="1KgvZpg7b2p" role="3clF46">
                    <property role="TrG5h" value="path" />
                    <node concept="3uibUv" id="1KgvZpg7b2q" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3qUE_q" id="2V_whHGmsh9" role="11_B2D">
                        <node concept="3uibUv" id="2V_whHGmths" role="3qUE_r">
                          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="1KgvZpg7b2s" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="1KgvZpg7b2t" role="3clF47">
                    <node concept="3clFbJ" id="1KgvZpgbU_h" role="3cqZAp">
                      <node concept="3clFbS" id="1KgvZpgbU_j" role="3clFbx">
                        <node concept="3cpWs8" id="1KgvZpgbKxm" role="3cqZAp">
                          <node concept="3cpWsn" id="1KgvZpgbKxn" role="3cpWs9">
                            <property role="TrG5h" value="componentSource" />
                            <node concept="3Tqbb2" id="1KgvZpgbKxo" role="1tU5fm">
                              <ref role="ehGHo" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                            </node>
                            <node concept="2ShNRf" id="1KgvZpgchVZ" role="33vP2m">
                              <node concept="3zrR0B" id="1KgvZpgcmgl" role="2ShVmc">
                                <node concept="3Tqbb2" id="1KgvZpgcmgn" role="3zrR0E">
                                  <ref role="ehGHo" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1VyPeINMuaW" role="3cqZAp">
                          <node concept="2YIFZM" id="1VyPeINMulE" role="3clFbG">
                            <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                            <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                            <node concept="37vLTw" id="1VyPeINMuoI" role="37wK5m">
                              <ref role="3cqZAo" node="1KgvZpgbKxn" resolve="componentSource" />
                            </node>
                            <node concept="359W_D" id="1VyPeINMutj" role="37wK5m">
                              <ref role="359W_E" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                              <ref role="359W_F" to="xiqq:PI_pXYus4r" resolve="component" />
                            </node>
                            <node concept="37vLTw" id="1VyPeINMwLs" role="37wK5m">
                              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                            </node>
                            <node concept="2OqwBi" id="1VyPeINMw3s" role="37wK5m">
                              <node concept="37vLTw" id="1VyPeINMw3t" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KgvZpg7b2p" resolve="path" />
                              </node>
                              <node concept="liA8E" id="1VyPeINMw3u" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                <node concept="3cmrfG" id="1VyPeINMw3v" role="37wK5m">
                                  <property role="3cmrfH" value="0" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1VyPeINMxHk" role="3cqZAp">
                          <node concept="2YIFZM" id="1VyPeINMxHl" role="3clFbG">
                            <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                            <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                            <node concept="37vLTw" id="1VyPeINMxHm" role="37wK5m">
                              <ref role="3cqZAo" node="1KgvZpgbKxn" resolve="componentSource" />
                            </node>
                            <node concept="359W_D" id="1VyPeINMxHn" role="37wK5m">
                              <ref role="359W_E" to="xiqq:75nMhMfMSWC" resolve="ComponentEventSource" />
                              <ref role="359W_F" to="xiqq:PI_pXYus4s" resolve="declaration" />
                            </node>
                            <node concept="37vLTw" id="1VyPeINMxHo" role="37wK5m">
                              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                            </node>
                            <node concept="2OqwBi" id="1VyPeINMxHp" role="37wK5m">
                              <node concept="37vLTw" id="1VyPeINMxHq" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KgvZpg7b2p" resolve="path" />
                              </node>
                              <node concept="liA8E" id="1VyPeINMxHr" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                <node concept="3cmrfG" id="1VyPeINMyT$" role="37wK5m">
                                  <property role="3cmrfH" value="1" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="1KgvZpgcXR$" role="3cqZAp">
                          <node concept="37vLTI" id="1KgvZpgd2I5" role="3clFbG">
                            <node concept="37vLTw" id="1KgvZpgd3g0" role="37vLTx">
                              <ref role="3cqZAo" node="1KgvZpgbKxn" resolve="componentSource" />
                            </node>
                            <node concept="2OqwBi" id="1KgvZpgcZyt" role="37vLTJ">
                              <node concept="37vLTw" id="1KgvZpgcXRy" role="2Oq$k0">
                                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                              </node>
                              <node concept="3TrEf2" id="7kgI$LQV1db" role="2OqNvi">
                                <ref role="3Tt5mk" to="xiqq:2R0WzquNT6X" resolve="event" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbC" id="1KgvZpgc10U" role="3clFbw">
                        <node concept="3cmrfG" id="1KgvZpgc11T" role="3uHU7w">
                          <property role="3cmrfH" value="2" />
                        </node>
                        <node concept="2OqwBi" id="1KgvZpgbYPw" role="3uHU7B">
                          <node concept="37vLTw" id="1KgvZpgbYb9" role="2Oq$k0">
                            <ref role="3cqZAo" node="1KgvZpg7b2p" resolve="path" />
                          </node>
                          <node concept="liA8E" id="1KgvZpgbZs9" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                          </node>
                        </node>
                      </node>
                      <node concept="3eNFk2" id="1KgvZpgc2d1" role="3eNLev">
                        <node concept="3clFbC" id="1KgvZpgc5TH" role="3eO9$A">
                          <node concept="3cmrfG" id="1KgvZpgc5UG" role="3uHU7w">
                            <property role="3cmrfH" value="1" />
                          </node>
                          <node concept="2OqwBi" id="1KgvZpgc3zi" role="3uHU7B">
                            <node concept="37vLTw" id="1KgvZpgc2Gh" role="2Oq$k0">
                              <ref role="3cqZAo" node="1KgvZpg7b2p" resolve="path" />
                            </node>
                            <node concept="liA8E" id="1KgvZpgc4m_" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="1KgvZpgc2d3" role="3eOfB_">
                          <node concept="3cpWs8" id="1KgvZpgcSh8" role="3cqZAp">
                            <node concept="3cpWsn" id="1KgvZpgcSh9" role="3cpWs9">
                              <property role="TrG5h" value="contextSource" />
                              <node concept="3Tqbb2" id="1KgvZpgcSha" role="1tU5fm">
                                <ref role="ehGHo" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                              </node>
                              <node concept="2ShNRf" id="1KgvZpgcShb" role="33vP2m">
                                <node concept="3zrR0B" id="1KgvZpgcShc" role="2ShVmc">
                                  <node concept="3Tqbb2" id="1KgvZpgcShd" role="3zrR0E">
                                    <ref role="ehGHo" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1VyPeINMzEG" role="3cqZAp">
                            <node concept="2YIFZM" id="1VyPeINMzEH" role="3clFbG">
                              <ref role="37wK5l" to="fcfa:1VyPeINMe$r" resolve="setIndentifier" />
                              <ref role="1Pybhc" to="fcfa:3lxP5h46M7s" resolve="PlatformReference" />
                              <node concept="37vLTw" id="1VyPeINM$x7" role="37wK5m">
                                <ref role="3cqZAo" node="1KgvZpgcSh9" resolve="contextSource" />
                              </node>
                              <node concept="359W_D" id="1VyPeINMzEJ" role="37wK5m">
                                <ref role="359W_E" to="xiqq:75nMhMfSATx" resolve="ContextEventSource" />
                                <ref role="359W_F" to="xiqq:75nMhMfQOtI" resolve="declaration" />
                              </node>
                              <node concept="37vLTw" id="1VyPeINMzEK" role="37wK5m">
                                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
                              </node>
                              <node concept="2OqwBi" id="1VyPeINMzEL" role="37wK5m">
                                <node concept="37vLTw" id="1VyPeINMzEM" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1KgvZpg7b2p" resolve="path" />
                                </node>
                                <node concept="liA8E" id="1VyPeINMzEN" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                                  <node concept="3cmrfG" id="1VyPeINMzEO" role="37wK5m">
                                    <property role="3cmrfH" value="0" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1KgvZpgd3nI" role="3cqZAp">
                            <node concept="37vLTI" id="1KgvZpgd3nJ" role="3clFbG">
                              <node concept="37vLTw" id="1KgvZpgd3nK" role="37vLTx">
                                <ref role="3cqZAo" node="1KgvZpgcSh9" resolve="contextSource" />
                              </node>
                              <node concept="2OqwBi" id="1KgvZpgd3nL" role="37vLTJ">
                                <node concept="37vLTw" id="1KgvZpgd3nM" role="2Oq$k0">
                                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                                </node>
                                <node concept="3TrEf2" id="7kgI$LQV1jD" role="2OqNvi">
                                  <ref role="3Tt5mk" to="xiqq:2R0WzquNT6X" resolve="event" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="1KgvZpg7b2v" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="3uibUv" id="1KgvZpg7bEt" role="2Ghqu4">
                  <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                  <node concept="3uibUv" id="7kgI$LQV4_D" role="11_B2D">
                    <ref role="3uigEE" to="cwd8:~EventDeclaration" resolve="EventDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7kgI$LQU7ci" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7kgI$LQU7OU" role="jymVt" />
    <node concept="3clFb_" id="7kgI$LQU7cl" role="jymVt">
      <property role="TrG5h" value="getGuardCondition" />
      <node concept="3Tm1VV" id="7kgI$LQU7cm" role="1B3o_S" />
      <node concept="2AHcQZ" id="7kgI$LQU7co" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="7kgI$LQU7cp" role="3clF45">
        <ref role="3uigEE" to="h353:~Expression" resolve="Expression" />
      </node>
      <node concept="3clFbS" id="7kgI$LQU7cu" role="3clF47">
        <node concept="3clFbF" id="7kgI$LQV1qN" role="3cqZAp">
          <node concept="2OqwBi" id="7kgI$LQV1EN" role="3clFbG">
            <node concept="37vLTw" id="7kgI$LQV1qK" role="2Oq$k0">
              <ref role="3cqZAo" to="fcfa:1IuIrLUoZ2w" resolve="myOwner" />
            </node>
            <node concept="liA8E" id="7kgI$LQV1VO" role="2OqNvi">
              <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
              <node concept="2OqwBi" id="7kgI$LQV2C5" role="37wK5m">
                <node concept="37vLTw" id="7kgI$LQV1Y7" role="2Oq$k0">
                  <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
                </node>
                <node concept="3TrEf2" id="7kgI$LQV3wC" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:6g3sTReV9QU" resolve="guardCondition" />
                </node>
              </node>
              <node concept="3VsKOn" id="7kgI$LQV39P" role="37wK5m">
                <ref role="3VsUkX" to="h353:~Expression" resolve="Expression" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7kgI$LQU7cv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7kgI$LQU7XG" role="jymVt" />
    <node concept="3clFb_" id="7kgI$LQU7cy" role="jymVt">
      <property role="TrG5h" value="setGuardCondition" />
      <node concept="3Tm1VV" id="7kgI$LQU7cz" role="1B3o_S" />
      <node concept="3cqZAl" id="7kgI$LQU7c_" role="3clF45" />
      <node concept="37vLTG" id="7kgI$LQU7cA" role="3clF46">
        <property role="TrG5h" value="expression" />
        <node concept="3uibUv" id="7kgI$LQU7cB" role="1tU5fm">
          <ref role="3uigEE" to="h353:~Expression" resolve="Expression" />
        </node>
        <node concept="2AHcQZ" id="7kgI$LQU7cC" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="7kgI$LQU7cH" role="3clF47">
        <node concept="3clFbF" id="7kgI$LQV3$q" role="3cqZAp">
          <node concept="37vLTI" id="7kgI$LQV6Vz" role="3clFbG">
            <node concept="3K4zz7" id="7kgI$LQV7N4" role="37vLTx">
              <node concept="10Nm6u" id="7kgI$LQV7Ye" role="3K4E3e" />
              <node concept="2OqwBi" id="7kgI$LQV8Tl" role="3K4GZi">
                <node concept="1eOMI4" id="7kgI$LQV8jz" role="2Oq$k0">
                  <node concept="10QFUN" id="7kgI$LQV8jy" role="1eOMHV">
                    <node concept="37vLTw" id="7kgI$LQV8jx" role="10QFUP">
                      <ref role="3cqZAo" node="7kgI$LQU7cA" resolve="expression" />
                    </node>
                    <node concept="3uibUv" id="7kgI$LQV8uj" role="10QFUM">
                      <ref role="3uigEE" to="sm75:1KgvZpgp5L3" resolve="ExpressionByNode" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7kgI$LQV9j5" role="2OqNvi">
                  <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
                </node>
              </node>
              <node concept="3clFbC" id="7kgI$LQV7xd" role="3K4Cdx">
                <node concept="10Nm6u" id="7kgI$LQV7xG" role="3uHU7w" />
                <node concept="37vLTw" id="7kgI$LQV7am" role="3uHU7B">
                  <ref role="3cqZAo" node="7kgI$LQU7cA" resolve="expression" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7kgI$LQV3Wa" role="37vLTJ">
              <node concept="37vLTw" id="7kgI$LQV3$p" role="2Oq$k0">
                <ref role="3cqZAo" to="fcfa:1IuIrLUoZ0z" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="7kgI$LQV4fj" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:6g3sTReV9QU" resolve="guardCondition" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7kgI$LQU7cI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7kgI$LQU86v" role="jymVt" />
    <node concept="3clFb_" id="7kgI$LQU7cJ" role="jymVt">
      <property role="TrG5h" value="getContainer" />
      <node concept="3Tm1VV" id="7kgI$LQU7cK" role="1B3o_S" />
      <node concept="2AHcQZ" id="7kgI$LQU7cM" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="7kgI$LQVamf" role="3clF45">
        <ref role="3uigEE" to="g136:~StateTransition" resolve="StateTransition" />
      </node>
      <node concept="3clFbS" id="7kgI$LQU7cV" role="3clF47">
        <node concept="3clFbF" id="7kgI$LQVcm3" role="3cqZAp">
          <node concept="1rXfSq" id="7kgI$LQVcm2" role="3clFbG">
            <ref role="37wK5l" to="fcfa:1hwo9XLDGQM" resolve="getContainer" />
            <node concept="3VsKOn" id="7kgI$LQVdCi" role="37wK5m">
              <ref role="3VsUkX" to="g136:~StateTransition" resolve="StateTransition" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7kgI$LQU7cW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

