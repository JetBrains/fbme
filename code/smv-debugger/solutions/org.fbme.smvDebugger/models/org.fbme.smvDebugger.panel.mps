<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f4a915f7-fe0a-4d70-93d8-9a6c9b61418e(org.fbme.smvDebugger.panel)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="embu" ref="r:dad30b8e-b9b3-4f8e-9c3f-f1962e49c61c(org.fbme.smvDebugger.visualization)" />
    <import index="o0x9" ref="r:b753fc44-bc7f-4810-b5a7-701b07c2b3e2(org.fbme.smvDebugger.panel.mvc)" />
    <import index="db" ref="r:00db3664-eaf5-4dfc-95d9-374394b19e04(org.fbme.smvDebugger.panel.items)" />
    <import index="8uw2" ref="r:e0a1abe3-ec88-452a-aca6-a40a81cc50a1(org.fbme.smvDebugger.model)" />
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
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4i$1wj9InXM">
    <property role="TrG5h" value="DebugPanelService" />
    <node concept="312cEg" id="4i$1wjaK518" role="jymVt">
      <property role="TrG5h" value="project" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjaK4Na" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjaK50H" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaK54d" role="jymVt" />
    <node concept="3clFbW" id="4i$1wjaK5DW" role="jymVt">
      <node concept="3cqZAl" id="4i$1wjaK5DX" role="3clF45" />
      <node concept="3clFbS" id="4i$1wjaK5DZ" role="3clF47">
        <node concept="3clFbF" id="4i$1wjaK5Xj" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaK6DY" role="3clFbG">
            <node concept="2OqwBi" id="4i$1wjaK66j" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wjaK5Xi" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wjaK6dM" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wjaK518" resolve="project" />
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wjaK7fy" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wjaK5K2" resolve="project" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjaK5dn" role="1B3o_S" />
      <node concept="37vLTG" id="4i$1wjaK5K2" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="4i$1wjaK5MM" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaK4FG" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjaeAqJ" role="jymVt">
      <property role="TrG5h" value="run" />
      <node concept="3clFbS" id="4i$1wjaeAqL" role="3clF47">
        <node concept="3cpWs8" id="4i$1wjaeAqM" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjaeAqN" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="backtraceService" />
            <node concept="3uibUv" id="4i$1wjaeAqO" role="1tU5fm">
              <ref role="3uigEE" to="embu:7AO$Lops$Bz" resolve="BacktraceService" />
            </node>
            <node concept="2ShNRf" id="4i$1wjaeAqP" role="33vP2m">
              <node concept="1pGfFk" id="4i$1wjaeAqQ" role="2ShVmc">
                <ref role="37wK5l" to="embu:7AO$Lops__3" resolve="BacktraceService" />
                <node concept="37vLTw" id="4i$1wjaeAqR" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaK518" resolve="project" />
                </node>
                <node concept="37vLTw" id="4i$1wjaeAqS" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaeAry" resolve="compositeFb" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4i$1wjaeAqT" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjaeAqU" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="systemHighlighter" />
            <node concept="3uibUv" id="4i$1wjaeAqV" role="1tU5fm">
              <ref role="3uigEE" to="embu:2UEABl_y236" resolve="SystemHighlighter" />
            </node>
            <node concept="2ShNRf" id="4i$1wjaeAqW" role="33vP2m">
              <node concept="1pGfFk" id="4i$1wjaeAqX" role="2ShVmc">
                <ref role="37wK5l" to="embu:2UEABl_yaMT" resolve="SystemHighlighter" />
                <node concept="37vLTw" id="4i$1wjaeAqY" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaK518" resolve="project" />
                </node>
                <node concept="37vLTw" id="4i$1wjaeAqZ" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaeAry" resolve="compositeFb" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4i$1wjaeAr0" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjaeAr1" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="4i$1wjaeAr2" role="1tU5fm">
              <ref role="3uigEE" to="o0x9:4i$1wj9HQ9M" resolve="DebugPanelModel" />
            </node>
            <node concept="2ShNRf" id="4i$1wjaeAr3" role="33vP2m">
              <node concept="1pGfFk" id="4i$1wjaeAr4" role="2ShVmc">
                <ref role="37wK5l" to="o0x9:4i$1wj9In5Q" resolve="DebugPanelModel" />
                <node concept="37vLTw" id="4i$1wjaeAr5" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaeAr$" resolve="counterexample" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wjaeAr6" role="3cqZAp" />
        <node concept="3cpWs8" id="4i$1wjaeAr7" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjaeAr8" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="debugPanel" />
            <node concept="3uibUv" id="4i$1wjaeAr9" role="1tU5fm">
              <ref role="3uigEE" to="db:2iJMYskfEGs" resolve="DebugPanel" />
            </node>
            <node concept="2ShNRf" id="4i$1wjaeAra" role="33vP2m">
              <node concept="1pGfFk" id="4i$1wjaeArb" role="2ShVmc">
                <ref role="37wK5l" to="db:4i$1wja5m6_" resolve="DebugPanel" />
                <node concept="37vLTw" id="4i$1wjapSrv" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaeAr$" resolve="counterexample" />
                </node>
                <node concept="37vLTw" id="4i$1wjapSQ9" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaeAqU" resolve="systemHighlighter" />
                </node>
                <node concept="37vLTw" id="4i$1wjaEA0M" role="37wK5m">
                  <ref role="3cqZAo" node="4i$1wjaeAqN" resolve="backtraceService" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaeAre" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjaeArf" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaeArg" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjaeAr8" resolve="debugPanel" />
            </node>
            <node concept="liA8E" id="4i$1wjaeArh" role="2OqNvi">
              <ref role="37wK5l" to="db:4i$1wj9I3hf" resolve="setPanelModel" />
              <node concept="37vLTw" id="4i$1wjaeAri" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjaeAr1" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaeArj" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjaeArk" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaeArl" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjaeAr8" resolve="debugPanel" />
            </node>
            <node concept="liA8E" id="4i$1wjaeArm" role="2OqNvi">
              <ref role="37wK5l" to="db:4i$1wj9I3$W" resolve="initView" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaeArn" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjaeAro" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjaeArp" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjaeAr8" resolve="debugPanel" />
            </node>
            <node concept="liA8E" id="4i$1wjaeArq" role="2OqNvi">
              <ref role="37wK5l" to="db:4i$1wj9I3CL" resolve="initController" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1mZ5x_OwSGv" role="3cqZAp">
          <node concept="2OqwBi" id="1mZ5x_OwTkw" role="3clFbG">
            <node concept="2OqwBi" id="1mZ5x_OwSX8" role="2Oq$k0">
              <node concept="37vLTw" id="1mZ5x_OwSGt" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaeAr1" resolve="model" />
              </node>
              <node concept="liA8E" id="1mZ5x_OwTfF" role="2OqNvi">
                <ref role="37wK5l" to="o0x9:4i$1wja_eu2" resolve="getStepIndexModel" />
              </node>
            </node>
            <node concept="liA8E" id="1mZ5x_OwTy_" role="2OqNvi">
              <ref role="37wK5l" to="o0x9:4i$1wja$SRl" resolve="setStepIndex" />
              <node concept="3cmrfG" id="1mZ5x_OwTKa" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1mZ5x_OOEJP" role="3cqZAp">
          <node concept="2OqwBi" id="1mZ5x_OOEJQ" role="3clFbG">
            <node concept="2OqwBi" id="1mZ5x_OOEJR" role="2Oq$k0">
              <node concept="37vLTw" id="1mZ5x_OOEJS" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaeAr1" resolve="model" />
              </node>
              <node concept="liA8E" id="1mZ5x_OOFbm" role="2OqNvi">
                <ref role="37wK5l" to="o0x9:4i$1wjafbTQ" resolve="getGlobalTimeModel" />
              </node>
            </node>
            <node concept="liA8E" id="1mZ5x_OOEJU" role="2OqNvi">
              <ref role="37wK5l" to="o0x9:4i$1wjafdnD" resolve="setTime" />
              <node concept="2OqwBi" id="1mZ5x_OOFOz" role="37wK5m">
                <node concept="37vLTw" id="1mZ5x_OOFF3" role="2Oq$k0">
                  <ref role="3cqZAo" node="4i$1wjaeAr$" resolve="counterexample" />
                </node>
                <node concept="liA8E" id="1mZ5x_OOG0S" role="2OqNvi">
                  <ref role="37wK5l" to="8uw2:4i$1wjayE$v" resolve="timeOf" />
                  <node concept="3cmrfG" id="1mZ5x_OOGft" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1mZ5x_OOE$F" role="3cqZAp" />
        <node concept="3cpWs8" id="4i$1wja$2q9" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wja$2q7" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="itemValues" />
            <node concept="3uibUv" id="4i$1wja$3z6" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="4i$1wja$5GB" role="11_B2D">
                <ref role="3uigEE" to="8uw2:4i$1wjaiVt2" resolve="SystemItemValue" />
              </node>
            </node>
            <node concept="2OqwBi" id="4i$1wjazTvS" role="33vP2m">
              <node concept="37vLTw" id="4i$1wjazSIU" role="2Oq$k0">
                <ref role="3cqZAo" node="4i$1wjaeAr$" resolve="counterexample" />
              </node>
              <node concept="liA8E" id="4i$1wjazUgp" role="2OqNvi">
                <ref role="37wK5l" to="8uw2:4i$1wjazxJC" resolve="getItemValues" />
                <node concept="3cmrfG" id="1mZ5x_OzZaX" role="37wK5m">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wja$pfm" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wja$q4K" role="3clFbG">
            <node concept="37vLTw" id="4i$1wja$pfk" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjaeAqU" resolve="systemHighlighter" />
            </node>
            <node concept="liA8E" id="4i$1wja$rMy" role="2OqNvi">
              <ref role="37wK5l" to="embu:2UEABl_yHc0" resolve="highlight" />
              <node concept="37vLTw" id="4i$1wja$sIn" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wja$2q7" resolve="itemValues" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wjaeArr" role="3cqZAp" />
        <node concept="3cpWs6" id="4i$1wjaeArs" role="3cqZAp">
          <node concept="37vLTw" id="4i$1wjaeArt" role="3cqZAk">
            <ref role="3cqZAo" node="4i$1wjaeAr8" resolve="debugPanel" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4i$1wjaeAru" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
      </node>
      <node concept="37vLTG" id="4i$1wjaeAry" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="compositeFb" />
        <node concept="3uibUv" id="4i$1wjaeArz" role="1tU5fm">
          <ref role="3uigEE" to="cwd8:~CompositeFBTypeDeclaration" resolve="CompositeFBTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="4i$1wjaeAr$" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="counterexample" />
        <node concept="3uibUv" id="4i$1wjaeAr_" role="1tU5fm">
          <ref role="3uigEE" to="8uw2:1F2d4ZDwe1f" resolve="Counterexample" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjaeArv" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="4i$1wj9InXN" role="1B3o_S" />
  </node>
</model>

