<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5472e35e-027d-42bb-bcce-32726ec4c9a9(org.fbme.ide.iec61499.adapter.ecc)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(org.fbme.ide.iec61499.lang.behavior)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="g136" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.ecc(org.fbme.lib/)" />
    <import index="1u7h" ref="r:3c4663c2-1cde-45a1-97cb-9049b04f4007(org.fbme.ide.iec61499.repository)" />
    <import index="go3h" ref="r:c95c1d38-95d5-42ab-aead-d308fc2b6566(org.fbme.ide.iec61499.adapter.interfacepart)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
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
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
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
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
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
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
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
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="5jb5jNC4n69">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="ECCByNode" />
    <node concept="2tJIrI" id="5jb5jNC4nlJ" role="jymVt" />
    <node concept="312cEg" id="5jb5jNC4z7U" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5jb5jNC4yHW" role="1B3o_S" />
      <node concept="3Tqbb2" id="5jb5jNC4z7G" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="1R0_JUQUQEi" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R0_JUQUQdi" role="1B3o_S" />
      <node concept="3uibUv" id="1R0_JUQURHu" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNC4z8c" role="jymVt" />
    <node concept="3Tm1VV" id="5jb5jNC4n6a" role="1B3o_S" />
    <node concept="3clFbW" id="5jb5jNC4z8M" role="jymVt">
      <node concept="3cqZAl" id="5jb5jNC4z8N" role="3clF45" />
      <node concept="3Tm1VV" id="5jb5jNC4z8O" role="1B3o_S" />
      <node concept="3clFbS" id="5jb5jNC4z8Q" role="3clF47">
        <node concept="3clFbF" id="5jb5jNC4z8U" role="3cqZAp">
          <node concept="37vLTI" id="5jb5jNC4z8W" role="3clFbG">
            <node concept="37vLTw" id="5jb5jNC4zgZ" role="37vLTJ">
              <ref role="3cqZAo" node="5jb5jNC4z7U" resolve="myNode" />
            </node>
            <node concept="37vLTw" id="5jb5jNC4z93" role="37vLTx">
              <ref role="3cqZAo" node="5jb5jNC4z8T" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R0_JUQURRq" role="3cqZAp">
          <node concept="37vLTI" id="1R0_JUQURY2" role="3clFbG">
            <node concept="37vLTw" id="1R0_JUQUS1X" role="37vLTx">
              <ref role="3cqZAo" node="1R0_JUQURKF" resolve="repository" />
            </node>
            <node concept="37vLTw" id="1R0_JUQURRo" role="37vLTJ">
              <ref role="3cqZAo" node="1R0_JUQUQEi" resolve="myRepository" />
            </node>
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
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1R0_JUQURPS" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNC4zuD" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNC4zs9" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tqbb2" id="5jb5jNC4zsa" role="3clF45">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
      </node>
      <node concept="3Tm1VV" id="5jb5jNC4zsb" role="1B3o_S" />
      <node concept="3clFbS" id="5jb5jNC4zsc" role="3clF47">
        <node concept="3clFbF" id="5jb5jNC4zsd" role="3cqZAp">
          <node concept="37vLTw" id="5jb5jNC4zs8" role="3clFbG">
            <ref role="3cqZAo" node="5jb5jNC4z7U" resolve="myNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRFY9a" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNC4zzY" role="jymVt">
      <property role="TrG5h" value="getStates" />
      <node concept="3Tm1VV" id="5jb5jNC4z$0" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNC4z$1" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5jb5jNC4z$3" role="11_B2D">
          <ref role="3uigEE" to="g136:~ECState" resolve="ECState" />
        </node>
      </node>
      <node concept="3clFbS" id="5jb5jNC4z$4" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQVXzN" role="3cqZAp">
          <node concept="2ShNRf" id="1R0_JUQVXzJ" role="3clFbG">
            <node concept="1pGfFk" id="1R0_JUQVY2H" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="1R0_JUQVYiR" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQVY3p" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jb5jNC4z7U" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQVYFY" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoZ0WX" resolve="states" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQVZeN" role="37wK5m">
                <ref role="3VsUkX" to="g136:~ECState" resolve="ECState" />
              </node>
              <node concept="37vLTw" id="1R0_JUQW1bx" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQUQEi" resolve="myRepository" />
              </node>
              <node concept="3uibUv" id="1R0_JUQW4zm" role="1pMfVU">
                <ref role="3uigEE" to="g136:~ECState" resolve="ECState" />
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
        <node concept="3uibUv" id="38k27IRG7hR" role="11_B2D">
          <ref role="3uigEE" to="g136:~ECTransition" resolve="ECTransition" />
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRG7hK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="38k27IRG7hS" role="3clF47">
        <node concept="3clFbF" id="1R0_JUQW1Ez" role="3cqZAp">
          <node concept="2ShNRf" id="1R0_JUQW1E$" role="3clFbG">
            <node concept="1pGfFk" id="1R0_JUQW1E_" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="1R0_JUQW1EA" role="37wK5m">
                <node concept="37vLTw" id="1R0_JUQW1EB" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jb5jNC4z7U" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="1R0_JUQW2gk" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoZ0X_" resolve="transitions" />
                </node>
              </node>
              <node concept="3VsKOn" id="1R0_JUQW1ED" role="37wK5m">
                <ref role="3VsUkX" to="g136:~ECTransition" resolve="ECTransition" />
              </node>
              <node concept="37vLTw" id="1R0_JUQW1EE" role="37wK5m">
                <ref role="3cqZAo" node="1R0_JUQUQEi" resolve="myRepository" />
              </node>
              <node concept="3uibUv" id="1R0_JUQW3R0" role="1pMfVU">
                <ref role="3uigEE" to="g136:~ECTransition" resolve="ECTransition" />
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
  </node>
  <node concept="312cEu" id="5jb5jNC4nmA">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="ECStateByNode" />
    <node concept="2tJIrI" id="5jb5jNC4nny" role="jymVt" />
    <node concept="312cEg" id="5jb5jNC4nw_" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tqbb2" id="5jb5jNC4nwg" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
      </node>
      <node concept="3Tm6S6" id="5jb5jNC4nwP" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="1v1P8mMuUwE" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1v1P8mMuU5v" role="1B3o_S" />
      <node concept="3uibUv" id="1v1P8mMuUoX" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNC4nx1" role="jymVt" />
    <node concept="3Tm1VV" id="5jb5jNC4nmB" role="1B3o_S" />
    <node concept="3uibUv" id="5jb5jNC4nnm" role="EKbjA">
      <ref role="3uigEE" to="g136:~ECState" resolve="ECState" />
    </node>
    <node concept="3uibUv" id="_2FpOZkH_N" role="EKbjA">
      <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFbW" id="5jb5jNC4nxG" role="jymVt">
      <node concept="3cqZAl" id="5jb5jNC4nxH" role="3clF45" />
      <node concept="3Tm1VV" id="5jb5jNC4nxI" role="1B3o_S" />
      <node concept="3clFbS" id="5jb5jNC4nxK" role="3clF47">
        <node concept="3clFbF" id="5jb5jNC4nxO" role="3cqZAp">
          <node concept="37vLTI" id="5jb5jNC4nxQ" role="3clFbG">
            <node concept="37vLTw" id="5jb5jNC4nAt" role="37vLTJ">
              <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
            </node>
            <node concept="37vLTw" id="5jb5jNC4nxX" role="37vLTx">
              <ref role="3cqZAo" node="5jb5jNC4nxN" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1v1P8mMuV76" role="3cqZAp">
          <node concept="37vLTI" id="1v1P8mMuVwl" role="3clFbG">
            <node concept="37vLTw" id="1v1P8mMuVDh" role="37vLTx">
              <ref role="3cqZAo" node="1v1P8mMuUV_" resolve="repository" />
            </node>
            <node concept="37vLTw" id="1v1P8mMuVis" role="37vLTJ">
              <ref role="3cqZAo" node="1v1P8mMuUwE" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5jb5jNC4nxN" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5jb5jNC4nxM" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1v1P8mMuUV_" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1v1P8mMuV4g" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNC4nDZ" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNC4nGo" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tqbb2" id="5jb5jNC4nGp" role="3clF45">
        <ref role="ehGHo" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
      </node>
      <node concept="3Tm1VV" id="5jb5jNC4nGq" role="1B3o_S" />
      <node concept="3clFbS" id="5jb5jNC4nGr" role="3clF47">
        <node concept="3clFbF" id="5jb5jNC4nGs" role="3cqZAp">
          <node concept="37vLTw" id="5jb5jNC4nGn" role="3clFbG">
            <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNCf0pu" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNCf0$m" role="jymVt">
      <property role="TrG5h" value="getX" />
      <node concept="3Tm1VV" id="5jb5jNCf0$o" role="1B3o_S" />
      <node concept="10Oyi0" id="5jb5jNCf0$p" role="3clF45" />
      <node concept="3clFbS" id="5jb5jNCf0$q" role="3clF47">
        <node concept="3clFbF" id="5jb5jNCf127" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNCf5E6" role="3clFbG">
            <node concept="2OqwBi" id="5jb5jNCf1oD" role="2Oq$k0">
              <node concept="37vLTw" id="5jb5jNCf126" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
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
              <node concept="37vLTw" id="5jb5jNCfeun" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
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
              <node concept="37vLTw" id="5jb5jNCfgm5" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
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
                <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
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
    <node concept="2tJIrI" id="5jb5jNC4nLq" role="jymVt" />
    <node concept="3clFb_" id="38k27IRFHUp" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="38k27IRFHUr" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRFHUs" role="3clF45" />
      <node concept="3clFbS" id="38k27IRFHUt" role="3clF47">
        <node concept="3clFbF" id="38k27IRFIPx" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRFJ2p" role="3clFbG">
            <node concept="37vLTw" id="38k27IRFIPw" role="2Oq$k0">
              <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="38k27IRFNul" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRFHUu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZkIUk" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZkJgC" role="jymVt">
      <property role="TrG5h" value="getActions" />
      <node concept="3Tm1VV" id="_2FpOZkJgD" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZkJgF" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="_2FpOZkJgG" role="11_B2D">
          <ref role="3uigEE" to="g136:~ECAction" resolve="ECAction" />
        </node>
      </node>
      <node concept="3clFbS" id="_2FpOZkJgH" role="3clF47">
        <node concept="3clFbF" id="_2FpOZkJLw" role="3cqZAp">
          <node concept="2ShNRf" id="_2FpOZkJLq" role="3clFbG">
            <node concept="1pGfFk" id="_2FpOZkJYX" role="2ShVmc">
              <ref role="37wK5l" to="1u7h:1R0_JUQUUZN" resolve="AdaptedNodesList" />
              <node concept="2OqwBi" id="_2FpOZkKry" role="37wK5m">
                <node concept="37vLTw" id="_2FpOZkKTx" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="_2FpOZkLnn" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoZ0VN" resolve="actions" />
                </node>
              </node>
              <node concept="3VsKOn" id="_2FpOZkMhC" role="37wK5m">
                <ref role="3VsUkX" to="g136:~ECAction" resolve="ECAction" />
              </node>
              <node concept="3uibUv" id="_2FpOZkMZ2" role="1pMfVU">
                <ref role="3uigEE" to="g136:~ECAction" resolve="ECAction" />
              </node>
              <node concept="37vLTw" id="_2FpOZkNtO" role="37wK5m">
                <ref role="3cqZAo" node="1v1P8mMuUwE" resolve="myRepository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZkJgI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZkNMI" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZkJgL" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="_2FpOZkJgN" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZkJgO" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="_2FpOZkJgP" role="3clF47">
        <node concept="3clFbF" id="_2FpOZkOW0" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZkOVX" role="3clFbG">
            <ref role="3cqZAo" node="1v1P8mMuUwE" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZkJgQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2yJZQx2vmWe" role="jymVt" />
    <node concept="3clFb_" id="2yJZQx2vntf" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="2yJZQx2vntg" role="1B3o_S" />
      <node concept="3uibUv" id="2yJZQx2vnti" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="2yJZQx2vntk" role="3clF47">
        <node concept="3clFbF" id="2yJZQx2vomx" role="3cqZAp">
          <node concept="2OqwBi" id="2yJZQx2vovK" role="3clFbG">
            <node concept="37vLTw" id="2yJZQx2vomu" role="2Oq$k0">
              <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
            </node>
            <node concept="3TrcHB" id="2yJZQx2voTx" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2yJZQx2vntl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2yJZQx2vq_C" role="jymVt" />
    <node concept="3clFb_" id="2yJZQx2vnto" role="jymVt">
      <property role="TrG5h" value="setName" />
      <node concept="3Tm1VV" id="2yJZQx2vntp" role="1B3o_S" />
      <node concept="3cqZAl" id="2yJZQx2vntr" role="3clF45" />
      <node concept="37vLTG" id="2yJZQx2vnts" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="2yJZQx2vntt" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="2yJZQx2vntv" role="3clF47">
        <node concept="3clFbF" id="2yJZQx2voU9" role="3cqZAp">
          <node concept="37vLTI" id="2yJZQx2vpEY" role="3clFbG">
            <node concept="37vLTw" id="2yJZQx2vpZ_" role="37vLTx">
              <ref role="3cqZAo" node="2yJZQx2vnts" resolve="name" />
            </node>
            <node concept="2OqwBi" id="2yJZQx2vp1$" role="37vLTJ">
              <node concept="37vLTw" id="2yJZQx2voU8" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
              </node>
              <node concept="3TrcHB" id="2yJZQx2vpt2" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2yJZQx2vntw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRFIl9" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNC4nO8" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="5jb5jNC4nO9" role="3clF45" />
      <node concept="3Tm1VV" id="5jb5jNC4nOa" role="1B3o_S" />
      <node concept="3clFbS" id="5jb5jNC4nOb" role="3clF47">
        <node concept="3clFbJ" id="5jb5jNC4nOc" role="3cqZAp">
          <node concept="3clFbS" id="5jb5jNC4nOd" role="3clFbx">
            <node concept="3cpWs6" id="5jb5jNC4nOe" role="3cqZAp">
              <node concept="3clFbT" id="5jb5jNC4nOf" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5jb5jNC4nOg" role="3clFbw">
            <node concept="Xjq3P" id="5jb5jNC4nO7" role="3uHU7B" />
            <node concept="37vLTw" id="5jb5jNC4nOh" role="3uHU7w">
              <ref role="3cqZAo" node="5jb5jNC4nOC" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jb5jNC4nOi" role="3cqZAp">
          <node concept="3clFbS" id="5jb5jNC4nOj" role="3clFbx">
            <node concept="3cpWs6" id="5jb5jNC4nOk" role="3cqZAp">
              <node concept="3clFbT" id="5jb5jNC4nOl" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="5jb5jNC4oCh" role="3clFbw">
            <node concept="1eOMI4" id="5jb5jNC4oSR" role="3fr31v">
              <node concept="2ZW3vV" id="5jb5jNC4pgM" role="1eOMHV">
                <node concept="3uibUv" id="5jb5jNC4pqD" role="2ZW6by">
                  <ref role="3uigEE" node="5jb5jNC4nmA" resolve="ECStateByNode" />
                </node>
                <node concept="37vLTw" id="5jb5jNC4p5_" role="2ZW6bz">
                  <ref role="3cqZAo" node="5jb5jNC4nOC" resolve="o" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jb5jNC4nOx" role="3cqZAp" />
        <node concept="3cpWs8" id="5jb5jNC4nOy" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNC4nOz" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="5jb5jNC4nO$" role="1tU5fm">
              <ref role="3uigEE" node="5jb5jNC4nmA" resolve="ECStateByNode" />
            </node>
            <node concept="10QFUN" id="5jb5jNC4nO_" role="33vP2m">
              <node concept="3uibUv" id="5jb5jNC4nOA" role="10QFUM">
                <ref role="3uigEE" node="5jb5jNC4nmA" resolve="ECStateByNode" />
              </node>
              <node concept="37vLTw" id="5jb5jNC4nOB" role="10QFUP">
                <ref role="3cqZAo" node="5jb5jNC4nOC" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jb5jNC4nOM" role="3cqZAp">
          <node concept="3clFbS" id="5jb5jNC4nON" role="3clFbx">
            <node concept="3cpWs6" id="5jb5jNC4nOO" role="3cqZAp">
              <node concept="3clFbT" id="5jb5jNC4nOP" role="3cqZAk" />
            </node>
          </node>
          <node concept="17QLQc" id="5jb5jNC4qUU" role="3clFbw">
            <node concept="2OqwBi" id="5jb5jNC4rpm" role="3uHU7w">
              <node concept="37vLTw" id="5jb5jNC4r8_" role="2Oq$k0">
                <ref role="3cqZAo" node="5jb5jNC4nOz" resolve="that" />
              </node>
              <node concept="2OwXpG" id="5jb5jNC4seA" role="2OqNvi">
                <ref role="2Oxat5" node="5jb5jNC4nw_" resolve="myNode" />
              </node>
            </node>
            <node concept="37vLTw" id="5jb5jNC4pGH" role="3uHU7B">
              <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5jb5jNC4nP4" role="3cqZAp" />
        <node concept="3clFbF" id="5jb5jNC4nP5" role="3cqZAp">
          <node concept="3clFbT" id="5jb5jNC4nP6" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5jb5jNC4nOC" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="5jb5jNC4nOD" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNC4nOE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNC4skk" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNC4nP7" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="5jb5jNC4nP8" role="3clF45" />
      <node concept="3Tm1VV" id="5jb5jNC4nP9" role="1B3o_S" />
      <node concept="3clFbS" id="5jb5jNC4nPa" role="3clF47">
        <node concept="3cpWs6" id="5jb5jNC4ylR" role="3cqZAp">
          <node concept="2OqwBi" id="5jb5jNC4tqF" role="3cqZAk">
            <node concept="liA8E" id="5jb5jNC4x$i" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
            </node>
            <node concept="2JrnkZ" id="5jb5jNC4tqK" role="2Oq$k0">
              <node concept="37vLTw" id="5jb5jNC4sQQ" role="2JrQYb">
                <ref role="3cqZAo" node="5jb5jNC4nw_" resolve="myNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNC4nPb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="38k27IRGoEB">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="ECTransitionByNode" />
    <node concept="2tJIrI" id="38k27IRGoEC" role="jymVt" />
    <node concept="312cEg" id="38k27IRGoED" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tqbb2" id="38k27IRGoEE" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
      </node>
      <node concept="3Tm6S6" id="38k27IRGoEF" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="1v1P8mMuOm3" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1v1P8mMuNhF" role="1B3o_S" />
      <node concept="3uibUv" id="1v1P8mMuOaH" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRGoEG" role="jymVt" />
    <node concept="3Tm1VV" id="38k27IRGoEH" role="1B3o_S" />
    <node concept="3uibUv" id="38k27IRGqfj" role="EKbjA">
      <ref role="3uigEE" to="g136:~ECTransition" resolve="ECTransition" />
    </node>
    <node concept="3uibUv" id="_2FpOZlEfR" role="EKbjA">
      <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFbW" id="38k27IRGoEJ" role="jymVt">
      <node concept="3cqZAl" id="38k27IRGoEK" role="3clF45" />
      <node concept="3Tm1VV" id="38k27IRGoEL" role="1B3o_S" />
      <node concept="3clFbS" id="38k27IRGoEM" role="3clF47">
        <node concept="3clFbF" id="38k27IRGoEN" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRGoEO" role="3clFbG">
            <node concept="37vLTw" id="38k27IRGoEP" role="37vLTJ">
              <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
            </node>
            <node concept="37vLTw" id="38k27IRGoEQ" role="37vLTx">
              <ref role="3cqZAo" node="38k27IRGoER" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1v1P8mMuP8_" role="3cqZAp">
          <node concept="37vLTI" id="1v1P8mMuPeX" role="3clFbG">
            <node concept="37vLTw" id="1v1P8mMuPr2" role="37vLTx">
              <ref role="3cqZAo" node="1v1P8mMuOSw" resolve="repository" />
            </node>
            <node concept="37vLTw" id="1v1P8mMuP8z" role="37vLTJ">
              <ref role="3cqZAo" node="1v1P8mMuOm3" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRGoER" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="38k27IRGoES" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
        </node>
      </node>
      <node concept="37vLTG" id="1v1P8mMuOSw" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="1v1P8mMuP5b" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRGoET" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGoEU" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tqbb2" id="38k27IRGoEV" role="3clF45">
        <ref role="ehGHo" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
      </node>
      <node concept="3Tm1VV" id="38k27IRGoEW" role="1B3o_S" />
      <node concept="3clFbS" id="38k27IRGoEX" role="3clF47">
        <node concept="3clFbF" id="38k27IRGoEY" role="3cqZAp">
          <node concept="37vLTw" id="38k27IRGoEZ" role="3clFbG">
            <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZlEGU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZlFjs" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZlFMC" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="_2FpOZlFME" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZlFMF" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="_2FpOZlFMG" role="3clF47">
        <node concept="3clFbF" id="_2FpOZlGgE" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZlGgB" role="3clFbG">
            <ref role="3cqZAo" node="1v1P8mMuOm3" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZlFMH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
              <node concept="37vLTw" id="38k27IRGoF8" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
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
              <node concept="37vLTw" id="38k27IRGoFl" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
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
              <node concept="37vLTw" id="38k27IRGoFx" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
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
              <node concept="37vLTw" id="38k27IRGoFI" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
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
    <node concept="2tJIrI" id="38k27IRGoFN" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGoFO" role="jymVt">
      <property role="TrG5h" value="remove" />
      <node concept="3Tm1VV" id="38k27IRGoFP" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRGoFQ" role="3clF45" />
      <node concept="3clFbS" id="38k27IRGoFR" role="3clF47">
        <node concept="3clFbF" id="38k27IRGoFS" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRGoFT" role="3clFbG">
            <node concept="37vLTw" id="38k27IRGoFU" role="2Oq$k0">
              <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
            </node>
            <node concept="3YRAZt" id="38k27IRGoFV" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGoFW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRGuKG" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGvbj" role="jymVt">
      <property role="TrG5h" value="getSourceState" />
      <node concept="3Tm1VV" id="38k27IRGvbl" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRGvbm" role="3clF45">
        <ref role="3uigEE" to="g136:~ECState" resolve="ECState" />
      </node>
      <node concept="2AHcQZ" id="38k27IRGvbn" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="38k27IRGvbo" role="3clF47">
        <node concept="3clFbF" id="1v1P8mMuQ36" role="3cqZAp">
          <node concept="2OqwBi" id="1v1P8mMuQkc" role="3clFbG">
            <node concept="37vLTw" id="1v1P8mMuQ34" role="2Oq$k0">
              <ref role="3cqZAo" node="1v1P8mMuOm3" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="1v1P8mMuQ_A" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="2OqwBi" id="38k27IRGxyf" role="37wK5m">
                <node concept="37vLTw" id="38k27IRGx6u" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
                </node>
                <node concept="3TrEf2" id="38k27IRGy3o" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0X0" resolve="sourceState" />
                </node>
              </node>
              <node concept="3VsKOn" id="1v1P8mMuR_O" role="37wK5m">
                <ref role="3VsUkX" to="g136:~ECState" resolve="ECState" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGvbp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1v1P8mMuPs7" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGvbs" role="jymVt">
      <property role="TrG5h" value="setSourceState" />
      <node concept="3Tm1VV" id="38k27IRGvbu" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRGvbv" role="3clF45" />
      <node concept="37vLTG" id="38k27IRGvbw" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="38k27IRGvbx" role="1tU5fm">
          <ref role="3uigEE" to="g136:~ECState" resolve="ECState" />
        </node>
        <node concept="2AHcQZ" id="38k27IRGvby" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IRGvbz" role="3clF47">
        <node concept="3clFbF" id="38k27IRGAcz" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRGKJ1" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRGD7I" role="37vLTJ">
              <node concept="37vLTw" id="38k27IRGCDr" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="38k27IRGGOD" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0X0" resolve="sourceState" />
              </node>
            </node>
            <node concept="2OqwBi" id="38k27IRGAl9" role="37vLTx">
              <node concept="liA8E" id="38k27IRGCoB" role="2OqNvi">
                <ref role="37wK5l" node="5jb5jNC4nGo" resolve="getNode" />
              </node>
              <node concept="1eOMI4" id="38k27IRGBk6" role="2Oq$k0">
                <node concept="10QFUN" id="38k27IRGA_6" role="1eOMHV">
                  <node concept="3uibUv" id="38k27IRGBAl" role="10QFUM">
                    <ref role="3uigEE" node="5jb5jNC4nmA" resolve="ECStateByNode" />
                  </node>
                  <node concept="37vLTw" id="38k27IRGAcy" role="10QFUP">
                    <ref role="3cqZAo" node="38k27IRGvbw" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGvb$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1v1P8mMuSEp" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGvb_" role="jymVt">
      <property role="TrG5h" value="getTargetState" />
      <node concept="3Tm1VV" id="38k27IRGvbB" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRGvbC" role="3clF45">
        <ref role="3uigEE" to="g136:~ECState" resolve="ECState" />
      </node>
      <node concept="2AHcQZ" id="38k27IRGvbD" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="38k27IRGvbE" role="3clF47">
        <node concept="3clFbF" id="1v1P8mMuRSt" role="3cqZAp">
          <node concept="2OqwBi" id="1v1P8mMuRSu" role="3clFbG">
            <node concept="37vLTw" id="1v1P8mMuRSv" role="2Oq$k0">
              <ref role="3cqZAo" node="1v1P8mMuOm3" resolve="myRepository" />
            </node>
            <node concept="liA8E" id="1v1P8mMuRSw" role="2OqNvi">
              <ref role="37wK5l" to="1u7h:1R0_JUQTWTF" resolve="getAdapter" />
              <node concept="2OqwBi" id="1v1P8mMuRSx" role="37wK5m">
                <node concept="37vLTw" id="1v1P8mMuRSy" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
                </node>
                <node concept="3TrEf2" id="1v1P8mMuTdI" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0X2" resolve="targetState" />
                </node>
              </node>
              <node concept="3VsKOn" id="1v1P8mMuRS$" role="37wK5m">
                <ref role="3VsUkX" to="g136:~ECState" resolve="ECState" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGvbF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1v1P8mMuS7A" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGvbI" role="jymVt">
      <property role="TrG5h" value="setTargetState" />
      <node concept="3Tm1VV" id="38k27IRGvbK" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRGvbL" role="3clF45" />
      <node concept="37vLTG" id="38k27IRGvbM" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="38k27IRGvbN" role="1tU5fm">
          <ref role="3uigEE" to="g136:~ECState" resolve="ECState" />
        </node>
        <node concept="2AHcQZ" id="38k27IRGvbO" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IRGvbP" role="3clF47">
        <node concept="3clFbF" id="38k27IRGLlU" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRGLlV" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRGLlW" role="37vLTJ">
              <node concept="37vLTw" id="38k27IRGLlX" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
              </node>
              <node concept="3TrEf2" id="38k27IRGLU4" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0X2" resolve="targetState" />
              </node>
            </node>
            <node concept="2OqwBi" id="38k27IRGLlZ" role="37vLTx">
              <node concept="liA8E" id="38k27IRGLm0" role="2OqNvi">
                <ref role="37wK5l" node="5jb5jNC4nGo" resolve="getNode" />
              </node>
              <node concept="1eOMI4" id="38k27IRGLm1" role="2Oq$k0">
                <node concept="10QFUN" id="38k27IRGLm2" role="1eOMHV">
                  <node concept="3uibUv" id="38k27IRGLm3" role="10QFUM">
                    <ref role="3uigEE" node="5jb5jNC4nmA" resolve="ECStateByNode" />
                  </node>
                  <node concept="37vLTw" id="38k27IRGLm4" role="10QFUP">
                    <ref role="3cqZAo" node="38k27IRGvbM" resolve="state" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGvbQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRGoFX" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGoFY" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="38k27IRGoFZ" role="3clF45" />
      <node concept="3Tm1VV" id="38k27IRGoG0" role="1B3o_S" />
      <node concept="3clFbS" id="38k27IRGoG1" role="3clF47">
        <node concept="3clFbJ" id="38k27IRGoG2" role="3cqZAp">
          <node concept="3clFbS" id="38k27IRGoG3" role="3clFbx">
            <node concept="3cpWs6" id="38k27IRGoG4" role="3cqZAp">
              <node concept="3clFbT" id="38k27IRGoG5" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="38k27IRGoG6" role="3clFbw">
            <node concept="Xjq3P" id="38k27IRGoG7" role="3uHU7B" />
            <node concept="37vLTw" id="38k27IRGoG8" role="3uHU7w">
              <ref role="3cqZAo" node="38k27IRGoG_" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="38k27IRGoG9" role="3cqZAp">
          <node concept="3clFbS" id="38k27IRGoGa" role="3clFbx">
            <node concept="3cpWs6" id="38k27IRGoGb" role="3cqZAp">
              <node concept="3clFbT" id="38k27IRGoGc" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="38k27IRGoGd" role="3clFbw">
            <node concept="1eOMI4" id="38k27IRGoGe" role="3fr31v">
              <node concept="2ZW3vV" id="38k27IRGoGf" role="1eOMHV">
                <node concept="3uibUv" id="38k27IRGoGg" role="2ZW6by">
                  <ref role="3uigEE" node="38k27IRGoEB" resolve="ECTransitionByNode" />
                </node>
                <node concept="37vLTw" id="38k27IRGoGh" role="2ZW6bz">
                  <ref role="3cqZAo" node="38k27IRGoG_" resolve="o" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="38k27IRGoGi" role="3cqZAp" />
        <node concept="3cpWs8" id="38k27IRGoGj" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IRGoGk" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="38k27IRGoGl" role="1tU5fm">
              <ref role="3uigEE" node="38k27IRGoEB" resolve="ECTransitionByNode" />
            </node>
            <node concept="10QFUN" id="38k27IRGoGm" role="33vP2m">
              <node concept="3uibUv" id="38k27IRGoGn" role="10QFUM">
                <ref role="3uigEE" node="38k27IRGoEB" resolve="ECTransitionByNode" />
              </node>
              <node concept="37vLTw" id="38k27IRGoGo" role="10QFUP">
                <ref role="3cqZAo" node="38k27IRGoG_" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="38k27IRGoGp" role="3cqZAp">
          <node concept="3clFbS" id="38k27IRGoGq" role="3clFbx">
            <node concept="3cpWs6" id="38k27IRGoGr" role="3cqZAp">
              <node concept="3clFbT" id="38k27IRGoGs" role="3cqZAk" />
            </node>
          </node>
          <node concept="17QLQc" id="38k27IRGoGt" role="3clFbw">
            <node concept="2OqwBi" id="38k27IRGoGu" role="3uHU7w">
              <node concept="37vLTw" id="38k27IRGoGv" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRGoGk" resolve="that" />
              </node>
              <node concept="2OwXpG" id="38k27IRGoGw" role="2OqNvi">
                <ref role="2Oxat5" node="38k27IRGoED" resolve="myNode" />
              </node>
            </node>
            <node concept="37vLTw" id="38k27IRGoGx" role="3uHU7B">
              <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="38k27IRGoGy" role="3cqZAp" />
        <node concept="3clFbF" id="38k27IRGoGz" role="3cqZAp">
          <node concept="3clFbT" id="38k27IRGoG$" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRGoG_" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="38k27IRGoGA" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGoGB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRGoGC" role="jymVt" />
    <node concept="3clFb_" id="38k27IRGoGD" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="38k27IRGoGE" role="3clF45" />
      <node concept="3Tm1VV" id="38k27IRGoGF" role="1B3o_S" />
      <node concept="3clFbS" id="38k27IRGoGG" role="3clF47">
        <node concept="3cpWs6" id="38k27IRGoGH" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IRGoGI" role="3cqZAk">
            <node concept="liA8E" id="38k27IRGoGJ" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
            </node>
            <node concept="2JrnkZ" id="38k27IRGoGK" role="2Oq$k0">
              <node concept="37vLTw" id="38k27IRGoGL" role="2JrQYb">
                <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGoGM" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="_2FpOZlGO2">
    <property role="TrG5h" value="ECActionByNode" />
    <node concept="2tJIrI" id="_2FpOZlGQa" role="jymVt" />
    <node concept="312cEg" id="_2FpOZlGRT" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="_2FpOZlGQR" role="1B3o_S" />
      <node concept="3Tqbb2" id="_2FpOZlGRh" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:3HBlKeoZ0Uo" resolve="StateAction" />
      </node>
    </node>
    <node concept="312cEg" id="_2FpOZlGTP" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="_2FpOZlGSJ" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZlGTv" role="1tU5fm">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZlGUl" role="jymVt" />
    <node concept="3Tm1VV" id="_2FpOZlGO3" role="1B3o_S" />
    <node concept="3uibUv" id="_2FpOZlGPe" role="EKbjA">
      <ref role="3uigEE" to="g136:~ECAction" resolve="ECAction" />
    </node>
    <node concept="3uibUv" id="_2FpOZlGPM" role="EKbjA">
      <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="RepositoryEntry" />
    </node>
    <node concept="3clFbW" id="_2FpOZlHpR" role="jymVt">
      <node concept="3cqZAl" id="_2FpOZlHpS" role="3clF45" />
      <node concept="3Tm1VV" id="_2FpOZlHpT" role="1B3o_S" />
      <node concept="3clFbS" id="_2FpOZlHpV" role="3clF47">
        <node concept="3clFbF" id="_2FpOZlHpZ" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZlHq1" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZlHq8" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZlHpY" resolve="node" />
            </node>
            <node concept="37vLTw" id="_2FpOZlHyq" role="37vLTJ">
              <ref role="3cqZAo" node="_2FpOZlGRT" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="_2FpOZlHqb" role="3cqZAp">
          <node concept="37vLTI" id="_2FpOZlHqd" role="3clFbG">
            <node concept="37vLTw" id="_2FpOZlHqk" role="37vLTx">
              <ref role="3cqZAo" node="_2FpOZlHqa" resolve="repository" />
            </node>
            <node concept="37vLTw" id="_2FpOZlHDz" role="37vLTJ">
              <ref role="3cqZAo" node="_2FpOZlGTP" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="_2FpOZlHpY" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="_2FpOZlHpX" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoZ0Uo" resolve="StateAction" />
        </node>
      </node>
      <node concept="37vLTG" id="_2FpOZlHqa" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="_2FpOZlHq9" role="1tU5fm">
          <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZlHGJ" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZlGVP" role="jymVt">
      <property role="TrG5h" value="getNode" />
      <node concept="3Tm1VV" id="_2FpOZlGVR" role="1B3o_S" />
      <node concept="3clFbS" id="_2FpOZlGVT" role="3clF47">
        <node concept="3clFbF" id="_2FpOZlGZE" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZlGZB" role="3clFbG">
            <ref role="3cqZAo" node="_2FpOZlGRT" resolve="myNode" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZlGVU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3Tqbb2" id="_2FpOZlH81" role="3clF45">
        <ref role="ehGHo" to="xiqq:3HBlKeoZ0Uo" resolve="StateAction" />
      </node>
    </node>
    <node concept="2tJIrI" id="_2FpOZlHaA" role="jymVt" />
    <node concept="3clFb_" id="_2FpOZlGVX" role="jymVt">
      <property role="TrG5h" value="getRepository" />
      <node concept="3Tm1VV" id="_2FpOZlGVZ" role="1B3o_S" />
      <node concept="3uibUv" id="_2FpOZlGW0" role="3clF45">
        <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformRepository" />
      </node>
      <node concept="3clFbS" id="_2FpOZlGW1" role="3clF47">
        <node concept="3clFbF" id="_2FpOZlH3E" role="3cqZAp">
          <node concept="37vLTw" id="_2FpOZlH3B" role="3clFbG">
            <ref role="3cqZAo" node="_2FpOZlGTP" resolve="myRepository" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="_2FpOZlGW2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

