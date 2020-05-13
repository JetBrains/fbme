<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7d4b3040-5e2b-4e34-a42b-b9af403ede5f(smvDebugger.integration)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
  </languages>
  <imports>
    <import index="nk3o" ref="r:85e05ab4-1ba9-4db5-96e9-56a84bd1472d(smvDebugger.common)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="8uw2" ref="r:e0a1abe3-ec88-452a-aca6-a40a81cc50a1(smvDebugger.model)" />
    <import index="tp4k" ref="r:00000000-0000-4000-0000-011c89590368(jetbrains.mps.lang.plugin.structure)" />
    <import index="tp4v" ref="r:00000000-0000-4000-0000-011c89590363(jetbrains.mps.lang.plugin.editor)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
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
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="7YsZv8g1n6K">
    <property role="TrG5h" value="Fb2SmvService" />
    <node concept="Wx3nA" id="2NwTEkpQIEH" role="jymVt">
      <property role="TrG5h" value="FB2SMV_EXE_PATH" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2NwTEkpQIC4" role="1B3o_S" />
      <node concept="17QB3L" id="2NwTEkpQIEy" role="1tU5fm" />
      <node concept="Xl_RD" id="2NwTEkpQIFS" role="33vP2m">
        <property role="Xl_RC" value="/Library/FB2SMV/CommandShell.exe" />
      </node>
    </node>
    <node concept="Wx3nA" id="2NwTEkpRA4h" role="jymVt">
      <property role="TrG5h" value="SMV_FILE_EXTENSION" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2NwTEkpR_CF" role="1B3o_S" />
      <node concept="17QB3L" id="2NwTEkpRA3$" role="1tU5fm" />
      <node concept="Xl_RD" id="2NwTEkpRAVo" role="33vP2m">
        <property role="Xl_RC" value="smv" />
      </node>
    </node>
    <node concept="2tJIrI" id="2NwTEkpQIBn" role="jymVt" />
    <node concept="3clFbW" id="4i$1wjaJFr9" role="jymVt">
      <node concept="3cqZAl" id="4i$1wjaJFra" role="3clF45" />
      <node concept="3clFbS" id="4i$1wjaJFrc" role="3clF47">
        <node concept="XkiVB" id="4i$1wjaJHhk" role="3cqZAp">
          <ref role="37wK5l" node="4i$1wjaJB2J" resolve="AbstractIntegrationService" />
          <node concept="37vLTw" id="4i$1wjaJHjB" role="37wK5m">
            <ref role="3cqZAo" node="4i$1wjaJFQu" resolve="fb2SmvBinaryPath" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjaJF0F" role="1B3o_S" />
      <node concept="37vLTG" id="4i$1wjaJFQu" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="fb2SmvBinaryPath" />
        <node concept="3uibUv" id="4i$1wjaJG5K" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaJEBa" role="jymVt" />
    <node concept="3clFb_" id="4i$1wja9ZYM" role="jymVt">
      <property role="TrG5h" value="convertFbToSmv" />
      <node concept="3clFbS" id="4i$1wja9ZYO" role="3clF47">
        <node concept="3clFbF" id="4i$1wjadEk4" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wjadiJb" role="3clFbG">
            <ref role="37wK5l" node="4i$1wjacEV1" resolve="runProcess" />
            <node concept="37vLTw" id="4i$1wjadznZ" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wja9ZZz" resolve="fbPath" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4i$1wja9ZZu" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wja9ZZv" role="3cqZAk">
            <ref role="37wK5l" node="4i$1wjadklL" resolve="newPathOf" />
            <node concept="37vLTw" id="4i$1wja9ZZw" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wja9ZZz" resolve="fbPath" />
            </node>
            <node concept="37vLTw" id="4i$1wjadq6I" role="37wK5m">
              <ref role="3cqZAo" node="2NwTEkpRA4h" resolve="SMV_FILE_EXTENSION" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4i$1wja9ZZy" role="3clF45">
        <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
      </node>
      <node concept="37vLTG" id="4i$1wja9ZZz" role="3clF46">
        <property role="TrG5h" value="fbPath" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4i$1wja9ZZ$" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wja9ZZx" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2NwTEkpQNAf" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjaa0n1" role="jymVt">
      <property role="TrG5h" value="getCommand" />
      <node concept="3clFbS" id="4i$1wjaa0n3" role="3clF47">
        <node concept="3KaCP$" id="4i$1wjaa0n4" role="3cqZAp">
          <node concept="2YIFZM" id="4i$1wjadgZP" role="3KbGdf">
            <ref role="37wK5l" to="nk3o:2NwTEkpQNM9" resolve="getOS" />
            <ref role="1Pybhc" to="nk3o:2NwTEkpRQ_I" resolve="OSUtils" />
          </node>
          <node concept="3KbdKl" id="4i$1wjaa0n6" role="3KbHQx">
            <node concept="Rm8GO" id="4i$1wjaa0n7" role="3Kbmr1">
              <ref role="1Px2BO" to="nk3o:2NwTEkpROjW" resolve="OS" />
              <ref role="Rm8GQ" to="nk3o:2NwTEkpRR9z" resolve="MAC_OS" />
            </node>
            <node concept="3clFbS" id="4i$1wjaa0n8" role="3Kbo56">
              <node concept="3cpWs6" id="4i$1wjaa0n9" role="3cqZAp">
                <node concept="3cpWs3" id="4i$1wjaa0na" role="3cqZAk">
                  <node concept="3cpWs3" id="4i$1wjaa0ne" role="3uHU7B">
                    <node concept="Xl_RD" id="4i$1wjaa0nf" role="3uHU7w">
                      <property role="Xl_RC" value=" " />
                    </node>
                    <node concept="3cpWs3" id="4i$1wjaa0ng" role="3uHU7B">
                      <node concept="3cpWs3" id="4i$1wjaa0nh" role="3uHU7B">
                        <node concept="Xl_RD" id="4i$1wjaa0ni" role="3uHU7w">
                          <property role="Xl_RC" value=" " />
                        </node>
                        <node concept="37vLTw" id="4i$1wjaa0nj" role="3uHU7B">
                          <ref role="3cqZAo" node="2NwTEkpUiXr" resolve="MAC_MONO_FRAMEWORK" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4i$1wjaJPON" role="3uHU7w">
                        <ref role="3cqZAo" node="4i$1wjaJCYT" resolve="binaryPath" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="4i$1wjaJQ2J" role="3uHU7w">
                    <ref role="3cqZAo" node="4i$1wjaa0ns" resolve="fbPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4i$1wjaa0nl" role="3Kb1Dw">
            <node concept="3cpWs6" id="4i$1wjaa0nm" role="3cqZAp">
              <node concept="Xl_RD" id="4i$1wjaa0nn" role="3cqZAk">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4i$1wjaa0np" role="3clF45" />
      <node concept="37vLTG" id="4i$1wjaa0ns" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="fbPath" />
        <node concept="3uibUv" id="4i$1wjaa0nt" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
      <node concept="3Tmbuc" id="4i$1wjadzjr" role="1B3o_S" />
      <node concept="2AHcQZ" id="4i$1wjadzsD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="7YsZv8g1n6L" role="1B3o_S" />
    <node concept="3uibUv" id="4i$1wjadixA" role="1zkMxy">
      <ref role="3uigEE" node="4i$1wjacESB" resolve="AbstractIntegrationService" />
    </node>
  </node>
  <node concept="312cEu" id="2NwTEkpTHa2">
    <property role="TrG5h" value="NutracService" />
    <node concept="Wx3nA" id="2NwTEkpVoYo" role="jymVt">
      <property role="TrG5h" value="NUTRAC_FILE_EXTENSION" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4i$1wjaehDN" role="1B3o_S" />
      <node concept="17QB3L" id="2NwTEkpVoYq" role="1tU5fm" />
      <node concept="Xl_RD" id="2NwTEkpVoYr" role="33vP2m">
        <property role="Xl_RC" value="nutrac" />
      </node>
    </node>
    <node concept="Wx3nA" id="2NwTEkpVlJ_" role="jymVt">
      <property role="TrG5h" value="CSV_FILE_EXTENSION" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2NwTEkpVlB6" role="1B3o_S" />
      <node concept="17QB3L" id="2NwTEkpVlIQ" role="1tU5fm" />
      <node concept="Xl_RD" id="2NwTEkpVm5b" role="33vP2m">
        <property role="Xl_RC" value="csv" />
      </node>
    </node>
    <node concept="2tJIrI" id="2NwTEkpUiSl" role="jymVt" />
    <node concept="3clFbW" id="4i$1wjaJREo" role="jymVt">
      <node concept="3cqZAl" id="4i$1wjaJREp" role="3clF45" />
      <node concept="3clFbS" id="4i$1wjaJREr" role="3clF47">
        <node concept="XkiVB" id="4i$1wjaJSFn" role="3cqZAp">
          <ref role="37wK5l" node="4i$1wjaJB2J" resolve="AbstractIntegrationService" />
          <node concept="37vLTw" id="4i$1wjaJSHP" role="37wK5m">
            <ref role="3cqZAo" node="4i$1wjaJRXy" resolve="nutracBinaryPath" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjaJRcL" role="1B3o_S" />
      <node concept="37vLTG" id="4i$1wjaJRXy" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="nutracBinaryPath" />
        <node concept="3uibUv" id="4i$1wjaJS9W" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaJQSw" role="jymVt" />
    <node concept="3clFb_" id="4i$1wja9XUZ" role="jymVt">
      <property role="TrG5h" value="convertToCsv" />
      <node concept="3clFbS" id="4i$1wja9XV1" role="3clF47">
        <node concept="3clFbF" id="4i$1wjadCwH" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wjad5jZ" role="3clFbG">
            <ref role="37wK5l" node="4i$1wjacEV1" resolve="runProcess" />
            <node concept="37vLTw" id="4i$1wjaehfc" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wja9XVW" resolve="rawCounterexamplePath" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4i$1wja9XVN" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wja9XVO" role="3cqZAk">
            <ref role="37wK5l" node="4i$1wjadklL" resolve="newPathOf" />
            <node concept="37vLTw" id="4i$1wjaehkS" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wja9XVW" resolve="rawCounterexamplePath" />
            </node>
            <node concept="37vLTw" id="4i$1wjadqVu" role="37wK5m">
              <ref role="3cqZAo" node="2NwTEkpVlJ_" resolve="CSV_FILE_EXTENSION" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4i$1wja9XVR" role="3clF45">
        <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
      </node>
      <node concept="37vLTG" id="4i$1wja9XVW" role="3clF46">
        <property role="TrG5h" value="rawCounterexamplePath" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4i$1wjaehnJ" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wja9XVQ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2NwTEkpUhnZ" role="jymVt" />
    <node concept="3clFb_" id="4i$1wja9YRf" role="jymVt">
      <property role="TrG5h" value="getCommand" />
      <node concept="3clFbS" id="4i$1wja9YRh" role="3clF47">
        <node concept="3KaCP$" id="4i$1wja9YRi" role="3cqZAp">
          <node concept="2YIFZM" id="4i$1wjad1Ic" role="3KbGdf">
            <ref role="37wK5l" to="nk3o:2NwTEkpQNM9" resolve="getOS" />
            <ref role="1Pybhc" to="nk3o:2NwTEkpRQ_I" resolve="OSUtils" />
          </node>
          <node concept="3KbdKl" id="4i$1wja9YRk" role="3KbHQx">
            <node concept="Rm8GO" id="4i$1wja9YRl" role="3Kbmr1">
              <ref role="1Px2BO" to="nk3o:2NwTEkpROjW" resolve="OS" />
              <ref role="Rm8GQ" to="nk3o:2NwTEkpRR9z" resolve="MAC_OS" />
            </node>
            <node concept="3clFbS" id="4i$1wja9YRm" role="3Kbo56">
              <node concept="3cpWs6" id="4i$1wja9YRn" role="3cqZAp">
                <node concept="3cpWs3" id="4i$1wja9YRo" role="3cqZAk">
                  <node concept="37vLTw" id="4i$1wja9YRq" role="3uHU7w">
                    <ref role="3cqZAo" node="4i$1wja9YRE" resolve="counterexamplePath" />
                  </node>
                  <node concept="3cpWs3" id="4i$1wja9YRs" role="3uHU7B">
                    <node concept="Xl_RD" id="4i$1wja9YRt" role="3uHU7w">
                      <property role="Xl_RC" value=" " />
                    </node>
                    <node concept="3cpWs3" id="4i$1wja9YRu" role="3uHU7B">
                      <node concept="3cpWs3" id="4i$1wja9YRv" role="3uHU7B">
                        <node concept="Xl_RD" id="4i$1wja9YRw" role="3uHU7w">
                          <property role="Xl_RC" value=" " />
                        </node>
                        <node concept="37vLTw" id="4i$1wja9YRx" role="3uHU7B">
                          <ref role="3cqZAo" node="2NwTEkpUiXr" resolve="MAC_MONO_FRAMEWORK" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4i$1wjaJSQo" role="3uHU7w">
                        <ref role="3cqZAo" node="4i$1wjaJCYT" resolve="binaryPath" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="4i$1wja9YRz" role="3Kb1Dw">
            <node concept="3cpWs6" id="4i$1wja9YR$" role="3cqZAp">
              <node concept="Xl_RD" id="4i$1wja9YR_" role="3cqZAk">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4i$1wja9YRB" role="3clF45" />
      <node concept="37vLTG" id="4i$1wja9YRE" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="counterexamplePath" />
        <node concept="3uibUv" id="4i$1wja9YRF" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
      <node concept="3Tmbuc" id="4i$1wjadC6f" role="1B3o_S" />
      <node concept="2AHcQZ" id="4i$1wjadCjr" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2NwTEkpTHa3" role="1B3o_S" />
    <node concept="3uibUv" id="4i$1wjacZHv" role="1zkMxy">
      <ref role="3uigEE" node="4i$1wjacESB" resolve="AbstractIntegrationService" />
    </node>
  </node>
  <node concept="312cEu" id="7YsZv8g1tpJ">
    <property role="TrG5h" value="NuSmvService" />
    <node concept="Wx3nA" id="2NwTEkpTVMe" role="jymVt">
      <property role="TrG5h" value="NUSMV_SUCCESS" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2NwTEkpTVC4" role="1B3o_S" />
      <node concept="17QB3L" id="2NwTEkpTVLh" role="1tU5fm" />
      <node concept="Xl_RD" id="2NwTEkpTWgD" role="33vP2m">
        <property role="Xl_RC" value="Success" />
      </node>
    </node>
    <node concept="2tJIrI" id="2NwTEkpTFL_" role="jymVt" />
    <node concept="3clFbW" id="4i$1wjaJL5T" role="jymVt">
      <node concept="3cqZAl" id="4i$1wjaJL5U" role="3clF45" />
      <node concept="3clFbS" id="4i$1wjaJL5W" role="3clF47">
        <node concept="XkiVB" id="4i$1wjaJMZZ" role="3cqZAp">
          <ref role="37wK5l" node="4i$1wjaJB2J" resolve="AbstractIntegrationService" />
          <node concept="37vLTw" id="4i$1wjaJN3I" role="37wK5m">
            <ref role="3cqZAo" node="4i$1wjaJLHi" resolve="nuSmvBinaryPath" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjaJKDz" role="1B3o_S" />
      <node concept="37vLTG" id="4i$1wjaJLHi" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="nuSmvBinaryPath" />
        <node concept="3uibUv" id="4i$1wjaJLYN" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaJK1R" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjaa2cJ" role="jymVt">
      <property role="TrG5h" value="getRawCounterexample" />
      <node concept="3clFbS" id="4i$1wjaa2cL" role="3clF47">
        <node concept="3clFbF" id="4i$1wjaa2cM" role="3cqZAp">
          <node concept="1rXfSq" id="4i$1wjaa2cN" role="3clFbG">
            <ref role="37wK5l" node="4i$1wjaa2Y8" resolve="addSpecification" />
            <node concept="37vLTw" id="4i$1wjaa2cO" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wjaa2eD" resolve="smvPath" />
            </node>
            <node concept="37vLTw" id="4i$1wjaa2cP" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wjaa2eF" resolve="specification" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wjadD4G" role="3cqZAp" />
        <node concept="3cpWs8" id="4i$1wjaa2d3" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjaa2d4" role="3cpWs9">
            <property role="TrG5h" value="output" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="4i$1wjaa2d5" role="1tU5fm" />
            <node concept="1rXfSq" id="4i$1wjacQYU" role="33vP2m">
              <ref role="37wK5l" node="4i$1wjacEV1" resolve="runProcess" />
              <node concept="37vLTw" id="4i$1wjad$nY" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjaa2eD" resolve="smvPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4i$1wjaa2ed" role="3cqZAp">
          <node concept="3clFbS" id="4i$1wjaa2ee" role="3clFbx">
            <node concept="3cpWs6" id="4i$1wjaa2ef" role="3cqZAp">
              <node concept="2YIFZM" id="4i$1wjaa2eg" role="3cqZAk">
                <ref role="37wK5l" to="33ny:~Optional.empty()" resolve="empty" />
                <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
                <node concept="3uibUv" id="4i$1wjaeejp" role="3PaCim">
                  <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4i$1wjaa2ei" role="3clFbw">
            <node concept="37vLTw" id="4i$1wjaa2ej" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjaa2d4" resolve="output" />
            </node>
            <node concept="liA8E" id="4i$1wjaa2ek" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.contains(java.lang.CharSequence)" resolve="contains" />
              <node concept="37vLTw" id="4i$1wjaa2el" role="37wK5m">
                <ref role="3cqZAo" node="2NwTEkpTVMe" resolve="NUSMV_SUCCESS" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wjaei6u" role="3cqZAp" />
        <node concept="3cpWs8" id="4i$1wjaeikH" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjaeikF" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="rawCounterexamplePath" />
            <node concept="3uibUv" id="4i$1wjaeixC" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
            <node concept="1rXfSq" id="4i$1wjaejeD" role="33vP2m">
              <ref role="37wK5l" node="4i$1wja9YfA" resolve="createRawCounterexampleFile" />
              <node concept="37vLTw" id="4i$1wjaepKp" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjaa2eD" resolve="smvPath" />
              </node>
              <node concept="37vLTw" id="4i$1wjaeqzi" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjaa2d4" resolve="output" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4i$1wjaa2ew" role="3cqZAp">
          <node concept="2YIFZM" id="4i$1wjaa2ex" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Optional.of(java.lang.Object)" resolve="of" />
            <ref role="1Pybhc" to="33ny:~Optional" resolve="Optional" />
            <node concept="37vLTw" id="4i$1wjaepu3" role="37wK5m">
              <ref role="3cqZAo" node="4i$1wjaeikF" resolve="rawCounterexamplePath" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4i$1wjaa2e_" role="3clF45">
        <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
        <node concept="3uibUv" id="4i$1wjaee8Q" role="11_B2D">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="4i$1wjaa2eD" role="3clF46">
        <property role="TrG5h" value="smvPath" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4i$1wjaa2eE" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="4i$1wjaa2eF" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="specification" />
        <node concept="17QB3L" id="4i$1wjaa2eG" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="4i$1wjaa2e$" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2NwTEkpTq90" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjaa3_M" role="jymVt">
      <property role="TrG5h" value="getCommand" />
      <node concept="3clFbS" id="4i$1wjaa3_O" role="3clF47">
        <node concept="3cpWs6" id="4i$1wjacY6o" role="3cqZAp">
          <node concept="3cpWs3" id="4i$1wjaa3_Q" role="3cqZAk">
            <node concept="37vLTw" id="4i$1wjaa3_R" role="3uHU7w">
              <ref role="3cqZAo" node="4i$1wjaa3_X" resolve="smvPath" />
            </node>
            <node concept="3cpWs3" id="4i$1wjaa3_S" role="3uHU7B">
              <node concept="Xl_RD" id="4i$1wjaa3_T" role="3uHU7w">
                <property role="Xl_RC" value=" " />
              </node>
              <node concept="37vLTw" id="4i$1wjaJN4G" role="3uHU7B">
                <ref role="3cqZAo" node="4i$1wjaJCYT" resolve="binaryPath" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4i$1wjaa3_W" role="3clF45" />
      <node concept="37vLTG" id="4i$1wjaa3_X" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="smvPath" />
        <node concept="3uibUv" id="4i$1wjaa3_Y" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
      <node concept="3Tmbuc" id="4i$1wjad$8u" role="1B3o_S" />
      <node concept="2AHcQZ" id="4i$1wjad$gg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaefLb" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjaa2Y8" role="jymVt">
      <property role="TrG5h" value="addSpecification" />
      <node concept="3clFbS" id="4i$1wjaa2Ya" role="3clF47">
        <node concept="SfApY" id="4i$1wjaa2Yb" role="3cqZAp">
          <node concept="3clFbS" id="4i$1wjaa2Yc" role="SfCbr">
            <node concept="3clFbF" id="4i$1wjaa2Yd" role="3cqZAp">
              <node concept="2YIFZM" id="4i$1wjaa2Ye" role="3clFbG">
                <ref role="37wK5l" to="eoo2:~Files.write(java.nio.file.Path,byte[],java.nio.file.OpenOption...)" resolve="write" />
                <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
                <node concept="37vLTw" id="4i$1wjaa2Yf" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaa2Yx" resolve="smvPath" />
                </node>
                <node concept="2OqwBi" id="4i$1wjaa2Yg" role="37wK5m">
                  <node concept="1eOMI4" id="4i$1wjaa2Yh" role="2Oq$k0">
                    <node concept="3cpWs3" id="4i$1wjaa2Yi" role="1eOMHV">
                      <node concept="Xl_RD" id="4i$1wjaa2Yj" role="3uHU7B">
                        <property role="Xl_RC" value="\n\n" />
                      </node>
                      <node concept="37vLTw" id="4i$1wjaa2Yk" role="3uHU7w">
                        <ref role="3cqZAo" node="4i$1wjaa2Yz" resolve="specification" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4i$1wjaa2Yl" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.getBytes()" resolve="getBytes" />
                  </node>
                </node>
                <node concept="Rm8GO" id="4i$1wjaa2Ym" role="37wK5m">
                  <ref role="1Px2BO" to="eoo2:~StandardOpenOption" resolve="StandardOpenOption" />
                  <ref role="Rm8GQ" to="eoo2:~StandardOpenOption.APPEND" resolve="APPEND" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="4i$1wjaa2Yn" role="TEbGg">
            <node concept="3cpWsn" id="4i$1wjaa2Yo" role="TDEfY">
              <property role="TrG5h" value="e" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="4i$1wjaa2Yp" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="4i$1wjaa2Yq" role="TDEfX">
              <node concept="YS8fn" id="4i$1wjaa2Yr" role="3cqZAp">
                <node concept="2ShNRf" id="4i$1wjaa2Ys" role="YScLw">
                  <node concept="1pGfFk" id="4i$1wjaa2Yt" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="4i$1wjaa2Yu" role="37wK5m">
                      <ref role="3cqZAo" node="4i$1wjaa2Yo" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4i$1wjaa2Yw" role="3clF45" />
      <node concept="37vLTG" id="4i$1wjaa2Yx" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="smvPath" />
        <node concept="3uibUv" id="4i$1wjaa2Yy" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="4i$1wjaa2Yz" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="specification" />
        <node concept="17QB3L" id="4i$1wjaa2Y$" role="1tU5fm" />
      </node>
      <node concept="3Tm6S6" id="4i$1wjaa2Yv" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2NwTEkpTLR5" role="jymVt" />
    <node concept="3clFb_" id="4i$1wja9YfA" role="jymVt">
      <property role="TrG5h" value="createRawCounterexampleFile" />
      <node concept="3clFbS" id="4i$1wja9YfC" role="3clF47">
        <node concept="3cpWs8" id="4i$1wja9YfD" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wja9YfE" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="rawCounterexamplePath" />
            <node concept="3uibUv" id="4i$1wja9YfF" role="1tU5fm">
              <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
            </node>
            <node concept="1rXfSq" id="4i$1wjaenCA" role="33vP2m">
              <ref role="37wK5l" node="4i$1wjadklL" resolve="newPathOf" />
              <node concept="37vLTw" id="4i$1wjaeofD" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wja9Yg8" resolve="smvPath" />
              </node>
              <node concept="10M0yZ" id="4i$1wjaeoXQ" role="37wK5m">
                <ref role="3cqZAo" node="2NwTEkpVoYo" resolve="NUTRAC_FILE_EXTENSION" />
                <ref role="1PxDUh" node="2NwTEkpTHa2" resolve="NutracService" />
              </node>
            </node>
          </node>
        </node>
        <node concept="SfApY" id="4i$1wja9YfO" role="3cqZAp">
          <node concept="3clFbS" id="4i$1wja9YfP" role="SfCbr">
            <node concept="3cpWs6" id="4i$1wja9YfQ" role="3cqZAp">
              <node concept="2YIFZM" id="4i$1wja9YfR" role="3cqZAk">
                <ref role="37wK5l" to="eoo2:~Files.write(java.nio.file.Path,byte[],java.nio.file.OpenOption...)" resolve="write" />
                <ref role="1Pybhc" to="eoo2:~Files" resolve="Files" />
                <node concept="37vLTw" id="4i$1wja9YfS" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wja9YfE" resolve="rawCounterexamplePath" />
                </node>
                <node concept="2OqwBi" id="4i$1wja9YfT" role="37wK5m">
                  <node concept="37vLTw" id="4i$1wja9YfU" role="2Oq$k0">
                    <ref role="3cqZAo" node="4i$1wja9Yga" resolve="counterexample" />
                  </node>
                  <node concept="liA8E" id="4i$1wja9YfV" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.getBytes()" resolve="getBytes" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="4i$1wja9YfW" role="TEbGg">
            <node concept="3cpWsn" id="4i$1wja9YfX" role="TDEfY">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="4i$1wja9YfY" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="4i$1wja9YfZ" role="TDEfX">
              <node concept="YS8fn" id="4i$1wja9Yg0" role="3cqZAp">
                <node concept="2ShNRf" id="4i$1wja9Yg1" role="YScLw">
                  <node concept="1pGfFk" id="4i$1wja9Yg2" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="4i$1wja9Yg3" role="37wK5m">
                      <ref role="3cqZAo" node="4i$1wja9YfX" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4i$1wja9Yg5" role="3clF45">
        <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
      </node>
      <node concept="37vLTG" id="4i$1wja9Yg8" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="smvPath" />
        <node concept="3uibUv" id="4i$1wja9Yg9" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="4i$1wja9Yga" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="counterexample" />
        <node concept="17QB3L" id="4i$1wja9Ygb" role="1tU5fm" />
      </node>
      <node concept="3Tm6S6" id="4i$1wja9Yg4" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="7YsZv8g1tpK" role="1B3o_S" />
    <node concept="3uibUv" id="4i$1wjacQhh" role="1zkMxy">
      <ref role="3uigEE" node="4i$1wjacESB" resolve="AbstractIntegrationService" />
    </node>
  </node>
  <node concept="312cEu" id="4i$1wjacESB">
    <property role="TrG5h" value="AbstractIntegrationService" />
    <property role="1sVAO0" value="true" />
    <node concept="Wx3nA" id="2NwTEkpUiXr" role="jymVt">
      <property role="TrG5h" value="MAC_MONO_FRAMEWORK" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="4i$1wjaeZ$A" role="1B3o_S" />
      <node concept="17QB3L" id="2NwTEkpUiXt" role="1tU5fm" />
      <node concept="Xl_RD" id="2NwTEkpUiXu" role="33vP2m">
        <property role="Xl_RC" value="mono" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaeZ1j" role="jymVt" />
    <node concept="312cEg" id="4i$1wjaJCYT" role="jymVt">
      <property role="TrG5h" value="binaryPath" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="4i$1wjaJCqD" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjaJCRV" role="1tU5fm">
        <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaJBzI" role="jymVt" />
    <node concept="3clFbW" id="4i$1wjaJB2J" role="jymVt">
      <node concept="3cqZAl" id="4i$1wjaJB2K" role="3clF45" />
      <node concept="3clFbS" id="4i$1wjaJB2M" role="3clF47">
        <node concept="3clFbF" id="4i$1wjaJE0l" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaJErw" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaJEy9" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wjaJBw5" resolve="binaryPath" />
            </node>
            <node concept="2OqwBi" id="4i$1wjaJE3s" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wjaJE0k" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wjaJE7e" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wjaJCYT" resolve="binaryPath" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjaJ$Hp" role="1B3o_S" />
      <node concept="37vLTG" id="4i$1wjaJBw5" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="binaryPath" />
        <node concept="3uibUv" id="4i$1wjaJDPT" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaJ$0o" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjacEV1" role="jymVt">
      <property role="TrG5h" value="runProcess" />
      <node concept="3clFbS" id="4i$1wjacEV4" role="3clF47">
        <node concept="3cpWs8" id="4i$1wjadvXv" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjadvXt" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="command" />
            <node concept="17QB3L" id="4i$1wjadw9y" role="1tU5fm" />
            <node concept="1rXfSq" id="4i$1wjadwgm" role="33vP2m">
              <ref role="37wK5l" node="4i$1wjadv6r" resolve="getCommand" />
              <node concept="37vLTw" id="4i$1wjadxnF" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjacS3t" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4i$1wjacJm1" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjacJm2" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="4i$1wjacJm3" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~ProcessBuilder" resolve="ProcessBuilder" />
            </node>
            <node concept="2ShNRf" id="4i$1wjacJm4" role="33vP2m">
              <node concept="1pGfFk" id="4i$1wjacJm5" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~ProcessBuilder.&lt;init&gt;(java.lang.String...)" resolve="ProcessBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjacJm6" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjacJm7" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjacJm8" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjacJm2" resolve="builder" />
            </node>
            <node concept="liA8E" id="4i$1wjacJm9" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~ProcessBuilder.command(java.lang.String...)" resolve="command" />
              <node concept="37vLTw" id="4i$1wjadxt8" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjadvXt" resolve="command" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wjadxCX" role="3cqZAp" />
        <node concept="SfApY" id="4i$1wjacIdx" role="3cqZAp">
          <node concept="3clFbS" id="4i$1wjacIdy" role="SfCbr">
            <node concept="3cpWs8" id="4i$1wjacIdz" role="3cqZAp">
              <node concept="3cpWsn" id="4i$1wjacId$" role="3cpWs9">
                <property role="TrG5h" value="process" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="4i$1wjacId_" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Process" resolve="Process" />
                </node>
                <node concept="2OqwBi" id="4i$1wjacIdA" role="33vP2m">
                  <node concept="37vLTw" id="4i$1wjacIdB" role="2Oq$k0">
                    <ref role="3cqZAo" node="4i$1wjacJm2" resolve="builder" />
                  </node>
                  <node concept="liA8E" id="4i$1wjacIdC" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~ProcessBuilder.start()" resolve="start" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4i$1wjacIdD" role="3cqZAp">
              <node concept="2OqwBi" id="4i$1wjacIdE" role="3clFbG">
                <node concept="37vLTw" id="4i$1wjacIdF" role="2Oq$k0">
                  <ref role="3cqZAo" node="4i$1wjacId$" resolve="process" />
                </node>
                <node concept="liA8E" id="4i$1wjacIdG" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Process.waitFor()" resolve="waitFor" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4i$1wjacIdH" role="3cqZAp" />
            <node concept="3cpWs8" id="4i$1wjacIdI" role="3cqZAp">
              <node concept="3cpWsn" id="4i$1wjacIdJ" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="reader" />
                <node concept="3uibUv" id="4i$1wjacIdK" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~BufferedReader" resolve="BufferedReader" />
                </node>
                <node concept="2ShNRf" id="4i$1wjacIdL" role="33vP2m">
                  <node concept="1pGfFk" id="4i$1wjacIdM" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~BufferedReader.&lt;init&gt;(java.io.Reader)" resolve="BufferedReader" />
                    <node concept="2ShNRf" id="4i$1wjacIdN" role="37wK5m">
                      <node concept="1pGfFk" id="4i$1wjacIdO" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~InputStreamReader.&lt;init&gt;(java.io.InputStream)" resolve="InputStreamReader" />
                        <node concept="2OqwBi" id="4i$1wjacIdP" role="37wK5m">
                          <node concept="37vLTw" id="4i$1wjacIdQ" role="2Oq$k0">
                            <ref role="3cqZAo" node="4i$1wjacId$" resolve="process" />
                          </node>
                          <node concept="liA8E" id="4i$1wjacIdR" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~Process.getInputStream()" resolve="getInputStream" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4i$1wjacIdS" role="3cqZAp">
              <node concept="3cpWsn" id="4i$1wjacIdT" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="sb" />
                <node concept="3uibUv" id="4i$1wjacIdU" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
                </node>
                <node concept="2ShNRf" id="4i$1wjacIdV" role="33vP2m">
                  <node concept="1pGfFk" id="4i$1wjacIdW" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4i$1wjacIdX" role="3cqZAp">
              <node concept="3cpWsn" id="4i$1wjacIdY" role="3cpWs9">
                <property role="TrG5h" value="line" />
                <node concept="17QB3L" id="4i$1wjacIdZ" role="1tU5fm" />
                <node concept="Xl_RD" id="4i$1wjacIe0" role="33vP2m">
                  <property role="Xl_RC" value="" />
                </node>
              </node>
            </node>
            <node concept="2$JKZl" id="4i$1wjacIe1" role="3cqZAp">
              <node concept="3clFbS" id="4i$1wjacIe2" role="2LFqv$">
                <node concept="3clFbF" id="4i$1wjacIe3" role="3cqZAp">
                  <node concept="2OqwBi" id="4i$1wjacIe4" role="3clFbG">
                    <node concept="2OqwBi" id="4i$1wjacIe5" role="2Oq$k0">
                      <node concept="37vLTw" id="4i$1wjacIe6" role="2Oq$k0">
                        <ref role="3cqZAo" node="4i$1wjacIdT" resolve="sb" />
                      </node>
                      <node concept="liA8E" id="4i$1wjacIe7" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                        <node concept="37vLTw" id="4i$1wjacIe8" role="37wK5m">
                          <ref role="3cqZAo" node="4i$1wjacIdY" resolve="line" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="4i$1wjacIe9" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String)" resolve="append" />
                      <node concept="Xl_RD" id="4i$1wjacIea" role="37wK5m">
                        <property role="Xl_RC" value="\n" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="4i$1wjacIeb" role="2$JKZa">
                <node concept="10Nm6u" id="4i$1wjacIec" role="3uHU7w" />
                <node concept="1eOMI4" id="4i$1wjacIed" role="3uHU7B">
                  <node concept="37vLTI" id="4i$1wjacIee" role="1eOMHV">
                    <node concept="2OqwBi" id="4i$1wjacIef" role="37vLTx">
                      <node concept="37vLTw" id="4i$1wjacIeg" role="2Oq$k0">
                        <ref role="3cqZAo" node="4i$1wjacIdJ" resolve="reader" />
                      </node>
                      <node concept="liA8E" id="4i$1wjacIeh" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~BufferedReader.readLine()" resolve="readLine" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4i$1wjacIei" role="37vLTJ">
                      <ref role="3cqZAo" node="4i$1wjacIdY" resolve="line" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4i$1wjacIeo" role="3cqZAp" />
            <node concept="3cpWs6" id="4i$1wjacMCg" role="3cqZAp">
              <node concept="2OqwBi" id="4i$1wjacNDE" role="3cqZAk">
                <node concept="37vLTw" id="4i$1wjacMIJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="4i$1wjacIdT" resolve="sb" />
                </node>
                <node concept="liA8E" id="4i$1wjacNR8" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.toString()" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="4i$1wjacIev" role="TEbGg">
            <node concept="3cpWsn" id="4i$1wjacIew" role="TDEfY">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="4i$1wjacNYF" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="4i$1wjacIey" role="TDEfX">
              <node concept="YS8fn" id="4i$1wjacIez" role="3cqZAp">
                <node concept="2ShNRf" id="4i$1wjacIe$" role="YScLw">
                  <node concept="1pGfFk" id="4i$1wjacIe_" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="4i$1wjacIeA" role="37wK5m">
                      <ref role="3cqZAo" node="4i$1wjacIew" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="4i$1wjacKk1" role="1B3o_S" />
      <node concept="17QB3L" id="4i$1wjacEUP" role="3clF45" />
      <node concept="37vLTG" id="4i$1wjacS3t" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="4i$1wjads4s" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjad7sS" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjadklL" role="jymVt">
      <property role="TrG5h" value="newPathOf" />
      <node concept="3clFbS" id="4i$1wjadklO" role="3clF47">
        <node concept="3cpWs8" id="4i$1wjadbO8" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjadbO9" role="3cpWs9">
            <property role="TrG5h" value="fullFileName" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="4i$1wjadbOa" role="1tU5fm" />
            <node concept="2OqwBi" id="4i$1wjadbOb" role="33vP2m">
              <node concept="2OqwBi" id="4i$1wjadbOc" role="2Oq$k0">
                <node concept="37vLTw" id="4i$1wjadHl0" role="2Oq$k0">
                  <ref role="3cqZAo" node="4i$1wjadkJV" resolve="basePath" />
                </node>
                <node concept="liA8E" id="4i$1wjadbOe" role="2OqNvi">
                  <ref role="37wK5l" to="eoo2:~Path.getFileName()" resolve="getFileName" />
                </node>
              </node>
              <node concept="liA8E" id="4i$1wjadbOf" role="2OqNvi">
                <ref role="37wK5l" to="eoo2:~Path.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4i$1wjaddod" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjaddob" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="dotIndex" />
            <node concept="10Oyi0" id="4i$1wjadduZ" role="1tU5fm" />
            <node concept="2OqwBi" id="4i$1wjade75" role="33vP2m">
              <node concept="37vLTw" id="4i$1wjade1C" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjadbO9" resolve="fullFileName" />
              </node>
              <node concept="liA8E" id="4i$1wjade9p" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.lastIndexOf(java.lang.String)" resolve="lastIndexOf" />
                <node concept="Xl_RD" id="4i$1wjadeaP" role="37wK5m">
                  <property role="Xl_RC" value="." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4i$1wjadlle" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjadllc" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="fileNameWithoutExtension" />
            <node concept="17QB3L" id="4i$1wjadllx" role="1tU5fm" />
            <node concept="2OqwBi" id="4i$1wjadbOj" role="33vP2m">
              <node concept="37vLTw" id="4i$1wjadbOk" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjadbO9" resolve="fullFileName" />
              </node>
              <node concept="liA8E" id="4i$1wjadbOl" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                <node concept="3cmrfG" id="4i$1wjadbOm" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="37vLTw" id="4i$1wjadfbZ" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaddob" resolve="dotIndex" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4i$1wjadmwJ" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjadnVe" role="3cqZAk">
            <node concept="2OqwBi" id="4i$1wjadniW" role="2Oq$k0">
              <node concept="37vLTw" id="4i$1wjadn76" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjadkJV" resolve="basePath" />
              </node>
              <node concept="liA8E" id="4i$1wjadnPi" role="2OqNvi">
                <ref role="37wK5l" to="eoo2:~Path.getParent()" resolve="getParent" />
              </node>
            </node>
            <node concept="liA8E" id="4i$1wjado7I" role="2OqNvi">
              <ref role="37wK5l" to="eoo2:~Path.resolve(java.lang.String)" resolve="resolve" />
              <node concept="3cpWs3" id="4i$1wjadpf1" role="37wK5m">
                <node concept="37vLTw" id="4i$1wjadpEF" role="3uHU7w">
                  <ref role="3cqZAo" node="4i$1wjadm2D" resolve="fileExtension" />
                </node>
                <node concept="3cpWs3" id="4i$1wjadp5v" role="3uHU7B">
                  <node concept="37vLTw" id="4i$1wjadovz" role="3uHU7B">
                    <ref role="3cqZAo" node="4i$1wjadllc" resolve="fileNameWithoutExtension" />
                  </node>
                  <node concept="Xl_RD" id="4i$1wjadpd5" role="3uHU7w">
                    <property role="Xl_RC" value="." />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="4i$1wjadjAS" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjadkkA" role="3clF45">
        <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
      </node>
      <node concept="37vLTG" id="4i$1wjadkJV" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="basePath" />
        <node concept="3uibUv" id="4i$1wjadkP9" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="4i$1wjadm2D" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="fileExtension" />
        <node concept="17QB3L" id="4i$1wjadmsj" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaduEq" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjadv6r" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="getCommand" />
      <node concept="3clFbS" id="4i$1wjadv6u" role="3clF47" />
      <node concept="3Tmbuc" id="4i$1wjaduVd" role="1B3o_S" />
      <node concept="17QB3L" id="4i$1wjadv5G" role="3clF45" />
      <node concept="37vLTG" id="4i$1wjadvgo" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="4i$1wjadwj7" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4i$1wjacESC" role="1B3o_S" />
  </node>
</model>

