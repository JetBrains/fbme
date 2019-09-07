<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:19255904-d250-4b16-8c45-b1789b1f48b0(iec61499.diagrams.viewmodel.interfacepart)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="kty4" ref="r:5e1cd7b8-f328-464d-9e2d-285cc1ce6935(iec61499.diagrams.viewmodel.fbnetwork)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1179360813171" name="jetbrains.mps.baseLanguage.structure.HexIntegerLiteral" flags="nn" index="2nou5x">
        <property id="1179360856892" name="value" index="2noCCI" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
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
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
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
  <node concept="3HP615" id="7qPnRGGphpu">
    <property role="TrG5h" value="FunctionBlockTypeTemplateView" />
    <node concept="2tJIrI" id="7qPnRGGphtF" role="jymVt" />
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
    <node concept="3Tm1VV" id="7qPnRGGphpv" role="1B3o_S" />
    <node concept="3uibUv" id="7qPnRGGplta" role="3HQHJm">
      <ref role="3uigEE" node="1HEL0zVYBFE" resolve="FunctionBlockView" />
    </node>
  </node>
  <node concept="3HP615" id="1HEL0zVYBFE">
    <property role="TrG5h" value="FunctionBlockView" />
    <node concept="2tJIrI" id="1HEL0zVYBGw" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zVYKgq" role="jymVt">
      <property role="TrG5h" value="getEventInputPorts" />
      <node concept="3clFbS" id="1HEL0zVYKgt" role="3clF47" />
      <node concept="3Tm1VV" id="1HEL0zVYKgu" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zVYKeF" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1HEL0zWeiyG" role="11_B2D">
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortView" />
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
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortView" />
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
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortView" />
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
          <ref role="3uigEE" node="1HEL0zWehtJ" resolve="FBPortView" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zVYNbK" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zVYRNg" role="jymVt">
      <property role="TrG5h" value="getTypeName" />
      <node concept="3clFbS" id="1HEL0zVYRNj" role="3clF47" />
      <node concept="3Tm1VV" id="1HEL0zVYRNk" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zVYRLM" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1HEL0zVYBFF" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2JGKyjit8pv">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="DiagramColors" />
    <property role="1EXbeo" value="true" />
    <node concept="3clFbW" id="2JGKyjit8zB" role="jymVt">
      <node concept="3cqZAl" id="2JGKyjit8zC" role="3clF45" />
      <node concept="3clFbS" id="2JGKyjit8zE" role="3clF47" />
      <node concept="3Tm6S6" id="2JGKyjit8yX" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2JGKyjit8zV" role="jymVt" />
    <node concept="Wx3nA" id="2JGKyjitmC8" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="EVENT" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2JGKyjit8EV" role="1B3o_S" />
      <node concept="3uibUv" id="2JGKyjitmC1" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="6tmliaAOGah" role="33vP2m">
        <node concept="1pGfFk" id="6tmliaAOMGi" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
          <node concept="2nou5x" id="6tmliaAOMMh" role="37wK5m">
            <property role="2noCCI" value="50BBFF" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2JGKyjitmM6" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="DATA" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2JGKyjitmM7" role="1B3o_S" />
      <node concept="3uibUv" id="2JGKyjitmM8" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="10M0yZ" id="7qPnRGFpNEl" role="33vP2m">
        <ref role="3cqZAo" to="z60i:~Color.LIGHT_GRAY" resolve="LIGHT_GRAY" />
        <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
      </node>
    </node>
    <node concept="Wx3nA" id="2JGKyjitmWd" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="FB" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2JGKyjitmWe" role="1B3o_S" />
      <node concept="3uibUv" id="2JGKyjitmWf" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="10M0yZ" id="2JGKyjitmYm" role="33vP2m">
        <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
        <ref role="3cqZAo" to="z60i:~Color.GRAY" resolve="GRAY" />
      </node>
    </node>
    <node concept="Wx3nA" id="2R0WzquXqPs" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="ADAPTER" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2R0WzquXqPt" role="1B3o_S" />
      <node concept="3uibUv" id="2R0WzquXqPu" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2ShNRf" id="2R0WzquZvhy" role="33vP2m">
        <node concept="1pGfFk" id="2R0Wzqv07xk" role="2ShVmc">
          <ref role="37wK5l" to="lzb2:~JBColor.&lt;init&gt;(java.awt.Color,java.awt.Color)" resolve="JBColor" />
          <node concept="2ShNRf" id="2R0Wzqv0dK6" role="37wK5m">
            <node concept="1pGfFk" id="2R0Wzqv0eu0" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
              <node concept="2nou5x" id="2R0Wzqv0exB" role="37wK5m">
                <property role="2noCCI" value="FF8000" />
              </node>
            </node>
          </node>
          <node concept="2ShNRf" id="2R0Wzqv0ePq" role="37wK5m">
            <node concept="1pGfFk" id="2R0Wzqv0ePr" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int)" resolve="Color" />
              <node concept="2nou5x" id="2R0Wzqv0ePs" role="37wK5m">
                <property role="2noCCI" value="0080FF" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="2JGKyjit8pw" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1HEL0zWehtJ">
    <property role="TrG5h" value="FBPortView" />
    <node concept="2tJIrI" id="1HEL0zWehuR" role="jymVt" />
    <node concept="312cEg" id="1HEL0zWehwN" role="jymVt">
      <property role="TrG5h" value="myPortName" />
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
        <ref role="3uigEE" to="kty4:2R0WzquZm0W" resolve="EntryKind" />
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zWehxq" role="jymVt" />
    <node concept="312cEg" id="1HEL0zWeh_o" role="jymVt">
      <property role="TrG5h" value="myHint" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1HEL0zWehze" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zWeh_g" role="1tU5fm">
        <ref role="3uigEE" node="1HEL0zVYI8O" resolve="PortHint" />
      </node>
      <node concept="2AHcQZ" id="1HEL0zWeh_I" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
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
              <ref role="3cqZAo" node="1HEL0zWehwN" resolve="myPortName" />
            </node>
            <node concept="37vLTw" id="1HEL0zWehB0" role="37vLTx">
              <ref role="3cqZAo" node="1HEL0zWehAQ" resolve="portName" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zWehB3" role="3cqZAp">
          <node concept="37vLTI" id="1HEL0zWehB5" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zWei97" role="37vLTJ">
              <ref role="3cqZAo" node="1HEL0zWeh_o" resolve="myHint" />
            </node>
            <node concept="37vLTw" id="1HEL0zWehBc" role="37vLTx">
              <ref role="3cqZAo" node="1HEL0zWehB2" resolve="hint" />
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
      </node>
      <node concept="37vLTG" id="1HEL0zWehAQ" role="3clF46">
        <property role="TrG5h" value="portName" />
        <node concept="17QB3L" id="1HEL0zWehAP" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1HEL0zWehB2" role="3clF46">
        <property role="TrG5h" value="hint" />
        <node concept="3uibUv" id="1HEL0zWehB1" role="1tU5fm">
          <ref role="3uigEE" node="1HEL0zVYI8O" resolve="PortHint" />
        </node>
      </node>
      <node concept="37vLTG" id="5fP$XwiO9Ux" role="3clF46">
        <property role="TrG5h" value="connectionKind" />
        <node concept="3uibUv" id="5fP$XwiO9Y8" role="1tU5fm">
          <ref role="3uigEE" to="kty4:2R0WzquZm0W" resolve="EntryKind" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zWeiag" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zWeift" role="jymVt">
      <property role="TrG5h" value="getPortName" />
      <node concept="17QB3L" id="1HEL0zWeifu" role="3clF45" />
      <node concept="3Tm1VV" id="1HEL0zWeifv" role="1B3o_S" />
      <node concept="3clFbS" id="1HEL0zWeifw" role="3clF47">
        <node concept="3clFbF" id="1HEL0zWeifx" role="3cqZAp">
          <node concept="37vLTw" id="1HEL0zWeifs" role="3clFbG">
            <ref role="3cqZAo" node="1HEL0zWehwN" resolve="myPortName" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zWeiiW" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zWeifz" role="jymVt">
      <property role="TrG5h" value="getHint" />
      <node concept="3uibUv" id="1HEL0zWeif$" role="3clF45">
        <ref role="3uigEE" node="1HEL0zVYI8O" resolve="PortHint" />
      </node>
      <node concept="3Tm1VV" id="1HEL0zWeif_" role="1B3o_S" />
      <node concept="3clFbS" id="1HEL0zWeifA" role="3clF47">
        <node concept="3clFbF" id="1HEL0zWeifB" role="3cqZAp">
          <node concept="37vLTw" id="1HEL0zWeify" role="3clFbG">
            <ref role="3cqZAo" node="1HEL0zWeh_o" resolve="myHint" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5fP$XwiOauM" role="jymVt" />
    <node concept="3clFb_" id="5fP$XwiOazh" role="jymVt">
      <property role="TrG5h" value="getConnecitonKind" />
      <node concept="3uibUv" id="5fP$XwiOazi" role="3clF45">
        <ref role="3uigEE" to="kty4:2R0WzquZm0W" resolve="EntryKind" />
      </node>
      <node concept="3Tm1VV" id="5fP$XwiOazj" role="1B3o_S" />
      <node concept="3clFbS" id="5fP$XwiOazk" role="3clF47">
        <node concept="3clFbF" id="5fP$XwiOazl" role="3cqZAp">
          <node concept="37vLTw" id="5fP$XwiOazg" role="3clFbG">
            <ref role="3cqZAo" node="5fP$XwiO9QJ" resolve="myConnecitonKind" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1HEL0zVYI8O">
    <property role="TrG5h" value="PortHint" />
    <node concept="2tJIrI" id="1HEL0zVYI9i" role="jymVt" />
    <node concept="312cEg" id="1HEL0zVYI9M" role="jymVt">
      <property role="TrG5h" value="myHintText" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1HEL0zVYI9u" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zVYI9F" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="312cEg" id="1HEL0zVYIbz" role="jymVt">
      <property role="TrG5h" value="myHintColor" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1HEL0zVYIaC" role="1B3o_S" />
      <node concept="3uibUv" id="1HEL0zVYIbs" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zVYIbP" role="jymVt" />
    <node concept="3Tm1VV" id="1HEL0zVYI8P" role="1B3o_S" />
    <node concept="3clFbW" id="1HEL0zVYIcy" role="jymVt">
      <node concept="3cqZAl" id="1HEL0zVYIcz" role="3clF45" />
      <node concept="3Tm1VV" id="1HEL0zVYIc$" role="1B3o_S" />
      <node concept="3clFbS" id="1HEL0zVYIcA" role="3clF47">
        <node concept="3clFbF" id="1HEL0zVYIcE" role="3cqZAp">
          <node concept="37vLTI" id="1HEL0zVYIcG" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zVYIue" role="37vLTJ">
              <ref role="3cqZAo" node="1HEL0zVYI9M" resolve="myHintText" />
            </node>
            <node concept="37vLTw" id="1HEL0zVYIcN" role="37vLTx">
              <ref role="3cqZAo" node="1HEL0zVYIcD" resolve="hintText" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1HEL0zVYIcQ" role="3cqZAp">
          <node concept="37vLTI" id="1HEL0zVYIcS" role="3clFbG">
            <node concept="37vLTw" id="1HEL0zVYIcZ" role="37vLTx">
              <ref role="3cqZAo" node="1HEL0zVYIcP" resolve="hintColor" />
            </node>
            <node concept="37vLTw" id="1HEL0zVYJNY" role="37vLTJ">
              <ref role="3cqZAo" node="1HEL0zVYIbz" resolve="myHintColor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1HEL0zVYIcD" role="3clF46">
        <property role="TrG5h" value="hintText" />
        <node concept="3uibUv" id="1HEL0zVYIcC" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="1HEL0zVYIcP" role="3clF46">
        <property role="TrG5h" value="hintColor" />
        <node concept="3uibUv" id="1HEL0zVYIcO" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zVYJPy" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zVYJUO" role="jymVt">
      <property role="TrG5h" value="getHintText" />
      <node concept="3uibUv" id="1HEL0zVYJUP" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3Tm1VV" id="1HEL0zVYJUQ" role="1B3o_S" />
      <node concept="3clFbS" id="1HEL0zVYJUR" role="3clF47">
        <node concept="3clFbF" id="1HEL0zVYJUS" role="3cqZAp">
          <node concept="37vLTw" id="1HEL0zVYJUN" role="3clFbG">
            <ref role="3cqZAo" node="1HEL0zVYI9M" resolve="myHintText" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1HEL0zVYK3$" role="jymVt" />
    <node concept="3clFb_" id="1HEL0zVYJUU" role="jymVt">
      <property role="TrG5h" value="getHintColor" />
      <node concept="3uibUv" id="1HEL0zVYJUV" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="3Tm1VV" id="1HEL0zVYJUW" role="1B3o_S" />
      <node concept="3clFbS" id="1HEL0zVYJUX" role="3clF47">
        <node concept="3clFbF" id="1HEL0zVYJUY" role="3cqZAp">
          <node concept="37vLTw" id="1HEL0zVYJUT" role="3clFbG">
            <ref role="3cqZAo" node="1HEL0zVYIbz" resolve="myHintColor" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

