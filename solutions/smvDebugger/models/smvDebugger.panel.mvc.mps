<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b753fc44-bc7f-4810-b5a7-701b07c2b3e2(smvDebugger.panel.mvc)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
  </languages>
  <imports>
    <import index="c8ee" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.table(JDK/)" />
    <import index="fhh" ref="r:f4a915f7-fe0a-4d70-93d8-9a6c9b61418e(smvDebugger.panel)" />
    <import index="db" ref="r:00db3664-eaf5-4dfc-95d9-374394b19e04(smvDebugger.panel.items)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="8uw2" ref="r:e0a1abe3-ec88-452a-aca6-a40a81cc50a1(smvDebugger.model)" />
    <import index="gsia" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.event(JDK/)" />
    <import index="pkzj" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.profile(MPS.IDEA/)" />
    <import index="mnlj" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.beans(JDK/)" />
    <import index="nk3o" ref="r:85e05ab4-1ba9-4db5-96e9-56a84bd1472d(smvDebugger.common)" />
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
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
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
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT" />
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
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="4i$1wj9HQ9M">
    <property role="TrG5h" value="DebugPanelModel" />
    <node concept="Wx3nA" id="4i$1wj9NFTw" role="jymVt">
      <property role="TrG5h" value="FIRST_COLUMN_NAME" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wj9N$cE" role="1B3o_S" />
      <node concept="17QB3L" id="4i$1wj9NFQ4" role="1tU5fm" />
      <node concept="Xl_RD" id="4i$1wj9NIn7" role="33vP2m">
        <property role="Xl_RC" value="Components/States" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wj9TyHM" role="jymVt" />
    <node concept="312cEg" id="4i$1wj9YXuL" role="jymVt">
      <property role="TrG5h" value="stepModel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wj9YXl7" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wj9YXuB" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~SpinnerModel" resolve="SpinnerModel" />
      </node>
    </node>
    <node concept="312cEg" id="4i$1wjaf9yF" role="jymVt">
      <property role="TrG5h" value="globalTimeModel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjaf99z" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjafj5R" role="1tU5fm">
        <ref role="3uigEE" node="4i$1wjafcaV" resolve="GlobalTimeModel" />
      </node>
    </node>
    <node concept="312cEg" id="4i$1wj9I3JK" role="jymVt">
      <property role="TrG5h" value="dataModel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wj9HUkX" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wj9I3IT" role="1tU5fm">
        <ref role="3uigEE" to="c8ee:~TableModel" resolve="TableModel" />
      </node>
    </node>
    <node concept="312cEg" id="4i$1wjarwfG" role="jymVt">
      <property role="TrG5h" value="dataSelectionModel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wjarvsA" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjar_jh" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~ListSelectionModel" resolve="ListSelectionModel" />
      </node>
    </node>
    <node concept="312cEg" id="4i$1wj9OW2p" role="jymVt">
      <property role="TrG5h" value="dataScrollModel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4i$1wj9OQ4H" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wj9OW2f" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~BoundedRangeModel" resolve="BoundedRangeModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wj9I8SG" role="jymVt" />
    <node concept="3clFbW" id="4i$1wj9In5Q" role="jymVt">
      <node concept="3cqZAl" id="4i$1wj9In5R" role="3clF45" />
      <node concept="3clFbS" id="4i$1wj9In5T" role="3clF47">
        <node concept="3clFbF" id="4i$1wjaqQl4" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaqQvu" role="3clFbG">
            <node concept="2ShNRf" id="4i$1wjaqQ_M" role="37vLTx">
              <node concept="1pGfFk" id="4i$1wjaqRfJ" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~SpinnerListModel.&lt;init&gt;()" resolve="SpinnerListModel" />
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wjaqQl2" role="37vLTJ">
              <ref role="3cqZAo" node="4i$1wj9YXuL" resolve="stepModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjaqRs0" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaqR_$" role="3clFbG">
            <node concept="2ShNRf" id="4i$1wjaqREE" role="37vLTx">
              <node concept="HV5vD" id="4i$1wjaqS6M" role="2ShVmc">
                <ref role="HV5vE" node="4i$1wjafcaV" resolve="GlobalTimeModel" />
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wjaqRrY" role="37vLTJ">
              <ref role="3cqZAo" node="4i$1wjaf9yF" resolve="globalTimeModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wjar4Vv" role="3cqZAp" />
        <node concept="3clFbF" id="4i$1wjaqSnQ" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjaqSCt" role="3clFbG">
            <node concept="2ShNRf" id="4i$1wjaqSKg" role="37vLTx">
              <node concept="1pGfFk" id="4i$1wjaqTco" role="2ShVmc">
                <ref role="37wK5l" node="4i$1wjaqw7p" resolve="UneditableTableModel" />
                <node concept="2YIFZM" id="4i$1wjasMfr" role="37wK5m">
                  <ref role="1Pybhc" to="nk3o:1F2d4ZD$$te" resolve="ArrayUtils" />
                  <ref role="37wK5l" to="nk3o:4i$1wjasBMj" resolve="concat" />
                  <node concept="2OqwBi" id="4i$1wjasMfs" role="37wK5m">
                    <node concept="37vLTw" id="4i$1wjasMft" role="2Oq$k0">
                      <ref role="3cqZAo" node="4i$1wj9Inba" resolve="counterexample" />
                    </node>
                    <node concept="liA8E" id="4i$1wjasMfu" role="2OqNvi">
                      <ref role="37wK5l" to="8uw2:4i$1wjaa8Ec" resolve="getItems" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4i$1wjasNl_" role="37wK5m">
                    <node concept="37vLTw" id="4i$1wjasN9C" role="2Oq$k0">
                      <ref role="3cqZAo" node="4i$1wj9Inba" resolve="counterexample" />
                    </node>
                    <node concept="liA8E" id="4i$1wjasOpf" role="2OqNvi">
                      <ref role="37wK5l" to="8uw2:4i$1wjaad4G" resolve="getValues" />
                    </node>
                  </node>
                </node>
                <node concept="2YIFZM" id="4i$1wjasPSN" role="37wK5m">
                  <ref role="37wK5l" to="nk3o:1F2d4ZDxtyc" resolve="concat" />
                  <ref role="1Pybhc" to="nk3o:1F2d4ZD$$te" resolve="ArrayUtils" />
                  <node concept="37vLTw" id="4i$1wjasPSO" role="37wK5m">
                    <ref role="3cqZAo" node="4i$1wj9NFTw" resolve="FIRST_COLUMN_NAME" />
                  </node>
                  <node concept="2OqwBi" id="4i$1wjasRlG" role="37wK5m">
                    <node concept="37vLTw" id="4i$1wjasQTI" role="2Oq$k0">
                      <ref role="3cqZAo" node="4i$1wj9Inba" resolve="counterexample" />
                    </node>
                    <node concept="liA8E" id="4i$1wjasRSd" role="2OqNvi">
                      <ref role="37wK5l" to="8uw2:4i$1wjaaaHj" resolve="getStates" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wjaqSnO" role="37vLTJ">
              <ref role="3cqZAo" node="4i$1wj9I3JK" resolve="dataModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjar$go" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjar$uF" role="3clFbG">
            <node concept="2ShNRf" id="4i$1wjar$Cr" role="37vLTx">
              <node concept="1pGfFk" id="4i$1wjar_5v" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~DefaultListSelectionModel.&lt;init&gt;()" resolve="DefaultListSelectionModel" />
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wjar$gm" role="37vLTJ">
              <ref role="3cqZAo" node="4i$1wjarwfG" resolve="dataSelectionModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjar_sy" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjar_sz" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjar_VP" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjarwfG" resolve="dataSelectionModel" />
            </node>
            <node concept="liA8E" id="4i$1wjar_s_" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~ListSelectionModel.setSelectionMode(int)" resolve="setSelectionMode" />
              <node concept="10M0yZ" id="4i$1wjar_sA" role="37wK5m">
                <ref role="3cqZAo" to="dxuu:~ListSelectionModel.SINGLE_SELECTION" resolve="SINGLE_SELECTION" />
                <ref role="1PxDUh" to="dxuu:~ListSelectionModel" resolve="ListSelectionModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4i$1wjar$2q" role="3cqZAp" />
        <node concept="3clFbF" id="4i$1wj9OWaW" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wj9OWhM" role="3clFbG">
            <node concept="2ShNRf" id="4i$1wj9OWl3" role="37vLTx">
              <node concept="1pGfFk" id="4i$1wj9OX2o" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~DefaultBoundedRangeModel.&lt;init&gt;()" resolve="DefaultBoundedRangeModel" />
              </node>
            </node>
            <node concept="37vLTw" id="4i$1wj9OWaU" role="37vLTJ">
              <ref role="3cqZAo" node="4i$1wj9OW2p" resolve="dataScrollModel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wj9In6i" role="1B3o_S" />
      <node concept="37vLTG" id="4i$1wj9Inba" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="counterexample" />
        <node concept="3uibUv" id="4i$1wj9Ing5" role="1tU5fm">
          <ref role="3uigEE" to="8uw2:1F2d4ZDwe1f" resolve="Counterexample" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wj9Isgn" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjarf_C" role="jymVt">
      <property role="TrG5h" value="getStepModel" />
      <node concept="3clFbS" id="4i$1wjarf_F" role="3clF47">
        <node concept="3cpWs6" id="4i$1wjargTS" role="3cqZAp">
          <node concept="37vLTw" id="4i$1wjarh67" role="3cqZAk">
            <ref role="3cqZAo" node="4i$1wj9YXuL" resolve="stepModel" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjarfkY" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjarf_r" role="3clF45">
        <ref role="3uigEE" to="dxuu:~SpinnerModel" resolve="SpinnerModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjareVR" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjafbTQ" role="jymVt">
      <property role="TrG5h" value="getGlobalTimeModel" />
      <node concept="3clFbS" id="4i$1wjafbTT" role="3clF47">
        <node concept="3cpWs6" id="4i$1wjafc8j" role="3cqZAp">
          <node concept="37vLTw" id="4i$1wjafjG7" role="3cqZAk">
            <ref role="3cqZAo" node="4i$1wjaf9yF" resolve="globalTimeModel" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjafbxP" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjafj9U" role="3clF45">
        <ref role="3uigEE" node="4i$1wjafcaV" resolve="GlobalTimeModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjareyP" role="jymVt" />
    <node concept="3clFb_" id="4i$1wj9Iss7" role="jymVt">
      <property role="TrG5h" value="getDataModel" />
      <node concept="3clFbS" id="4i$1wj9Issa" role="3clF47">
        <node concept="3cpWs6" id="4i$1wj9IsxU" role="3cqZAp">
          <node concept="37vLTw" id="4i$1wj9IsQc" role="3cqZAk">
            <ref role="3cqZAo" node="4i$1wj9I3JK" resolve="dataModel" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wj9Islu" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wj9IsrW" role="3clF45">
        <ref role="3uigEE" to="c8ee:~TableModel" resolve="TableModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wj9Q1Jq" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjarAoF" role="jymVt">
      <property role="TrG5h" value="getDataSelectionModel" />
      <node concept="3clFbS" id="4i$1wjarAoG" role="3clF47">
        <node concept="3cpWs6" id="4i$1wjarAoH" role="3cqZAp">
          <node concept="37vLTw" id="4i$1wjarCkz" role="3cqZAk">
            <ref role="3cqZAo" node="4i$1wjarwfG" resolve="dataSelectionModel" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjarAoJ" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjarAoK" role="3clF45">
        <ref role="3uigEE" to="dxuu:~ListSelectionModel" resolve="ListSelectionModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wj9S83C" role="jymVt" />
    <node concept="3clFb_" id="4i$1wj9Q20b" role="jymVt">
      <property role="TrG5h" value="getDataScrollModel" />
      <node concept="3clFbS" id="4i$1wj9Q20e" role="3clF47">
        <node concept="3cpWs6" id="4i$1wj9Q25j" role="3cqZAp">
          <node concept="37vLTw" id="4i$1wj9Q2cg" role="3cqZAk">
            <ref role="3cqZAo" node="4i$1wj9OW2p" resolve="dataScrollModel" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wj9Q1O6" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wj9Q200" role="3clF45">
        <ref role="3uigEE" to="dxuu:~BoundedRangeModel" resolve="BoundedRangeModel" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4i$1wj9HQ9N" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4i$1wj9IyJm">
    <property role="TrG5h" value="UneditableTableModel" />
    <node concept="3clFbW" id="4i$1wjaqw7p" role="jymVt">
      <node concept="3cqZAl" id="4i$1wjaqw7q" role="3clF45" />
      <node concept="3clFbS" id="4i$1wjaqw7s" role="3clF47">
        <node concept="XkiVB" id="4i$1wjaqLpY" role="3cqZAp">
          <ref role="37wK5l" to="c8ee:~DefaultTableModel.&lt;init&gt;(java.lang.Object[][],java.lang.Object[])" resolve="DefaultTableModel" />
          <node concept="37vLTw" id="4i$1wjaqL_V" role="37wK5m">
            <ref role="3cqZAo" node="4i$1wjaqwei" resolve="data" />
          </node>
          <node concept="37vLTw" id="4i$1wjaqLRR" role="37wK5m">
            <ref role="3cqZAo" node="4i$1wjaq$UD" resolve="headers" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjaqvSV" role="1B3o_S" />
      <node concept="37vLTG" id="4i$1wjaqwei" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="data" />
        <node concept="10Q1$e" id="4i$1wjaq$QD" role="1tU5fm">
          <node concept="10Q1$e" id="4i$1wjaq$PT" role="10Q1$1">
            <node concept="3uibUv" id="4i$1wjaq$ME" role="10Q1$1">
              <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4i$1wjaq$UD" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="headers" />
        <node concept="10Q1$e" id="4i$1wjaqLap" role="1tU5fm">
          <node concept="3uibUv" id="4i$1wjaqL7M" role="10Q1$1">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjaqvMg" role="jymVt" />
    <node concept="3clFb_" id="4i$1wj9IziY" role="jymVt">
      <property role="TrG5h" value="isCellEditable" />
      <node concept="3clFbS" id="4i$1wj9Izj1" role="3clF47">
        <node concept="3cpWs6" id="4i$1wj9IzWM" role="3cqZAp">
          <node concept="3clFbT" id="4i$1wj9IzXL" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wj9IyLA" role="1B3o_S" />
      <node concept="10P_77" id="4i$1wj9Izjv" role="3clF45" />
      <node concept="37vLTG" id="4i$1wj9Izn1" role="3clF46">
        <property role="TrG5h" value="rowIndex" />
        <property role="3TUv4t" value="true" />
        <node concept="10Oyi0" id="4i$1wj9Izn0" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4i$1wj9IznN" role="3clF46">
        <property role="TrG5h" value="columnIndex" />
        <property role="3TUv4t" value="true" />
        <node concept="10Oyi0" id="4i$1wj9Izqg" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="4i$1wj9I$1k" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4i$1wj9IyJn" role="1B3o_S" />
    <node concept="3uibUv" id="4i$1wj9IyL4" role="1zkMxy">
      <ref role="3uigEE" to="c8ee:~DefaultTableModel" resolve="DefaultTableModel" />
    </node>
  </node>
  <node concept="3HP615" id="4i$1wj9HYbK">
    <property role="TrG5h" value="DebugPanelMVCItem" />
    <node concept="3clFb_" id="4i$1wj9I3hf" role="jymVt">
      <property role="TrG5h" value="setModel" />
      <node concept="3clFbS" id="4i$1wj9I3hi" role="3clF47" />
      <node concept="3Tm1VV" id="4i$1wj9I3hj" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wj9I3gw" role="3clF45" />
      <node concept="37vLTG" id="4i$1wj9I3mM" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="4i$1wj9I3mL" role="1tU5fm">
          <ref role="3uigEE" node="4i$1wj9HQ9M" resolve="DebugPanelModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wj9I3nr" role="jymVt" />
    <node concept="3clFb_" id="4i$1wj9I3$W" role="jymVt">
      <property role="TrG5h" value="initView" />
      <node concept="3clFbS" id="4i$1wj9I3$Z" role="3clF47" />
      <node concept="3Tm1VV" id="4i$1wj9I3_0" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wj9I3$B" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4i$1wj9I3_u" role="jymVt" />
    <node concept="3clFb_" id="4i$1wj9I3CL" role="jymVt">
      <property role="TrG5h" value="initController" />
      <node concept="3clFbS" id="4i$1wj9I3CO" role="3clF47" />
      <node concept="3Tm1VV" id="4i$1wj9I3CP" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wj9I3Cm" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="4i$1wj9HYbL" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4i$1wjafcaV">
    <property role="TrG5h" value="GlobalTimeModel" />
    <node concept="Wx3nA" id="4i$1wjaff9a" role="jymVt">
      <property role="TrG5h" value="TIME" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4i$1wjafeXZ" role="1B3o_S" />
      <node concept="17QB3L" id="4i$1wjaff8S" role="1tU5fm" />
      <node concept="Xl_RD" id="4i$1wjaffsx" role="33vP2m">
        <property role="Xl_RC" value="time" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjafeSY" role="jymVt" />
    <node concept="312cEg" id="4i$1wjafci_" role="jymVt">
      <property role="TrG5h" value="propertyChangeSupport" />
      <node concept="3Tm6S6" id="4i$1wjafcel" role="1B3o_S" />
      <node concept="3uibUv" id="4i$1wjafciq" role="1tU5fm">
        <ref role="3uigEE" to="gsia:~SwingPropertyChangeSupport" resolve="SwingPropertyChangeSupport" />
      </node>
      <node concept="2ShNRf" id="4i$1wjafclP" role="33vP2m">
        <node concept="1pGfFk" id="4i$1wjafcKq" role="2ShVmc">
          <ref role="37wK5l" to="gsia:~SwingPropertyChangeSupport.&lt;init&gt;(java.lang.Object)" resolve="SwingPropertyChangeSupport" />
          <node concept="Xjq3P" id="4i$1wjafcNs" role="37wK5m" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4i$1wjafcVD" role="jymVt">
      <property role="TrG5h" value="time" />
      <node concept="3Tm6S6" id="4i$1wjafcSX" role="1B3o_S" />
      <node concept="17QB3L" id="4i$1wjafcVu" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="4i$1wjafcPR" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjafd3q" role="jymVt">
      <property role="TrG5h" value="getTime" />
      <node concept="3clFbS" id="4i$1wjafd3t" role="3clF47">
        <node concept="3cpWs6" id="4i$1wjafd6T" role="3cqZAp">
          <node concept="37vLTw" id="4i$1wjafdcx" role="3cqZAk">
            <ref role="3cqZAo" node="4i$1wjafcVD" resolve="time" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjafd1l" role="1B3o_S" />
      <node concept="17QB3L" id="4i$1wjafd3f" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4i$1wjafdeJ" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjafdnD" role="jymVt">
      <property role="TrG5h" value="setTime" />
      <node concept="3clFbS" id="4i$1wjafdnG" role="3clF47">
        <node concept="3cpWs8" id="4i$1wjafdzP" role="3cqZAp">
          <node concept="3cpWsn" id="4i$1wjafdzN" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="oldTime" />
            <node concept="17QB3L" id="4i$1wjafdAG" role="1tU5fm" />
            <node concept="2OqwBi" id="4i$1wjafdKh" role="33vP2m">
              <node concept="Xjq3P" id="4i$1wjafdEC" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wjafdN1" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wjafcVD" resolve="time" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjafe9F" role="3cqZAp">
          <node concept="37vLTI" id="4i$1wjafekd" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjafenp" role="37vLTx">
              <ref role="3cqZAo" node="4i$1wjafdrr" resolve="time" />
            </node>
            <node concept="2OqwBi" id="4i$1wjafegn" role="37vLTJ">
              <node concept="Xjq3P" id="4i$1wjafe9D" role="2Oq$k0" />
              <node concept="2OwXpG" id="4i$1wjafeiB" role="2OqNvi">
                <ref role="2Oxat5" node="4i$1wjafcVD" resolve="time" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4i$1wjafezi" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjafeIs" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjafezg" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjafci_" resolve="propertyChangeSupport" />
            </node>
            <node concept="liA8E" id="4i$1wjafeOp" role="2OqNvi">
              <ref role="37wK5l" to="mnlj:~PropertyChangeSupport.firePropertyChange(java.lang.String,java.lang.Object,java.lang.Object)" resolve="firePropertyChange" />
              <node concept="37vLTw" id="4i$1wjaffyo" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjaff9a" resolve="TIME" />
              </node>
              <node concept="37vLTw" id="4i$1wjaffHZ" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjafdzN" resolve="oldTime" />
              </node>
              <node concept="2OqwBi" id="4i$1wjafg5Q" role="37wK5m">
                <node concept="Xjq3P" id="4i$1wjaffYm" role="2Oq$k0" />
                <node concept="2OwXpG" id="4i$1wjafg9c" role="2OqNvi">
                  <ref role="2Oxat5" node="4i$1wjafcVD" resolve="time" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjafdi_" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wjafdnu" role="3clF45" />
      <node concept="37vLTG" id="4i$1wjafdrr" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="time" />
        <node concept="17QB3L" id="4i$1wjafdtC" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjafgfR" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjafgx2" role="jymVt">
      <property role="TrG5h" value="addPropertyChangeListener" />
      <node concept="3clFbS" id="4i$1wjafgx5" role="3clF47">
        <node concept="3clFbF" id="4i$1wjafhk9" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjafht4" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjafhk8" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjafci_" resolve="propertyChangeSupport" />
            </node>
            <node concept="liA8E" id="4i$1wjafhxt" role="2OqNvi">
              <ref role="37wK5l" to="mnlj:~PropertyChangeSupport.addPropertyChangeListener(java.beans.PropertyChangeListener)" resolve="addPropertyChangeListener" />
              <node concept="37vLTw" id="4i$1wjafhEb" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjafgKQ" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjafgqH" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wjafgwH" role="3clF45" />
      <node concept="37vLTG" id="4i$1wjafgKQ" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="4i$1wjafgZW" role="1tU5fm">
          <ref role="3uigEE" to="mnlj:~PropertyChangeListener" resolve="PropertyChangeListener" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4i$1wjafhGz" role="jymVt" />
    <node concept="3clFb_" id="4i$1wjafi7c" role="jymVt">
      <property role="TrG5h" value="addPropertyChangeListener" />
      <node concept="3clFbS" id="4i$1wjafi7d" role="3clF47">
        <node concept="3clFbF" id="4i$1wjafi7e" role="3cqZAp">
          <node concept="2OqwBi" id="4i$1wjafi7f" role="3clFbG">
            <node concept="37vLTw" id="4i$1wjafi7g" role="2Oq$k0">
              <ref role="3cqZAo" node="4i$1wjafci_" resolve="propertyChangeSupport" />
            </node>
            <node concept="liA8E" id="4i$1wjafi7h" role="2OqNvi">
              <ref role="37wK5l" to="mnlj:~PropertyChangeSupport.addPropertyChangeListener(java.lang.String,java.beans.PropertyChangeListener)" resolve="addPropertyChangeListener" />
              <node concept="37vLTw" id="4i$1wjafizK" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjafife" resolve="propertyName" />
              </node>
              <node concept="37vLTw" id="4i$1wjafiNO" role="37wK5m">
                <ref role="3cqZAo" node="4i$1wjafi7l" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4i$1wjafi7j" role="1B3o_S" />
      <node concept="3cqZAl" id="4i$1wjafi7k" role="3clF45" />
      <node concept="37vLTG" id="4i$1wjafife" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="propertyName" />
        <node concept="17QB3L" id="4i$1wjafilV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4i$1wjafi7l" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="4i$1wjafi7m" role="1tU5fm">
          <ref role="3uigEE" to="mnlj:~PropertyChangeListener" resolve="PropertyChangeListener" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4i$1wjafcaW" role="1B3o_S" />
  </node>
</model>

