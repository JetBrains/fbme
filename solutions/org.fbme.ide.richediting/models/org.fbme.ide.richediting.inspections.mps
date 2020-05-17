<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:bc5caf0f-df14-4a61-a09e-297c528e7095(org.fbme.ide.richediting.inspections)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="3bo0" ref="r:2b66dd0d-2c90-4da0-994d-d7579a6bca2a(org.fbme.scenes.controllers.scene)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="vjnt" ref="r:dcc8041c-4feb-4a59-913c-c4ff83a14df3(richediting.adapters.fbnetwork)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="5ueo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.style(MPS.Editor/)" />
    <import index="rvgs" ref="r:22f3147c-cd8c-496f-a7fc-c31f351de000(org.fbme.scenes.controllers)" />
    <import index="wvnl" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.extensions(MPS.Editor/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="g27j" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork(org.fbme.lib/)" />
    <import index="74cb" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.instances(org.fbme.lib/)" />
    <import index="7adg" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.common(org.fbme.lib/)" />
    <import index="mpua" ref="r:70067d3a-bbe4-4c69-a49e-eb3628586837(org.fbme.ide.richediting.viewmodel)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
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
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
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
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="1181808852946" name="isFinal" index="DiZV1" />
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
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
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
      <concept id="1068581242869" name="jetbrains.mps.baseLanguage.structure.MinusExpression" flags="nn" index="3cpWsd" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
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
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="nn" index="1ZRNhn" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
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
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
    </language>
  </registry>
  <node concept="312cEu" id="1R4IoyQOhNn">
    <property role="TrG5h" value="InspectionsFacility" />
    <node concept="2tJIrI" id="1R4IoyQRgGN" role="jymVt" />
    <node concept="312cEg" id="1R4IoyQRiAg" role="jymVt">
      <property role="TrG5h" value="PORT_TEXT_X_OFFSET" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyQRhEI" role="1B3o_S" />
      <node concept="10Oyi0" id="1R4IoyQRi_V" role="1tU5fm" />
      <node concept="3cmrfG" id="1R4IoyQRjxR" role="33vP2m">
        <property role="3cmrfH" value="5" />
      </node>
    </node>
    <node concept="312cEg" id="1R4IoyQRj$B" role="jymVt">
      <property role="TrG5h" value="PORT_TEXT_Y_OFFSET" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyQRj$C" role="1B3o_S" />
      <node concept="10Oyi0" id="1R4IoyQRj$D" role="1tU5fm" />
      <node concept="3cmrfG" id="1R4IoyQRj$E" role="33vP2m">
        <property role="3cmrfH" value="2" />
      </node>
    </node>
    <node concept="312cEg" id="1R4IoyQSHVF" role="jymVt">
      <property role="TrG5h" value="COMPONENT_TEXT_Y_OFFSET" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyQSHVG" role="1B3o_S" />
      <node concept="10Oyi0" id="1R4IoyQSHVH" role="1tU5fm" />
      <node concept="3cmrfG" id="1R4IoyQSHVI" role="33vP2m">
        <property role="3cmrfH" value="10" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQOhOa" role="jymVt" />
    <node concept="312cEg" id="1R4IoyQOjqU" role="jymVt">
      <property role="TrG5h" value="myInstance" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyQOjm1" role="1B3o_S" />
      <node concept="3uibUv" id="19RKY2xCjQ5" role="1tU5fm">
        <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
      </node>
      <node concept="2AHcQZ" id="1R4IoyQO$RN" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQPud0" role="jymVt" />
    <node concept="312cEg" id="1R4IoyQPwgQ" role="jymVt">
      <property role="TrG5h" value="myEditor" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyQPvzM" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQPwgJ" role="1tU5fm">
        <ref role="3uigEE" to="3bo0:17nGqbJcVKF" resolve="SceneEditor" />
      </node>
      <node concept="2AHcQZ" id="1R4IoyQPwW9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyRnjAh" role="jymVt" />
    <node concept="312cEg" id="1R4IoyRnr1s" role="jymVt">
      <property role="TrG5h" value="myLayer" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyRnlye" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyRnr0D" role="1tU5fm">
        <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
      </node>
      <node concept="2AHcQZ" id="1R4IoyRnsPn" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQPHvz" role="jymVt" />
    <node concept="312cEg" id="1R4IoyQPJCV" role="jymVt">
      <property role="TrG5h" value="myControllerProvider" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyQPIRB" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQPJBt" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="4Hbpy_fx_13" role="11_B2D">
          <ref role="3uigEE" to="mpua:5er1YemzlNF" resolve="NetworkComponentView" />
        </node>
        <node concept="3uibUv" id="1R4IoyQPQt3" role="11_B2D">
          <ref role="3uigEE" to="vjnt:5jb5jNBJKHJ" resolve="FBNetworkComponentController" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyQPKl2" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyRbsNZ" role="jymVt" />
    <node concept="312cEg" id="1R4IoyRbrjn" role="jymVt">
      <property role="TrG5h" value="myLayoutModel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyRbrjo" role="1B3o_S" />
      <node concept="2AHcQZ" id="1R4IoyRbrjs" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="1R4IoyRbujY" role="1tU5fm">
        <ref role="3uigEE" to="rvgs:2syzu7qKiXL" resolve="ROLayoutModel" />
        <node concept="3uibUv" id="4Hbpy_fqXB7" role="11_B2D">
          <ref role="3uigEE" to="mpua:5er1YemzlNF" resolve="NetworkComponentView" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQO$fI" role="jymVt" />
    <node concept="312cEg" id="1R4IoyQOuKr" role="jymVt">
      <property role="TrG5h" value="myPortInspections" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyQOjwe" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQOpju" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~HashMap" resolve="HashMap" />
        <node concept="3uibUv" id="4Hbpy_fkjZR" role="11_B2D">
          <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
          <node concept="3qUE_q" id="4Hbpy_fkoGS" role="11_B2D">
            <node concept="3uibUv" id="4Hbpy_fkqPR" role="3qUE_r">
              <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="1R4IoyQOzMM" role="11_B2D">
          <ref role="3uigEE" node="1R4IoyQOz$0" resolve="InspectionsFacility.InspectionData" />
        </node>
      </node>
      <node concept="2ShNRf" id="1R4IoyQOuSK" role="33vP2m">
        <node concept="1pGfFk" id="1R4IoyQOzmH" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="4Hbpy_fksJ6" role="1pMfVU">
            <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
            <node concept="3qUE_q" id="4Hbpy_fksJ7" role="11_B2D">
              <node concept="3uibUv" id="4Hbpy_fksJ8" role="3qUE_r">
                <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
              </node>
            </node>
          </node>
          <node concept="3uibUv" id="1R4IoyQOzRi" role="1pMfVU">
            <ref role="3uigEE" node="1R4IoyQOz$0" resolve="InspectionsFacility.InspectionData" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1R4IoyQOuPf" role="jymVt">
      <property role="TrG5h" value="myComponentInspections" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyQOuMO" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQOuQ1" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~HashMap" resolve="HashMap" />
        <node concept="3uibUv" id="4Hbpy_fkYO6" role="11_B2D">
          <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
        </node>
        <node concept="3uibUv" id="1R4IoyQOzP2" role="11_B2D">
          <ref role="3uigEE" node="1R4IoyQOz$0" resolve="InspectionsFacility.InspectionData" />
        </node>
      </node>
      <node concept="2ShNRf" id="1R4IoyQOzu9" role="33vP2m">
        <node concept="1pGfFk" id="1R4IoyQOzua" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="4Hbpy_fl0eV" role="1pMfVU">
            <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
          </node>
          <node concept="3uibUv" id="1R4IoyQOzTe" role="1pMfVU">
            <ref role="3uigEE" node="1R4IoyQOz$0" resolve="InspectionsFacility.InspectionData" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4Hbpy_fzDga" role="jymVt">
      <property role="TrG5h" value="myNetworkView" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4Hbpy_fzyeL" role="1B3o_S" />
      <node concept="3uibUv" id="4Hbpy_fzDez" role="1tU5fm">
        <ref role="3uigEE" to="mpua:5er1YemzlqL" resolve="NetworkView" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyRn5KO" role="jymVt" />
    <node concept="312cEg" id="1R4IoyRn9wJ" role="jymVt">
      <property role="TrG5h" value="myLayouter" />
      <node concept="3Tm6S6" id="1R4IoyRn7Dd" role="1B3o_S" />
      <node concept="3uibUv" id="3LngKhTHDjl" role="1tU5fm">
        <ref role="3uigEE" node="1R4IoyQPyL5" resolve="InspectionsFacility.MyLayouter" />
      </node>
      <node concept="2ShNRf" id="1R4IoyRnblf" role="33vP2m">
        <node concept="HV5vD" id="1R4IoyRnbMh" role="2ShVmc">
          <ref role="HV5vE" node="1R4IoyQPyL5" resolve="InspectionsFacility.MyLayouter" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1R4IoyRnbSA" role="jymVt">
      <property role="TrG5h" value="myPainter" />
      <node concept="3Tm6S6" id="1R4IoyRnbSB" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyRninv" role="1tU5fm">
        <ref role="3uigEE" node="1R4IoyRnfGz" resolve="InspectionsFacility.MyPainter" />
      </node>
      <node concept="2ShNRf" id="1R4IoyRnbSD" role="33vP2m">
        <node concept="HV5vD" id="1R4IoyRnbSE" role="2ShVmc">
          <ref role="HV5vE" node="1R4IoyRnfGz" resolve="InspectionsFacility.MyPainter" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQO$k8" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQO$pW" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQO$pX" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQO$pY" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQO$q0" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQO$q4" role="3cqZAp">
          <node concept="37vLTI" id="1R4IoyQO$q6" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQO$IJ" role="37vLTJ">
              <ref role="3cqZAo" node="1R4IoyQOjqU" resolve="myInstance" />
            </node>
            <node concept="37vLTw" id="1R4IoyQO$qd" role="37vLTx">
              <ref role="3cqZAo" node="1R4IoyQO$q3" resolve="networkInstance" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Hbpy_fzHBX" role="3cqZAp">
          <node concept="37vLTI" id="4Hbpy_fzHXE" role="3clFbG">
            <node concept="37vLTw" id="4Hbpy_fzIoP" role="37vLTx">
              <ref role="3cqZAo" node="4Hbpy_fzBdi" resolve="networkView" />
            </node>
            <node concept="37vLTw" id="4Hbpy_fzHBV" role="37vLTJ">
              <ref role="3cqZAo" node="4Hbpy_fzDga" resolve="myNetworkView" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRbuHd" role="3cqZAp">
          <node concept="37vLTI" id="1R4IoyRbvgV" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyRbvlE" role="37vLTx">
              <ref role="3cqZAo" node="1R4IoyQPu9f" resolve="editor" />
            </node>
            <node concept="37vLTw" id="1R4IoyRbuHb" role="37vLTJ">
              <ref role="3cqZAo" node="1R4IoyQPwgQ" resolve="myEditor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRbvrO" role="3cqZAp">
          <node concept="37vLTI" id="1R4IoyRbwfr" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyRbwn2" role="37vLTx">
              <ref role="3cqZAo" node="1R4IoyQPCk3" resolve="controllerProvider" />
            </node>
            <node concept="37vLTw" id="1R4IoyRbvrM" role="37vLTJ">
              <ref role="3cqZAo" node="1R4IoyQPJCV" resolve="myControllerProvider" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRbwvR" role="3cqZAp">
          <node concept="37vLTI" id="1R4IoyRbx9i" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyRbxjL" role="37vLTx">
              <ref role="3cqZAo" node="1R4IoyRbqSS" resolve="layoutModel" />
            </node>
            <node concept="37vLTw" id="1R4IoyRbwvP" role="37vLTJ">
              <ref role="3cqZAo" node="1R4IoyRbrjn" resolve="myLayoutModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRntzR" role="3cqZAp">
          <node concept="37vLTI" id="1R4IoyRnuo2" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyRnuuV" role="37vLTx">
              <ref role="3cqZAo" node="1R4IoyRnj3q" resolve="layer" />
            </node>
            <node concept="37vLTw" id="1R4IoyRntzP" role="37vLTJ">
              <ref role="3cqZAo" node="1R4IoyRnr1s" resolve="myLayer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRmXFs" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyRmXUp" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyRmXFq" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyRbqSS" resolve="layoutModel" />
            </node>
            <node concept="liA8E" id="1R4IoyRmY46" role="2OqNvi">
              <ref role="37wK5l" to="rvgs:1KCfUoKRVCm" resolve="addListener" />
              <node concept="2ShNRf" id="1R4IoyRmY7m" role="37wK5m">
                <node concept="YeOm9" id="1R4IoyRmYB4" role="2ShVmc">
                  <node concept="1Y3b0j" id="1R4IoyRmYB7" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="rvgs:1KCfUoKRV4f" resolve="ROLayoutModel.Listener" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="1R4IoyRmYB8" role="1B3o_S" />
                    <node concept="3clFb_" id="1R4IoyRmYBa" role="jymVt">
                      <property role="TrG5h" value="onComponentAdded" />
                      <node concept="37vLTG" id="1R4IoyRmYBb" role="3clF46">
                        <property role="TrG5h" value="component" />
                        <node concept="3uibUv" id="4Hbpy_fqY6H" role="1tU5fm">
                          <ref role="3uigEE" to="mpua:5er1YemzlNF" resolve="NetworkComponentView" />
                        </node>
                        <node concept="2AHcQZ" id="1R4IoyRmYBd" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="1R4IoyRmYBe" role="3clF46">
                        <property role="TrG5h" value="x" />
                        <node concept="10Oyi0" id="1R4IoyRmYBf" role="1tU5fm" />
                      </node>
                      <node concept="37vLTG" id="1R4IoyRmYBg" role="3clF46">
                        <property role="TrG5h" value="y" />
                        <node concept="10Oyi0" id="1R4IoyRmYBh" role="1tU5fm" />
                      </node>
                      <node concept="3Tm1VV" id="1R4IoyRmYBj" role="1B3o_S" />
                      <node concept="3cqZAl" id="1R4IoyRmYBk" role="3clF45" />
                      <node concept="3clFbS" id="1R4IoyRmYBl" role="3clF47">
                        <node concept="3SKdUt" id="1R4IoyRmZfu" role="3cqZAp">
                          <node concept="1PaTwC" id="3D$ZgG8vrBG" role="3ndbpf">
                            <node concept="3oM_SD" id="3D$ZgG8vrBH" role="1PaTwD">
                              <property role="3oM_SC" value="do" />
                            </node>
                            <node concept="3oM_SD" id="3D$ZgG8vrBI" role="1PaTwD">
                              <property role="3oM_SC" value="nothing" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="1R4IoyRmYBn" role="jymVt">
                      <property role="TrG5h" value="onComponentRemoved" />
                      <node concept="37vLTG" id="1R4IoyRmYBo" role="3clF46">
                        <property role="TrG5h" value="component" />
                        <node concept="3uibUv" id="4Hbpy_fqYei" role="1tU5fm">
                          <ref role="3uigEE" to="mpua:5er1YemzlNF" resolve="NetworkComponentView" />
                        </node>
                        <node concept="2AHcQZ" id="1R4IoyRmYBq" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="1R4IoyRmYBs" role="1B3o_S" />
                      <node concept="3cqZAl" id="1R4IoyRmYBt" role="3clF45" />
                      <node concept="3clFbS" id="1R4IoyRmYBu" role="3clF47">
                        <node concept="3SKdUt" id="1R4IoyRmZeT" role="3cqZAp">
                          <node concept="1PaTwC" id="3D$ZgG8vrBJ" role="3ndbpf">
                            <node concept="3oM_SD" id="3D$ZgG8vrBK" role="1PaTwD">
                              <property role="3oM_SC" value="do" />
                            </node>
                            <node concept="3oM_SD" id="3D$ZgG8vrBL" role="1PaTwD">
                              <property role="3oM_SC" value="nothing" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="1R4IoyRmYBw" role="jymVt">
                      <property role="TrG5h" value="onComponentsMoved" />
                      <node concept="3Tm1VV" id="1R4IoyRmYBy" role="1B3o_S" />
                      <node concept="3cqZAl" id="1R4IoyRmYBz" role="3clF45" />
                      <node concept="37vLTG" id="1R4IoyRmYB$" role="3clF46">
                        <property role="TrG5h" value="components" />
                        <node concept="2AHcQZ" id="1R4IoyRmYB_" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                        <node concept="3uibUv" id="1R4IoyRmYBA" role="1tU5fm">
                          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                          <node concept="3uibUv" id="4Hbpy_fqYnY" role="11_B2D">
                            <ref role="3uigEE" to="mpua:5er1YemzlNF" resolve="NetworkComponentView" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="1R4IoyRmYBC" role="3clF46">
                        <property role="TrG5h" value="dx" />
                        <node concept="10Oyi0" id="1R4IoyRmYBD" role="1tU5fm" />
                      </node>
                      <node concept="37vLTG" id="1R4IoyRmYBE" role="3clF46">
                        <property role="TrG5h" value="dy" />
                        <node concept="10Oyi0" id="1R4IoyRmYBF" role="1tU5fm" />
                      </node>
                      <node concept="37vLTG" id="1R4IoyRmYBG" role="3clF46">
                        <property role="TrG5h" value="completed" />
                        <node concept="10P_77" id="1R4IoyRmYBH" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="1R4IoyRmYBI" role="3clF47">
                        <node concept="3clFbF" id="1R4IoyRnhOQ" role="3cqZAp">
                          <node concept="2OqwBi" id="1R4IoyRni5_" role="3clFbG">
                            <node concept="37vLTw" id="3LngKhTHPRm" role="2Oq$k0">
                              <ref role="3cqZAo" node="1R4IoyRn9wJ" resolve="myLayouter" />
                            </node>
                            <node concept="liA8E" id="1R4IoyRnig_" role="2OqNvi">
                              <ref role="37wK5l" node="1R4IoyQPzNa" resolve="relayout" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="4Hbpy_fqXWu" role="2Ghqu4">
                      <ref role="3uigEE" to="mpua:5er1YemzlNF" resolve="NetworkComponentView" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRtAwP" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyRtAVT" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyRtAwN" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQPwgQ" resolve="myEditor" />
            </node>
            <node concept="liA8E" id="1R4IoyRtBeh" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:1R4IoyRrSCW" resolve="addInitializer" />
              <node concept="2ShNRf" id="1R4IoyRtBhk" role="37wK5m">
                <node concept="HV5vD" id="1R4IoyRtBMb" role="2ShVmc">
                  <ref role="HV5vE" node="1R4IoyRtvSr" resolve="InspectionsFacility.MyInitializer" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4Hbpy_fzBdi" role="3clF46">
        <property role="TrG5h" value="networkView" />
        <node concept="3uibUv" id="4Hbpy_fzCaZ" role="1tU5fm">
          <ref role="3uigEE" to="mpua:5er1YemzlqL" resolve="NetworkView" />
        </node>
        <node concept="2AHcQZ" id="4Hbpy_fzCc_" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQO$q3" role="3clF46">
        <property role="TrG5h" value="networkInstance" />
        <node concept="3uibUv" id="19RKY2xCjLx" role="1tU5fm">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQO$Po" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQPu9f" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="1R4IoyQPubL" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJcVKF" resolve="SceneEditor" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQPuck" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQPCk3" role="3clF46">
        <property role="TrG5h" value="controllerProvider" />
        <node concept="2AHcQZ" id="1R4IoyRbqRS" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="1R4IoyRbr0j" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
          <node concept="3uibUv" id="4Hbpy_fx$PK" role="11_B2D">
            <ref role="3uigEE" to="mpua:5er1YemzlNF" resolve="NetworkComponentView" />
          </node>
          <node concept="3uibUv" id="1R4IoyRbr0l" role="11_B2D">
            <ref role="3uigEE" to="vjnt:5jb5jNBJKHJ" resolve="FBNetworkComponentController" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyRbqSS" role="3clF46">
        <property role="TrG5h" value="layoutModel" />
        <node concept="3uibUv" id="1R4IoyRbqWy" role="1tU5fm">
          <ref role="3uigEE" to="rvgs:2syzu7qKiXL" resolve="ROLayoutModel" />
          <node concept="3uibUv" id="4Hbpy_fqXnG" role="11_B2D">
            <ref role="3uigEE" to="mpua:5er1YemzlNF" resolve="NetworkComponentView" />
          </node>
        </node>
        <node concept="2AHcQZ" id="1R4IoyRbqZp" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyRnj3q" role="3clF46">
        <property role="TrG5h" value="layer" />
        <node concept="3uibUv" id="1R4IoyRnjlt" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRnjmM" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQO$bl" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQOhP5" role="jymVt">
      <property role="TrG5h" value="setInspectionForPort" />
      <node concept="3clFbS" id="1R4IoyQOhP8" role="3clF47">
        <node concept="3clFbJ" id="1R4IoyQOREm" role="3cqZAp">
          <node concept="3clFbC" id="1R4IoyQORTX" role="3clFbw">
            <node concept="10Nm6u" id="1R4IoyQORXc" role="3uHU7w" />
            <node concept="37vLTw" id="1R4IoyQORHC" role="3uHU7B">
              <ref role="3cqZAo" node="1R4IoyQOhRz" resolve="inspection" />
            </node>
          </node>
          <node concept="3clFbS" id="1R4IoyQOREo" role="3clFbx">
            <node concept="3clFbF" id="1R4IoyQOSdV" role="3cqZAp">
              <node concept="2OqwBi" id="1R4IoyQOSdW" role="3clFbG">
                <node concept="37vLTw" id="1R4IoyQOSdX" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQOuKr" resolve="myPortInspections" />
                </node>
                <node concept="liA8E" id="1R4IoyQOSdY" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~HashMap.remove(java.lang.Object)" resolve="remove" />
                  <node concept="37vLTw" id="1R4IoyQOSdZ" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQOhQZ" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1R4IoyQORZ5" role="9aQIa">
            <node concept="3clFbS" id="1R4IoyQORZ6" role="9aQI4">
              <node concept="3cpWs8" id="6_nlG7emmXP" role="3cqZAp">
                <node concept="3cpWsn" id="6_nlG7emmXQ" role="3cpWs9">
                  <property role="TrG5h" value="data" />
                  <node concept="3uibUv" id="6_nlG7emmXN" role="1tU5fm">
                    <ref role="3uigEE" node="1R4IoyQOz$0" resolve="InspectionsFacility.InspectionData" />
                  </node>
                  <node concept="2ShNRf" id="6_nlG7emmXR" role="33vP2m">
                    <node concept="1pGfFk" id="6_nlG7emmXS" role="2ShVmc">
                      <ref role="37wK5l" node="1R4IoyQOzXA" resolve="InspectionsFacility.InspectionData" />
                      <node concept="37vLTw" id="6_nlG7emmXT" role="37wK5m">
                        <ref role="3cqZAo" node="1R4IoyQOhRz" resolve="inspection" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6_nlG7emnr6" role="3cqZAp">
                <node concept="1rXfSq" id="6_nlG7emnr4" role="3clFbG">
                  <ref role="37wK5l" node="1R4IoyRn_0h" resolve="relayoutPortInspection" />
                  <node concept="37vLTw" id="6_nlG7emnGO" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQOhQZ" resolve="port" />
                  </node>
                  <node concept="37vLTw" id="6_nlG7emo15" role="37wK5m">
                    <ref role="3cqZAo" node="6_nlG7emmXQ" resolve="data" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1R4IoyQO$Xi" role="3cqZAp">
                <node concept="2OqwBi" id="1R4IoyQO_GW" role="3clFbG">
                  <node concept="37vLTw" id="1R4IoyQO$Xh" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQOuKr" resolve="myPortInspections" />
                  </node>
                  <node concept="liA8E" id="1R4IoyQOQlO" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~HashMap.put(java.lang.Object,java.lang.Object)" resolve="put" />
                    <node concept="37vLTw" id="1R4IoyQOQ_p" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQOhQZ" resolve="port" />
                    </node>
                    <node concept="37vLTw" id="6_nlG7emmXU" role="37wK5m">
                      <ref role="3cqZAo" node="6_nlG7emmXQ" resolve="data" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6_nlG7embKN" role="3cqZAp">
          <node concept="2OqwBi" id="6_nlG7emc96" role="3clFbG">
            <node concept="37vLTw" id="6_nlG7embKL" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQPwgQ" resolve="myEditor" />
            </node>
            <node concept="liA8E" id="6_nlG7eme8U" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:6tmlia_MTZ4" resolve="fireRepaint" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyQOhOL" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyQOhOY" role="3clF45" />
      <node concept="37vLTG" id="1R4IoyQOhQZ" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="2AHcQZ" id="1R4IoyQOhSN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="64EP$RZ8n5J" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
          <node concept="3qTvmN" id="64EP$RZ8n5K" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQOhRz" role="3clF46">
        <property role="TrG5h" value="inspection" />
        <node concept="3uibUv" id="1R4IoyQOjbV" role="1tU5fm">
          <ref role="3uigEE" node="1R4IoyQOhX3" resolve="Inspection" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQOhTT" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQOhVv" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQOhUr" role="jymVt">
      <property role="TrG5h" value="setInspectionForComponent" />
      <node concept="3clFbS" id="1R4IoyQOhUs" role="3clF47">
        <node concept="3clFbJ" id="1R4IoyQOU7h" role="3cqZAp">
          <node concept="3clFbC" id="1R4IoyQOU7i" role="3clFbw">
            <node concept="10Nm6u" id="1R4IoyQOU7j" role="3uHU7w" />
            <node concept="37vLTw" id="1R4IoyQOU7k" role="3uHU7B">
              <ref role="3cqZAo" node="1R4IoyQOhUy" resolve="inspection" />
            </node>
          </node>
          <node concept="3clFbS" id="1R4IoyQOU7l" role="3clFbx">
            <node concept="3clFbF" id="1R4IoyQOU7m" role="3cqZAp">
              <node concept="2OqwBi" id="1R4IoyQOU7n" role="3clFbG">
                <node concept="37vLTw" id="1R4IoyQOV5h" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQOuPf" resolve="myComponentInspections" />
                </node>
                <node concept="liA8E" id="1R4IoyQOU7p" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~HashMap.remove(java.lang.Object)" resolve="remove" />
                  <node concept="37vLTw" id="1R4IoyQOU7q" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQOhUv" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="1R4IoyQOU7r" role="9aQIa">
            <node concept="3clFbS" id="1R4IoyQOU7s" role="9aQI4">
              <node concept="3cpWs8" id="6_nlG7emm0e" role="3cqZAp">
                <node concept="3cpWsn" id="6_nlG7emm0f" role="3cpWs9">
                  <property role="TrG5h" value="data" />
                  <node concept="3uibUv" id="6_nlG7emm0b" role="1tU5fm">
                    <ref role="3uigEE" node="1R4IoyQOz$0" resolve="InspectionsFacility.InspectionData" />
                  </node>
                  <node concept="2ShNRf" id="6_nlG7emm0g" role="33vP2m">
                    <node concept="1pGfFk" id="6_nlG7emm0h" role="2ShVmc">
                      <ref role="37wK5l" node="1R4IoyQOzXA" resolve="InspectionsFacility.InspectionData" />
                      <node concept="37vLTw" id="6_nlG7emm0i" role="37wK5m">
                        <ref role="3cqZAo" node="1R4IoyQOhUy" resolve="inspection" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6_nlG7emlB0" role="3cqZAp">
                <node concept="1rXfSq" id="6_nlG7emlAY" role="3clFbG">
                  <ref role="37wK5l" node="1R4IoyRfVWa" resolve="relayoutComponentInspection" />
                  <node concept="37vLTw" id="6_nlG7emlXm" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQOhUv" resolve="component" />
                  </node>
                  <node concept="37vLTw" id="6_nlG7emmKi" role="37wK5m">
                    <ref role="3cqZAo" node="6_nlG7emm0f" resolve="data" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1R4IoyQOU7t" role="3cqZAp">
                <node concept="2OqwBi" id="1R4IoyQOU7u" role="3clFbG">
                  <node concept="37vLTw" id="1R4IoyQOVk7" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQOuPf" resolve="myComponentInspections" />
                  </node>
                  <node concept="liA8E" id="1R4IoyQOU7w" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~HashMap.put(java.lang.Object,java.lang.Object)" resolve="put" />
                    <node concept="37vLTw" id="1R4IoyQOU7x" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQOhUv" resolve="component" />
                    </node>
                    <node concept="37vLTw" id="6_nlG7emm0j" role="37wK5m">
                      <ref role="3cqZAo" node="6_nlG7emm0f" resolve="data" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6_nlG7emec9" role="3cqZAp">
          <node concept="2OqwBi" id="6_nlG7emeca" role="3clFbG">
            <node concept="37vLTw" id="6_nlG7emecb" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQPwgQ" resolve="myEditor" />
            </node>
            <node concept="liA8E" id="6_nlG7emecc" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:6tmlia_MTZ4" resolve="fireRepaint" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyQOhUt" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyQOhUu" role="3clF45" />
      <node concept="37vLTG" id="1R4IoyQOhUv" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="4Hbpy_fqWn3" role="1tU5fm">
          <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQOhUx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQOhUy" role="3clF46">
        <property role="TrG5h" value="inspection" />
        <node concept="3uibUv" id="1R4IoyQOjd6" role="1tU5fm">
          <ref role="3uigEE" node="1R4IoyQOhX3" resolve="Inspection" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQOhU$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQOjdo" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQOjft" role="jymVt">
      <property role="TrG5h" value="clear" />
      <node concept="3clFbS" id="1R4IoyQOjfw" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQOVy_" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQOWiv" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQOVy$" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQOuKr" resolve="myPortInspections" />
            </node>
            <node concept="liA8E" id="1R4IoyQPc74" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~HashMap.clear()" resolve="clear" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyQPcGU" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyQPdBu" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQPcGS" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQOuPf" resolve="myComponentInspections" />
            </node>
            <node concept="liA8E" id="1R4IoyQPtJm" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~HashMap.clear()" resolve="clear" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1R4IoyQOjeS" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQOjgd" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1R4IoyQPzUL" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQP_on" role="jymVt">
      <property role="TrG5h" value="install" />
      <node concept="3clFbS" id="1R4IoyQP_oq" role="3clF47">
        <node concept="3clFbF" id="1R4IoyRniM8" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyRniUM" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyRniM7" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQPwgQ" resolve="myEditor" />
            </node>
            <node concept="liA8E" id="1R4IoyRnj25" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJdjBx" resolve="addPainter" />
              <node concept="37vLTw" id="1R4IoyRnv8x" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyRnr1s" resolve="myLayer" />
              </node>
              <node concept="37vLTw" id="1R4IoyRnuFv" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyRnbSA" resolve="myPainter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRnuJM" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyRnuJN" role="3clFbG">
            <node concept="37vLTw" id="3LngKhTHQtP" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQPwgQ" resolve="myEditor" />
            </node>
            <node concept="liA8E" id="1R4IoyRnuJP" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJd4hx" resolve="addLayouter" />
              <node concept="37vLTw" id="3LngKhTHQ$6" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyRn9wJ" resolve="myLayouter" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyQP$Gh" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyQP_oi" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1R4IoyQPA4f" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQPBv7" role="jymVt">
      <property role="TrG5h" value="uninstall" />
      <node concept="3clFbS" id="1R4IoyQPBva" role="3clF47">
        <node concept="3clFbF" id="3LngKhTHQYI" role="3cqZAp">
          <node concept="2OqwBi" id="3LngKhTHQYJ" role="3clFbG">
            <node concept="37vLTw" id="3LngKhTHQYK" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQPwgQ" resolve="myEditor" />
            </node>
            <node concept="liA8E" id="3LngKhTHQYL" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJd4p2" resolve="removeLayouter" />
              <node concept="37vLTw" id="3LngKhTHQYM" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyRn9wJ" resolve="myLayouter" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRnvgJ" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyRnvpx" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyRnvgI" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyQPwgQ" resolve="myEditor" />
            </node>
            <node concept="liA8E" id="1R4IoyRnxa8" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJdk1N" resolve="removePainter" />
              <node concept="37vLTw" id="1R4IoyRnxeB" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyRnbSA" resolve="myPainter" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyQPAMV" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyQPBv2" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1R4IoyQOzxI" role="jymVt" />
    <node concept="312cEu" id="1R4IoyQOz$0" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="InspectionData" />
      <node concept="312cEg" id="7eBFChAdFMS" role="jymVt">
        <property role="TrG5h" value="myInspection" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7eBFChAdDXU" role="1B3o_S" />
        <node concept="3uibUv" id="7eBFChAdFL4" role="1tU5fm">
          <ref role="3uigEE" node="1R4IoyQOhX3" resolve="Inspection" />
        </node>
      </node>
      <node concept="2tJIrI" id="7eBFChAdCbJ" role="jymVt" />
      <node concept="312cEg" id="1R4IoyRo9Mm" role="jymVt">
        <property role="TrG5h" value="myColor" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="1R4IoyRo7Wj" role="1B3o_S" />
        <node concept="3uibUv" id="1R4IoyRoj55" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="2tJIrI" id="1R4IoyQOzL2" role="jymVt" />
      <node concept="312cEg" id="1R4IoyQOzGz" role="jymVt">
        <property role="TrG5h" value="myX" />
        <node concept="10Oyi0" id="1R4IoyQOzGs" role="1tU5fm" />
        <node concept="3Tm6S6" id="1R4IoyQOzJK" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="1R4IoyQOzLq" role="jymVt" />
      <node concept="312cEg" id="1R4IoyQOzK4" role="jymVt">
        <property role="TrG5h" value="myY" />
        <node concept="3Tm6S6" id="1R4IoyQOzJX" role="1B3o_S" />
        <node concept="10Oyi0" id="1R4IoyQOzJi" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="1R4IoyQQuAd" role="jymVt" />
      <node concept="312cEg" id="1R4IoyQQwjr" role="jymVt">
        <property role="TrG5h" value="myTextline" />
        <node concept="3Tm6S6" id="1R4IoyQQvr5" role="1B3o_S" />
        <node concept="3uibUv" id="1R4IoyQQwjm" role="1tU5fm">
          <ref role="3uigEE" to="g51k:~TextLine" resolve="TextLine" />
        </node>
      </node>
      <node concept="2tJIrI" id="1R4IoyQOzUU" role="jymVt" />
      <node concept="3Tm6S6" id="1R4IoyQOzJp" role="1B3o_S" />
      <node concept="3clFbW" id="1R4IoyQOzXA" role="jymVt">
        <node concept="3cqZAl" id="1R4IoyQOzXB" role="3clF45" />
        <node concept="3Tm6S6" id="1R4IoyQOzXC" role="1B3o_S" />
        <node concept="3clFbS" id="1R4IoyQOzXE" role="3clF47">
          <node concept="3clFbF" id="7eBFChAdI7D" role="3cqZAp">
            <node concept="37vLTI" id="7eBFChAdIZY" role="3clFbG">
              <node concept="37vLTw" id="7eBFChAdJm0" role="37vLTx">
                <ref role="3cqZAo" node="1R4IoyQOzXH" resolve="inspection" />
              </node>
              <node concept="37vLTw" id="7eBFChAdI7B" role="37vLTJ">
                <ref role="3cqZAo" node="7eBFChAdFMS" resolve="myInspection" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7eBFChAdHMS" role="3cqZAp" />
          <node concept="3clFbF" id="1R4IoyRojjm" role="3cqZAp">
            <node concept="37vLTI" id="1R4IoyRok16" role="3clFbG">
              <node concept="37vLTw" id="1R4IoyRojjk" role="37vLTJ">
                <ref role="3cqZAo" node="1R4IoyRo9Mm" resolve="myColor" />
              </node>
              <node concept="2OqwBi" id="3V8WxCAgbPA" role="37vLTx">
                <node concept="37vLTw" id="3V8WxCAgbPB" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQOzXH" resolve="inspection" />
                </node>
                <node concept="liA8E" id="3V8WxCAgbPC" role="2OqNvi">
                  <ref role="37wK5l" node="1R4IoyQOiZ4" resolve="getColor" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1R4IoyRofGw" role="3cqZAp">
            <node concept="3cpWsn" id="1R4IoyRofGx" role="3cpWs9">
              <property role="TrG5h" value="style" />
              <node concept="3uibUv" id="1R4IoyRofGv" role="1tU5fm">
                <ref role="3uigEE" to="5ueo:~StyleImpl" resolve="StyleImpl" />
              </node>
              <node concept="2ShNRf" id="1R4IoyRofGy" role="33vP2m">
                <node concept="1pGfFk" id="1R4IoyRofGz" role="2ShVmc">
                  <ref role="37wK5l" to="5ueo:~StyleImpl.&lt;init&gt;()" resolve="StyleImpl" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7eBFChA8Szb" role="3cqZAp">
            <node concept="2OqwBi" id="7eBFChA8SOV" role="3clFbG">
              <node concept="37vLTw" id="7eBFChA8Sz9" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRofGx" resolve="style" />
              </node>
              <node concept="liA8E" id="7eBFChA8Tyx" role="2OqNvi">
                <ref role="37wK5l" to="5ueo:~StyleImpl.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object)" resolve="set" />
                <node concept="10M0yZ" id="7eBFChA8UWF" role="37wK5m">
                  <ref role="3cqZAo" to="5ueo:~StyleAttributes.FONT_SIZE" resolve="FONT_SIZE" />
                  <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                </node>
                <node concept="FJ1c_" id="7eBFChA97Qx" role="37wK5m">
                  <node concept="3cmrfG" id="7eBFChA981y" role="3uHU7w">
                    <property role="3cmrfH" value="4" />
                  </node>
                  <node concept="17qRlL" id="7eBFChA8Yl4" role="3uHU7B">
                    <node concept="2OqwBi" id="7eBFChA8Wqz" role="3uHU7B">
                      <node concept="2YIFZM" id="7eBFChA8VIN" role="2Oq$k0">
                        <ref role="37wK5l" to="exr9:~EditorSettings.getInstance()" resolve="getInstance" />
                        <ref role="1Pybhc" to="exr9:~EditorSettings" resolve="EditorSettings" />
                      </node>
                      <node concept="liA8E" id="7eBFChA8WLh" role="2OqNvi">
                        <ref role="37wK5l" to="exr9:~EditorSettings.getFontSize()" resolve="getFontSize" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="7eBFChA96Si" role="3uHU7w">
                      <property role="3cmrfH" value="3" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1R4IoyRofYL" role="3cqZAp">
            <node concept="2OqwBi" id="1R4IoyRoged" role="3clFbG">
              <node concept="37vLTw" id="1R4IoyRofYJ" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRofGx" resolve="style" />
              </node>
              <node concept="liA8E" id="1R4IoyRogpH" role="2OqNvi">
                <ref role="37wK5l" to="5ueo:~StyleImpl.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object)" resolve="set" />
                <node concept="10M0yZ" id="1R4IoyRogAa" role="37wK5m">
                  <ref role="3cqZAo" to="5ueo:~StyleAttributes.TEXT_COLOR" resolve="TEXT_COLOR" />
                  <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                </node>
                <node concept="37vLTw" id="1R4IoyRokka" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyRo9Mm" resolve="myColor" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6Na19TM5xvf" role="3cqZAp">
            <node concept="2OqwBi" id="6Na19TM5xvg" role="3clFbG">
              <node concept="37vLTw" id="6Na19TM5xvh" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRofGx" resolve="style" />
              </node>
              <node concept="liA8E" id="6Na19TM5xvi" role="2OqNvi">
                <ref role="37wK5l" to="5ueo:~StyleImpl.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object)" resolve="set" />
                <node concept="10M0yZ" id="6Na19TM5zZ8" role="37wK5m">
                  <ref role="3cqZAo" to="5ueo:~StyleAttributes.FONT_STYLE" resolve="FONT_STYLE" />
                  <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                </node>
                <node concept="10M0yZ" id="6Na19TM5HlQ" role="37wK5m">
                  <ref role="3cqZAo" to="exr9:~MPSFonts.BOLD" resolve="BOLD" />
                  <ref role="1PxDUh" to="exr9:~MPSFonts" resolve="MPSFonts" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1R4IoyQQxez" role="3cqZAp">
            <node concept="37vLTI" id="1R4IoyQQxNT" role="3clFbG">
              <node concept="2ShNRf" id="1R4IoyQQxWv" role="37vLTx">
                <node concept="1pGfFk" id="1R4IoyQQxTs" role="2ShVmc">
                  <ref role="37wK5l" to="g51k:~TextLine.&lt;init&gt;(java.lang.String,jetbrains.mps.openapi.editor.style.Style,boolean)" resolve="TextLine" />
                  <node concept="2OqwBi" id="1R4IoyRo0PB" role="37wK5m">
                    <node concept="37vLTw" id="1R4IoyRo35E" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyQOzXH" resolve="inspection" />
                    </node>
                    <node concept="liA8E" id="1R4IoyRo0Y$" role="2OqNvi">
                      <ref role="37wK5l" node="1R4IoyQOiYY" resolve="getText" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1R4IoyRofG$" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyRofGx" resolve="style" />
                  </node>
                  <node concept="3clFbT" id="1R4IoyRof76" role="37wK5m" />
                </node>
              </node>
              <node concept="37vLTw" id="1R4IoyQQxex" role="37vLTJ">
                <ref role="3cqZAo" node="1R4IoyQQwjr" resolve="myTextline" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1R4IoyQOzXH" role="3clF46">
          <property role="TrG5h" value="inspection" />
          <node concept="3uibUv" id="1R4IoyQOzXG" role="1tU5fm">
            <ref role="3uigEE" node="1R4IoyQOhX3" resolve="Inspection" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1R4IoyRnI6y" role="jymVt" />
      <node concept="3clFb_" id="1R4IoyRnLwF" role="jymVt">
        <property role="TrG5h" value="paint" />
        <node concept="3clFbS" id="1R4IoyRnLwI" role="3clF47">
          <node concept="3clFbF" id="1R4IoyRnZLY" role="3cqZAp">
            <node concept="2OqwBi" id="1R4IoyRnZYm" role="3clFbG">
              <node concept="37vLTw" id="1R4IoyRnZLW" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRnNfv" resolve="g" />
              </node>
              <node concept="liA8E" id="1R4IoyRo0oZ" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                <node concept="10M0yZ" id="3V8WxCAhT0s" role="37wK5m">
                  <ref role="3cqZAo" to="lzb2:~JBColor.WHITE" resolve="WHITE" />
                  <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1R4IoyRnZ3r" role="3cqZAp">
            <node concept="2OqwBi" id="1R4IoyRnZfB" role="3clFbG">
              <node concept="37vLTw" id="1R4IoyRnZ3p" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRnNfv" resolve="g" />
              </node>
              <node concept="liA8E" id="1R4IoyRnZsw" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Graphics.fillRect(int,int,int,int)" resolve="fillRect" />
                <node concept="3cpWsd" id="6Na19TM5oJd" role="37wK5m">
                  <node concept="3cmrfG" id="6Na19TM5oMi" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyRnQbC" role="3uHU7B">
                    <ref role="3cqZAo" node="1R4IoyQOzGz" resolve="myX" />
                  </node>
                </node>
                <node concept="37vLTw" id="1R4IoyRnTTi" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyQOzK4" resolve="myY" />
                </node>
                <node concept="3cpWs3" id="6Na19TM5uLf" role="37wK5m">
                  <node concept="2OqwBi" id="1R4IoyRnUr9" role="3uHU7B">
                    <node concept="37vLTw" id="1R4IoyRnUbB" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyQQwjr" resolve="myTextline" />
                    </node>
                    <node concept="liA8E" id="1R4IoyRnWiX" role="2OqNvi">
                      <ref role="37wK5l" to="g51k:~TextLine.getWidth()" resolve="getWidth" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="5wygzc2W4ET" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1R4IoyRnWSS" role="37wK5m">
                  <node concept="37vLTw" id="1R4IoyRnWBy" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQQwjr" resolve="myTextline" />
                  </node>
                  <node concept="liA8E" id="1R4IoyRnYL8" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~TextLine.getHeight()" resolve="getHeight" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1R4IoyRop0l" role="3cqZAp">
            <node concept="2OqwBi" id="1R4IoyRopdI" role="3clFbG">
              <node concept="37vLTw" id="1R4IoyRop0j" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRnNfv" resolve="g" />
              </node>
              <node concept="liA8E" id="1R4IoyRopDz" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color)" resolve="setColor" />
                <node concept="37vLTw" id="1R4IoyRopKe" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyRo9Mm" resolve="myColor" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1R4IoyRopOE" role="3cqZAp">
            <node concept="2OqwBi" id="1R4IoyRopOF" role="3clFbG">
              <node concept="37vLTw" id="1R4IoyRopOG" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRnNfv" resolve="g" />
              </node>
              <node concept="liA8E" id="1R4IoyRopOH" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Graphics.drawRect(int,int,int,int)" resolve="drawRect" />
                <node concept="3cpWsd" id="6Na19TM5sBO" role="37wK5m">
                  <node concept="3cmrfG" id="6Na19TM5sF4" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyRopOI" role="3uHU7B">
                    <ref role="3cqZAo" node="1R4IoyQOzGz" resolve="myX" />
                  </node>
                </node>
                <node concept="37vLTw" id="1R4IoyRopOJ" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyQOzK4" resolve="myY" />
                </node>
                <node concept="3cpWs3" id="6Na19TM5x2L" role="37wK5m">
                  <node concept="2OqwBi" id="1R4IoyRopOK" role="3uHU7B">
                    <node concept="37vLTw" id="1R4IoyRopOL" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyQQwjr" resolve="myTextline" />
                    </node>
                    <node concept="liA8E" id="1R4IoyRopOM" role="2OqNvi">
                      <ref role="37wK5l" to="g51k:~TextLine.getWidth()" resolve="getWidth" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="5wygzc2W52f" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1R4IoyRopON" role="37wK5m">
                  <node concept="37vLTw" id="1R4IoyRopOO" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQQwjr" resolve="myTextline" />
                  </node>
                  <node concept="liA8E" id="1R4IoyRopOP" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~TextLine.getHeight()" resolve="getHeight" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1R4IoyRoqyk" role="3cqZAp">
            <node concept="2OqwBi" id="1R4IoyRorvb" role="3clFbG">
              <node concept="37vLTw" id="1R4IoyRorca" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQQwjr" resolve="myTextline" />
              </node>
              <node concept="liA8E" id="1R4IoyRorJh" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~TextLine.paint(java.awt.Graphics,int,int)" resolve="paint" />
                <node concept="37vLTw" id="1R4IoyRorO7" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyRnNfv" resolve="g" />
                </node>
                <node concept="37vLTw" id="1R4IoyRosx0" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyQOzGz" resolve="myX" />
                </node>
                <node concept="37vLTw" id="1R4IoyRosOy" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyQOzK4" resolve="myY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="1R4IoyRnJNP" role="1B3o_S" />
        <node concept="3cqZAl" id="1R4IoyRnLf5" role="3clF45" />
        <node concept="37vLTG" id="1R4IoyRnNfv" role="3clF46">
          <property role="TrG5h" value="g" />
          <node concept="3uibUv" id="1R4IoyRnNfu" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQPwWN" role="jymVt" />
    <node concept="312cEu" id="1R4IoyQPyL5" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyLayouter" />
      <node concept="2tJIrI" id="1R4IoyQPzQ5" role="jymVt" />
      <node concept="3clFb_" id="1R4IoyQPzNa" role="jymVt">
        <property role="TrG5h" value="relayout" />
        <node concept="3Tm1VV" id="1R4IoyQPzNc" role="1B3o_S" />
        <node concept="3cqZAl" id="1R4IoyQPzNd" role="3clF45" />
        <node concept="3clFbS" id="1R4IoyQPzNe" role="3clF47">
          <node concept="2Gpval" id="3LngKhTH$x_" role="3cqZAp">
            <node concept="2GrKxI" id="3LngKhTH$xA" role="2Gsz3X">
              <property role="TrG5h" value="componentInspection" />
            </node>
            <node concept="37vLTw" id="3LngKhTH$xB" role="2GsD0m">
              <ref role="3cqZAo" node="1R4IoyQOuPf" resolve="myComponentInspections" />
            </node>
            <node concept="3clFbS" id="3LngKhTH$xC" role="2LFqv$">
              <node concept="3cpWs8" id="3LngKhTH$xD" role="3cqZAp">
                <node concept="3cpWsn" id="3LngKhTH$xE" role="3cpWs9">
                  <property role="TrG5h" value="key" />
                  <node concept="3uibUv" id="4Hbpy_fwdP9" role="1tU5fm">
                    <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
                  </node>
                  <node concept="2OqwBi" id="3LngKhTH$xG" role="33vP2m">
                    <node concept="2GrUjf" id="3LngKhTH$xH" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3LngKhTH$xA" resolve="componentInspection" />
                    </node>
                    <node concept="3AY5_j" id="3LngKhTH$xI" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="3LngKhTH$xJ" role="3cqZAp">
                <node concept="3cpWsn" id="3LngKhTH$xK" role="3cpWs9">
                  <property role="TrG5h" value="data" />
                  <node concept="3uibUv" id="3LngKhTH$xL" role="1tU5fm">
                    <ref role="3uigEE" node="1R4IoyQOz$0" resolve="InspectionsFacility.InspectionData" />
                  </node>
                  <node concept="2OqwBi" id="3LngKhTH$xM" role="33vP2m">
                    <node concept="2GrUjf" id="3LngKhTH$xN" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3LngKhTH$xA" resolve="componentInspection" />
                    </node>
                    <node concept="3AV6Ez" id="3LngKhTH$xO" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3LngKhTH$xP" role="3cqZAp">
                <node concept="1rXfSq" id="3LngKhTH$xQ" role="3clFbG">
                  <ref role="37wK5l" node="1R4IoyRfVWa" resolve="relayoutComponentInspection" />
                  <node concept="37vLTw" id="3LngKhTH$xR" role="37wK5m">
                    <ref role="3cqZAo" node="3LngKhTH$xE" resolve="key" />
                  </node>
                  <node concept="37vLTw" id="3LngKhTH$xS" role="37wK5m">
                    <ref role="3cqZAo" node="3LngKhTH$xK" resolve="data" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="3LngKhTH$xT" role="3cqZAp">
            <node concept="2GrKxI" id="3LngKhTH$xU" role="2Gsz3X">
              <property role="TrG5h" value="portInspection" />
            </node>
            <node concept="37vLTw" id="3LngKhTH$xV" role="2GsD0m">
              <ref role="3cqZAo" node="1R4IoyQOuKr" resolve="myPortInspections" />
            </node>
            <node concept="3clFbS" id="3LngKhTH$xW" role="2LFqv$">
              <node concept="3cpWs8" id="3LngKhTH$xX" role="3cqZAp">
                <node concept="3cpWsn" id="3LngKhTH$xY" role="3cpWs9">
                  <property role="TrG5h" value="key" />
                  <node concept="3uibUv" id="4Hbpy_fxAxv" role="1tU5fm">
                    <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                    <node concept="3qUE_q" id="4Hbpy_fxByj" role="11_B2D">
                      <node concept="3uibUv" id="4Hbpy_fxBPl" role="3qUE_r">
                        <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3LngKhTH$y0" role="33vP2m">
                    <node concept="2GrUjf" id="3LngKhTH$y1" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3LngKhTH$xU" resolve="portInspection" />
                    </node>
                    <node concept="3AY5_j" id="3LngKhTH$y2" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="3LngKhTH$y3" role="3cqZAp">
                <node concept="3cpWsn" id="3LngKhTH$y4" role="3cpWs9">
                  <property role="TrG5h" value="data" />
                  <node concept="3uibUv" id="3LngKhTH$y5" role="1tU5fm">
                    <ref role="3uigEE" node="1R4IoyQOz$0" resolve="InspectionsFacility.InspectionData" />
                  </node>
                  <node concept="2OqwBi" id="3LngKhTH$y6" role="33vP2m">
                    <node concept="2GrUjf" id="3LngKhTH$y7" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3LngKhTH$xU" resolve="portInspection" />
                    </node>
                    <node concept="3AV6Ez" id="3LngKhTH$y8" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="3LngKhTH$y9" role="3cqZAp">
                <node concept="1rXfSq" id="3LngKhTH$ya" role="3clFbG">
                  <ref role="37wK5l" node="1R4IoyRn_0h" resolve="relayoutPortInspection" />
                  <node concept="37vLTw" id="3LngKhTH$yb" role="37wK5m">
                    <ref role="3cqZAo" node="3LngKhTH$xY" resolve="key" />
                  </node>
                  <node concept="37vLTw" id="3LngKhTH$yc" role="37wK5m">
                    <ref role="3cqZAo" node="3LngKhTH$y4" resolve="data" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1R4IoyQPzNf" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4FRweWLsNLE" role="jymVt" />
      <node concept="3Tm6S6" id="1R4IoyQPy5l" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQPzu9" role="EKbjA">
        <ref role="3uigEE" to="3bo0:17nGqbJd3r4" resolve="SceneLayouter" />
      </node>
      <node concept="3clFb_" id="bRdTVI7sfZ" role="jymVt">
        <property role="TrG5h" value="getLayoutBounds" />
        <node concept="3Tm1VV" id="bRdTVI7sg1" role="1B3o_S" />
        <node concept="3uibUv" id="bRdTVI7sg2" role="3clF45">
          <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
        </node>
        <node concept="2AHcQZ" id="bRdTVI7sg3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3clFbS" id="bRdTVI7sg4" role="3clF47">
          <node concept="3clFbF" id="bRdTVI7ti2" role="3cqZAp">
            <node concept="2ShNRf" id="bRdTVI7ti0" role="3clFbG">
              <node concept="1pGfFk" id="bRdTVI7tTL" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int)" resolve="Rectangle" />
                <node concept="3cmrfG" id="bRdTVI7$2t" role="37wK5m">
                  <property role="3cmrfH" value="-1" />
                </node>
                <node concept="3cmrfG" id="bRdTVI7A3_" role="37wK5m">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="bRdTVI7sg5" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyRndFV" role="jymVt" />
    <node concept="312cEu" id="1R4IoyRnfGz" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyPainter" />
      <node concept="2tJIrI" id="1R4IoyRnhzc" role="jymVt" />
      <node concept="3clFb_" id="1R4IoyRnh$7" role="jymVt">
        <property role="TrG5h" value="paint" />
        <node concept="37vLTG" id="1R4IoyRnh$8" role="3clF46">
          <property role="TrG5h" value="graphics" />
          <node concept="3uibUv" id="1R4IoyRnh$9" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
          </node>
        </node>
        <node concept="3Tm1VV" id="1R4IoyRnh$b" role="1B3o_S" />
        <node concept="3cqZAl" id="1R4IoyRnh$c" role="3clF45" />
        <node concept="3clFbS" id="1R4IoyRnh$d" role="3clF47">
          <node concept="2Gpval" id="1R4IoyRnHlc" role="3cqZAp">
            <node concept="2GrKxI" id="1R4IoyRnHld" role="2Gsz3X">
              <property role="TrG5h" value="data" />
            </node>
            <node concept="2OqwBi" id="1R4IoyRowxB" role="2GsD0m">
              <node concept="37vLTw" id="1R4IoyRnHle" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQOuPf" resolve="myComponentInspections" />
              </node>
              <node concept="liA8E" id="1R4IoyRoLfl" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~HashMap.values()" resolve="values" />
              </node>
            </node>
            <node concept="3clFbS" id="1R4IoyRnHlf" role="2LFqv$">
              <node concept="3clFbF" id="1R4IoyRoNCQ" role="3cqZAp">
                <node concept="2OqwBi" id="1R4IoyRoO8O" role="3clFbG">
                  <node concept="2GrUjf" id="1R4IoyRoNCO" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1R4IoyRnHld" resolve="data" />
                  </node>
                  <node concept="liA8E" id="1R4IoyRpf5T" role="2OqNvi">
                    <ref role="37wK5l" node="1R4IoyRnLwF" resolve="paint" />
                    <node concept="37vLTw" id="1R4IoyRpfDh" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyRnh$8" resolve="graphics" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="1R4IoyRnHlw" role="3cqZAp">
            <node concept="2GrKxI" id="1R4IoyRnHlx" role="2Gsz3X">
              <property role="TrG5h" value="data" />
            </node>
            <node concept="2OqwBi" id="1R4IoyRpgFx" role="2GsD0m">
              <node concept="37vLTw" id="1R4IoyRnHly" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQOuKr" resolve="myPortInspections" />
              </node>
              <node concept="liA8E" id="1R4IoyRpxDh" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~HashMap.values()" resolve="values" />
              </node>
            </node>
            <node concept="3clFbS" id="1R4IoyRnHlz" role="2LFqv$">
              <node concept="3clFbF" id="1R4IoyRpztG" role="3cqZAp">
                <node concept="2OqwBi" id="1R4IoyRpztH" role="3clFbG">
                  <node concept="2GrUjf" id="1R4IoyRpztI" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1R4IoyRnHlx" resolve="data" />
                  </node>
                  <node concept="liA8E" id="1R4IoyRpztJ" role="2OqNvi">
                    <ref role="37wK5l" node="1R4IoyRnLwF" resolve="paint" />
                    <node concept="37vLTw" id="1R4IoyRpztK" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyRnh$8" resolve="graphics" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1R4IoyRnh$e" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1R4IoyRnf$E" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyRnhx$" role="EKbjA">
        <ref role="3uigEE" to="3bo0:17nGqbJcVWh" resolve="ScenePainter" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyRtrB7" role="jymVt" />
    <node concept="312cEu" id="1R4IoyRtvSr" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyInitializer" />
      <node concept="2tJIrI" id="1R4IoyRtyjr" role="jymVt" />
      <node concept="3clFb_" id="1R4IoyRtykw" role="jymVt">
        <property role="TrG5h" value="onAdd" />
        <node concept="3Tm1VV" id="1R4IoyRtyky" role="1B3o_S" />
        <node concept="3cqZAl" id="1R4IoyRtykz" role="3clF45" />
        <node concept="3clFbS" id="1R4IoyRtyk$" role="3clF47">
          <node concept="3cpWs8" id="7eBFChAdN0Y" role="3cqZAp">
            <node concept="3cpWsn" id="7eBFChAdN0Z" role="3cpWs9">
              <property role="TrG5h" value="inspectionsData" />
              <node concept="3uibUv" id="7eBFChAdN0S" role="1tU5fm">
                <ref role="3uigEE" node="7eBFChAdkx2" resolve="InspectionsData" />
              </node>
              <node concept="2OqwBi" id="7eBFChAdN10" role="33vP2m">
                <node concept="37vLTw" id="7eBFChAdN11" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQPwgQ" resolve="myEditor" />
                </node>
                <node concept="liA8E" id="7eBFChAdN12" role="2OqNvi">
                  <ref role="37wK5l" to="3bo0:7eBFChAbAUW" resolve="loadState" />
                  <node concept="10M0yZ" id="7eBFChAdN13" role="37wK5m">
                    <ref role="3cqZAo" node="7eBFChAdoX7" resolve="KEY" />
                    <ref role="1PxDUh" node="7eBFChAdkx2" resolve="InspectionsData" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7eBFChAdkvl" role="3cqZAp">
            <node concept="3clFbS" id="7eBFChAdkvn" role="3clFbx">
              <node concept="3clFbF" id="7eBFChAj$BY" role="3cqZAp">
                <node concept="1rXfSq" id="7eBFChAj$BW" role="3clFbG">
                  <ref role="37wK5l" node="7eBFChAdTUD" resolve="loadState" />
                  <node concept="37vLTw" id="7eBFChAj$SI" role="37wK5m">
                    <ref role="3cqZAo" node="7eBFChAdN0Z" resolve="inspectionsData" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="7eBFChAdONM" role="3clFbw">
              <node concept="10Nm6u" id="7eBFChAdOU4" role="3uHU7w" />
              <node concept="37vLTw" id="7eBFChAdNrE" role="3uHU7B">
                <ref role="3cqZAo" node="7eBFChAdN0Z" resolve="inspectionsData" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1R4IoyRty_v" role="3cqZAp">
            <node concept="2OqwBi" id="1R4IoyRtyFw" role="3clFbG">
              <node concept="2YIFZM" id="7eBFChAmH2T" role="2Oq$k0">
                <ref role="37wK5l" node="7eBFChAmsKg" resolve="getInstance" />
                <ref role="1Pybhc" node="1R4IoyRpADU" resolve="InspectionManagerImpl" />
                <node concept="2OqwBi" id="7eBFChAmMdp" role="37wK5m">
                  <node concept="2OqwBi" id="7eBFChAmKco" role="2Oq$k0">
                    <node concept="37vLTw" id="7eBFChAmJY5" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyQPwgQ" resolve="myEditor" />
                    </node>
                    <node concept="liA8E" id="7eBFChAmM3e" role="2OqNvi">
                      <ref role="37wK5l" to="3bo0:7sG$k3BQmmw" resolve="getContext" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7eBFChAmOvn" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1R4IoyRtyLv" role="2OqNvi">
                <ref role="37wK5l" node="1R4IoyRpB6a" resolve="registerNetwork" />
                <node concept="37vLTw" id="1R4IoyRtyVg" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyQOjqU" resolve="myInstance" />
                </node>
                <node concept="Xjq3P" id="1R4IoyRt$Rc" role="37wK5m">
                  <ref role="1HBi2w" node="1R4IoyQOhNn" resolve="InspectionsFacility" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1R4IoyRtyk_" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="1R4IoyRtykA" role="jymVt">
        <property role="TrG5h" value="onRemove" />
        <node concept="3Tm1VV" id="1R4IoyRtykC" role="1B3o_S" />
        <node concept="3cqZAl" id="1R4IoyRtykD" role="3clF45" />
        <node concept="3clFbS" id="1R4IoyRtykE" role="3clF47">
          <node concept="3cpWs8" id="7eBFChAjBWJ" role="3cqZAp">
            <node concept="3cpWsn" id="7eBFChAjBWK" role="3cpWs9">
              <property role="TrG5h" value="data" />
              <node concept="3uibUv" id="7eBFChAjBWI" role="1tU5fm">
                <ref role="3uigEE" node="7eBFChAdkx2" resolve="InspectionsData" />
              </node>
              <node concept="2ShNRf" id="7eBFChAjBWL" role="33vP2m">
                <node concept="HV5vD" id="7eBFChAjBWM" role="2ShVmc">
                  <ref role="HV5vE" node="7eBFChAdkx2" resolve="InspectionsData" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7eBFChAjCf8" role="3cqZAp">
            <node concept="1rXfSq" id="7eBFChAjCf5" role="3clFbG">
              <ref role="37wK5l" node="7eBFChAgivW" resolve="storeState" />
              <node concept="37vLTw" id="7eBFChAjCmz" role="37wK5m">
                <ref role="3cqZAo" node="7eBFChAjBWK" resolve="data" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7eBFChAj_42" role="3cqZAp">
            <node concept="2OqwBi" id="7eBFChAj_i4" role="3clFbG">
              <node concept="37vLTw" id="7eBFChAj_40" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQPwgQ" resolve="myEditor" />
              </node>
              <node concept="liA8E" id="7eBFChAjB7l" role="2OqNvi">
                <ref role="37wK5l" to="3bo0:7eBFChAb_fZ" resolve="storeState" />
                <node concept="10M0yZ" id="7eBFChAjBmm" role="37wK5m">
                  <ref role="3cqZAo" node="7eBFChAdoX7" resolve="KEY" />
                  <ref role="1PxDUh" node="7eBFChAdkx2" resolve="InspectionsData" />
                </node>
                <node concept="37vLTw" id="7eBFChAjCyU" role="37wK5m">
                  <ref role="3cqZAo" node="7eBFChAjBWK" resolve="data" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1S4cYrOJQYq" role="3cqZAp">
            <node concept="3cpWsn" id="1S4cYrOJQYr" role="3cpWs9">
              <property role="TrG5h" value="manager" />
              <node concept="3uibUv" id="1S4cYrOJO81" role="1tU5fm">
                <ref role="3uigEE" node="1R4IoyRpAE3" resolve="InspectionManager" />
              </node>
              <node concept="2YIFZM" id="1S4cYrOJQYs" role="33vP2m">
                <ref role="37wK5l" node="7eBFChAmsKg" resolve="getInstance" />
                <ref role="1Pybhc" node="1R4IoyRpADU" resolve="InspectionManagerImpl" />
                <node concept="2OqwBi" id="1S4cYrOJQYt" role="37wK5m">
                  <node concept="2OqwBi" id="1S4cYrOJQYu" role="2Oq$k0">
                    <node concept="37vLTw" id="1S4cYrOJQYv" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyQPwgQ" resolve="myEditor" />
                    </node>
                    <node concept="liA8E" id="1S4cYrOJQYw" role="2OqNvi">
                      <ref role="37wK5l" to="3bo0:7sG$k3BQmmw" resolve="getContext" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1S4cYrOJQYx" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1S4cYrOJRjm" role="3cqZAp">
            <node concept="3clFbS" id="1S4cYrOJRjo" role="3clFbx">
              <node concept="3clFbF" id="1R4IoyRt_ge" role="3cqZAp">
                <node concept="2OqwBi" id="1R4IoyRt_gf" role="3clFbG">
                  <node concept="liA8E" id="1R4IoyRt_gh" role="2OqNvi">
                    <ref role="37wK5l" node="1R4IoyRpBiY" resolve="unregisterNetwork" />
                    <node concept="37vLTw" id="1R4IoyRt_gi" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQOjqU" resolve="myInstance" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1S4cYrOJQYy" role="2Oq$k0">
                    <ref role="3cqZAo" node="1S4cYrOJQYr" resolve="manager" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1S4cYrOJRGY" role="3clFbw">
              <node concept="10Nm6u" id="1S4cYrOJRTi" role="3uHU7w" />
              <node concept="37vLTw" id="1S4cYrOJRrs" role="3uHU7B">
                <ref role="3cqZAo" node="1S4cYrOJQYr" resolve="manager" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1R4IoyRtykF" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1R4IoyRtu41" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyRtyhq" role="EKbjA">
        <ref role="3uigEE" to="3bo0:1R4IoyRrSd8" resolve="SceneInitializer" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyRfYQi" role="jymVt" />
    <node concept="3clFb_" id="7eBFChAdTUD" role="jymVt">
      <property role="TrG5h" value="loadState" />
      <node concept="3clFbS" id="7eBFChAdTUG" role="3clF47">
        <node concept="2Gpval" id="7eBFChAdYE5" role="3cqZAp">
          <node concept="2GrKxI" id="7eBFChAdYE6" role="2Gsz3X">
            <property role="TrG5h" value="componentInspection" />
          </node>
          <node concept="2OqwBi" id="7eBFChAdYOs" role="2GsD0m">
            <node concept="37vLTw" id="7eBFChAdYFX" role="2Oq$k0">
              <ref role="3cqZAo" node="7eBFChAdWm5" resolve="data" />
            </node>
            <node concept="2OwXpG" id="7eBFChAdYVh" role="2OqNvi">
              <ref role="2Oxat5" node="7eBFChAdlme" resolve="componentInspections" />
            </node>
          </node>
          <node concept="3clFbS" id="7eBFChAdYE8" role="2LFqv$">
            <node concept="3clFbF" id="7eBFChAe0pi" role="3cqZAp">
              <node concept="2OqwBi" id="7eBFChAe1av" role="3clFbG">
                <node concept="37vLTw" id="7eBFChAe0ph" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQOuPf" resolve="myComponentInspections" />
                </node>
                <node concept="liA8E" id="7eBFChAehN$" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~HashMap.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2OqwBi" id="7eBFChAeqsw" role="37wK5m">
                    <node concept="2GrUjf" id="7eBFChAepYu" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7eBFChAdYE6" resolve="componentInspection" />
                    </node>
                    <node concept="3AY5_j" id="7eBFChAfd3y" role="2OqNvi" />
                  </node>
                  <node concept="2ShNRf" id="7eBFChAeonh" role="37wK5m">
                    <node concept="1pGfFk" id="7eBFChAfm0z" role="2ShVmc">
                      <ref role="37wK5l" node="1R4IoyQOzXA" resolve="InspectionsFacility.InspectionData" />
                      <node concept="2OqwBi" id="7eBFChAfn9s" role="37wK5m">
                        <node concept="2GrUjf" id="7eBFChAfmyS" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="7eBFChAdYE6" resolve="componentInspection" />
                        </node>
                        <node concept="3AV6Ez" id="7eBFChAgbgF" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7eBFChAgeel" role="3cqZAp">
          <node concept="2GrKxI" id="7eBFChAgeem" role="2Gsz3X">
            <property role="TrG5h" value="portInspection" />
          </node>
          <node concept="2OqwBi" id="7eBFChAgeen" role="2GsD0m">
            <node concept="37vLTw" id="7eBFChAgeeo" role="2Oq$k0">
              <ref role="3cqZAo" node="7eBFChAdWm5" resolve="data" />
            </node>
            <node concept="2OwXpG" id="7eBFChAgflx" role="2OqNvi">
              <ref role="2Oxat5" node="7eBFChAdlm5" resolve="portInspections" />
            </node>
          </node>
          <node concept="3clFbS" id="7eBFChAgeeq" role="2LFqv$">
            <node concept="3clFbF" id="7eBFChAgeer" role="3cqZAp">
              <node concept="2OqwBi" id="7eBFChAgees" role="3clFbG">
                <node concept="37vLTw" id="7eBFChAghAO" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQOuKr" resolve="myPortInspections" />
                </node>
                <node concept="liA8E" id="7eBFChAgeeu" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~HashMap.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2OqwBi" id="7eBFChAgeev" role="37wK5m">
                    <node concept="2GrUjf" id="7eBFChAgeew" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7eBFChAgeem" resolve="portInspection" />
                    </node>
                    <node concept="3AY5_j" id="7eBFChAgeex" role="2OqNvi" />
                  </node>
                  <node concept="2ShNRf" id="7eBFChAgeey" role="37wK5m">
                    <node concept="1pGfFk" id="7eBFChAgeez" role="2ShVmc">
                      <ref role="37wK5l" node="1R4IoyQOzXA" resolve="InspectionsFacility.InspectionData" />
                      <node concept="2OqwBi" id="7eBFChAgee$" role="37wK5m">
                        <node concept="2GrUjf" id="7eBFChAgee_" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="7eBFChAgeem" resolve="portInspection" />
                        </node>
                        <node concept="3AV6Ez" id="7eBFChAgeeA" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7eBFChAdRvU" role="1B3o_S" />
      <node concept="37vLTG" id="7eBFChAdWm5" role="3clF46">
        <property role="TrG5h" value="data" />
        <node concept="3uibUv" id="7eBFChAdWm4" role="1tU5fm">
          <ref role="3uigEE" node="7eBFChAdkx2" resolve="InspectionsData" />
        </node>
      </node>
      <node concept="3cqZAl" id="7eBFChAgbGf" role="3clF45" />
    </node>
    <node concept="3clFb_" id="7eBFChAgivW" role="jymVt">
      <property role="TrG5h" value="storeState" />
      <node concept="3clFbS" id="7eBFChAgivX" role="3clF47">
        <node concept="2Gpval" id="7eBFChAgivY" role="3cqZAp">
          <node concept="2GrKxI" id="7eBFChAgivZ" role="2Gsz3X">
            <property role="TrG5h" value="componentInspection" />
          </node>
          <node concept="37vLTw" id="7eBFChAgymn" role="2GsD0m">
            <ref role="3cqZAo" node="1R4IoyQOuPf" resolve="myComponentInspections" />
          </node>
          <node concept="3clFbS" id="7eBFChAgiw3" role="2LFqv$">
            <node concept="3clFbF" id="7eBFChAgwFd" role="3cqZAp">
              <node concept="2OqwBi" id="7eBFChAg$FB" role="3clFbG">
                <node concept="2OqwBi" id="7eBFChAgwFf" role="2Oq$k0">
                  <node concept="37vLTw" id="7eBFChAgwFg" role="2Oq$k0">
                    <ref role="3cqZAo" node="7eBFChAgiwz" resolve="data" />
                  </node>
                  <node concept="2OwXpG" id="7eBFChAgwFh" role="2OqNvi">
                    <ref role="2Oxat5" node="7eBFChAdlme" resolve="componentInspections" />
                  </node>
                </node>
                <node concept="liA8E" id="7eBFChAgPw7" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~HashMap.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2OqwBi" id="7eBFChAgiw8" role="37wK5m">
                    <node concept="2GrUjf" id="7eBFChAgiw9" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7eBFChAgivZ" resolve="componentInspection" />
                    </node>
                    <node concept="3AY5_j" id="7eBFChAgiwa" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="7eBFChAhKhd" role="37wK5m">
                    <node concept="2OqwBi" id="7eBFChAgiwd" role="2Oq$k0">
                      <node concept="2GrUjf" id="7eBFChAgiwe" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7eBFChAgivZ" resolve="componentInspection" />
                      </node>
                      <node concept="3AV6Ez" id="7eBFChAgiwf" role="2OqNvi" />
                    </node>
                    <node concept="2OwXpG" id="7eBFChAhLuW" role="2OqNvi">
                      <ref role="2Oxat5" node="7eBFChAdFMS" resolve="myInspection" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7eBFChAgiwg" role="3cqZAp">
          <node concept="2GrKxI" id="7eBFChAgiwh" role="2Gsz3X">
            <property role="TrG5h" value="portInspection" />
          </node>
          <node concept="37vLTw" id="7eBFChAhOfB" role="2GsD0m">
            <ref role="3cqZAo" node="1R4IoyQOuKr" resolve="myPortInspections" />
          </node>
          <node concept="3clFbS" id="7eBFChAgiwl" role="2LFqv$">
            <node concept="3clFbF" id="7eBFChAgiwm" role="3cqZAp">
              <node concept="2OqwBi" id="7eBFChAgiwn" role="3clFbG">
                <node concept="liA8E" id="7eBFChAgiwp" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~HashMap.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2OqwBi" id="7eBFChAgiwq" role="37wK5m">
                    <node concept="2GrUjf" id="7eBFChAgiwr" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="7eBFChAgiwh" resolve="portInspection" />
                    </node>
                    <node concept="3AY5_j" id="7eBFChAgiws" role="2OqNvi" />
                  </node>
                  <node concept="2OqwBi" id="7eBFChAiFOW" role="37wK5m">
                    <node concept="2OqwBi" id="7eBFChAgiwv" role="2Oq$k0">
                      <node concept="2GrUjf" id="7eBFChAgiww" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="7eBFChAgiwh" resolve="portInspection" />
                      </node>
                      <node concept="3AV6Ez" id="7eBFChAgiwx" role="2OqNvi" />
                    </node>
                    <node concept="2OwXpG" id="7eBFChAjxGA" role="2OqNvi">
                      <ref role="2Oxat5" node="7eBFChAdFMS" resolve="myInspection" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7eBFChAhQfV" role="2Oq$k0">
                  <node concept="37vLTw" id="7eBFChAhPzJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="7eBFChAgiwz" resolve="data" />
                  </node>
                  <node concept="2OwXpG" id="7eBFChAhR5H" role="2OqNvi">
                    <ref role="2Oxat5" node="7eBFChAdlm5" resolve="portInspections" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="7eBFChAgiwy" role="1B3o_S" />
      <node concept="37vLTG" id="7eBFChAgiwz" role="3clF46">
        <property role="TrG5h" value="data" />
        <node concept="3uibUv" id="7eBFChAgiw$" role="1tU5fm">
          <ref role="3uigEE" node="7eBFChAdkx2" resolve="InspectionsData" />
        </node>
      </node>
      <node concept="3cqZAl" id="7eBFChAgiw_" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4FRweWLrJY$" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyRfVWa" role="jymVt">
      <property role="TrG5h" value="relayoutComponentInspection" />
      <node concept="3Tm6S6" id="1R4IoyRfVWb" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyRfVWc" role="3clF45" />
      <node concept="37vLTG" id="1R4IoyRfVVX" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="4Hbpy_fzIsG" role="1tU5fm">
          <ref role="3uigEE" to="7adg:~Element" resolve="Element" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyRfVVZ" role="3clF46">
        <property role="TrG5h" value="data" />
        <node concept="3uibUv" id="1R4IoyRfVW0" role="1tU5fm">
          <ref role="3uigEE" node="1R4IoyQOz$0" resolve="InspectionsFacility.InspectionData" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyRfVUV" role="3clF47">
        <node concept="3cpWs8" id="4Hbpy_fB5Ma" role="3cqZAp">
          <node concept="3cpWsn" id="4Hbpy_fB5Mb" role="3cpWs9">
            <property role="TrG5h" value="view" />
            <node concept="3uibUv" id="4Hbpy_fB5Jr" role="1tU5fm">
              <ref role="3uigEE" to="mpua:5er1YemzlNF" resolve="NetworkComponentView" />
            </node>
            <node concept="2OqwBi" id="4Hbpy_fB5Mc" role="33vP2m">
              <node concept="37vLTw" id="4Hbpy_fB5Md" role="2Oq$k0">
                <ref role="3cqZAo" node="4Hbpy_fzDga" resolve="myNetworkView" />
              </node>
              <node concept="liA8E" id="4Hbpy_fB5Me" role="2OqNvi">
                <ref role="37wK5l" to="mpua:4Hbpy_fzbsw" resolve="getView" />
                <node concept="37vLTw" id="4Hbpy_fB5Mf" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyRfVVX" resolve="key" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyRfVUW" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRfVUX" role="3cpWs9">
            <property role="TrG5h" value="controller" />
            <node concept="3uibUv" id="1R4IoyRfVUY" role="1tU5fm">
              <ref role="3uigEE" to="vjnt:5jb5jNBJKHJ" resolve="FBNetworkComponentController" />
            </node>
            <node concept="2OqwBi" id="1R4IoyRfVUZ" role="33vP2m">
              <node concept="37vLTw" id="1R4IoyRfVV0" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQPJCV" resolve="myControllerProvider" />
              </node>
              <node concept="liA8E" id="1R4IoyRfVV1" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                <node concept="37vLTw" id="4Hbpy_fB5Mg" role="37wK5m">
                  <ref role="3cqZAo" node="4Hbpy_fB5Mb" resolve="view" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyRfVV3" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRfVV4" role="3cpWs9">
            <property role="TrG5h" value="bounds" />
            <node concept="3uibUv" id="1R4IoyRfVV5" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
            </node>
            <node concept="2OqwBi" id="1R4IoyRfVV6" role="33vP2m">
              <node concept="37vLTw" id="1R4IoyRfVV7" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRfVUX" resolve="controller" />
              </node>
              <node concept="liA8E" id="1R4IoyRfVV8" role="2OqNvi">
                <ref role="37wK5l" to="vjnt:1R4IoyQPQTg" resolve="getBounds" />
                <node concept="2OqwBi" id="1R4IoyRfVV9" role="37wK5m">
                  <node concept="37vLTw" id="1R4IoyRfVVa" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyRbrjn" resolve="myLayoutModel" />
                  </node>
                  <node concept="liA8E" id="1R4IoyRfVVb" role="2OqNvi">
                    <ref role="37wK5l" to="rvgs:1KCfUoKRX6g" resolve="getActivePosition" />
                    <node concept="37vLTw" id="4Hbpy_fB6bk" role="37wK5m">
                      <ref role="3cqZAo" node="4Hbpy_fB5Mb" resolve="view" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRfVVR" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyRfVVS" role="3clFbG">
            <node concept="2OqwBi" id="1R4IoyRfVVT" role="2Oq$k0">
              <node concept="37vLTw" id="1R4IoyRfVW7" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRfVVZ" resolve="data" />
              </node>
              <node concept="2OwXpG" id="1R4IoyRfVVV" role="2OqNvi">
                <ref role="2Oxat5" node="1R4IoyQQwjr" resolve="myTextline" />
              </node>
            </node>
            <node concept="liA8E" id="1R4IoyRfVVW" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~TextLine.relayout()" resolve="relayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRfVVd" role="3cqZAp">
          <node concept="37vLTI" id="1R4IoyRfVVe" role="3clFbG">
            <node concept="2OqwBi" id="1R4IoyRfVVf" role="37vLTJ">
              <node concept="37vLTw" id="1R4IoyRfVW6" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRfVVZ" resolve="data" />
              </node>
              <node concept="2OwXpG" id="1R4IoyRfVVh" role="2OqNvi">
                <ref role="2Oxat5" node="1R4IoyQOzK4" resolve="myY" />
              </node>
            </node>
            <node concept="3cpWs3" id="1R4IoyRfVVi" role="37vLTx">
              <node concept="2OqwBi" id="1R4IoyRfVVj" role="3uHU7w">
                <node concept="2OqwBi" id="1R4IoyRfVVk" role="2Oq$k0">
                  <node concept="37vLTw" id="1R4IoyRfVW2" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyRfVVZ" resolve="data" />
                  </node>
                  <node concept="2OwXpG" id="1R4IoyRfVVm" role="2OqNvi">
                    <ref role="2Oxat5" node="1R4IoyQQwjr" resolve="myTextline" />
                  </node>
                </node>
                <node concept="liA8E" id="1R4IoyRfVVn" role="2OqNvi">
                  <ref role="37wK5l" to="g51k:~TextLine.getHeight()" resolve="getHeight" />
                </node>
              </node>
              <node concept="3cpWs3" id="1R4IoyRfVVo" role="3uHU7B">
                <node concept="3cpWs3" id="1R4IoyRfVVp" role="3uHU7B">
                  <node concept="2OqwBi" id="1R4IoyRfVVq" role="3uHU7B">
                    <node concept="37vLTw" id="1R4IoyRfVVr" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyRfVV4" resolve="bounds" />
                    </node>
                    <node concept="2OwXpG" id="1R4IoyRfVVs" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Rectangle.y" resolve="y" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1R4IoyRfVVt" role="3uHU7w">
                    <node concept="37vLTw" id="1R4IoyRfVVu" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyRfVV4" resolve="bounds" />
                    </node>
                    <node concept="2OwXpG" id="1R4IoyRfVVv" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Rectangle.height" resolve="height" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1R4IoyRfVVw" role="3uHU7w">
                  <ref role="3cqZAo" node="1R4IoyQSHVF" resolve="COMPONENT_TEXT_Y_OFFSET" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRfVVx" role="3cqZAp">
          <node concept="37vLTI" id="1R4IoyRfVVy" role="3clFbG">
            <node concept="3cpWsd" id="1R4IoyRfVVz" role="37vLTx">
              <node concept="FJ1c_" id="1R4IoyRfVV$" role="3uHU7w">
                <node concept="3cmrfG" id="1R4IoyRfVV_" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="2OqwBi" id="1R4IoyRfVVA" role="3uHU7B">
                  <node concept="2OqwBi" id="1R4IoyRfVVB" role="2Oq$k0">
                    <node concept="37vLTw" id="1R4IoyRfVW1" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyRfVVZ" resolve="data" />
                    </node>
                    <node concept="2OwXpG" id="1R4IoyRfVVD" role="2OqNvi">
                      <ref role="2Oxat5" node="1R4IoyQQwjr" resolve="myTextline" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1R4IoyRfVVE" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~TextLine.getWidth()" resolve="getWidth" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs3" id="1R4IoyRfVVF" role="3uHU7B">
                <node concept="2OqwBi" id="1R4IoyRfVVG" role="3uHU7B">
                  <node concept="37vLTw" id="1R4IoyRfVVH" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyRfVV4" resolve="bounds" />
                  </node>
                  <node concept="2OwXpG" id="1R4IoyRfVVI" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Rectangle.x" resolve="x" />
                  </node>
                </node>
                <node concept="FJ1c_" id="1R4IoyRfVVJ" role="3uHU7w">
                  <node concept="2OqwBi" id="1R4IoyRfVVK" role="3uHU7B">
                    <node concept="37vLTw" id="1R4IoyRfVVL" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyRfVV4" resolve="bounds" />
                    </node>
                    <node concept="2OwXpG" id="1R4IoyRfVVM" role="2OqNvi">
                      <ref role="2Oxat5" to="z60i:~Rectangle.width" resolve="width" />
                    </node>
                  </node>
                  <node concept="3cmrfG" id="1R4IoyRfVVN" role="3uHU7w">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1R4IoyRfVVO" role="37vLTJ">
              <node concept="37vLTw" id="1R4IoyRfVW3" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRfVVZ" resolve="data" />
              </node>
              <node concept="2OwXpG" id="1R4IoyRfVVQ" role="2OqNvi">
                <ref role="2Oxat5" node="1R4IoyQOzGz" resolve="myX" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyRnFrN" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyRn_0h" role="jymVt">
      <property role="TrG5h" value="relayoutPortInspection" />
      <node concept="3Tm6S6" id="1R4IoyRn_0i" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyRn_0j" role="3clF45" />
      <node concept="37vLTG" id="1R4IoyRn_03" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="64EP$RZ8ntA" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
          <node concept="3qTvmN" id="64EP$RZ8ntB" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyRn_05" role="3clF46">
        <property role="TrG5h" value="data" />
        <node concept="3uibUv" id="1R4IoyRn_06" role="1tU5fm">
          <ref role="3uigEE" node="1R4IoyQOz$0" resolve="InspectionsFacility.InspectionData" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyRn$YT" role="3clF47">
        <node concept="3cpWs8" id="1R4IoyRn$YU" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRn$YV" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="64EP$RZ8oLU" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
            </node>
            <node concept="2OqwBi" id="1R4IoyRn$YX" role="33vP2m">
              <node concept="37vLTw" id="1R4IoyRn_0e" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRn_03" resolve="key" />
              </node>
              <node concept="liA8E" id="64EP$RZ8oeI" role="2OqNvi">
                <ref role="37wK5l" to="g27j:~PortPath.getFunctionBlock()" resolve="getFunctionBlock" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4Hbpy_fB6Y1" role="3cqZAp">
          <node concept="3cpWsn" id="4Hbpy_fB6Y2" role="3cpWs9">
            <property role="TrG5h" value="view" />
            <node concept="3uibUv" id="4Hbpy_fB6Y3" role="1tU5fm">
              <ref role="3uigEE" to="mpua:5er1YemzlNF" resolve="NetworkComponentView" />
            </node>
            <node concept="2OqwBi" id="4Hbpy_fB6Y4" role="33vP2m">
              <node concept="37vLTw" id="4Hbpy_fB6Y5" role="2Oq$k0">
                <ref role="3cqZAo" node="4Hbpy_fzDga" resolve="myNetworkView" />
              </node>
              <node concept="liA8E" id="4Hbpy_fB6Y6" role="2OqNvi">
                <ref role="37wK5l" to="mpua:4Hbpy_fzbsw" resolve="getView" />
                <node concept="37vLTw" id="4Hbpy_fBaV0" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyRn$YV" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4Hbpy_fB6xl" role="3cqZAp">
          <node concept="3cpWsn" id="4Hbpy_fB6xm" role="3cpWs9">
            <property role="TrG5h" value="portView" />
            <node concept="3uibUv" id="4Hbpy_fB7D5" role="1tU5fm">
              <ref role="3uigEE" to="mpua:5er1YemzmpJ" resolve="NetworkPortView" />
            </node>
            <node concept="2OqwBi" id="4Hbpy_fB6xo" role="33vP2m">
              <node concept="37vLTw" id="4Hbpy_fB6xp" role="2Oq$k0">
                <ref role="3cqZAo" node="4Hbpy_fzDga" resolve="myNetworkView" />
              </node>
              <node concept="liA8E" id="4Hbpy_fB6xq" role="2OqNvi">
                <ref role="37wK5l" to="mpua:4Hbpy_f$ba4" resolve="getPortView" />
                <node concept="37vLTw" id="4Hbpy_fB6xr" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyRn_03" resolve="key" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyRn$Z0" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRn$Z1" role="3cpWs9">
            <property role="TrG5h" value="controller" />
            <node concept="3uibUv" id="1R4IoyRn$Z2" role="1tU5fm">
              <ref role="3uigEE" to="vjnt:5jb5jNBJKHJ" resolve="FBNetworkComponentController" />
            </node>
            <node concept="2OqwBi" id="1R4IoyRn$Z3" role="33vP2m">
              <node concept="37vLTw" id="1R4IoyRn$Z4" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQPJCV" resolve="myControllerProvider" />
              </node>
              <node concept="liA8E" id="1R4IoyRn$Z5" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                <node concept="37vLTw" id="4Hbpy_fB82J" role="37wK5m">
                  <ref role="3cqZAo" node="4Hbpy_fB6Y2" resolve="view" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyRn$Z7" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRn$Z8" role="3cpWs9">
            <property role="TrG5h" value="coordinates" />
            <node concept="3uibUv" id="1R4IoyRn$Z9" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="1R4IoyRn$Za" role="33vP2m">
              <node concept="37vLTw" id="1R4IoyRn$Zb" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRn$Z1" resolve="controller" />
              </node>
              <node concept="liA8E" id="1R4IoyRn$Zc" role="2OqNvi">
                <ref role="37wK5l" to="vjnt:5jb5jNBJMpJ" resolve="getPortCoordinates" />
                <node concept="37vLTw" id="4Hbpy_fB8r3" role="37wK5m">
                  <ref role="3cqZAo" node="4Hbpy_fB6xm" resolve="portView" />
                </node>
                <node concept="2OqwBi" id="1R4IoyRn$Ze" role="37wK5m">
                  <node concept="37vLTw" id="1R4IoyRn$Zf" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyRbrjn" resolve="myLayoutModel" />
                  </node>
                  <node concept="liA8E" id="1R4IoyRn$Zg" role="2OqNvi">
                    <ref role="37wK5l" to="rvgs:1KCfUoKRX6g" resolve="getActivePosition" />
                    <node concept="37vLTw" id="4Hbpy_fB8b_" role="37wK5m">
                      <ref role="3cqZAo" node="4Hbpy_fB6Y2" resolve="view" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRn$ZX" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyRn$ZY" role="3clFbG">
            <node concept="2OqwBi" id="1R4IoyRn$ZZ" role="2Oq$k0">
              <node concept="37vLTw" id="1R4IoyRn_0a" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRn_05" resolve="data" />
              </node>
              <node concept="2OwXpG" id="1R4IoyRn_01" role="2OqNvi">
                <ref role="2Oxat5" node="1R4IoyQQwjr" resolve="myTextline" />
              </node>
            </node>
            <node concept="liA8E" id="1R4IoyRn_02" role="2OqNvi">
              <ref role="37wK5l" to="g51k:~TextLine.relayout()" resolve="relayout" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRn$Zi" role="3cqZAp">
          <node concept="37vLTI" id="1R4IoyRn$Zj" role="3clFbG">
            <node concept="2OqwBi" id="1R4IoyRn$Zk" role="37vLTJ">
              <node concept="37vLTw" id="1R4IoyRn_09" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRn_05" resolve="data" />
              </node>
              <node concept="2OwXpG" id="1R4IoyRn$Zm" role="2OqNvi">
                <ref role="2Oxat5" node="1R4IoyQOzK4" resolve="myY" />
              </node>
            </node>
            <node concept="3cpWsd" id="7eBFChA8QIW" role="37vLTx">
              <node concept="3cpWsd" id="7eBFChA8Rfx" role="3uHU7B">
                <node concept="2OqwBi" id="1R4IoyRn$Zw" role="3uHU7B">
                  <node concept="37vLTw" id="1R4IoyRn$Zx" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyRn$Z8" resolve="coordinates" />
                  </node>
                  <node concept="2OwXpG" id="1R4IoyRn$Zy" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                  </node>
                </node>
                <node concept="37vLTw" id="1R4IoyRn$Zz" role="3uHU7w">
                  <ref role="3cqZAo" node="1R4IoyQRj$B" resolve="PORT_TEXT_Y_OFFSET" />
                </node>
              </node>
              <node concept="FJ1c_" id="1R4IoyRn$Zo" role="3uHU7w">
                <node concept="3cmrfG" id="1R4IoyRn$Zp" role="3uHU7w">
                  <property role="3cmrfH" value="2" />
                </node>
                <node concept="2OqwBi" id="1R4IoyRn$Zq" role="3uHU7B">
                  <node concept="2OqwBi" id="1R4IoyRn$Zr" role="2Oq$k0">
                    <node concept="37vLTw" id="1R4IoyRn_0d" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyRn_05" resolve="data" />
                    </node>
                    <node concept="2OwXpG" id="1R4IoyRn$Zt" role="2OqNvi">
                      <ref role="2Oxat5" node="1R4IoyQQwjr" resolve="myTextline" />
                    </node>
                  </node>
                  <node concept="liA8E" id="1R4IoyRn$Zu" role="2OqNvi">
                    <ref role="37wK5l" to="g51k:~TextLine.getHeight()" resolve="getHeight" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRn$Z$" role="3cqZAp">
          <node concept="37vLTI" id="1R4IoyRn$Z_" role="3clFbG">
            <node concept="3cpWs3" id="1R4IoyRn$ZA" role="37vLTx">
              <node concept="2OqwBi" id="1R4IoyRn$ZB" role="3uHU7B">
                <node concept="37vLTw" id="1R4IoyRn$ZC" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyRn$Z8" resolve="coordinates" />
                </node>
                <node concept="2OwXpG" id="1R4IoyRn$ZD" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
              <node concept="1eOMI4" id="1R4IoyRn$ZE" role="3uHU7w">
                <node concept="3K4zz7" id="1R4IoyRn$ZF" role="1eOMHV">
                  <node concept="2OqwBi" id="7eBFChA8RI8" role="3K4Cdx">
                    <node concept="37vLTw" id="7eBFChA8RI9" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyRn$Z1" resolve="controller" />
                    </node>
                    <node concept="liA8E" id="7eBFChA8RIa" role="2OqNvi">
                      <ref role="37wK5l" to="vjnt:5jb5jNBJO$O" resolve="isSource" />
                      <node concept="37vLTw" id="4Hbpy_fBaAN" role="37wK5m">
                        <ref role="3cqZAo" node="4Hbpy_fB6xm" resolve="portView" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="7eBFChA8RIl" role="3K4E3e">
                    <ref role="3cqZAo" node="1R4IoyQRiAg" resolve="PORT_TEXT_X_OFFSET" />
                  </node>
                  <node concept="1ZRNhn" id="7eBFChA8RIc" role="3K4GZi">
                    <node concept="1eOMI4" id="7eBFChA8RId" role="2$L3a6">
                      <node concept="3cpWs3" id="7eBFChA8RIe" role="1eOMHV">
                        <node concept="2OqwBi" id="7eBFChA8RIf" role="3uHU7B">
                          <node concept="2OqwBi" id="7eBFChA8RIg" role="2Oq$k0">
                            <node concept="37vLTw" id="7eBFChA8RIh" role="2Oq$k0">
                              <ref role="3cqZAo" node="1R4IoyRn_05" resolve="data" />
                            </node>
                            <node concept="2OwXpG" id="7eBFChA8RIi" role="2OqNvi">
                              <ref role="2Oxat5" node="1R4IoyQQwjr" resolve="myTextline" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7eBFChA8RIj" role="2OqNvi">
                            <ref role="37wK5l" to="g51k:~TextLine.getWidth()" resolve="getWidth" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="7eBFChA8RIk" role="3uHU7w">
                          <ref role="3cqZAo" node="1R4IoyQRiAg" resolve="PORT_TEXT_X_OFFSET" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="1R4IoyRn$ZU" role="37vLTJ">
              <node concept="37vLTw" id="1R4IoyRn_0c" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRn_05" resolve="data" />
              </node>
              <node concept="2OwXpG" id="1R4IoyRn$ZW" role="2OqNvi">
                <ref role="2Oxat5" node="1R4IoyQOzGz" resolve="myX" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1R4IoyQOhNo" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1R4IoyQOhX3">
    <property role="TrG5h" value="Inspection" />
    <node concept="2tJIrI" id="1R4IoyQOhXx" role="jymVt" />
    <node concept="312cEg" id="1R4IoyQOhYw" role="jymVt">
      <property role="TrG5h" value="myText" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyQOhYb" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQOhYp" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="1R4IoyQOhYK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1R4IoyQOhX4" role="1B3o_S" />
    <node concept="2tJIrI" id="1R4IoyQOhZ6" role="jymVt" />
    <node concept="312cEg" id="1R4IoyQOi0T" role="jymVt">
      <property role="TrG5h" value="myColor" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyQOhZs" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyQOi0M" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2AHcQZ" id="1R4IoyQOi1e" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQOi1$" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQOi2K" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQOi2L" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyQOi2M" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQOi2O" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQOi2S" role="3cqZAp">
          <node concept="37vLTI" id="1R4IoyQOi2U" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQOi31" role="37vLTx">
              <ref role="3cqZAo" node="1R4IoyQOi2R" resolve="text" />
            </node>
            <node concept="37vLTw" id="1R4IoyQOidt" role="37vLTJ">
              <ref role="3cqZAo" node="1R4IoyQOhYw" resolve="myText" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyQOi34" role="3cqZAp">
          <node concept="37vLTI" id="1R4IoyQOi36" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyQOi3d" role="37vLTx">
              <ref role="3cqZAo" node="1R4IoyQOi33" resolve="color" />
            </node>
            <node concept="37vLTw" id="1R4IoyQOikB" role="37vLTJ">
              <ref role="3cqZAo" node="1R4IoyQOi0T" resolve="myColor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQOi2R" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="1R4IoyQOi2Q" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQOi_Q" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQOi33" role="3clF46">
        <property role="TrG5h" value="color" />
        <node concept="3uibUv" id="1R4IoyQOi32" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQOiCS" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQOioH" role="jymVt" />
    <node concept="3clFbW" id="1R4IoyQOiyk" role="jymVt">
      <node concept="3cqZAl" id="1R4IoyQOiyl" role="3clF45" />
      <node concept="3clFbS" id="1R4IoyQOiyn" role="3clF47">
        <node concept="1VxSAg" id="1R4IoyQOiIe" role="3cqZAp">
          <ref role="37wK5l" node="1R4IoyQOi2K" resolve="Inspection" />
          <node concept="37vLTw" id="1R4IoyQOiK9" role="37wK5m">
            <ref role="3cqZAo" node="1R4IoyQOi_$" resolve="text" />
          </node>
          <node concept="10M0yZ" id="3V8WxCAfZJz" role="37wK5m">
            <ref role="3cqZAo" to="lzb2:~JBColor.GRAY" resolve="GRAY" />
            <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyQOiu9" role="1B3o_S" />
      <node concept="37vLTG" id="1R4IoyQOi_$" role="3clF46">
        <property role="TrG5h" value="text" />
        <node concept="3uibUv" id="1R4IoyQOi_z" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyQOiCj" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQOiTh" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQOiYY" role="jymVt">
      <property role="TrG5h" value="getText" />
      <node concept="3uibUv" id="1R4IoyQOiYZ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3Tm1VV" id="1R4IoyQOiZ0" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQOiZ1" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQOiZ2" role="3cqZAp">
          <node concept="37vLTw" id="1R4IoyQOiYX" role="3clFbG">
            <ref role="3cqZAo" node="1R4IoyQOhYw" resolve="myText" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQOj2G" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyQOiZ4" role="jymVt">
      <property role="TrG5h" value="getColor" />
      <node concept="3uibUv" id="1R4IoyQOiZ5" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="3Tm1VV" id="1R4IoyQOiZ6" role="1B3o_S" />
      <node concept="3clFbS" id="1R4IoyQOiZ7" role="3clF47">
        <node concept="3clFbF" id="1R4IoyQOiZ8" role="3cqZAp">
          <node concept="37vLTw" id="1R4IoyQOiZ3" role="3clFbG">
            <ref role="3cqZAo" node="1R4IoyQOi0T" resolve="myColor" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="1R4IoyRp$8l">
    <property role="TrG5h" value="NetworkInspector" />
    <node concept="2tJIrI" id="1R4IoyRp$8V" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyRp_nV" role="jymVt">
      <property role="TrG5h" value="setInspectionForPort" />
      <node concept="3clFbS" id="1R4IoyRp_nW" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyRp_oh" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyRp_oi" role="3clF45" />
      <node concept="37vLTG" id="1R4IoyRp_oj" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="2AHcQZ" id="1R4IoyRp_ol" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="5F$aghyblfy" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
          <node concept="3qTvmN" id="5F$aghyboE3" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyRp_om" role="3clF46">
        <property role="TrG5h" value="inspection" />
        <node concept="3uibUv" id="1R4IoyRp_on" role="1tU5fm">
          <ref role="3uigEE" node="1R4IoyQOhX3" resolve="Inspection" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRp_oo" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyRp_oq" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyRp_or" role="jymVt">
      <property role="TrG5h" value="setInspectionForComponent" />
      <node concept="3clFbS" id="1R4IoyRp_os" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyRp_oL" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyRp_oM" role="3clF45" />
      <node concept="37vLTG" id="1R4IoyRp_oN" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="1gxDN_wCJZC" role="1tU5fm">
          <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRp_oP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyRp_oQ" role="3clF46">
        <property role="TrG5h" value="inspection" />
        <node concept="3uibUv" id="1R4IoyRp_oR" role="1tU5fm">
          <ref role="3uigEE" node="1R4IoyQOhX3" resolve="Inspection" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRp_oS" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyRp_oU" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyRp_oV" role="jymVt">
      <property role="TrG5h" value="clear" />
      <node concept="3clFbS" id="1R4IoyRp_oW" role="3clF47" />
      <node concept="3cqZAl" id="1R4IoyRp_p5" role="3clF45" />
      <node concept="3Tm1VV" id="1R4IoyRp_p6" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="1R4IoyRp$8m" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1R4IoyRpADU">
    <property role="TrG5h" value="InspectionManagerImpl" />
    <node concept="2tJIrI" id="1R4IoyRqIUN" role="jymVt" />
    <node concept="Wx3nA" id="1R4IoyRqKPa" role="jymVt">
      <property role="TrG5h" value="INSTANCES" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyRqK0L" role="1B3o_S" />
      <node concept="3uibUv" id="7eBFChAk70o" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="7eBFChAkxxP" role="11_B2D">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
        <node concept="3uibUv" id="7eBFChAk7l8" role="11_B2D">
          <ref role="3uigEE" node="1R4IoyRpADU" resolve="InspectionManagerImpl" />
        </node>
      </node>
      <node concept="2ShNRf" id="7eBFChAk8bC" role="33vP2m">
        <node concept="1pGfFk" id="7eBFChAk8Nj" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="7eBFChAkxPT" role="1pMfVU">
            <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
          </node>
          <node concept="3uibUv" id="7eBFChAk9oB" role="1pMfVU">
            <ref role="3uigEE" node="1R4IoyRpADU" resolve="InspectionManagerImpl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7eBFChAkbsZ" role="jymVt" />
    <node concept="2tJIrI" id="7eBFChAkbxv" role="jymVt" />
    <node concept="Wx3nA" id="7eBFChAkdvZ" role="jymVt">
      <property role="TrG5h" value="EDITOR_EXTENSION" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="7eBFChAkPQr" role="1B3o_S" />
      <node concept="3uibUv" id="7eBFChAkdr3" role="1tU5fm">
        <ref role="3uigEE" to="wvnl:~EditorExtension" resolve="EditorExtension" />
      </node>
      <node concept="2ShNRf" id="7eBFChAkelK" role="33vP2m">
        <node concept="YeOm9" id="7eBFChAkeV9" role="2ShVmc">
          <node concept="1Y3b0j" id="7eBFChAkeVc" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="wvnl:~EditorExtension" resolve="EditorExtension" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="7eBFChAkeVd" role="1B3o_S" />
            <node concept="3clFb_" id="7eBFChAkeVf" role="jymVt">
              <property role="TrG5h" value="isApplicable" />
              <node concept="3Tm1VV" id="7eBFChAkeVg" role="1B3o_S" />
              <node concept="10P_77" id="7eBFChAkeVi" role="3clF45" />
              <node concept="37vLTG" id="7eBFChAkeVj" role="3clF46">
                <property role="TrG5h" value="ec" />
                <node concept="3uibUv" id="7eBFChAkeVk" role="1tU5fm">
                  <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
                </node>
                <node concept="2AHcQZ" id="7eBFChAkeVl" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="7eBFChAkeVm" role="3clF47">
                <node concept="3clFbF" id="7eBFChAkg3c" role="3cqZAp">
                  <node concept="3clFbT" id="7eBFChAkg3b" role="3clFbG">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="7eBFChAkeVo" role="jymVt">
              <property role="TrG5h" value="install" />
              <node concept="3Tm1VV" id="7eBFChAkeVp" role="1B3o_S" />
              <node concept="3cqZAl" id="7eBFChAkeVr" role="3clF45" />
              <node concept="37vLTG" id="7eBFChAkeVs" role="3clF46">
                <property role="TrG5h" value="ec" />
                <node concept="3uibUv" id="7eBFChAkeVt" role="1tU5fm">
                  <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
                </node>
                <node concept="2AHcQZ" id="7eBFChAkeVu" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="7eBFChAkeVv" role="3clF47">
                <node concept="3clFbF" id="7eBFChAkhBP" role="3cqZAp">
                  <node concept="2OqwBi" id="7eBFChAki2Z" role="3clFbG">
                    <node concept="37vLTw" id="7eBFChAkhBO" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyRqKPa" resolve="INSTANCES" />
                    </node>
                    <node concept="liA8E" id="7eBFChAktTK" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                      <node concept="37vLTw" id="7eBFChAkuer" role="37wK5m">
                        <ref role="3cqZAo" node="7eBFChAkeVs" resolve="ec" />
                      </node>
                      <node concept="2ShNRf" id="7eBFChAkuIP" role="37wK5m">
                        <node concept="HV5vD" id="7eBFChAkvBC" role="2ShVmc">
                          <ref role="HV5vE" node="1R4IoyRpADU" resolve="InspectionManagerImpl" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="7eBFChAkeVx" role="jymVt">
              <property role="TrG5h" value="uninstall" />
              <node concept="3Tm1VV" id="7eBFChAkeVy" role="1B3o_S" />
              <node concept="3cqZAl" id="7eBFChAkeV$" role="3clF45" />
              <node concept="37vLTG" id="7eBFChAkeV_" role="3clF46">
                <property role="TrG5h" value="ec" />
                <node concept="3uibUv" id="7eBFChAkeVA" role="1tU5fm">
                  <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
                </node>
                <node concept="2AHcQZ" id="7eBFChAkeVB" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="7eBFChAkeVC" role="3clF47">
                <node concept="3cpWs8" id="7eBFChAkRd8" role="3cqZAp">
                  <node concept="3cpWsn" id="7eBFChAkRd9" role="3cpWs9">
                    <property role="TrG5h" value="manager" />
                    <node concept="3uibUv" id="7eBFChAkRcL" role="1tU5fm">
                      <ref role="3uigEE" node="1R4IoyRpADU" resolve="InspectionManagerImpl" />
                    </node>
                    <node concept="2OqwBi" id="7eBFChAkRda" role="33vP2m">
                      <node concept="37vLTw" id="7eBFChAkRdb" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyRqKPa" resolve="INSTANCES" />
                      </node>
                      <node concept="liA8E" id="7eBFChAkRdc" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object)" resolve="remove" />
                        <node concept="37vLTw" id="7eBFChAkRdd" role="37wK5m">
                          <ref role="3cqZAo" node="7eBFChAkeV_" resolve="ec" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="7eBFChAkSIz" role="3cqZAp">
                  <node concept="2GrKxI" id="7eBFChAkSI_" role="2Gsz3X">
                    <property role="TrG5h" value="provider" />
                  </node>
                  <node concept="2OqwBi" id="7eBFChAlwdu" role="2GsD0m">
                    <node concept="2OqwBi" id="7eBFChAkTnD" role="2Oq$k0">
                      <node concept="37vLTw" id="7eBFChAkT5_" role="2Oq$k0">
                        <ref role="3cqZAo" node="7eBFChAkRd9" resolve="manager" />
                      </node>
                      <node concept="2OwXpG" id="7eBFChAl36U" role="2OqNvi">
                        <ref role="2Oxat5" node="1R4IoyRpUWF" resolve="myInspectors" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7eBFChAlH5Y" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.values()" resolve="values" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7eBFChAkSID" role="2LFqv$">
                    <node concept="3clFbF" id="7eBFChAl3sw" role="3cqZAp">
                      <node concept="2OqwBi" id="7eBFChAl3yK" role="3clFbG">
                        <node concept="2GrUjf" id="7eBFChAl3sv" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="7eBFChAkSI_" resolve="provider" />
                        </node>
                        <node concept="liA8E" id="7eBFChAlHFo" role="2OqNvi">
                          <ref role="37wK5l" node="1R4IoyRq310" resolve="dispose" />
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
    </node>
    <node concept="2tJIrI" id="1R4IoyRpB2Q" role="jymVt" />
    <node concept="2YIFZL" id="7eBFChAmsKg" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <property role="DiZV1" value="true" />
      <node concept="3clFbS" id="7eBFChAmsKl" role="3clF47">
        <node concept="3clFbF" id="7eBFChAmsKm" role="3cqZAp">
          <node concept="2OqwBi" id="7eBFChAmsKn" role="3clFbG">
            <node concept="37vLTw" id="7eBFChAmsKo" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyRqKPa" resolve="INSTANCES" />
            </node>
            <node concept="liA8E" id="7eBFChAmsKp" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="7eBFChAmsKq" role="37wK5m">
                <ref role="3cqZAo" node="7eBFChAmsKi" resolve="ec" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7eBFChAmsKs" role="3clF45">
        <ref role="3uigEE" node="1R4IoyRpAE3" resolve="InspectionManager" />
      </node>
      <node concept="37vLTG" id="7eBFChAmsKi" role="3clF46">
        <property role="TrG5h" value="ec" />
        <node concept="3uibUv" id="7eBFChAmsKj" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
        <node concept="2AHcQZ" id="7eBFChAmsKk" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7eBFChAmsKr" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7eBFChAk$vA" role="jymVt" />
    <node concept="312cEg" id="1R4IoyRpBWS" role="jymVt">
      <property role="TrG5h" value="myInspections" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyRpBwh" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyRpBD5" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="19RKY2xB9Co" role="11_B2D">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
        <node concept="3uibUv" id="1R4IoyRpBRV" role="11_B2D">
          <ref role="3uigEE" node="1R4IoyQOhNn" resolve="InspectionsFacility" />
        </node>
      </node>
      <node concept="2ShNRf" id="1R4IoyRpW2d" role="33vP2m">
        <node concept="1pGfFk" id="1R4IoyRpWFu" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="19RKY2xBaiR" role="1pMfVU">
            <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
          </node>
          <node concept="3uibUv" id="1R4IoyRpXn8" role="1pMfVU">
            <ref role="3uigEE" node="1R4IoyQOhNn" resolve="InspectionsFacility" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1R4IoyRpUWF" role="jymVt">
      <property role="TrG5h" value="myInspectors" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyRpUWG" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyRpUWH" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="19RKY2xBaXc" role="11_B2D">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
        <node concept="3uibUv" id="1R4IoyRpVtK" role="11_B2D">
          <ref role="3uigEE" node="1R4IoyRpIgF" resolve="InspectionManagerImpl.MyInspector" />
        </node>
      </node>
      <node concept="2ShNRf" id="1R4IoyRpXLK" role="33vP2m">
        <node concept="1pGfFk" id="1R4IoyRpYlF" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="19RKY2xBbBI" role="1pMfVU">
            <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
          </node>
          <node concept="3uibUv" id="1R4IoyRpYIq" role="1pMfVU">
            <ref role="3uigEE" node="1R4IoyRpIgF" resolve="InspectionManagerImpl.MyInspector" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyRqLOn" role="jymVt" />
    <node concept="2tJIrI" id="7eBFChAka_U" role="jymVt" />
    <node concept="2tJIrI" id="1R4IoyRpB34" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyRpBmV" role="jymVt">
      <property role="TrG5h" value="registerNetwork" />
      <node concept="37vLTG" id="1R4IoyRpBmW" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="19RKY2xBcfV" role="1tU5fm">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRpBmY" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyRpBmZ" role="3clF46">
        <property role="TrG5h" value="facility" />
        <node concept="3uibUv" id="1R4IoyRpBn0" role="1tU5fm">
          <ref role="3uigEE" node="1R4IoyQOhNn" resolve="InspectionsFacility" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRpBn1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyRpBn3" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyRpBn4" role="3clF45" />
      <node concept="3clFbS" id="1R4IoyRpBn5" role="3clF47">
        <node concept="3clFbF" id="1R4IoyRpC9b" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyRpCxR" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyRpC9a" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyRpBWS" resolve="myInspections" />
            </node>
            <node concept="liA8E" id="1R4IoyRpFo2" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="1R4IoyRpFCa" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyRpBmW" resolve="network" />
              </node>
              <node concept="37vLTw" id="1R4IoyRpG43" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyRpBmZ" resolve="facility" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7eBFChAlICf" role="3cqZAp">
          <node concept="3cpWsn" id="7eBFChAlICg" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3uibUv" id="7eBFChAlICh" role="1tU5fm">
              <ref role="3uigEE" node="1R4IoyRpIgF" resolve="InspectionManagerImpl.MyInspector" />
            </node>
            <node concept="2OqwBi" id="7eBFChAlICi" role="33vP2m">
              <node concept="37vLTw" id="7eBFChAlICj" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRpUWF" resolve="myInspectors" />
              </node>
              <node concept="liA8E" id="7eBFChAlICk" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="7eBFChAlICl" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyRpBmW" resolve="network" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7eBFChAlICm" role="3cqZAp">
          <node concept="3clFbS" id="7eBFChAlICn" role="3clFbx">
            <node concept="3clFbF" id="7eBFChAlICo" role="3cqZAp">
              <node concept="2OqwBi" id="7eBFChAlICp" role="3clFbG">
                <node concept="37vLTw" id="7eBFChAlICq" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyRpBmZ" resolve="facility" />
                </node>
                <node concept="liA8E" id="7eBFChAlICr" role="2OqNvi">
                  <ref role="37wK5l" node="1R4IoyQP_on" resolve="install" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7eBFChAlICs" role="3clFbw">
            <node concept="10Nm6u" id="7eBFChAlICt" role="3uHU7w" />
            <node concept="37vLTw" id="7eBFChAlICu" role="3uHU7B">
              <ref role="3cqZAo" node="7eBFChAlICg" resolve="current" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyRpBn6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyRqYMt" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyRpBn7" role="jymVt">
      <property role="TrG5h" value="unregisterNetwork" />
      <node concept="37vLTG" id="1R4IoyRpBn8" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="19RKY2xBcwE" role="1tU5fm">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRpBna" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyRpBnc" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyRpBnd" role="3clF45" />
      <node concept="3clFbS" id="1R4IoyRpBne" role="3clF47">
        <node concept="3cpWs8" id="3nGtyfvSEsJ" role="3cqZAp">
          <node concept="3cpWsn" id="3nGtyfvSEsK" role="3cpWs9">
            <property role="TrG5h" value="facility" />
            <node concept="3uibUv" id="3nGtyfvSEsz" role="1tU5fm">
              <ref role="3uigEE" node="1R4IoyQOhNn" resolve="InspectionsFacility" />
            </node>
            <node concept="2OqwBi" id="3nGtyfvSEsL" role="33vP2m">
              <node concept="37vLTw" id="3nGtyfvSEsM" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRpBWS" resolve="myInspections" />
              </node>
              <node concept="liA8E" id="3nGtyfvSEsN" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object)" resolve="remove" />
                <node concept="37vLTw" id="3nGtyfvSEsO" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyRpBn8" resolve="network" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyRq_Og" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRq_Oh" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3uibUv" id="1R4IoyRq_Of" role="1tU5fm">
              <ref role="3uigEE" node="1R4IoyRpIgF" resolve="InspectionManagerImpl.MyInspector" />
            </node>
            <node concept="2OqwBi" id="1R4IoyRq_Oi" role="33vP2m">
              <node concept="37vLTw" id="1R4IoyRq_Oj" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRpUWF" resolve="myInspectors" />
              </node>
              <node concept="liA8E" id="1R4IoyRq_Ok" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="1R4IoyRq_Ol" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyRpBn8" resolve="network" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1R4IoyRqADZ" role="3cqZAp">
          <node concept="3clFbS" id="1R4IoyRqAE1" role="3clFbx">
            <node concept="3clFbF" id="1R4IoyRpGjK" role="3cqZAp">
              <node concept="2OqwBi" id="3nGtyfvSFhQ" role="3clFbG">
                <node concept="37vLTw" id="3nGtyfvSEsP" role="2Oq$k0">
                  <ref role="3cqZAo" node="3nGtyfvSEsK" resolve="facility" />
                </node>
                <node concept="liA8E" id="3nGtyfvSKUZ" role="2OqNvi">
                  <ref role="37wK5l" node="1R4IoyQPBv7" resolve="uninstall" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1R4IoyRqCFc" role="3clFbw">
            <node concept="10Nm6u" id="1R4IoyRqCNj" role="3uHU7w" />
            <node concept="37vLTw" id="1R4IoyRqAO6" role="3uHU7B">
              <ref role="3cqZAo" node="1R4IoyRq_Oh" resolve="current" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyRpBnf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyRpHud" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyRpBng" role="jymVt">
      <property role="TrG5h" value="installInspector" />
      <node concept="37vLTG" id="1R4IoyRpBnh" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="19RKY2xBcMo" role="1tU5fm">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRpBnj" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyRpZh3" role="3clF46">
        <property role="TrG5h" value="onDispose" />
        <node concept="3uibUv" id="1R4IoyRpZh4" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRpZh5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyRpBnl" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyRpBnm" role="3clF45">
        <ref role="3uigEE" node="1R4IoyRp$8l" resolve="NetworkInspector" />
      </node>
      <node concept="2AHcQZ" id="1R4IoyRpBnn" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="1R4IoyRpBno" role="3clF47">
        <node concept="3cpWs8" id="1R4IoyRpUIv" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRpUIw" role="3cpWs9">
            <property role="TrG5h" value="facility" />
            <node concept="3uibUv" id="1R4IoyRpUIx" role="1tU5fm">
              <ref role="3uigEE" node="1R4IoyQOhNn" resolve="InspectionsFacility" />
            </node>
            <node concept="2OqwBi" id="1R4IoyRpUIy" role="33vP2m">
              <node concept="37vLTw" id="1R4IoyRpUIz" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRpBWS" resolve="myInspections" />
              </node>
              <node concept="liA8E" id="1R4IoyRpUI$" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="1R4IoyRpUI_" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyRpBnh" resolve="network" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1R4IoyRpUHe" role="3cqZAp">
          <node concept="3y3z36" id="1R4IoyRq6iS" role="3clFbw">
            <node concept="10Nm6u" id="1R4IoyRq6nr" role="3uHU7w" />
            <node concept="37vLTw" id="1R4IoyRq4Fz" role="3uHU7B">
              <ref role="3cqZAo" node="1R4IoyRpUIw" resolve="facility" />
            </node>
          </node>
          <node concept="3clFbS" id="1R4IoyRpUHg" role="3clFbx">
            <node concept="3cpWs8" id="1R4IoyRqjqx" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyRqjqy" role="3cpWs9">
                <property role="TrG5h" value="previos" />
                <node concept="3uibUv" id="1R4IoyRqjqz" role="1tU5fm">
                  <ref role="3uigEE" node="1R4IoyRpIgF" resolve="InspectionManagerImpl.MyInspector" />
                </node>
                <node concept="2OqwBi" id="1R4IoyRqjq$" role="33vP2m">
                  <node concept="37vLTw" id="1R4IoyRqjq_" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyRpUWF" resolve="myInspectors" />
                  </node>
                  <node concept="liA8E" id="1R4IoyRqjqA" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="37vLTw" id="1R4IoyRqjqB" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyRpBnh" resolve="network" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1R4IoyRqk1V" role="3cqZAp">
              <node concept="3clFbS" id="1R4IoyRqk1X" role="3clFbx">
                <node concept="3clFbF" id="1R4IoyRqm31" role="3cqZAp">
                  <node concept="2OqwBi" id="1R4IoyRqmfo" role="3clFbG">
                    <node concept="37vLTw" id="1R4IoyRqm2Z" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyRqjqy" resolve="previos" />
                    </node>
                    <node concept="liA8E" id="1R4IoyRqs1v" role="2OqNvi">
                      <ref role="37wK5l" node="1R4IoyRq310" resolve="dispose" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="1R4IoyRqlS8" role="3clFbw">
                <node concept="10Nm6u" id="1R4IoyRqlWH" role="3uHU7w" />
                <node concept="37vLTw" id="1R4IoyRqkcs" role="3uHU7B">
                  <ref role="3cqZAo" node="1R4IoyRqjqy" resolve="previos" />
                </node>
              </node>
              <node concept="9aQIb" id="3nGtyfvSzaK" role="9aQIa">
                <node concept="3clFbS" id="3nGtyfvSzaL" role="9aQI4">
                  <node concept="3clFbF" id="3nGtyfvSzi7" role="3cqZAp">
                    <node concept="2OqwBi" id="3nGtyfvSzsB" role="3clFbG">
                      <node concept="37vLTw" id="3nGtyfvSzi6" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyRpUIw" resolve="facility" />
                      </node>
                      <node concept="liA8E" id="3nGtyfvSz$n" role="2OqNvi">
                        <ref role="37wK5l" node="1R4IoyQP_on" resolve="install" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyRqtCw" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyRqtCx" role="3cpWs9">
                <property role="TrG5h" value="res" />
                <node concept="3uibUv" id="1R4IoyRqtCg" role="1tU5fm">
                  <ref role="3uigEE" node="1R4IoyRpIgF" resolve="InspectionManagerImpl.MyInspector" />
                </node>
                <node concept="2ShNRf" id="1R4IoyRqtCy" role="33vP2m">
                  <node concept="1pGfFk" id="1R4IoyRqtCz" role="2ShVmc">
                    <ref role="37wK5l" node="1R4IoyRpPwW" resolve="InspectionManagerImpl.MyInspector" />
                    <node concept="37vLTw" id="7eBFChAmitb" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyRpBnh" resolve="network" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyRqtC_" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyRpZh3" resolve="onDispose" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1R4IoyRqu8l" role="3cqZAp">
              <node concept="2OqwBi" id="1R4IoyRqu_d" role="3clFbG">
                <node concept="37vLTw" id="1R4IoyRqu8j" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyRpUWF" resolve="myInspectors" />
                </node>
                <node concept="liA8E" id="1R4IoyRqxKQ" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="37vLTw" id="1R4IoyRqypH" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyRpBnh" resolve="network" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyRqy43" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyRqtCx" resolve="res" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1R4IoyRqyHJ" role="3cqZAp">
              <node concept="37vLTw" id="1R4IoyRqyLf" role="3cqZAk">
                <ref role="3cqZAo" node="1R4IoyRqtCx" resolve="res" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1R4IoyRqyWa" role="3cqZAp">
          <node concept="10Nm6u" id="1R4IoyRqz$T" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyRpBnp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyRpHEd" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyRpBns" role="jymVt">
      <property role="TrG5h" value="disposeInspector" />
      <node concept="37vLTG" id="1R4IoyRpBnt" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="19RKY2xBeov" role="1tU5fm">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRpBnv" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyRpBnx" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyRpBny" role="3clF45" />
      <node concept="3clFbS" id="1R4IoyRpBnz" role="3clF47">
        <node concept="3cpWs8" id="1R4IoyRqaL5" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRqaL6" role="3cpWs9">
            <property role="TrG5h" value="inspector" />
            <node concept="3uibUv" id="1R4IoyRqaL3" role="1tU5fm">
              <ref role="3uigEE" node="1R4IoyRpIgF" resolve="InspectionManagerImpl.MyInspector" />
            </node>
            <node concept="2OqwBi" id="1R4IoyRqaL7" role="33vP2m">
              <node concept="37vLTw" id="1R4IoyRqaL8" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRpUWF" resolve="myInspectors" />
              </node>
              <node concept="liA8E" id="1R4IoyRqaL9" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="1R4IoyRqaLa" role="37wK5m">
                  <ref role="3cqZAo" node="1R4IoyRpBnt" resolve="network" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1R4IoyRpM3T" role="3cqZAp">
          <node concept="3clFbS" id="1R4IoyRpM3V" role="3clFbx">
            <node concept="3clFbF" id="1R4IoyRqebW" role="3cqZAp">
              <node concept="2OqwBi" id="1R4IoyRqetC" role="3clFbG">
                <node concept="37vLTw" id="1R4IoyRqebU" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyRqaL6" resolve="inspector" />
                </node>
                <node concept="liA8E" id="1R4IoyRqeB8" role="2OqNvi">
                  <ref role="37wK5l" node="1R4IoyRq310" resolve="dispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1R4IoyRqeY8" role="3cqZAp">
              <node concept="2OqwBi" id="1R4IoyRqfH7" role="3clFbG">
                <node concept="37vLTw" id="1R4IoyRqeY6" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyRpUWF" resolve="myInspectors" />
                </node>
                <node concept="liA8E" id="1R4IoyRqiS$" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object)" resolve="remove" />
                  <node concept="37vLTw" id="1R4IoyRqj9r" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyRpBnt" resolve="network" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="19RKY2xCVu9" role="3cqZAp">
              <node concept="2OqwBi" id="19RKY2xCVHj" role="3clFbG">
                <node concept="2OqwBi" id="1R4IoyRpL$0" role="2Oq$k0">
                  <node concept="37vLTw" id="1R4IoyRpL$1" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyRpBWS" resolve="myInspections" />
                  </node>
                  <node concept="liA8E" id="1R4IoyRpL$2" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="37vLTw" id="1R4IoyRpL$3" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyRpBnt" resolve="network" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="19RKY2xCWWc" role="2OqNvi">
                  <ref role="37wK5l" node="1R4IoyQPBv7" resolve="uninstall" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1R4IoyRqdZn" role="3clFbw">
            <node concept="10Nm6u" id="1R4IoyRqdZo" role="3uHU7w" />
            <node concept="37vLTw" id="1R4IoyRqdZp" role="3uHU7B">
              <ref role="3cqZAo" node="1R4IoyRqaL6" resolve="inspector" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyRpBn$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyRpHRE" role="jymVt" />
    <node concept="312cEu" id="1R4IoyRpIgF" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyInspector" />
      <node concept="2tJIrI" id="1R4IoyRpJiF" role="jymVt" />
      <node concept="312cEg" id="1R4IoyRpP2g" role="jymVt">
        <property role="TrG5h" value="myInstance" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="1R4IoyRpOKf" role="1B3o_S" />
        <node concept="3uibUv" id="19RKY2xBgtg" role="1tU5fm">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRpQK5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2tJIrI" id="1R4IoyRpZLA" role="jymVt" />
      <node concept="312cEg" id="1R4IoyRq0Cy" role="jymVt">
        <property role="TrG5h" value="myDisposer" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="1R4IoyRq05P" role="1B3o_S" />
        <node concept="3uibUv" id="1R4IoyRq0wd" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRq0Ui" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2tJIrI" id="1R4IoyRpJno" role="jymVt" />
      <node concept="3clFbW" id="1R4IoyRpPwW" role="jymVt">
        <node concept="3cqZAl" id="1R4IoyRpPwX" role="3clF45" />
        <node concept="3Tm1VV" id="1R4IoyRpPwY" role="1B3o_S" />
        <node concept="3clFbS" id="1R4IoyRpPx0" role="3clF47">
          <node concept="3clFbF" id="1R4IoyRpPx4" role="3cqZAp">
            <node concept="37vLTI" id="1R4IoyRpPx6" role="3clFbG">
              <node concept="37vLTw" id="1R4IoyRpPxd" role="37vLTx">
                <ref role="3cqZAo" node="1R4IoyRpPx3" resolve="network" />
              </node>
              <node concept="37vLTw" id="1R4IoyRpQlQ" role="37vLTJ">
                <ref role="3cqZAo" node="1R4IoyRpP2g" resolve="myInstance" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1R4IoyRq1Kl" role="3cqZAp">
            <node concept="37vLTI" id="1R4IoyRq212" role="3clFbG">
              <node concept="37vLTw" id="1R4IoyRq2iE" role="37vLTx">
                <ref role="3cqZAo" node="1R4IoyRq17G" resolve="disposer" />
              </node>
              <node concept="37vLTw" id="1R4IoyRq1Kj" role="37vLTJ">
                <ref role="3cqZAo" node="1R4IoyRq0Cy" resolve="myDisposer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1R4IoyRpPx3" role="3clF46">
          <property role="TrG5h" value="network" />
          <node concept="3uibUv" id="19RKY2xBeL5" role="1tU5fm">
            <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
          </node>
          <node concept="2AHcQZ" id="1R4IoyRpQqo" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="1R4IoyRq17G" role="3clF46">
          <property role="TrG5h" value="disposer" />
          <node concept="3uibUv" id="1R4IoyRq1gR" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
          </node>
          <node concept="2AHcQZ" id="1R4IoyRq1po" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1R4IoyRpPnG" role="jymVt" />
      <node concept="3clFb_" id="1R4IoyRpJso" role="jymVt">
        <property role="TrG5h" value="setInspectionForPort" />
        <node concept="3Tm1VV" id="1R4IoyRpJsq" role="1B3o_S" />
        <node concept="3cqZAl" id="1R4IoyRpJsr" role="3clF45" />
        <node concept="37vLTG" id="1R4IoyRpJss" role="3clF46">
          <property role="TrG5h" value="port" />
          <node concept="3uibUv" id="64EP$RZ8etA" role="1tU5fm">
            <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
            <node concept="3qTvmN" id="64EP$RZ8eHA" role="11_B2D" />
          </node>
          <node concept="2AHcQZ" id="1R4IoyRpJsu" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="1R4IoyRpJsv" role="3clF46">
          <property role="TrG5h" value="inspection" />
          <node concept="3uibUv" id="1R4IoyRpJsw" role="1tU5fm">
            <ref role="3uigEE" node="1R4IoyQOhX3" resolve="Inspection" />
          </node>
          <node concept="2AHcQZ" id="1R4IoyRpJsx" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="3clFbS" id="1R4IoyRpJsy" role="3clF47">
          <node concept="3cpWs8" id="7eBFChAlTPt" role="3cqZAp">
            <node concept="3cpWsn" id="7eBFChAlTPu" role="3cpWs9">
              <property role="TrG5h" value="facility" />
              <node concept="3uibUv" id="7eBFChAlTPj" role="1tU5fm">
                <ref role="3uigEE" node="1R4IoyQOhNn" resolve="InspectionsFacility" />
              </node>
              <node concept="2OqwBi" id="7eBFChAlTPv" role="33vP2m">
                <node concept="37vLTw" id="7eBFChAlTPw" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyRpBWS" resolve="myInspections" />
                </node>
                <node concept="liA8E" id="7eBFChAlTPx" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                  <node concept="37vLTw" id="7eBFChAlTPy" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyRpP2g" resolve="myInstance" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7eBFChAlUAB" role="3cqZAp">
            <node concept="3clFbS" id="7eBFChAlUAD" role="3clFbx">
              <node concept="3clFbF" id="1R4IoyRpRaO" role="3cqZAp">
                <node concept="2OqwBi" id="1R4IoyRpRqw" role="3clFbG">
                  <node concept="37vLTw" id="7eBFChAlXd4" role="2Oq$k0">
                    <ref role="3cqZAo" node="7eBFChAlTPu" resolve="facility" />
                  </node>
                  <node concept="liA8E" id="1R4IoyRpR$B" role="2OqNvi">
                    <ref role="37wK5l" node="1R4IoyQOhP5" resolve="setInspectionForPort" />
                    <node concept="37vLTw" id="1R4IoyRpRG7" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyRpJss" resolve="port" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyRpSHd" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyRpJsv" resolve="inspection" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="7eBFChAlWzw" role="3clFbw">
              <node concept="10Nm6u" id="7eBFChAlWGj" role="3uHU7w" />
              <node concept="37vLTw" id="7eBFChAlURr" role="3uHU7B">
                <ref role="3cqZAo" node="7eBFChAlTPu" resolve="facility" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1R4IoyRpJsz" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1R4IoyRpTZR" role="jymVt" />
      <node concept="3clFb_" id="1R4IoyRpJs$" role="jymVt">
        <property role="TrG5h" value="setInspectionForComponent" />
        <node concept="3Tm1VV" id="1R4IoyRpJsA" role="1B3o_S" />
        <node concept="3cqZAl" id="1R4IoyRpJsB" role="3clF45" />
        <node concept="37vLTG" id="1R4IoyRpJsC" role="3clF46">
          <property role="TrG5h" value="component" />
          <node concept="3uibUv" id="4Hbpy_fqU76" role="1tU5fm">
            <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
          </node>
          <node concept="2AHcQZ" id="1R4IoyRpJsE" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="1R4IoyRpJsF" role="3clF46">
          <property role="TrG5h" value="inspection" />
          <node concept="3uibUv" id="1R4IoyRpJsG" role="1tU5fm">
            <ref role="3uigEE" node="1R4IoyQOhX3" resolve="Inspection" />
          </node>
          <node concept="2AHcQZ" id="1R4IoyRpJsH" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
        </node>
        <node concept="3clFbS" id="1R4IoyRpJsI" role="3clF47">
          <node concept="3cpWs8" id="7eBFChAm0BG" role="3cqZAp">
            <node concept="3cpWsn" id="7eBFChAm0BH" role="3cpWs9">
              <property role="TrG5h" value="facility" />
              <node concept="3uibUv" id="7eBFChAm0BI" role="1tU5fm">
                <ref role="3uigEE" node="1R4IoyQOhNn" resolve="InspectionsFacility" />
              </node>
              <node concept="2OqwBi" id="7eBFChAm0BJ" role="33vP2m">
                <node concept="37vLTw" id="7eBFChAm0BK" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyRpBWS" resolve="myInspections" />
                </node>
                <node concept="liA8E" id="7eBFChAm0BL" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                  <node concept="37vLTw" id="7eBFChAm0BM" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyRpP2g" resolve="myInstance" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7eBFChAm1hl" role="3cqZAp">
            <node concept="3clFbS" id="7eBFChAm1hn" role="3clFbx">
              <node concept="3clFbF" id="1R4IoyRpSPs" role="3cqZAp">
                <node concept="2OqwBi" id="1R4IoyRpSPt" role="3clFbG">
                  <node concept="37vLTw" id="7eBFChAm42X" role="2Oq$k0">
                    <ref role="3cqZAo" node="7eBFChAm0BH" resolve="facility" />
                  </node>
                  <node concept="liA8E" id="1R4IoyRpSPv" role="2OqNvi">
                    <ref role="37wK5l" node="1R4IoyQOhUr" resolve="setInspectionForComponent" />
                    <node concept="37vLTw" id="1R4IoyRpT6z" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyRpJsC" resolve="component" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyRpSPx" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyRpJsF" resolve="inspection" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="7eBFChAm3jq" role="3clFbw">
              <node concept="10Nm6u" id="7eBFChAm3sd" role="3uHU7w" />
              <node concept="37vLTw" id="7eBFChAm1y5" role="3uHU7B">
                <ref role="3cqZAo" node="7eBFChAm0BH" resolve="facility" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1R4IoyRpJsJ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1R4IoyRpTc8" role="jymVt" />
      <node concept="3clFb_" id="1R4IoyRpJsK" role="jymVt">
        <property role="TrG5h" value="clear" />
        <node concept="3cqZAl" id="1R4IoyRpJsM" role="3clF45" />
        <node concept="3Tm1VV" id="1R4IoyRpJsN" role="1B3o_S" />
        <node concept="3clFbS" id="1R4IoyRpJsO" role="3clF47">
          <node concept="3cpWs8" id="7eBFChAm4bE" role="3cqZAp">
            <node concept="3cpWsn" id="7eBFChAm4bF" role="3cpWs9">
              <property role="TrG5h" value="facility" />
              <node concept="3uibUv" id="7eBFChAm4bG" role="1tU5fm">
                <ref role="3uigEE" node="1R4IoyQOhNn" resolve="InspectionsFacility" />
              </node>
              <node concept="2OqwBi" id="7eBFChAm4bH" role="33vP2m">
                <node concept="37vLTw" id="7eBFChAm4bI" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyRpBWS" resolve="myInspections" />
                </node>
                <node concept="liA8E" id="7eBFChAm4bJ" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                  <node concept="37vLTw" id="7eBFChAm4bK" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyRpP2g" resolve="myInstance" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7eBFChAm4bL" role="3cqZAp">
            <node concept="3clFbS" id="7eBFChAm4bM" role="3clFbx">
              <node concept="3clFbF" id="7eBFChAm4bN" role="3cqZAp">
                <node concept="2OqwBi" id="7eBFChAm4bO" role="3clFbG">
                  <node concept="37vLTw" id="7eBFChAm4bP" role="2Oq$k0">
                    <ref role="3cqZAo" node="7eBFChAm4bF" resolve="facility" />
                  </node>
                  <node concept="liA8E" id="7eBFChAmgdh" role="2OqNvi">
                    <ref role="37wK5l" node="1R4IoyQOjft" resolve="clear" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="7eBFChAm4bT" role="3clFbw">
              <node concept="10Nm6u" id="7eBFChAm4bU" role="3uHU7w" />
              <node concept="37vLTw" id="7eBFChAm4bV" role="3uHU7B">
                <ref role="3cqZAo" node="7eBFChAm4bF" resolve="facility" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1R4IoyRpJsP" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1R4IoyRq2jJ" role="jymVt" />
      <node concept="3clFb_" id="1R4IoyRq310" role="jymVt">
        <property role="TrG5h" value="dispose" />
        <node concept="3clFbS" id="1R4IoyRq313" role="3clF47">
          <node concept="3clFbF" id="1R4IoyRq3wo" role="3cqZAp">
            <node concept="2OqwBi" id="1R4IoyRq3Ke" role="3clFbG">
              <node concept="37vLTw" id="1R4IoyRq3wn" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRq0Cy" resolve="myDisposer" />
              </node>
              <node concept="liA8E" id="1R4IoyRq3Ut" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1R4IoyRq3W2" role="1B3o_S" />
        <node concept="3cqZAl" id="1R4IoyRq2XB" role="3clF45" />
      </node>
      <node concept="3Tm6S6" id="1R4IoyRq4dT" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyRpJdi" role="EKbjA">
        <ref role="3uigEE" node="1R4IoyRp$8l" resolve="NetworkInspector" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1R4IoyRpADV" role="1B3o_S" />
    <node concept="3uibUv" id="1R4IoyRpB2E" role="EKbjA">
      <ref role="3uigEE" node="1R4IoyRpAE3" resolve="InspectionManager" />
    </node>
  </node>
  <node concept="3HP615" id="1R4IoyRpAE3">
    <property role="TrG5h" value="InspectionManager" />
    <node concept="2tJIrI" id="1R4IoyRpAEp" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyRpB6a" role="jymVt">
      <property role="TrG5h" value="registerNetwork" />
      <node concept="37vLTG" id="1R4IoyRpBaL" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="5oxN2jlGxj1" role="1tU5fm">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRpBaN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyRpBbS" role="3clF46">
        <property role="TrG5h" value="facility" />
        <node concept="3uibUv" id="1R4IoyRpBdC" role="1tU5fm">
          <ref role="3uigEE" node="1R4IoyQOhNn" resolve="InspectionsFacility" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRpBeq" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyRpB6d" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyRpB6e" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyRpB5q" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1R4IoyRpB4f" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyRpBiY" role="jymVt">
      <property role="TrG5h" value="unregisterNetwork" />
      <node concept="37vLTG" id="1R4IoyRpBlf" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="5oxN2jlGxkt" role="1tU5fm">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRpBlh" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyRpBj1" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyRpBj2" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyRpBhQ" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1R4IoyRpBgj" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyRpAFf" role="jymVt">
      <property role="TrG5h" value="installInspector" />
      <node concept="37vLTG" id="1R4IoyRpAFH" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="5oxN2jlGxlT" role="1tU5fm">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRpAP4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyRpUfl" role="3clF46">
        <property role="TrG5h" value="onDispose" />
        <node concept="3uibUv" id="1R4IoyRpUhE" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRpUjA" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyRpAFi" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyRpAFj" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyRpAOj" role="3clF45">
        <ref role="3uigEE" node="1R4IoyRp$8l" resolve="NetworkInspector" />
      </node>
      <node concept="2AHcQZ" id="1R4IoyRpAW0" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyRpAWM" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyRpAYX" role="jymVt">
      <property role="TrG5h" value="disposeInspector" />
      <node concept="37vLTG" id="1R4IoyRpAZI" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="5oxN2jlGxnl" role="1tU5fm">
          <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRpAZK" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyRpAZ0" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyRpAZ1" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyRpAYv" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="1R4IoyRpAE4" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7eBFChAdkx2">
    <property role="TrG5h" value="InspectionsData" />
    <node concept="2tJIrI" id="7eBFChAdllM" role="jymVt" />
    <node concept="Wx3nA" id="7eBFChAdoX7" role="jymVt">
      <property role="TrG5h" value="KEY" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7eBFChAdoX9" role="1tU5fm">
        <ref role="3uigEE" to="3bo0:7eBFChAanmT" resolve="SceneStateKey" />
        <node concept="3uibUv" id="7eBFChAd_Pp" role="11_B2D">
          <ref role="3uigEE" node="7eBFChAdkx2" resolve="InspectionsData" />
        </node>
      </node>
      <node concept="2ShNRf" id="7eBFChAdoZz" role="33vP2m">
        <node concept="1pGfFk" id="7eBFChAd_Jq" role="2ShVmc">
          <ref role="37wK5l" to="3bo0:7eBFChAansi" resolve="SceneStateKey" />
          <node concept="3uibUv" id="7eBFChAd_S$" role="1pMfVU">
            <ref role="3uigEE" node="7eBFChAdkx2" resolve="InspectionsData" />
          </node>
          <node concept="Xl_RD" id="7eBFChAd_UZ" role="37wK5m">
            <property role="Xl_RC" value="inspections" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7eBFChAdoXb" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7eBFChAdoUd" role="jymVt" />
    <node concept="312cEg" id="7eBFChAdlm5" role="jymVt">
      <property role="TrG5h" value="portInspections" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7eBFChAdlm7" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~HashMap" resolve="HashMap" />
        <node concept="3uibUv" id="4Hbpy_fw9JD" role="11_B2D">
          <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
          <node concept="3qUE_q" id="4Hbpy_fwa47" role="11_B2D">
            <node concept="3uibUv" id="4Hbpy_fwa6n" role="3qUE_r">
              <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
            </node>
          </node>
        </node>
        <node concept="3uibUv" id="7eBFChAdnun" role="11_B2D">
          <ref role="3uigEE" node="1R4IoyQOhX3" resolve="Inspection" />
        </node>
      </node>
      <node concept="2ShNRf" id="7eBFChAdlma" role="33vP2m">
        <node concept="1pGfFk" id="7eBFChAdlmb" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="4Hbpy_fwa86" role="1pMfVU">
            <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
            <node concept="3qUE_q" id="4Hbpy_fwa87" role="11_B2D">
              <node concept="3uibUv" id="4Hbpy_fwa88" role="3qUE_r">
                <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
              </node>
            </node>
          </node>
          <node concept="3uibUv" id="7eBFChAdnwv" role="1pMfVU">
            <ref role="3uigEE" node="1R4IoyQOhX3" resolve="Inspection" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7eBFChAdlme" role="jymVt">
      <property role="TrG5h" value="componentInspections" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7eBFChAdlmg" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~HashMap" resolve="HashMap" />
        <node concept="3uibUv" id="4Hbpy_fwaaA" role="11_B2D">
          <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
        </node>
        <node concept="3uibUv" id="7eBFChAdnyj" role="11_B2D">
          <ref role="3uigEE" node="1R4IoyQOhX3" resolve="Inspection" />
        </node>
      </node>
      <node concept="2ShNRf" id="7eBFChAdlmj" role="33vP2m">
        <node concept="1pGfFk" id="7eBFChAdlmk" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="4Hbpy_fwacv" role="1pMfVU">
            <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
          </node>
          <node concept="3uibUv" id="7eBFChAdn$r" role="1pMfVU">
            <ref role="3uigEE" node="1R4IoyQOhX3" resolve="Inspection" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7eBFChAdllV" role="jymVt" />
    <node concept="3Tm1VV" id="7eBFChAdkx3" role="1B3o_S" />
  </node>
</model>

