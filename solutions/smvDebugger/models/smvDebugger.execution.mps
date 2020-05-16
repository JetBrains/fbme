<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:637cc594-151a-4299-b732-c6b4c70f1b89(smvDebugger.execution)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="7adg" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.common(org.fbme.lib/)" />
    <import index="fhh" ref="r:f4a915f7-fe0a-4d70-93d8-9a6c9b61418e(smvDebugger.panel)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="8uw2" ref="r:e0a1abe3-ec88-452a-aca6-a40a81cc50a1(smvDebugger.model)" />
    <import index="7mo4" ref="r:7d4b3040-5e2b-4e34-a42b-b9af403ede5f(smvDebugger.integration)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="78d5" ref="r:d018f155-a8e1-4632-87ac-0cbc89a1f1c2(org.fbme.ide.richediting.lang.editor)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="5z5t" ref="r:cb5ca339-5ab1-4d45-82cc-3e94fa36eca9(org.fbme.ide.richediting.plugin)" />
    <import index="nf5t" ref="r:1c3e83f1-dc29-416c-9a91-7ca7507c87bb(smvDebugger.plugin)" />
    <import index="51vd" ref="r:61dddea3-21a4-4a11-920c-747c8c1e4777(org.fbme.ide.platform.persistence)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1210184105060" name="jetbrains.mps.lang.plugin.structure.PreferencesComponentType" flags="in" index="34_ZPX">
        <reference id="1210184138184" name="componentDeclaration" index="34A7Nh" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="681855071694758168" name="jetbrains.mps.lang.plugin.standalone.structure.GetPreferencesComponentInProjectOperation" flags="nn" index="LR4Ub">
        <reference id="681855071694758169" name="componentDeclaration" index="LR4Ua" />
      </concept>
    </language>
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
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
  <node concept="312cEu" id="7YsZv8g1lt$">
    <property role="TrG5h" value="SmvDebugger" />
    <node concept="Wx3nA" id="2NwTEkpT7Vm" role="jymVt">
      <property role="TrG5h" value="FB_FILE_EXTENSION" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2NwTEkpT765" role="1B3o_S" />
      <node concept="17QB3L" id="2NwTEkpT7mR" role="1tU5fm" />
      <node concept="Xl_RD" id="2NwTEkpT8bI" role="33vP2m">
        <property role="Xl_RC" value=".xml" />
      </node>
    </node>
    <node concept="2tJIrI" id="2NwTEkpT6VI" role="jymVt" />
    <node concept="312cEg" id="4i$1wjaJrHY" role="jymVt">
      <property role="TrG5h" value="project" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjaJrba" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjaJrG_" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="312cEg" id="4i$1wjadZEG" role="jymVt">
      <property role="TrG5h" value="smvService" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjadYW4" role="1B3o_S" />
      <node concept="3uibUv" id="1mZ5x_OYxUo" role="1tU5fm">
        <ref role="3uigEE" to="7mo4:1mZ5x_OYfoF" resolve="SmvService" />
      </node>
    </node>
    <node concept="312cEg" id="4i$1wjae_ew" role="jymVt">
      <property role="TrG5h" value="debugPanelService" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjae$Ub" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjae_di" role="1tU5fm">
        <ref role="3uigEE" to="fhh:4i$1wj9InXM" resolve="DebugPanelService" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjadWum" role="jymVt" />
    <node concept="3clFbW" id="4i$1wjaJqEk" role="jymVt">
      <node concept="3cqZAl" id="4i$1wjaJqEl" role="3clF45" />
      <node concept="3clFbS" id="4i$1wjaJqEn" role="3clF47">
        <node concept="3clFbF" id="4i$1wjaJxcM" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaJxNR" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaJxVk" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wjaJuhr" resolve="project" />
            </node>
            <node concept="2OqwBi" id="4i$1wjaJxnl" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wjaJxcK" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wjaJxs7" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wjaJrHY" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wjaK1ba" role="3cqZAp" />
        <node concept="3cpWs8" id="4i$1wjaJvti" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjaJvtg" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="ideaProject" />
            <node concept="3uibUv" id="4i$1wjaJvII" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="2YIFZM" id="1y1FD3qGTVe" role="33vP2m">
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <ref role="37wK5l" to="alof:~ProjectHelper.toIdeaProject(jetbrains.mps.project.Project)" resolve="toIdeaProject" />
              <node concept="37vLTw" id="2yJZQx2z7iA" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjaJuhr" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7H$5i_Y6U8A" role="3cqZAp">
          <node concept="3cpWsn" id="7H$5i_Y6U8B" role="3cpWs9">
            <property role="TrG5h" value="smvBinaryPaths" />
            <property role="3TUv4t" value="true" />
            <node concept="34_ZPX" id="7H$5i_Y6SIv" role="1tU5fm">
              <ref role="34A7Nh" to="nf5t:4i$1wjaI7VF" resolve="SmvBinaryPaths" />
            </node>
            <node concept="2OqwBi" id="7H$5i_Y6U8C" role="33vP2m">
              <node concept="LR4Ub" id="7H$5i_Y6U8D" role="2OqNvi">
                <ref role="LR4Ua" to="nf5t:4i$1wjaI7VF" resolve="SmvBinaryPaths" />
              </node>
              <node concept="37vLTw" id="7H$5i_Y6U8E" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaJvtg" resolve="ideaProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1mZ5x_OY_t_" role="3cqZAp">
          <node concept="37vLTI" id="1mZ5x_OYAm_" role="3clFbG">
            <node concept="2ShNRf" id="1mZ5x_OYAB2" role="37vLTx">
              <node concept="1pGfFk" id="1mZ5x_OYBFF" role="2ShVmc">
                <ref role="37wK5l" to="7mo4:1mZ5x_OYgNd" resolve="SmvService" />
                <node concept="37vLTw" id="1mZ5x_OYBVw" role="37wK5m">
                  <ref role="3cqZAo" node="7H$5i_Y6U8B" resolve="smvBinaryPaths" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1mZ5x_OY_tz" role="37vLTJ">
              <ref role="3cqZAo" node="4i$1wjadZEG" resolve="smvService" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1mZ5x_OY_Xp" role="3cqZAp" />
        <node concept="3clFbF" id="4i$1wjaK3iW" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaK3Ld" role="3clFbG">
            <node concept="2ShNRf" id="4i$1wjaK3TG" role="37vLTx">
              <node concept="1pGfFk" id="4i$1wjaK8ce" role="2ShVmc">
                <ref role="37wK5l" to="fhh:4i$1wjaK5DW" resolve="DebugPanelService" />
                <node concept="37vLTw" id="4i$1wjaK8cd" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaJuhr" resolve="project" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wjaK3iU" role="37vLTJ">
              <ref role="3cqZAo" node="4i$1wjae_ew" resolve="debugPanelService" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjaJpup" role="1B3o_S" />
      <node concept="37vLTG" id="4i$1wjaJuhr" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="4i$1wjaJuk2" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaJp1K" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjadWed" role="jymVt">
      <property role="TrG5h" value="run" />
      <node concept="3clFbS" id="4i$1wjadWef" role="3clF47">
        <node concept="SfApY" id="1mZ5x_P0$5N" role="3cqZAp">
          <node concept="3clFbS" id="1mZ5x_P0$5P" role="SfCbr">
            <node concept="3cpWs8" id="4i$1wjadWer" role="3cqZAp">
              <node concept="3cpWsn" id="4i$1wjadWes" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="specification" />
                <node concept="17QB3L" id="4i$1wjadWet" role="1tU5fm" />
                <node concept="1rXfSq" id="4i$1wjadWeu" role="33vP2m">
                  <ref role="37wK5l" node="7YsZv8g1AFA" resolve="getSpecification" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1mZ5x_OYDqR" role="3cqZAp">
              <node concept="3cpWsn" id="1mZ5x_OYDqP" role="3cpWs9">
                <property role="3TUv4t" value="true" />
                <property role="TrG5h" value="counterexample" />
                <node concept="3uibUv" id="1mZ5x_OYE2a" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~Optional" resolve="Optional" />
                  <node concept="3uibUv" id="1mZ5x_OYEDt" role="11_B2D">
                    <ref role="3uigEE" to="8uw2:1F2d4ZDwe1f" resolve="Counterexample" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1mZ5x_OYGjS" role="33vP2m">
                  <node concept="37vLTw" id="1mZ5x_OYG29" role="2Oq$k0">
                    <ref role="3cqZAo" node="4i$1wjadZEG" resolve="smvService" />
                  </node>
                  <node concept="liA8E" id="1mZ5x_OYGpc" role="2OqNvi">
                    <ref role="37wK5l" to="7mo4:1mZ5x_OYkZl" resolve="verify" />
                    <node concept="37vLTw" id="1mZ5x_OYGGl" role="37wK5m">
                      <ref role="3cqZAo" node="4i$1wjaRUex" resolve="fbPath" />
                    </node>
                    <node concept="37vLTw" id="1mZ5x_OYIuD" role="37wK5m">
                      <ref role="3cqZAo" node="4i$1wjadWes" resolve="specification" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1mZ5x_OYJNk" role="3cqZAp">
              <node concept="3clFbS" id="1mZ5x_OYJNm" role="3clFbx">
                <node concept="3clFbF" id="1mZ5x_OYLTE" role="3cqZAp">
                  <node concept="1rXfSq" id="1mZ5x_OYLTF" role="3clFbG">
                    <ref role="37wK5l" node="7YsZv8g1AKA" resolve="notifySuccess" />
                  </node>
                </node>
                <node concept="3cpWs6" id="1mZ5x_OYLTG" role="3cqZAp">
                  <node concept="10Nm6u" id="1mZ5x_OYLTH" role="3cqZAk" />
                </node>
              </node>
              <node concept="2OqwBi" id="1mZ5x_OYKTW" role="3clFbw">
                <node concept="37vLTw" id="1mZ5x_OYKv5" role="2Oq$k0">
                  <ref role="3cqZAo" node="1mZ5x_OYDqP" resolve="counterexample" />
                </node>
                <node concept="liA8E" id="1mZ5x_OYLzj" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Optional.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1mZ5x_OYMD9" role="3cqZAp">
              <node concept="2OqwBi" id="1mZ5x_OYMDa" role="3cqZAk">
                <node concept="37vLTw" id="1mZ5x_OYMDb" role="2Oq$k0">
                  <ref role="3cqZAo" node="4i$1wjae_ew" resolve="debugPanelService" />
                </node>
                <node concept="liA8E" id="1mZ5x_OYMDc" role="2OqNvi">
                  <ref role="37wK5l" to="fhh:4i$1wjaeAqJ" resolve="run" />
                  <node concept="37vLTw" id="1mZ5x_OYMDd" role="37wK5m">
                    <ref role="3cqZAo" node="4i$1wjadWeX" resolve="compositeFb" />
                  </node>
                  <node concept="2OqwBi" id="1mZ5x_OYNmd" role="37wK5m">
                    <node concept="37vLTw" id="1mZ5x_OYMDe" role="2Oq$k0">
                      <ref role="3cqZAo" node="1mZ5x_OYDqP" resolve="counterexample" />
                    </node>
                    <node concept="liA8E" id="1mZ5x_OYNOn" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Optional.get()" resolve="get" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="1mZ5x_P0$5Q" role="TEbGg">
            <node concept="3cpWsn" id="1mZ5x_P0$5S" role="TDEfY">
              <property role="TrG5h" value="e" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="1mZ5x_P0$ry" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
              </node>
            </node>
            <node concept="3clFbS" id="1mZ5x_P0$5W" role="TDEfX">
              <node concept="3clFbF" id="1mZ5x_P0$JO" role="3cqZAp">
                <node concept="2YIFZM" id="1mZ5x_P0_uN" role="3clFbG">
                  <ref role="37wK5l" to="dxuu:~JOptionPane.showMessageDialog(java.awt.Component,java.lang.Object)" resolve="showMessageDialog" />
                  <ref role="1Pybhc" to="dxuu:~JOptionPane" resolve="JOptionPane" />
                  <node concept="10Nm6u" id="1mZ5x_P0AzF" role="37wK5m" />
                  <node concept="2OqwBi" id="1mZ5x_P0AOM" role="37wK5m">
                    <node concept="37vLTw" id="1mZ5x_P0AGJ" role="2Oq$k0">
                      <ref role="3cqZAo" node="1mZ5x_P0$5S" resolve="e" />
                    </node>
                    <node concept="liA8E" id="1mZ5x_P0B6n" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="1mZ5x_P0Bw4" role="3cqZAp">
                <node concept="10Nm6u" id="1mZ5x_P0BTx" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4i$1wjadWeU" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="37vLTG" id="4i$1wjaRUex" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="fbPath" />
        <node concept="3uibUv" id="4i$1wjaRV40" role="1tU5fm">
          <ref role="3uigEE" to="eoo2:~Path" resolve="Path" />
        </node>
      </node>
      <node concept="37vLTG" id="4i$1wjadWeX" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="compositeFb" />
        <node concept="3uibUv" id="4i$1wjadWeY" role="1tU5fm">
          <ref role="3uigEE" to="cwd8:~CompositeFBTypeDeclaration" resolve="CompositeFBTypeDeclaration" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjadWeZ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2NwTEkpSoN8" role="jymVt" />
    <node concept="2YIFZL" id="7YsZv8g1AFA" role="jymVt">
      <property role="TrG5h" value="getSpecification" />
      <node concept="3clFbS" id="7YsZv8g1AFD" role="3clF47">
        <node concept="3cpWs8" id="7YsZv8g1GKh" role="3cqZAp">
          <node concept="3cpWsn" id="7YsZv8g1GKf" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="specification" />
            <node concept="17QB3L" id="7YsZv8g1GLT" role="1tU5fm" />
            <node concept="2YIFZM" id="7YsZv8g1GTM" role="33vP2m">
              <ref role="1Pybhc" to="dxuu:~JOptionPane" resolve="JOptionPane" />
              <ref role="37wK5l" to="dxuu:~JOptionPane.showInputDialog(java.awt.Component,java.lang.Object)" resolve="showInputDialog" />
              <node concept="10Nm6u" id="7YsZv8g1GXZ" role="37wK5m" />
              <node concept="Xl_RD" id="7YsZv8g1H4W" role="37wK5m">
                <property role="Xl_RC" value="Enter LTL/CTL specification" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7YsZv8g1Hlg" role="3cqZAp">
          <node concept="37vLTw" id="7YsZv8g1Hw3" role="3cqZAk">
            <ref role="3cqZAo" node="7YsZv8g1GKf" resolve="specification" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2NwTEkpSoDm" role="1B3o_S" />
      <node concept="17QB3L" id="7YsZv8g1AFr" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7YsZv8g1AHC" role="jymVt" />
    <node concept="2YIFZL" id="7YsZv8g1AKA" role="jymVt">
      <property role="TrG5h" value="notifySuccess" />
      <node concept="3clFbS" id="7YsZv8g1AKD" role="3clF47">
        <node concept="3clFbF" id="7YsZv8g1HB7" role="3cqZAp">
          <node concept="2YIFZM" id="7YsZv8g1HC3" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JOptionPane.showMessageDialog(java.awt.Component,java.lang.Object)" resolve="showMessageDialog" />
            <ref role="1Pybhc" to="dxuu:~JOptionPane" resolve="JOptionPane" />
            <node concept="10Nm6u" id="7YsZv8g1HI0" role="37wK5m" />
            <node concept="Xl_RD" id="7YsZv8g1HMk" role="37wK5m">
              <property role="Xl_RC" value="Success" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2NwTEkpSoIE" role="1B3o_S" />
      <node concept="3cqZAl" id="7YsZv8g1Fv_" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="7YsZv8g1lt_" role="1B3o_S" />
  </node>
</model>

