<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:22f3147c-cd8c-496f-a7fc-c31f351de000(iec61499.diagrams.controllers)">
  <persistence version="9" />
  <languages>
    <use id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="hyqd" ref="r:01ce234a-ce36-43f1-8a99-7cbd899f1013(iec61499.diagrams.viewmodel)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="2323553266850475941" name="jetbrains.mps.baseLanguage.structure.IHasModifiers" flags="ng" index="2frcj7">
        <child id="2323553266850475953" name="modifiers" index="2frcjj" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534513062" name="jetbrains.mps.baseLanguage.structure.DoubleType" flags="in" index="10P55v" />
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
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ">
        <child id="1214996921760" name="bound" index="3ztrMU" />
      </concept>
      <concept id="1109279851642" name="jetbrains.mps.baseLanguage.structure.GenericDeclaration" flags="ng" index="16eOlS">
        <child id="1109279881614" name="typeVariableDeclaration" index="16eVyc" />
      </concept>
      <concept id="1109283449304" name="jetbrains.mps.baseLanguage.structure.TypeVariableReference" flags="in" index="16syzq">
        <reference id="1109283546497" name="typeVariableDeclaration" index="16sUi3" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8">
      <concept id="4678410916365116210" name="jetbrains.mps.baseLanguage.jdk8.structure.DefaultModifier" flags="ng" index="2JFqV2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="3HP615" id="7qPnRGFzXZV">
    <property role="TrG5h" value="ComponentEditorController" />
    <node concept="2tJIrI" id="7qPnRGFzY0w" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGFzY1L" role="jymVt">
      <property role="TrG5h" value="getView" />
      <node concept="3clFbS" id="7qPnRGFzY1O" role="3clF47" />
      <node concept="3Tm1VV" id="7qPnRGFzY1P" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGFzY1B" role="3clF45">
        <ref role="3uigEE" to="hyqd:1HEL0zVYNFT" resolve="DiagramComponentView" />
        <node concept="16syzq" id="1CY1mmCxJdK" role="11_B2D">
          <ref role="16sUi3" node="6$FGuy5wBfr" resolve="P" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGFzY2f" role="jymVt" />
    <node concept="3clFb_" id="7sG$k3BM_mZ" role="jymVt">
      <property role="TrG5h" value="getDiagramConroller" />
      <node concept="3clFbS" id="7sG$k3BM_n2" role="3clF47" />
      <node concept="3Tm1VV" id="7sG$k3BM_n3" role="1B3o_S" />
      <node concept="3uibUv" id="7sG$k3BM_7a" role="3clF45">
        <ref role="3uigEE" node="7sG$k3BGd9c" resolve="DiagramController" />
      </node>
    </node>
    <node concept="2tJIrI" id="7sG$k3BM$Px" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGFzY4X" role="jymVt">
      <property role="TrG5h" value="getPortController" />
      <node concept="3clFbS" id="7qPnRGFzY50" role="3clF47" />
      <node concept="3Tm1VV" id="7qPnRGFzY51" role="1B3o_S" />
      <node concept="16syzq" id="7sG$k3BBw6v" role="3clF45">
        <ref role="16sUi3" node="7sG$k3BBvXb" resolve="PC" />
      </node>
      <node concept="37vLTG" id="7qPnRGFzYm6" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="3uibUv" id="7qPnRGFzYm5" role="1tU5fm">
          <ref role="3uigEE" to="hyqd:1HEL0zVYNIi" resolve="PortIdentity" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaBbXPQ" role="jymVt" />
    <node concept="3clFb_" id="6tmliaBbYvu" role="jymVt">
      <property role="TrG5h" value="getPortControllers" />
      <node concept="3clFbS" id="6tmliaBbYvx" role="3clF47" />
      <node concept="3Tm1VV" id="6tmliaBbYvy" role="1B3o_S" />
      <node concept="3uibUv" id="6tmliaBbYc_" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="16syzq" id="6tmliaBbYth" role="11_B2D">
          <ref role="16sUi3" node="7sG$k3BBvXb" resolve="PC" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGFEfZZ" role="jymVt" />
    <node concept="3clFb_" id="6tmliaAt24L" role="jymVt">
      <property role="TrG5h" value="getComponentCell" />
      <node concept="3clFbS" id="6tmliaAt24O" role="3clF47" />
      <node concept="3Tm1VV" id="6tmliaAt24P" role="1B3o_S" />
      <node concept="3uibUv" id="6tmliaAt1Gm" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="2AHcQZ" id="6tmliaAt3fO" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaAwLSx" role="jymVt" />
    <node concept="3clFb_" id="6tmliaAwMvI" role="jymVt">
      <property role="TrG5h" value="syncronize" />
      <node concept="3clFbS" id="6tmliaAwMvL" role="3clF47" />
      <node concept="3Tm1VV" id="6tmliaAwMvM" role="1B3o_S" />
      <node concept="3cqZAl" id="6tmliaAwMfn" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1CY1mmBeYSm" role="jymVt" />
    <node concept="2tJIrI" id="1CY1mmBeYUu" role="jymVt" />
    <node concept="2tJIrI" id="6tmliaAt1ha" role="jymVt" />
    <node concept="3clFb_" id="7sG$k3BDGvn" role="jymVt">
      <property role="TrG5h" value="startDrag" />
      <node concept="3clFbS" id="7sG$k3BDGvq" role="3clF47">
        <node concept="3cpWs8" id="7PF$iX$h8uf" role="3cqZAp">
          <node concept="3cpWsn" id="7PF$iX$h8ug" role="3cpWs9">
            <property role="TrG5h" value="view" />
            <node concept="3uibUv" id="7PF$iX$h8ue" role="1tU5fm">
              <ref role="3uigEE" to="hyqd:1HEL0zVYNFT" resolve="DiagramComponentView" />
            </node>
            <node concept="1rXfSq" id="7PF$iX$h8uh" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGFzY1L" resolve="getView" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6tmliaAv9Ie" role="3cqZAp">
          <node concept="3cpWsn" id="6tmliaAv9If" role="3cpWs9">
            <property role="TrG5h" value="componentCell" />
            <node concept="3uibUv" id="6tmliaAv9Id" role="1tU5fm">
              <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="1rXfSq" id="6tmliaAv9Ig" role="33vP2m">
              <ref role="37wK5l" node="6tmliaAt24L" resolve="getComponentCell" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6tmliaAvekN" role="3cqZAp" />
        <node concept="3clFbJ" id="7PF$iX$haAb" role="3cqZAp">
          <node concept="3clFbS" id="7PF$iX$haAd" role="3clFbx">
            <node concept="3cpWs8" id="7PF$iX$hdaw" role="3cqZAp">
              <node concept="3cpWsn" id="7PF$iX$hdax" role="3cpWs9">
                <property role="TrG5h" value="moveable" />
                <node concept="3uibUv" id="7PF$iX$hday" role="1tU5fm">
                  <ref role="3uigEE" to="hyqd:309fsJ6aYiR" resolve="Moveable" />
                </node>
                <node concept="10QFUN" id="7PF$iX$hdPP" role="33vP2m">
                  <node concept="3uibUv" id="7PF$iX$hdPN" role="10QFUM">
                    <ref role="3uigEE" to="hyqd:309fsJ6aYiR" resolve="Moveable" />
                  </node>
                  <node concept="37vLTw" id="7PF$iX$he0r" role="10QFUP">
                    <ref role="3cqZAo" node="7PF$iX$h8ug" resolve="view" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7PF$iX$heck" role="3cqZAp">
              <node concept="3clFbS" id="7PF$iX$hecm" role="3clFbx">
                <node concept="3cpWs6" id="7PF$iX$hgv7" role="3cqZAp">
                  <node concept="10Nm6u" id="7PF$iX$hgRh" role="3cqZAk" />
                </node>
              </node>
              <node concept="3fqX7Q" id="7PF$iX$hfKZ" role="3clFbw">
                <node concept="2OqwBi" id="7PF$iX$hfL1" role="3fr31v">
                  <node concept="37vLTw" id="7PF$iX$hfL2" role="2Oq$k0">
                    <ref role="3cqZAo" node="7PF$iX$hdax" resolve="moveable" />
                  </node>
                  <node concept="liA8E" id="7PF$iX$hfL3" role="2OqNvi">
                    <ref role="37wK5l" to="hyqd:2_D_3xXsjvt" resolve="moveable" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7PF$iX$hheb" role="3cqZAp" />
            <node concept="3cpWs8" id="7sG$k3BE00S" role="3cqZAp">
              <node concept="3cpWsn" id="7sG$k3BE00T" role="3cpWs9">
                <property role="TrG5h" value="cellX" />
                <node concept="10Oyi0" id="7sG$k3BE00U" role="1tU5fm" />
                <node concept="2OqwBi" id="6tmliaAv7YB" role="33vP2m">
                  <node concept="37vLTw" id="6tmliaAv9Ih" role="2Oq$k0">
                    <ref role="3cqZAo" node="6tmliaAv9If" resolve="componentCell" />
                  </node>
                  <node concept="liA8E" id="6tmliaAv7YE" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getX():int" resolve="getX" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7sG$k3BE00Y" role="3cqZAp">
              <node concept="3cpWsn" id="7sG$k3BE00Z" role="3cpWs9">
                <property role="TrG5h" value="cellY" />
                <node concept="10Oyi0" id="7sG$k3BE010" role="1tU5fm" />
                <node concept="2OqwBi" id="6tmliaAv8sj" role="33vP2m">
                  <node concept="liA8E" id="6tmliaAv8sm" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getY():int" resolve="getY" />
                  </node>
                  <node concept="37vLTw" id="6tmliaAv9Ii" role="2Oq$k0">
                    <ref role="3cqZAo" node="6tmliaAv9If" resolve="componentCell" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6tmliaAvc3_" role="3cqZAp">
              <node concept="3cpWsn" id="6tmliaAvc3A" role="3cpWs9">
                <property role="TrG5h" value="cellWidth" />
                <node concept="10Oyi0" id="6tmliaAvc3z" role="1tU5fm" />
                <node concept="2OqwBi" id="6tmliaAvc3B" role="33vP2m">
                  <node concept="37vLTw" id="6tmliaAvc3C" role="2Oq$k0">
                    <ref role="3cqZAo" node="6tmliaAv9If" resolve="componentCell" />
                  </node>
                  <node concept="liA8E" id="6tmliaAvc3D" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getWidth():int" resolve="getWidth" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6tmliaAvcZW" role="3cqZAp">
              <node concept="3cpWsn" id="6tmliaAvcZX" role="3cpWs9">
                <property role="TrG5h" value="cellHeight" />
                <node concept="10Oyi0" id="6tmliaAvcZR" role="1tU5fm" />
                <node concept="2OqwBi" id="6tmliaAvcZY" role="33vP2m">
                  <node concept="37vLTw" id="6tmliaAvcZZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="6tmliaAv9If" resolve="componentCell" />
                  </node>
                  <node concept="liA8E" id="6tmliaAvd00" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getHeight():int" resolve="getHeight" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7sG$k3BE6h5" role="3cqZAp" />
            <node concept="3cpWs8" id="7sG$k3BE014" role="3cqZAp">
              <node concept="3cpWsn" id="7sG$k3BE015" role="3cpWs9">
                <property role="TrG5h" value="componentBounds" />
                <node concept="3uibUv" id="7sG$k3BE016" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
                </node>
                <node concept="2ShNRf" id="7sG$k3BE017" role="33vP2m">
                  <node concept="1pGfFk" id="7sG$k3BE018" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                    <node concept="37vLTw" id="7sG$k3BE019" role="37wK5m">
                      <ref role="3cqZAo" node="7sG$k3BE00T" resolve="cellX" />
                    </node>
                    <node concept="37vLTw" id="7sG$k3BE01a" role="37wK5m">
                      <ref role="3cqZAo" node="7sG$k3BE00Z" resolve="cellY" />
                    </node>
                    <node concept="37vLTw" id="6tmliaAvc3E" role="37wK5m">
                      <ref role="3cqZAo" node="6tmliaAvc3A" resolve="cellWidth" />
                    </node>
                    <node concept="37vLTw" id="6tmliaAvd01" role="37wK5m">
                      <ref role="3cqZAo" node="6tmliaAvcZX" resolve="cellHeight" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7sG$k3BE01h" role="3cqZAp" />
            <node concept="3clFbJ" id="7sG$k3BE01j" role="3cqZAp">
              <node concept="2OqwBi" id="7sG$k3BE01k" role="3clFbw">
                <node concept="37vLTw" id="7sG$k3BE01l" role="2Oq$k0">
                  <ref role="3cqZAo" node="7sG$k3BE015" resolve="componentBounds" />
                </node>
                <node concept="liA8E" id="7sG$k3BE01m" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Rectangle.contains(int,int):boolean" resolve="contains" />
                  <node concept="37vLTw" id="7sG$k3BEe83" role="37wK5m">
                    <ref role="3cqZAo" node="7sG$k3BDGy8" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="7sG$k3BEeXz" role="37wK5m">
                    <ref role="3cqZAo" node="7sG$k3BDG$z" resolve="y" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7sG$k3BE01p" role="3clFbx">
                <node concept="3clFbH" id="7sG$k3BM_Fs" role="3cqZAp" />
                <node concept="3cpWs6" id="7sG$k3BEfwS" role="3cqZAp">
                  <node concept="2ShNRf" id="7sG$k3BE01s" role="3cqZAk">
                    <node concept="1pGfFk" id="7sG$k3BE01t" role="2ShVmc">
                      <ref role="37wK5l" node="2_D_3xWYnD9" resolve="MovableDragEventHandler" />
                      <node concept="1rXfSq" id="7sG$k3BQrGV" role="37wK5m">
                        <ref role="37wK5l" node="7sG$k3BM_mZ" resolve="getDiagramConroller" />
                      </node>
                      <node concept="37vLTw" id="7PF$iX$hjwt" role="37wK5m">
                        <ref role="3cqZAo" node="7PF$iX$hdax" resolve="moveable" />
                      </node>
                      <node concept="3cpWsd" id="7sG$k3BE01x" role="37wK5m">
                        <node concept="37vLTw" id="7sG$k3BEKYV" role="3uHU7B">
                          <ref role="3cqZAo" node="7sG$k3BDGy8" resolve="x" />
                        </node>
                        <node concept="37vLTw" id="7sG$k3BE01z" role="3uHU7w">
                          <ref role="3cqZAo" node="7sG$k3BE00T" resolve="cellX" />
                        </node>
                      </node>
                      <node concept="3cpWsd" id="7sG$k3BE01$" role="37wK5m">
                        <node concept="37vLTw" id="7sG$k3BELg$" role="3uHU7B">
                          <ref role="3cqZAo" node="7sG$k3BDG$z" resolve="y" />
                        </node>
                        <node concept="37vLTw" id="7sG$k3BE01A" role="3uHU7w">
                          <ref role="3cqZAo" node="7sG$k3BE00Z" resolve="cellY" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6tmliaAve26" role="3clFbw">
            <node concept="3y3z36" id="6tmliaAvdYk" role="3uHU7B">
              <node concept="37vLTw" id="6tmliaAvazz" role="3uHU7B">
                <ref role="3cqZAo" node="6tmliaAv9If" resolve="componentCell" />
              </node>
              <node concept="10Nm6u" id="6tmliaAvb5i" role="3uHU7w" />
            </node>
            <node concept="2ZW3vV" id="7PF$iX$hbH9" role="3uHU7w">
              <node concept="3uibUv" id="7PF$iX$hc24" role="2ZW6by">
                <ref role="3uigEE" to="hyqd:309fsJ6aYiR" resolve="Moveable" />
              </node>
              <node concept="37vLTw" id="7PF$iX$hb06" role="2ZW6bz">
                <ref role="3cqZAo" node="7PF$iX$h8ug" resolve="view" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7sG$k3BEM4D" role="3cqZAp">
          <node concept="10Nm6u" id="7sG$k3BEMr5" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7sG$k3BDGvr" role="1B3o_S" />
      <node concept="3uibUv" id="7sG$k3BDGu4" role="3clF45">
        <ref role="3uigEE" node="2_D_3xWXMp$" resolve="DragEventHandler" />
      </node>
      <node concept="37vLTG" id="7sG$k3BDGy8" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="7sG$k3BDGy7" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7sG$k3BDG$z" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="7sG$k3BDGB6" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="7sG$k3BDGD5" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="2JFqV2" id="7sG$k3BSpM6" role="2frcjj" />
    </node>
    <node concept="3Tm1VV" id="7qPnRGFzXZW" role="1B3o_S" />
    <node concept="3uibUv" id="6tmliaAmCDW" role="3HQHJm">
      <ref role="3uigEE" node="6tmliaAmB_O" resolve="MouseHandler" />
    </node>
    <node concept="16euLQ" id="6$FGuy5wBfr" role="16eVyc">
      <property role="TrG5h" value="P" />
      <node concept="3uibUv" id="6$FGuy5wC8j" role="3ztrMU">
        <ref role="3uigEE" to="hyqd:1HEL0zVYNIi" resolve="PortIdentity" />
      </node>
    </node>
    <node concept="16euLQ" id="7sG$k3BBvXb" role="16eVyc">
      <property role="TrG5h" value="PC" />
      <node concept="3uibUv" id="6$FGuy5wAGn" role="3ztrMU">
        <ref role="3uigEE" node="6tmliaB28$P" resolve="PortController" />
        <node concept="16syzq" id="6$FGuy5wCqo" role="11_B2D">
          <ref role="16sUi3" node="6$FGuy5wBfr" resolve="P" />
        </node>
        <node concept="16syzq" id="6$FGuy5wD_u" role="11_B2D">
          <ref role="16sUi3" node="7sG$k3BBvXb" resolve="PC" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="7sG$k3BBij3">
    <property role="TrG5h" value="ConnectionEditorController" />
    <node concept="2tJIrI" id="7sG$k3BBwaK" role="jymVt" />
    <node concept="3clFb_" id="7sG$k3BGdob" role="jymVt">
      <property role="TrG5h" value="getView" />
      <node concept="3clFbS" id="7sG$k3BGdoe" role="3clF47" />
      <node concept="3Tm1VV" id="7sG$k3BGdof" role="1B3o_S" />
      <node concept="3uibUv" id="7sG$k3BGdmW" role="3clF45">
        <ref role="3uigEE" to="hyqd:1HEL0zVYNQq" resolve="DiagramConnectionView" />
        <node concept="16syzq" id="6$FGuy5wDcY" role="11_B2D">
          <ref role="16sUi3" node="6$FGuy5wD7x" resolve="P" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="309fsJ6epdX" role="jymVt" />
    <node concept="3clFb_" id="309fsJ6epeY" role="jymVt">
      <property role="TrG5h" value="getDiagramConroller" />
      <node concept="3clFbS" id="309fsJ6epeZ" role="3clF47" />
      <node concept="3Tm1VV" id="309fsJ6epf0" role="1B3o_S" />
      <node concept="3uibUv" id="309fsJ6epf1" role="3clF45">
        <ref role="3uigEE" node="7sG$k3BGd9c" resolve="DiagramController" />
        <node concept="16syzq" id="6$FGuy5wDaU" role="11_B2D">
          <ref role="16sUi3" node="6$FGuy5wD7x" resolve="P" />
        </node>
        <node concept="16syzq" id="6$FGuy5wD9i" role="11_B2D">
          <ref role="16sUi3" node="6$FGuy5wD7z" resolve="PC" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7sG$k3BGdpH" role="jymVt" />
    <node concept="3clFb_" id="7sG$k3BGduX" role="jymVt">
      <property role="TrG5h" value="syncronize" />
      <node concept="3clFbS" id="7sG$k3BGdv0" role="3clF47" />
      <node concept="3Tm1VV" id="7sG$k3BGdv1" role="1B3o_S" />
      <node concept="3cqZAl" id="7sG$k3BGdty" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7sG$k3BGdz4" role="jymVt" />
    <node concept="3clFb_" id="309fsJ6xBTg" role="jymVt">
      <property role="TrG5h" value="getBounds" />
      <node concept="3clFbS" id="309fsJ6xBTj" role="3clF47" />
      <node concept="3Tm1VV" id="309fsJ6xBTk" role="1B3o_S" />
      <node concept="3uibUv" id="309fsJ6xCbH" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
    </node>
    <node concept="2tJIrI" id="1CY1mmCaHoh" role="jymVt" />
    <node concept="3clFb_" id="1CY1mmCaHrS" role="jymVt">
      <property role="TrG5h" value="beforeSourceComponentMoved" />
      <node concept="3clFbS" id="1CY1mmCaHrV" role="3clF47" />
      <node concept="3Tm1VV" id="1CY1mmCaHrW" role="1B3o_S" />
      <node concept="3cqZAl" id="1CY1mmCaHqy" role="3clF45" />
      <node concept="37vLTG" id="1CY1mmCyVv9" role="3clF46">
        <property role="TrG5h" value="dx" />
        <node concept="10Oyi0" id="1CY1mmCyVv8" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1CY1mmCyVxH" role="3clF46">
        <property role="TrG5h" value="dy" />
        <node concept="10Oyi0" id="1CY1mmCyV$j" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1CY1mmCeRU1" role="jymVt" />
    <node concept="3clFb_" id="1CY1mmCeRu3" role="jymVt">
      <property role="TrG5h" value="beforeTargetComponentMoved" />
      <node concept="3clFbS" id="1CY1mmCeRu4" role="3clF47" />
      <node concept="3Tm1VV" id="1CY1mmCeRu5" role="1B3o_S" />
      <node concept="3cqZAl" id="1CY1mmCeRu6" role="3clF45" />
      <node concept="37vLTG" id="1CY1mmCyVAm" role="3clF46">
        <property role="TrG5h" value="dx" />
        <node concept="10Oyi0" id="1CY1mmCyVAn" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1CY1mmCyVAo" role="3clF46">
        <property role="TrG5h" value="dy" />
        <node concept="10Oyi0" id="1CY1mmCyVAp" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1CY1mmCeRW4" role="jymVt" />
    <node concept="3clFb_" id="1CY1mmCeRuO" role="jymVt">
      <property role="TrG5h" value="beforeBothComponentsMoved" />
      <node concept="3clFbS" id="1CY1mmCeRuP" role="3clF47" />
      <node concept="3Tm1VV" id="1CY1mmCeRuQ" role="1B3o_S" />
      <node concept="3cqZAl" id="1CY1mmCeRuR" role="3clF45" />
      <node concept="37vLTG" id="1CY1mmCyVCt" role="3clF46">
        <property role="TrG5h" value="dx" />
        <node concept="10Oyi0" id="1CY1mmCyVCu" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1CY1mmCyVCv" role="3clF46">
        <property role="TrG5h" value="dy" />
        <node concept="10Oyi0" id="1CY1mmCyVCw" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaAjN75" role="jymVt" />
    <node concept="3clFb_" id="7sG$k3BBwrZ" role="jymVt">
      <property role="TrG5h" value="paintConneciton" />
      <node concept="3clFbS" id="7sG$k3BBws2" role="3clF47" />
      <node concept="3Tm1VV" id="7sG$k3BBws3" role="1B3o_S" />
      <node concept="3cqZAl" id="7sG$k3BBwrc" role="3clF45" />
      <node concept="37vLTG" id="7sG$k3BBwt$" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="7sG$k3BBwtz" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7sG$k3BBij4" role="1B3o_S" />
    <node concept="16euLQ" id="6$FGuy5wD7x" role="16eVyc">
      <property role="TrG5h" value="P" />
      <node concept="3uibUv" id="6$FGuy5wD7y" role="3ztrMU">
        <ref role="3uigEE" to="hyqd:1HEL0zVYNIi" resolve="PortIdentity" />
      </node>
    </node>
    <node concept="16euLQ" id="6$FGuy5wD7z" role="16eVyc">
      <property role="TrG5h" value="PC" />
      <node concept="3uibUv" id="6$FGuy5wD7$" role="3ztrMU">
        <ref role="3uigEE" node="6tmliaB28$P" resolve="PortController" />
        <node concept="16syzq" id="6$FGuy5wD7_" role="11_B2D">
          <ref role="16sUi3" node="6$FGuy5wD7x" resolve="P" />
        </node>
        <node concept="16syzq" id="6$FGuy5wD7A" role="11_B2D">
          <ref role="16sUi3" node="6$FGuy5wD7z" resolve="PC" />
        </node>
      </node>
    </node>
    <node concept="3uibUv" id="6tmliaAmBSw" role="3HQHJm">
      <ref role="3uigEE" node="6tmliaAmB_O" resolve="MouseHandler" />
    </node>
  </node>
  <node concept="3HP615" id="7qPnRGFrmtB">
    <property role="TrG5h" value="ControllerFactory" />
    <property role="2bfB8j" value="true" />
    <node concept="3clFb_" id="7qPnRGFrvSp" role="jymVt">
      <property role="TrG5h" value="createComponent" />
      <node concept="3clFbS" id="7qPnRGFrvSs" role="3clF47" />
      <node concept="3Tm1VV" id="7qPnRGFrvSt" role="1B3o_S" />
      <node concept="3uibUv" id="7qPnRGF$2z4" role="3clF45">
        <ref role="3uigEE" node="7qPnRGFzXZV" resolve="ComponentEditorController" />
        <node concept="16syzq" id="6$FGuy5wDKT" role="11_B2D">
          <ref role="16sUi3" node="6$FGuy5wDG5" resolve="P" />
        </node>
        <node concept="16syzq" id="7sG$k3BI4R1" role="11_B2D">
          <ref role="16sUi3" node="7sG$k3BHCWT" resolve="PC" />
        </node>
      </node>
      <node concept="37vLTG" id="7sG$k3BQMeW" role="3clF46">
        <property role="TrG5h" value="diagram" />
        <node concept="3uibUv" id="7sG$k3BQVXz" role="1tU5fm">
          <ref role="3uigEE" node="7sG$k3BGd9c" resolve="DiagramController" />
          <node concept="16syzq" id="6$FGuy5wDQB" role="11_B2D">
            <ref role="16sUi3" node="6$FGuy5wDG5" resolve="P" />
          </node>
          <node concept="16syzq" id="7sG$k3BQVZJ" role="11_B2D">
            <ref role="16sUi3" node="7sG$k3BHCWT" resolve="PC" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGFrxb1" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="7qPnRGFrxl0" role="1tU5fm">
          <ref role="3uigEE" to="hyqd:1HEL0zVYNFT" resolve="DiagramComponentView" />
          <node concept="16syzq" id="6$FGuy5wDYR" role="11_B2D">
            <ref role="16sUi3" node="6$FGuy5wDG5" resolve="P" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7sG$k3BIhER" role="jymVt">
      <property role="TrG5h" value="createConnection" />
      <node concept="37vLTG" id="7sG$k3BQW5l" role="3clF46">
        <property role="TrG5h" value="diagram" />
        <node concept="3uibUv" id="7sG$k3BQW5m" role="1tU5fm">
          <ref role="3uigEE" node="7sG$k3BGd9c" resolve="DiagramController" />
          <node concept="16syzq" id="6$FGuy5wDUv" role="11_B2D">
            <ref role="16sUi3" node="6$FGuy5wDG5" resolve="P" />
          </node>
          <node concept="16syzq" id="7sG$k3BQW5n" role="11_B2D">
            <ref role="16sUi3" node="7sG$k3BHCWT" resolve="PC" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7sG$k3BImGx" role="3clF46">
        <property role="TrG5h" value="conneciton" />
        <node concept="3uibUv" id="7sG$k3BIn5H" role="1tU5fm">
          <ref role="3uigEE" to="hyqd:1HEL0zVYNQq" resolve="DiagramConnectionView" />
          <node concept="16syzq" id="6$FGuy5wE3e" role="11_B2D">
            <ref role="16sUi3" node="6$FGuy5wDG5" resolve="P" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7sG$k3BIhEU" role="3clF47" />
      <node concept="3Tm1VV" id="7sG$k3BIhEV" role="1B3o_S" />
      <node concept="3uibUv" id="7sG$k3BIcVz" role="3clF45">
        <ref role="3uigEE" node="7sG$k3BBij3" resolve="ConnectionEditorController" />
        <node concept="16syzq" id="6$FGuy5wDN2" role="11_B2D">
          <ref role="16sUi3" node="6$FGuy5wDG5" resolve="P" />
        </node>
        <node concept="16syzq" id="7sG$k3BIhE3" role="11_B2D">
          <ref role="16sUi3" node="7sG$k3BHCWT" resolve="PC" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7qPnRGFrmtC" role="1B3o_S" />
    <node concept="16euLQ" id="6$FGuy5wDG5" role="16eVyc">
      <property role="TrG5h" value="P" />
      <node concept="3uibUv" id="6$FGuy5wDJ8" role="3ztrMU">
        <ref role="3uigEE" to="hyqd:1HEL0zVYNIi" resolve="PortIdentity" />
      </node>
    </node>
    <node concept="16euLQ" id="7sG$k3BHCWT" role="16eVyc">
      <property role="TrG5h" value="PC" />
      <node concept="3uibUv" id="6tmliaBh5x8" role="3ztrMU">
        <ref role="3uigEE" node="6tmliaB28$P" resolve="PortController" />
        <node concept="16syzq" id="6$FGuy5_7Jh" role="11_B2D">
          <ref role="16sUi3" node="6$FGuy5wDG5" resolve="P" />
        </node>
        <node concept="16syzq" id="6$FGuy5_7O3" role="11_B2D">
          <ref role="16sUi3" node="7sG$k3BHCWT" resolve="PC" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="2_D_3xWXMp$">
    <property role="TrG5h" value="DragEventHandler" />
    <node concept="2tJIrI" id="2_D_3xWXMpU" role="jymVt" />
    <node concept="3clFb_" id="2_D_3xWXMqJ" role="jymVt">
      <property role="TrG5h" value="dragTo" />
      <node concept="3clFbS" id="2_D_3xWXMqM" role="3clF47" />
      <node concept="3Tm1VV" id="2_D_3xWXMqN" role="1B3o_S" />
      <node concept="3cqZAl" id="2_D_3xWXMq_" role="3clF45" />
      <node concept="37vLTG" id="2_D_3xWXMrF" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="2_D_3xWXMrE" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2_D_3xWXMso" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="2_D_3xWXMtj" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2_D_3xWXMp_" role="1B3o_S" />
    <node concept="2tJIrI" id="2_D_3xWXMu2" role="jymVt" />
    <node concept="3clFb_" id="7sG$k3BCQhh" role="jymVt">
      <property role="TrG5h" value="completeAt" />
      <node concept="3clFbS" id="7sG$k3BCQhk" role="3clF47">
        <node concept="3clFbF" id="7sG$k3BCQqc" role="3cqZAp">
          <node concept="1rXfSq" id="7sG$k3BCQqb" role="3clFbG">
            <ref role="37wK5l" node="2_D_3xWXMqJ" resolve="dragTo" />
            <node concept="37vLTw" id="7sG$k3BCQsd" role="37wK5m">
              <ref role="3cqZAo" node="7sG$k3BCQiL" resolve="x" />
            </node>
            <node concept="37vLTw" id="7sG$k3BCQuO" role="37wK5m">
              <ref role="3cqZAo" node="7sG$k3BCQj_" resolve="y" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7sG$k3BCQhl" role="1B3o_S" />
      <node concept="3cqZAl" id="7sG$k3BCQgN" role="3clF45" />
      <node concept="37vLTG" id="7sG$k3BCQiL" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="7sG$k3BCQiK" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7sG$k3BCQj_" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="7sG$k3BCQkX" role="1tU5fm" />
      </node>
      <node concept="2JFqV2" id="7sG$k3BSpM7" role="2frcjj" />
    </node>
  </node>
  <node concept="3HP615" id="7sG$k3BGd9c">
    <property role="TrG5h" value="DiagramController" />
    <node concept="2tJIrI" id="7sG$k3BGdaf" role="jymVt" />
    <node concept="3clFb_" id="5FPxgJnyfVp" role="jymVt">
      <property role="TrG5h" value="getView" />
      <node concept="3clFbS" id="5FPxgJnyfVs" role="3clF47" />
      <node concept="3Tm1VV" id="5FPxgJnyfVt" role="1B3o_S" />
      <node concept="3uibUv" id="5FPxgJnyfTg" role="3clF45">
        <ref role="3uigEE" to="hyqd:1HEL0zVYNHd" resolve="DiagramView" />
        <node concept="16syzq" id="6$FGuy5wCYD" role="11_B2D">
          <ref role="16sUi3" node="6$FGuy5wCTB" resolve="P" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5FPxgJnyfQf" role="jymVt" />
    <node concept="3clFb_" id="7sG$k3BGdby" role="jymVt">
      <property role="TrG5h" value="getPortController" />
      <node concept="3clFbS" id="7sG$k3BGdb_" role="3clF47" />
      <node concept="3Tm1VV" id="7sG$k3BGdbA" role="1B3o_S" />
      <node concept="16syzq" id="7sG$k3BGdbm" role="3clF45">
        <ref role="16sUi3" node="7sG$k3BGd9B" resolve="PC" />
      </node>
      <node concept="37vLTG" id="7sG$k3BGdcZ" role="3clF46">
        <property role="TrG5h" value="identity" />
        <node concept="3uibUv" id="7sG$k3BGdcY" role="1tU5fm">
          <ref role="3uigEE" to="hyqd:1HEL0zVYNIi" resolve="PortIdentity" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="6tmliaBbpXz" role="jymVt">
      <property role="TrG5h" value="findPortController" />
      <node concept="3clFbS" id="6tmliaBbpXA" role="3clF47" />
      <node concept="3Tm1VV" id="6tmliaBbpXB" role="1B3o_S" />
      <node concept="16syzq" id="6tmliaBbpVK" role="3clF45">
        <ref role="16sUi3" node="7sG$k3BGd9B" resolve="PC" />
      </node>
      <node concept="37vLTG" id="6tmliaBbq1s" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="6tmliaBbq1r" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6tmliaBbq4w" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="6tmliaBbq7I" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7sG$k3BM$j3" role="jymVt" />
    <node concept="3clFb_" id="7sG$k3BM$l1" role="jymVt">
      <property role="TrG5h" value="translateToCellX" />
      <node concept="3clFbS" id="7sG$k3BM$l4" role="3clF47" />
      <node concept="3Tm1VV" id="7sG$k3BM$l5" role="1B3o_S" />
      <node concept="10Oyi0" id="309fsJ6evN7" role="3clF45" />
      <node concept="37vLTG" id="7sG$k3BM$mw" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="7sG$k3BM$mv" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="309fsJ6evNL" role="jymVt">
      <property role="TrG5h" value="translateToCellY" />
      <node concept="3clFbS" id="309fsJ6evNM" role="3clF47" />
      <node concept="3Tm1VV" id="309fsJ6evNN" role="1B3o_S" />
      <node concept="10Oyi0" id="309fsJ6evNO" role="3clF45" />
      <node concept="37vLTG" id="309fsJ6evNP" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="309fsJ6evNQ" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="309fsJ6iBgY" role="jymVt" />
    <node concept="3clFb_" id="309fsJ6iBhP" role="jymVt">
      <property role="TrG5h" value="translateFromCellX" />
      <node concept="3clFbS" id="309fsJ6iBhQ" role="3clF47" />
      <node concept="3Tm1VV" id="309fsJ6iBhR" role="1B3o_S" />
      <node concept="10Oyi0" id="309fsJ6iBhS" role="3clF45" />
      <node concept="37vLTG" id="309fsJ6iBhT" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="309fsJ6iBhU" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="309fsJ6iBhV" role="jymVt">
      <property role="TrG5h" value="translateFromCellY" />
      <node concept="3clFbS" id="309fsJ6iBhW" role="3clF47" />
      <node concept="3Tm1VV" id="309fsJ6iBhX" role="1B3o_S" />
      <node concept="10Oyi0" id="309fsJ6iBhY" role="3clF45" />
      <node concept="37vLTG" id="309fsJ6iBhZ" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="309fsJ6iBi0" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1CY1mmCpruq" role="jymVt" />
    <node concept="3clFb_" id="1CY1mmCpr$w" role="jymVt">
      <property role="TrG5h" value="scale" />
      <node concept="3clFbS" id="1CY1mmCpr$z" role="3clF47" />
      <node concept="3Tm1VV" id="1CY1mmCpr$$" role="1B3o_S" />
      <node concept="10P55v" id="1CY1mmCpry8" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4KEbQahQynD" role="jymVt" />
    <node concept="3clFb_" id="4KEbQahQyvv" role="jymVt">
      <property role="TrG5h" value="toCellDimension" />
      <node concept="3clFbS" id="4KEbQahQyvy" role="3clF47" />
      <node concept="3Tm1VV" id="4KEbQahQyvz" role="1B3o_S" />
      <node concept="10Oyi0" id="4KEbQahQyso" role="3clF45" />
      <node concept="37vLTG" id="4KEbQahQy_G" role="3clF46">
        <property role="TrG5h" value="d" />
        <node concept="10Oyi0" id="4KEbQahQy_F" role="1tU5fm" />
      </node>
    </node>
    <node concept="3clFb_" id="4KEbQahQyMc" role="jymVt">
      <property role="TrG5h" value="fromCellDimension" />
      <node concept="3clFbS" id="4KEbQahQyMf" role="3clF47" />
      <node concept="3Tm1VV" id="4KEbQahQyMg" role="1B3o_S" />
      <node concept="10Oyi0" id="4KEbQahQyIQ" role="3clF45" />
      <node concept="37vLTG" id="4KEbQahQySC" role="3clF46">
        <property role="TrG5h" value="d" />
        <node concept="10Oyi0" id="4KEbQahQySB" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7sG$k3BQmjr" role="jymVt" />
    <node concept="3clFb_" id="7sG$k3BQmmw" role="jymVt">
      <property role="TrG5h" value="getContext" />
      <node concept="3clFbS" id="7sG$k3BQmmz" role="3clF47" />
      <node concept="3Tm1VV" id="7sG$k3BQmm$" role="1B3o_S" />
      <node concept="3uibUv" id="7sG$k3BQmlG" role="3clF45">
        <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmlia_MTTP" role="jymVt" />
    <node concept="3clFb_" id="1CY1mmCtiHO" role="jymVt">
      <property role="TrG5h" value="beforeComponentMoved" />
      <node concept="3clFbS" id="1CY1mmCtiHR" role="3clF47" />
      <node concept="3Tm1VV" id="1CY1mmCtiHS" role="1B3o_S" />
      <node concept="3cqZAl" id="1CY1mmCtiFf" role="3clF45" />
      <node concept="37vLTG" id="1CY1mmCtjp3" role="3clF46">
        <property role="TrG5h" value="controller" />
        <node concept="3uibUv" id="1CY1mmCtjtU" role="1tU5fm">
          <ref role="3uigEE" node="7qPnRGFzXZV" resolve="ComponentEditorController" />
          <node concept="16syzq" id="1CY1mmCwzms" role="11_B2D">
            <ref role="16sUi3" node="6$FGuy5wCTB" resolve="P" />
          </node>
          <node concept="16syzq" id="1CY1mmCwztI" role="11_B2D">
            <ref role="16sUi3" node="7sG$k3BGd9B" resolve="PC" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1CY1mmCtjdI" role="3clF46">
        <property role="TrG5h" value="dx" />
        <node concept="10Oyi0" id="1CY1mmCtjdH" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1CY1mmCtjhT" role="3clF46">
        <property role="TrG5h" value="dy" />
        <node concept="10Oyi0" id="1CY1mmCtjme" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1CY1mmCtiCf" role="jymVt" />
    <node concept="3clFb_" id="6tmlia_MTZ4" role="jymVt">
      <property role="TrG5h" value="fireRepaint" />
      <node concept="3clFbS" id="6tmlia_MTZ7" role="3clF47" />
      <node concept="3Tm1VV" id="6tmlia_MTZ8" role="1B3o_S" />
      <node concept="3cqZAl" id="6tmlia_MTXs" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="7sG$k3BGd9d" role="1B3o_S" />
    <node concept="16euLQ" id="6$FGuy5wCTB" role="16eVyc">
      <property role="TrG5h" value="P" />
      <node concept="3uibUv" id="6$FGuy5wCWQ" role="3ztrMU">
        <ref role="3uigEE" to="hyqd:1HEL0zVYNIi" resolve="PortIdentity" />
      </node>
    </node>
    <node concept="16euLQ" id="7sG$k3BGd9B" role="16eVyc">
      <property role="TrG5h" value="PC" />
      <node concept="3uibUv" id="6tmliaBbpRX" role="3ztrMU">
        <ref role="3uigEE" node="6tmliaB28$P" resolve="PortController" />
        <node concept="16syzq" id="6$FGuy5wD0v" role="11_B2D">
          <ref role="16sUi3" node="6$FGuy5wCTB" resolve="P" />
        </node>
        <node concept="16syzq" id="6$FGuy5wD69" role="11_B2D">
          <ref role="16sUi3" node="7sG$k3BGd9B" resolve="PC" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2_D_3xWXMv6">
    <property role="TrG5h" value="MovableDragEventHandler" />
    <node concept="3Tm1VV" id="2_D_3xWXMv7" role="1B3o_S" />
    <node concept="3uibUv" id="2_D_3xWXMzb" role="EKbjA">
      <ref role="3uigEE" node="2_D_3xWXMp$" resolve="DragEventHandler" />
    </node>
    <node concept="2tJIrI" id="2_D_3xWXMzA" role="jymVt" />
    <node concept="312cEg" id="7sG$k3BN25s" role="jymVt">
      <property role="TrG5h" value="myDiagramController" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7sG$k3BN1Ia" role="1B3o_S" />
      <node concept="3uibUv" id="7PF$iX$h3O3" role="1tU5fm">
        <ref role="3uigEE" node="7sG$k3BGd9c" resolve="DiagramController" />
        <node concept="16syzq" id="6$FGuy5K$5f" role="11_B2D">
          <ref role="16sUi3" node="6$FGuy5Kyn2" resolve="P" />
        </node>
        <node concept="16syzq" id="7PF$iX$h5zd" role="11_B2D">
          <ref role="16sUi3" node="7PF$iX$h4E6" resolve="PC" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2_D_3xWYl4L" role="jymVt">
      <property role="TrG5h" value="myMovable" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2_D_3xWYjDR" role="1B3o_S" />
      <node concept="3uibUv" id="7PF$iX$h3ib" role="1tU5fm">
        <ref role="3uigEE" to="hyqd:309fsJ6aYiR" resolve="Moveable" />
      </node>
    </node>
    <node concept="312cEg" id="2_D_3xWYfV4" role="jymVt">
      <property role="TrG5h" value="myCaptureDeltaX" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2_D_3xWYe_e" role="1B3o_S" />
      <node concept="10Oyi0" id="2_D_3xWYfTP" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2_D_3xWYh8S" role="jymVt">
      <property role="TrG5h" value="myCaptureDeltaY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2_D_3xWYh8T" role="1B3o_S" />
      <node concept="10Oyi0" id="2_D_3xWYh8U" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="2_D_3xWYdkF" role="jymVt" />
    <node concept="3clFbW" id="2_D_3xWYnD9" role="jymVt">
      <node concept="37vLTG" id="2_D_3xWYoU5" role="3clF46">
        <property role="TrG5h" value="diagramController" />
        <node concept="3uibUv" id="7PF$iX$h75T" role="1tU5fm">
          <ref role="3uigEE" node="7sG$k3BGd9c" resolve="DiagramController" />
        </node>
      </node>
      <node concept="37vLTG" id="7sG$k3BQnru" role="3clF46">
        <property role="TrG5h" value="movable" />
        <node concept="3uibUv" id="7PF$iX$h18D" role="1tU5fm">
          <ref role="3uigEE" to="hyqd:309fsJ6aYiR" resolve="Moveable" />
        </node>
      </node>
      <node concept="3cqZAl" id="2_D_3xWYnDb" role="3clF45" />
      <node concept="3Tm1VV" id="2_D_3xWYnDc" role="1B3o_S" />
      <node concept="3clFbS" id="2_D_3xWYnDd" role="3clF47">
        <node concept="3clFbF" id="7sG$k3BQnK0" role="3cqZAp">
          <node concept="37vLTI" id="7sG$k3BQoq7" role="3clFbG">
            <node concept="37vLTw" id="7PF$iX$h7na" role="37vLTx">
              <ref role="3cqZAo" node="2_D_3xWYoU5" resolve="diagramController" />
            </node>
            <node concept="37vLTw" id="7sG$k3BQnJY" role="37vLTJ">
              <ref role="3cqZAo" node="7sG$k3BN25s" resolve="myDiagramController" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2_D_3xWYq8K" role="3cqZAp">
          <node concept="37vLTI" id="2_D_3xWYqKw" role="3clFbG">
            <node concept="37vLTw" id="7PF$iX$h7wN" role="37vLTx">
              <ref role="3cqZAo" node="7sG$k3BQnru" resolve="movable" />
            </node>
            <node concept="37vLTw" id="2_D_3xWYq8H" role="37vLTJ">
              <ref role="3cqZAo" node="2_D_3xWYl4L" resolve="myMovable" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2_D_3xWYrgb" role="3cqZAp">
          <node concept="37vLTI" id="2_D_3xWYvdt" role="3clFbG">
            <node concept="37vLTw" id="2_D_3xWYvDw" role="37vLTx">
              <ref role="3cqZAo" node="2_D_3xWYp4K" resolve="captureDeltaX" />
            </node>
            <node concept="37vLTw" id="2_D_3xWYrg9" role="37vLTJ">
              <ref role="3cqZAo" node="2_D_3xWYfV4" resolve="myCaptureDeltaX" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2_D_3xWYvIY" role="3cqZAp">
          <node concept="37vLTI" id="2_D_3xWYvIZ" role="3clFbG">
            <node concept="37vLTw" id="2_D_3xWYw2A" role="37vLTx">
              <ref role="3cqZAo" node="2_D_3xWYpoU" resolve="captureDeltaY" />
            </node>
            <node concept="37vLTw" id="2_D_3xWYGlW" role="37vLTJ">
              <ref role="3cqZAo" node="2_D_3xWYh8S" resolve="myCaptureDeltaY" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2_D_3xWYp4K" role="3clF46">
        <property role="TrG5h" value="captureDeltaX" />
        <node concept="10Oyi0" id="2_D_3xWYpfl" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2_D_3xWYpoU" role="3clF46">
        <property role="TrG5h" value="captureDeltaY" />
        <node concept="10Oyi0" id="2_D_3xWYpzx" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2_D_3xWYmlC" role="jymVt" />
    <node concept="3clFb_" id="2_D_3xWXM$s" role="jymVt">
      <property role="TrG5h" value="dragTo" />
      <node concept="3Tm1VV" id="2_D_3xWXM$u" role="1B3o_S" />
      <node concept="3cqZAl" id="2_D_3xWXM$v" role="3clF45" />
      <node concept="37vLTG" id="2_D_3xWXM$w" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="2_D_3xWXM$x" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2_D_3xWXM$y" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="2_D_3xWXM$z" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2_D_3xWXM$$" role="3clF47">
        <node concept="3cpWs8" id="7sG$k3BNdAg" role="3cqZAp">
          <node concept="3cpWsn" id="7sG$k3BNdAh" role="3cpWs9">
            <property role="TrG5h" value="modelX" />
            <node concept="10Oyi0" id="7PF$iX$gVUP" role="1tU5fm" />
            <node concept="2OqwBi" id="7sG$k3BNaUf" role="33vP2m">
              <node concept="37vLTw" id="7sG$k3BNa_C" role="2Oq$k0">
                <ref role="3cqZAo" node="7sG$k3BN25s" resolve="myDiagramController" />
              </node>
              <node concept="liA8E" id="7sG$k3BNbgK" role="2OqNvi">
                <ref role="37wK5l" node="309fsJ6iBhP" resolve="translateFromCellX" />
                <node concept="3cpWsd" id="7sG$k3BNbZ0" role="37wK5m">
                  <node concept="37vLTw" id="7sG$k3BNc9F" role="3uHU7w">
                    <ref role="3cqZAo" node="2_D_3xWYfV4" resolve="myCaptureDeltaX" />
                  </node>
                  <node concept="37vLTw" id="7sG$k3BNbke" role="3uHU7B">
                    <ref role="3cqZAo" node="2_D_3xWXM$w" resolve="x" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7PF$iX$gWDw" role="3cqZAp">
          <node concept="3cpWsn" id="7PF$iX$gWDx" role="3cpWs9">
            <property role="TrG5h" value="modelY" />
            <node concept="10Oyi0" id="7PF$iX$gWDy" role="1tU5fm" />
            <node concept="2OqwBi" id="7PF$iX$gWDz" role="33vP2m">
              <node concept="37vLTw" id="7PF$iX$gWD$" role="2Oq$k0">
                <ref role="3cqZAo" node="7sG$k3BN25s" resolve="myDiagramController" />
              </node>
              <node concept="liA8E" id="7PF$iX$gWD_" role="2OqNvi">
                <ref role="37wK5l" node="309fsJ6iBhV" resolve="translateFromCellY" />
                <node concept="3cpWsd" id="7PF$iX$gWDA" role="37wK5m">
                  <node concept="37vLTw" id="7PF$iX$gX$G" role="3uHU7w">
                    <ref role="3cqZAo" node="2_D_3xWYh8S" resolve="myCaptureDeltaY" />
                  </node>
                  <node concept="37vLTw" id="7PF$iX$h0nQ" role="3uHU7B">
                    <ref role="3cqZAo" node="2_D_3xWXM$y" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7PF$iX$h0Sh" role="3cqZAp" />
        <node concept="3clFbF" id="2_D_3xWYzNY" role="3cqZAp">
          <node concept="2OqwBi" id="2_D_3xWYzNZ" role="3clFbG">
            <node concept="2OqwBi" id="2_D_3xWYzO0" role="2Oq$k0">
              <node concept="2OqwBi" id="2_D_3xWYzO1" role="2Oq$k0">
                <node concept="liA8E" id="2_D_3xWYzO3" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getRepository():org.jetbrains.mps.openapi.module.SRepository" resolve="getRepository" />
                </node>
                <node concept="2OqwBi" id="7sG$k3BQn42" role="2Oq$k0">
                  <node concept="37vLTw" id="7sG$k3BQmO8" role="2Oq$k0">
                    <ref role="3cqZAo" node="7sG$k3BN25s" resolve="myDiagramController" />
                  </node>
                  <node concept="liA8E" id="7sG$k3BQnjb" role="2OqNvi">
                    <ref role="37wK5l" node="7sG$k3BQmmw" resolve="getContext" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2_D_3xWYzO4" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="2_D_3xWYzO5" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.executeCommandInEDT(java.lang.Runnable):void" resolve="executeCommandInEDT" />
              <node concept="1bVj0M" id="2_D_3xWYzO6" role="37wK5m">
                <node concept="3clFbS" id="2_D_3xWYzO7" role="1bW5cS">
                  <node concept="3clFbF" id="2_D_3xWYzO8" role="3cqZAp">
                    <node concept="2OqwBi" id="2_D_3xWYzO9" role="3clFbG">
                      <node concept="37vLTw" id="2_D_3xWZk9u" role="2Oq$k0">
                        <ref role="3cqZAo" node="2_D_3xWYl4L" resolve="myMovable" />
                      </node>
                      <node concept="liA8E" id="2_D_3xWYzOb" role="2OqNvi">
                        <ref role="37wK5l" to="hyqd:7qPnRGGmvkM" resolve="setX" />
                        <node concept="37vLTw" id="7sG$k3BQjXG" role="37wK5m">
                          <ref role="3cqZAo" node="7sG$k3BNdAh" resolve="modelX" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2_D_3xWYzOd" role="3cqZAp">
                    <node concept="2OqwBi" id="2_D_3xWYzOe" role="3clFbG">
                      <node concept="37vLTw" id="2_D_3xWZknd" role="2Oq$k0">
                        <ref role="3cqZAo" node="2_D_3xWYl4L" resolve="myMovable" />
                      </node>
                      <node concept="liA8E" id="2_D_3xWYzOg" role="2OqNvi">
                        <ref role="37wK5l" to="hyqd:7qPnRGGmvkS" resolve="setY" />
                        <node concept="37vLTw" id="7PF$iX$gZI1" role="37wK5m">
                          <ref role="3cqZAo" node="7PF$iX$gWDx" resolve="modelY" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2_D_3xWXM$_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="16euLQ" id="6$FGuy5Kyn2" role="16eVyc">
      <property role="TrG5h" value="P" />
      <node concept="3uibUv" id="6$FGuy5Kzl5" role="3ztrMU">
        <ref role="3uigEE" to="hyqd:1HEL0zVYNIi" resolve="PortIdentity" />
      </node>
    </node>
    <node concept="16euLQ" id="7PF$iX$h4E6" role="16eVyc">
      <property role="TrG5h" value="PC" />
      <node concept="3uibUv" id="6tmliaBh6lI" role="3ztrMU">
        <ref role="3uigEE" node="6tmliaB28$P" resolve="PortController" />
        <node concept="16syzq" id="6$FGuy5KzFE" role="11_B2D">
          <ref role="16sUi3" node="6$FGuy5Kyn2" resolve="P" />
        </node>
        <node concept="16syzq" id="6$FGuy5KzI8" role="11_B2D">
          <ref role="16sUi3" node="7PF$iX$h4E6" resolve="PC" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="6tmliaAmB_O">
    <property role="TrG5h" value="MouseHandler" />
    <node concept="2tJIrI" id="6tmliaAmBAa" role="jymVt" />
    <node concept="3clFb_" id="6tmliaAnKOI" role="jymVt">
      <property role="TrG5h" value="containsPoint" />
      <node concept="37vLTG" id="6tmliaARpmF" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="6tmliaARpo$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6tmliaARppX" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="6tmliaARprU" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="6tmliaAnKOL" role="3clF47" />
      <node concept="3Tm1VV" id="6tmliaAnKOM" role="1B3o_S" />
      <node concept="10P_77" id="6tmliaAnKOk" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6tmliaAnKNm" role="jymVt" />
    <node concept="3clFb_" id="6tmliaAmBAV" role="jymVt">
      <property role="TrG5h" value="setSelected" />
      <node concept="3clFbS" id="6tmliaAmBAY" role="3clF47" />
      <node concept="3Tm1VV" id="6tmliaAmBAZ" role="1B3o_S" />
      <node concept="3cqZAl" id="6tmliaAu22Q" role="3clF45" />
      <node concept="37vLTG" id="6tmliaAmBBR" role="3clF46">
        <property role="TrG5h" value="selected" />
        <node concept="10P_77" id="6tmliaAmBBQ" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaAR9cz" role="jymVt" />
    <node concept="3clFb_" id="6tmliaARynH" role="jymVt">
      <property role="TrG5h" value="hoverAt" />
      <node concept="3clFbS" id="6tmliaARynK" role="3clF47" />
      <node concept="3Tm1VV" id="6tmliaARynL" role="1B3o_S" />
      <node concept="3cqZAl" id="6tmliaARymF" role="3clF45" />
      <node concept="37vLTG" id="6tmliaARyqo" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="6tmliaARyqn" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6tmliaARysr" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="6tmliaARyuG" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaARzuF" role="jymVt" />
    <node concept="3clFb_" id="6tmliaARzym" role="jymVt">
      <property role="TrG5h" value="stopHovering" />
      <node concept="3clFbS" id="6tmliaARzyp" role="3clF47" />
      <node concept="3Tm1VV" id="6tmliaARzyq" role="1B3o_S" />
      <node concept="3cqZAl" id="6tmliaARzx0" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6tmliaARyle" role="jymVt" />
    <node concept="3clFb_" id="6tmliaAR9ig" role="jymVt">
      <property role="TrG5h" value="startDrag" />
      <node concept="3clFbS" id="6tmliaAR9ij" role="3clF47" />
      <node concept="3Tm1VV" id="6tmliaAR9ik" role="1B3o_S" />
      <node concept="3uibUv" id="6tmliaAR9hS" role="3clF45">
        <ref role="3uigEE" node="2_D_3xWXMp$" resolve="DragEventHandler" />
      </node>
      <node concept="37vLTG" id="6tmliaAR9k2" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="6tmliaAR9k1" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6tmliaAR9lm" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="6tmliaAR9nh" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="6tmliaAmB_P" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="6tmliaB28$P">
    <property role="TrG5h" value="PortController" />
    <node concept="3Tm1VV" id="6tmliaB28$Q" role="1B3o_S" />
    <node concept="2tJIrI" id="6tmliaB28_f" role="jymVt" />
    <node concept="3clFb_" id="6tmliaB28F8" role="jymVt">
      <property role="TrG5h" value="getComponentController" />
      <node concept="3clFbS" id="6tmliaB28Fb" role="3clF47" />
      <node concept="3Tm1VV" id="6tmliaB28Fc" role="1B3o_S" />
      <node concept="3uibUv" id="6tmliaB28DJ" role="3clF45">
        <ref role="3uigEE" node="7qPnRGFzXZV" resolve="ComponentEditorController" />
        <node concept="16syzq" id="6$FGuy5wCMt" role="11_B2D">
          <ref role="16sUi3" node="6$FGuy5wCHw" resolve="P" />
        </node>
        <node concept="16syzq" id="6tmliaB28EW" role="11_B2D">
          <ref role="16sUi3" node="6tmliaB28BN" resolve="PC" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaB28FK" role="jymVt" />
    <node concept="3clFb_" id="6tmliaB28HE" role="jymVt">
      <property role="TrG5h" value="getPort" />
      <node concept="3clFbS" id="6tmliaB28HH" role="3clF47" />
      <node concept="3Tm1VV" id="6tmliaB28HI" role="1B3o_S" />
      <node concept="16syzq" id="6$FGuy5wCKo" role="3clF45">
        <ref role="16sUi3" node="6$FGuy5wCHw" resolve="P" />
      </node>
    </node>
    <node concept="16euLQ" id="6$FGuy5wCHw" role="16eVyc">
      <property role="TrG5h" value="P" />
      <node concept="3uibUv" id="6$FGuy5wCJy" role="3ztrMU">
        <ref role="3uigEE" to="hyqd:1HEL0zVYNIi" resolve="PortIdentity" />
      </node>
    </node>
    <node concept="16euLQ" id="6tmliaB28BN" role="16eVyc">
      <property role="TrG5h" value="PC" />
      <node concept="3uibUv" id="6tmliaB28D7" role="3ztrMU">
        <ref role="3uigEE" node="6tmliaB28$P" resolve="PortController" />
        <node concept="16syzq" id="6$FGuy5GoP$" role="11_B2D">
          <ref role="16sUi3" node="6$FGuy5wCHw" resolve="P" />
        </node>
        <node concept="16syzq" id="6$FGuy5GoQL" role="11_B2D">
          <ref role="16sUi3" node="6tmliaB28BN" resolve="PC" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaB28Iq" role="jymVt" />
    <node concept="3clFb_" id="6tmliaB28KD" role="jymVt">
      <property role="TrG5h" value="getBounds" />
      <node concept="3clFbS" id="6tmliaB28KG" role="3clF47" />
      <node concept="3Tm1VV" id="6tmliaB28KH" role="1B3o_S" />
      <node concept="3uibUv" id="6tmliaB28K1" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
    </node>
  </node>
</model>

