<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:a3d9cb66-c492-4189-9359-282b020eccf4(org.fbme.scenes.ext.contextMenu)">
  <persistence version="9" />
  <languages>
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wvnl" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.extensions(MPS.Editor/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="lwvz" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.selection(MPS.Editor/)" />
    <import index="x4nc" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.selectionRestoring(MPS.Editor/)" />
    <import index="b8lf" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.selection(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
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
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="1KzgIApMed1">
    <property role="TrG5h" value="CellSelectionOnPopupTrigger" />
    <node concept="2tJIrI" id="1KzgIApMevN" role="jymVt" />
    <node concept="Wx3nA" id="7eBFChAa6fA" role="jymVt">
      <property role="TrG5h" value="INSTANCES" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7eBFChAa60q" role="1B3o_S" />
      <node concept="3uibUv" id="7eBFChAa6mA" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="7eBFChAa6nO" role="11_B2D">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
        <node concept="3uibUv" id="1KzgIApMeWl" role="11_B2D">
          <ref role="3uigEE" node="1KzgIApMed1" resolve="CellSelectionOnPopupTrigger" />
        </node>
      </node>
      <node concept="2ShNRf" id="7eBFChAa6vS" role="33vP2m">
        <node concept="1pGfFk" id="7eBFChAa6SL" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="7eBFChAa76q" role="1pMfVU">
            <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
          </node>
          <node concept="3uibUv" id="1KzgIApMEOC" role="1pMfVU">
            <ref role="3uigEE" node="1KzgIApMed1" resolve="CellSelectionOnPopupTrigger" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7eBFChAa5MX" role="jymVt" />
    <node concept="Wx3nA" id="7eBFChA9ZlF" role="jymVt">
      <property role="TrG5h" value="EDITOR_EXTENSION" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="7eBFChAa683" role="1B3o_S" />
      <node concept="2ShNRf" id="7eBFChAa2GF" role="33vP2m">
        <node concept="YeOm9" id="7eBFChAa5pL" role="2ShVmc">
          <node concept="1Y3b0j" id="7eBFChAa5pO" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="wvnl:~EditorExtension" resolve="EditorExtension" />
            <node concept="3Tm1VV" id="7eBFChAa5pP" role="1B3o_S" />
            <node concept="3clFb_" id="7eBFChAa5pR" role="jymVt">
              <property role="TrG5h" value="isApplicable" />
              <node concept="3Tm1VV" id="7eBFChAa5pS" role="1B3o_S" />
              <node concept="10P_77" id="7eBFChAa5pU" role="3clF45" />
              <node concept="37vLTG" id="7eBFChAa5pV" role="3clF46">
                <property role="TrG5h" value="ec" />
                <node concept="3uibUv" id="7eBFChAa5pW" role="1tU5fm">
                  <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
                </node>
                <node concept="2AHcQZ" id="7eBFChAa5pX" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="7eBFChAa5pY" role="3clF47">
                <node concept="3clFbF" id="1KzgIApMG_d" role="3cqZAp">
                  <node concept="2ZW3vV" id="1KzgIApMGUK" role="3clFbG">
                    <node concept="3uibUv" id="1KzgIApMNx$" role="2ZW6by">
                      <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                    </node>
                    <node concept="37vLTw" id="1KzgIApMG_c" role="2ZW6bz">
                      <ref role="3cqZAo" node="7eBFChAa5pV" resolve="ec" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="7eBFChAa5q0" role="jymVt">
              <property role="TrG5h" value="install" />
              <node concept="3Tm1VV" id="7eBFChAa5q1" role="1B3o_S" />
              <node concept="3cqZAl" id="7eBFChAa5q3" role="3clF45" />
              <node concept="37vLTG" id="7eBFChAa5q4" role="3clF46">
                <property role="TrG5h" value="ec" />
                <node concept="3uibUv" id="7eBFChAa5q5" role="1tU5fm">
                  <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
                </node>
                <node concept="2AHcQZ" id="7eBFChAa5q6" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="7eBFChAa5q7" role="3clF47">
                <node concept="3cpWs8" id="1KzgIApPCko" role="3cqZAp">
                  <node concept="3cpWsn" id="1KzgIApPCkp" role="3cpWs9">
                    <property role="TrG5h" value="inst" />
                    <node concept="3uibUv" id="1KzgIApPCkl" role="1tU5fm">
                      <ref role="3uigEE" node="1KzgIApMed1" resolve="CellSelectionOnPopupTrigger" />
                    </node>
                    <node concept="2ShNRf" id="1KzgIApPCkq" role="33vP2m">
                      <node concept="1pGfFk" id="1KzgIApPCkr" role="2ShVmc">
                        <ref role="37wK5l" node="1KzgIApMgKH" resolve="CellSelectionOnPopupTrigger" />
                        <node concept="10QFUN" id="1KzgIApPCks" role="37wK5m">
                          <node concept="3uibUv" id="1KzgIApPCkt" role="10QFUM">
                            <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                          </node>
                          <node concept="37vLTw" id="1KzgIApPCku" role="10QFUP">
                            <ref role="3cqZAo" node="7eBFChAa5q4" resolve="ec" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1KzgIApPCIn" role="3cqZAp">
                  <node concept="2OqwBi" id="1KzgIApPCOt" role="3clFbG">
                    <node concept="37vLTw" id="1KzgIApPCIl" role="2Oq$k0">
                      <ref role="3cqZAo" node="1KzgIApPCkp" resolve="inst" />
                    </node>
                    <node concept="liA8E" id="1KzgIApPDTe" role="2OqNvi">
                      <ref role="37wK5l" node="1KzgIApN0aA" resolve="install" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7eBFChAa7oH" role="3cqZAp">
                  <node concept="2OqwBi" id="7eBFChAa7HC" role="3clFbG">
                    <node concept="37vLTw" id="7eBFChAa7oG" role="2Oq$k0">
                      <ref role="3cqZAo" node="7eBFChAa6fA" resolve="INSTANCES" />
                    </node>
                    <node concept="liA8E" id="7eBFChAah_d" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                      <node concept="37vLTw" id="7eBFChAahH_" role="37wK5m">
                        <ref role="3cqZAo" node="7eBFChAa5q4" resolve="ec" />
                      </node>
                      <node concept="37vLTw" id="1KzgIApPCkv" role="37wK5m">
                        <ref role="3cqZAo" node="1KzgIApPCkp" resolve="inst" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="7eBFChAa5q9" role="jymVt">
              <property role="TrG5h" value="uninstall" />
              <node concept="3Tm1VV" id="7eBFChAa5qa" role="1B3o_S" />
              <node concept="3cqZAl" id="7eBFChAa5qc" role="3clF45" />
              <node concept="37vLTG" id="7eBFChAa5qd" role="3clF46">
                <property role="TrG5h" value="ec" />
                <node concept="3uibUv" id="7eBFChAa5qe" role="1tU5fm">
                  <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
                </node>
                <node concept="2AHcQZ" id="7eBFChAa5qf" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="7eBFChAa5qg" role="3clF47">
                <node concept="3clFbF" id="1KzgIApMjtl" role="3cqZAp">
                  <node concept="2OqwBi" id="1KzgIApMtX9" role="3clFbG">
                    <node concept="2OqwBi" id="1KzgIApMjHu" role="2Oq$k0">
                      <node concept="37vLTw" id="1KzgIApMEBu" role="2Oq$k0">
                        <ref role="3cqZAo" node="7eBFChAa6fA" resolve="INSTANCES" />
                      </node>
                      <node concept="liA8E" id="1KzgIApMtEz" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object)" resolve="remove" />
                        <node concept="37vLTw" id="1KzgIApMtM7" role="37wK5m">
                          <ref role="3cqZAo" node="7eBFChAa5qd" resolve="ec" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="1KzgIApMEpP" role="2OqNvi">
                      <ref role="37wK5l" node="1KzgIApMhXQ" resolve="uninstall" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7eBFChAa2EX" role="1tU5fm">
        <ref role="3uigEE" to="wvnl:~EditorExtension" resolve="EditorExtension" />
      </node>
    </node>
    <node concept="2tJIrI" id="1KzgIApMRRP" role="jymVt" />
    <node concept="2tJIrI" id="1KzgIApMRT5" role="jymVt" />
    <node concept="312cEg" id="1KzgIApMSDI" role="jymVt">
      <property role="TrG5h" value="myEditorComponent" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1KzgIApMSnM" role="1B3o_S" />
      <node concept="3uibUv" id="1KzgIApMSDg" role="1tU5fm">
        <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
      </node>
    </node>
    <node concept="312cEg" id="1KzgIApN1l0" role="jymVt">
      <property role="TrG5h" value="myMouseListener" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1KzgIApN0Wi" role="1B3o_S" />
      <node concept="3uibUv" id="1KzgIApN1kE" role="1tU5fm">
        <ref role="3uigEE" to="hyam:~MouseAdapter" resolve="MouseAdapter" />
      </node>
      <node concept="2ShNRf" id="1KzgIApN1Pb" role="33vP2m">
        <node concept="YeOm9" id="1KzgIApNej9" role="2ShVmc">
          <node concept="1Y3b0j" id="1KzgIApNejc" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="hyam:~MouseAdapter" resolve="MouseAdapter" />
            <ref role="37wK5l" to="hyam:~MouseAdapter.&lt;init&gt;()" resolve="MouseAdapter" />
            <node concept="3Tm1VV" id="1KzgIApNejd" role="1B3o_S" />
            <node concept="3clFb_" id="1KzgIApNerX" role="jymVt">
              <property role="TrG5h" value="mousePressed" />
              <node concept="3Tm1VV" id="1KzgIApNerY" role="1B3o_S" />
              <node concept="3cqZAl" id="1KzgIApNes0" role="3clF45" />
              <node concept="37vLTG" id="1KzgIApNes1" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="1KzgIApNes2" role="1tU5fm">
                  <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="1KzgIApNes4" role="3clF47">
                <node concept="3clFbJ" id="1KzgIApP6Km" role="3cqZAp">
                  <node concept="3clFbS" id="1KzgIApP6Ko" role="3clFbx">
                    <node concept="3cpWs6" id="1KzgIApPcoR" role="3cqZAp" />
                  </node>
                  <node concept="3fqX7Q" id="1KzgIApPc59" role="3clFbw">
                    <node concept="2OqwBi" id="1KzgIApPc5b" role="3fr31v">
                      <node concept="37vLTw" id="1KzgIApPc5c" role="2Oq$k0">
                        <ref role="3cqZAo" node="1KzgIApNes1" resolve="event" />
                      </node>
                      <node concept="liA8E" id="1KzgIApPc5d" role="2OqNvi">
                        <ref role="37wK5l" to="hyam:~MouseEvent.isPopupTrigger()" resolve="isPopupTrigger" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1KzgIApPcp4" role="3cqZAp" />
                <node concept="3cpWs8" id="1KzgIApNwD4" role="3cqZAp">
                  <node concept="3cpWsn" id="1KzgIApNwD5" role="3cpWs9">
                    <property role="TrG5h" value="selectionManager" />
                    <node concept="3uibUv" id="1KzgIApNwD1" role="1tU5fm">
                      <ref role="3uigEE" to="lwvz:~SelectionManager" resolve="SelectionManager" />
                    </node>
                    <node concept="2OqwBi" id="1KzgIApNwD6" role="33vP2m">
                      <node concept="37vLTw" id="1KzgIApNwD7" role="2Oq$k0">
                        <ref role="3cqZAo" node="1KzgIApMSDI" resolve="myEditorComponent" />
                      </node>
                      <node concept="liA8E" id="1KzgIApNwD8" role="2OqNvi">
                        <ref role="37wK5l" to="exr9:~EditorComponent.getSelectionManager()" resolve="getSelectionManager" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1KzgIApNx1H" role="3cqZAp">
                  <node concept="3clFbS" id="1KzgIApNx1J" role="3clFbx">
                    <node concept="3clFbH" id="1KzgIApNLxe" role="3cqZAp" />
                    <node concept="3cpWs8" id="1KzgIApOsWx" role="3cqZAp">
                      <node concept="3cpWsn" id="1KzgIApOsWy" role="3cpWs9">
                        <property role="TrG5h" value="leaf" />
                        <node concept="3uibUv" id="1KzgIApOsWv" role="1tU5fm">
                          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                        </node>
                        <node concept="2OqwBi" id="1KzgIApOsWz" role="33vP2m">
                          <node concept="2OqwBi" id="1KzgIApOsW$" role="2Oq$k0">
                            <node concept="37vLTw" id="1KzgIApOsW_" role="2Oq$k0">
                              <ref role="3cqZAo" node="1KzgIApMSDI" resolve="myEditorComponent" />
                            </node>
                            <node concept="liA8E" id="1KzgIApOsWA" role="2OqNvi">
                              <ref role="37wK5l" to="exr9:~EditorComponent.getRootCell()" resolve="getRootCell" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1KzgIApOsWB" role="2OqNvi">
                            <ref role="37wK5l" to="f4zo:~EditorCell.findLeaf(int,int)" resolve="findLeaf" />
                            <node concept="2OqwBi" id="1KzgIApOsWC" role="37wK5m">
                              <node concept="37vLTw" id="1KzgIApOsWD" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KzgIApNes1" resolve="event" />
                              </node>
                              <node concept="liA8E" id="1KzgIApOsWE" role="2OqNvi">
                                <ref role="37wK5l" to="hyam:~MouseEvent.getX()" resolve="getX" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="1KzgIApOsWF" role="37wK5m">
                              <node concept="37vLTw" id="1KzgIApOsWG" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KzgIApNes1" resolve="event" />
                              </node>
                              <node concept="liA8E" id="1KzgIApOsWH" role="2OqNvi">
                                <ref role="37wK5l" to="hyam:~MouseEvent.getY()" resolve="getY" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1KzgIApOtQ3" role="3cqZAp">
                      <node concept="3clFbS" id="1KzgIApOtQ5" role="3clFbx">
                        <node concept="3cpWs6" id="1KzgIApOChN" role="3cqZAp" />
                      </node>
                      <node concept="1Wc70l" id="1KzgIApOzql" role="3clFbw">
                        <node concept="3y3z36" id="1KzgIApOCcO" role="3uHU7B">
                          <node concept="10Nm6u" id="1KzgIApOCgJ" role="3uHU7w" />
                          <node concept="37vLTw" id="1KzgIApOzuj" role="3uHU7B">
                            <ref role="3cqZAo" node="1KzgIApOsWy" resolve="leaf" />
                          </node>
                        </node>
                        <node concept="3y3z36" id="1KzgIApOzm6" role="3uHU7w">
                          <node concept="10Nm6u" id="1KzgIApOzpK" role="3uHU7w" />
                          <node concept="2YIFZM" id="1KzgIApOu9I" role="3uHU7B">
                            <ref role="37wK5l" to="f4zo:~CellTraversalUtil.getFoldedParent(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="getFoldedParent" />
                            <ref role="1Pybhc" to="f4zo:~CellTraversalUtil" resolve="CellTraversalUtil" />
                            <node concept="37vLTw" id="1KzgIApOudR" role="37wK5m">
                              <ref role="3cqZAo" node="1KzgIApOsWy" resolve="leaf" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="1KzgIApOCig" role="3cqZAp">
                      <node concept="3clFbS" id="1KzgIApOCii" role="3clFbx">
                        <node concept="3clFbF" id="1KzgIApOZxE" role="3cqZAp">
                          <node concept="37vLTI" id="1KzgIApP46a" role="3clFbG">
                            <node concept="37vLTw" id="1KzgIApOZxC" role="37vLTJ">
                              <ref role="3cqZAo" node="1KzgIApOsWy" resolve="leaf" />
                            </node>
                            <node concept="2OqwBi" id="1KzgIApP4Hu" role="37vLTx">
                              <node concept="2OqwBi" id="1KzgIApP4eR" role="2Oq$k0">
                                <node concept="37vLTw" id="1KzgIApP4eS" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1KzgIApMSDI" resolve="myEditorComponent" />
                                </node>
                                <node concept="liA8E" id="1KzgIApP4eT" role="2OqNvi">
                                  <ref role="37wK5l" to="exr9:~EditorComponent.getRootCell()" resolve="getRootCell" />
                                </node>
                              </node>
                              <node concept="liA8E" id="1KzgIApP5cw" role="2OqNvi">
                                <ref role="37wK5l" to="f4zo:~EditorCell.findNearestLeafOnLine(int,int,org.jetbrains.mps.util.Condition)" resolve="findNearestLeafOnLine" />
                                <node concept="2OqwBi" id="1KzgIApP5nq" role="37wK5m">
                                  <node concept="37vLTw" id="1KzgIApP5nr" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1KzgIApNes1" resolve="event" />
                                  </node>
                                  <node concept="liA8E" id="1KzgIApP5ns" role="2OqNvi">
                                    <ref role="37wK5l" to="hyam:~MouseEvent.getX()" resolve="getX" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="1KzgIApP5nt" role="37wK5m">
                                  <node concept="37vLTw" id="1KzgIApP5nu" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1KzgIApNes1" resolve="event" />
                                  </node>
                                  <node concept="liA8E" id="1KzgIApP5nv" role="2OqNvi">
                                    <ref role="37wK5l" to="hyam:~MouseEvent.getY()" resolve="getY" />
                                  </node>
                                </node>
                                <node concept="10M0yZ" id="1KzgIApP6ff" role="37wK5m">
                                  <ref role="3cqZAo" to="f4zo:~CellConditions.SELECTABLE" resolve="SELECTABLE" />
                                  <ref role="1PxDUh" to="f4zo:~CellConditions" resolve="CellConditions" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="22lmx$" id="1KzgIApOHeI" role="3clFbw">
                        <node concept="3fqX7Q" id="1KzgIApOZth" role="3uHU7w">
                          <node concept="2OqwBi" id="1KzgIApOZtj" role="3fr31v">
                            <node concept="37vLTw" id="1KzgIApOZtk" role="2Oq$k0">
                              <ref role="3cqZAo" node="1KzgIApOsWy" resolve="leaf" />
                            </node>
                            <node concept="liA8E" id="1KzgIApOZtl" role="2OqNvi">
                              <ref role="37wK5l" to="f4zo:~EditorCell.isSelectable()" resolve="isSelectable" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="1KzgIApOH7$" role="3uHU7B">
                          <node concept="37vLTw" id="1KzgIApOCuG" role="3uHU7B">
                            <ref role="3cqZAo" node="1KzgIApOsWy" resolve="leaf" />
                          </node>
                          <node concept="10Nm6u" id="1KzgIApOHcm" role="3uHU7w" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1KzgIApNx_C" role="3cqZAp">
                      <node concept="2OqwBi" id="1KzgIApNxHZ" role="3clFbG">
                        <node concept="37vLTw" id="1KzgIApNx_A" role="2Oq$k0">
                          <ref role="3cqZAo" node="1KzgIApNwD5" resolve="selectionManager" />
                        </node>
                        <node concept="liA8E" id="1KzgIApPdER" role="2OqNvi">
                          <ref role="37wK5l" to="lwvz:~SelectionManager.setSelection(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="setSelection" />
                          <node concept="37vLTw" id="1KzgIApPdFV" role="37wK5m">
                            <ref role="3cqZAo" node="1KzgIApOsWy" resolve="leaf" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="1KzgIApNxcR" role="3clFbw">
                    <ref role="37wK5l" node="1KzgIApNqWt" resolve="isTrivialSelection" />
                    <node concept="2OqwBi" id="1KzgIApNhJI" role="37wK5m">
                      <node concept="37vLTw" id="1KzgIApNwD9" role="2Oq$k0">
                        <ref role="3cqZAo" node="1KzgIApNwD5" resolve="selectionManager" />
                      </node>
                      <node concept="liA8E" id="1KzgIApNhJM" role="2OqNvi">
                        <ref role="37wK5l" to="lwvz:~SelectionManager.getSelection()" resolve="getSelection" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="1KzgIApNes5" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1KzgIApNpxb" role="jymVt" />
    <node concept="3clFb_" id="1KzgIApNqWt" role="jymVt">
      <property role="TrG5h" value="isTrivialSelection" />
      <node concept="3clFbS" id="1KzgIApNqWw" role="3clF47">
        <node concept="3clFbJ" id="1KzgIApNs3F" role="3cqZAp">
          <node concept="3clFbS" id="1KzgIApNs3G" role="3clFbx">
            <node concept="3cpWs8" id="1KzgIApNs3H" role="3cqZAp">
              <node concept="3cpWsn" id="1KzgIApNs3I" role="3cpWs9">
                <property role="TrG5h" value="labelSelection" />
                <node concept="3uibUv" id="1KzgIApNs3J" role="1tU5fm">
                  <ref role="3uigEE" to="b8lf:~EditorCellLabelSelection" resolve="EditorCellLabelSelection" />
                </node>
                <node concept="10QFUN" id="1KzgIApNs3K" role="33vP2m">
                  <node concept="3uibUv" id="1KzgIApNs3L" role="10QFUM">
                    <ref role="3uigEE" to="b8lf:~EditorCellLabelSelection" resolve="EditorCellLabelSelection" />
                  </node>
                  <node concept="37vLTw" id="1KzgIApNs3M" role="10QFUP">
                    <ref role="3cqZAo" node="1KzgIApNrtr" resolve="selection" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1KzgIApNsnO" role="3cqZAp">
              <node concept="3fqX7Q" id="1KzgIApNtmU" role="3cqZAk">
                <node concept="2OqwBi" id="1KzgIApNtmW" role="3fr31v">
                  <node concept="37vLTw" id="1KzgIApNtmX" role="2Oq$k0">
                    <ref role="3cqZAo" node="1KzgIApNs3I" resolve="labelSelection" />
                  </node>
                  <node concept="liA8E" id="1KzgIApNtmY" role="2OqNvi">
                    <ref role="37wK5l" to="b8lf:~EditorCellLabelSelection.hasNonTrivialSelection()" resolve="hasNonTrivialSelection" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1KzgIApNs3R" role="3clFbw">
            <node concept="3uibUv" id="1KzgIApNs3S" role="2ZW6by">
              <ref role="3uigEE" to="b8lf:~EditorCellLabelSelection" resolve="EditorCellLabelSelection" />
            </node>
            <node concept="37vLTw" id="1KzgIApNs3T" role="2ZW6bz">
              <ref role="3cqZAo" node="1KzgIApNrtr" resolve="selection" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1KzgIApNulc" role="3cqZAp">
          <node concept="2ZW3vV" id="1KzgIApNvmR" role="3cqZAk">
            <node concept="3uibUv" id="1KzgIApNvSy" role="2ZW6by">
              <ref role="3uigEE" to="lwvz:~SingularSelection" resolve="SingularSelection" />
            </node>
            <node concept="37vLTw" id="1KzgIApNuOz" role="2ZW6bz">
              <ref role="3cqZAo" node="1KzgIApNrtr" resolve="selection" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1KzgIApNqrH" role="1B3o_S" />
      <node concept="10P_77" id="1KzgIApNqVZ" role="3clF45" />
      <node concept="37vLTG" id="1KzgIApNrtr" role="3clF46">
        <property role="TrG5h" value="selection" />
        <node concept="3uibUv" id="1KzgIApNrtq" role="1tU5fm">
          <ref role="3uigEE" to="lwvz:~Selection" resolve="Selection" />
        </node>
        <node concept="2AHcQZ" id="1KzgIApNrXB" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1KzgIApMg9E" role="jymVt" />
    <node concept="3clFbW" id="1KzgIApMgKH" role="jymVt">
      <node concept="37vLTG" id="1KzgIApMh4t" role="3clF46">
        <property role="TrG5h" value="ec" />
        <node concept="3uibUv" id="1KzgIApMRJZ" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
        <node concept="2AHcQZ" id="1KzgIApMh4v" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3cqZAl" id="1KzgIApMgKJ" role="3clF45" />
      <node concept="3Tm1VV" id="1KzgIApMgKK" role="1B3o_S" />
      <node concept="3clFbS" id="1KzgIApMgKL" role="3clF47">
        <node concept="3clFbF" id="1KzgIApMSWu" role="3cqZAp">
          <node concept="37vLTI" id="1KzgIApMYq6" role="3clFbG">
            <node concept="37vLTw" id="1KzgIApMYxK" role="37vLTx">
              <ref role="3cqZAo" node="1KzgIApMh4t" resolve="ec" />
            </node>
            <node concept="37vLTw" id="1KzgIApMSWs" role="37vLTJ">
              <ref role="3cqZAo" node="1KzgIApMSDI" resolve="myEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1KzgIApN1Hq" role="3cqZAp" />
      </node>
    </node>
    <node concept="2tJIrI" id="1KzgIApMhkc" role="jymVt" />
    <node concept="3clFb_" id="1KzgIApN0aA" role="jymVt">
      <property role="TrG5h" value="install" />
      <node concept="3clFbS" id="1KzgIApN0aD" role="3clF47">
        <node concept="3cpWs8" id="1vLgCgwUxPw" role="3cqZAp">
          <node concept="3cpWsn" id="1vLgCgwUxPx" role="3cpWs9">
            <property role="TrG5h" value="mouseListeners" />
            <node concept="10Q1$e" id="1vLgCgwUxPs" role="1tU5fm">
              <node concept="3uibUv" id="1vLgCgwUxPv" role="10Q1$1">
                <ref role="3uigEE" to="hyam:~MouseListener" resolve="MouseListener" />
              </node>
            </node>
            <node concept="2OqwBi" id="1vLgCgwUxPy" role="33vP2m">
              <node concept="37vLTw" id="1vLgCgwUxPz" role="2Oq$k0">
                <ref role="3cqZAo" node="1KzgIApMSDI" resolve="myEditorComponent" />
              </node>
              <node concept="liA8E" id="1vLgCgwUxP$" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Component.getMouseListeners()" resolve="getMouseListeners" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1vLgCgwUyIH" role="3cqZAp">
          <node concept="2GrKxI" id="1vLgCgwUyIJ" role="2Gsz3X">
            <property role="TrG5h" value="ml" />
          </node>
          <node concept="37vLTw" id="1vLgCgwUz9i" role="2GsD0m">
            <ref role="3cqZAo" node="1vLgCgwUxPx" resolve="mouseListeners" />
          </node>
          <node concept="3clFbS" id="1vLgCgwUyIN" role="2LFqv$">
            <node concept="3clFbF" id="1vLgCgwUzz5" role="3cqZAp">
              <node concept="2OqwBi" id="1vLgCgwU$k4" role="3clFbG">
                <node concept="37vLTw" id="1vLgCgwUzz4" role="2Oq$k0">
                  <ref role="3cqZAo" node="1KzgIApMSDI" resolve="myEditorComponent" />
                </node>
                <node concept="liA8E" id="1vLgCgwUU_T" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.removeMouseListener(java.awt.event.MouseListener)" resolve="removeMouseListener" />
                  <node concept="2GrUjf" id="1vLgCgwUUV3" role="37wK5m">
                    <ref role="2Gs0qQ" node="1vLgCgwUyIJ" resolve="ml" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1KzgIApPdKb" role="3cqZAp">
          <node concept="2OqwBi" id="1KzgIApPevt" role="3clFbG">
            <node concept="37vLTw" id="1KzgIApPdKa" role="2Oq$k0">
              <ref role="3cqZAo" node="1KzgIApMSDI" resolve="myEditorComponent" />
            </node>
            <node concept="liA8E" id="1KzgIApP$KW" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.addMouseListener(java.awt.event.MouseListener)" resolve="addMouseListener" />
              <node concept="37vLTw" id="1KzgIApP_Nq" role="37wK5m">
                <ref role="3cqZAo" node="1KzgIApN1l0" resolve="myMouseListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1vLgCgwUVpb" role="3cqZAp">
          <node concept="2GrKxI" id="1vLgCgwUVpc" role="2Gsz3X">
            <property role="TrG5h" value="ml" />
          </node>
          <node concept="37vLTw" id="1vLgCgwUVpd" role="2GsD0m">
            <ref role="3cqZAo" node="1vLgCgwUxPx" resolve="mouseListeners" />
          </node>
          <node concept="3clFbS" id="1vLgCgwUVpe" role="2LFqv$">
            <node concept="3clFbF" id="1vLgCgwUVpf" role="3cqZAp">
              <node concept="2OqwBi" id="1vLgCgwUVpg" role="3clFbG">
                <node concept="37vLTw" id="1vLgCgwUVph" role="2Oq$k0">
                  <ref role="3cqZAo" node="1KzgIApMSDI" resolve="myEditorComponent" />
                </node>
                <node concept="liA8E" id="1vLgCgwUVpi" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.addMouseListener(java.awt.event.MouseListener)" resolve="addMouseListener" />
                  <node concept="2GrUjf" id="1vLgCgwUVpj" role="37wK5m">
                    <ref role="2Gs0qQ" node="1vLgCgwUVpc" resolve="ml" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1KzgIApMZLl" role="1B3o_S" />
      <node concept="3cqZAl" id="1KzgIApN0ag" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1KzgIApMhll" role="jymVt" />
    <node concept="3clFb_" id="1KzgIApMhXQ" role="jymVt">
      <property role="TrG5h" value="uninstall" />
      <node concept="3clFbS" id="1KzgIApMhXT" role="3clF47">
        <node concept="3clFbF" id="1KzgIApPAbB" role="3cqZAp">
          <node concept="2OqwBi" id="1KzgIApPAbC" role="3clFbG">
            <node concept="37vLTw" id="1KzgIApPAbD" role="2Oq$k0">
              <ref role="3cqZAo" node="1KzgIApMSDI" resolve="myEditorComponent" />
            </node>
            <node concept="liA8E" id="1KzgIApPAbE" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.removeMouseListener(java.awt.event.MouseListener)" resolve="removeMouseListener" />
              <node concept="37vLTw" id="1KzgIApPAbF" role="37wK5m">
                <ref role="3cqZAo" node="1KzgIApN1l0" resolve="myMouseListener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1KzgIApMhE9" role="3clF45" />
      <node concept="3Tm6S6" id="1KzgIApPAy8" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1KzgIApMevP" role="jymVt" />
    <node concept="3Tm1VV" id="1KzgIApMed2" role="1B3o_S" />
  </node>
</model>

