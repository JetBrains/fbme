<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7b1e9d17-e026-472f-bc13-715bbedb05ab(org.fbme.lib.iec61499.descriptors)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="2xsi" ref="r:65444cdf-4c94-4902-99af-ca11b363595e(org.fbme.lib.iec61499.declarations)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="tphl" ref="r:633df809-762d-4f16-bc5b-7387c85c4bd1(org.fbme.lib.iec61499.fbnetwork)" />
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
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
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
  <node concept="312cEu" id="31Fn7oZIaMe">
    <property role="TrG5h" value="SocketType" />
    <node concept="2tJIrI" id="1R4IoyQJBv8" role="jymVt" />
    <node concept="312cEg" id="1R4IoyQJBvW" role="jymVt">
      <property role="TrG5h" value="myAdapter" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyQJBvv" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJBvO" role="1tU5fm">
        <ref role="3uigEE" to="2xsi:1R4IoyQ$ZBc" resolve="AdapterTypeDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQJBwd" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQJBx2" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQJBx3" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQJBx4" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQJBx6" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJBxa" role="3cqZAp">
          <node concept="37vLTI" id="1R4IoyQJBxc" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQJBxj" role="37vLTx">
              <ref role="3cqZAo" node="1R4IoyQJBx9" resolve="adapter" />
            </node>
            <node concept="37vLTw" id="1R4IoyQJB$t" role="37vLTJ">
              <ref role="3cqZAo" node="1R4IoyQJBvW" resolve="myAdapter" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQJBx9" role="3clF46">
        <property role="TrG5h" value="adapter" />
        <node concept="3uibUv" id="1R4IoyQJBx8" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:1R4IoyQ$ZBc" resolve="AdapterTypeDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQJCcL" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQJBEY" role="jymVt">
      <property role="TrG5h" value="getTypeName" />
      <node concept="3Tm1VV" id="1R4IoyQJBF0" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJBF1" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="1R4IoyQJBF2" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJEUD" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQJFdr" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQJEUA" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJBvW" resolve="myAdapter" />
            </node>
            <node concept="liA8E" id="1R4IoyQJFw1" role="2OqNvi">
              <ref role="37wK5l" to="2xsi:31Fn7oZJ83i" resolve="getTypeName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJBF3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQJCqq" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQJBF6" role="jymVt">
      <property role="TrG5h" value="getEventInputPorts" />
      <node concept="3Tm1VV" id="1R4IoyQJBF8" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJBF9" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQJBFa" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyQJBFb" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJFKE" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQJG3B" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQJFKB" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJBvW" resolve="myAdapter" />
            </node>
            <node concept="liA8E" id="1R4IoyQJGp5" role="2OqNvi">
              <ref role="37wK5l" node="1HEL0zVYKgq" resolve="getEventInputPorts" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJBFc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQJCC4" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQJBFf" role="jymVt">
      <property role="TrG5h" value="getEventOutputPorts" />
      <node concept="3Tm1VV" id="1R4IoyQJBFh" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJBFi" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQJBFj" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyQJBFk" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJGC$" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQJGC_" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQJGCA" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJBvW" resolve="myAdapter" />
            </node>
            <node concept="liA8E" id="1R4IoyQJGCB" role="2OqNvi">
              <ref role="37wK5l" node="1HEL0zVYKjD" resolve="getEventOutputPorts" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJBFl" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQJCPJ" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQJBFo" role="jymVt">
      <property role="TrG5h" value="getDataInputPorts" />
      <node concept="3Tm1VV" id="1R4IoyQJBFq" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJBFr" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQJBFs" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyQJBFt" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJH2g" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQJH2h" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQJH2i" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJBvW" resolve="myAdapter" />
            </node>
            <node concept="liA8E" id="1R4IoyQJH2j" role="2OqNvi">
              <ref role="37wK5l" node="1HEL0zVYNd7" resolve="getDataInputPorts" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJBFu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1R4IoyQJBFx" role="jymVt">
      <property role="TrG5h" value="getDataOutputPorts" />
      <node concept="3Tm1VV" id="1R4IoyQJBFz" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJBF$" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQJBF_" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyQJBFA" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJHym" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQJHyn" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQJHyo" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJBvW" resolve="myAdapter" />
            </node>
            <node concept="liA8E" id="1R4IoyQJHyp" role="2OqNvi">
              <ref role="37wK5l" node="1HEL0zVYNdd" resolve="getDataOutputPorts" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJBFB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1R4IoyQJBFE" role="jymVt">
      <property role="TrG5h" value="getSocketPorts" />
      <node concept="3Tm1VV" id="1R4IoyQJBFG" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJBFH" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQJBFI" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyQJBFJ" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJHX5" role="3cqZAp">
          <node concept="2YIFZM" id="1R4IoyQJHYS" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="31Fn7oZJ6R5" role="3PaCim">
              <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJBFK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1R4IoyQJBFN" role="jymVt">
      <property role="TrG5h" value="getPlugPorts" />
      <node concept="3Tm1VV" id="1R4IoyQJBFP" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJBFQ" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQJBFR" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyQJBFS" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJI2Y" role="3cqZAp">
          <node concept="2YIFZM" id="1R4IoyQJI2Z" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="31Fn7oZJ717" role="3PaCim">
              <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJBFT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1R4IoyQJBFW" role="jymVt">
      <property role="TrG5h" value="getAssociatedVariablesForInputEvent" />
      <node concept="3Tm1VV" id="1R4IoyQJBFY" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJBFZ" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQJBG0" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQJBG1" role="3clF46">
        <property role="TrG5h" value="eventNumber" />
        <node concept="10Oyi0" id="1R4IoyQJBG2" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1R4IoyQJBG3" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJI7T" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQJIuC" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQJI7Q" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJBvW" resolve="myAdapter" />
            </node>
            <node concept="liA8E" id="1R4IoyQJLQM" role="2OqNvi">
              <ref role="37wK5l" node="7qPnRGGphs$" resolve="getAssociatedVariablesForInputEvent" />
              <node concept="37vLTw" id="1R4IoyQJM3O" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyQJBG1" resolve="eventNumber" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJBG4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1R4IoyQJBG7" role="jymVt">
      <property role="TrG5h" value="getAssociatedVariablesForOutputEvent" />
      <node concept="3Tm1VV" id="1R4IoyQJBG9" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJBGa" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQJBGb" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQJBGc" role="3clF46">
        <property role="TrG5h" value="eventNumber" />
        <node concept="10Oyi0" id="1R4IoyQJBGd" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1R4IoyQJBGe" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJMgN" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQJMgO" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQJMgP" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJBvW" resolve="myAdapter" />
            </node>
            <node concept="liA8E" id="1R4IoyQJMgQ" role="2OqNvi">
              <ref role="37wK5l" node="7qPnRGGpolU" resolve="getAssociatedVariablesForOutputEvent" />
              <node concept="37vLTw" id="1R4IoyQJMgR" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyQJBGc" resolve="eventNumber" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJBGf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZJmqA" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZJm4V" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3Tm1VV" id="31Fn7oZJm4W" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZK9LL" role="3clF45">
        <ref role="3uigEE" to="2xsi:31Fn7oZJ7qm" resolve="NamedDeclaration" />
      </node>
      <node concept="2AHcQZ" id="31Fn7oZJm4Y" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="31Fn7oZJm4Z" role="3clF47">
        <node concept="3clFbF" id="31Fn7oZJm50" role="3cqZAp">
          <node concept="37vLTw" id="31Fn7oZJm51" role="3clFbG">
            <ref role="3cqZAo" node="1R4IoyQJBvW" resolve="myAdapter" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="31Fn7oZJm52" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="31Fn7oZIaMf" role="1B3o_S" />
    <node concept="3uibUv" id="31Fn7oZJ3y7" role="EKbjA">
      <ref role="3uigEE" node="1R4IoyQ$Zv8" resolve="FBTypeDescriptor" />
    </node>
  </node>
  <node concept="3HP615" id="2SU8oJdIhW2">
    <property role="TrG5h" value="ResourceTypeDescriptor" />
    <node concept="2tJIrI" id="2SU8oJdIhWW" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdIhXh" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3clFbS" id="2SU8oJdIhXk" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdIhXl" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdIhX6" role="3clF45">
        <ref role="3uigEE" to="2xsi:2SU8oJdIdfg" resolve="ResourceTypeDeclaration" />
      </node>
      <node concept="2AHcQZ" id="3MncU7wPolM" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPogN" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPoha" role="jymVt">
      <property role="TrG5h" value="getTypeName" />
      <node concept="3clFbS" id="3MncU7wPohd" role="3clF47" />
      <node concept="3Tm1VV" id="3MncU7wPohe" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPogY" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="3MncU7wPokT" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3MncU7wPohX" role="jymVt" />
    <node concept="3clFb_" id="3MncU7wPoit" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3clFbS" id="3MncU7wPoiw" role="3clF47" />
      <node concept="3Tm1VV" id="3MncU7wPoix" role="1B3o_S" />
      <node concept="3uibUv" id="3MncU7wPoi9" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="3MncU7wPoip" role="11_B2D">
          <ref role="3uigEE" node="2SU8oJdIdjZ" resolve="ParameterDescriptor" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3MncU7wPok9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2SU8oJdIhW3" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="1R4IoyQ$Zv8">
    <property role="TrG5h" value="FBTypeDescriptor" />
    <node concept="2tJIrI" id="1R4IoyQ$ZE$" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zVYRNg" role="jymVt">
      <property role="TrG5h" value="getTypeName" />
      <node concept="3clFbS" id="1HEL0zVYRNj" role="3clF47" />
      <node concept="3Tm1VV" id="1HEL0zVYRNk" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zVYRLM" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZHRfG" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZHRj4" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3clFbS" id="31Fn7oZHRj7" role="3clF47">
        <node concept="3clFbF" id="31Fn7oZI4qg" role="3cqZAp">
          <node concept="10Nm6u" id="31Fn7oZI4qd" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tm1VV" id="31Fn7oZHRj8" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZJYET" role="3clF45">
        <ref role="3uigEE" to="2xsi:31Fn7oZJ7qm" resolve="NamedDeclaration" />
      </node>
      <node concept="2AHcQZ" id="31Fn7oZJ7Fu" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQ$Zwe" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zVYKgq" role="jymVt">
      <property role="TrG5h" value="getEventInputPorts" />
      <node concept="3clFbS" id="1HEL0zVYKgt" role="3clF47" />
      <node concept="3Tm1VV" id="1HEL0zVYKgu" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zVYKeF" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1HEL0zWeiyG" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zVYKh0" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zVYKjD" role="jymVt">
      <property role="TrG5h" value="getEventOutputPorts" />
      <node concept="3clFbS" id="1HEL0zVYKjG" role="3clF47" />
      <node concept="3Tm1VV" id="1HEL0zVYKjH" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zVYKhW" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1HEL0zWei$P" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zVYKe6" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zVYNd7" role="jymVt">
      <property role="TrG5h" value="getDataInputPorts" />
      <node concept="3clFbS" id="1HEL0zVYNd8" role="3clF47" />
      <node concept="3Tm1VV" id="1HEL0zVYNd9" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zVYNda" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1HEL0zWei_M" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zVYNdc" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zVYNdd" role="jymVt">
      <property role="TrG5h" value="getDataOutputPorts" />
      <node concept="3clFbS" id="1HEL0zVYNde" role="3clF47" />
      <node concept="3Tm1VV" id="1HEL0zVYNdf" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zVYNdg" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1HEL0zWeiAR" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BNRs8C" role="jymVt" />
    <node concept="3clFb_" id="6LU90BNRs9B" role="jymVt">
      <property role="TrG5h" value="getSocketPorts" />
      <node concept="3clFbS" id="6LU90BNRs9C" role="3clF47" />
      <node concept="3Tm1VV" id="6LU90BNRs9D" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BNRs9E" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BNRs9F" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6LU90BNRs9G" role="jymVt" />
    <node concept="3clFb_" id="6LU90BNRs9H" role="jymVt">
      <property role="TrG5h" value="getPlugPorts" />
      <node concept="3clFbS" id="6LU90BNRs9I" role="3clF47" />
      <node concept="3Tm1VV" id="6LU90BNRs9J" role="1B3o_S" />
      <node concept="3uibUv" id="6LU90BNRs9K" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6LU90BNRs9L" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQwcdE" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGphs$" role="jymVt">
      <property role="TrG5h" value="getAssociatedVariablesForInputEvent" />
      <node concept="3clFbS" id="7qPnRGGphs_" role="3clF47" />
      <node concept="3Tm1VV" id="7qPnRGGphsA" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGGphsB" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7qPnRGGphsC" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGGphsD" role="3clF46">
        <property role="TrG5h" value="eventNumber" />
        <node concept="10Oyi0" id="7qPnRGGphsE" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGGpory" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGGpolU" role="jymVt">
      <property role="TrG5h" value="getAssociatedVariablesForOutputEvent" />
      <node concept="3clFbS" id="7qPnRGGpolV" role="3clF47" />
      <node concept="3Tm1VV" id="7qPnRGGpolW" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGGpolX" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7qPnRGGpolY" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGGpolZ" role="3clF46">
        <property role="TrG5h" value="eventNumber" />
        <node concept="10Oyi0" id="7qPnRGGpom0" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1R4IoyQ$Zv9" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="2SU8oJdIdgm">
    <property role="TrG5h" value="DeviceTypeDescriptor" />
    <node concept="2tJIrI" id="2SU8oJdIdhg" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdIdh_" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3clFbS" id="2SU8oJdIdhC" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdIdhD" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdIdhq" role="3clF45">
        <ref role="3uigEE" to="2xsi:2SU8oJdHTRH" resolve="DeviceTypeDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdIdiz" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdIdiU" role="jymVt">
      <property role="TrG5h" value="getTypeName" />
      <node concept="3clFbS" id="2SU8oJdIdiX" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdIdiY" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdIdiI" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdIdjN" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdIdmX" role="jymVt">
      <property role="TrG5h" value="getParameters" />
      <node concept="3clFbS" id="2SU8oJdIdn0" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdIdn1" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdIdmB" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2SU8oJdIdmR" role="11_B2D">
          <ref role="3uigEE" node="2SU8oJdIdjZ" resolve="ParameterDescriptor" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="2SU8oJdIdgn" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="31Fn7oZI77y">
    <property role="TrG5h" value="PlugType" />
    <node concept="2tJIrI" id="1R4IoyQJMLW" role="jymVt" />
    <node concept="312cEg" id="1R4IoyQJMLX" role="jymVt">
      <property role="TrG5h" value="myAdapter" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyQJMLY" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJMLZ" role="1tU5fm">
        <ref role="3uigEE" to="2xsi:1R4IoyQ$ZBc" resolve="AdapterTypeDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQJMM0" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQJMM3" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQJMM4" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQJMM5" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQJMM6" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJMM7" role="3cqZAp">
          <node concept="37vLTI" id="1R4IoyQJMM8" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQJMM9" role="37vLTx">
              <ref role="3cqZAo" node="1R4IoyQJMMb" resolve="adapter" />
            </node>
            <node concept="37vLTw" id="1R4IoyQJMMa" role="37vLTJ">
              <ref role="3cqZAo" node="1R4IoyQJMLX" resolve="myAdapter" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQJMMb" role="3clF46">
        <property role="TrG5h" value="adapter" />
        <node concept="3uibUv" id="1R4IoyQJMMc" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:1R4IoyQ$ZBc" resolve="AdapterTypeDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQJMMd" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQJMMe" role="jymVt">
      <property role="TrG5h" value="getTypeName" />
      <node concept="3Tm1VV" id="1R4IoyQJMMf" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJMMg" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="1R4IoyQJMMh" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJMMi" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQJMMj" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQJMMk" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJMLX" resolve="myAdapter" />
            </node>
            <node concept="liA8E" id="1R4IoyQJMMl" role="2OqNvi">
              <ref role="37wK5l" to="2xsi:31Fn7oZJ83i" resolve="getTypeName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJMMm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQJMMn" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQJMMo" role="jymVt">
      <property role="TrG5h" value="getEventInputPorts" />
      <node concept="3Tm1VV" id="1R4IoyQJMMp" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJMMq" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQJMMr" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyQJMMs" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJMMt" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQJMMu" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQJMMv" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJMLX" resolve="myAdapter" />
            </node>
            <node concept="liA8E" id="1R4IoyQJMMw" role="2OqNvi">
              <ref role="37wK5l" node="1HEL0zVYKjD" resolve="getEventOutputPorts" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJMMx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQJMMy" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQJMMz" role="jymVt">
      <property role="TrG5h" value="getEventOutputPorts" />
      <node concept="3Tm1VV" id="1R4IoyQJMM$" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJMM_" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQJMMA" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyQJMMB" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJMMC" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQJMMD" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQJMME" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJMLX" resolve="myAdapter" />
            </node>
            <node concept="liA8E" id="1R4IoyQJMMF" role="2OqNvi">
              <ref role="37wK5l" node="1HEL0zVYKgq" resolve="getEventInputPorts" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJMMG" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQJMMH" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQJMMI" role="jymVt">
      <property role="TrG5h" value="getDataInputPorts" />
      <node concept="3Tm1VV" id="1R4IoyQJMMJ" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJMMK" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQJMML" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyQJMMM" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJMMN" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQJMMO" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQJMMP" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJMLX" resolve="myAdapter" />
            </node>
            <node concept="liA8E" id="1R4IoyQJMMQ" role="2OqNvi">
              <ref role="37wK5l" node="1HEL0zVYNdd" resolve="getDataOutputPorts" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJMMR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1R4IoyQJMMS" role="jymVt">
      <property role="TrG5h" value="getDataOutputPorts" />
      <node concept="3Tm1VV" id="1R4IoyQJMMT" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJMMU" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQJMMV" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyQJMMW" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJMMX" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQJMMY" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQJMMZ" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJMLX" resolve="myAdapter" />
            </node>
            <node concept="liA8E" id="1R4IoyQJMN0" role="2OqNvi">
              <ref role="37wK5l" node="1HEL0zVYNd7" resolve="getDataInputPorts" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJMN1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1R4IoyQJMN2" role="jymVt">
      <property role="TrG5h" value="getSocketPorts" />
      <node concept="3Tm1VV" id="1R4IoyQJMN3" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJMN4" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQJMN5" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyQJMN6" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJMN7" role="3cqZAp">
          <node concept="2YIFZM" id="1R4IoyQJMN8" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="1R4IoyQJOSM" role="3PaCim">
              <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJMN9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1R4IoyQJMNa" role="jymVt">
      <property role="TrG5h" value="getPlugPorts" />
      <node concept="3Tm1VV" id="1R4IoyQJMNb" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJMNc" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQJMNd" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyQJMNe" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJMNf" role="3cqZAp">
          <node concept="2YIFZM" id="1R4IoyQJMNg" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <node concept="3uibUv" id="1R4IoyQJP6x" role="3PaCim">
              <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortDescriptor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJMNh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1R4IoyQJMNi" role="jymVt">
      <property role="TrG5h" value="getAssociatedVariablesForInputEvent" />
      <node concept="3Tm1VV" id="1R4IoyQJMNj" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJMNk" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQJMNl" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQJMNm" role="3clF46">
        <property role="TrG5h" value="eventNumber" />
        <node concept="10Oyi0" id="1R4IoyQJMNn" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1R4IoyQJMNo" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJMNp" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQJMNq" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQJMNr" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJMLX" resolve="myAdapter" />
            </node>
            <node concept="liA8E" id="1R4IoyQJMNs" role="2OqNvi">
              <ref role="37wK5l" node="7qPnRGGpolU" resolve="getAssociatedVariablesForOutputEvent" />
              <node concept="37vLTw" id="1R4IoyQJMNt" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyQJMNm" resolve="eventNumber" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJMNu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1R4IoyQJMNv" role="jymVt">
      <property role="TrG5h" value="getAssociatedVariablesForOutputEvent" />
      <node concept="3Tm1VV" id="1R4IoyQJMNw" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQJMNx" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQJMNy" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQJMNz" role="3clF46">
        <property role="TrG5h" value="eventNumber" />
        <node concept="10Oyi0" id="1R4IoyQJMN$" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1R4IoyQJMN_" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQJMNA" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQJMNB" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQJMNC" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQJMLX" resolve="myAdapter" />
            </node>
            <node concept="liA8E" id="1R4IoyQJMND" role="2OqNvi">
              <ref role="37wK5l" node="7qPnRGGphs$" resolve="getAssociatedVariablesForInputEvent" />
              <node concept="37vLTw" id="1R4IoyQJMNE" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyQJMNz" resolve="eventNumber" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQJMNF" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZI7aa" role="jymVt" />
    <node concept="3Tm1VV" id="31Fn7oZI77z" role="1B3o_S" />
    <node concept="3uibUv" id="31Fn7oZJ2YK" role="EKbjA">
      <ref role="3uigEE" node="1R4IoyQ$Zv8" resolve="FBTypeDescriptor" />
    </node>
    <node concept="3clFb_" id="31Fn7oZJlfs" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3Tm1VV" id="31Fn7oZJlfw" role="1B3o_S" />
      <node concept="3uibUv" id="31Fn7oZK9gY" role="3clF45">
        <ref role="3uigEE" to="2xsi:31Fn7oZJ7qm" resolve="NamedDeclaration" />
      </node>
      <node concept="2AHcQZ" id="31Fn7oZJlfy" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="31Fn7oZJlfz" role="3clF47">
        <node concept="3clFbF" id="31Fn7oZJl_s" role="3cqZAp">
          <node concept="37vLTw" id="31Fn7oZJl_p" role="3clFbG">
            <ref role="3cqZAo" node="1R4IoyQJMLX" resolve="myAdapter" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="31Fn7oZJlf$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="2SU8oJdIdjZ">
    <property role="TrG5h" value="ParameterDescriptor" />
    <node concept="2tJIrI" id="2SU8oJdIdkD" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdIdkZ" role="jymVt">
      <property role="TrG5h" value="getDeclaration" />
      <node concept="3clFbS" id="2SU8oJdIdl2" role="3clF47" />
      <node concept="3Tm1VV" id="2SU8oJdIdl3" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdIdkN" role="3clF45">
        <ref role="3uigEE" to="2xsi:2SU8oJdHUP3" resolve="ParameterDeclaration" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2SU8oJdIdk0" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1HEL0zWehtJ">
    <property role="TrG5h" value="FBPortDescriptor" />
    <node concept="2tJIrI" id="1HEL0zWehuR" role="jymVt" />
    <node concept="312cEg" id="1HEL0zWehwN" role="jymVt">
      <property role="TrG5h" value="myName" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1HEL0zWehvw" role="1B3o_S" />
      <node concept="17QB3L" id="1HEL0zWehwG" role="1tU5fm" />
      <node concept="2AHcQZ" id="1HEL0zWehx4" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="5fP$XwiO9Bb" role="jymVt" />
    <node concept="312cEg" id="5fP$XwiO9QJ" role="jymVt">
      <property role="TrG5h" value="myConnecitonKind" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5fP$XwiO9HZ" role="1B3o_S" />
      <node concept="3uibUv" id="5fP$XwiO9QB" role="1tU5fm">
        <ref role="3uigEE" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
      </node>
      <node concept="2AHcQZ" id="1R4IoyQw4ob" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3DiEZ8TNbqc" role="jymVt" />
    <node concept="312cEg" id="3DiEZ8TNbzv" role="jymVt">
      <property role="TrG5h" value="myPosition" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3DiEZ8TNbva" role="1B3o_S" />
      <node concept="10Oyi0" id="3DiEZ8TNbzq" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="3DiEZ8TNuO3" role="jymVt" />
    <node concept="312cEg" id="3DiEZ8TNv9A" role="jymVt">
      <property role="TrG5h" value="myIsInput" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3DiEZ8TNuZj" role="1B3o_S" />
      <node concept="10P_77" id="3DiEZ8TNv9x" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="31Fn7oZveAW" role="jymVt" />
    <node concept="312cEg" id="31Fn7oZvez9" role="jymVt">
      <property role="TrG5h" value="myIsValid" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="31Fn7oZveza" role="1B3o_S" />
      <node concept="10P_77" id="31Fn7oZvezb" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1HEL0zWehAg" role="jymVt" />
    <node concept="3Tm1VV" id="1HEL0zWehtK" role="1B3o_S" />
    <node concept="3clFbW" id="1HEL0zWehAJ" role="jymVt">
      <node concept="3cqZAl" id="1HEL0zWehAK" role="3clF45" />
      <node concept="3Tm1VV" id="1HEL0zWehAL" role="1B3o_S" />
      <node concept="3clFbS" id="1HEL0zWehAN" role="3clF47">
        <node concept="3clFbF" id="1HEL0zWehAR" role="3cqZAp">
          <node concept="37vLTI" id="1HEL0zWei00" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zWei3l" role="37vLTJ">
              <ref role="3cqZAo" node="1HEL0zWehwN" resolve="myName" />
            </node>
            <node concept="37vLTw" id="1HEL0zWehB0" role="37vLTx">
              <ref role="3cqZAo" node="1HEL0zWehAQ" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5fP$XwiOa4z" role="3cqZAp">
          <node concept="37vLTI" id="5fP$XwiOail" role="3clFbG">
            <node concept="37vLTw" id="5fP$XwiOatI" role="37vLTx">
              <ref role="3cqZAo" node="5fP$XwiO9Ux" resolve="connectionKind" />
            </node>
            <node concept="37vLTw" id="5fP$XwiOa4x" role="37vLTJ">
              <ref role="3cqZAo" node="5fP$XwiO9QJ" resolve="myConnecitonKind" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DiEZ8TNbIF" role="3cqZAp">
          <node concept="37vLTI" id="3DiEZ8TNfx1" role="3clFbG">
            <node concept="37vLTw" id="3DiEZ8TNfJs" role="37vLTx">
              <ref role="3cqZAo" node="3DiEZ8TNbBM" resolve="position" />
            </node>
            <node concept="37vLTw" id="3DiEZ8TNbQf" role="37vLTJ">
              <ref role="3cqZAo" node="3DiEZ8TNbzv" resolve="myPosition" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DiEZ8TNvss" role="3cqZAp">
          <node concept="37vLTI" id="3DiEZ8TNwmg" role="3clFbG">
            <node concept="37vLTw" id="3DiEZ8TNwrj" role="37vLTx">
              <ref role="3cqZAo" node="3DiEZ8TNuEy" resolve="isInput" />
            </node>
            <node concept="37vLTw" id="3DiEZ8TNvsq" role="37vLTJ">
              <ref role="3cqZAo" node="3DiEZ8TNv9A" resolve="myIsInput" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="31Fn7oZvePx" role="3cqZAp">
          <node concept="37vLTI" id="31Fn7oZvf9m" role="3clFbG">
            <node concept="37vLTw" id="31Fn7oZvfez" role="37vLTx">
              <ref role="3cqZAo" node="31Fn7oZverg" resolve="isValid" />
            </node>
            <node concept="37vLTw" id="31Fn7oZvePv" role="37vLTJ">
              <ref role="3cqZAo" node="31Fn7oZvez9" resolve="myIsValid" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1HEL0zWehAQ" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="1HEL0zWehAP" role="1tU5fm" />
        <node concept="2AHcQZ" id="3DiEZ8TNhr3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="5fP$XwiO9Ux" role="3clF46">
        <property role="TrG5h" value="connectionKind" />
        <node concept="3uibUv" id="5fP$XwiO9Y8" role="1tU5fm">
          <ref role="3uigEE" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
        </node>
        <node concept="2AHcQZ" id="3DiEZ8TNhmW" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="3DiEZ8TNbBM" role="3clF46">
        <property role="TrG5h" value="position" />
        <node concept="10Oyi0" id="3DiEZ8TNbEN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3DiEZ8TNuEy" role="3clF46">
        <property role="TrG5h" value="isInput" />
        <node concept="10P_77" id="3DiEZ8TNuMU" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="31Fn7oZverg" role="3clF46">
        <property role="TrG5h" value="isValid" />
        <node concept="10P_77" id="31Fn7oZveyz" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zWeiag" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zWeift" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="17QB3L" id="1HEL0zWeifu" role="3clF45" />
      <node concept="3Tm1VV" id="1HEL0zWeifv" role="1B3o_S" />
      <node concept="3clFbS" id="1HEL0zWeifw" role="3clF47">
        <node concept="3clFbF" id="1HEL0zWeifx" role="3cqZAp">
          <node concept="37vLTw" id="1HEL0zWeifs" role="3clFbG">
            <ref role="3cqZAo" node="1HEL0zWehwN" resolve="myName" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3DiEZ8TNh0U" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="5fP$XwiOauM" role="jymVt" />
    <node concept="3clFb_" id="5fP$XwiOazh" role="jymVt">
      <property role="TrG5h" value="getConnecitonKind" />
      <node concept="3uibUv" id="5fP$XwiOazi" role="3clF45">
        <ref role="3uigEE" to="tphl:2R0WzquZm0W" resolve="EntryKind" />
      </node>
      <node concept="3Tm1VV" id="5fP$XwiOazj" role="1B3o_S" />
      <node concept="3clFbS" id="5fP$XwiOazk" role="3clF47">
        <node concept="3clFbF" id="5fP$XwiOazl" role="3cqZAp">
          <node concept="37vLTw" id="5fP$XwiOazg" role="3clFbG">
            <ref role="3cqZAo" node="5fP$XwiO9QJ" resolve="myConnecitonKind" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3DiEZ8TNgIN" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3DiEZ8TNggP" role="jymVt" />
    <node concept="3clFb_" id="3DiEZ8TNgqG" role="jymVt">
      <property role="TrG5h" value="getPosition" />
      <node concept="10Oyi0" id="3DiEZ8TNgqH" role="3clF45" />
      <node concept="3Tm1VV" id="3DiEZ8TNgqI" role="1B3o_S" />
      <node concept="3clFbS" id="3DiEZ8TNgqJ" role="3clF47">
        <node concept="3clFbF" id="3DiEZ8TNgqK" role="3cqZAp">
          <node concept="37vLTw" id="3DiEZ8TNgqF" role="3clFbG">
            <ref role="3cqZAo" node="3DiEZ8TNbzv" resolve="myPosition" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3DiEZ8TNwtH" role="jymVt" />
    <node concept="3clFb_" id="3DiEZ8TNwDw" role="jymVt">
      <property role="TrG5h" value="isInput" />
      <node concept="10P_77" id="3DiEZ8TNwDx" role="3clF45" />
      <node concept="3Tm1VV" id="3DiEZ8TNwDy" role="1B3o_S" />
      <node concept="3clFbS" id="3DiEZ8TNwDz" role="3clF47">
        <node concept="3clFbF" id="3DiEZ8TNwD$" role="3cqZAp">
          <node concept="37vLTw" id="3DiEZ8TNwDv" role="3clFbG">
            <ref role="3cqZAo" node="3DiEZ8TNv9A" resolve="myIsInput" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="31Fn7oZvfhb" role="jymVt" />
    <node concept="3clFb_" id="31Fn7oZvfqf" role="jymVt">
      <property role="TrG5h" value="isValid" />
      <node concept="10P_77" id="31Fn7oZvfqg" role="3clF45" />
      <node concept="3Tm1VV" id="31Fn7oZvfqh" role="1B3o_S" />
      <node concept="3clFbS" id="31Fn7oZvfqi" role="3clF47">
        <node concept="3clFbF" id="31Fn7oZvfAq" role="3cqZAp">
          <node concept="37vLTw" id="31Fn7oZvfAp" role="3clFbG">
            <ref role="3cqZAo" node="31Fn7oZvez9" resolve="myIsValid" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

