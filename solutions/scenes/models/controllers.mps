<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:22f3147c-cd8c-496f-a7fc-c31f351de000(scenes.controllers)">
  <persistence version="9" />
  <languages>
    <use id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="3bo0" ref="r:2b66dd0d-2c90-4da0-994d-d7579a6bca2a(scenes.controllers.scene)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="5ueo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.style(MPS.Editor/)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="fbzs" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.geom(JDK/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
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
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
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
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e" />
    </language>
    <language id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8">
      <concept id="4678410916365116210" name="jetbrains.mps.baseLanguage.jdk8.structure.DefaultModifier" flags="ng" index="2JFqV2" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="8575328350543493365" name="message" index="huDt6" />
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
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
  <node concept="3HP615" id="1KCfUoKQeCd">
    <property role="TrG5h" value="LayoutModel" />
    <node concept="2tJIrI" id="Ue8k5tu89n" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJrgod" role="jymVt">
      <property role="TrG5h" value="addComponent" />
      <node concept="3clFbS" id="17nGqbJrgog" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJrgoh" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJrgk4" role="3clF45" />
      <node concept="37vLTG" id="17nGqbJrguj" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="17nGqbJrgui" role="1tU5fm">
          <ref role="16sUi3" node="17nGqbJrfyX" resolve="T" />
        </node>
        <node concept="2AHcQZ" id="4tjN0ibV2ri" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="17nGqbJrgzT" role="3clF46">
        <property role="TrG5h" value="setting" />
        <node concept="3uibUv" id="17nGqbJrgDt" role="1tU5fm">
          <ref role="3uigEE" node="2JpbWDsJCQ0" resolve="LayoutSetting" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJrgWQ" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJrgKq" role="jymVt">
      <property role="TrG5h" value="removeComponent" />
      <node concept="3clFbS" id="17nGqbJrgKr" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJrgKs" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJrgKt" role="3clF45" />
      <node concept="37vLTG" id="17nGqbJrgKu" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="17nGqbJrgKv" role="1tU5fm">
          <ref role="16sUi3" node="17nGqbJrfyX" resolve="T" />
        </node>
        <node concept="2AHcQZ" id="4tjN0ibV2rk" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJrgfw" role="jymVt" />
    <node concept="3clFb_" id="3vyG44APD0o" role="jymVt">
      <property role="TrG5h" value="moveComponents" />
      <node concept="3clFbS" id="3vyG44APD0r" role="3clF47" />
      <node concept="3Tm1VV" id="3vyG44APD0s" role="1B3o_S" />
      <node concept="3uibUv" id="3vyG44APCZq" role="3clF45">
        <ref role="3uigEE" node="3vyG44APBBK" resolve="LayoutMovememntHandle" />
      </node>
      <node concept="37vLTG" id="3vyG44APDe9" role="3clF46">
        <property role="TrG5h" value="components" />
        <node concept="3uibUv" id="3vyG44APDe8" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="16syzq" id="17nGqbJrfPa" role="11_B2D">
            <ref role="16sUi3" node="17nGqbJrfyX" resolve="T" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3vyG44APGDP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3vyG44APHNz" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1KCfUoKQeCe" role="1B3o_S" />
    <node concept="16euLQ" id="17nGqbJrfyX" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
    <node concept="3uibUv" id="2syzu7qKj84" role="3HQHJm">
      <ref role="3uigEE" node="2syzu7qKiXL" resolve="ROLayoutModel" />
      <node concept="16syzq" id="2syzu7qKjfw" role="11_B2D">
        <ref role="16sUi3" node="17nGqbJrfyX" resolve="T" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="1KCfUoKRX_E">
    <property role="TrG5h" value="SelectionModel" />
    <node concept="2tJIrI" id="1KCfUoKRXAg" role="jymVt" />
    <node concept="3clFb_" id="1KCfUoKS0LD" role="jymVt">
      <property role="TrG5h" value="getSelectedComponents" />
      <node concept="3clFbS" id="1KCfUoKS0LG" role="3clF47" />
      <node concept="3Tm1VV" id="1KCfUoKS0LH" role="1B3o_S" />
      <node concept="3uibUv" id="1KCfUoKS0Kj" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="16syzq" id="17nGqbJCpyQ" role="11_B2D">
          <ref role="16sUi3" node="17nGqbJCprt" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2XwVnrt19_d" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJ$$hK" role="jymVt">
      <property role="TrG5h" value="clear" />
      <node concept="3clFbS" id="17nGqbJ$$hN" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJ$$hO" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJ$$dg" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="17nGqbJ$$8p" role="jymVt" />
    <node concept="3clFb_" id="2XwVnrt19DS" role="jymVt">
      <property role="TrG5h" value="setSelected" />
      <node concept="3clFbS" id="2XwVnrt19DV" role="3clF47" />
      <node concept="3Tm1VV" id="2XwVnrt19DW" role="1B3o_S" />
      <node concept="3cqZAl" id="2XwVnrt19Do" role="3clF45" />
      <node concept="37vLTG" id="2XwVnrt19Gz" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="17nGqbJCpAO" role="1tU5fm">
          <ref role="16sUi3" node="17nGqbJCprt" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="2XwVnrt19Iz" role="3clF46">
        <property role="TrG5h" value="selected" />
        <node concept="10P_77" id="2XwVnrt19Ke" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2XwVnrt19M7" role="jymVt" />
    <node concept="3clFb_" id="2XwVnrt19Ro" role="jymVt">
      <property role="TrG5h" value="isSelected" />
      <node concept="3clFbS" id="2XwVnrt19Rr" role="3clF47">
        <node concept="3clFbF" id="2XwVnrt1a1p" role="3cqZAp">
          <node concept="2OqwBi" id="2XwVnrt1aB5" role="3clFbG">
            <node concept="1rXfSq" id="2XwVnrt1a1o" role="2Oq$k0">
              <ref role="37wK5l" node="1KCfUoKS0LD" resolve="getSelectedComponents" />
            </node>
            <node concept="liA8E" id="2XwVnrt1b9K" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
              <node concept="37vLTw" id="2XwVnrt1bgj" role="37wK5m">
                <ref role="3cqZAo" node="2XwVnrt19Un" resolve="component" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2XwVnrt19Rs" role="1B3o_S" />
      <node concept="10P_77" id="2XwVnrt19OD" role="3clF45" />
      <node concept="37vLTG" id="2XwVnrt19Un" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="17nGqbJCpDe" role="1tU5fm">
          <ref role="16sUi3" node="17nGqbJCprt" resolve="T" />
        </node>
      </node>
      <node concept="2JFqV2" id="2XwVnrt19Xn" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="1KCfUoKRXAi" role="jymVt" />
    <node concept="3clFb_" id="1KCfUoKS1_u" role="jymVt">
      <property role="TrG5h" value="addListener" />
      <node concept="3clFbS" id="1KCfUoKS1_v" role="3clF47" />
      <node concept="3Tm1VV" id="1KCfUoKS1_w" role="1B3o_S" />
      <node concept="3cqZAl" id="1KCfUoKS1_x" role="3clF45" />
      <node concept="37vLTG" id="1KCfUoKS1_y" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="17nGqbJCpPz" role="1tU5fm">
          <ref role="3uigEE" node="1KCfUoKS1_I" resolve="SelectionModel.Listener" />
          <node concept="16syzq" id="17nGqbJCpUp" role="11_B2D">
            <ref role="16sUi3" node="17nGqbJCprt" resolve="T" />
          </node>
        </node>
        <node concept="2AHcQZ" id="1KCfUoKS1_$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1KCfUoKS1__" role="jymVt" />
    <node concept="3clFb_" id="1KCfUoKS1_A" role="jymVt">
      <property role="TrG5h" value="removeListener" />
      <node concept="3clFbS" id="1KCfUoKS1_B" role="3clF47" />
      <node concept="3Tm1VV" id="1KCfUoKS1_C" role="1B3o_S" />
      <node concept="3cqZAl" id="1KCfUoKS1_D" role="3clF45" />
      <node concept="37vLTG" id="1KCfUoKS1_E" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="2AHcQZ" id="1KCfUoKS1_G" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="17nGqbJCpWy" role="1tU5fm">
          <ref role="3uigEE" node="1KCfUoKS1_I" resolve="SelectionModel.Listener" />
          <node concept="16syzq" id="17nGqbJCpWz" role="11_B2D">
            <ref role="16sUi3" node="17nGqbJCprt" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1KCfUoKS1_H" role="jymVt" />
    <node concept="3HP615" id="1KCfUoKS1_I" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Listener" />
      <node concept="3clFb_" id="1KCfUoKS1_J" role="jymVt">
        <property role="TrG5h" value="onComponentSelected" />
        <node concept="37vLTG" id="1KCfUoKS1Ej" role="3clF46">
          <property role="TrG5h" value="component" />
          <node concept="16syzq" id="17nGqbJCpJy" role="1tU5fm">
            <ref role="16sUi3" node="17nGqbJCpGy" resolve="T" />
          </node>
        </node>
        <node concept="37vLTG" id="1KCfUoKS1HY" role="3clF46">
          <property role="TrG5h" value="selected" />
          <node concept="10P_77" id="1KCfUoKS1Jn" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="1KCfUoKS1_K" role="3clF47" />
        <node concept="3Tm1VV" id="1KCfUoKS1_L" role="1B3o_S" />
        <node concept="3cqZAl" id="1KCfUoKS1_M" role="3clF45" />
      </node>
      <node concept="3Tm1VV" id="1KCfUoKS1_U" role="1B3o_S" />
      <node concept="16euLQ" id="17nGqbJCpGy" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="3Tm1VV" id="1KCfUoKRX_F" role="1B3o_S" />
    <node concept="16euLQ" id="17nGqbJCprt" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="312cEu" id="1KCfUoKSK2B">
    <property role="TrG5h" value="DefaultLayoutModel" />
    <node concept="Wx3nA" id="2JpbWDsS6Ax" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ZERO_ZERO" />
      <node concept="3Tm6S6" id="2JpbWDsS6Ar" role="1B3o_S" />
      <node concept="3uibUv" id="2JpbWDsS6As" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="2ShNRf" id="2JpbWDsS6At" role="33vP2m">
        <node concept="1pGfFk" id="2JpbWDsS6Au" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
          <node concept="3cmrfG" id="2JpbWDsS6Av" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
          <node concept="3cmrfG" id="2JpbWDsS6Aw" role="37wK5m">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1KCfUoKSK4b" role="jymVt" />
    <node concept="312cEg" id="1KCfUoKSNU4" role="jymVt">
      <property role="TrG5h" value="myComponentSettings" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1KCfUoKSNAB" role="1B3o_S" />
      <node concept="3uibUv" id="2JpbWDsQWRC" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="16syzq" id="17nGqbJrzZj" role="11_B2D">
          <ref role="16sUi3" node="17nGqbJrnXM" resolve="T" />
        </node>
        <node concept="3uibUv" id="2JpbWDsQYxv" role="11_B2D">
          <ref role="3uigEE" node="2JpbWDsJCQ0" resolve="LayoutSetting" />
        </node>
      </node>
      <node concept="2ShNRf" id="17nGqbJrBCZ" role="33vP2m">
        <node concept="1pGfFk" id="17nGqbJrDYr" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="16syzq" id="17nGqbJrHGq" role="1pMfVU">
            <ref role="16sUi3" node="17nGqbJrnXM" resolve="T" />
          </node>
          <node concept="3uibUv" id="17nGqbJrHGr" role="1pMfVU">
            <ref role="3uigEE" node="2JpbWDsJCQ0" resolve="LayoutSetting" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2JpbWDsR6CS" role="jymVt" />
    <node concept="312cEg" id="2JpbWDsR5i1" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2JpbWDsR4go" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJsUGk" role="1tU5fm">
        <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
      </node>
      <node concept="2AHcQZ" id="2JpbWDsR6rr" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1KCfUoKSKIQ" role="jymVt" />
    <node concept="312cEg" id="3vyG44AQ2ZG" role="jymVt">
      <property role="TrG5h" value="myHandle" />
      <node concept="3Tm6S6" id="3vyG44AQ1QL" role="1B3o_S" />
      <node concept="3uibUv" id="3vyG44AQ2Oj" role="1tU5fm">
        <ref role="3uigEE" node="3vyG44APPy3" resolve="DefaultLayoutModel.DefaultLayoutMovementHandle" />
      </node>
    </node>
    <node concept="2tJIrI" id="2JpbWDsR0gm" role="jymVt" />
    <node concept="3clFbW" id="2JpbWDsR2ER" role="jymVt">
      <node concept="3cqZAl" id="2JpbWDsR2EU" role="3clF45" />
      <node concept="3Tm1VV" id="2JpbWDsR2EV" role="1B3o_S" />
      <node concept="3clFbS" id="2JpbWDsR2EW" role="3clF47">
        <node concept="3clFbF" id="2JpbWDsR9p0" role="3cqZAp">
          <node concept="37vLTI" id="2JpbWDsR9VJ" role="3clFbG">
            <node concept="37vLTw" id="17nGqbJt4vx" role="37vLTx">
              <ref role="3cqZAo" node="17nGqbJrdyI" resolve="repository" />
            </node>
            <node concept="37vLTw" id="2JpbWDsR9oZ" role="37vLTJ">
              <ref role="3cqZAo" node="2JpbWDsR5i1" resolve="myRepository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="17nGqbJrdyI" role="3clF46">
        <property role="TrG5h" value="repository" />
        <node concept="3uibUv" id="17nGqbJrdMz" role="1tU5fm">
          <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJrdRc" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Ue8k5tucDa" role="jymVt" />
    <node concept="3clFb_" id="Ue8k5tuex9" role="jymVt">
      <property role="TrG5h" value="components" />
      <node concept="3Tm1VV" id="Ue8k5tuexb" role="1B3o_S" />
      <node concept="3uibUv" id="Ue8k5tuexc" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="16syzq" id="Ue8k5tuexk" role="11_B2D">
          <ref role="16sUi3" node="17nGqbJrnXM" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="Ue8k5tuexl" role="3clF47">
        <node concept="3clFbF" id="Ue8k5tugyD" role="3cqZAp">
          <node concept="2OqwBi" id="Ue8k5tuhxd" role="3clFbG">
            <node concept="37vLTw" id="Ue8k5tugyA" role="2Oq$k0">
              <ref role="3cqZAo" node="1KCfUoKSNU4" resolve="myComponentSettings" />
            </node>
            <node concept="liA8E" id="Ue8k5tuiuX" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.keySet()" resolve="keySet" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="Ue8k5tuexm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJyat9" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJycxD" role="jymVt">
      <property role="TrG5h" value="addComponent" />
      <node concept="3Tm1VV" id="17nGqbJycxF" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJycxG" role="3clF45" />
      <node concept="37vLTG" id="17nGqbJycxH" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="17nGqbJycxO" role="1tU5fm">
          <ref role="16sUi3" node="17nGqbJrnXM" resolve="T" />
        </node>
        <node concept="2AHcQZ" id="4tjN0ibV2s3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="17nGqbJycxJ" role="3clF46">
        <property role="TrG5h" value="setting" />
        <node concept="3uibUv" id="17nGqbJycxK" role="1tU5fm">
          <ref role="3uigEE" node="2JpbWDsJCQ0" resolve="LayoutSetting" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJycxP" role="3clF47">
        <node concept="3clFbF" id="17nGqbJyh8Q" role="3cqZAp">
          <node concept="2OqwBi" id="17nGqbJyhZq" role="3clFbG">
            <node concept="37vLTw" id="17nGqbJyh8P" role="2Oq$k0">
              <ref role="3cqZAo" node="1KCfUoKSNU4" resolve="myComponentSettings" />
            </node>
            <node concept="liA8E" id="17nGqbJylQT" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="17nGqbJymbF" role="37wK5m">
                <ref role="3cqZAo" node="17nGqbJycxH" resolve="component" />
              </node>
              <node concept="37vLTw" id="17nGqbJymWb" role="37wK5m">
                <ref role="3cqZAo" node="17nGqbJycxJ" resolve="setting" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4Mm7Iw8BB5f" role="3cqZAp">
          <node concept="3cpWsn" id="4Mm7Iw8BB5g" role="3cpWs9">
            <property role="TrG5h" value="bounds" />
            <node concept="3uibUv" id="4Mm7Iw8BB5c" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
            </node>
            <node concept="2OqwBi" id="4Mm7Iw8BB5h" role="33vP2m">
              <node concept="37vLTw" id="4Mm7Iw8BB5i" role="2Oq$k0">
                <ref role="3cqZAo" node="17nGqbJycxJ" resolve="setting" />
              </node>
              <node concept="liA8E" id="4Mm7Iw8BB5j" role="2OqNvi">
                <ref role="37wK5l" node="2JpbWDsJE9a" resolve="getBounds" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Mm7Iw8B$_f" role="3cqZAp">
          <node concept="1rXfSq" id="4Mm7Iw8B$_d" role="3clFbG">
            <ref role="37wK5l" node="2syzu7qN4_l" resolve="fireAdded" />
            <node concept="37vLTw" id="4Mm7Iw8B_ny" role="37wK5m">
              <ref role="3cqZAo" node="17nGqbJycxH" resolve="component" />
            </node>
            <node concept="2OqwBi" id="4Mm7Iw8BC9T" role="37wK5m">
              <node concept="37vLTw" id="4Mm7Iw8BB5k" role="2Oq$k0">
                <ref role="3cqZAo" node="4Mm7Iw8BB5g" resolve="bounds" />
              </node>
              <node concept="2OwXpG" id="4Mm7Iw8BDJ7" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.x" resolve="x" />
              </node>
            </node>
            <node concept="2OqwBi" id="4Mm7Iw8BEAN" role="37wK5m">
              <node concept="37vLTw" id="4Mm7Iw8BE2X" role="2Oq$k0">
                <ref role="3cqZAo" node="4Mm7Iw8BB5g" resolve="bounds" />
              </node>
              <node concept="2OwXpG" id="4Mm7Iw8BFCg" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Rectangle.y" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJycxQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJyeK5" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJycxR" role="jymVt">
      <property role="TrG5h" value="removeComponent" />
      <node concept="3Tm1VV" id="17nGqbJycxT" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJycxU" role="3clF45" />
      <node concept="37vLTG" id="17nGqbJycxV" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="17nGqbJycy2" role="1tU5fm">
          <ref role="16sUi3" node="17nGqbJrnXM" resolve="T" />
        </node>
        <node concept="2AHcQZ" id="4tjN0ibV2sM" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJycy3" role="3clF47">
        <node concept="3clFbF" id="17nGqbJynHP" role="3cqZAp">
          <node concept="2OqwBi" id="17nGqbJyo3$" role="3clFbG">
            <node concept="37vLTw" id="17nGqbJynHO" role="2Oq$k0">
              <ref role="3cqZAo" node="1KCfUoKSNU4" resolve="myComponentSettings" />
            </node>
            <node concept="liA8E" id="17nGqbJyoTw" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object)" resolve="remove" />
              <node concept="37vLTw" id="17nGqbJypf_" role="37wK5m">
                <ref role="3cqZAo" node="17nGqbJycxV" resolve="component" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Mm7Iw8BFXb" role="3cqZAp">
          <node concept="1rXfSq" id="4Mm7Iw8BFX9" role="3clFbG">
            <ref role="37wK5l" node="2syzu7qN4Bc" resolve="fireRemoved" />
            <node concept="37vLTw" id="4Mm7Iw8BGKD" role="37wK5m">
              <ref role="3cqZAo" node="17nGqbJycxV" resolve="component" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJycy4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1KCfUoKUzum" role="jymVt" />
    <node concept="3clFb_" id="1KCfUoKUCau" role="jymVt">
      <property role="TrG5h" value="findAt" />
      <node concept="3Tm1VV" id="1KCfUoKUCaw" role="1B3o_S" />
      <node concept="16syzq" id="17nGqbJrv4Z" role="3clF45">
        <ref role="16sUi3" node="17nGqbJrnXM" resolve="T" />
      </node>
      <node concept="37vLTG" id="1KCfUoKUCay" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="1KCfUoKUCaz" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1KCfUoKUCa$" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="1KCfUoKUCa_" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="1KCfUoKUCaA" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="1KCfUoKUCaB" role="3clF47">
        <node concept="2Gpval" id="1KCfUoKUCN5" role="3cqZAp">
          <node concept="2GrKxI" id="1KCfUoKUCN6" role="2Gsz3X">
            <property role="TrG5h" value="componentEntry" />
          </node>
          <node concept="3clFbS" id="1KCfUoKUCN8" role="2LFqv$">
            <node concept="3cpWs8" id="17nGqbJs1R6" role="3cqZAp">
              <node concept="3cpWsn" id="17nGqbJs1R9" role="3cpWs9">
                <property role="TrG5h" value="component" />
                <node concept="16syzq" id="17nGqbJs1R4" role="1tU5fm">
                  <ref role="16sUi3" node="17nGqbJrnXM" resolve="T" />
                </node>
                <node concept="2OqwBi" id="17nGqbJs48i" role="33vP2m">
                  <node concept="2GrUjf" id="17nGqbJs3QW" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1KCfUoKUCN6" resolve="componentEntry" />
                  </node>
                  <node concept="3AY5_j" id="17nGqbJsnhX" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="17nGqbJrW16" role="3cqZAp">
              <node concept="3cpWsn" id="17nGqbJrW19" role="3cpWs9">
                <property role="TrG5h" value="setting" />
                <node concept="3uibUv" id="17nGqbJrXRV" role="1tU5fm">
                  <ref role="3uigEE" node="2JpbWDsJCQ0" resolve="LayoutSetting" />
                </node>
                <node concept="2OqwBi" id="17nGqbJsp_N" role="33vP2m">
                  <node concept="2GrUjf" id="17nGqbJspip" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1KCfUoKUCN6" resolve="componentEntry" />
                  </node>
                  <node concept="3AV6Ez" id="17nGqbJsGxv" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="2XwVnrsZIrS" role="3cqZAp">
              <node concept="1Wc70l" id="4O0ojQpAmLB" role="3clFbw">
                <node concept="2OqwBi" id="4O0ojQpAoH4" role="3uHU7w">
                  <node concept="37vLTw" id="4O0ojQpAotC" role="2Oq$k0">
                    <ref role="3cqZAo" node="17nGqbJrW19" resolve="setting" />
                  </node>
                  <node concept="liA8E" id="4O0ojQpAAVB" role="2OqNvi">
                    <ref role="37wK5l" node="2JpbWDsJECv" resolve="canStartMoveAt" />
                    <node concept="37vLTw" id="4O0ojQpABm1" role="37wK5m">
                      <ref role="3cqZAo" node="1KCfUoKUCay" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="4O0ojQpACcA" role="37wK5m">
                      <ref role="3cqZAo" node="1KCfUoKUCa$" resolve="y" />
                    </node>
                  </node>
                </node>
                <node concept="1Wc70l" id="2JpbWDsRrOh" role="3uHU7B">
                  <node concept="3y3z36" id="2JpbWDsR$ck" role="3uHU7B">
                    <node concept="10Nm6u" id="2JpbWDsR$fk" role="3uHU7w" />
                    <node concept="37vLTw" id="17nGqbJsHaB" role="3uHU7B">
                      <ref role="3cqZAo" node="17nGqbJrW19" resolve="setting" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2XwVnrsZTEs" role="3uHU7w">
                    <node concept="2OqwBi" id="2XwVnrsZIFO" role="2Oq$k0">
                      <node concept="liA8E" id="2XwVnrsZTiA" role="2OqNvi">
                        <ref role="37wK5l" node="2JpbWDsJE9a" resolve="getBounds" />
                      </node>
                      <node concept="37vLTw" id="17nGqbJsHno" role="2Oq$k0">
                        <ref role="3cqZAo" node="17nGqbJrW19" resolve="setting" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2XwVnrt05Cx" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Rectangle.contains(int,int)" resolve="contains" />
                      <node concept="37vLTw" id="2XwVnrt05K2" role="37wK5m">
                        <ref role="3cqZAo" node="1KCfUoKUCay" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="2XwVnrt06Pq" role="37wK5m">
                        <ref role="3cqZAo" node="1KCfUoKUCa$" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="2XwVnrsZIrU" role="3clFbx">
                <node concept="3cpWs6" id="2XwVnrt073y" role="3cqZAp">
                  <node concept="37vLTw" id="17nGqbJsH$Q" role="3cqZAk">
                    <ref role="3cqZAo" node="17nGqbJs1R9" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="17nGqbJrQCn" role="2GsD0m">
            <ref role="3cqZAo" node="1KCfUoKSNU4" resolve="myComponentSettings" />
          </node>
        </node>
        <node concept="3cpWs6" id="2XwVnrt092B" role="3cqZAp">
          <node concept="10Nm6u" id="2XwVnrt09Hd" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1KCfUoKUCaC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3vyG44APK1k" role="jymVt" />
    <node concept="3clFb_" id="3vyG44APKV7" role="jymVt">
      <property role="TrG5h" value="moveComponents" />
      <node concept="3Tm1VV" id="3vyG44APKV9" role="1B3o_S" />
      <node concept="3uibUv" id="3vyG44APKVa" role="3clF45">
        <ref role="3uigEE" node="3vyG44APBBK" resolve="LayoutMovememntHandle" />
      </node>
      <node concept="37vLTG" id="3vyG44APKVb" role="3clF46">
        <property role="TrG5h" value="components" />
        <node concept="3uibUv" id="3vyG44APKVc" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="16syzq" id="17nGqbJy75w" role="11_B2D">
            <ref role="16sUi3" node="17nGqbJrnXM" resolve="T" />
          </node>
        </node>
        <node concept="2AHcQZ" id="3vyG44APKVe" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3vyG44APKVf" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="3vyG44APKVh" role="3clF47">
        <node concept="3cpWs6" id="17nGqbJ9XXl" role="3cqZAp">
          <node concept="1eOMI4" id="17nGqbJ9XxO" role="3cqZAk">
            <node concept="37vLTI" id="17nGqbJ9UH9" role="1eOMHV">
              <node concept="2ShNRf" id="17nGqbJ9Ww1" role="37vLTx">
                <node concept="1pGfFk" id="17nGqbJ9Wr6" role="2ShVmc">
                  <ref role="37wK5l" node="3vyG44AQrLK" resolve="DefaultLayoutModel.DefaultLayoutMovementHandle" />
                  <node concept="37vLTw" id="17nGqbJ9WOO" role="37wK5m">
                    <ref role="3cqZAo" node="3vyG44APKVb" resolve="components" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="17nGqbJ9TCe" role="37vLTJ">
                <ref role="3cqZAo" node="3vyG44AQ2ZG" resolve="myHandle" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3vyG44APKVi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1KCfUoKSKgG" role="jymVt" />
    <node concept="3clFb_" id="1KCfUoKSK6h" role="jymVt">
      <property role="TrG5h" value="getActivePosition" />
      <node concept="37vLTG" id="1KCfUoKSK6i" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="17nGqbJsNuZ" role="1tU5fm">
          <ref role="16sUi3" node="17nGqbJrnXM" resolve="T" />
        </node>
        <node concept="2AHcQZ" id="1KCfUoKSK6k" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1KCfUoKSK6m" role="1B3o_S" />
      <node concept="3uibUv" id="1KCfUoKSK6n" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="2AHcQZ" id="1KCfUoKSK6o" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1KCfUoKSK6p" role="3clF47">
        <node concept="3cpWs8" id="17nGqbJal0r" role="3cqZAp">
          <node concept="3cpWsn" id="17nGqbJal0s" role="3cpWs9">
            <property role="TrG5h" value="modelPosition" />
            <node concept="3uibUv" id="17nGqbJal0p" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="1rXfSq" id="17nGqbJal0t" role="33vP2m">
              <ref role="37wK5l" node="1KCfUoKT2VY" resolve="getModelPosition" />
              <node concept="37vLTw" id="17nGqbJal0u" role="37wK5m">
                <ref role="3cqZAo" node="1KCfUoKSK6i" resolve="component" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1KCfUoKTbMi" role="3cqZAp">
          <node concept="1Wc70l" id="1KCfUoKTcVF" role="3clFbw">
            <node concept="2OqwBi" id="17nGqbJa2Z9" role="3uHU7w">
              <node concept="2OqwBi" id="1KCfUoKTdkg" role="2Oq$k0">
                <node concept="37vLTw" id="17nGqbJ9YFq" role="2Oq$k0">
                  <ref role="3cqZAo" node="3vyG44AQ2ZG" resolve="myHandle" />
                </node>
                <node concept="2OwXpG" id="17nGqbJ9Z0N" role="2OqNvi">
                  <ref role="2Oxat5" node="3vyG44APXeH" resolve="myComponentsToMove" />
                </node>
              </node>
              <node concept="liA8E" id="17nGqbJai5V" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                <node concept="37vLTw" id="17nGqbJaiEq" role="37wK5m">
                  <ref role="3cqZAo" node="1KCfUoKSK6i" resolve="component" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1KCfUoKTcFE" role="3uHU7B">
              <node concept="37vLTw" id="17nGqbJ9YqP" role="3uHU7B">
                <ref role="3cqZAo" node="3vyG44AQ2ZG" resolve="myHandle" />
              </node>
              <node concept="10Nm6u" id="1KCfUoKTcPO" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="1KCfUoKTbMk" role="3clFbx">
            <node concept="3clFbF" id="17nGqbJaVot" role="3cqZAp">
              <node concept="2OqwBi" id="17nGqbJawJP" role="3clFbG">
                <node concept="37vLTw" id="17nGqbJavbl" role="2Oq$k0">
                  <ref role="3cqZAo" node="17nGqbJal0s" resolve="modelPosition" />
                </node>
                <node concept="liA8E" id="17nGqbJayd7" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Point.translate(int,int)" resolve="translate" />
                  <node concept="2OqwBi" id="17nGqbJaBjU" role="37wK5m">
                    <node concept="37vLTw" id="17nGqbJaA5I" role="2Oq$k0">
                      <ref role="3cqZAo" node="3vyG44AQ2ZG" resolve="myHandle" />
                    </node>
                    <node concept="2OwXpG" id="17nGqbJaCHT" role="2OqNvi">
                      <ref role="2Oxat5" node="3vyG44APZtE" resolve="myDeltaX" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="17nGqbJaJu3" role="37wK5m">
                    <node concept="37vLTw" id="17nGqbJaI51" role="2Oq$k0">
                      <ref role="3cqZAo" node="3vyG44AQ2ZG" resolve="myHandle" />
                    </node>
                    <node concept="2OwXpG" id="17nGqbJaSwf" role="2OqNvi">
                      <ref role="2Oxat5" node="3vyG44APZTV" resolve="myDeltaY" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1KCfUoKTq0w" role="3cqZAp">
          <node concept="37vLTw" id="17nGqbJal0v" role="3cqZAk">
            <ref role="3cqZAo" node="17nGqbJal0s" resolve="modelPosition" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1KCfUoKSK6q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1KCfUoKSKo3" role="jymVt" />
    <node concept="3clFb_" id="1KCfUoKSK6t" role="jymVt">
      <property role="TrG5h" value="getTracePosition" />
      <node concept="3Tm1VV" id="1KCfUoKSK6v" role="1B3o_S" />
      <node concept="3uibUv" id="1KCfUoKSK6w" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="37vLTG" id="1KCfUoKSK6x" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="17nGqbJsPg1" role="1tU5fm">
          <ref role="16sUi3" node="17nGqbJrnXM" resolve="T" />
        </node>
        <node concept="2AHcQZ" id="1KCfUoKSK6z" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1KCfUoKSK6$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="1KCfUoKSK6_" role="3clF47">
        <node concept="3clFbJ" id="1KCfUoKTrA6" role="3cqZAp">
          <property role="TyiWK" value="true" />
          <node concept="3clFbS" id="1KCfUoKTrAg" role="3clFbx">
            <node concept="3cpWs6" id="1KCfUoKTrAh" role="3cqZAp">
              <node concept="1rXfSq" id="1KCfUoKTsu$" role="3cqZAk">
                <ref role="37wK5l" node="1KCfUoKT2VY" resolve="getModelPosition" />
                <node concept="37vLTw" id="1KCfUoKTt3E" role="37wK5m">
                  <ref role="3cqZAo" node="1KCfUoKSK6x" resolve="component" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="17nGqbJaWHZ" role="3clFbw">
            <node concept="2OqwBi" id="17nGqbJaWI0" role="3uHU7w">
              <node concept="2OqwBi" id="17nGqbJaWI1" role="2Oq$k0">
                <node concept="37vLTw" id="17nGqbJaWI2" role="2Oq$k0">
                  <ref role="3cqZAo" node="3vyG44AQ2ZG" resolve="myHandle" />
                </node>
                <node concept="2OwXpG" id="17nGqbJaWI3" role="2OqNvi">
                  <ref role="2Oxat5" node="3vyG44APXeH" resolve="myComponentsToMove" />
                </node>
              </node>
              <node concept="liA8E" id="17nGqbJaWI4" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                <node concept="37vLTw" id="17nGqbJaWI5" role="37wK5m">
                  <ref role="3cqZAo" node="1KCfUoKSK6x" resolve="component" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="17nGqbJaWI6" role="3uHU7B">
              <node concept="37vLTw" id="17nGqbJaWI7" role="3uHU7B">
                <ref role="3cqZAo" node="3vyG44AQ2ZG" resolve="myHandle" />
              </node>
              <node concept="10Nm6u" id="17nGqbJaWI8" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1KCfUoKTu84" role="3cqZAp">
          <node concept="10Nm6u" id="1KCfUoKSK6B" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1KCfUoKSK6A" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1KCfUoKT1PP" role="jymVt" />
    <node concept="3clFb_" id="1KCfUoKT2VY" role="jymVt">
      <property role="TrG5h" value="getModelPosition" />
      <node concept="37vLTG" id="1KCfUoKT3qg" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="17nGqbJsR6l" role="1tU5fm">
          <ref role="16sUi3" node="17nGqbJrnXM" resolve="T" />
        </node>
        <node concept="2AHcQZ" id="1KCfUoKT3qi" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1KCfUoKT2W1" role="3clF47">
        <node concept="3cpWs8" id="2JpbWDsRXog" role="3cqZAp">
          <node concept="3cpWsn" id="2JpbWDsRXoh" role="3cpWs9">
            <property role="TrG5h" value="setting" />
            <node concept="3uibUv" id="2JpbWDsRXoc" role="1tU5fm">
              <ref role="3uigEE" node="2JpbWDsJCQ0" resolve="LayoutSetting" />
            </node>
            <node concept="2OqwBi" id="2JpbWDsRXoi" role="33vP2m">
              <node concept="37vLTw" id="2JpbWDsRXoj" role="2Oq$k0">
                <ref role="3cqZAo" node="1KCfUoKSNU4" resolve="myComponentSettings" />
              </node>
              <node concept="liA8E" id="2JpbWDsRXok" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="2JpbWDsRXol" role="37wK5m">
                  <ref role="3cqZAo" node="1KCfUoKT3qg" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2JpbWDsRXOf" role="3cqZAp">
          <node concept="3clFbS" id="2JpbWDsRXOh" role="3clFbx">
            <node concept="3cpWs6" id="2JpbWDsRZdn" role="3cqZAp">
              <node concept="37vLTw" id="2JpbWDsS6A$" role="3cqZAk">
                <ref role="3cqZAo" node="2JpbWDsS6Ax" resolve="ZERO_ZERO" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2JpbWDsRZd_" role="3clFbw">
            <node concept="37vLTw" id="2JpbWDsRXU3" role="3uHU7B">
              <ref role="3cqZAo" node="2JpbWDsRXoh" resolve="setting" />
            </node>
            <node concept="10Nm6u" id="2JpbWDsRZa1" role="3uHU7w" />
          </node>
        </node>
        <node concept="3clFbF" id="2JpbWDsMxBO" role="3cqZAp">
          <node concept="2OqwBi" id="2JpbWDsMzeC" role="3clFbG">
            <node concept="2OqwBi" id="2JpbWDsMy_l" role="2Oq$k0">
              <node concept="37vLTw" id="2JpbWDsRXom" role="2Oq$k0">
                <ref role="3cqZAo" node="2JpbWDsRXoh" resolve="setting" />
              </node>
              <node concept="liA8E" id="2JpbWDsMyRA" role="2OqNvi">
                <ref role="37wK5l" node="2JpbWDsJE9a" resolve="getBounds" />
              </node>
            </node>
            <node concept="liA8E" id="2JpbWDsMzJJ" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Rectangle.getLocation()" resolve="getLocation" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1KCfUoKT2mV" role="1B3o_S" />
      <node concept="3uibUv" id="1KCfUoKT2PB" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
    </node>
    <node concept="2tJIrI" id="3vyG44APNVA" role="jymVt" />
    <node concept="312cEu" id="3vyG44APPy3" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="DefaultLayoutMovementHandle" />
      <node concept="312cEg" id="3vyG44APXeH" role="jymVt">
        <property role="TrG5h" value="myComponentsToMove" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="3vyG44APTPb" role="1B3o_S" />
        <node concept="3uibUv" id="3vyG44APU3A" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="16syzq" id="17nGqbJtbkN" role="11_B2D">
            <ref role="16sUi3" node="17nGqbJrnXM" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="312cEg" id="3vyG44APZtE" role="jymVt">
        <property role="TrG5h" value="myDeltaX" />
        <node concept="3Tm6S6" id="3vyG44APZhC" role="1B3o_S" />
        <node concept="10Oyi0" id="3vyG44APZlr" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="3vyG44APZTV" role="jymVt">
        <property role="TrG5h" value="myDeltaY" />
        <node concept="3Tm6S6" id="3vyG44APZJR" role="1B3o_S" />
        <node concept="10Oyi0" id="3vyG44APZLM" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="3vyG44AQrjU" role="jymVt" />
      <node concept="3clFbW" id="3vyG44AQrLK" role="jymVt">
        <node concept="3cqZAl" id="3vyG44AQrLL" role="3clF45" />
        <node concept="3Tm6S6" id="3vyG44AQrLM" role="1B3o_S" />
        <node concept="3clFbS" id="3vyG44AQrLO" role="3clF47">
          <node concept="3clFbF" id="3vyG44AQrLT" role="3cqZAp">
            <node concept="37vLTI" id="3vyG44AQrLV" role="3clFbG">
              <node concept="37vLTw" id="3vyG44AQrM2" role="37vLTx">
                <ref role="3cqZAo" node="3vyG44AQrLS" resolve="componentsToMove" />
              </node>
              <node concept="37vLTw" id="17nGqbJ8e$A" role="37vLTJ">
                <ref role="3cqZAo" node="3vyG44APXeH" resolve="myComponentsToMove" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="3vyG44AQrLS" role="3clF46">
          <property role="TrG5h" value="componentsToMove" />
          <node concept="3uibUv" id="3vyG44AQrLQ" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
            <node concept="16syzq" id="17nGqbJtcNP" role="11_B2D">
              <ref role="16sUi3" node="17nGqbJrnXM" resolve="T" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="3vyG44AQrjW" role="jymVt" />
      <node concept="3clFb_" id="3vyG44AQ0t$" role="jymVt">
        <property role="TrG5h" value="cancel" />
        <node concept="3Tm1VV" id="3vyG44AQ0tA" role="1B3o_S" />
        <node concept="3cqZAl" id="3vyG44AQ0tB" role="3clF45" />
        <node concept="3clFbS" id="3vyG44AQ0tC" role="3clF47">
          <node concept="3clFbF" id="3vyG44AQf7W" role="3cqZAp">
            <node concept="37vLTI" id="3vyG44AQgrk" role="3clFbG">
              <node concept="10Nm6u" id="3vyG44AQgyJ" role="37vLTx" />
              <node concept="37vLTw" id="3vyG44AQf7V" role="37vLTJ">
                <ref role="3cqZAo" node="3vyG44AQ2ZG" resolve="myHandle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3vyG44AQ0tD" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3vyG44AQeF7" role="jymVt" />
      <node concept="3clFb_" id="3vyG44AQ0tE" role="jymVt">
        <property role="TrG5h" value="complete" />
        <node concept="3Tm1VV" id="3vyG44AQ0tG" role="1B3o_S" />
        <node concept="3cqZAl" id="3vyG44AQ0tH" role="3clF45" />
        <node concept="3clFbS" id="3vyG44AQ0tI" role="3clF47">
          <node concept="3clFbF" id="3vyG44AQgSk" role="3cqZAp">
            <node concept="37vLTI" id="3vyG44AQi19" role="3clFbG">
              <node concept="10Nm6u" id="3vyG44AQi8$" role="37vLTx" />
              <node concept="37vLTw" id="3vyG44AQgSj" role="37vLTJ">
                <ref role="3cqZAo" node="3vyG44AQ2ZG" resolve="myHandle" />
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="3vyG44AQiiw" role="3cqZAp" />
          <node concept="3clFbF" id="1CY1mmCtO2b" role="3cqZAp">
            <node concept="2OqwBi" id="1CY1mmCtWtQ" role="3clFbG">
              <node concept="2OqwBi" id="1CY1mmCtQLf" role="2Oq$k0">
                <node concept="37vLTw" id="17nGqbJ8$RS" role="2Oq$k0">
                  <ref role="3cqZAo" node="2JpbWDsR5i1" resolve="myRepository" />
                </node>
                <node concept="liA8E" id="1CY1mmCtW09" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="1CY1mmCtXAZ" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.executeCommandInEDT(java.lang.Runnable)" resolve="executeCommandInEDT" />
                <node concept="1bVj0M" id="1CY1mmCumlI" role="37wK5m">
                  <node concept="3clFbS" id="1CY1mmCumlJ" role="1bW5cS">
                    <node concept="3clFbF" id="17nGqbJ8CRR" role="3cqZAp">
                      <node concept="1rXfSq" id="17nGqbJ8CRP" role="3clFbG">
                        <ref role="37wK5l" node="2XwVnrt0VrH" resolve="fireMoved" />
                        <node concept="37vLTw" id="17nGqbJ8DT3" role="37wK5m">
                          <ref role="3cqZAo" node="3vyG44APXeH" resolve="myComponentsToMove" />
                        </node>
                        <node concept="37vLTw" id="17nGqbJ8Em6" role="37wK5m">
                          <ref role="3cqZAo" node="3vyG44APZtE" resolve="myDeltaX" />
                        </node>
                        <node concept="37vLTw" id="17nGqbJ8FjB" role="37wK5m">
                          <ref role="3cqZAo" node="3vyG44APZTV" resolve="myDeltaY" />
                        </node>
                        <node concept="3clFbT" id="38k27ISjiHn" role="37wK5m">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbH" id="17nGqbJ8BzE" role="3cqZAp" />
                    <node concept="2Gpval" id="3vyG44AQivW" role="3cqZAp">
                      <node concept="2GrKxI" id="3vyG44AQivY" role="2Gsz3X">
                        <property role="TrG5h" value="component" />
                      </node>
                      <node concept="37vLTw" id="3vyG44AQiHS" role="2GsD0m">
                        <ref role="3cqZAo" node="3vyG44APXeH" resolve="myComponentsToMove" />
                      </node>
                      <node concept="3clFbS" id="3vyG44AQiw2" role="2LFqv$">
                        <node concept="3cpWs8" id="17nGqbJtoYG" role="3cqZAp">
                          <node concept="3cpWsn" id="17nGqbJtoYH" role="3cpWs9">
                            <property role="TrG5h" value="setting" />
                            <node concept="3uibUv" id="17nGqbJtoYr" role="1tU5fm">
                              <ref role="3uigEE" node="2JpbWDsJCQ0" resolve="LayoutSetting" />
                            </node>
                            <node concept="2OqwBi" id="17nGqbJtoYI" role="33vP2m">
                              <node concept="37vLTw" id="17nGqbJtoYJ" role="2Oq$k0">
                                <ref role="3cqZAo" node="1KCfUoKSNU4" resolve="myComponentSettings" />
                              </node>
                              <node concept="liA8E" id="17nGqbJtoYK" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                                <node concept="2GrUjf" id="17nGqbJtoYL" role="37wK5m">
                                  <ref role="2Gs0qQ" node="3vyG44AQivY" resolve="component" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="17nGqbJteNd" role="3cqZAp" />
                        <node concept="3cpWs8" id="17nGqbJvHk5" role="3cqZAp">
                          <node concept="3cpWsn" id="17nGqbJvHk6" role="3cpWs9">
                            <property role="TrG5h" value="bounds" />
                            <node concept="3uibUv" id="17nGqbJvQnv" role="1tU5fm">
                              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
                            </node>
                            <node concept="2OqwBi" id="17nGqbJvHk7" role="33vP2m">
                              <node concept="37vLTw" id="17nGqbJvHk8" role="2Oq$k0">
                                <ref role="3cqZAo" node="17nGqbJtoYH" resolve="setting" />
                              </node>
                              <node concept="liA8E" id="17nGqbJvHk9" role="2OqNvi">
                                <ref role="37wK5l" node="2JpbWDsJE9a" resolve="getBounds" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="17nGqbJt$gs" role="3cqZAp">
                          <node concept="2OqwBi" id="17nGqbJt_9j" role="3clFbG">
                            <node concept="37vLTw" id="17nGqbJt$gq" role="2Oq$k0">
                              <ref role="3cqZAo" node="17nGqbJtoYH" resolve="setting" />
                            </node>
                            <node concept="liA8E" id="17nGqbJu_w3" role="2OqNvi">
                              <ref role="37wK5l" node="17nGqbJsSI6" resolve="moveTo" />
                              <node concept="3cpWs3" id="17nGqbJ9dif" role="37wK5m">
                                <node concept="2OqwBi" id="17nGqbJ9eV0" role="3uHU7B">
                                  <node concept="37vLTw" id="17nGqbJvJjE" role="2Oq$k0">
                                    <ref role="3cqZAo" node="17nGqbJvHk6" resolve="bounds" />
                                  </node>
                                  <node concept="2OwXpG" id="17nGqbJx60L" role="2OqNvi">
                                    <ref role="2Oxat5" to="z60i:~Rectangle.x" resolve="x" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="17nGqbJtuG2" role="3uHU7w">
                                  <ref role="3cqZAo" node="3vyG44APZtE" resolve="myDeltaX" />
                                </node>
                              </node>
                              <node concept="3cpWs3" id="17nGqbJ9Kvd" role="37wK5m">
                                <node concept="2OqwBi" id="17nGqbJ9Kve" role="3uHU7B">
                                  <node concept="37vLTw" id="17nGqbJvMaF" role="2Oq$k0">
                                    <ref role="3cqZAo" node="17nGqbJvHk6" resolve="bounds" />
                                  </node>
                                  <node concept="2OwXpG" id="17nGqbJy6e$" role="2OqNvi">
                                    <ref role="2Oxat5" to="z60i:~Rectangle.y" resolve="y" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="17nGqbJtwbq" role="3uHU7w">
                                  <ref role="3cqZAo" node="3vyG44APZTV" resolve="myDeltaY" />
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
          </node>
        </node>
        <node concept="2AHcQZ" id="3vyG44AQ0tJ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="3vyG44AQeq3" role="jymVt" />
      <node concept="3clFb_" id="3vyG44AQ0tK" role="jymVt">
        <property role="TrG5h" value="moveTo" />
        <node concept="3Tm1VV" id="3vyG44AQ0tM" role="1B3o_S" />
        <node concept="3cqZAl" id="3vyG44AQ0tN" role="3clF45" />
        <node concept="37vLTG" id="3vyG44AQ0tO" role="3clF46">
          <property role="TrG5h" value="dx" />
          <node concept="10Oyi0" id="3vyG44AQ0tP" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="3vyG44AQ0tQ" role="3clF46">
          <property role="TrG5h" value="dy" />
          <node concept="10Oyi0" id="3vyG44AQ0tR" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="3vyG44AQ0tS" role="3clF47">
          <node concept="3clFbF" id="3vyG44AQ595" role="3cqZAp">
            <node concept="37vLTI" id="3vyG44AQ8O3" role="3clFbG">
              <node concept="37vLTw" id="3vyG44AQ92r" role="37vLTx">
                <ref role="3cqZAo" node="3vyG44AQ0tO" resolve="dx" />
              </node>
              <node concept="37vLTw" id="3vyG44AQ594" role="37vLTJ">
                <ref role="3cqZAo" node="3vyG44APZtE" resolve="myDeltaX" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="3vyG44AQ9sd" role="3cqZAp">
            <node concept="37vLTI" id="3vyG44AQdUz" role="3clFbG">
              <node concept="37vLTw" id="3vyG44AQehv" role="37vLTx">
                <ref role="3cqZAo" node="3vyG44AQ0tQ" resolve="dy" />
              </node>
              <node concept="37vLTw" id="3vyG44AQ9sb" role="37vLTJ">
                <ref role="3cqZAo" node="3vyG44APZTV" resolve="myDeltaY" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="38k27ISjn4$" role="3cqZAp">
            <node concept="1rXfSq" id="38k27ISjn4_" role="3clFbG">
              <ref role="37wK5l" node="2XwVnrt0VrH" resolve="fireMoved" />
              <node concept="37vLTw" id="38k27ISjn4A" role="37wK5m">
                <ref role="3cqZAo" node="3vyG44APXeH" resolve="myComponentsToMove" />
              </node>
              <node concept="37vLTw" id="38k27ISjn4B" role="37wK5m">
                <ref role="3cqZAo" node="3vyG44APZtE" resolve="myDeltaX" />
              </node>
              <node concept="37vLTw" id="38k27ISjn4C" role="37wK5m">
                <ref role="3cqZAo" node="3vyG44APZTV" resolve="myDeltaY" />
              </node>
              <node concept="3clFbT" id="38k27ISjn4D" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="3vyG44AQ0tT" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3vyG44APOSb" role="1B3o_S" />
      <node concept="3uibUv" id="3vyG44APTmK" role="EKbjA">
        <ref role="3uigEE" node="3vyG44APBBK" resolve="LayoutMovememntHandle" />
      </node>
    </node>
    <node concept="2tJIrI" id="1KCfUoKSPPg" role="jymVt" />
    <node concept="3Tm1VV" id="1KCfUoKSK2C" role="1B3o_S" />
    <node concept="3uibUv" id="2XwVnrt0ZL2" role="1zkMxy">
      <ref role="3uigEE" node="2XwVnrt0B$S" resolve="ROLayoutModelBase" />
      <node concept="16syzq" id="17nGqbJrsYC" role="11_B2D">
        <ref role="16sUi3" node="17nGqbJrnXM" resolve="T" />
      </node>
    </node>
    <node concept="16euLQ" id="17nGqbJrnXM" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
    <node concept="3uibUv" id="2syzu7qKoC9" role="EKbjA">
      <ref role="3uigEE" node="1KCfUoKQeCd" resolve="LayoutModel" />
      <node concept="16syzq" id="2syzu7qKrVf" role="11_B2D">
        <ref role="16sUi3" node="17nGqbJrnXM" resolve="T" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2XwVnrt0B$S">
    <property role="TrG5h" value="ROLayoutModelBase" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="2XwVnrt0BAE" role="jymVt" />
    <node concept="312cEg" id="2XwVnrt0BHO" role="jymVt">
      <property role="TrG5h" value="myListeners" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2XwVnrt0BCV" role="1B3o_S" />
      <node concept="3uibUv" id="2XwVnrt0BIX" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="2XwVnrt0BP8" role="11_B2D">
          <ref role="3uigEE" node="1KCfUoKRV4f" resolve="ROLayoutModel.Listener" />
          <node concept="16syzq" id="17nGqbJrjqq" role="11_B2D">
            <ref role="16sUi3" node="17nGqbJri6K" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="2XwVnrt0Q7V" role="33vP2m">
        <node concept="1pGfFk" id="2XwVnrt0Uts" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3uibUv" id="2XwVnrt0V8k" role="1pMfVU">
            <ref role="3uigEE" node="1KCfUoKRV4f" resolve="ROLayoutModel.Listener" />
            <node concept="16syzq" id="17nGqbJrkmf" role="11_B2D">
              <ref role="16sUi3" node="17nGqbJri6K" resolve="T" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2XwVnrt0BPq" role="jymVt" />
    <node concept="3clFb_" id="2XwVnrt0VrH" role="jymVt">
      <property role="TrG5h" value="fireMoved" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="2XwVnrt0Wan" role="3clF46">
        <property role="TrG5h" value="components" />
        <node concept="2AHcQZ" id="2XwVnrt0Wap" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="3vyG44AQlxb" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="16syzq" id="17nGqbJrkOI" role="11_B2D">
            <ref role="16sUi3" node="17nGqbJri6K" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2XwVnrt0Waq" role="3clF46">
        <property role="TrG5h" value="dx" />
        <node concept="10Oyi0" id="2XwVnrt0War" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2XwVnrt0Was" role="3clF46">
        <property role="TrG5h" value="dy" />
        <node concept="10Oyi0" id="2XwVnrt0Wat" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="38k27ISjjWv" role="3clF46">
        <property role="TrG5h" value="completed" />
        <node concept="10P_77" id="38k27ISjkv2" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2XwVnrt0VrK" role="3clF47">
        <node concept="2Gpval" id="2XwVnrt0VI4" role="3cqZAp">
          <node concept="2GrKxI" id="2XwVnrt0VI5" role="2Gsz3X">
            <property role="TrG5h" value="listener" />
          </node>
          <node concept="37vLTw" id="2XwVnrt0VP4" role="2GsD0m">
            <ref role="3cqZAo" node="2XwVnrt0BHO" resolve="myListeners" />
          </node>
          <node concept="3clFbS" id="2XwVnrt0VI7" role="2LFqv$">
            <node concept="3clFbF" id="2XwVnrt0Ww4" role="3cqZAp">
              <node concept="2OqwBi" id="2XwVnrt0WEm" role="3clFbG">
                <node concept="2GrUjf" id="2XwVnrt0Ww3" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="2XwVnrt0VI5" resolve="listener" />
                </node>
                <node concept="liA8E" id="2XwVnrt0WZJ" role="2OqNvi">
                  <ref role="37wK5l" node="1KCfUoKRVcP" resolve="onComponentsMoved" />
                  <node concept="37vLTw" id="2XwVnrt0X9L" role="37wK5m">
                    <ref role="3cqZAo" node="2XwVnrt0Wan" resolve="components" />
                  </node>
                  <node concept="37vLTw" id="2XwVnrt0XJS" role="37wK5m">
                    <ref role="3cqZAo" node="2XwVnrt0Waq" resolve="dx" />
                  </node>
                  <node concept="37vLTw" id="2XwVnrt0Ydt" role="37wK5m">
                    <ref role="3cqZAo" node="2XwVnrt0Was" resolve="dy" />
                  </node>
                  <node concept="37vLTw" id="38k27ISjl54" role="37wK5m">
                    <ref role="3cqZAo" node="38k27ISjjWv" resolve="completed" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="2XwVnrt0PHO" role="1B3o_S" />
      <node concept="3cqZAl" id="2XwVnrt0Vpx" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2syzu7qN4_l" role="jymVt">
      <property role="TrG5h" value="fireAdded" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="2syzu7qN4_m" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="2AHcQZ" id="2syzu7qN4_n" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="16syzq" id="2syzu7qN4_p" role="1tU5fm">
          <ref role="16sUi3" node="17nGqbJri6K" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="2syzu7qN4_q" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="2syzu7qN4_r" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2syzu7qN4_s" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="2syzu7qN4_t" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2syzu7qN4_w" role="3clF47">
        <node concept="2Gpval" id="2syzu7qN4_x" role="3cqZAp">
          <node concept="2GrKxI" id="2syzu7qN4_y" role="2Gsz3X">
            <property role="TrG5h" value="listener" />
          </node>
          <node concept="37vLTw" id="2syzu7qN4_z" role="2GsD0m">
            <ref role="3cqZAo" node="2XwVnrt0BHO" resolve="myListeners" />
          </node>
          <node concept="3clFbS" id="2syzu7qN4_$" role="2LFqv$">
            <node concept="3clFbF" id="2syzu7qN4__" role="3cqZAp">
              <node concept="2OqwBi" id="2syzu7qN4_A" role="3clFbG">
                <node concept="2GrUjf" id="2syzu7qN4_B" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="2syzu7qN4_y" resolve="listener" />
                </node>
                <node concept="liA8E" id="2syzu7qN4_C" role="2OqNvi">
                  <ref role="37wK5l" node="2syzu7qKAk0" resolve="onComponentAdded" />
                  <node concept="37vLTw" id="2syzu7qN4_D" role="37wK5m">
                    <ref role="3cqZAo" node="2syzu7qN4_m" resolve="component" />
                  </node>
                  <node concept="37vLTw" id="2syzu7qN4_E" role="37wK5m">
                    <ref role="3cqZAo" node="2syzu7qN4_q" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="2syzu7qN4_F" role="37wK5m">
                    <ref role="3cqZAo" node="2syzu7qN4_s" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="2syzu7qN4_H" role="1B3o_S" />
      <node concept="3cqZAl" id="2syzu7qN4_I" role="3clF45" />
    </node>
    <node concept="3clFb_" id="2syzu7qN4Bc" role="jymVt">
      <property role="TrG5h" value="fireRemoved" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="2syzu7qNbfv" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="2AHcQZ" id="2syzu7qNbfw" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="16syzq" id="2syzu7qNbfx" role="1tU5fm">
          <ref role="16sUi3" node="17nGqbJri6K" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="2syzu7qN4Bn" role="3clF47">
        <node concept="2Gpval" id="2syzu7qN4Bo" role="3cqZAp">
          <node concept="2GrKxI" id="2syzu7qN4Bp" role="2Gsz3X">
            <property role="TrG5h" value="listener" />
          </node>
          <node concept="37vLTw" id="2syzu7qN4Bq" role="2GsD0m">
            <ref role="3cqZAo" node="2XwVnrt0BHO" resolve="myListeners" />
          </node>
          <node concept="3clFbS" id="2syzu7qN4Br" role="2LFqv$">
            <node concept="3clFbF" id="2syzu7qN4Bs" role="3cqZAp">
              <node concept="2OqwBi" id="2syzu7qN4Bt" role="3clFbG">
                <node concept="2GrUjf" id="2syzu7qN4Bu" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="2syzu7qN4Bp" resolve="listener" />
                </node>
                <node concept="liA8E" id="2syzu7qN4Bv" role="2OqNvi">
                  <ref role="37wK5l" node="2syzu7qKB2E" resolve="onComponentRemoved" />
                  <node concept="37vLTw" id="2syzu7qNcVZ" role="37wK5m">
                    <ref role="3cqZAo" node="2syzu7qNbfv" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="2syzu7qN4B$" role="1B3o_S" />
      <node concept="3cqZAl" id="2syzu7qN4B_" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2XwVnrt0BPK" role="jymVt" />
    <node concept="3clFb_" id="2XwVnrt0BQ5" role="jymVt">
      <property role="TrG5h" value="addListener" />
      <property role="DiZV1" value="true" />
      <node concept="3Tm1VV" id="2XwVnrt0BQ7" role="1B3o_S" />
      <node concept="3cqZAl" id="2XwVnrt0BQ8" role="3clF45" />
      <node concept="37vLTG" id="2XwVnrt0BQ9" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="2XwVnrt0BQa" role="1tU5fm">
          <ref role="3uigEE" node="1KCfUoKRV4f" resolve="ROLayoutModel.Listener" />
          <node concept="16syzq" id="17nGqbJrlfH" role="11_B2D">
            <ref role="16sUi3" node="17nGqbJri6K" resolve="T" />
          </node>
        </node>
        <node concept="2AHcQZ" id="2XwVnrt0BQb" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2XwVnrt0BQc" role="3clF47">
        <node concept="3clFbF" id="2XwVnrt0BZW" role="3cqZAp">
          <node concept="2OqwBi" id="2XwVnrt0CEt" role="3clFbG">
            <node concept="37vLTw" id="2XwVnrt0BZV" role="2Oq$k0">
              <ref role="3cqZAo" node="2XwVnrt0BHO" resolve="myListeners" />
            </node>
            <node concept="liA8E" id="2XwVnrt0O$j" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="2XwVnrt0OJ2" role="37wK5m">
                <ref role="3cqZAo" node="2XwVnrt0BQ9" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2XwVnrt0BQd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2XwVnrt0PwH" role="jymVt" />
    <node concept="3clFb_" id="2XwVnrt0BQe" role="jymVt">
      <property role="TrG5h" value="removeListener" />
      <property role="DiZV1" value="true" />
      <node concept="3Tm1VV" id="2XwVnrt0BQg" role="1B3o_S" />
      <node concept="3cqZAl" id="2XwVnrt0BQh" role="3clF45" />
      <node concept="37vLTG" id="2XwVnrt0BQi" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="2XwVnrt0BQj" role="1tU5fm">
          <ref role="3uigEE" node="1KCfUoKRV4f" resolve="ROLayoutModel.Listener" />
          <node concept="16syzq" id="17nGqbJrlP9" role="11_B2D">
            <ref role="16sUi3" node="17nGqbJri6K" resolve="T" />
          </node>
        </node>
        <node concept="2AHcQZ" id="2XwVnrt0BQk" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2XwVnrt0BQl" role="3clF47">
        <node concept="3clFbF" id="2XwVnrt0Pb4" role="3cqZAp">
          <node concept="2OqwBi" id="2XwVnrt0Pb5" role="3clFbG">
            <node concept="37vLTw" id="2XwVnrt0Pb6" role="2Oq$k0">
              <ref role="3cqZAo" node="2XwVnrt0BHO" resolve="myListeners" />
            </node>
            <node concept="liA8E" id="2XwVnrt0Pb7" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object)" resolve="remove" />
              <node concept="37vLTw" id="2XwVnrt0Pb8" role="37wK5m">
                <ref role="3cqZAo" node="2XwVnrt0BQi" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2XwVnrt0BQm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2XwVnrt0B$T" role="1B3o_S" />
    <node concept="3uibUv" id="2XwVnrt0BAw" role="EKbjA">
      <ref role="3uigEE" node="2syzu7qKiXL" resolve="ROLayoutModel" />
      <node concept="16syzq" id="17nGqbJriy3" role="11_B2D">
        <ref role="16sUi3" node="17nGqbJri6K" resolve="T" />
      </node>
    </node>
    <node concept="16euLQ" id="17nGqbJri6K" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="312cEu" id="2XwVnrt13j$">
    <property role="TrG5h" value="SelectionModelBase" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="2XwVnrt13wg" role="jymVt" />
    <node concept="312cEg" id="2XwVnrt13wh" role="jymVt">
      <property role="TrG5h" value="myListeners" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2XwVnrt13wi" role="1B3o_S" />
      <node concept="3uibUv" id="2XwVnrt13wj" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="2XwVnrt13X7" role="11_B2D">
          <ref role="3uigEE" node="1KCfUoKS1_I" resolve="SelectionModel.Listener" />
          <node concept="16syzq" id="17nGqbJCs0d" role="11_B2D">
            <ref role="16sUi3" node="17nGqbJCqsP" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="2XwVnrt13wl" role="33vP2m">
        <node concept="1pGfFk" id="2XwVnrt13wm" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3uibUv" id="2XwVnrt14ho" role="1pMfVU">
            <ref role="3uigEE" node="1KCfUoKS1_I" resolve="SelectionModel.Listener" />
            <node concept="16syzq" id="17nGqbJCsSK" role="11_B2D">
              <ref role="16sUi3" node="17nGqbJCqsP" resolve="T" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2XwVnrt13wo" role="jymVt" />
    <node concept="3clFb_" id="2XwVnrt13wp" role="jymVt">
      <property role="TrG5h" value="fireSelected" />
      <property role="DiZV1" value="true" />
      <node concept="37vLTG" id="2XwVnrt13wq" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="17nGqbJCtlz" role="1tU5fm">
          <ref role="16sUi3" node="17nGqbJCqsP" resolve="T" />
        </node>
        <node concept="2AHcQZ" id="2XwVnrt13ws" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2XwVnrt15W0" role="3clF46">
        <property role="TrG5h" value="selected" />
        <node concept="10P_77" id="2XwVnrt16bA" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2XwVnrt13wx" role="3clF47">
        <node concept="2Gpval" id="2XwVnrt13wy" role="3cqZAp">
          <node concept="2GrKxI" id="2XwVnrt13wz" role="2Gsz3X">
            <property role="TrG5h" value="listener" />
          </node>
          <node concept="37vLTw" id="2XwVnrt13w$" role="2GsD0m">
            <ref role="3cqZAo" node="2XwVnrt13wh" resolve="myListeners" />
          </node>
          <node concept="3clFbS" id="2XwVnrt13w_" role="2LFqv$">
            <node concept="3clFbF" id="2XwVnrt13wA" role="3cqZAp">
              <node concept="2OqwBi" id="2XwVnrt13wB" role="3clFbG">
                <node concept="2GrUjf" id="2XwVnrt13wC" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="2XwVnrt13wz" resolve="listener" />
                </node>
                <node concept="liA8E" id="2XwVnrt13wD" role="2OqNvi">
                  <ref role="37wK5l" node="1KCfUoKS1_J" resolve="onComponentSelected" />
                  <node concept="37vLTw" id="2XwVnrt13wE" role="37wK5m">
                    <ref role="3cqZAo" node="2XwVnrt13wq" resolve="component" />
                  </node>
                  <node concept="37vLTw" id="2XwVnrt16QA" role="37wK5m">
                    <ref role="3cqZAo" node="2XwVnrt15W0" resolve="selected" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="2XwVnrt13wH" role="1B3o_S" />
      <node concept="3cqZAl" id="2XwVnrt13wI" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2XwVnrt13wJ" role="jymVt" />
    <node concept="3clFb_" id="2XwVnrt13wK" role="jymVt">
      <property role="TrG5h" value="addListener" />
      <property role="DiZV1" value="true" />
      <node concept="3Tm1VV" id="2XwVnrt13wL" role="1B3o_S" />
      <node concept="3cqZAl" id="2XwVnrt13wM" role="3clF45" />
      <node concept="37vLTG" id="2XwVnrt13wN" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="2XwVnrt18_P" role="1tU5fm">
          <ref role="3uigEE" node="1KCfUoKS1_I" resolve="SelectionModel.Listener" />
          <node concept="16syzq" id="17nGqbJCtEB" role="11_B2D">
            <ref role="16sUi3" node="17nGqbJCqsP" resolve="T" />
          </node>
        </node>
        <node concept="2AHcQZ" id="2XwVnrt13wP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2XwVnrt13wQ" role="3clF47">
        <node concept="3clFbF" id="2XwVnrt13wR" role="3cqZAp">
          <node concept="2OqwBi" id="2XwVnrt13wS" role="3clFbG">
            <node concept="37vLTw" id="2XwVnrt13wT" role="2Oq$k0">
              <ref role="3cqZAo" node="2XwVnrt13wh" resolve="myListeners" />
            </node>
            <node concept="liA8E" id="2XwVnrt13wU" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="2XwVnrt13wV" role="37wK5m">
                <ref role="3cqZAo" node="2XwVnrt13wN" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2XwVnrt13wW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2XwVnrt13wX" role="jymVt" />
    <node concept="3clFb_" id="2XwVnrt13wY" role="jymVt">
      <property role="TrG5h" value="removeListener" />
      <property role="DiZV1" value="true" />
      <node concept="3Tm1VV" id="2XwVnrt13wZ" role="1B3o_S" />
      <node concept="3cqZAl" id="2XwVnrt13x0" role="3clF45" />
      <node concept="37vLTG" id="2XwVnrt13x1" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="2XwVnrt18J$" role="1tU5fm">
          <ref role="3uigEE" node="1KCfUoKS1_I" resolve="SelectionModel.Listener" />
          <node concept="16syzq" id="17nGqbJCu6K" role="11_B2D">
            <ref role="16sUi3" node="17nGqbJCqsP" resolve="T" />
          </node>
        </node>
        <node concept="2AHcQZ" id="2XwVnrt13x3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2XwVnrt13x4" role="3clF47">
        <node concept="3clFbF" id="2XwVnrt13x5" role="3cqZAp">
          <node concept="2OqwBi" id="2XwVnrt13x6" role="3clFbG">
            <node concept="37vLTw" id="2XwVnrt13x7" role="2Oq$k0">
              <ref role="3cqZAo" node="2XwVnrt13wh" resolve="myListeners" />
            </node>
            <node concept="liA8E" id="2XwVnrt13x8" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object)" resolve="remove" />
              <node concept="37vLTw" id="2XwVnrt13x9" role="37wK5m">
                <ref role="3cqZAo" node="2XwVnrt13x1" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2XwVnrt13xa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2XwVnrt13w5" role="jymVt" />
    <node concept="3Tm1VV" id="2XwVnrt13j_" role="1B3o_S" />
    <node concept="3uibUv" id="2XwVnrt13kT" role="EKbjA">
      <ref role="3uigEE" node="1KCfUoKRX_E" resolve="SelectionModel" />
      <node concept="16syzq" id="17nGqbJCrhb" role="11_B2D">
        <ref role="16sUi3" node="17nGqbJCqsP" resolve="T" />
      </node>
    </node>
    <node concept="16euLQ" id="17nGqbJCqsP" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="312cEu" id="2XwVnrt199s">
    <property role="TrG5h" value="DefaultSelectionModel" />
    <node concept="2tJIrI" id="2XwVnrt19bL" role="jymVt" />
    <node concept="312cEg" id="2XwVnrt1ewZ" role="jymVt">
      <property role="TrG5h" value="mySelectedComponents" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2XwVnrt1e5F" role="1B3o_S" />
      <node concept="3uibUv" id="2XwVnrt1egj" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="16syzq" id="17nGqbJCy7B" role="11_B2D">
          <ref role="16sUi3" node="17nGqbJCw$r" resolve="T" />
        </node>
      </node>
      <node concept="2ShNRf" id="2XwVnrt1eCT" role="33vP2m">
        <node concept="1pGfFk" id="2XwVnrt1f8S" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="16syzq" id="17nGqbJCyEw" role="1pMfVU">
            <ref role="16sUi3" node="17nGqbJCw$r" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2XwVnrt19bN" role="jymVt" />
    <node concept="3clFb_" id="2XwVnrt1bMR" role="jymVt">
      <property role="TrG5h" value="setSelected" />
      <node concept="3Tm1VV" id="2XwVnrt1bMT" role="1B3o_S" />
      <node concept="3cqZAl" id="2XwVnrt1bMU" role="3clF45" />
      <node concept="37vLTG" id="2XwVnrt1bMV" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="17nGqbJCxIl" role="1tU5fm">
          <ref role="16sUi3" node="17nGqbJCw$r" resolve="T" />
        </node>
      </node>
      <node concept="37vLTG" id="2XwVnrt1bMX" role="3clF46">
        <property role="TrG5h" value="selected" />
        <node concept="10P_77" id="2XwVnrt1bMY" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2XwVnrt1bN0" role="3clF47">
        <node concept="3clFbJ" id="2XwVnrt1fIZ" role="3cqZAp">
          <node concept="37vLTw" id="2XwVnrt1fMg" role="3clFbw">
            <ref role="3cqZAo" node="2XwVnrt1bMX" resolve="selected" />
          </node>
          <node concept="3clFbS" id="2XwVnrt1fJ1" role="3clFbx">
            <node concept="3clFbF" id="2XwVnrt1fWn" role="3cqZAp">
              <node concept="2OqwBi" id="2XwVnrt1gCi" role="3clFbG">
                <node concept="37vLTw" id="2XwVnrt1fWm" role="2Oq$k0">
                  <ref role="3cqZAo" node="2XwVnrt1ewZ" resolve="mySelectedComponents" />
                </node>
                <node concept="liA8E" id="2XwVnrt1hhQ" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="2XwVnrt1hvu" role="37wK5m">
                    <ref role="3cqZAo" node="2XwVnrt1bMV" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2XwVnrt1hNS" role="9aQIa">
            <node concept="3clFbS" id="2XwVnrt1hNT" role="9aQI4">
              <node concept="3clFbF" id="2XwVnrt1i0w" role="3cqZAp">
                <node concept="2OqwBi" id="2XwVnrt1iDn" role="3clFbG">
                  <node concept="37vLTw" id="2XwVnrt1i0v" role="2Oq$k0">
                    <ref role="3cqZAo" node="2XwVnrt1ewZ" resolve="mySelectedComponents" />
                  </node>
                  <node concept="liA8E" id="2XwVnrt1tSN" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object)" resolve="remove" />
                    <node concept="37vLTw" id="2XwVnrt1ulB" role="37wK5m">
                      <ref role="3cqZAo" node="2XwVnrt1bMV" resolve="component" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2XwVnrt1bN1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJ$$FJ" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJ$_16" role="jymVt">
      <property role="TrG5h" value="clear" />
      <node concept="3Tm1VV" id="17nGqbJ$_18" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJ$_19" role="3clF45" />
      <node concept="3clFbS" id="17nGqbJ$_1b" role="3clF47">
        <node concept="3clFbF" id="17nGqbJ$_wX" role="3cqZAp">
          <node concept="2OqwBi" id="17nGqbJ$AbO" role="3clFbG">
            <node concept="37vLTw" id="17nGqbJ$_wW" role="2Oq$k0">
              <ref role="3cqZAo" node="2XwVnrt1ewZ" resolve="mySelectedComponents" />
            </node>
            <node concept="liA8E" id="17nGqbJ$Lin" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.clear()" resolve="clear" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJ$_1c" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2XwVnrt19c2" role="jymVt" />
    <node concept="3clFb_" id="2XwVnrt19cK" role="jymVt">
      <property role="TrG5h" value="getSelectedComponents" />
      <node concept="3Tm1VV" id="2XwVnrt19cM" role="1B3o_S" />
      <node concept="3uibUv" id="2XwVnrt19cN" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="16syzq" id="17nGqbJCzdm" role="11_B2D">
          <ref role="16sUi3" node="17nGqbJCw$r" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="2XwVnrt19cQ" role="3clF47">
        <node concept="3clFbF" id="2XwVnrt1uHA" role="3cqZAp">
          <node concept="2ShNRf" id="4O0ojQp_oAd" role="3clFbG">
            <node concept="1pGfFk" id="4O0ojQp_pKP" role="2ShVmc">
              <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;(java.util.Collection)" resolve="HashSet" />
              <node concept="37vLTw" id="4O0ojQp_pX3" role="37wK5m">
                <ref role="3cqZAo" node="2XwVnrt1ewZ" resolve="mySelectedComponents" />
              </node>
              <node concept="16syzq" id="4O0ojQp_riy" role="1pMfVU">
                <ref role="16sUi3" node="17nGqbJCw$r" resolve="T" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2XwVnrt19cR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2XwVnrt199t" role="1B3o_S" />
    <node concept="3uibUv" id="2XwVnrt19by" role="1zkMxy">
      <ref role="3uigEE" node="2XwVnrt13j$" resolve="SelectionModelBase" />
      <node concept="16syzq" id="17nGqbJCxim" role="11_B2D">
        <ref role="16sUi3" node="17nGqbJCw$r" resolve="T" />
      </node>
    </node>
    <node concept="16euLQ" id="17nGqbJCw$r" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="3HP615" id="3vyG44APBBK">
    <property role="TrG5h" value="LayoutMovememntHandle" />
    <node concept="2tJIrI" id="3vyG44APBN_" role="jymVt" />
    <node concept="3clFb_" id="3vyG44APBOg" role="jymVt">
      <property role="TrG5h" value="cancel" />
      <node concept="3clFbS" id="3vyG44APBOj" role="3clF47" />
      <node concept="3Tm1VV" id="3vyG44APBOk" role="1B3o_S" />
      <node concept="3cqZAl" id="3vyG44APBO9" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3vyG44APBZz" role="jymVt" />
    <node concept="3clFb_" id="3vyG44APC0s" role="jymVt">
      <property role="TrG5h" value="complete" />
      <node concept="3clFbS" id="3vyG44APC0v" role="3clF47" />
      <node concept="3Tm1VV" id="3vyG44APC0w" role="1B3o_S" />
      <node concept="3cqZAl" id="3vyG44APC0e" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3vyG44APCc9" role="jymVt" />
    <node concept="3clFb_" id="3vyG44APCdg" role="jymVt">
      <property role="TrG5h" value="moveTo" />
      <node concept="3clFbS" id="3vyG44APCdj" role="3clF47" />
      <node concept="3Tm1VV" id="3vyG44APCdk" role="1B3o_S" />
      <node concept="3cqZAl" id="3vyG44APCcV" role="3clF45" />
      <node concept="37vLTG" id="3vyG44APCpg" role="3clF46">
        <property role="TrG5h" value="dx" />
        <node concept="10Oyi0" id="3vyG44APCpf" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3vyG44APC_o" role="3clF46">
        <property role="TrG5h" value="dy" />
        <node concept="10Oyi0" id="3vyG44APCLo" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3vyG44APBBL" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="17nGqbJdbfv">
    <property role="TrG5h" value="SceneViewpoint" />
    <node concept="3Tm1VV" id="17nGqbJdbfw" role="1B3o_S" />
    <node concept="2tJIrI" id="17nGqbJdc72" role="jymVt" />
    <node concept="3clFb_" id="1KCfUoKQIdG" role="jymVt">
      <property role="TrG5h" value="getEditorShift" />
      <node concept="3clFbS" id="1KCfUoKQIdJ" role="3clF47" />
      <node concept="3Tm1VV" id="1KCfUoKQIdK" role="1B3o_S" />
      <node concept="3uibUv" id="1KCfUoKQUK3" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJdcJa" role="jymVt" />
    <node concept="3clFb_" id="1KCfUoKQK_H" role="jymVt">
      <property role="TrG5h" value="getEditorScale" />
      <node concept="3clFbS" id="1KCfUoKQK_K" role="3clF47" />
      <node concept="3Tm1VV" id="1KCfUoKQK_L" role="1B3o_S" />
      <node concept="10OMs4" id="1KCfUoKQKyN" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1KCfUoKSn3x" role="jymVt" />
    <node concept="3clFb_" id="4KEbQahQyvv" role="jymVt">
      <property role="TrG5h" value="toEditorDimension" />
      <node concept="3clFbS" id="4KEbQahQyvy" role="3clF47">
        <node concept="3clFbF" id="1KCfUoKQKQX" role="3cqZAp">
          <node concept="10QFUN" id="1KCfUoKQO1M" role="3clFbG">
            <node concept="10Oyi0" id="1KCfUoKQOsX" role="10QFUM" />
            <node concept="1eOMI4" id="1KCfUoKQNE0" role="10QFUP">
              <node concept="17qRlL" id="1KCfUoKQMlB" role="1eOMHV">
                <node concept="1rXfSq" id="1KCfUoKQMpt" role="3uHU7w">
                  <ref role="37wK5l" node="1KCfUoKQK_H" resolve="getEditorScale" />
                </node>
                <node concept="37vLTw" id="1KCfUoKQKQW" role="3uHU7B">
                  <ref role="3cqZAo" node="4KEbQahQy_G" resolve="d" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4KEbQahQyvz" role="1B3o_S" />
      <node concept="10Oyi0" id="4KEbQahQyso" role="3clF45" />
      <node concept="37vLTG" id="4KEbQahQy_G" role="3clF46">
        <property role="TrG5h" value="d" />
        <node concept="10Oyi0" id="4KEbQahQy_F" role="1tU5fm" />
      </node>
      <node concept="2JFqV2" id="17nGqbJdc7b" role="2frcjj" />
    </node>
    <node concept="3clFb_" id="4KEbQahQyMc" role="jymVt">
      <property role="TrG5h" value="fromEditorDimension" />
      <node concept="3clFbS" id="4KEbQahQyMf" role="3clF47">
        <node concept="3clFbF" id="1KCfUoKQOVa" role="3cqZAp">
          <node concept="10QFUN" id="1KCfUoKQOVb" role="3clFbG">
            <node concept="10Oyi0" id="1KCfUoKQOVc" role="10QFUM" />
            <node concept="1eOMI4" id="1KCfUoKQOVd" role="10QFUP">
              <node concept="FJ1c_" id="1KCfUoKQPgv" role="1eOMHV">
                <node concept="37vLTw" id="1KCfUoKQOVg" role="3uHU7B">
                  <ref role="3cqZAo" node="4KEbQahQySC" resolve="d" />
                </node>
                <node concept="1rXfSq" id="1KCfUoKQOVf" role="3uHU7w">
                  <ref role="37wK5l" node="1KCfUoKQK_H" resolve="getEditorScale" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4KEbQahQyMg" role="1B3o_S" />
      <node concept="10Oyi0" id="4KEbQahQyIQ" role="3clF45" />
      <node concept="37vLTG" id="4KEbQahQySC" role="3clF46">
        <property role="TrG5h" value="d" />
        <node concept="10Oyi0" id="4KEbQahQySB" role="1tU5fm" />
      </node>
      <node concept="2JFqV2" id="17nGqbJdc7c" role="2frcjj" />
    </node>
    <node concept="3clFb_" id="7sG$k3BM$l1" role="jymVt">
      <property role="TrG5h" value="translateToEditorX" />
      <node concept="3clFbS" id="7sG$k3BM$l4" role="3clF47">
        <node concept="3clFbF" id="1KCfUoKQIQ7" role="3cqZAp">
          <node concept="3cpWs3" id="1KCfUoKQKqJ" role="3clFbG">
            <node concept="2OqwBi" id="1KCfUoKQWy1" role="3uHU7w">
              <node concept="1rXfSq" id="1KCfUoKQPCN" role="2Oq$k0">
                <ref role="37wK5l" node="1KCfUoKQIdG" resolve="getEditorShift" />
              </node>
              <node concept="2OwXpG" id="1KCfUoKQWZ2" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
              </node>
            </node>
            <node concept="1rXfSq" id="1KCfUoKQIU3" role="3uHU7B">
              <ref role="37wK5l" node="4KEbQahQyvv" resolve="toEditorDimension" />
              <node concept="37vLTw" id="1KCfUoKQIXv" role="37wK5m">
                <ref role="3cqZAo" node="7sG$k3BM$mw" resolve="x" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7sG$k3BM$l5" role="1B3o_S" />
      <node concept="10Oyi0" id="309fsJ6evN7" role="3clF45" />
      <node concept="37vLTG" id="7sG$k3BM$mw" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="7sG$k3BM$mv" role="1tU5fm" />
      </node>
      <node concept="2JFqV2" id="17nGqbJdc7d" role="2frcjj" />
    </node>
    <node concept="3clFb_" id="309fsJ6evNL" role="jymVt">
      <property role="TrG5h" value="translateToEditorY" />
      <node concept="3clFbS" id="309fsJ6evNM" role="3clF47">
        <node concept="3clFbF" id="1KCfUoKQQYN" role="3cqZAp">
          <node concept="3cpWs3" id="1KCfUoKQSy3" role="3clFbG">
            <node concept="2OqwBi" id="1KCfUoKQXPQ" role="3uHU7w">
              <node concept="1rXfSq" id="1KCfUoKQSC7" role="2Oq$k0">
                <ref role="37wK5l" node="1KCfUoKQIdG" resolve="getEditorShift" />
              </node>
              <node concept="2OwXpG" id="1KCfUoKQYg3" role="2OqNvi">
                <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
              </node>
            </node>
            <node concept="1rXfSq" id="1KCfUoKQQYM" role="3uHU7B">
              <ref role="37wK5l" node="4KEbQahQyvv" resolve="toEditorDimension" />
              <node concept="37vLTw" id="1KCfUoKQR4v" role="37wK5m">
                <ref role="3cqZAo" node="309fsJ6evNP" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="309fsJ6evNN" role="1B3o_S" />
      <node concept="10Oyi0" id="309fsJ6evNO" role="3clF45" />
      <node concept="37vLTG" id="309fsJ6evNP" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="309fsJ6evNQ" role="1tU5fm" />
      </node>
      <node concept="2JFqV2" id="17nGqbJdc7e" role="2frcjj" />
    </node>
    <node concept="3clFb_" id="309fsJ6iBhP" role="jymVt">
      <property role="TrG5h" value="translateFromEditorX" />
      <node concept="3clFbS" id="309fsJ6iBhQ" role="3clF47">
        <node concept="3clFbF" id="1KCfUoKR4_M" role="3cqZAp">
          <node concept="1rXfSq" id="1KCfUoKRib6" role="3clFbG">
            <ref role="37wK5l" node="4KEbQahQyMc" resolve="fromEditorDimension" />
            <node concept="3cpWsd" id="1KCfUoKR67j" role="37wK5m">
              <node concept="37vLTw" id="1KCfUoKR4_L" role="3uHU7B">
                <ref role="3cqZAo" node="309fsJ6iBhT" resolve="x" />
              </node>
              <node concept="2OqwBi" id="1KCfUoKR6zZ" role="3uHU7w">
                <node concept="1rXfSq" id="1KCfUoKR6bl" role="2Oq$k0">
                  <ref role="37wK5l" node="1KCfUoKQIdG" resolve="getEditorShift" />
                </node>
                <node concept="2OwXpG" id="1KCfUoKR6Yc" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="309fsJ6iBhR" role="1B3o_S" />
      <node concept="10Oyi0" id="309fsJ6iBhS" role="3clF45" />
      <node concept="37vLTG" id="309fsJ6iBhT" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="309fsJ6iBhU" role="1tU5fm" />
      </node>
      <node concept="2JFqV2" id="17nGqbJdc7f" role="2frcjj" />
    </node>
    <node concept="3clFb_" id="309fsJ6iBhV" role="jymVt">
      <property role="TrG5h" value="translateFromEditorY" />
      <node concept="3clFbS" id="309fsJ6iBhW" role="3clF47">
        <node concept="3clFbF" id="1KCfUoKRjLu" role="3cqZAp">
          <node concept="1rXfSq" id="1KCfUoKRjLw" role="3clFbG">
            <ref role="37wK5l" node="4KEbQahQyMc" resolve="fromEditorDimension" />
            <node concept="3cpWsd" id="1KCfUoKRjLy" role="37wK5m">
              <node concept="2OqwBi" id="1KCfUoKRjL$" role="3uHU7w">
                <node concept="1rXfSq" id="1KCfUoKRjL_" role="2Oq$k0">
                  <ref role="37wK5l" node="1KCfUoKQIdG" resolve="getEditorShift" />
                </node>
                <node concept="2OwXpG" id="1KCfUoKRkHx" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
              <node concept="37vLTw" id="1KCfUoKRk8W" role="3uHU7B">
                <ref role="3cqZAo" node="309fsJ6iBhZ" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="309fsJ6iBhX" role="1B3o_S" />
      <node concept="10Oyi0" id="309fsJ6iBhY" role="3clF45" />
      <node concept="37vLTG" id="309fsJ6iBhZ" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="309fsJ6iBi0" role="1tU5fm" />
      </node>
      <node concept="2JFqV2" id="17nGqbJdc7g" role="2frcjj" />
    </node>
  </node>
  <node concept="312cEu" id="17nGqbJdQ7z">
    <property role="TrG5h" value="SceneViewpointByCell" />
    <node concept="2tJIrI" id="17nGqbJdQ9N" role="jymVt" />
    <node concept="312cEg" id="17nGqbJdQf_" role="jymVt">
      <property role="TrG5h" value="myCell" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="17nGqbJdQaX" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJdQfs" role="1tU5fm">
        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
      </node>
    </node>
    <node concept="312cEg" id="1iOpS24Ajk7" role="jymVt">
      <property role="TrG5h" value="myEditor" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1iOpS24AiC7" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS24AjfI" role="1tU5fm">
        <ref role="3uigEE" to="3bo0:17nGqbJcVKF" resolve="SceneEditor" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24_vtH" role="jymVt" />
    <node concept="312cEg" id="1iOpS24_uah" role="jymVt">
      <property role="TrG5h" value="shiftX" />
      <node concept="3Tm6S6" id="1iOpS24_tJw" role="1B3o_S" />
      <node concept="10Oyi0" id="1iOpS24_u6V" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1iOpS24_v5l" role="jymVt">
      <property role="TrG5h" value="shiftY" />
      <node concept="3Tm6S6" id="1iOpS24_uIt" role="1B3o_S" />
      <node concept="10Oyi0" id="1iOpS24_v1Z" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1y1FD3qJgbX" role="jymVt" />
    <node concept="3clFbW" id="17nGqbJdQpZ" role="jymVt">
      <node concept="3cqZAl" id="17nGqbJdQq1" role="3clF45" />
      <node concept="3Tm1VV" id="17nGqbJdQq2" role="1B3o_S" />
      <node concept="3clFbS" id="17nGqbJdQq3" role="3clF47">
        <node concept="3clFbF" id="17nGqbJdQ$1" role="3cqZAp">
          <node concept="37vLTI" id="17nGqbJdRd0" role="3clFbG">
            <node concept="37vLTw" id="17nGqbJdRgU" role="37vLTx">
              <ref role="3cqZAo" node="17nGqbJdQti" resolve="cell" />
            </node>
            <node concept="37vLTw" id="17nGqbJdQ$0" role="37vLTJ">
              <ref role="3cqZAo" node="17nGqbJdQf_" resolve="myCell" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24C5Zt" role="3cqZAp">
          <node concept="37vLTI" id="1iOpS24C6Cw" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24C6NZ" role="37vLTx">
              <ref role="3cqZAo" node="1iOpS24AhMS" resolve="editor" />
            </node>
            <node concept="37vLTw" id="1iOpS24C5Zr" role="37vLTJ">
              <ref role="3cqZAo" node="1iOpS24Ajk7" resolve="myEditor" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1y1FD3qIMS7" role="3cqZAp" />
        <node concept="3clFbF" id="1y1FD3qIN65" role="3cqZAp">
          <node concept="2OqwBi" id="1y1FD3qINfw" role="3clFbG">
            <node concept="37vLTw" id="1y1FD3qIN63" role="2Oq$k0">
              <ref role="3cqZAo" node="1iOpS24AhMS" resolve="editor" />
            </node>
            <node concept="liA8E" id="1y1FD3qINlj" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:1R4IoyRrSCW" resolve="addInitializer" />
              <node concept="2ShNRf" id="1y1FD3qINpg" role="37wK5m">
                <node concept="HV5vD" id="1y1FD3qINYo" role="2ShVmc">
                  <ref role="HV5vE" node="1y1FD3qIrxq" resolve="SceneViewpointByCell.MyInitializer" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24AhMS" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="1iOpS24AhTw" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJcVKF" resolve="SceneEditor" />
        </node>
      </node>
      <node concept="37vLTG" id="17nGqbJdQti" role="3clF46">
        <property role="TrG5h" value="cell" />
        <node concept="3uibUv" id="1iOpS24AhLy" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJdRkB" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJdRmh" role="jymVt">
      <property role="TrG5h" value="getEditorShift" />
      <node concept="3Tm1VV" id="17nGqbJdRmj" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJdRmk" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="3clFbS" id="17nGqbJdRml" role="3clF47">
        <node concept="3clFbF" id="17nGqbJdR$K" role="3cqZAp">
          <node concept="2ShNRf" id="17nGqbJdR$I" role="3clFbG">
            <node concept="1pGfFk" id="17nGqbJdS2f" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
              <node concept="3cpWs3" id="1iOpS24_xSc" role="37wK5m">
                <node concept="37vLTw" id="1iOpS24_y7d" role="3uHU7w">
                  <ref role="3cqZAo" node="1iOpS24_uah" resolve="shiftX" />
                </node>
                <node concept="2OqwBi" id="17nGqbJdShZ" role="3uHU7B">
                  <node concept="37vLTw" id="17nGqbJdS8G" role="2Oq$k0">
                    <ref role="3cqZAo" node="17nGqbJdQf_" resolve="myCell" />
                  </node>
                  <node concept="liA8E" id="17nGqbJdTYv" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getX()" resolve="getX" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs3" id="1iOpS24_$nJ" role="37wK5m">
                <node concept="37vLTw" id="1iOpS24_$P4" role="3uHU7w">
                  <ref role="3cqZAo" node="1iOpS24_v5l" resolve="shiftY" />
                </node>
                <node concept="2OqwBi" id="17nGqbJdUBg" role="3uHU7B">
                  <node concept="37vLTw" id="17nGqbJdUsk" role="2Oq$k0">
                    <ref role="3cqZAo" node="17nGqbJdQf_" resolve="myCell" />
                  </node>
                  <node concept="liA8E" id="17nGqbJdWsM" role="2OqNvi">
                    <ref role="37wK5l" to="f4zo:~EditorCell.getY()" resolve="getY" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJdRmm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24__cE" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24__F9" role="jymVt">
      <property role="TrG5h" value="setEditorShift" />
      <node concept="3Tm1VV" id="1iOpS24__Fb" role="1B3o_S" />
      <node concept="3cqZAl" id="1iOpS24__Fc" role="3clF45" />
      <node concept="37vLTG" id="1iOpS24__Fd" role="3clF46">
        <property role="TrG5h" value="origin" />
        <node concept="3uibUv" id="1iOpS24__Fe" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="3clFbS" id="1iOpS24__Ff" role="3clF47">
        <node concept="3clFbF" id="1iOpS24_Alr" role="3cqZAp">
          <node concept="37vLTI" id="1iOpS24_Dpx" role="3clFbG">
            <node concept="3cpWsd" id="1iOpS24_HB0" role="37vLTx">
              <node concept="2OqwBi" id="1iOpS24_IhE" role="3uHU7w">
                <node concept="37vLTw" id="1iOpS24_HYl" role="2Oq$k0">
                  <ref role="3cqZAo" node="17nGqbJdQf_" resolve="myCell" />
                </node>
                <node concept="liA8E" id="1iOpS24_IDn" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getX()" resolve="getX" />
                </node>
              </node>
              <node concept="2OqwBi" id="1iOpS24_EbT" role="3uHU7B">
                <node concept="37vLTw" id="1iOpS24_DKy" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iOpS24__Fd" resolve="origin" />
                </node>
                <node concept="2OwXpG" id="1iOpS24_ExN" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1iOpS24_Alq" role="37vLTJ">
              <ref role="3cqZAo" node="1iOpS24_uah" resolve="shiftX" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24_J1k" role="3cqZAp">
          <node concept="37vLTI" id="1iOpS24_M3m" role="3clFbG">
            <node concept="3cpWsd" id="1iOpS24_TbR" role="37vLTx">
              <node concept="2OqwBi" id="1iOpS24_TQx" role="3uHU7w">
                <node concept="37vLTw" id="1iOpS24_Tzc" role="2Oq$k0">
                  <ref role="3cqZAo" node="17nGqbJdQf_" resolve="myCell" />
                </node>
                <node concept="liA8E" id="1iOpS24_VDy" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getY()" resolve="getY" />
                </node>
              </node>
              <node concept="2OqwBi" id="1iOpS24_MXF" role="3uHU7B">
                <node concept="37vLTw" id="1iOpS24_MtJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iOpS24__Fd" resolve="origin" />
                </node>
                <node concept="2OwXpG" id="1iOpS24_Nj_" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1iOpS24_J1i" role="37vLTJ">
              <ref role="3cqZAo" node="1iOpS24_v5l" resolve="shiftY" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24AkQe" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS24AliP" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24AkQc" role="2Oq$k0">
              <ref role="3cqZAo" node="1iOpS24Ajk7" resolve="myEditor" />
            </node>
            <node concept="liA8E" id="1iOpS24C4S_" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:1iOpS24Am6k" resolve="fireRelayout" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24__Fg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJdRqL" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJdRmp" role="jymVt">
      <property role="TrG5h" value="getEditorScale" />
      <node concept="3Tm1VV" id="17nGqbJdRmr" role="1B3o_S" />
      <node concept="10OMs4" id="17nGqbJdRms" role="3clF45" />
      <node concept="3clFbS" id="17nGqbJdRmt" role="3clF47">
        <node concept="3cpWs8" id="1y1FD3qMlGy" role="3cqZAp">
          <node concept="3cpWsn" id="1y1FD3qMlGz" role="3cpWs9">
            <property role="TrG5h" value="lineSize" />
            <node concept="10Oyi0" id="1y1FD3qMlvz" role="1tU5fm" />
            <node concept="2YIFZM" id="1y1FD3qMlG$" role="33vP2m">
              <ref role="37wK5l" node="7qPnRGFzb_r" resolve="getLineSize" />
              <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
              <node concept="2OqwBi" id="1y1FD3qMlG_" role="37wK5m">
                <node concept="37vLTw" id="1y1FD3qMlGA" role="2Oq$k0">
                  <ref role="3cqZAo" node="17nGqbJdQf_" resolve="myCell" />
                </node>
                <node concept="liA8E" id="1y1FD3qMlGB" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1y1FD3qMlPx" role="3cqZAp">
          <node concept="1rXfSq" id="1y1FD3qMlPw" role="3cqZAk">
            <ref role="37wK5l" node="1y1FD3qMlPs" resolve="scale" />
            <node concept="37vLTw" id="1y1FD3qMlPv" role="37wK5m">
              <ref role="3cqZAo" node="1y1FD3qMlGz" resolve="lineSize" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJdRmu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1y1FD3qMmwR" role="jymVt" />
    <node concept="3clFb_" id="1y1FD3qMlPs" role="jymVt">
      <property role="TrG5h" value="scale" />
      <node concept="3Tm6S6" id="1y1FD3qMlPt" role="1B3o_S" />
      <node concept="10OMs4" id="1y1FD3qMlPu" role="3clF45" />
      <node concept="37vLTG" id="1y1FD3qMlPn" role="3clF46">
        <property role="TrG5h" value="lineSize" />
        <node concept="10Oyi0" id="1y1FD3qMlPo" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1y1FD3qMlPg" role="3clF47">
        <node concept="3clFbF" id="1y1FD3qMlPh" role="3cqZAp">
          <node concept="FJ1c_" id="1y1FD3qMlPi" role="3clFbG">
            <node concept="1eOMI4" id="61SA$ze6b0z" role="3uHU7B">
              <node concept="10QFUN" id="61SA$ze6b4n" role="1eOMHV">
                <node concept="10OMs4" id="61SA$ze6beY" role="10QFUM" />
                <node concept="37vLTw" id="1y1FD3qMlPp" role="10QFUP">
                  <ref role="3cqZAo" node="1y1FD3qMlPn" resolve="lineSize" />
                </node>
              </node>
            </node>
            <node concept="3cmrfG" id="1y1FD3qMlPm" role="3uHU7w">
              <property role="3cmrfH" value="100" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1y1FD3qIrjy" role="jymVt" />
    <node concept="312cEu" id="1y1FD3qIrxq" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyInitializer" />
      <node concept="2tJIrI" id="1y1FD3qIsIy" role="jymVt" />
      <node concept="3Tm1VV" id="1y1FD3qIrxr" role="1B3o_S" />
      <node concept="3uibUv" id="1y1FD3qIs_9" role="EKbjA">
        <ref role="3uigEE" to="3bo0:1R4IoyRrSd8" resolve="SceneInitializer" />
      </node>
      <node concept="3clFb_" id="1y1FD3qIsNj" role="jymVt">
        <property role="TrG5h" value="onAdd" />
        <node concept="3Tm1VV" id="1y1FD3qIsNl" role="1B3o_S" />
        <node concept="3cqZAl" id="1y1FD3qIsNm" role="3clF45" />
        <node concept="3clFbS" id="1y1FD3qIsNn" role="3clF47">
          <node concept="3cpWs8" id="1y1FD3qIECD" role="3cqZAp">
            <node concept="3cpWsn" id="1y1FD3qIECE" role="3cpWs9">
              <property role="TrG5h" value="data" />
              <node concept="3uibUv" id="1pJxKgr_QIj" role="1tU5fm">
                <ref role="3uigEE" to="3bo0:1y1FD3qYMCR" resolve="ViewpointAndScaleData" />
              </node>
              <node concept="2OqwBi" id="1y1FD3qIECF" role="33vP2m">
                <node concept="37vLTw" id="1y1FD3qIECG" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iOpS24Ajk7" resolve="myEditor" />
                </node>
                <node concept="liA8E" id="1y1FD3qIECH" role="2OqNvi">
                  <ref role="37wK5l" to="3bo0:7eBFChAbAUW" resolve="loadState" />
                  <node concept="10M0yZ" id="1pJxKgr_Sou" role="37wK5m">
                    <ref role="3cqZAo" to="3bo0:1y1FD3qIvIC" resolve="KEY" />
                    <ref role="1PxDUh" to="3bo0:1y1FD3qYMCR" resolve="ViewpointAndScaleData" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1y1FD3qIESk" role="3cqZAp">
            <node concept="3clFbS" id="1y1FD3qIESm" role="3clFbx">
              <node concept="3clFbF" id="1y1FD3qIFJY" role="3cqZAp">
                <node concept="37vLTI" id="1y1FD3qIGph" role="3clFbG">
                  <node concept="2OqwBi" id="1y1FD3qIHjt" role="37vLTx">
                    <node concept="37vLTw" id="1y1FD3qIGDM" role="2Oq$k0">
                      <ref role="3cqZAo" node="1y1FD3qIECE" resolve="data" />
                    </node>
                    <node concept="2OwXpG" id="1pJxKgr_Sxx" role="2OqNvi">
                      <ref role="2Oxat5" to="3bo0:1y1FD3qYNMQ" resolve="shiftX" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1y1FD3qIFJV" role="37vLTJ">
                    <ref role="3cqZAo" node="1iOpS24_uah" resolve="shiftX" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1y1FD3qIGLz" role="3cqZAp">
                <node concept="37vLTI" id="1y1FD3qIGL$" role="3clFbG">
                  <node concept="2OqwBi" id="1y1FD3qIHVV" role="37vLTx">
                    <node concept="37vLTw" id="1y1FD3qIGL_" role="2Oq$k0">
                      <ref role="3cqZAo" node="1y1FD3qIECE" resolve="data" />
                    </node>
                    <node concept="2OwXpG" id="1pJxKgr_SBV" role="2OqNvi">
                      <ref role="2Oxat5" to="3bo0:1y1FD3qYOa7" resolve="shiftY" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1y1FD3qII5n" role="37vLTJ">
                    <ref role="3cqZAo" node="1iOpS24_v5l" resolve="shiftY" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1y1FD3qYQrU" role="3cqZAp">
                <node concept="2YIFZM" id="1y1FD3qYQBE" role="3clFbG">
                  <ref role="37wK5l" node="1y1FD3qMQQ8" resolve="setLineSize" />
                  <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
                  <node concept="2OqwBi" id="1y1FD3qYQBF" role="37wK5m">
                    <node concept="37vLTw" id="1y1FD3qYQBG" role="2Oq$k0">
                      <ref role="3cqZAo" node="17nGqbJdQf_" resolve="myCell" />
                    </node>
                    <node concept="liA8E" id="1y1FD3qYQBH" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1y1FD3qYRby" role="37wK5m">
                    <node concept="37vLTw" id="1y1FD3qYQXN" role="2Oq$k0">
                      <ref role="3cqZAo" node="1y1FD3qIECE" resolve="data" />
                    </node>
                    <node concept="2OwXpG" id="1pJxKgr_SD9" role="2OqNvi">
                      <ref role="2Oxat5" to="3bo0:1y1FD3qYOst" resolve="lineSize" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1y1FD3qIFn2" role="3clFbw">
              <node concept="10Nm6u" id="1y1FD3qIF$b" role="3uHU7w" />
              <node concept="37vLTw" id="1y1FD3qIEZA" role="3uHU7B">
                <ref role="3cqZAo" node="1y1FD3qIECE" resolve="data" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1y1FD3qIsNo" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1y1FD3qIJ_s" role="jymVt" />
      <node concept="3clFb_" id="1y1FD3qIsNp" role="jymVt">
        <property role="TrG5h" value="onRemove" />
        <node concept="3Tm1VV" id="1y1FD3qIsNr" role="1B3o_S" />
        <node concept="3cqZAl" id="1y1FD3qIsNs" role="3clF45" />
        <node concept="3clFbS" id="1y1FD3qIsNt" role="3clF47">
          <node concept="3clFbF" id="1y1FD3qIJY3" role="3cqZAp">
            <node concept="2OqwBi" id="1y1FD3qIKel" role="3clFbG">
              <node concept="37vLTw" id="1y1FD3qIJY2" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS24Ajk7" resolve="myEditor" />
              </node>
              <node concept="liA8E" id="1y1FD3qIKu4" role="2OqNvi">
                <ref role="37wK5l" to="3bo0:7eBFChAb_fZ" resolve="storeState" />
                <node concept="10M0yZ" id="1pJxKgr_SKG" role="37wK5m">
                  <ref role="3cqZAo" to="3bo0:1y1FD3qIvIC" resolve="KEY" />
                  <ref role="1PxDUh" to="3bo0:1y1FD3qYMCR" resolve="ViewpointAndScaleData" />
                </node>
                <node concept="2ShNRf" id="1y1FD3qIKPp" role="37wK5m">
                  <node concept="1pGfFk" id="1y1FD3qILzh" role="2ShVmc">
                    <ref role="37wK5l" to="3bo0:1y1FD3qYOEs" resolve="ViewpointAndScaleData" />
                    <node concept="37vLTw" id="1y1FD3qILGl" role="37wK5m">
                      <ref role="3cqZAo" node="1iOpS24_uah" resolve="shiftX" />
                    </node>
                    <node concept="37vLTw" id="1y1FD3qIM73" role="37wK5m">
                      <ref role="3cqZAo" node="1iOpS24_v5l" resolve="shiftY" />
                    </node>
                    <node concept="2YIFZM" id="1y1FD3qYPAo" role="37wK5m">
                      <ref role="37wK5l" node="7qPnRGFzb_r" resolve="getLineSize" />
                      <ref role="1Pybhc" node="1Oxt8dqZWeT" resolve="LayoutUtil" />
                      <node concept="2OqwBi" id="1y1FD3qYPAp" role="37wK5m">
                        <node concept="37vLTw" id="1y1FD3qYPAq" role="2Oq$k0">
                          <ref role="3cqZAo" node="17nGqbJdQf_" resolve="myCell" />
                        </node>
                        <node concept="liA8E" id="1y1FD3qYPAr" role="2OqNvi">
                          <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1y1FD3qIsNu" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="61SA$ze63EQ" role="jymVt" />
    <node concept="3Tm1VV" id="17nGqbJdQ7$" role="1B3o_S" />
    <node concept="3uibUv" id="1iOpS24_qJI" role="EKbjA">
      <ref role="3uigEE" node="1iOpS24$iQB" resolve="ModifiableSceneViewpoint" />
    </node>
    <node concept="3clFb_" id="61SA$ze63es" role="jymVt">
      <property role="TrG5h" value="getCell" />
      <node concept="3uibUv" id="61SA$ze63et" role="3clF45">
        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="3Tm1VV" id="61SA$ze63eu" role="1B3o_S" />
      <node concept="3clFbS" id="61SA$ze63ev" role="3clF47">
        <node concept="3clFbF" id="61SA$ze63ew" role="3cqZAp">
          <node concept="37vLTw" id="61SA$ze64Nr" role="3clFbG">
            <ref role="3cqZAo" node="17nGqbJdQf_" resolve="myCell" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="IMWzYPfM2o">
    <property role="TrG5h" value="CursorTargetModel" />
    <node concept="2tJIrI" id="IMWzYPfM2Z" role="jymVt" />
    <node concept="3clFb_" id="IMWzYPfM5b" role="jymVt">
      <property role="TrG5h" value="getCurrentTarget" />
      <node concept="3clFbS" id="IMWzYPfM5e" role="3clF47" />
      <node concept="3Tm1VV" id="IMWzYPfM5f" role="1B3o_S" />
      <node concept="16syzq" id="IMWzYPfM4Z" role="3clF45">
        <ref role="16sUi3" node="IMWzYPfM2N" resolve="T" />
      </node>
      <node concept="2AHcQZ" id="IMWzYPfM5F" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="IMWzYPfM6M" role="jymVt" />
    <node concept="3clFb_" id="IMWzYPfM8Y" role="jymVt">
      <property role="TrG5h" value="resetTarget" />
      <node concept="3clFbS" id="IMWzYPfM91" role="3clF47" />
      <node concept="3Tm1VV" id="IMWzYPfM92" role="1B3o_S" />
      <node concept="3cqZAl" id="IMWzYPfM8G" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="IMWzYPfM9G" role="jymVt" />
    <node concept="3clFb_" id="IMWzYPfMby" role="jymVt">
      <property role="TrG5h" value="setTarget" />
      <node concept="3clFbS" id="IMWzYPfMb_" role="3clF47" />
      <node concept="3Tm1VV" id="IMWzYPfMbA" role="1B3o_S" />
      <node concept="3cqZAl" id="IMWzYPfMaV" role="3clF45" />
      <node concept="37vLTG" id="IMWzYPfMcV" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="16syzq" id="IMWzYPfMcU" role="1tU5fm">
          <ref role="16sUi3" node="IMWzYPfM2N" resolve="T" />
        </node>
        <node concept="2AHcQZ" id="IMWzYPfMey" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="IMWzYPfM2p" role="1B3o_S" />
    <node concept="16euLQ" id="IMWzYPfM2N" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
  <node concept="3HP615" id="2JpbWDsJCQ0">
    <property role="2bfB8j" value="true" />
    <property role="TrG5h" value="LayoutSetting" />
    <node concept="3clFb_" id="2JpbWDsJE9a" role="jymVt">
      <property role="TrG5h" value="getBounds" />
      <node concept="3clFbS" id="2JpbWDsJE9d" role="3clF47" />
      <node concept="3Tm1VV" id="2JpbWDsJE9e" role="1B3o_S" />
      <node concept="3uibUv" id="2JpbWDsJE0H" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpAgwS" role="jymVt" />
    <node concept="3clFb_" id="2JpbWDsJECv" role="jymVt">
      <property role="TrG5h" value="canStartMoveAt" />
      <node concept="3clFbS" id="2JpbWDsJECy" role="3clF47" />
      <node concept="3Tm1VV" id="2JpbWDsJECz" role="1B3o_S" />
      <node concept="10P_77" id="2JpbWDsJEwo" role="3clF45" />
      <node concept="37vLTG" id="2JpbWDsJENd" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="2JpbWDsJENc" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2JpbWDsJEOU" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="2JpbWDsJERL" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpAgyg" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJsSI6" role="jymVt">
      <property role="TrG5h" value="moveTo" />
      <node concept="3clFbS" id="17nGqbJsSI9" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJsSIa" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJsSGR" role="3clF45" />
      <node concept="37vLTG" id="17nGqbJsSKm" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="17nGqbJsSKl" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="17nGqbJsSMq" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="17nGqbJsSOs" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2JpbWDsJCQ1" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="4y$DvIXWfQg">
    <property role="TrG5h" value="SceneFocusModel" />
    <node concept="2tJIrI" id="4y$DvIXWfR6" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXWfTe" role="jymVt">
      <property role="TrG5h" value="addFocus" />
      <node concept="3clFbS" id="4y$DvIXWfTh" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIXWfTi" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIXWfT4" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIXWgOO" role="3clF46">
        <property role="TrG5h" value="focus" />
        <node concept="3uibUv" id="4y$DvIXWgON" role="1tU5fm">
          <ref role="3uigEE" node="4y$DvIXWfTF" resolve="FocusHandle" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIXWgPQ" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXWgRe" role="jymVt">
      <property role="TrG5h" value="clearFocus" />
      <node concept="3clFbS" id="4y$DvIXWgRh" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIXWgRi" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIXWgQO" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="4y$DvIXWfQh" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4y$DvIXWfTF">
    <property role="TrG5h" value="FocusHandle" />
    <node concept="2tJIrI" id="4y$DvIXWfUg" role="jymVt" />
    <node concept="312cEg" id="4y$DvIXWfXg" role="jymVt">
      <property role="TrG5h" value="onFocusLost" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4y$DvIXWfUU" role="1B3o_S" />
      <node concept="1ajhzC" id="4y$DvIXWfWA" role="1tU5fm">
        <node concept="3cqZAl" id="4y$DvIXWfXd" role="1ajl9A" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIXWfXM" role="jymVt" />
    <node concept="3Tm1VV" id="4y$DvIXWfTG" role="1B3o_S" />
    <node concept="3clFbW" id="4y$DvIXWfYd" role="jymVt">
      <node concept="3cqZAl" id="4y$DvIXWfYe" role="3clF45" />
      <node concept="3Tm1VV" id="4y$DvIXWfYf" role="1B3o_S" />
      <node concept="3clFbS" id="4y$DvIXWfYh" role="3clF47">
        <node concept="3clFbF" id="4y$DvIXWfYm" role="3cqZAp">
          <node concept="37vLTI" id="4y$DvIXWfYo" role="3clFbG">
            <node concept="2OqwBi" id="4y$DvIXWfYs" role="37vLTJ">
              <node concept="Xjq3P" id="4y$DvIXWfYt" role="2Oq$k0" />
              <node concept="2OwXpG" id="4y$DvIXWfYu" role="2OqNvi">
                <ref role="2Oxat5" node="4y$DvIXWfXg" resolve="onFocusLost" />
              </node>
            </node>
            <node concept="37vLTw" id="4y$DvIXWfYv" role="37vLTx">
              <ref role="3cqZAo" node="4y$DvIXWfYl" resolve="onFocusLost" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIXWfYl" role="3clF46">
        <property role="TrG5h" value="onFocusLost" />
        <node concept="1ajhzC" id="4y$DvIXWfYj" role="1tU5fm">
          <node concept="3cqZAl" id="4y$DvIXWfYk" role="1ajl9A" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIXWg21" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXWg6g" role="jymVt">
      <property role="TrG5h" value="onFocusLost" />
      <node concept="3clFbS" id="4y$DvIXWg6j" role="3clF47">
        <node concept="3clFbF" id="4y$DvIXWg9n" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIXWgDK" role="3clFbG">
            <node concept="2OqwBi" id="4y$DvIXWggv" role="2Oq$k0">
              <node concept="Xjq3P" id="4y$DvIXWg9m" role="2Oq$k0" />
              <node concept="2OwXpG" id="4y$DvIXWgxW" role="2OqNvi">
                <ref role="2Oxat5" node="4y$DvIXWfXg" resolve="onFocusLost" />
              </node>
            </node>
            <node concept="1Bd96e" id="4y$DvIXWgG1" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIXWg4l" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIXWg6b" role="3clF45" />
    </node>
  </node>
  <node concept="312cEu" id="4y$DvIXWgRV">
    <property role="TrG5h" value="DefaultFocusModel" />
    <node concept="2tJIrI" id="4y$DvIXWgTj" role="jymVt" />
    <node concept="312cEg" id="4y$DvIXWgZP" role="jymVt">
      <property role="TrG5h" value="myHandles" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4y$DvIXWgUt" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIXWgWE" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~HashSet" resolve="HashSet" />
        <node concept="3uibUv" id="4y$DvIXWgZE" role="11_B2D">
          <ref role="3uigEE" node="4y$DvIXWfTF" resolve="FocusHandle" />
        </node>
      </node>
      <node concept="2ShNRf" id="4y$DvIXWh3l" role="33vP2m">
        <node concept="1pGfFk" id="4y$DvIXWhxe" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="3uibUv" id="4y$DvIXWhCn" role="1pMfVU">
            <ref role="3uigEE" node="4y$DvIXWfTF" resolve="FocusHandle" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIXWhDd" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXWhHa" role="jymVt">
      <property role="TrG5h" value="addFocus" />
      <node concept="3Tm1VV" id="4y$DvIXWhHc" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIXWhHd" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIXWhHe" role="3clF46">
        <property role="TrG5h" value="focus" />
        <node concept="3uibUv" id="4y$DvIXWhHf" role="1tU5fm">
          <ref role="3uigEE" node="4y$DvIXWfTF" resolve="FocusHandle" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIXWhHg" role="3clF47">
        <node concept="3clFbF" id="4y$DvIXWhQ$" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIXWiWV" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIXWhQz" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIXWgZP" resolve="myHandles" />
            </node>
            <node concept="liA8E" id="4y$DvIXWDrC" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~HashSet.add(java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="4y$DvIXWDIT" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIXWhHe" resolve="focus" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIXWhHh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIXWE8Q" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXWhHi" role="jymVt">
      <property role="TrG5h" value="clearFocus" />
      <node concept="3Tm1VV" id="4y$DvIXWhHk" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIXWhHl" role="3clF45" />
      <node concept="3clFbS" id="4y$DvIXWhHm" role="3clF47">
        <node concept="2Gpval" id="4y$DvIXWEIV" role="3cqZAp">
          <node concept="2GrKxI" id="4y$DvIXWEIW" role="2Gsz3X">
            <property role="TrG5h" value="handle" />
          </node>
          <node concept="37vLTw" id="4y$DvIXWEPV" role="2GsD0m">
            <ref role="3cqZAo" node="4y$DvIXWgZP" resolve="myHandles" />
          </node>
          <node concept="3clFbS" id="4y$DvIXWEIY" role="2LFqv$">
            <node concept="3clFbF" id="4y$DvIXWFIH" role="3cqZAp">
              <node concept="2OqwBi" id="4y$DvIXWFRf" role="3clFbG">
                <node concept="2GrUjf" id="4y$DvIXWFIG" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4y$DvIXWEIW" resolve="handle" />
                </node>
                <node concept="liA8E" id="4y$DvIXWGDY" role="2OqNvi">
                  <ref role="37wK5l" node="4y$DvIXWg6g" resolve="onFocusLost" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4y$DvIXWHif" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIXWI_d" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIXWHid" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIXWgZP" resolve="myHandles" />
            </node>
            <node concept="liA8E" id="4y$DvIXX416" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~HashSet.clear()" resolve="clear" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIXWhHn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4y$DvIXWgRW" role="1B3o_S" />
    <node concept="3uibUv" id="4y$DvIXWgT7" role="EKbjA">
      <ref role="3uigEE" node="4y$DvIXWfQg" resolve="SceneFocusModel" />
    </node>
  </node>
  <node concept="3HP615" id="1iOpS24$iQB">
    <property role="TrG5h" value="ModifiableSceneViewpoint" />
    <node concept="2tJIrI" id="1iOpS24$iSY" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24$iTH" role="jymVt">
      <property role="TrG5h" value="setEditorShift" />
      <node concept="3clFbS" id="1iOpS24$iTK" role="3clF47" />
      <node concept="3Tm1VV" id="1iOpS24$iTL" role="1B3o_S" />
      <node concept="3cqZAl" id="1iOpS24$iT$" role="3clF45" />
      <node concept="37vLTG" id="1iOpS24$j0l" role="3clF46">
        <property role="TrG5h" value="origin" />
        <node concept="3uibUv" id="1iOpS24$j0k" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1iOpS24$iQC" role="1B3o_S" />
    <node concept="3uibUv" id="1iOpS24$iSS" role="3HQHJm">
      <ref role="3uigEE" node="17nGqbJdbfv" resolve="SceneViewpoint" />
    </node>
  </node>
  <node concept="312cEu" id="1Oxt8dqZWeT">
    <property role="TrG5h" value="LayoutUtil" />
    <node concept="2tJIrI" id="7qPnRGFzkWo" role="jymVt" />
    <node concept="2tJIrI" id="7qPnRGFzado" role="jymVt" />
    <node concept="2YIFZL" id="7qPnRGFzb_r" role="jymVt">
      <property role="TrG5h" value="getLineSize" />
      <node concept="3clFbS" id="7qPnRGFzb_v" role="3clF47">
        <node concept="3cpWs8" id="7qPnRGFzb_w" role="3cqZAp">
          <node concept="3cpWsn" id="7qPnRGFzb_x" role="3cpWs9">
            <property role="TrG5h" value="sizeFromStyle" />
            <node concept="3uibUv" id="7qPnRGFzb_y" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
            <node concept="2OqwBi" id="7qPnRGFzb_z" role="33vP2m">
              <node concept="37vLTw" id="7qPnRGFzcEh" role="2Oq$k0">
                <ref role="3cqZAo" node="7qPnRGFzb_X" resolve="style" />
              </node>
              <node concept="liA8E" id="7qPnRGFzb__" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="7qPnRGFzb_A" role="37wK5m">
                  <ref role="3cqZAo" to="5ueo:~StyleAttributes.FONT_SIZE" resolve="FONT_SIZE" />
                  <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7qPnRGFzb_B" role="3cqZAp">
          <node concept="3cpWsn" id="7qPnRGFzb_C" role="3cpWs9">
            <property role="TrG5h" value="size" />
            <node concept="10Oyi0" id="7qPnRGFzb_D" role="1tU5fm" />
            <node concept="3K4zz7" id="7qPnRGFzb_E" role="33vP2m">
              <node concept="2OqwBi" id="7qPnRGFzb_F" role="3K4E3e">
                <node concept="2YIFZM" id="7qPnRGFzb_G" role="2Oq$k0">
                  <ref role="1Pybhc" to="exr9:~EditorSettings" resolve="EditorSettings" />
                  <ref role="37wK5l" to="exr9:~EditorSettings.getInstance()" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="7qPnRGFzb_H" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorSettings.getFontSize()" resolve="getFontSize" />
                </node>
              </node>
              <node concept="37vLTw" id="7qPnRGFzb_I" role="3K4GZi">
                <ref role="3cqZAo" node="7qPnRGFzb_x" resolve="sizeFromStyle" />
              </node>
              <node concept="3clFbC" id="7qPnRGFzb_J" role="3K4Cdx">
                <node concept="10Nm6u" id="7qPnRGFzb_K" role="3uHU7w" />
                <node concept="37vLTw" id="7qPnRGFzb_L" role="3uHU7B">
                  <ref role="3cqZAo" node="7qPnRGFzb_x" resolve="sizeFromStyle" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7qPnRGFzb_M" role="3cqZAp">
          <node concept="37vLTw" id="7qPnRGFzb_W" role="3cqZAk">
            <ref role="3cqZAo" node="7qPnRGFzb_C" resolve="size" />
          </node>
        </node>
      </node>
      <node concept="10Oyi0" id="7qPnRGFzb_u" role="3clF45" />
      <node concept="37vLTG" id="7qPnRGFzb_X" role="3clF46">
        <property role="TrG5h" value="style" />
        <node concept="3uibUv" id="7qPnRGFzb_Y" role="1tU5fm">
          <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7qPnRGFzBiL" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1y1FD3r10sk" role="jymVt" />
    <node concept="2YIFZL" id="1y1FD3qMQQ8" role="jymVt">
      <property role="TrG5h" value="setLineSize" />
      <node concept="3clFbS" id="1y1FD3qMQQ9" role="3clF47">
        <node concept="3clFbJ" id="1y1FD3qZpTB" role="3cqZAp">
          <node concept="3clFbS" id="1y1FD3qZpTD" role="3clFbx">
            <node concept="3clFbF" id="1y1FD3qZrfR" role="3cqZAp">
              <node concept="37vLTI" id="1y1FD3qZrhK" role="3clFbG">
                <node concept="37vLTw" id="1y1FD3r10gb" role="37vLTJ">
                  <ref role="3cqZAo" node="1y1FD3qMR3H" resolve="fontSize" />
                </node>
                <node concept="3cmrfG" id="1y1FD3r0QUB" role="37vLTx">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOVzh" id="1y1FD3qZr8Q" role="3clFbw">
            <node concept="3cmrfG" id="1y1FD3r0QQA" role="3uHU7w">
              <property role="3cmrfH" value="1" />
            </node>
            <node concept="37vLTw" id="1y1FD3r108G" role="3uHU7B">
              <ref role="3cqZAo" node="1y1FD3qMR3H" resolve="fontSize" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4FRweWLxCKS" role="3cqZAp">
          <node concept="3cpWsn" id="4FRweWLxCKT" role="3cpWs9">
            <property role="TrG5h" value="current" />
            <node concept="3uibUv" id="4FRweWLxCBf" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~Integer" resolve="Integer" />
            </node>
            <node concept="2OqwBi" id="4FRweWLxCKU" role="33vP2m">
              <node concept="37vLTw" id="4FRweWLxCKV" role="2Oq$k0">
                <ref role="3cqZAo" node="1y1FD3qMQQC" resolve="style" />
              </node>
              <node concept="liA8E" id="4FRweWLxCKW" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="4FRweWLxCKX" role="37wK5m">
                  <ref role="3cqZAo" to="5ueo:~StyleAttributes.FONT_SIZE" resolve="FONT_SIZE" />
                  <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4FRweWLzwqj" role="3cqZAp">
          <node concept="3clFbS" id="4FRweWLzwql" role="3clFbx">
            <node concept="3clFbJ" id="4FRweWLzyvt" role="3cqZAp">
              <node concept="3clFbS" id="4FRweWLzyvv" role="3clFbx">
                <node concept="3cpWs6" id="4FRweWLzyX5" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="4FRweWLxDK_" role="3clFbw">
                <node concept="37vLTw" id="4FRweWLxE6p" role="3uHU7w">
                  <ref role="3cqZAo" node="1y1FD3qMR3H" resolve="fontSize" />
                </node>
                <node concept="2OqwBi" id="4FRweWLxJrZ" role="3uHU7B">
                  <node concept="37vLTw" id="4FRweWLxD1_" role="2Oq$k0">
                    <ref role="3cqZAo" node="4FRweWLxCKT" resolve="current" />
                  </node>
                  <node concept="liA8E" id="4FRweWLxJWi" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Integer.intValue()" resolve="intValue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4FRweWLzxMH" role="3clFbw">
            <node concept="10Nm6u" id="4FRweWLzytA" role="3uHU7w" />
            <node concept="37vLTw" id="4FRweWLzwUg" role="3uHU7B">
              <ref role="3cqZAo" node="4FRweWLxCKT" resolve="current" />
            </node>
          </node>
          <node concept="9aQIb" id="4FRweWLzyYL" role="9aQIa">
            <node concept="3clFbS" id="4FRweWLzyYM" role="9aQI4">
              <node concept="3clFbJ" id="4FRweWLzzsv" role="3cqZAp">
                <node concept="3clFbS" id="4FRweWLzzsx" role="3clFbx">
                  <node concept="3cpWs6" id="4FRweWLz_lT" role="3cqZAp" />
                </node>
                <node concept="3clFbC" id="4FRweWLz$r3" role="3clFbw">
                  <node concept="37vLTw" id="4FRweWLz$Tm" role="3uHU7w">
                    <ref role="3cqZAo" node="1y1FD3qMR3H" resolve="fontSize" />
                  </node>
                  <node concept="2OqwBi" id="4FRweWLzzsK" role="3uHU7B">
                    <node concept="2YIFZM" id="4FRweWLzzsL" role="2Oq$k0">
                      <ref role="1Pybhc" to="exr9:~EditorSettings" resolve="EditorSettings" />
                      <ref role="37wK5l" to="exr9:~EditorSettings.getInstance()" resolve="getInstance" />
                    </node>
                    <node concept="liA8E" id="4FRweWLzzsM" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorSettings.getFontSize()" resolve="getFontSize" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1y1FD3qMTNT" role="3cqZAp">
          <node concept="2OqwBi" id="1y1FD3qMU00" role="3clFbG">
            <node concept="37vLTw" id="1y1FD3qMTNR" role="2Oq$k0">
              <ref role="3cqZAo" node="1y1FD3qMQQC" resolve="style" />
            </node>
            <node concept="liA8E" id="1y1FD3qMU6M" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~Style.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object)" resolve="set" />
              <node concept="10M0yZ" id="1y1FD3qMU7E" role="37wK5m">
                <ref role="3cqZAo" to="5ueo:~StyleAttributes.FONT_SIZE" resolve="FONT_SIZE" />
                <ref role="1PxDUh" to="5ueo:~StyleAttributes" resolve="StyleAttributes" />
              </node>
              <node concept="37vLTw" id="1y1FD3r10ib" role="37wK5m">
                <ref role="3cqZAo" node="1y1FD3qMR3H" resolve="fontSize" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1y1FD3qMXWg" role="3clF45" />
      <node concept="37vLTG" id="1y1FD3qMQQC" role="3clF46">
        <property role="TrG5h" value="style" />
        <node concept="3uibUv" id="1y1FD3qMQQD" role="1tU5fm">
          <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
        </node>
      </node>
      <node concept="37vLTG" id="1y1FD3qMR3H" role="3clF46">
        <property role="TrG5h" value="fontSize" />
        <node concept="10Oyi0" id="1y1FD3qMRbl" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="1y1FD3qMQQE" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7qPnRGFzao1" role="jymVt" />
    <node concept="3Tm1VV" id="1Oxt8dqZWeU" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2syzu7qKgYb">
    <property role="TrG5h" value="ExtendedLayoutModel" />
    <node concept="2tJIrI" id="2syzu7qKh0X" role="jymVt" />
    <node concept="312cEg" id="2syzu7qKzy0" role="jymVt">
      <property role="TrG5h" value="myBaseModel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2syzu7qKyiU" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7qKz2q" role="1tU5fm">
        <ref role="3uigEE" node="1KCfUoKQeCd" resolve="LayoutModel" />
        <node concept="16syzq" id="2syzu7qMJ6G" role="11_B2D">
          <ref role="16sUi3" node="2syzu7qMzLG" resolve="OrigT" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2syzu7qKSja" role="jymVt">
      <property role="TrG5h" value="myExtensionsProvider" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2syzu7qK$hK" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7qK_A8" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="16syzq" id="2syzu7qMH$r" role="11_B2D">
          <ref role="16sUi3" node="2syzu7qMzLG" resolve="OrigT" />
        </node>
        <node concept="3uibUv" id="2syzu7qKS10" role="11_B2D">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="16syzq" id="2syzu7qKS3W" role="11_B2D">
            <ref role="16sUi3" node="2syzu7qKhmg" resolve="ExtT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2syzu7qKWbP" role="jymVt">
      <property role="TrG5h" value="myExtensionPositionProvider" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2syzu7qKUjv" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7qKUMi" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
        <node concept="16syzq" id="2syzu7qKVv$" role="11_B2D">
          <ref role="16sUi3" node="2syzu7qKhmg" resolve="ExtT" />
        </node>
        <node concept="3uibUv" id="2syzu7qKVJi" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="2syzu7qKVYb" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2syzu7qMxKz" role="jymVt">
      <property role="TrG5h" value="myExtensionBoundsProvider" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2syzu7qMxK$" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7qMxK_" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
        <node concept="16syzq" id="2syzu7qMxKA" role="11_B2D">
          <ref role="16sUi3" node="2syzu7qKhmg" resolve="ExtT" />
        </node>
        <node concept="3uibUv" id="2syzu7qMxKB" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="2syzu7qMyDx" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2syzu7qK$0O" role="jymVt" />
    <node concept="312cEg" id="2syzu7qKRvZ" role="jymVt">
      <property role="TrG5h" value="myExtensions" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2syzu7qKQu_" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7qKQJZ" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="16syzq" id="2syzu7qMRQw" role="11_B2D">
          <ref role="16sUi3" node="2syzu7qMzLG" resolve="OrigT" />
        </node>
        <node concept="3uibUv" id="2syzu7qKRdQ" role="11_B2D">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="16syzq" id="2syzu7qKRgL" role="11_B2D">
            <ref role="16sUi3" node="2syzu7qKhmg" resolve="ExtT" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="2syzu7qKWM2" role="33vP2m">
        <node concept="1pGfFk" id="2syzu7qLboJ" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="16syzq" id="2syzu7qMS$w" role="1pMfVU">
            <ref role="16sUi3" node="2syzu7qMzLG" resolve="OrigT" />
          </node>
          <node concept="3uibUv" id="2syzu7qLcK9" role="1pMfVU">
            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
            <node concept="16syzq" id="2syzu7qLd5A" role="11_B2D">
              <ref role="16sUi3" node="2syzu7qKhmg" resolve="ExtT" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2syzu7qPxX0" role="jymVt">
      <property role="TrG5h" value="myExtensionOrigin" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2syzu7qPxX1" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7qPxX2" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="16syzq" id="2syzu7qPxX5" role="11_B2D">
          <ref role="16sUi3" node="2syzu7qKhmg" resolve="ExtT" />
        </node>
        <node concept="16syzq" id="2syzu7qPxX3" role="11_B2D">
          <ref role="16sUi3" node="2syzu7qMzLG" resolve="OrigT" />
        </node>
      </node>
      <node concept="2ShNRf" id="2syzu7qPxX6" role="33vP2m">
        <node concept="1pGfFk" id="2syzu7qPxX7" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="16syzq" id="2syzu7qPAK5" role="1pMfVU">
            <ref role="16sUi3" node="2syzu7qKhmg" resolve="ExtT" />
          </node>
          <node concept="16syzq" id="2syzu7qPAK6" role="1pMfVU">
            <ref role="16sUi3" node="2syzu7qMzLG" resolve="OrigT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2syzu7qK$1v" role="jymVt" />
    <node concept="3clFbW" id="2syzu7qLq0A" role="jymVt">
      <node concept="37vLTG" id="2syzu7qLqmY" role="3clF46">
        <property role="TrG5h" value="baseModel" />
        <node concept="3uibUv" id="2syzu7qLqn0" role="1tU5fm">
          <ref role="3uigEE" node="1KCfUoKQeCd" resolve="LayoutModel" />
          <node concept="16syzq" id="2syzu7qMJXC" role="11_B2D">
            <ref role="16sUi3" node="2syzu7qMzLG" resolve="OrigT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2syzu7qLqn2" role="3clF46">
        <property role="TrG5h" value="extensionPositionProvider" />
        <node concept="3uibUv" id="2syzu7qLqn4" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
          <node concept="16syzq" id="2syzu7qLqn5" role="11_B2D">
            <ref role="16sUi3" node="2syzu7qKhmg" resolve="ExtT" />
          </node>
          <node concept="3uibUv" id="2syzu7qLqn6" role="11_B2D">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
          <node concept="3uibUv" id="2syzu7qLqn7" role="11_B2D">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2syzu7qMwEx" role="3clF46">
        <property role="TrG5h" value="extensionBoundsProivder" />
        <node concept="3uibUv" id="2syzu7qMx3m" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
          <node concept="16syzq" id="2syzu7qMx8M" role="11_B2D">
            <ref role="16sUi3" node="2syzu7qKhmg" resolve="ExtT" />
          </node>
          <node concept="3uibUv" id="2syzu7qMxqE" role="11_B2D">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
          <node concept="3uibUv" id="2syzu7qMxGi" role="11_B2D">
            <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2syzu7qLqn8" role="3clF46">
        <property role="TrG5h" value="extensionsProvider" />
        <node concept="3uibUv" id="2syzu7qLqna" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
          <node concept="16syzq" id="2syzu7qMHTr" role="11_B2D">
            <ref role="16sUi3" node="2syzu7qMzLG" resolve="OrigT" />
          </node>
          <node concept="3uibUv" id="2syzu7qLqnc" role="11_B2D">
            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
            <node concept="16syzq" id="2syzu7qLqnd" role="11_B2D">
              <ref role="16sUi3" node="2syzu7qKhmg" resolve="ExtT" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="2syzu7qLq0C" role="3clF45" />
      <node concept="3Tm1VV" id="2syzu7qLq0D" role="1B3o_S" />
      <node concept="3clFbS" id="2syzu7qLq0E" role="3clF47">
        <node concept="3clFbF" id="2syzu7qLqLJ" role="3cqZAp">
          <node concept="37vLTI" id="2syzu7qLsL$" role="3clFbG">
            <node concept="37vLTw" id="2syzu7qLtdF" role="37vLTx">
              <ref role="3cqZAo" node="2syzu7qLqmY" resolve="baseModel" />
            </node>
            <node concept="37vLTw" id="2syzu7qLqLI" role="37vLTJ">
              <ref role="3cqZAo" node="2syzu7qKzy0" resolve="myBaseModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2syzu7qLvVg" role="3cqZAp">
          <node concept="37vLTI" id="2syzu7qLxne" role="3clFbG">
            <node concept="37vLTw" id="2syzu7qLxL8" role="37vLTx">
              <ref role="3cqZAo" node="2syzu7qLqn8" resolve="extensionsProvider" />
            </node>
            <node concept="37vLTw" id="2syzu7qLvVe" role="37vLTJ">
              <ref role="3cqZAo" node="2syzu7qKSja" resolve="myExtensionsProvider" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2syzu7qLtsG" role="3cqZAp">
          <node concept="37vLTI" id="2syzu7qLvh$" role="3clFbG">
            <node concept="37vLTw" id="2syzu7qLvF2" role="37vLTx">
              <ref role="3cqZAo" node="2syzu7qLqn2" resolve="extensionPositionProvider" />
            </node>
            <node concept="37vLTw" id="2syzu7qLtsE" role="37vLTJ">
              <ref role="3cqZAo" node="2syzu7qKWbP" resolve="myExtensionPositionProvider" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2syzu7qML6C" role="3cqZAp">
          <node concept="37vLTI" id="2syzu7qML6D" role="3clFbG">
            <node concept="37vLTw" id="2syzu7qMLWW" role="37vLTx">
              <ref role="3cqZAo" node="2syzu7qMwEx" resolve="extensionBoundsProivder" />
            </node>
            <node concept="37vLTw" id="2syzu7qMLA7" role="37vLTJ">
              <ref role="3cqZAo" node="2syzu7qMxKz" resolve="myExtensionBoundsProvider" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2syzu7qMTgQ" role="3cqZAp" />
        <node concept="2Gpval" id="Ue8k5tvr0M" role="3cqZAp">
          <node concept="2GrKxI" id="Ue8k5tvr0O" role="2Gsz3X">
            <property role="TrG5h" value="component" />
          </node>
          <node concept="2OqwBi" id="Ue8k5tvtB_" role="2GsD0m">
            <node concept="37vLTw" id="Ue8k5tvsj1" role="2Oq$k0">
              <ref role="3cqZAo" node="2syzu7qKzy0" resolve="myBaseModel" />
            </node>
            <node concept="liA8E" id="Ue8k5tvveZ" role="2OqNvi">
              <ref role="37wK5l" node="Ue8k5tu8_v" resolve="components" />
            </node>
          </node>
          <node concept="3clFbS" id="Ue8k5tvr0S" role="2LFqv$">
            <node concept="3cpWs8" id="Ue8k5tvEbp" role="3cqZAp">
              <node concept="3cpWsn" id="Ue8k5tvEbq" role="3cpWs9">
                <property role="TrG5h" value="activePosition" />
                <node concept="3uibUv" id="Ue8k5tvEbc" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                </node>
                <node concept="2OqwBi" id="Ue8k5tvEbr" role="33vP2m">
                  <node concept="37vLTw" id="Ue8k5tvEbs" role="2Oq$k0">
                    <ref role="3cqZAo" node="2syzu7qKzy0" resolve="myBaseModel" />
                  </node>
                  <node concept="liA8E" id="Ue8k5tvEbt" role="2OqNvi">
                    <ref role="37wK5l" node="1KCfUoKRX6g" resolve="getActivePosition" />
                    <node concept="2GrUjf" id="Ue8k5tvEbu" role="37wK5m">
                      <ref role="2Gs0qQ" node="Ue8k5tvr0O" resolve="component" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="Ue8k5tvyfc" role="3cqZAp">
              <node concept="1rXfSq" id="Ue8k5tvyfb" role="3clFbG">
                <ref role="37wK5l" node="Ue8k5tvgRt" resolve="addComponent" />
                <node concept="2GrUjf" id="Ue8k5tvyQZ" role="37wK5m">
                  <ref role="2Gs0qQ" node="Ue8k5tvr0O" resolve="component" />
                </node>
                <node concept="2OqwBi" id="Ue8k5tvG6V" role="37wK5m">
                  <node concept="37vLTw" id="Ue8k5tvEbv" role="2Oq$k0">
                    <ref role="3cqZAo" node="Ue8k5tvEbq" resolve="activePosition" />
                  </node>
                  <node concept="2OwXpG" id="Ue8k5twpO4" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                  </node>
                </node>
                <node concept="2OqwBi" id="Ue8k5twtEp" role="37wK5m">
                  <node concept="37vLTw" id="Ue8k5twss6" role="2Oq$k0">
                    <ref role="3cqZAo" node="Ue8k5tvEbq" resolve="activePosition" />
                  </node>
                  <node concept="2OwXpG" id="Ue8k5twZER" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="Ue8k5tvfiI" role="3cqZAp" />
        <node concept="3clFbF" id="2syzu7qMT$j" role="3cqZAp">
          <node concept="2OqwBi" id="2syzu7qMUgg" role="3clFbG">
            <node concept="37vLTw" id="2syzu7qMT$h" role="2Oq$k0">
              <ref role="3cqZAo" node="2syzu7qKzy0" resolve="myBaseModel" />
            </node>
            <node concept="liA8E" id="2syzu7qN1Bl" role="2OqNvi">
              <ref role="37wK5l" node="1KCfUoKRVCm" resolve="addListener" />
              <node concept="2ShNRf" id="2syzu7qN1Z$" role="37wK5m">
                <node concept="YeOm9" id="2syzu7qN2KI" role="2ShVmc">
                  <node concept="1Y3b0j" id="2syzu7qN2KL" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" node="1KCfUoKRV4f" resolve="ROLayoutModel.Listener" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="2syzu7qN2KM" role="1B3o_S" />
                    <node concept="3clFb_" id="2syzu7qN2KO" role="jymVt">
                      <property role="TrG5h" value="onComponentAdded" />
                      <node concept="37vLTG" id="2syzu7qN2KP" role="3clF46">
                        <property role="TrG5h" value="component" />
                        <node concept="16syzq" id="2syzu7qN2QC" role="1tU5fm">
                          <ref role="16sUi3" node="2syzu7qMzLG" resolve="OrigT" />
                        </node>
                        <node concept="2AHcQZ" id="2syzu7qN2KR" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2syzu7qN2KS" role="3clF46">
                        <property role="TrG5h" value="x" />
                        <node concept="10Oyi0" id="2syzu7qN2KT" role="1tU5fm" />
                      </node>
                      <node concept="37vLTG" id="2syzu7qN2KU" role="3clF46">
                        <property role="TrG5h" value="y" />
                        <node concept="10Oyi0" id="2syzu7qN2KV" role="1tU5fm" />
                      </node>
                      <node concept="3Tm1VV" id="2syzu7qN2KX" role="1B3o_S" />
                      <node concept="3cqZAl" id="2syzu7qN2KY" role="3clF45" />
                      <node concept="3clFbS" id="2syzu7qN2KZ" role="3clF47">
                        <node concept="3clFbF" id="2syzu7qNfng" role="3cqZAp">
                          <node concept="1rXfSq" id="2syzu7qNfnf" role="3clFbG">
                            <ref role="37wK5l" node="2syzu7qN4_l" resolve="fireAdded" />
                            <node concept="37vLTw" id="2syzu7qNfUc" role="37wK5m">
                              <ref role="3cqZAo" node="2syzu7qN2KP" resolve="component" />
                            </node>
                            <node concept="37vLTw" id="2syzu7qNgeD" role="37wK5m">
                              <ref role="3cqZAo" node="2syzu7qN2KS" resolve="x" />
                            </node>
                            <node concept="37vLTw" id="2syzu7qNgvO" role="37wK5m">
                              <ref role="3cqZAo" node="2syzu7qN2KU" resolve="y" />
                            </node>
                          </node>
                          <node concept="15s5l7" id="2syzu7qNjvH" role="lGtFl">
                            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: type @ExtendedLayoutModel.OrigT extends @ExtendedLayoutModel.ExtT is not a subtype of @ROLayoutModelBase.T&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/6902868426314509210]&quot;;" />
                          </node>
                        </node>
                        <node concept="3clFbF" id="Ue8k5tvgR$" role="3cqZAp">
                          <node concept="1rXfSq" id="Ue8k5tvgRz" role="3clFbG">
                            <ref role="37wK5l" node="Ue8k5tvgRt" resolve="addComponent" />
                            <node concept="37vLTw" id="Ue8k5tvgRw" role="37wK5m">
                              <ref role="3cqZAo" node="2syzu7qN2KP" resolve="component" />
                            </node>
                            <node concept="37vLTw" id="Ue8k5tvgRx" role="37wK5m">
                              <ref role="3cqZAo" node="2syzu7qN2KS" resolve="x" />
                            </node>
                            <node concept="37vLTw" id="Ue8k5tvgRy" role="37wK5m">
                              <ref role="3cqZAo" node="2syzu7qN2KU" resolve="y" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2tJIrI" id="2syzu7qOJLx" role="jymVt" />
                    <node concept="3clFb_" id="2syzu7qN2L1" role="jymVt">
                      <property role="TrG5h" value="onComponentRemoved" />
                      <node concept="37vLTG" id="2syzu7qN2L2" role="3clF46">
                        <property role="TrG5h" value="component" />
                        <node concept="16syzq" id="2syzu7qN2QD" role="1tU5fm">
                          <ref role="16sUi3" node="2syzu7qMzLG" resolve="OrigT" />
                        </node>
                        <node concept="2AHcQZ" id="2syzu7qN2L4" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="2syzu7qN2L6" role="1B3o_S" />
                      <node concept="3cqZAl" id="2syzu7qN2L7" role="3clF45" />
                      <node concept="3clFbS" id="2syzu7qN2L8" role="3clF47">
                        <node concept="3clFbF" id="2syzu7qOU40" role="3cqZAp">
                          <node concept="1rXfSq" id="2syzu7qOU41" role="3clFbG">
                            <ref role="37wK5l" node="2syzu7qN4Bc" resolve="fireRemoved" />
                            <node concept="37vLTw" id="2syzu7qOU42" role="37wK5m">
                              <ref role="3cqZAo" node="2syzu7qN2L2" resolve="component" />
                            </node>
                          </node>
                          <node concept="15s5l7" id="2syzu7qOU45" role="lGtFl">
                            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: type @ExtendedLayoutModel.OrigT extends @ExtendedLayoutModel.ExtT is not a subtype of @ROLayoutModelBase.T&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/6902868426314509210]&quot;;" />
                          </node>
                        </node>
                        <node concept="3cpWs8" id="2syzu7qOU46" role="3cqZAp">
                          <node concept="3cpWsn" id="2syzu7qOU47" role="3cpWs9">
                            <property role="TrG5h" value="extensions" />
                            <node concept="3uibUv" id="2syzu7qOU48" role="1tU5fm">
                              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                              <node concept="16syzq" id="2syzu7qOU49" role="11_B2D">
                                <ref role="16sUi3" node="2syzu7qKhmg" resolve="ExtT" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2syzu7qOU4a" role="33vP2m">
                              <node concept="37vLTw" id="2syzu7qOU4b" role="2Oq$k0">
                                <ref role="3cqZAo" node="2syzu7qKSja" resolve="myExtensionsProvider" />
                              </node>
                              <node concept="liA8E" id="2syzu7qOU4c" role="2OqNvi">
                                <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                                <node concept="37vLTw" id="2syzu7qOU4d" role="37wK5m">
                                  <ref role="3cqZAo" node="2syzu7qN2L2" resolve="component" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2syzu7qOU4e" role="3cqZAp">
                          <node concept="2OqwBi" id="2syzu7qOU4f" role="3clFbG">
                            <node concept="37vLTw" id="2syzu7qOU4g" role="2Oq$k0">
                              <ref role="3cqZAo" node="2syzu7qKRvZ" resolve="myExtensions" />
                            </node>
                            <node concept="liA8E" id="2syzu7qOU4h" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object)" resolve="remove" />
                              <node concept="37vLTw" id="2syzu7qOU4i" role="37wK5m">
                                <ref role="3cqZAo" node="2syzu7qN2L2" resolve="component" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2Gpval" id="2syzu7qOU4r" role="3cqZAp">
                          <node concept="2GrKxI" id="2syzu7qOU4s" role="2Gsz3X">
                            <property role="TrG5h" value="extension" />
                          </node>
                          <node concept="37vLTw" id="2syzu7qOU4t" role="2GsD0m">
                            <ref role="3cqZAo" node="2syzu7qOU47" resolve="extensions" />
                          </node>
                          <node concept="3clFbS" id="2syzu7qOU4u" role="2LFqv$">
                            <node concept="3clFbF" id="2syzu7qPIbu" role="3cqZAp">
                              <node concept="2OqwBi" id="2syzu7qPIbv" role="3clFbG">
                                <node concept="37vLTw" id="2syzu7qPIbw" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2syzu7qPxX0" resolve="myExtensionOrigin" />
                                </node>
                                <node concept="liA8E" id="2syzu7qPIbx" role="2OqNvi">
                                  <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object)" resolve="remove" />
                                  <node concept="2GrUjf" id="2syzu7qPIby" role="37wK5m">
                                    <ref role="2Gs0qQ" node="2syzu7qOU4s" resolve="extension" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="2syzu7qOU4B" role="3cqZAp">
                              <node concept="1rXfSq" id="2syzu7qOU4C" role="3clFbG">
                                <ref role="37wK5l" node="2syzu7qN4Bc" resolve="fireRemoved" />
                                <node concept="2GrUjf" id="2syzu7qOU4D" role="37wK5m">
                                  <ref role="2Gs0qQ" node="2syzu7qOU4s" resolve="extension" />
                                </node>
                              </node>
                              <node concept="15s5l7" id="2syzu7qOU4K" role="lGtFl">
                                <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: type @ExtendedLayoutModel.ExtT is not a subtype of @ROLayoutModelBase.T&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/6902868426314509210]&quot;;" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2tJIrI" id="2syzu7qOKoG" role="jymVt" />
                    <node concept="3clFb_" id="2syzu7qN2La" role="jymVt">
                      <property role="TrG5h" value="onComponentsMoved" />
                      <node concept="3Tm1VV" id="2syzu7qN2Lc" role="1B3o_S" />
                      <node concept="3cqZAl" id="2syzu7qN2Ld" role="3clF45" />
                      <node concept="37vLTG" id="2syzu7qN2Le" role="3clF46">
                        <property role="TrG5h" value="components" />
                        <node concept="2AHcQZ" id="2syzu7qN2Lf" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                        <node concept="3uibUv" id="2syzu7qN2Lg" role="1tU5fm">
                          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                          <node concept="16syzq" id="2syzu7qN2QE" role="11_B2D">
                            <ref role="16sUi3" node="2syzu7qMzLG" resolve="OrigT" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="2syzu7qN2Li" role="3clF46">
                        <property role="TrG5h" value="dx" />
                        <node concept="10Oyi0" id="2syzu7qN2Lj" role="1tU5fm" />
                      </node>
                      <node concept="37vLTG" id="2syzu7qN2Lk" role="3clF46">
                        <property role="TrG5h" value="dy" />
                        <node concept="10Oyi0" id="2syzu7qN2Ll" role="1tU5fm" />
                      </node>
                      <node concept="37vLTG" id="2syzu7qN2Lm" role="3clF46">
                        <property role="TrG5h" value="completed" />
                        <node concept="10P_77" id="2syzu7qN2Ln" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="2syzu7qN2Lo" role="3clF47">
                        <node concept="3cpWs8" id="2syzu7qOYRR" role="3cqZAp">
                          <node concept="3cpWsn" id="2syzu7qOYRS" role="3cpWs9">
                            <property role="TrG5h" value="all" />
                            <node concept="3uibUv" id="2syzu7qOYRP" role="1tU5fm">
                              <ref role="3uigEE" to="33ny:~HashSet" resolve="HashSet" />
                              <node concept="16syzq" id="2syzu7r72a7" role="11_B2D">
                                <ref role="16sUi3" node="2syzu7r6CGV" resolve="ResT" />
                              </node>
                            </node>
                            <node concept="2ShNRf" id="2syzu7qOZEI" role="33vP2m">
                              <node concept="1pGfFk" id="2syzu7qP0lu" role="2ShVmc">
                                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                                <node concept="16syzq" id="2syzu7r73mF" role="1pMfVU">
                                  <ref role="16sUi3" node="2syzu7r6CGV" resolve="ResT" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2syzu7qP1bF" role="3cqZAp">
                          <node concept="2OqwBi" id="2syzu7qP2q1" role="3clFbG">
                            <node concept="37vLTw" id="2syzu7qP1bD" role="2Oq$k0">
                              <ref role="3cqZAo" node="2syzu7qOYRS" resolve="all" />
                            </node>
                            <node concept="liA8E" id="2syzu7qP5Tp" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~AbstractCollection.addAll(java.util.Collection)" resolve="addAll" />
                              <node concept="37vLTw" id="2syzu7qP6OT" role="37wK5m">
                                <ref role="3cqZAo" node="2syzu7qN2Le" resolve="components" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2Gpval" id="2syzu7qP7xH" role="3cqZAp">
                          <node concept="2GrKxI" id="2syzu7qP7xJ" role="2Gsz3X">
                            <property role="TrG5h" value="component" />
                          </node>
                          <node concept="37vLTw" id="2syzu7qP8wM" role="2GsD0m">
                            <ref role="3cqZAo" node="2syzu7qN2Le" resolve="components" />
                          </node>
                          <node concept="3clFbS" id="2syzu7qP7xN" role="2LFqv$">
                            <node concept="3cpWs8" id="5OPYJ1horeM" role="3cqZAp">
                              <node concept="3cpWsn" id="5OPYJ1horeN" role="3cpWs9">
                                <property role="TrG5h" value="ext" />
                                <node concept="3uibUv" id="5OPYJ1homqS" role="1tU5fm">
                                  <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                                  <node concept="16syzq" id="5OPYJ1homqV" role="11_B2D">
                                    <ref role="16sUi3" node="2syzu7qKhmg" resolve="ExtT" />
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="5OPYJ1horeO" role="33vP2m">
                                  <node concept="37vLTw" id="5OPYJ1horeP" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2syzu7qKRvZ" resolve="myExtensions" />
                                  </node>
                                  <node concept="liA8E" id="5OPYJ1horeQ" role="2OqNvi">
                                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                                    <node concept="2GrUjf" id="5OPYJ1horeR" role="37wK5m">
                                      <ref role="2Gs0qQ" node="2syzu7qP7xJ" resolve="component" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="5OPYJ1hotQM" role="3cqZAp">
                              <node concept="3clFbS" id="5OPYJ1hotQO" role="3clFbx">
                                <node concept="3clFbF" id="2syzu7qP990" role="3cqZAp">
                                  <node concept="2OqwBi" id="2syzu7qPa9f" role="3clFbG">
                                    <node concept="37vLTw" id="2syzu7qP98Z" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2syzu7qOYRS" resolve="all" />
                                    </node>
                                    <node concept="liA8E" id="2syzu7qPdCB" role="2OqNvi">
                                      <ref role="37wK5l" to="33ny:~AbstractCollection.addAll(java.util.Collection)" resolve="addAll" />
                                      <node concept="37vLTw" id="5OPYJ1horeS" role="37wK5m">
                                        <ref role="3cqZAo" node="5OPYJ1horeN" resolve="ext" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3y3z36" id="5OPYJ1hovfM" role="3clFbw">
                                <node concept="10Nm6u" id="5OPYJ1hovFb" role="3uHU7w" />
                                <node concept="37vLTw" id="5OPYJ1hotZu" role="3uHU7B">
                                  <ref role="3cqZAo" node="5OPYJ1horeN" resolve="ext" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2syzu7qPhiK" role="3cqZAp">
                          <node concept="15s5l7" id="6z_cCa85Rnv" role="lGtFl">
                            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: type @ROLayoutModelBase.T is not a subtype of @ExtendedLayoutModel.ResT&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/3216938209399927516,r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/6902868426314509210]&quot;;" />
                            <property role="huDt6" value="Error: type @ROLayoutModelBase.T is not a subtype of @ExtendedLayoutModel.ResT" />
                          </node>
                          <node concept="15s5l7" id="6z_cCa85QVA" role="lGtFl">
                            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: type @ExtendedLayoutModel.ResT is not a subtype of @ROLayoutModelBase.T&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/3216938209399927487,r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/6902868426314509210]&quot;;" />
                            <property role="huDt6" value="Error: type @ExtendedLayoutModel.ResT is not a subtype of @ROLayoutModelBase.T" />
                          </node>
                          <node concept="1rXfSq" id="2syzu7qPhiI" role="3clFbG">
                            <ref role="37wK5l" node="2XwVnrt0VrH" resolve="fireMoved" />
                            <node concept="37vLTw" id="2syzu7qPia6" role="37wK5m">
                              <ref role="3cqZAo" node="2syzu7qOYRS" resolve="all" />
                            </node>
                            <node concept="37vLTw" id="2syzu7qPizS" role="37wK5m">
                              <ref role="3cqZAo" node="2syzu7qN2Li" resolve="dx" />
                            </node>
                            <node concept="37vLTw" id="2syzu7qPiZU" role="37wK5m">
                              <ref role="3cqZAo" node="2syzu7qN2Lk" resolve="dy" />
                            </node>
                            <node concept="37vLTw" id="2syzu7qPj_D" role="37wK5m">
                              <ref role="3cqZAo" node="2syzu7qN2Lm" resolve="completed" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="16syzq" id="2syzu7qNi72" role="2Ghqu4">
                      <ref role="16sUi3" node="2syzu7qMzLG" resolve="OrigT" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Ue8k5tuo1V" role="jymVt" />
    <node concept="3clFb_" id="Ue8k5tvgRt" role="jymVt">
      <property role="TrG5h" value="addComponent" />
      <node concept="3Tm6S6" id="Ue8k5tvgRu" role="1B3o_S" />
      <node concept="3cqZAl" id="Ue8k5tvgRv" role="3clF45" />
      <node concept="37vLTG" id="Ue8k5tvgRg" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="Ue8k5tvgRh" role="1tU5fm">
          <ref role="16sUi3" node="2syzu7qMzLG" resolve="OrigT" />
        </node>
      </node>
      <node concept="37vLTG" id="Ue8k5tvgRi" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="Ue8k5tvgRj" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="Ue8k5tvgRk" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="Ue8k5tvgRl" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="Ue8k5tvgQu" role="3clF47">
        <node concept="3cpWs8" id="Ue8k5tvgQv" role="3cqZAp">
          <node concept="3cpWsn" id="Ue8k5tvgQw" role="3cpWs9">
            <property role="TrG5h" value="extensions" />
            <node concept="3uibUv" id="Ue8k5tvgQx" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="16syzq" id="Ue8k5tvgQy" role="11_B2D">
                <ref role="16sUi3" node="2syzu7qKhmg" resolve="ExtT" />
              </node>
            </node>
            <node concept="2OqwBi" id="Ue8k5tvgQz" role="33vP2m">
              <node concept="37vLTw" id="Ue8k5tvgQ$" role="2Oq$k0">
                <ref role="3cqZAo" node="2syzu7qKSja" resolve="myExtensionsProvider" />
              </node>
              <node concept="liA8E" id="Ue8k5tvgQ_" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                <node concept="37vLTw" id="Ue8k5tvgRn" role="37wK5m">
                  <ref role="3cqZAo" node="Ue8k5tvgRg" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ue8k5tvgQB" role="3cqZAp">
          <node concept="2OqwBi" id="Ue8k5tvgQC" role="3clFbG">
            <node concept="37vLTw" id="Ue8k5tvgQD" role="2Oq$k0">
              <ref role="3cqZAo" node="2syzu7qKRvZ" resolve="myExtensions" />
            </node>
            <node concept="liA8E" id="Ue8k5tvgQE" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="Ue8k5tvgRq" role="37wK5m">
                <ref role="3cqZAo" node="Ue8k5tvgRg" resolve="component" />
              </node>
              <node concept="37vLTw" id="Ue8k5tvgQG" role="37wK5m">
                <ref role="3cqZAo" node="Ue8k5tvgQw" resolve="extensions" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Ue8k5tvgQH" role="3cqZAp">
          <node concept="3cpWsn" id="Ue8k5tvgQI" role="3cpWs9">
            <property role="TrG5h" value="componentPosition" />
            <node concept="3uibUv" id="Ue8k5tvgQJ" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2ShNRf" id="Ue8k5tvgQK" role="33vP2m">
              <node concept="1pGfFk" id="Ue8k5tvgQL" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                <node concept="37vLTw" id="Ue8k5tvgRo" role="37wK5m">
                  <ref role="3cqZAo" node="Ue8k5tvgRi" resolve="x" />
                </node>
                <node concept="37vLTw" id="Ue8k5tvgRp" role="37wK5m">
                  <ref role="3cqZAo" node="Ue8k5tvgRk" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="Ue8k5tvgQO" role="3cqZAp">
          <node concept="2GrKxI" id="Ue8k5tvgQP" role="2Gsz3X">
            <property role="TrG5h" value="extension" />
          </node>
          <node concept="37vLTw" id="Ue8k5tvgQQ" role="2GsD0m">
            <ref role="3cqZAo" node="Ue8k5tvgQw" resolve="extensions" />
          </node>
          <node concept="3clFbS" id="Ue8k5tvgQR" role="2LFqv$">
            <node concept="3clFbF" id="Ue8k5tvgQS" role="3cqZAp">
              <node concept="2OqwBi" id="Ue8k5tvgQT" role="3clFbG">
                <node concept="37vLTw" id="Ue8k5tvgQU" role="2Oq$k0">
                  <ref role="3cqZAo" node="2syzu7qPxX0" resolve="myExtensionOrigin" />
                </node>
                <node concept="liA8E" id="Ue8k5tvgQV" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2GrUjf" id="Ue8k5tvgQW" role="37wK5m">
                    <ref role="2Gs0qQ" node="Ue8k5tvgQP" resolve="extension" />
                  </node>
                  <node concept="37vLTw" id="Ue8k5tvgRm" role="37wK5m">
                    <ref role="3cqZAo" node="Ue8k5tvgRg" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="Ue8k5tvgQY" role="3cqZAp">
              <node concept="3cpWsn" id="Ue8k5tvgQZ" role="3cpWs9">
                <property role="TrG5h" value="extensionPosition" />
                <node concept="3uibUv" id="Ue8k5tvgR0" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                </node>
                <node concept="2OqwBi" id="Ue8k5tvgR1" role="33vP2m">
                  <node concept="37vLTw" id="Ue8k5tvgR2" role="2Oq$k0">
                    <ref role="3cqZAo" node="2syzu7qKWbP" resolve="myExtensionPositionProvider" />
                  </node>
                  <node concept="liA8E" id="Ue8k5tvgR3" role="2OqNvi">
                    <ref role="37wK5l" to="82uw:~BiFunction.apply(java.lang.Object,java.lang.Object)" resolve="apply" />
                    <node concept="2GrUjf" id="Ue8k5tvgR4" role="37wK5m">
                      <ref role="2Gs0qQ" node="Ue8k5tvgQP" resolve="extension" />
                    </node>
                    <node concept="37vLTw" id="Ue8k5tvgR5" role="37wK5m">
                      <ref role="3cqZAo" node="Ue8k5tvgQI" resolve="componentPosition" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="Ue8k5tvgR6" role="3cqZAp">
              <node concept="1rXfSq" id="Ue8k5tvgR7" role="3clFbG">
                <ref role="37wK5l" node="2syzu7qN4_l" resolve="fireAdded" />
                <node concept="2GrUjf" id="Ue8k5tvgR8" role="37wK5m">
                  <ref role="2Gs0qQ" node="Ue8k5tvgQP" resolve="extension" />
                </node>
                <node concept="2OqwBi" id="Ue8k5tvgR9" role="37wK5m">
                  <node concept="37vLTw" id="Ue8k5tvgRa" role="2Oq$k0">
                    <ref role="3cqZAo" node="Ue8k5tvgQZ" resolve="extensionPosition" />
                  </node>
                  <node concept="2OwXpG" id="Ue8k5tvgRb" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                  </node>
                </node>
                <node concept="2OqwBi" id="Ue8k5tvgRc" role="37wK5m">
                  <node concept="37vLTw" id="Ue8k5tvgRd" role="2Oq$k0">
                    <ref role="3cqZAo" node="Ue8k5tvgQZ" resolve="extensionPosition" />
                  </node>
                  <node concept="2OwXpG" id="Ue8k5tvgRe" role="2OqNvi">
                    <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                  </node>
                </node>
              </node>
              <node concept="15s5l7" id="Ue8k5tvgRf" role="lGtFl">
                <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: type @ExtendedLayoutModel.ExtT is not a subtype of @ROLayoutModelBase.T&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/6902868426314509210]&quot;;" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Ue8k5tvk$F" role="jymVt" />
    <node concept="2tJIrI" id="Ue8k5tvkDS" role="jymVt" />
    <node concept="3clFb_" id="Ue8k5tuqts" role="jymVt">
      <property role="TrG5h" value="components" />
      <node concept="3Tm1VV" id="Ue8k5tuqtu" role="1B3o_S" />
      <node concept="3uibUv" id="Ue8k5tuqtv" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="16syzq" id="Ue8k5tuqt$" role="11_B2D">
          <ref role="16sUi3" node="2syzu7r6CGV" resolve="ResT" />
        </node>
      </node>
      <node concept="3clFbS" id="Ue8k5tuqt_" role="3clF47">
        <node concept="3cpWs8" id="Ue8k5tuN2$" role="3cqZAp">
          <node concept="3cpWsn" id="Ue8k5tuN2_" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="Ue8k5tuN2w" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~HashSet" resolve="HashSet" />
              <node concept="16syzq" id="Ue8k5tuN2z" role="11_B2D">
                <ref role="16sUi3" node="2syzu7r6CGV" resolve="ResT" />
              </node>
            </node>
            <node concept="2ShNRf" id="Ue8k5tuN2A" role="33vP2m">
              <node concept="1pGfFk" id="Ue8k5tuN2B" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="16syzq" id="Ue8k5tuN2C" role="1pMfVU">
                  <ref role="16sUi3" node="2syzu7r6CGV" resolve="ResT" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="Ue8k5tuOkG" role="3cqZAp">
          <node concept="2OqwBi" id="Ue8k5tuPl5" role="3clFbG">
            <node concept="37vLTw" id="Ue8k5tuOkE" role="2Oq$k0">
              <ref role="3cqZAo" node="Ue8k5tuN2_" resolve="res" />
            </node>
            <node concept="liA8E" id="Ue8k5tuSO5" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~AbstractCollection.addAll(java.util.Collection)" resolve="addAll" />
              <node concept="2OqwBi" id="Ue8k5tuTGL" role="37wK5m">
                <node concept="37vLTw" id="Ue8k5tuT6s" role="2Oq$k0">
                  <ref role="3cqZAo" node="2syzu7qKzy0" resolve="myBaseModel" />
                </node>
                <node concept="liA8E" id="Ue8k5tuUAI" role="2OqNvi">
                  <ref role="37wK5l" node="Ue8k5tu8_v" resolve="components" />
                </node>
              </node>
            </node>
          </node>
          <node concept="15s5l7" id="Ue8k5tuZxB" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;" />
          </node>
        </node>
        <node concept="3clFbF" id="Ue8k5tv04K" role="3cqZAp">
          <node concept="2OqwBi" id="Ue8k5tv1h4" role="3clFbG">
            <node concept="37vLTw" id="Ue8k5tv04I" role="2Oq$k0">
              <ref role="3cqZAo" node="Ue8k5tuN2_" resolve="res" />
            </node>
            <node concept="liA8E" id="Ue8k5tv2y4" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~AbstractCollection.addAll(java.util.Collection)" resolve="addAll" />
              <node concept="2OqwBi" id="Ue8k5tv3Kk" role="37wK5m">
                <node concept="37vLTw" id="Ue8k5tv2Pu" role="2Oq$k0">
                  <ref role="3cqZAo" node="2syzu7qPxX0" resolve="myExtensionOrigin" />
                </node>
                <node concept="liA8E" id="Ue8k5tv4EY" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.keySet()" resolve="keySet" />
                </node>
              </node>
            </node>
          </node>
          <node concept="15s5l7" id="Ue8k5tv69N" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;" />
          </node>
        </node>
        <node concept="3cpWs6" id="Ue8k5tv73a" role="3cqZAp">
          <node concept="37vLTw" id="Ue8k5tv7sR" role="3cqZAk">
            <ref role="3cqZAo" node="Ue8k5tuN2_" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="Ue8k5tuqtA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="Ue8k5tuo7k" role="jymVt" />
    <node concept="3clFb_" id="2syzu7qKwPe" role="jymVt">
      <property role="TrG5h" value="findAt" />
      <node concept="3Tm1VV" id="2syzu7qKwPg" role="1B3o_S" />
      <node concept="16syzq" id="2syzu7r6ZUs" role="3clF45">
        <ref role="16sUi3" node="2syzu7r6CGV" resolve="ResT" />
      </node>
      <node concept="37vLTG" id="2syzu7qKwPi" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="2syzu7qKwPj" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2syzu7qKwPk" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="2syzu7qKwPl" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="2syzu7qKwPm" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="2syzu7qKwPr" role="3clF47">
        <node concept="3cpWs6" id="2syzu7qQ2JB" role="3cqZAp">
          <node concept="2OqwBi" id="2syzu7qLEZP" role="3cqZAk">
            <node concept="37vLTw" id="2syzu7qLEZQ" role="2Oq$k0">
              <ref role="3cqZAo" node="2syzu7qKzy0" resolve="myBaseModel" />
            </node>
            <node concept="liA8E" id="2syzu7qLEZR" role="2OqNvi">
              <ref role="37wK5l" node="1KCfUoKUBuE" resolve="findAt" />
              <node concept="37vLTw" id="2syzu7qLEZS" role="37wK5m">
                <ref role="3cqZAo" node="2syzu7qKwPi" resolve="x" />
              </node>
              <node concept="37vLTw" id="2syzu7qLEZT" role="37wK5m">
                <ref role="3cqZAo" node="2syzu7qKwPk" resolve="y" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2syzu7qKwPs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2syzu7qKx6V" role="jymVt" />
    <node concept="3clFb_" id="2syzu7qKwPt" role="jymVt">
      <property role="TrG5h" value="getActivePosition" />
      <node concept="37vLTG" id="2syzu7qKwPu" role="3clF46">
        <property role="TrG5h" value="ext" />
        <node concept="16syzq" id="2syzu7r7fcB" role="1tU5fm">
          <ref role="16sUi3" node="2syzu7r6CGV" resolve="ResT" />
        </node>
        <node concept="2AHcQZ" id="2syzu7qKwPw" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2syzu7qKwPy" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7qKwPz" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="2AHcQZ" id="2syzu7qKwP$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2syzu7qKwPD" role="3clF47">
        <node concept="3clFbJ" id="2syzu7qQi9C" role="3cqZAp">
          <node concept="3clFbS" id="2syzu7qQi9E" role="3clFbx">
            <node concept="3cpWs6" id="2syzu7qQl5N" role="3cqZAp">
              <node concept="2OqwBi" id="2syzu7qQmta" role="3cqZAk">
                <node concept="37vLTw" id="2syzu7qQmtb" role="2Oq$k0">
                  <ref role="3cqZAo" node="2syzu7qKzy0" resolve="myBaseModel" />
                </node>
                <node concept="liA8E" id="2syzu7qQmtc" role="2OqNvi">
                  <ref role="37wK5l" node="1KCfUoKRX6g" resolve="getActivePosition" />
                  <node concept="10QFUN" id="2syzu7qQtgM" role="37wK5m">
                    <node concept="16syzq" id="2syzu7qQvq3" role="10QFUM">
                      <ref role="16sUi3" node="2syzu7qMzLG" resolve="OrigT" />
                    </node>
                    <node concept="37vLTw" id="2syzu7qQmtg" role="10QFUP">
                      <ref role="3cqZAo" node="2syzu7qKwPu" resolve="ext" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2syzu7qQjm_" role="3clFbw">
            <node concept="37vLTw" id="2syzu7qQism" role="2Oq$k0">
              <ref role="3cqZAo" node="2syzu7qKRvZ" resolve="myExtensions" />
            </node>
            <node concept="liA8E" id="2syzu7qQkej" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object)" resolve="containsKey" />
              <node concept="37vLTw" id="2syzu7qQk$2" role="37wK5m">
                <ref role="3cqZAo" node="2syzu7qKwPu" resolve="ext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2syzu7qQc2H" role="3cqZAp">
          <node concept="3cpWsn" id="2syzu7qQc2I" role="3cpWs9">
            <property role="TrG5h" value="origPosition" />
            <node concept="3uibUv" id="2syzu7qQc2r" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="2syzu7qQc2J" role="33vP2m">
              <node concept="37vLTw" id="2syzu7qQc2K" role="2Oq$k0">
                <ref role="3cqZAo" node="2syzu7qKzy0" resolve="myBaseModel" />
              </node>
              <node concept="liA8E" id="2syzu7qQc2L" role="2OqNvi">
                <ref role="37wK5l" node="1KCfUoKRX6g" resolve="getActivePosition" />
                <node concept="2OqwBi" id="2syzu7qQc2M" role="37wK5m">
                  <node concept="37vLTw" id="2syzu7qQc2N" role="2Oq$k0">
                    <ref role="3cqZAo" node="2syzu7qPxX0" resolve="myExtensionOrigin" />
                  </node>
                  <node concept="liA8E" id="2syzu7qQc2O" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="37vLTw" id="2syzu7qQc2P" role="37wK5m">
                      <ref role="3cqZAo" node="2syzu7qKwPu" resolve="ext" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2syzu7qQdH1" role="3cqZAp">
          <node concept="2OqwBi" id="2syzu7qQenY" role="3clFbG">
            <node concept="37vLTw" id="2syzu7qQdGZ" role="2Oq$k0">
              <ref role="3cqZAo" node="2syzu7qKWbP" resolve="myExtensionPositionProvider" />
            </node>
            <node concept="liA8E" id="2syzu7qQf1N" role="2OqNvi">
              <ref role="37wK5l" to="82uw:~BiFunction.apply(java.lang.Object,java.lang.Object)" resolve="apply" />
              <node concept="10QFUN" id="2syzu7r7h$t" role="37wK5m">
                <node concept="16syzq" id="2syzu7r7hZ0" role="10QFUM">
                  <ref role="16sUi3" node="2syzu7qKhmg" resolve="ExtT" />
                </node>
                <node concept="37vLTw" id="2syzu7qQfd$" role="10QFUP">
                  <ref role="3cqZAo" node="2syzu7qKwPu" resolve="ext" />
                </node>
              </node>
              <node concept="37vLTw" id="2syzu7qQfSx" role="37wK5m">
                <ref role="3cqZAo" node="2syzu7qQc2I" resolve="origPosition" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2syzu7qKwPE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2syzu7qKxma" role="jymVt" />
    <node concept="3clFb_" id="2syzu7qKwPH" role="jymVt">
      <property role="TrG5h" value="getTracePosition" />
      <node concept="3Tm1VV" id="2syzu7qKwPJ" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7qKwPK" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="37vLTG" id="2syzu7qKwPL" role="3clF46">
        <property role="TrG5h" value="ext" />
        <node concept="16syzq" id="2syzu7r77CF" role="1tU5fm">
          <ref role="16sUi3" node="2syzu7r6CGV" resolve="ResT" />
        </node>
        <node concept="2AHcQZ" id="2syzu7qKwPN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2syzu7qKwPO" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="2syzu7qKwPT" role="3clF47">
        <node concept="3clFbJ" id="2syzu7qQxGT" role="3cqZAp">
          <node concept="3clFbS" id="2syzu7qQxGU" role="3clFbx">
            <node concept="3cpWs6" id="2syzu7qQxGV" role="3cqZAp">
              <node concept="2OqwBi" id="2syzu7qQxGW" role="3cqZAk">
                <node concept="37vLTw" id="2syzu7qQxGX" role="2Oq$k0">
                  <ref role="3cqZAo" node="2syzu7qKzy0" resolve="myBaseModel" />
                </node>
                <node concept="liA8E" id="2syzu7qQxGY" role="2OqNvi">
                  <ref role="37wK5l" node="1KCfUoKRXiN" resolve="getTracePosition" />
                  <node concept="10QFUN" id="2syzu7qQxGZ" role="37wK5m">
                    <node concept="16syzq" id="2syzu7qQxH0" role="10QFUM">
                      <ref role="16sUi3" node="2syzu7qMzLG" resolve="OrigT" />
                    </node>
                    <node concept="37vLTw" id="2syzu7qQxH1" role="10QFUP">
                      <ref role="3cqZAo" node="2syzu7qKwPL" resolve="ext" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2syzu7qQxH2" role="3clFbw">
            <node concept="37vLTw" id="2syzu7qQxH3" role="2Oq$k0">
              <ref role="3cqZAo" node="2syzu7qKRvZ" resolve="myExtensions" />
            </node>
            <node concept="liA8E" id="2syzu7qQxH4" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.containsKey(java.lang.Object)" resolve="containsKey" />
              <node concept="37vLTw" id="2syzu7qQxH5" role="37wK5m">
                <ref role="3cqZAo" node="2syzu7qKwPL" resolve="ext" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2syzu7qQfYC" role="3cqZAp">
          <node concept="3cpWsn" id="2syzu7qQfYD" role="3cpWs9">
            <property role="TrG5h" value="origPosition" />
            <node concept="3uibUv" id="2syzu7qQfYE" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="2OqwBi" id="2syzu7qQfYF" role="33vP2m">
              <node concept="37vLTw" id="2syzu7qQfYG" role="2Oq$k0">
                <ref role="3cqZAo" node="2syzu7qKzy0" resolve="myBaseModel" />
              </node>
              <node concept="liA8E" id="2syzu7qQfYH" role="2OqNvi">
                <ref role="37wK5l" node="1KCfUoKRXiN" resolve="getTracePosition" />
                <node concept="2OqwBi" id="2syzu7qQfYI" role="37wK5m">
                  <node concept="37vLTw" id="2syzu7qQfYJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="2syzu7qPxX0" resolve="myExtensionOrigin" />
                  </node>
                  <node concept="liA8E" id="2syzu7qQfYK" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                    <node concept="37vLTw" id="2syzu7qQfYL" role="37wK5m">
                      <ref role="3cqZAo" node="2syzu7qKwPL" resolve="ext" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2syzu7qQfYM" role="3cqZAp">
          <node concept="2OqwBi" id="2syzu7qQfYN" role="3clFbG">
            <node concept="37vLTw" id="2syzu7qQfYO" role="2Oq$k0">
              <ref role="3cqZAo" node="2syzu7qKWbP" resolve="myExtensionPositionProvider" />
            </node>
            <node concept="liA8E" id="2syzu7qQfYP" role="2OqNvi">
              <ref role="37wK5l" to="82uw:~BiFunction.apply(java.lang.Object,java.lang.Object)" resolve="apply" />
              <node concept="10QFUN" id="2syzu7r7dTW" role="37wK5m">
                <node concept="16syzq" id="2syzu7r7ekv" role="10QFUM">
                  <ref role="16sUi3" node="2syzu7qKhmg" resolve="ExtT" />
                </node>
                <node concept="37vLTw" id="2syzu7qQfYQ" role="10QFUP">
                  <ref role="3cqZAo" node="2syzu7qKwPL" resolve="ext" />
                </node>
              </node>
              <node concept="37vLTw" id="2syzu7qQfYR" role="37wK5m">
                <ref role="3cqZAo" node="2syzu7qQfYD" resolve="origPosition" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2syzu7qKwPU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2syzu7qKgYc" role="1B3o_S" />
    <node concept="3uibUv" id="2syzu7qKh0m" role="1zkMxy">
      <ref role="3uigEE" node="2XwVnrt0B$S" resolve="ROLayoutModelBase" />
      <node concept="16syzq" id="2syzu7r6KpR" role="11_B2D">
        <ref role="16sUi3" node="2syzu7r6CGV" resolve="ResT" />
      </node>
    </node>
    <node concept="16euLQ" id="2syzu7r6CGV" role="16eVyc">
      <property role="TrG5h" value="ResT" />
    </node>
    <node concept="16euLQ" id="2syzu7qKhmg" role="16eVyc">
      <property role="TrG5h" value="ExtT" />
      <node concept="16syzq" id="2syzu7r6OJE" role="3ztrMU">
        <ref role="16sUi3" node="2syzu7r6CGV" resolve="ResT" />
      </node>
    </node>
    <node concept="16euLQ" id="2syzu7qMzLG" role="16eVyc">
      <property role="TrG5h" value="OrigT" />
      <node concept="16syzq" id="2syzu7r6XFr" role="3ztrMU">
        <ref role="16sUi3" node="2syzu7r6CGV" resolve="ResT" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="2syzu7qKiXL">
    <property role="TrG5h" value="ROLayoutModel" />
    <node concept="2tJIrI" id="3vyG44APBAO" role="jymVt" />
    <node concept="3clFb_" id="Ue8k5tu8_v" role="jymVt">
      <property role="TrG5h" value="components" />
      <node concept="3clFbS" id="Ue8k5tu8_y" role="3clF47" />
      <node concept="3Tm1VV" id="Ue8k5tu8_z" role="1B3o_S" />
      <node concept="3uibUv" id="Ue8k5tu8ya" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="16syzq" id="Ue8k5tu8$$" role="11_B2D">
          <ref role="16sUi3" node="2syzu7qKiYs" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="Ue8k5tu8NO" role="jymVt" />
    <node concept="3clFb_" id="1KCfUoKUBuE" role="jymVt">
      <property role="TrG5h" value="findAt" />
      <node concept="3clFbS" id="1KCfUoKUBuH" role="3clF47" />
      <node concept="3Tm1VV" id="1KCfUoKUBuI" role="1B3o_S" />
      <node concept="16syzq" id="17nGqbJrfFt" role="3clF45">
        <ref role="16sUi3" node="2syzu7qKiYs" resolve="T" />
      </node>
      <node concept="37vLTG" id="1KCfUoKUBxU" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="1KCfUoKUBxT" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1KCfUoKUBzW" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="1KCfUoKUBAc" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="1KCfUoKUBBp" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1KCfUoKUBn1" role="jymVt" />
    <node concept="3clFb_" id="1KCfUoKRX6g" role="jymVt">
      <property role="TrG5h" value="getActivePosition" />
      <node concept="37vLTG" id="1KCfUoKRX8$" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="17nGqbJrfIU" role="1tU5fm">
          <ref role="16sUi3" node="2syzu7qKiYs" resolve="T" />
        </node>
        <node concept="2AHcQZ" id="1KCfUoKRXsV" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1KCfUoKRX6j" role="3clF47" />
      <node concept="3Tm1VV" id="1KCfUoKRX6k" role="1B3o_S" />
      <node concept="3uibUv" id="1KCfUoKRX55" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="2AHcQZ" id="1KCfUoKRXmL" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1KCfUoKRXeP" role="jymVt" />
    <node concept="3clFb_" id="1KCfUoKRXiN" role="jymVt">
      <property role="TrG5h" value="getTracePosition" />
      <node concept="3clFbS" id="1KCfUoKRXiQ" role="3clF47" />
      <node concept="3Tm1VV" id="1KCfUoKRXiR" role="1B3o_S" />
      <node concept="3uibUv" id="1KCfUoKRXho" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="37vLTG" id="1KCfUoKRXlu" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="17nGqbJrfM1" role="1tU5fm">
          <ref role="16sUi3" node="2syzu7qKiYs" resolve="T" />
        </node>
        <node concept="2AHcQZ" id="1KCfUoKRXu3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1KCfUoKRXoH" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1KCfUoKRX1D" role="jymVt" />
    <node concept="3clFb_" id="1KCfUoKRVCm" role="jymVt">
      <property role="TrG5h" value="addListener" />
      <node concept="3clFbS" id="1KCfUoKRVCp" role="3clF47" />
      <node concept="3Tm1VV" id="1KCfUoKRVCq" role="1B3o_S" />
      <node concept="3cqZAl" id="1KCfUoKRVBD" role="3clF45" />
      <node concept="37vLTG" id="1KCfUoKRVEj" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="1KCfUoKRVEi" role="1tU5fm">
          <ref role="3uigEE" node="1KCfUoKRV4f" resolve="ROLayoutModel.Listener" />
          <node concept="16syzq" id="17nGqbJrg0N" role="11_B2D">
            <ref role="16sUi3" node="2syzu7qKiYs" resolve="T" />
          </node>
        </node>
        <node concept="2AHcQZ" id="1KCfUoKRXvt" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1KCfUoKRVGV" role="jymVt" />
    <node concept="3clFb_" id="1KCfUoKRVJI" role="jymVt">
      <property role="TrG5h" value="removeListener" />
      <node concept="3clFbS" id="1KCfUoKRVJL" role="3clF47" />
      <node concept="3Tm1VV" id="1KCfUoKRVJM" role="1B3o_S" />
      <node concept="3cqZAl" id="1KCfUoKRVIM" role="3clF45" />
      <node concept="37vLTG" id="1KCfUoKRWdV" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="1KCfUoKRWdU" role="1tU5fm">
          <ref role="3uigEE" node="1KCfUoKRV4f" resolve="ROLayoutModel.Listener" />
          <node concept="16syzq" id="17nGqbJrg6M" role="11_B2D">
            <ref role="16sUi3" node="2syzu7qKiYs" resolve="T" />
          </node>
        </node>
        <node concept="2AHcQZ" id="1KCfUoKRXxr" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1KCfUoKRVAx" role="jymVt" />
    <node concept="3HP615" id="1KCfUoKRV4f" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Listener" />
      <node concept="3clFb_" id="2syzu7qKAk0" role="jymVt">
        <property role="TrG5h" value="onComponentAdded" />
        <node concept="37vLTG" id="2syzu7qKAqo" role="3clF46">
          <property role="TrG5h" value="component" />
          <node concept="16syzq" id="2syzu7qKAwA" role="1tU5fm">
            <ref role="16sUi3" node="17nGqbJrfT0" resolve="T" />
          </node>
          <node concept="2AHcQZ" id="2syzu7qKA_3" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="2syzu7qKAL0" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="2syzu7qKAPz" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="2syzu7qKATk" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="2syzu7qKAXV" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="2syzu7qKAk3" role="3clF47" />
        <node concept="3Tm1VV" id="2syzu7qKAk4" role="1B3o_S" />
        <node concept="3cqZAl" id="2syzu7qKAh_" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="2syzu7qKAIi" role="jymVt" />
      <node concept="3clFb_" id="2syzu7qKB2E" role="jymVt">
        <property role="TrG5h" value="onComponentRemoved" />
        <node concept="37vLTG" id="2syzu7qKBn9" role="3clF46">
          <property role="TrG5h" value="component" />
          <node concept="16syzq" id="2syzu7qKBna" role="1tU5fm">
            <ref role="16sUi3" node="17nGqbJrfT0" resolve="T" />
          </node>
          <node concept="2AHcQZ" id="2syzu7qKBnb" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="2syzu7qKB2H" role="3clF47" />
        <node concept="3Tm1VV" id="2syzu7qKB2I" role="1B3o_S" />
        <node concept="3cqZAl" id="2syzu7qKAFz" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="2syzu7qKAej" role="jymVt" />
      <node concept="3clFb_" id="1KCfUoKRVcP" role="jymVt">
        <property role="TrG5h" value="onComponentsMoved" />
        <node concept="3clFbS" id="1KCfUoKRVcS" role="3clF47" />
        <node concept="3Tm1VV" id="1KCfUoKRVcT" role="1B3o_S" />
        <node concept="3cqZAl" id="1KCfUoKRVcu" role="3clF45" />
        <node concept="37vLTG" id="1KCfUoKRVq5" role="3clF46">
          <property role="TrG5h" value="components" />
          <node concept="2AHcQZ" id="1KCfUoKRXzm" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
          <node concept="3uibUv" id="3vyG44AP$aZ" role="1tU5fm">
            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
            <node concept="16syzq" id="17nGqbJrg9Z" role="11_B2D">
              <ref role="16sUi3" node="17nGqbJrfT0" resolve="T" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1KCfUoKRVqT" role="3clF46">
          <property role="TrG5h" value="dx" />
          <node concept="10Oyi0" id="1KCfUoKRVqU" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="1KCfUoKRVqV" role="3clF46">
          <property role="TrG5h" value="dy" />
          <node concept="10Oyi0" id="1KCfUoKRVqW" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="38k27IS5CXb" role="3clF46">
          <property role="TrG5h" value="completed" />
          <node concept="10P_77" id="38k27IS5D38" role="1tU5fm" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1KCfUoKRV4g" role="1B3o_S" />
      <node concept="16euLQ" id="17nGqbJrfT0" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2syzu7qKiXM" role="1B3o_S" />
    <node concept="16euLQ" id="2syzu7qKiYs" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
  </node>
</model>

