<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:8084b59f-3392-43cb-8238-4a96a96c280f(smvDebugger.fb2smv)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
  </languages>
  <imports>
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="nk3o" ref="r:85e05ab4-1ba9-4db5-96e9-56a84bd1472d(smvDebugger.commons)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
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
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="7YsZv8g1n6K">
    <property role="TrG5h" value="Fb2SmvIntegration" />
    <node concept="Wx3nA" id="2NwTEkpQLsE" role="jymVt">
      <property role="TrG5h" value="MAC_MONO_FRAMEWORK" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2NwTEkpQLqV" role="1B3o_S" />
      <node concept="17QB3L" id="2NwTEkpQLst" role="1tU5fm" />
      <node concept="Xl_RD" id="2NwTEkpQLvz" role="33vP2m">
        <property role="Xl_RC" value="mono" />
      </node>
    </node>
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
    <node concept="2YIFZL" id="7YsZv8g1nev" role="jymVt">
      <property role="TrG5h" value="convertFbToSmv" />
      <node concept="3clFbS" id="7YsZv8g1ney" role="3clF47">
        <node concept="3cpWs8" id="2NwTEkpQLKz" role="3cqZAp">
          <node concept="3cpWsn" id="2NwTEkpQLKx" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="os" />
            <node concept="3uibUv" id="2NwTEkpQN6Q" role="1tU5fm">
              <ref role="3uigEE" to="nk3o:2NwTEkpROjW" resolve="OS" />
            </node>
            <node concept="2YIFZM" id="2NwTEkpRXrm" role="33vP2m">
              <ref role="37wK5l" to="nk3o:2NwTEkpQNM9" resolve="getOS" />
              <ref role="1Pybhc" to="nk3o:2NwTEkpRQ_I" resolve="OSUtils" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2NwTEkpQJCP" role="3cqZAp">
          <node concept="3cpWsn" id="2NwTEkpQJCN" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="2NwTEkpQKIK" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~ProcessBuilder" resolve="ProcessBuilder" />
            </node>
            <node concept="2ShNRf" id="2NwTEkpQKKn" role="33vP2m">
              <node concept="1pGfFk" id="2NwTEkpQKWh" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~ProcessBuilder.&lt;init&gt;(java.lang.String...)" resolve="ProcessBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2NwTEkpQUzs" role="3cqZAp">
          <node concept="2OqwBi" id="2NwTEkpQUCb" role="3clFbG">
            <node concept="37vLTw" id="2NwTEkpQUzq" role="2Oq$k0">
              <ref role="3cqZAo" node="2NwTEkpQJCN" resolve="builder" />
            </node>
            <node concept="liA8E" id="2NwTEkpQUF6" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~ProcessBuilder.command(java.lang.String...)" resolve="command" />
              <node concept="1rXfSq" id="2NwTEkpQV1G" role="37wK5m">
                <ref role="37wK5l" node="2NwTEkpQTVK" resolve="getCommand" />
                <node concept="37vLTw" id="2NwTEkpQVhn" role="37wK5m">
                  <ref role="3cqZAo" node="2NwTEkpQLKx" resolve="os" />
                </node>
                <node concept="37vLTw" id="2NwTEkpQVmd" role="37wK5m">
                  <ref role="3cqZAo" node="7YsZv8g1nfd" resolve="fbPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2NwTEkpRfZ6" role="3cqZAp" />
        <node concept="3cpWs8" id="2NwTEkpRgyM" role="3cqZAp">
          <node concept="3cpWsn" id="2NwTEkpRgyK" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="process" />
            <node concept="3uibUv" id="2NwTEkpRgBs" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Process" resolve="Process" />
            </node>
          </node>
        </node>
        <node concept="SfApY" id="2NwTEkpRggM" role="3cqZAp">
          <node concept="3clFbS" id="2NwTEkpRggO" role="SfCbr">
            <node concept="3clFbF" id="2NwTEkpRgMd" role="3cqZAp">
              <node concept="37vLTI" id="2NwTEkpRgQR" role="3clFbG">
                <node concept="2OqwBi" id="2NwTEkpRgUU" role="37vLTx">
                  <node concept="37vLTw" id="2NwTEkpRgRL" role="2Oq$k0">
                    <ref role="3cqZAo" node="2NwTEkpQJCN" resolve="builder" />
                  </node>
                  <node concept="liA8E" id="2NwTEkpRgWW" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~ProcessBuilder.start()" resolve="start" />
                  </node>
                </node>
                <node concept="37vLTw" id="2NwTEkpRgM8" role="37vLTJ">
                  <ref role="3cqZAo" node="2NwTEkpRgyK" resolve="process" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2NwTEkpRiXE" role="3cqZAp">
              <node concept="2OqwBi" id="2NwTEkpRj5T" role="3clFbG">
                <node concept="37vLTw" id="2NwTEkpRiXC" role="2Oq$k0">
                  <ref role="3cqZAo" node="2NwTEkpRgyK" resolve="process" />
                </node>
                <node concept="liA8E" id="2NwTEkpRjax" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Process.waitFor()" resolve="waitFor" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="2NwTEkpRggP" role="TEbGg">
            <node concept="3cpWsn" id="2NwTEkpRggR" role="TDEfY">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="2NwTEkpRkci" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="2NwTEkpRggV" role="TDEfX">
              <node concept="YS8fn" id="2NwTEkpRi8i" role="3cqZAp">
                <node concept="2ShNRf" id="2NwTEkpRi9a" role="YScLw">
                  <node concept="1pGfFk" id="2NwTEkpRipM" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="2NwTEkpRirZ" role="37wK5m">
                      <ref role="3cqZAo" node="2NwTEkpRggR" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2NwTEkpRm8q" role="3cqZAp" />
        <node concept="3cpWs6" id="7YsZv8g1olM" role="3cqZAp">
          <node concept="1rXfSq" id="2NwTEkpRx4u" role="3cqZAk">
            <ref role="37wK5l" node="2NwTEkpRoHI" resolve="getSmvPath" />
            <node concept="37vLTw" id="2NwTEkpRx9S" role="37wK5m">
              <ref role="3cqZAo" node="7YsZv8g1nfd" resolve="fbPath" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7YsZv8g1ndW" role="1B3o_S" />
      <node concept="3uibUv" id="7YsZv8g1neT" role="3clF45">
        <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
      </node>
      <node concept="37vLTG" id="7YsZv8g1nfd" role="3clF46">
        <property role="TrG5h" value="fbPath" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2NwTEkpQGuj" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2NwTEkpQNAf" role="jymVt" />
    <node concept="2YIFZL" id="2NwTEkpQTVK" role="jymVt">
      <property role="TrG5h" value="getCommand" />
      <node concept="3clFbS" id="2NwTEkpQTVN" role="3clF47">
        <node concept="3KaCP$" id="2NwTEkpQU9J" role="3cqZAp">
          <node concept="37vLTw" id="2NwTEkpQUa3" role="3KbGdf">
            <ref role="3cqZAo" node="2NwTEkpQU2U" resolve="operatingSystem" />
          </node>
          <node concept="3KbdKl" id="2NwTEkpQUas" role="3KbHQx">
            <node concept="Rm8GO" id="2NwTEkpQUjP" role="3Kbmr1">
              <ref role="1Px2BO" to="nk3o:2NwTEkpROjW" resolve="OS" />
              <ref role="Rm8GQ" to="nk3o:2NwTEkpRR9z" resolve="MAC_OS" />
            </node>
            <node concept="3clFbS" id="2NwTEkpQUau" role="3Kbo56">
              <node concept="3cpWs6" id="2NwTEkpQUmF" role="3cqZAp">
                <node concept="3cpWs3" id="2NwTEkpQXbh" role="3cqZAk">
                  <node concept="2OqwBi" id="2NwTEkpS24_" role="3uHU7w">
                    <node concept="37vLTw" id="2NwTEkpRv6l" role="2Oq$k0">
                      <ref role="3cqZAo" node="2NwTEkpQUoA" resolve="fbPath" />
                    </node>
                    <node concept="liA8E" id="2NwTEkpS2yn" role="2OqNvi">
                      <ref role="37wK5l" to="eoo2:~Path.toString()" resolve="toString" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="2NwTEkpS1Jy" role="3uHU7B">
                    <node concept="Xl_RD" id="2NwTEkpS1Na" role="3uHU7w">
                      <property role="Xl_RC" value=" " />
                    </node>
                    <node concept="3cpWs3" id="2NwTEkpQVKz" role="3uHU7B">
                      <node concept="3cpWs3" id="2NwTEkpS1oW" role="3uHU7B">
                        <node concept="Xl_RD" id="2NwTEkpS1$F" role="3uHU7w">
                          <property role="Xl_RC" value=" " />
                        </node>
                        <node concept="37vLTw" id="2NwTEkpQVyW" role="3uHU7B">
                          <ref role="3cqZAo" node="2NwTEkpQLsE" resolve="MAC_MONO_FRAMEWORK" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2NwTEkpQWVY" role="3uHU7w">
                        <ref role="3cqZAo" node="2NwTEkpQIEH" resolve="FB2SMV_EXE_PATH" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2NwTEkpQYv3" role="3Kb1Dw">
            <node concept="3cpWs6" id="2NwTEkpQYRt" role="3cqZAp">
              <node concept="Xl_RD" id="2NwTEkpRas7" role="3cqZAk">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2NwTEkpQTHN" role="1B3o_S" />
      <node concept="17QB3L" id="2NwTEkpQTMy" role="3clF45" />
      <node concept="37vLTG" id="2NwTEkpQU2U" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="operatingSystem" />
        <node concept="3uibUv" id="2NwTEkpQU4r" role="1tU5fm">
          <ref role="3uigEE" to="nk3o:2NwTEkpROjW" resolve="OS" />
        </node>
      </node>
      <node concept="37vLTG" id="2NwTEkpQUoA" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="fbPath" />
        <node concept="3uibUv" id="2NwTEkpQUpw" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2NwTEkpRnlo" role="jymVt" />
    <node concept="2YIFZL" id="2NwTEkpRoHI" role="jymVt">
      <property role="TrG5h" value="getSmvPath" />
      <node concept="3clFbS" id="2NwTEkpRoHL" role="3clF47">
        <node concept="3cpWs8" id="2NwTEkpRzFl" role="3cqZAp">
          <node concept="3cpWsn" id="2NwTEkpRzFj" role="3cpWs9">
            <property role="TrG5h" value="fbFileName" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="2NwTEkpR$aw" role="1tU5fm" />
            <node concept="2OqwBi" id="2NwTEkpRxTy" role="33vP2m">
              <node concept="2OqwBi" id="2NwTEkpRxHI" role="2Oq$k0">
                <node concept="37vLTw" id="2NwTEkpRxtK" role="2Oq$k0">
                  <ref role="3cqZAo" node="2NwTEkpRpzJ" resolve="fbPath" />
                </node>
                <node concept="liA8E" id="2NwTEkpRxS1" role="2OqNvi">
                  <ref role="37wK5l" to="eoo2:~Path.getFileName()" resolve="getFileName" />
                </node>
              </node>
              <node concept="liA8E" id="2NwTEkpRxZk" role="2OqNvi">
                <ref role="37wK5l" to="eoo2:~Path.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2NwTEkpRBWE" role="3cqZAp">
          <node concept="3cpWsn" id="2NwTEkpRBWC" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="fbName" />
            <node concept="17QB3L" id="2NwTEkpRC3q" role="1tU5fm" />
            <node concept="2OqwBi" id="2NwTEkpRCey" role="33vP2m">
              <node concept="37vLTw" id="2NwTEkpRC4Z" role="2Oq$k0">
                <ref role="3cqZAo" node="2NwTEkpRzFj" resolve="fbFileName" />
              </node>
              <node concept="liA8E" id="2NwTEkpRCgM" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                <node concept="3cmrfG" id="2NwTEkpRCiI" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="2NwTEkpRD1P" role="37wK5m">
                  <node concept="37vLTw" id="2NwTEkpRCNp" role="2Oq$k0">
                    <ref role="3cqZAo" node="2NwTEkpRzFj" resolve="fbFileName" />
                  </node>
                  <node concept="liA8E" id="2NwTEkpRD4I" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.lastIndexOf(java.lang.String)" resolve="lastIndexOf" />
                    <node concept="Xl_RD" id="2NwTEkpRD5Y" role="37wK5m">
                      <property role="Xl_RC" value="." />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2NwTEkpRESY" role="3cqZAp">
          <node concept="3cpWsn" id="2NwTEkpRESZ" role="3cpWs9">
            <property role="TrG5h" value="smvFileName" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="2NwTEkpRET0" role="1tU5fm" />
            <node concept="3cpWs3" id="2NwTEkpREzM" role="33vP2m">
              <node concept="37vLTw" id="2NwTEkpRFnI" role="3uHU7w">
                <ref role="3cqZAo" node="2NwTEkpRA4h" resolve="SMV_FILE_EXTENSION" />
              </node>
              <node concept="3cpWs3" id="2NwTEkpRDJQ" role="3uHU7B">
                <node concept="37vLTw" id="2NwTEkpRDr1" role="3uHU7B">
                  <ref role="3cqZAo" node="2NwTEkpRBWC" resolve="fbName" />
                </node>
                <node concept="Xl_RD" id="2NwTEkpRDRK" role="3uHU7w">
                  <property role="Xl_RC" value="." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2NwTEkpRpyG" role="3cqZAp">
          <node concept="2OqwBi" id="2NwTEkpRIet" role="3cqZAk">
            <node concept="2OqwBi" id="2NwTEkpRHJ8" role="2Oq$k0">
              <node concept="37vLTw" id="2NwTEkpRHms" role="2Oq$k0">
                <ref role="3cqZAo" node="2NwTEkpRpzJ" resolve="fbPath" />
              </node>
              <node concept="liA8E" id="2NwTEkpRI0w" role="2OqNvi">
                <ref role="37wK5l" to="eoo2:~Path.getParent()" resolve="getParent" />
              </node>
            </node>
            <node concept="liA8E" id="2NwTEkpRIIe" role="2OqNvi">
              <ref role="37wK5l" to="eoo2:~Path.resolve(java.lang.String)" resolve="resolve" />
              <node concept="37vLTw" id="2NwTEkpRIKX" role="37wK5m">
                <ref role="3cqZAo" node="2NwTEkpRESZ" resolve="smvFileName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2NwTEkpRogl" role="1B3o_S" />
      <node concept="3uibUv" id="2NwTEkpRoze" role="3clF45">
        <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
      </node>
      <node concept="37vLTG" id="2NwTEkpRpzJ" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="fbPath" />
        <node concept="3uibUv" id="2NwTEkpRp$E" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7YsZv8g1n6L" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2NwTEkpTHa2">
    <property role="TrG5h" value="NutracIntegration" />
    <node concept="Wx3nA" id="2NwTEkpUiXr" role="jymVt">
      <property role="TrG5h" value="MAC_MONO_FRAMEWORK" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2NwTEkpUiXs" role="1B3o_S" />
      <node concept="17QB3L" id="2NwTEkpUiXt" role="1tU5fm" />
      <node concept="Xl_RD" id="2NwTEkpUiXu" role="33vP2m">
        <property role="Xl_RC" value="mono" />
      </node>
    </node>
    <node concept="Wx3nA" id="2NwTEkpUiXv" role="jymVt">
      <property role="TrG5h" value="NUTRAC_EXE_PATH" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2NwTEkpUiXw" role="1B3o_S" />
      <node concept="17QB3L" id="2NwTEkpUiXx" role="1tU5fm" />
      <node concept="Xl_RD" id="2NwTEkpUiXy" role="33vP2m">
        <property role="Xl_RC" value="Library/FB2SMV/nutrac.exe" />
      </node>
    </node>
    <node concept="2tJIrI" id="2NwTEkpUiSl" role="jymVt" />
    <node concept="2YIFZL" id="2NwTEkpUhob" role="jymVt">
      <property role="TrG5h" value="convertToCsv" />
      <node concept="3clFbS" id="2NwTEkpUhoc" role="3clF47">
        <node concept="3cpWs8" id="2NwTEkpUhod" role="3cqZAp">
          <node concept="3cpWsn" id="2NwTEkpUhoe" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="os" />
            <node concept="3uibUv" id="2NwTEkpUhof" role="1tU5fm">
              <ref role="3uigEE" to="nk3o:2NwTEkpROjW" resolve="OS" />
            </node>
            <node concept="2YIFZM" id="2NwTEkpUhog" role="33vP2m">
              <ref role="1Pybhc" to="nk3o:2NwTEkpRQ_I" resolve="OSUtils" />
              <ref role="37wK5l" to="nk3o:2NwTEkpQNM9" resolve="getOS" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2NwTEkpUkNi" role="3cqZAp" />
        <node concept="3cpWs8" id="2NwTEkpUhoh" role="3cqZAp">
          <node concept="3cpWsn" id="2NwTEkpUhoi" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="builder" />
            <node concept="3uibUv" id="2NwTEkpUhoj" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~ProcessBuilder" resolve="ProcessBuilder" />
            </node>
            <node concept="2ShNRf" id="2NwTEkpUhok" role="33vP2m">
              <node concept="1pGfFk" id="2NwTEkpUhol" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~ProcessBuilder.&lt;init&gt;(java.lang.String...)" resolve="ProcessBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2NwTEkpUhom" role="3cqZAp">
          <node concept="2OqwBi" id="2NwTEkpUhon" role="3clFbG">
            <node concept="37vLTw" id="2NwTEkpUhoo" role="2Oq$k0">
              <ref role="3cqZAo" node="2NwTEkpUhoi" resolve="builder" />
            </node>
            <node concept="liA8E" id="2NwTEkpUhop" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~ProcessBuilder.command(java.lang.String...)" resolve="command" />
              <node concept="1rXfSq" id="2NwTEkpUk15" role="37wK5m">
                <ref role="37wK5l" node="2NwTEkpUio7" resolve="getCommand" />
                <node concept="37vLTw" id="2NwTEkpUkgW" role="37wK5m">
                  <ref role="3cqZAo" node="2NwTEkpUhoe" resolve="os" />
                </node>
                <node concept="37vLTw" id="2NwTEkpUkKO" role="37wK5m">
                  <ref role="3cqZAo" node="2NwTEkpUhoV" resolve="counterexamplePath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2NwTEkpUhot" role="3cqZAp" />
        <node concept="3cpWs8" id="2NwTEkpUhou" role="3cqZAp">
          <node concept="3cpWsn" id="2NwTEkpUhov" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="process" />
            <node concept="3uibUv" id="2NwTEkpUhow" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Process" resolve="Process" />
            </node>
          </node>
        </node>
        <node concept="SfApY" id="2NwTEkpUhox" role="3cqZAp">
          <node concept="3clFbS" id="2NwTEkpUhoy" role="SfCbr">
            <node concept="3clFbF" id="2NwTEkpUhoz" role="3cqZAp">
              <node concept="37vLTI" id="2NwTEkpUho$" role="3clFbG">
                <node concept="2OqwBi" id="2NwTEkpUho_" role="37vLTx">
                  <node concept="37vLTw" id="2NwTEkpUhoA" role="2Oq$k0">
                    <ref role="3cqZAo" node="2NwTEkpUhoi" resolve="builder" />
                  </node>
                  <node concept="liA8E" id="2NwTEkpUhoB" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~ProcessBuilder.start()" resolve="start" />
                  </node>
                </node>
                <node concept="37vLTw" id="2NwTEkpUhoC" role="37vLTJ">
                  <ref role="3cqZAo" node="2NwTEkpUhov" resolve="process" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2NwTEkpUhoD" role="3cqZAp">
              <node concept="2OqwBi" id="2NwTEkpUhoE" role="3clFbG">
                <node concept="37vLTw" id="2NwTEkpUhoF" role="2Oq$k0">
                  <ref role="3cqZAo" node="2NwTEkpUhov" resolve="process" />
                </node>
                <node concept="liA8E" id="2NwTEkpUhoG" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Process.waitFor()" resolve="waitFor" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="2NwTEkpUhoH" role="TEbGg">
            <node concept="3cpWsn" id="2NwTEkpUhoI" role="TDEfY">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="2NwTEkpUhoJ" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="2NwTEkpUhoK" role="TDEfX">
              <node concept="YS8fn" id="2NwTEkpUhoL" role="3cqZAp">
                <node concept="2ShNRf" id="2NwTEkpUhoM" role="YScLw">
                  <node concept="1pGfFk" id="2NwTEkpUhoN" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                    <node concept="37vLTw" id="2NwTEkpUhoO" role="37wK5m">
                      <ref role="3cqZAo" node="2NwTEkpUhoI" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2NwTEkpUhoP" role="3cqZAp" />
        <node concept="3cpWs6" id="2NwTEkpUhoQ" role="3cqZAp">
          <node concept="2YIFZM" id="2NwTEkpUhu1" role="3cqZAk">
            <ref role="1Pybhc" node="7YsZv8g1n6K" resolve="Fb2SmvIntegration" />
            <ref role="37wK5l" node="2NwTEkpRoHI" resolve="getSmvPath" />
            <node concept="37vLTw" id="2NwTEkpUhu2" role="37wK5m">
              <ref role="3cqZAo" node="2NwTEkpUhoV" resolve="counterexamplePath" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2NwTEkpUhoT" role="1B3o_S" />
      <node concept="3uibUv" id="2NwTEkpUhoU" role="3clF45">
        <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
      </node>
      <node concept="37vLTG" id="2NwTEkpUhoV" role="3clF46">
        <property role="TrG5h" value="counterexamplePath" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2NwTEkpUhoW" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2NwTEkpUhnZ" role="jymVt" />
    <node concept="2YIFZL" id="2NwTEkpUio7" role="jymVt">
      <property role="TrG5h" value="getCommand" />
      <node concept="3clFbS" id="2NwTEkpUio8" role="3clF47">
        <node concept="3KaCP$" id="2NwTEkpUio9" role="3cqZAp">
          <node concept="37vLTw" id="2NwTEkpUioa" role="3KbGdf">
            <ref role="3cqZAo" node="2NwTEkpUiot" resolve="operatingSystem" />
          </node>
          <node concept="3KbdKl" id="2NwTEkpUiob" role="3KbHQx">
            <node concept="Rm8GO" id="2NwTEkpUioc" role="3Kbmr1">
              <ref role="1Px2BO" to="nk3o:2NwTEkpROjW" resolve="OS" />
              <ref role="Rm8GQ" to="nk3o:2NwTEkpRR9z" resolve="MAC_OS" />
            </node>
            <node concept="3clFbS" id="2NwTEkpUiod" role="3Kbo56">
              <node concept="3cpWs6" id="2NwTEkpUioe" role="3cqZAp">
                <node concept="3cpWs3" id="2NwTEkpUiof" role="3cqZAk">
                  <node concept="2OqwBi" id="2NwTEkpUiog" role="3uHU7w">
                    <node concept="37vLTw" id="2NwTEkpUioh" role="2Oq$k0">
                      <ref role="3cqZAo" node="2NwTEkpUiov" resolve="counterexamplePath" />
                    </node>
                    <node concept="liA8E" id="2NwTEkpUioi" role="2OqNvi">
                      <ref role="37wK5l" to="eoo2:~Path.toString()" resolve="toString" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="2NwTEkpUioj" role="3uHU7B">
                    <node concept="Xl_RD" id="2NwTEkpUiok" role="3uHU7w">
                      <property role="Xl_RC" value=" " />
                    </node>
                    <node concept="3cpWs3" id="2NwTEkpUiol" role="3uHU7B">
                      <node concept="3cpWs3" id="2NwTEkpUiom" role="3uHU7B">
                        <node concept="Xl_RD" id="2NwTEkpUion" role="3uHU7w">
                          <property role="Xl_RC" value=" " />
                        </node>
                        <node concept="37vLTw" id="2NwTEkpUjbK" role="3uHU7B">
                          <ref role="3cqZAo" node="2NwTEkpUiXr" resolve="MAC_MONO_FRAMEWORK" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="2NwTEkpUjq4" role="3uHU7w">
                        <ref role="3cqZAo" node="2NwTEkpUiXv" resolve="NUTRAC_EXE_PATH" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2NwTEkpUioo" role="3Kb1Dw">
            <node concept="3cpWs6" id="2NwTEkpUiop" role="3cqZAp">
              <node concept="Xl_RD" id="2NwTEkpUioq" role="3cqZAk">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2NwTEkpUior" role="1B3o_S" />
      <node concept="17QB3L" id="2NwTEkpUios" role="3clF45" />
      <node concept="37vLTG" id="2NwTEkpUiot" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="operatingSystem" />
        <node concept="3uibUv" id="2NwTEkpUiou" role="1tU5fm">
          <ref role="3uigEE" to="nk3o:2NwTEkpROjW" resolve="OS" />
        </node>
      </node>
      <node concept="37vLTG" id="2NwTEkpUiov" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="counterexamplePath" />
        <node concept="3uibUv" id="2NwTEkpUiow" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2NwTEkpUldi" role="jymVt" />
    <node concept="2YIFZL" id="2NwTEkpUlgb" role="jymVt">
      <property role="TrG5h" value="getSmvPath" />
      <node concept="3clFbS" id="2NwTEkpUlgc" role="3clF47">
        <node concept="3cpWs8" id="2NwTEkpUlgd" role="3cqZAp">
          <node concept="3cpWsn" id="2NwTEkpUlge" role="3cpWs9">
            <property role="TrG5h" value="fbFileName" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="2NwTEkpUlgf" role="1tU5fm" />
            <node concept="2OqwBi" id="2NwTEkpUlgg" role="33vP2m">
              <node concept="2OqwBi" id="2NwTEkpUlgh" role="2Oq$k0">
                <node concept="37vLTw" id="2NwTEkpUlgi" role="2Oq$k0">
                  <ref role="3cqZAo" node="2NwTEkpUlgK" resolve="fbPath" />
                </node>
                <node concept="liA8E" id="2NwTEkpUlgj" role="2OqNvi">
                  <ref role="37wK5l" to="eoo2:~Path.getFileName()" resolve="getFileName" />
                </node>
              </node>
              <node concept="liA8E" id="2NwTEkpUlgk" role="2OqNvi">
                <ref role="37wK5l" to="eoo2:~Path.toString()" resolve="toString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2NwTEkpUlgl" role="3cqZAp">
          <node concept="3cpWsn" id="2NwTEkpUlgm" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="fbName" />
            <node concept="17QB3L" id="2NwTEkpUlgn" role="1tU5fm" />
            <node concept="2OqwBi" id="2NwTEkpUlgo" role="33vP2m">
              <node concept="37vLTw" id="2NwTEkpUlgp" role="2Oq$k0">
                <ref role="3cqZAo" node="2NwTEkpUlge" resolve="fbFileName" />
              </node>
              <node concept="liA8E" id="2NwTEkpUlgq" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
                <node concept="3cmrfG" id="2NwTEkpUlgr" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
                <node concept="2OqwBi" id="2NwTEkpUlgs" role="37wK5m">
                  <node concept="37vLTw" id="2NwTEkpUlgt" role="2Oq$k0">
                    <ref role="3cqZAo" node="2NwTEkpUlge" resolve="fbFileName" />
                  </node>
                  <node concept="liA8E" id="2NwTEkpUlgu" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.lastIndexOf(java.lang.String)" resolve="lastIndexOf" />
                    <node concept="Xl_RD" id="2NwTEkpUlgv" role="37wK5m">
                      <property role="Xl_RC" value="." />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2NwTEkpUlgw" role="3cqZAp">
          <node concept="3cpWsn" id="2NwTEkpUlgx" role="3cpWs9">
            <property role="TrG5h" value="smvFileName" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="2NwTEkpUlgy" role="1tU5fm" />
            <node concept="3cpWs3" id="2NwTEkpUlgz" role="33vP2m">
              <node concept="10M0yZ" id="2NwTEkpUlbU" role="3uHU7w">
                <ref role="3cqZAo" node="2NwTEkpRA4h" resolve="SMV_FILE_EXTENSION" />
                <ref role="1PxDUh" node="7YsZv8g1n6K" resolve="Fb2SmvIntegration" />
              </node>
              <node concept="3cpWs3" id="2NwTEkpUlg$" role="3uHU7B">
                <node concept="37vLTw" id="2NwTEkpUlg_" role="3uHU7B">
                  <ref role="3cqZAo" node="2NwTEkpUlgm" resolve="fbName" />
                </node>
                <node concept="Xl_RD" id="2NwTEkpUlgA" role="3uHU7w">
                  <property role="Xl_RC" value="." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2NwTEkpUlgB" role="3cqZAp">
          <node concept="2OqwBi" id="2NwTEkpUlgC" role="3cqZAk">
            <node concept="2OqwBi" id="2NwTEkpUlgD" role="2Oq$k0">
              <node concept="37vLTw" id="2NwTEkpUlgE" role="2Oq$k0">
                <ref role="3cqZAo" node="2NwTEkpUlgK" resolve="fbPath" />
              </node>
              <node concept="liA8E" id="2NwTEkpUlgF" role="2OqNvi">
                <ref role="37wK5l" to="eoo2:~Path.getParent()" resolve="getParent" />
              </node>
            </node>
            <node concept="liA8E" id="2NwTEkpUlgG" role="2OqNvi">
              <ref role="37wK5l" to="eoo2:~Path.resolve(java.lang.String)" resolve="resolve" />
              <node concept="37vLTw" id="2NwTEkpUlgH" role="37wK5m">
                <ref role="3cqZAo" node="2NwTEkpUlgx" resolve="smvFileName" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2NwTEkpUlgI" role="1B3o_S" />
      <node concept="3uibUv" id="2NwTEkpUlgJ" role="3clF45">
        <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
      </node>
      <node concept="37vLTG" id="2NwTEkpUlgK" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="fbPath" />
        <node concept="3uibUv" id="2NwTEkpUlgL" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2NwTEkpUleI" role="jymVt" />
    <node concept="3Tm1VV" id="2NwTEkpTHa3" role="1B3o_S" />
  </node>
</model>

