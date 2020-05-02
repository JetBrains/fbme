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
    <import index="6ehz" ref="r:cb9dc0d6-4720-4b3b-b2e2-f2ed5e59d4e7(org.fbme.lib.iec61499.ecc)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(org.fbme.ide.iec61499.lang.behavior)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
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
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
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
      </node>
      <node concept="37vLTG" id="5jb5jNC4z8T" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5jb5jNC4z8S" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
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
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="5jb5jNC4z$3" role="11_B2D">
          <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
        </node>
      </node>
      <node concept="3clFbS" id="5jb5jNC4z$4" role="3clF47">
        <node concept="3clFbF" id="5jb5jNC4zYU" role="3cqZAp">
          <node concept="2ShNRf" id="5jb5jNC4XBt" role="3clFbG">
            <node concept="1pGfFk" id="5jb5jNC4YjF" role="2ShVmc">
              <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;(java.util.Collection)" resolve="HashSet" />
              <node concept="2OqwBi" id="5jb5jNC4Z77" role="37wK5m">
                <node concept="2OqwBi" id="5jb5jNC4F36" role="2Oq$k0">
                  <node concept="2OqwBi" id="5jb5jNC4$jc" role="2Oq$k0">
                    <node concept="37vLTw" id="5jb5jNC4zYT" role="2Oq$k0">
                      <ref role="3cqZAo" node="5jb5jNC4z7U" resolve="myNode" />
                    </node>
                    <node concept="3Tsc0h" id="5jb5jNC4$U2" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoZ0WX" resolve="states" />
                    </node>
                  </node>
                  <node concept="3$u5V9" id="5jb5jNC4HTf" role="2OqNvi">
                    <node concept="1bVj0M" id="5jb5jNC4HTh" role="23t8la">
                      <node concept="3clFbS" id="5jb5jNC4HTi" role="1bW5cS">
                        <node concept="3clFbF" id="5jb5jNC4I95" role="3cqZAp">
                          <node concept="2ShNRf" id="5jb5jNC4I93" role="3clFbG">
                            <node concept="1pGfFk" id="5jb5jNC4IVS" role="2ShVmc">
                              <ref role="37wK5l" node="5jb5jNC4nxG" resolve="ECStateByNode" />
                              <node concept="37vLTw" id="5jb5jNC4J8q" role="37wK5m">
                                <ref role="3cqZAo" node="5jb5jNC4HTj" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5jb5jNC4HTj" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5jb5jNC4HTk" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="5jb5jNC5cJf" role="2OqNvi" />
              </node>
              <node concept="3uibUv" id="5jb5jNC5gU9" role="1pMfVU">
                <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
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
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="38k27IRG7hR" role="11_B2D">
          <ref role="3uigEE" to="6ehz:5ye4HINz47s" resolve="ECTransition" />
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRG7hK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="38k27IRG7hS" role="3clF47">
        <node concept="3clFbF" id="38k27IRG94d" role="3cqZAp">
          <node concept="2ShNRf" id="38k27IRG94f" role="3clFbG">
            <node concept="1pGfFk" id="38k27IRG94g" role="2ShVmc">
              <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;(java.util.Collection)" resolve="HashSet" />
              <node concept="2OqwBi" id="38k27IRG94h" role="37wK5m">
                <node concept="2OqwBi" id="38k27IRG94i" role="2Oq$k0">
                  <node concept="2OqwBi" id="38k27IRG94j" role="2Oq$k0">
                    <node concept="37vLTw" id="38k27IRG94k" role="2Oq$k0">
                      <ref role="3cqZAo" node="5jb5jNC4z7U" resolve="myNode" />
                    </node>
                    <node concept="3Tsc0h" id="38k27IRGeD$" role="2OqNvi">
                      <ref role="3TtcxE" to="xiqq:3HBlKeoZ0X_" resolve="transitions" />
                    </node>
                  </node>
                  <node concept="3$u5V9" id="38k27IRG94m" role="2OqNvi">
                    <node concept="1bVj0M" id="38k27IRG94n" role="23t8la">
                      <node concept="3clFbS" id="38k27IRG94o" role="1bW5cS">
                        <node concept="3clFbF" id="38k27IRG94p" role="3cqZAp">
                          <node concept="2ShNRf" id="38k27IRG94q" role="3clFbG">
                            <node concept="1pGfFk" id="38k27IRG94r" role="2ShVmc">
                              <ref role="37wK5l" node="38k27IRGoEJ" resolve="ECTransitionByNode" />
                              <node concept="37vLTw" id="38k27IRG94s" role="37wK5m">
                                <ref role="3cqZAo" node="38k27IRG94t" resolve="it" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="38k27IRG94t" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="38k27IRG94u" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="ANE8D" id="38k27IRG94v" role="2OqNvi" />
              </node>
              <node concept="3uibUv" id="38k27IRGfjI" role="1pMfVU">
                <ref role="3uigEE" to="6ehz:5ye4HINz47s" resolve="ECTransition" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRG7hT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRGgnW" role="jymVt" />
    <node concept="3clFb_" id="38k27IRG7hW" role="jymVt">
      <property role="TrG5h" value="addTransition" />
      <node concept="37vLTG" id="38k27IRG7hX" role="3clF46">
        <property role="TrG5h" value="sourceState" />
        <node concept="3uibUv" id="38k27IRG7if" role="1tU5fm">
          <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
        </node>
        <node concept="2AHcQZ" id="38k27IRG7hZ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRG7i0" role="3clF46">
        <property role="TrG5h" value="targetState" />
        <node concept="3uibUv" id="38k27IRG7id" role="1tU5fm">
          <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
        </node>
        <node concept="2AHcQZ" id="38k27IRG7i2" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="38k27IRG7i4" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRG7ie" role="3clF45">
        <ref role="3uigEE" to="6ehz:5ye4HINz47s" resolve="ECTransition" />
      </node>
      <node concept="2AHcQZ" id="38k27IRG7i6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="38k27IRG7ig" role="3clF47">
        <node concept="3cpWs8" id="38k27IRJq3s" role="3cqZAp">
          <node concept="3cpWsn" id="38k27IRJq3t" role="3cpWs9">
            <property role="TrG5h" value="transition" />
            <node concept="3Tqbb2" id="38k27IRJq3p" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
            </node>
            <node concept="2OqwBi" id="38k27IRJq3u" role="33vP2m">
              <node concept="2OqwBi" id="38k27IRJq3v" role="2Oq$k0">
                <node concept="37vLTw" id="38k27IRJq3w" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jb5jNC4z7U" resolve="myNode" />
                </node>
                <node concept="3Tsc0h" id="38k27IRJq3x" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:3HBlKeoZ0X_" resolve="transitions" />
                </node>
              </node>
              <node concept="WFELt" id="38k27IRJq3y" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRIQXF" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRKpy3" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRJsKs" role="37vLTJ">
              <node concept="37vLTw" id="38k27IRJq3z" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRJq3t" resolve="transition" />
              </node>
              <node concept="3TrEf2" id="38k27IRJt0D" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0X0" resolve="sourceState" />
              </node>
            </node>
            <node concept="2OqwBi" id="38k27IRKqJ7" role="37vLTx">
              <node concept="liA8E" id="38k27IRKqJ8" role="2OqNvi">
                <ref role="37wK5l" node="5jb5jNC4nGo" resolve="getNode" />
              </node>
              <node concept="1eOMI4" id="38k27IRKqJ9" role="2Oq$k0">
                <node concept="10QFUN" id="38k27IRKqJa" role="1eOMHV">
                  <node concept="3uibUv" id="38k27IRKqJb" role="10QFUM">
                    <ref role="3uigEE" node="5jb5jNC4nmA" resolve="ECStateByNode" />
                  </node>
                  <node concept="37vLTw" id="38k27IRKrvb" role="10QFUP">
                    <ref role="3cqZAo" node="38k27IRG7hX" resolve="sourceState" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRKrKl" role="3cqZAp">
          <node concept="37vLTI" id="38k27IRKrKm" role="3clFbG">
            <node concept="2OqwBi" id="38k27IRKrKn" role="37vLTJ">
              <node concept="37vLTw" id="38k27IRKrKo" role="2Oq$k0">
                <ref role="3cqZAo" node="38k27IRJq3t" resolve="transition" />
              </node>
              <node concept="3TrEf2" id="38k27IRLdqV" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0X2" resolve="targetState" />
              </node>
            </node>
            <node concept="2OqwBi" id="38k27IRKrKq" role="37vLTx">
              <node concept="liA8E" id="38k27IRKrKr" role="2OqNvi">
                <ref role="37wK5l" node="5jb5jNC4nGo" resolve="getNode" />
              </node>
              <node concept="1eOMI4" id="38k27IRKrKs" role="2Oq$k0">
                <node concept="10QFUN" id="38k27IRKrKt" role="1eOMHV">
                  <node concept="3uibUv" id="38k27IRKrKu" role="10QFUM">
                    <ref role="3uigEE" node="5jb5jNC4nmA" resolve="ECStateByNode" />
                  </node>
                  <node concept="37vLTw" id="38k27IRLdX1" role="10QFUP">
                    <ref role="3cqZAo" node="38k27IRG7i0" resolve="targetState" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IRLeJt" role="3cqZAp">
          <node concept="2ShNRf" id="38k27IRLeJp" role="3clFbG">
            <node concept="1pGfFk" id="38k27IRLfTg" role="2ShVmc">
              <ref role="37wK5l" node="38k27IRGoEJ" resolve="ECTransitionByNode" />
              <node concept="37vLTw" id="38k27IRLgbH" role="37wK5m">
                <ref role="3cqZAo" node="38k27IRJq3t" resolve="transition" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRG7ih" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3uibUv" id="1R4IoyQINE7" role="EKbjA">
      <ref role="3uigEE" to="6ehz:1R4IoyQwdM8" resolve="ECC" />
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
    <node concept="2tJIrI" id="5jb5jNC4nx1" role="jymVt" />
    <node concept="3Tm1VV" id="5jb5jNC4nmB" role="1B3o_S" />
    <node concept="3uibUv" id="5jb5jNC4nnm" role="EKbjA">
      <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
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
      </node>
      <node concept="37vLTG" id="5jb5jNC4nxN" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="5jb5jNC4nxM" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
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
    <node concept="2tJIrI" id="38k27IRGoEG" role="jymVt" />
    <node concept="3Tm1VV" id="38k27IRGoEH" role="1B3o_S" />
    <node concept="3uibUv" id="38k27IRGqfj" role="EKbjA">
      <ref role="3uigEE" to="6ehz:5ye4HINz47s" resolve="ECTransition" />
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
      </node>
      <node concept="37vLTG" id="38k27IRGoER" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="38k27IRGoES" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
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
        <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
      </node>
      <node concept="2AHcQZ" id="38k27IRGvbn" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="38k27IRGvbo" role="3clF47">
        <node concept="3clFbF" id="38k27IRGwiH" role="3cqZAp">
          <node concept="2ShNRf" id="38k27IRGwiF" role="3clFbG">
            <node concept="1pGfFk" id="38k27IRGwZg" role="2ShVmc">
              <ref role="37wK5l" node="5jb5jNC4nxG" resolve="ECStateByNode" />
              <node concept="2OqwBi" id="38k27IRGxyf" role="37wK5m">
                <node concept="37vLTw" id="38k27IRGx6u" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
                </node>
                <node concept="3TrEf2" id="38k27IRGy3o" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0X0" resolve="sourceState" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGvbp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="38k27IRGvbs" role="jymVt">
      <property role="TrG5h" value="setSourceState" />
      <node concept="3Tm1VV" id="38k27IRGvbu" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRGvbv" role="3clF45" />
      <node concept="37vLTG" id="38k27IRGvbw" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="38k27IRGvbx" role="1tU5fm">
          <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
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
    <node concept="3clFb_" id="38k27IRGvb_" role="jymVt">
      <property role="TrG5h" value="getTargetState" />
      <node concept="3Tm1VV" id="38k27IRGvbB" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRGvbC" role="3clF45">
        <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
      </node>
      <node concept="2AHcQZ" id="38k27IRGvbD" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="38k27IRGvbE" role="3clF47">
        <node concept="3clFbF" id="38k27IRGy7w" role="3cqZAp">
          <node concept="2ShNRf" id="38k27IRGy7x" role="3clFbG">
            <node concept="1pGfFk" id="38k27IRGy7y" role="2ShVmc">
              <ref role="37wK5l" node="5jb5jNC4nxG" resolve="ECStateByNode" />
              <node concept="2OqwBi" id="38k27IRGy7z" role="37wK5m">
                <node concept="37vLTw" id="38k27IRGy7$" role="2Oq$k0">
                  <ref role="3cqZAo" node="38k27IRGoED" resolve="myNode" />
                </node>
                <node concept="3TrEf2" id="38k27IRGA04" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:3HBlKeoZ0X2" resolve="targetState" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRGvbF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="38k27IRGvbI" role="jymVt">
      <property role="TrG5h" value="setTargetState" />
      <node concept="3Tm1VV" id="38k27IRGvbK" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRGvbL" role="3clF45" />
      <node concept="37vLTG" id="38k27IRGvbM" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="38k27IRGvbN" role="1tU5fm">
          <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
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
</model>

