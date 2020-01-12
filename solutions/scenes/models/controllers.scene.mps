<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2b66dd0d-2c90-4da0-994d-d7579a6bca2a(scenes.controllers.scene)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="rvgs" ref="r:22f3147c-cd8c-496f-a7fc-c31f351de000(scenes.controllers)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="hyqd" ref="r:01ce234a-ce36-43f1-8a99-7cbd899f1013(scenes.viewmodel)" />
    <import index="wvnl" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.extensions(MPS.Editor/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
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
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534436861" name="jetbrains.mps.baseLanguage.structure.FloatType" flags="in" index="10OMs4" />
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
      <concept id="1109279763828" name="jetbrains.mps.baseLanguage.structure.TypeVariableDeclaration" flags="ng" index="16euLQ" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8">
      <concept id="4678410916365116210" name="jetbrains.mps.baseLanguage.jdk8.structure.DefaultModifier" flags="ng" index="2JFqV2" />
    </language>
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
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
  <node concept="3HP615" id="17nGqbJcVKF">
    <property role="TrG5h" value="SceneEditor" />
    <node concept="2tJIrI" id="17nGqbJdjoQ" role="jymVt" />
    <node concept="3clFb_" id="7sG$k3BQmmw" role="jymVt">
      <property role="TrG5h" value="getContext" />
      <node concept="3clFbS" id="7sG$k3BQmmz" role="3clF47" />
      <node concept="3Tm1VV" id="7sG$k3BQmm$" role="1B3o_S" />
      <node concept="3uibUv" id="7sG$k3BQmlG" role="3clF45">
        <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJdiRG" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24Am6k" role="jymVt">
      <property role="TrG5h" value="fireRelayout" />
      <node concept="3clFbS" id="1iOpS24Am6n" role="3clF47" />
      <node concept="3Tm1VV" id="1iOpS24Am6o" role="1B3o_S" />
      <node concept="3cqZAl" id="1iOpS24Am3H" role="3clF45" />
    </node>
    <node concept="3clFb_" id="6tmlia_MTZ4" role="jymVt">
      <property role="TrG5h" value="fireRepaint" />
      <node concept="3clFbS" id="6tmlia_MTZ7" role="3clF47" />
      <node concept="3Tm1VV" id="6tmlia_MTZ8" role="1B3o_S" />
      <node concept="3cqZAl" id="6tmlia_MTXs" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="17nGqbJm4D8" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJeJiI" role="jymVt">
      <property role="TrG5h" value="addCursorListener" />
      <node concept="37vLTG" id="17nGqbJeJiJ" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="17nGqbJeJiK" role="1tU5fm">
          <ref role="3uigEE" node="17nGqbJd2m8" resolve="CursorListner" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJeJiL" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJeJiM" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJeJiN" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJeJiO" role="3clF45" />
    </node>
    <node concept="3clFb_" id="17nGqbJeJiB" role="jymVt">
      <property role="TrG5h" value="removeCursorListener" />
      <node concept="37vLTG" id="17nGqbJeJiC" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="17nGqbJeJiD" role="1tU5fm">
          <ref role="3uigEE" node="17nGqbJd2m8" resolve="CursorListner" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJeJiE" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJeJiF" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJeJiG" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJeJiH" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="17nGqbJeJKB" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJd3Xf" role="jymVt">
      <property role="TrG5h" value="addKeyboardListener" />
      <node concept="37vLTG" id="17nGqbJd43P" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="17nGqbJeK8V" role="1tU5fm">
          <ref role="3uigEE" node="17nGqbJeGPf" resolve="KeyboardListener" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJd43R" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJd3Xi" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJd3Xj" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJd3VZ" role="3clF45" />
    </node>
    <node concept="3clFb_" id="17nGqbJd46D" role="jymVt">
      <property role="TrG5h" value="removeKeyboardListener" />
      <node concept="37vLTG" id="17nGqbJd46E" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="17nGqbJeKaQ" role="1tU5fm">
          <ref role="3uigEE" node="17nGqbJeGPf" resolve="KeyboardListener" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJd46G" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJd46H" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJd46I" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJd46J" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="17nGqbJd4cM" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJd4hx" role="jymVt">
      <property role="TrG5h" value="addLayouter" />
      <node concept="37vLTG" id="17nGqbJd4k4" role="3clF46">
        <property role="TrG5h" value="layouter" />
        <node concept="3uibUv" id="17nGqbJd4nD" role="1tU5fm">
          <ref role="3uigEE" node="17nGqbJd3r4" resolve="SceneLayouter" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJd4k6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJd4h$" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJd4h_" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJd4fI" role="3clF45" />
    </node>
    <node concept="3clFb_" id="17nGqbJd4p2" role="jymVt">
      <property role="TrG5h" value="removeLayouter" />
      <node concept="37vLTG" id="17nGqbJd4p3" role="3clF46">
        <property role="TrG5h" value="layouter" />
        <node concept="3uibUv" id="17nGqbJd4p4" role="1tU5fm">
          <ref role="3uigEE" node="17nGqbJd3r4" resolve="SceneLayouter" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJd4p5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJd4p6" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJd4p7" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJd4p8" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="17nGqbJd4vw" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJm4O6" role="jymVt">
      <property role="TrG5h" value="addCompletionProvider" />
      <node concept="37vLTG" id="17nGqbJm4WZ" role="3clF46">
        <property role="TrG5h" value="provider" />
        <node concept="3uibUv" id="17nGqbJm56Q" role="1tU5fm">
          <ref role="3uigEE" node="17nGqbJm4gr" resolve="SceneCompletionProvider" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJm4X1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJm4O9" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJm4Oa" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJm4JJ" role="3clF45" />
    </node>
    <node concept="3clFb_" id="17nGqbJm5bX" role="jymVt">
      <property role="TrG5h" value="removeCompletionProvider" />
      <node concept="37vLTG" id="17nGqbJm5bY" role="3clF46">
        <property role="TrG5h" value="provider" />
        <node concept="3uibUv" id="17nGqbJm5bZ" role="1tU5fm">
          <ref role="3uigEE" node="17nGqbJm4gr" resolve="SceneCompletionProvider" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJm5c0" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJm5c1" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJm5c2" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJm5c3" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4y$DvIXX4UK" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXXdwh" role="jymVt">
      <property role="TrG5h" value="createLayer" />
      <node concept="3clFbS" id="4y$DvIXXdwk" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIXXdwl" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIY3jZm" role="3clF45">
        <ref role="3uigEE" node="4y$DvIY3jWa" resolve="Layer" />
      </node>
      <node concept="37vLTG" id="4y$DvIXXdDU" role="3clF46">
        <property role="TrG5h" value="apriority" />
        <node concept="10OMs4" id="4y$DvIYqaFX" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="4y$DvIXXerM" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3clFb_" id="4y$DvIXXdZJ" role="jymVt">
      <property role="TrG5h" value="removeLayer" />
      <node concept="3clFbS" id="4y$DvIXXdZM" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIXXdZN" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIXXdU_" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIXXe9B" role="3clF46">
        <property role="TrG5h" value="layer" />
        <node concept="3uibUv" id="4y$DvIY3k3s" role="1tU5fm">
          <ref role="3uigEE" node="4y$DvIY3jWa" resolve="Layer" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIXXemK" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJcVLR" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJd3Bi" role="jymVt">
      <property role="TrG5h" value="addClickListener" />
      <node concept="3clFbS" id="17nGqbJd3Bl" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJd3Bm" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJd3AV" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIXXe$q" role="3clF46">
        <property role="TrG5h" value="layer" />
        <node concept="3uibUv" id="4y$DvIY3k6x" role="1tU5fm">
          <ref role="3uigEE" node="4y$DvIY3jWa" resolve="Layer" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIXXe$s" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="17nGqbJd3CE" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="17nGqbJd3CD" role="1tU5fm">
          <ref role="3uigEE" node="17nGqbJcVRI" resolve="ClickEventListener" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJd3G$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="17nGqbJd3Ek" role="jymVt">
      <property role="TrG5h" value="removeClickListener" />
      <node concept="3clFbS" id="17nGqbJd3El" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJd3Em" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJd3En" role="3clF45" />
      <node concept="37vLTG" id="17nGqbJd3Eo" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="17nGqbJd3Ep" role="1tU5fm">
          <ref role="3uigEE" node="17nGqbJcVRI" resolve="ClickEventListener" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJd3I9" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJd3FJ" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJd3JS" role="jymVt">
      <property role="TrG5h" value="addDragListener" />
      <node concept="3clFbS" id="17nGqbJd3JT" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJd3JU" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJd3JV" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIXXeR1" role="3clF46">
        <property role="TrG5h" value="layer" />
        <node concept="3uibUv" id="4y$DvIY3k9N" role="1tU5fm">
          <ref role="3uigEE" node="4y$DvIY3jWa" resolve="Layer" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIXXeR3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="17nGqbJd3JW" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="17nGqbJd3Qk" role="1tU5fm">
          <ref role="3uigEE" node="17nGqbJcVM0" resolve="DragEventListener" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJd3JY" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="17nGqbJd3JZ" role="jymVt">
      <property role="TrG5h" value="removeDragListener" />
      <node concept="3clFbS" id="17nGqbJd3K0" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJd3K1" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJd3K2" role="3clF45" />
      <node concept="37vLTG" id="17nGqbJd3K3" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="17nGqbJd3RG" role="1tU5fm">
          <ref role="3uigEE" node="17nGqbJcVM0" resolve="DragEventListener" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJd3K5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJd3FY" role="jymVt" />
    <node concept="3Tm1VV" id="17nGqbJcVKG" role="1B3o_S" />
    <node concept="3clFb_" id="17nGqbJd4_$" role="jymVt">
      <property role="TrG5h" value="addCellProvider" />
      <node concept="37vLTG" id="4y$DvIXXfY1" role="3clF46">
        <property role="TrG5h" value="layer" />
        <node concept="3uibUv" id="4y$DvIY3koX" role="1tU5fm">
          <ref role="3uigEE" node="4y$DvIY3jWa" resolve="Layer" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIXXfY3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="17nGqbJd4IC" role="3clF46">
        <property role="TrG5h" value="provider" />
        <node concept="3uibUv" id="17nGqbJd4Ou" role="1tU5fm">
          <ref role="3uigEE" node="17nGqbJd3sJ" resolve="EditorCellProvider" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJd4IE" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJd4_B" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJd4_C" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJd4ze" role="3clF45" />
    </node>
    <node concept="3clFb_" id="17nGqbJd4PR" role="jymVt">
      <property role="TrG5h" value="removeCellProvider" />
      <node concept="37vLTG" id="17nGqbJd4PS" role="3clF46">
        <property role="TrG5h" value="provider" />
        <node concept="3uibUv" id="17nGqbJd4PT" role="1tU5fm">
          <ref role="3uigEE" node="17nGqbJd3sJ" resolve="EditorCellProvider" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJd4PU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJd4PV" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJd4PW" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJd4PX" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="17nGqbJdjve" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJdjBx" role="jymVt">
      <property role="TrG5h" value="addPainter" />
      <node concept="37vLTG" id="4y$DvIXXgvt" role="3clF46">
        <property role="TrG5h" value="layer" />
        <node concept="3uibUv" id="4y$DvIY3kxK" role="1tU5fm">
          <ref role="3uigEE" node="4y$DvIY3jWa" resolve="Layer" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIXXgvv" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="17nGqbJdjUX" role="3clF46">
        <property role="TrG5h" value="painter" />
        <node concept="3uibUv" id="17nGqbJdk05" role="1tU5fm">
          <ref role="3uigEE" node="17nGqbJcVWh" resolve="ScenePainter" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJdjUZ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJdjB$" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJdjB_" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJdj$g" role="3clF45" />
    </node>
    <node concept="3clFb_" id="17nGqbJdk1N" role="jymVt">
      <property role="TrG5h" value="removePainter" />
      <node concept="37vLTG" id="17nGqbJdk1O" role="3clF46">
        <property role="TrG5h" value="painter" />
        <node concept="3uibUv" id="17nGqbJdk1P" role="1tU5fm">
          <ref role="3uigEE" node="17nGqbJcVWh" resolve="ScenePainter" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJdk1Q" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJdk1R" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJdk1S" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJdk1T" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1R4IoyRrSws" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyRrSCW" role="jymVt">
      <property role="TrG5h" value="addInitializer" />
      <node concept="37vLTG" id="1R4IoyRrSCX" role="3clF46">
        <property role="TrG5h" value="initializer" />
        <node concept="3uibUv" id="1R4IoyRrTj2" role="1tU5fm">
          <ref role="3uigEE" node="1R4IoyRrSd8" resolve="SceneInitializer" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRrSCZ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyRrSD0" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyRrSD1" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyRrSD2" role="3clF45" />
    </node>
    <node concept="3clFb_" id="1R4IoyRrSD3" role="jymVt">
      <property role="TrG5h" value="removeInitializer" />
      <node concept="37vLTG" id="1R4IoyRrSD4" role="3clF46">
        <property role="TrG5h" value="initializer" />
        <node concept="3uibUv" id="1R4IoyRrTnD" role="1tU5fm">
          <ref role="3uigEE" node="1R4IoyRrSd8" resolve="SceneInitializer" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRrSD6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1R4IoyRrSD7" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyRrSD8" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyRrSD9" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1R4IoyRrSyZ" role="jymVt" />
    <node concept="3clFb_" id="7eBFChAb_fZ" role="jymVt">
      <property role="TrG5h" value="storeState" />
      <node concept="3cqZAl" id="7eBFChAb_g1" role="3clF45" />
      <node concept="3Tm1VV" id="7eBFChAb_g2" role="1B3o_S" />
      <node concept="3clFbS" id="7eBFChAb_g3" role="3clF47" />
      <node concept="16euLQ" id="7eBFChAb_qS" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="37vLTG" id="7eBFChAbAs7" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="7eBFChAbAs6" role="1tU5fm">
          <ref role="3uigEE" node="7eBFChAanmT" resolve="SceneStateKey" />
          <node concept="16syzq" id="7eBFChAbACD" role="11_B2D">
            <ref role="16sUi3" node="7eBFChAb_qS" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7eBFChAbAGG" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="16syzq" id="7eBFChAbAQx" role="1tU5fm">
          <ref role="16sUi3" node="7eBFChAb_qS" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7eBFChAbAUW" role="jymVt">
      <property role="TrG5h" value="loadState" />
      <node concept="16syzq" id="7eBFChAbBiB" role="3clF45">
        <ref role="16sUi3" node="7eBFChAbAV0" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="7eBFChAbAUY" role="1B3o_S" />
      <node concept="3clFbS" id="7eBFChAbAUZ" role="3clF47" />
      <node concept="16euLQ" id="7eBFChAbAV0" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="37vLTG" id="7eBFChAbAV1" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="7eBFChAbAV2" role="1tU5fm">
          <ref role="3uigEE" node="7eBFChAanmT" resolve="SceneStateKey" />
          <node concept="16syzq" id="7eBFChAbAV3" role="11_B2D">
            <ref role="16sUi3" node="7eBFChAbAV0" resolve="T" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="17nGqbJcVM0">
    <property role="TrG5h" value="DragEventListener" />
    <node concept="2tJIrI" id="17nGqbJcVNs" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJcVNJ" role="jymVt">
      <property role="TrG5h" value="onDragStarted" />
      <node concept="3clFbS" id="17nGqbJcVNM" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJcVNN" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJcVN_" role="3clF45" />
      <node concept="37vLTG" id="17nGqbJcVOZ" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="17nGqbJcVQd" role="1tU5fm">
          <ref role="3uigEE" node="1KCfUoKRUJj" resolve="DragEvent" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="17nGqbJcVM1" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="17nGqbJcVRI">
    <property role="TrG5h" value="ClickEventListener" />
    <node concept="2tJIrI" id="17nGqbJcVTa" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJcVTx" role="jymVt">
      <property role="TrG5h" value="onMouseClicked" />
      <node concept="3clFbS" id="17nGqbJcVT$" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJcVT_" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJcVTn" role="3clF45" />
      <node concept="37vLTG" id="17nGqbJcVUL" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="17nGqbJcVUK" role="1tU5fm">
          <ref role="3uigEE" node="3vyG44AuRcU" resolve="ClickEvent" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="17nGqbJcVRJ" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="17nGqbJcVWh">
    <property role="TrG5h" value="ScenePainter" />
    <node concept="2tJIrI" id="17nGqbJcVXD" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJcVXW" role="jymVt">
      <property role="TrG5h" value="paint" />
      <node concept="37vLTG" id="17nGqbJcVZb" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="17nGqbJd2jy" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJcVXZ" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJcVY0" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJcVXM" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="17nGqbJcVWi" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="17nGqbJd2m8">
    <property role="TrG5h" value="CursorListner" />
    <node concept="2tJIrI" id="17nGqbJd2nO" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJd2o$" role="jymVt">
      <property role="TrG5h" value="onCursorMoved" />
      <node concept="3clFbS" id="17nGqbJd2oB" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJd2oC" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJd2oq" role="3clF45" />
      <node concept="37vLTG" id="17nGqbJd3nI" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="17nGqbJd3nH" role="1tU5fm">
          <ref role="3uigEE" node="17nGqbJd33F" resolve="CursorEvent" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="17nGqbJd2m9" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3vyG44AuRcU">
    <property role="TrG5h" value="ClickEvent" />
    <node concept="2tJIrI" id="3vyG44AuReF" role="jymVt" />
    <node concept="312cEg" id="3vyG44AuReH" role="jymVt">
      <property role="TrG5h" value="data" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3vyG44AuReI" role="1B3o_S" />
      <node concept="3uibUv" id="3vyG44AuReJ" role="1tU5fm">
        <ref role="3uigEE" node="3vyG44AulHp" resolve="MouseEventData" />
      </node>
    </node>
    <node concept="2tJIrI" id="3vyG44AuReK" role="jymVt" />
    <node concept="312cEg" id="3vyG44AuReL" role="jymVt">
      <property role="TrG5h" value="onConsumed" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3vyG44AuReM" role="1B3o_S" />
      <node concept="3uibUv" id="3vyG44AuRCg" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
      </node>
    </node>
    <node concept="312cEg" id="3vyG44AuReP" role="jymVt">
      <property role="TrG5h" value="consumed" />
      <node concept="3Tm6S6" id="3vyG44AuReQ" role="1B3o_S" />
      <node concept="10P_77" id="3vyG44AuReR" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="3vyG44AuReS" role="jymVt" />
    <node concept="3clFbW" id="3vyG44AuReT" role="jymVt">
      <node concept="3cqZAl" id="3vyG44AuReU" role="3clF45" />
      <node concept="3Tm1VV" id="3vyG44AuReV" role="1B3o_S" />
      <node concept="3clFbS" id="3vyG44AuReW" role="3clF47">
        <node concept="3clFbF" id="3vyG44AuReX" role="3cqZAp">
          <node concept="37vLTI" id="3vyG44AuReY" role="3clFbG">
            <node concept="37vLTw" id="3vyG44AuReZ" role="37vLTx">
              <ref role="3cqZAo" node="3vyG44AuRf9" resolve="data" />
            </node>
            <node concept="2OqwBi" id="3vyG44AuRf0" role="37vLTJ">
              <node concept="Xjq3P" id="3vyG44AuRf1" role="2Oq$k0" />
              <node concept="2OwXpG" id="3vyG44AuRf2" role="2OqNvi">
                <ref role="2Oxat5" node="3vyG44AuReH" resolve="data" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vyG44AuRFm" role="3cqZAp">
          <node concept="37vLTI" id="3vyG44AuSP2" role="3clFbG">
            <node concept="37vLTw" id="3vyG44AuST$" role="37vLTx">
              <ref role="3cqZAo" node="3vyG44AuRy5" resolve="onConsumed" />
            </node>
            <node concept="2OqwBi" id="3vyG44AuRLJ" role="37vLTJ">
              <node concept="Xjq3P" id="3vyG44AuRFk" role="2Oq$k0" />
              <node concept="2OwXpG" id="3vyG44AuS37" role="2OqNvi">
                <ref role="2Oxat5" node="3vyG44AuReL" resolve="onConsumed" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3vyG44AuRf9" role="3clF46">
        <property role="TrG5h" value="data" />
        <node concept="3uibUv" id="3vyG44AuRfa" role="1tU5fm">
          <ref role="3uigEE" node="3vyG44AulHp" resolve="MouseEventData" />
        </node>
      </node>
      <node concept="37vLTG" id="3vyG44AuRy5" role="3clF46">
        <property role="TrG5h" value="onConsumed" />
        <node concept="3uibUv" id="3vyG44AuR$d" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Runnable" resolve="Runnable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3vyG44AuRfi" role="jymVt" />
    <node concept="3clFb_" id="3vyG44AuRfj" role="jymVt">
      <property role="TrG5h" value="isConsumed" />
      <node concept="3clFbS" id="3vyG44AuRfk" role="3clF47">
        <node concept="3clFbF" id="3vyG44AuRfl" role="3cqZAp">
          <node concept="37vLTw" id="3vyG44AuRfm" role="3clFbG">
            <ref role="3cqZAo" node="3vyG44AuReP" resolve="consumed" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3vyG44AuRfn" role="1B3o_S" />
      <node concept="10P_77" id="3vyG44AuRfo" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3vyG44AuRfp" role="jymVt" />
    <node concept="3clFb_" id="3vyG44AuRfq" role="jymVt">
      <property role="TrG5h" value="consume" />
      <node concept="3clFbS" id="3vyG44AuRfr" role="3clF47">
        <node concept="3clFbJ" id="3vyG44AuRfs" role="3cqZAp">
          <node concept="3clFbS" id="3vyG44AuRft" role="3clFbx">
            <node concept="3clFbF" id="3vyG44AuRfu" role="3cqZAp">
              <node concept="37vLTI" id="3vyG44AuRfv" role="3clFbG">
                <node concept="3clFbT" id="3vyG44AuRfw" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="37vLTw" id="3vyG44AuRfx" role="37vLTJ">
                  <ref role="3cqZAo" node="3vyG44AuReP" resolve="consumed" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="3vyG44AuRfy" role="3cqZAp">
              <node concept="2OqwBi" id="3vyG44AuRfz" role="3clFbG">
                <node concept="37vLTw" id="3vyG44AuRf$" role="2Oq$k0">
                  <ref role="3cqZAo" node="3vyG44AuReL" resolve="onConsumed" />
                </node>
                <node concept="liA8E" id="3vyG44AuT3h" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Runnable.run()" resolve="run" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="3vyG44AuRfB" role="3clFbw">
            <node concept="37vLTw" id="3vyG44AuRfC" role="3fr31v">
              <ref role="3cqZAo" node="3vyG44AuReP" resolve="consumed" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3vyG44AuRfD" role="1B3o_S" />
      <node concept="3cqZAl" id="3vyG44AuRfE" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3vyG44AuReG" role="jymVt" />
    <node concept="3Tm1VV" id="3vyG44AuRcV" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1KCfUoKRUJj">
    <property role="TrG5h" value="DragEvent" />
    <node concept="2tJIrI" id="1KCfUoKRUJS" role="jymVt" />
    <node concept="312cEg" id="3vyG44AuBRH" role="jymVt">
      <property role="TrG5h" value="data" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3vyG44AuBs0" role="1B3o_S" />
      <node concept="3uibUv" id="3vyG44AuBRo" role="1tU5fm">
        <ref role="3uigEE" node="3vyG44AulHp" resolve="MouseEventData" />
      </node>
    </node>
    <node concept="2tJIrI" id="3vyG44AuDwp" role="jymVt" />
    <node concept="312cEg" id="2XwVnrt0v11" role="jymVt">
      <property role="TrG5h" value="onConsumed" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2XwVnrt0uM5" role="1B3o_S" />
      <node concept="3uibUv" id="2XwVnrt0v7M" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
        <node concept="3uibUv" id="3vyG44AuCaj" role="11_B2D">
          <ref role="3uigEE" to="rvgs:2_D_3xWXMp$" resolve="DragEventHandler" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="2XwVnrt0kXm" role="jymVt">
      <property role="TrG5h" value="consumed" />
      <node concept="3Tm6S6" id="2XwVnrt0kS7" role="1B3o_S" />
      <node concept="10P_77" id="2XwVnrt0kXk" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="1KCfUoKRUOv" role="jymVt" />
    <node concept="3Tm1VV" id="1KCfUoKRUJk" role="1B3o_S" />
    <node concept="3clFbW" id="1KCfUoKRUPL" role="jymVt">
      <node concept="3cqZAl" id="1KCfUoKRUPM" role="3clF45" />
      <node concept="3Tm1VV" id="1KCfUoKRUPN" role="1B3o_S" />
      <node concept="3clFbS" id="1KCfUoKRUPP" role="3clF47">
        <node concept="3clFbF" id="3vyG44AuCno" role="3cqZAp">
          <node concept="37vLTI" id="3vyG44AuDqv" role="3clFbG">
            <node concept="37vLTw" id="3vyG44AuDt1" role="37vLTx">
              <ref role="3cqZAo" node="3vyG44AuCf2" resolve="data" />
            </node>
            <node concept="2OqwBi" id="3vyG44AuCwT" role="37vLTJ">
              <node concept="Xjq3P" id="3vyG44AuCnm" role="2Oq$k0" />
              <node concept="2OwXpG" id="3vyG44AuCJm" role="2OqNvi">
                <ref role="2Oxat5" node="3vyG44AuBRH" resolve="data" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2XwVnrt0vld" role="3cqZAp">
          <node concept="37vLTI" id="2XwVnrt0wB0" role="3clFbG">
            <node concept="37vLTw" id="2XwVnrt0wHY" role="37vLTx">
              <ref role="3cqZAo" node="2XwVnrt0nNq" resolve="onConsumed" />
            </node>
            <node concept="2OqwBi" id="2XwVnrt0vuQ" role="37vLTJ">
              <node concept="Xjq3P" id="2XwVnrt0vlb" role="2Oq$k0" />
              <node concept="2OwXpG" id="2XwVnrt0vKz" role="2OqNvi">
                <ref role="2Oxat5" node="2XwVnrt0v11" resolve="onConsumed" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3vyG44AuCf2" role="3clF46">
        <property role="TrG5h" value="data" />
        <node concept="3uibUv" id="3vyG44AuChY" role="1tU5fm">
          <ref role="3uigEE" node="3vyG44AulHp" resolve="MouseEventData" />
        </node>
      </node>
      <node concept="37vLTG" id="2XwVnrt0nNq" role="3clF46">
        <property role="TrG5h" value="onConsumed" />
        <node concept="3uibUv" id="2XwVnrt0uA4" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Consumer" resolve="Consumer" />
          <node concept="3uibUv" id="2XwVnrt0uDv" role="11_B2D">
            <ref role="3uigEE" to="rvgs:2_D_3xWXMp$" resolve="DragEventHandler" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2XwVnrt0l2k" role="jymVt" />
    <node concept="3clFb_" id="2XwVnrt0ldO" role="jymVt">
      <property role="TrG5h" value="isConsumed" />
      <node concept="3clFbS" id="2XwVnrt0ldR" role="3clF47">
        <node concept="3clFbF" id="2XwVnrt0lm5" role="3cqZAp">
          <node concept="37vLTw" id="2XwVnrt0lm4" role="3clFbG">
            <ref role="3cqZAo" node="2XwVnrt0kXm" resolve="consumed" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2XwVnrt0l8h" role="1B3o_S" />
      <node concept="10P_77" id="2XwVnrt0ldJ" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2XwVnrt0lnf" role="jymVt" />
    <node concept="3clFb_" id="2XwVnrt0l_8" role="jymVt">
      <property role="TrG5h" value="consume" />
      <node concept="3clFbS" id="2XwVnrt0l_b" role="3clF47">
        <node concept="3clFbJ" id="2XwVnrt0wPT" role="3cqZAp">
          <node concept="3clFbS" id="2XwVnrt0wPV" role="3clFbx">
            <node concept="3clFbF" id="2XwVnrt0mkS" role="3cqZAp">
              <node concept="37vLTI" id="2XwVnrt0n85" role="3clFbG">
                <node concept="3clFbT" id="2XwVnrt0nez" role="37vLTx">
                  <property role="3clFbU" value="true" />
                </node>
                <node concept="37vLTw" id="2XwVnrt0mkR" role="37vLTJ">
                  <ref role="3cqZAo" node="2XwVnrt0kXm" resolve="consumed" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2XwVnrt0x42" role="3cqZAp">
              <node concept="2OqwBi" id="2XwVnrt0xi$" role="3clFbG">
                <node concept="37vLTw" id="2XwVnrt0x40" role="2Oq$k0">
                  <ref role="3cqZAo" node="2XwVnrt0v11" resolve="onConsumed" />
                </node>
                <node concept="liA8E" id="2XwVnrt0xty" role="2OqNvi">
                  <ref role="37wK5l" to="82uw:~Consumer.accept(java.lang.Object)" resolve="accept" />
                  <node concept="37vLTw" id="2XwVnrt0xxf" role="37wK5m">
                    <ref role="3cqZAo" node="2XwVnrt0nST" resolve="handler" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="2XwVnrt0wSS" role="3clFbw">
            <node concept="37vLTw" id="2XwVnrt0wWm" role="3fr31v">
              <ref role="3cqZAo" node="2XwVnrt0kXm" resolve="consumed" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2XwVnrt0lus" role="1B3o_S" />
      <node concept="3cqZAl" id="2XwVnrt0x$7" role="3clF45" />
      <node concept="37vLTG" id="2XwVnrt0nST" role="3clF46">
        <property role="TrG5h" value="handler" />
        <node concept="3uibUv" id="2XwVnrt0nSS" role="1tU5fm">
          <ref role="3uigEE" to="rvgs:2_D_3xWXMp$" resolve="DragEventHandler" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3vyG44AulHp">
    <property role="TrG5h" value="MouseEventData" />
    <node concept="2tJIrI" id="3vyG44AulHY" role="jymVt" />
    <node concept="312cEg" id="3vyG44AulJ$" role="jymVt">
      <property role="TrG5h" value="x" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3vyG44AulJ_" role="1B3o_S" />
      <node concept="10Oyi0" id="3vyG44AulJA" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3vyG44AulJB" role="jymVt">
      <property role="TrG5h" value="y" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3vyG44AulJC" role="1B3o_S" />
      <node concept="10Oyi0" id="3vyG44AulJD" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3vyG44AuATf" role="jymVt">
      <property role="TrG5h" value="shiftDown" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3vyG44AuAR0" role="1B3o_S" />
      <node concept="10P_77" id="3vyG44AuASa" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3vyG44AuAPm" role="jymVt">
      <property role="TrG5h" value="controlDown" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3vyG44AuAO6" role="1B3o_S" />
      <node concept="10P_77" id="3vyG44AuAPg" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3vyG44AulJH" role="jymVt">
      <property role="TrG5h" value="metaDown" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3vyG44AulJI" role="1B3o_S" />
      <node concept="10P_77" id="3vyG44AulJJ" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="3vyG44AulJE" role="jymVt">
      <property role="TrG5h" value="altDown" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3vyG44AulJF" role="1B3o_S" />
      <node concept="10P_77" id="3vyG44AulJG" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="3vyG44AulJs" role="jymVt" />
    <node concept="3Tm1VV" id="3vyG44AulHq" role="1B3o_S" />
    <node concept="3clFbW" id="3vyG44AuATT" role="jymVt">
      <node concept="3cqZAl" id="3vyG44AuATU" role="3clF45" />
      <node concept="3Tm1VV" id="3vyG44AuATV" role="1B3o_S" />
      <node concept="3clFbS" id="3vyG44AuATX" role="3clF47">
        <node concept="3clFbF" id="3vyG44AuAU1" role="3cqZAp">
          <node concept="37vLTI" id="3vyG44AuAU3" role="3clFbG">
            <node concept="2OqwBi" id="3vyG44AuAU7" role="37vLTJ">
              <node concept="Xjq3P" id="3vyG44AuAU8" role="2Oq$k0" />
              <node concept="2OwXpG" id="3vyG44AuAU9" role="2OqNvi">
                <ref role="2Oxat5" node="3vyG44AulJ$" resolve="x" />
              </node>
            </node>
            <node concept="37vLTw" id="3vyG44AuAUa" role="37vLTx">
              <ref role="3cqZAo" node="3vyG44AuAU0" resolve="x" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vyG44AuAUd" role="3cqZAp">
          <node concept="37vLTI" id="3vyG44AuAUf" role="3clFbG">
            <node concept="2OqwBi" id="3vyG44AuAUj" role="37vLTJ">
              <node concept="Xjq3P" id="3vyG44AuAUk" role="2Oq$k0" />
              <node concept="2OwXpG" id="3vyG44AuAUl" role="2OqNvi">
                <ref role="2Oxat5" node="3vyG44AulJB" resolve="y" />
              </node>
            </node>
            <node concept="37vLTw" id="3vyG44AuAUm" role="37vLTx">
              <ref role="3cqZAo" node="3vyG44AuAUc" resolve="y" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vyG44AuAUp" role="3cqZAp">
          <node concept="37vLTI" id="3vyG44AuAUr" role="3clFbG">
            <node concept="2OqwBi" id="3vyG44AuAUv" role="37vLTJ">
              <node concept="Xjq3P" id="3vyG44AuAUw" role="2Oq$k0" />
              <node concept="2OwXpG" id="3vyG44AuAUx" role="2OqNvi">
                <ref role="2Oxat5" node="3vyG44AuATf" resolve="shiftDown" />
              </node>
            </node>
            <node concept="37vLTw" id="3vyG44AuAUy" role="37vLTx">
              <ref role="3cqZAo" node="3vyG44AuAUo" resolve="shiftDown" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vyG44AuAU_" role="3cqZAp">
          <node concept="37vLTI" id="3vyG44AuAUB" role="3clFbG">
            <node concept="2OqwBi" id="3vyG44AuAUF" role="37vLTJ">
              <node concept="Xjq3P" id="3vyG44AuAUG" role="2Oq$k0" />
              <node concept="2OwXpG" id="3vyG44AuAUH" role="2OqNvi">
                <ref role="2Oxat5" node="3vyG44AuAPm" resolve="controlDown" />
              </node>
            </node>
            <node concept="37vLTw" id="3vyG44AuAUI" role="37vLTx">
              <ref role="3cqZAo" node="3vyG44AuAU$" resolve="controlDown" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vyG44AuAUL" role="3cqZAp">
          <node concept="37vLTI" id="3vyG44AuAUN" role="3clFbG">
            <node concept="2OqwBi" id="3vyG44AuAUR" role="37vLTJ">
              <node concept="Xjq3P" id="3vyG44AuAUS" role="2Oq$k0" />
              <node concept="2OwXpG" id="3vyG44AuAUT" role="2OqNvi">
                <ref role="2Oxat5" node="3vyG44AulJH" resolve="metaDown" />
              </node>
            </node>
            <node concept="37vLTw" id="3vyG44AuAUU" role="37vLTx">
              <ref role="3cqZAo" node="3vyG44AuAUK" resolve="metaDown" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vyG44AuAUX" role="3cqZAp">
          <node concept="37vLTI" id="3vyG44AuAUZ" role="3clFbG">
            <node concept="2OqwBi" id="3vyG44AuAV3" role="37vLTJ">
              <node concept="Xjq3P" id="3vyG44AuAV4" role="2Oq$k0" />
              <node concept="2OwXpG" id="3vyG44AuAV5" role="2OqNvi">
                <ref role="2Oxat5" node="3vyG44AulJE" resolve="altDown" />
              </node>
            </node>
            <node concept="37vLTw" id="3vyG44AuAV6" role="37vLTx">
              <ref role="3cqZAo" node="3vyG44AuAUW" resolve="altDown" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3vyG44AuAU0" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="3vyG44AuATZ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3vyG44AuAUc" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="3vyG44AuAUb" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3vyG44AuAUo" role="3clF46">
        <property role="TrG5h" value="shiftDown" />
        <node concept="10P_77" id="3vyG44AuAUn" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3vyG44AuAU$" role="3clF46">
        <property role="TrG5h" value="controlDown" />
        <node concept="10P_77" id="3vyG44AuAUz" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3vyG44AuAUK" role="3clF46">
        <property role="TrG5h" value="metaDown" />
        <node concept="10P_77" id="3vyG44AuAUJ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3vyG44AuAUW" role="3clF46">
        <property role="TrG5h" value="altDown" />
        <node concept="10P_77" id="3vyG44AuAUV" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="17nGqbJd33F">
    <property role="TrG5h" value="CursorEvent" />
    <node concept="2tJIrI" id="17nGqbJd34G" role="jymVt" />
    <node concept="312cEg" id="17nGqbJd3gq" role="jymVt">
      <property role="TrG5h" value="data" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="17nGqbJd3gr" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJd3gs" role="1tU5fm">
        <ref role="3uigEE" node="3vyG44AulHp" resolve="MouseEventData" />
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJd3gG" role="jymVt" />
    <node concept="3Tm1VV" id="17nGqbJd33G" role="1B3o_S" />
    <node concept="3clFbW" id="17nGqbJd3hd" role="jymVt">
      <node concept="3cqZAl" id="17nGqbJd3he" role="3clF45" />
      <node concept="3Tm1VV" id="17nGqbJd3hf" role="1B3o_S" />
      <node concept="3clFbS" id="17nGqbJd3hh" role="3clF47">
        <node concept="3clFbF" id="17nGqbJd3hl" role="3cqZAp">
          <node concept="37vLTI" id="17nGqbJd3hn" role="3clFbG">
            <node concept="2OqwBi" id="17nGqbJd3hr" role="37vLTJ">
              <node concept="Xjq3P" id="17nGqbJd3hs" role="2Oq$k0" />
              <node concept="2OwXpG" id="17nGqbJd3ht" role="2OqNvi">
                <ref role="2Oxat5" node="17nGqbJd3gq" resolve="data" />
              </node>
            </node>
            <node concept="37vLTw" id="17nGqbJd3hu" role="37vLTx">
              <ref role="3cqZAo" node="17nGqbJd3hk" resolve="data" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="17nGqbJd3hk" role="3clF46">
        <property role="TrG5h" value="data" />
        <node concept="3uibUv" id="17nGqbJd3hj" role="1tU5fm">
          <ref role="3uigEE" node="3vyG44AulHp" resolve="MouseEventData" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="17nGqbJd3r4">
    <property role="TrG5h" value="SceneLayouter" />
    <node concept="2tJIrI" id="4y$DvIXItQZ" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXItSd" role="jymVt">
      <property role="TrG5h" value="relayout" />
      <node concept="3clFbS" id="4y$DvIXItSg" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIXItSh" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIXItRR" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="17nGqbJd3r5" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="17nGqbJd3sJ">
    <property role="TrG5h" value="EditorCellProvider" />
    <node concept="2tJIrI" id="17nGqbJd3th" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJd3xz" role="jymVt">
      <property role="TrG5h" value="getCells" />
      <node concept="3clFbS" id="17nGqbJd3xA" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJd3xB" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJd3va" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="17nGqbJkRlZ" role="11_B2D">
          <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJd3zp" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJ_qgG" role="jymVt">
      <property role="TrG5h" value="relayoutCells" />
      <node concept="3Tm1VV" id="17nGqbJ_qgI" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJ_qgJ" role="3clF45" />
      <node concept="3clFbS" id="17nGqbJ_qgK" role="3clF47">
        <node concept="2Gpval" id="17nGqbJAhmB" role="3cqZAp">
          <node concept="2GrKxI" id="17nGqbJAhmC" role="2Gsz3X">
            <property role="TrG5h" value="cell" />
          </node>
          <node concept="1rXfSq" id="17nGqbJAhmD" role="2GsD0m">
            <ref role="37wK5l" node="17nGqbJd3xz" resolve="getCells" />
          </node>
          <node concept="3clFbS" id="17nGqbJAhmE" role="2LFqv$">
            <node concept="3clFbF" id="17nGqbJAhDR" role="3cqZAp">
              <node concept="2OqwBi" id="17nGqbJAhXA" role="3clFbG">
                <node concept="2GrUjf" id="17nGqbJAhDP" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="17nGqbJAhmC" resolve="cell" />
                </node>
                <node concept="liA8E" id="17nGqbJArN1" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.relayout()" resolve="relayout" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2JFqV2" id="17nGqbJAtKh" role="2frcjj" />
    </node>
    <node concept="3Tm1VV" id="17nGqbJd3sK" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="17nGqbJeGPf">
    <property role="TrG5h" value="KeyboardListener" />
    <node concept="2tJIrI" id="17nGqbJeGQM" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJeGSy" role="jymVt">
      <property role="TrG5h" value="onBackspacePressed" />
      <node concept="3clFbS" id="17nGqbJeGS_" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJeGSA" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJeGSo" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="17nGqbJeGPg" role="1B3o_S" />
    <node concept="3UR2Jj" id="17nGqbJeGQt" role="lGtFl">
      <node concept="TZ5HA" id="17nGqbJeGQu" role="TZ5H$">
        <node concept="1dT_AC" id="17nGqbJeGQv" role="1dT_Ay">
          <property role="1dT_AB" value="FIXME make real key event listener" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="13N5a7yAkgu">
    <property role="TrG5h" value="SceneCompletionAction" />
    <node concept="2tJIrI" id="5jb5jNBOkaE" role="jymVt" />
    <node concept="3clFb_" id="13N5a7yAs_h" role="jymVt">
      <property role="TrG5h" value="getMatchingText" />
      <node concept="3clFbS" id="13N5a7yAs_k" role="3clF47" />
      <node concept="3Tm1VV" id="13N5a7yAs_l" role="1B3o_S" />
      <node concept="3uibUv" id="13N5a7yAs_6" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="5jb5jNC5CTi" role="3clF46">
        <property role="TrG5h" value="pattern" />
        <node concept="3uibUv" id="5jb5jNC5CTh" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="13N5a7yAs_I" role="jymVt" />
    <node concept="3clFb_" id="13N5a7yAsBc" role="jymVt">
      <property role="TrG5h" value="getDescriptionText" />
      <node concept="3clFbS" id="13N5a7yAsBf" role="3clF47" />
      <node concept="3Tm1VV" id="13N5a7yAsBg" role="1B3o_S" />
      <node concept="3uibUv" id="13N5a7yAsAQ" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="13N5a7yAsBP" role="jymVt" />
    <node concept="3clFb_" id="13N5a7yAsDK" role="jymVt">
      <property role="TrG5h" value="invoke" />
      <node concept="37vLTG" id="5jb5jNC6fqk" role="3clF46">
        <property role="TrG5h" value="pattern" />
        <node concept="3uibUv" id="5jb5jNC6frU" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="13N5a7yAsF4" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="13N5a7yAsGp" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="13N5a7yAsIO" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="13N5a7yAsKd" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="13N5a7yAsDN" role="3clF47" />
      <node concept="3Tm1VV" id="13N5a7yAsDO" role="1B3o_S" />
      <node concept="3cqZAl" id="13N5a7yAsDe" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="13N5a7yAkgv" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="17nGqbJm4gr">
    <property role="TrG5h" value="SceneCompletionProvider" />
    <node concept="2tJIrI" id="17nGqbJm4h3" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJm4jT" role="jymVt">
      <property role="TrG5h" value="getActions" />
      <node concept="3clFbS" id="17nGqbJm4jW" role="3clF47" />
      <node concept="3Tm1VV" id="17nGqbJm4jX" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJm4i8" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="17nGqbJm4jK" role="11_B2D">
          <ref role="3uigEE" node="13N5a7yAkgu" resolve="SceneCompletionAction" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="17nGqbJm4gs" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="4y$DvIY3jWa">
    <property role="TrG5h" value="Layer" />
    <node concept="3Tm1VV" id="4y$DvIY3jWb" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4y$DvIYmXQF">
    <property role="TrG5h" value="BackgroundFacility" />
    <node concept="2tJIrI" id="4y$DvIYmXRU" role="jymVt" />
    <node concept="312cEg" id="5MmYuOgxijc" role="jymVt">
      <property role="TrG5h" value="myScene" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5MmYuOgxi6e" role="1B3o_S" />
      <node concept="3uibUv" id="5MmYuOgxij5" role="1tU5fm">
        <ref role="3uigEE" node="17nGqbJcVKF" resolve="SceneEditor" />
      </node>
      <node concept="2AHcQZ" id="1iOpS24$gJs" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24$gNA" role="jymVt" />
    <node concept="312cEg" id="4y$DvIYmY1t" role="jymVt">
      <property role="TrG5h" value="myFocus" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4y$DvIYmXSJ" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIYmY1l" role="1tU5fm">
        <ref role="3uigEE" to="rvgs:4y$DvIXWfQg" resolve="SceneFocusModel" />
      </node>
      <node concept="2AHcQZ" id="1iOpS24$gYo" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24$j8i" role="jymVt" />
    <node concept="312cEg" id="1iOpS24$jnB" role="jymVt">
      <property role="TrG5h" value="myViewpoint" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1iOpS24$jf2" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS24$jny" role="1tU5fm">
        <ref role="3uigEE" to="rvgs:1iOpS24$iQB" resolve="ModifiableSceneViewpoint" />
      </node>
      <node concept="2AHcQZ" id="1iOpS24$jt0" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIYmXS6" role="jymVt" />
    <node concept="3clFbW" id="4y$DvIYmY27" role="jymVt">
      <node concept="3cqZAl" id="4y$DvIYmY28" role="3clF45" />
      <node concept="3Tm1VV" id="4y$DvIYmY29" role="1B3o_S" />
      <node concept="3clFbS" id="4y$DvIYmY2b" role="3clF47">
        <node concept="3clFbF" id="4y$DvIYmY2f" role="3cqZAp">
          <node concept="37vLTI" id="4y$DvIYmY2h" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIYmYsV" role="37vLTJ">
              <ref role="3cqZAo" node="4y$DvIYmY1t" resolve="myFocus" />
            </node>
            <node concept="37vLTw" id="4y$DvIYmY2o" role="37vLTx">
              <ref role="3cqZAo" node="4y$DvIYmY2e" resolve="sceneFocus" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5MmYuOgxisd" role="3cqZAp">
          <node concept="37vLTI" id="5MmYuOgxjdg" role="3clFbG">
            <node concept="37vLTw" id="5MmYuOgxji$" role="37vLTx">
              <ref role="3cqZAo" node="4y$DvIYmYil" resolve="scene" />
            </node>
            <node concept="37vLTw" id="5MmYuOgxisb" role="37vLTJ">
              <ref role="3cqZAo" node="5MmYuOgxijc" resolve="myScene" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24$j_z" role="3cqZAp">
          <node concept="37vLTI" id="1iOpS24$mww" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24$mCJ" role="37vLTx">
              <ref role="3cqZAo" node="1iOpS24$i3u" resolve="sceneViewpoint" />
            </node>
            <node concept="37vLTw" id="1iOpS24$j_x" role="37vLTJ">
              <ref role="3cqZAo" node="1iOpS24$jnB" resolve="myViewpoint" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4y$DvIYn3Zj" role="3cqZAp" />
        <node concept="3clFbF" id="4y$DvIYn433" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIYn49l" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIYn431" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIYmYil" resolve="scene" />
            </node>
            <node concept="liA8E" id="4y$DvIYn4fe" role="2OqNvi">
              <ref role="37wK5l" node="17nGqbJd3Bi" resolve="addClickListener" />
              <node concept="37vLTw" id="4y$DvIYn4iS" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIYmYmc" resolve="backgroundLayer" />
              </node>
              <node concept="2ShNRf" id="4y$DvIYn4rR" role="37wK5m">
                <node concept="HV5vD" id="4y$DvIYn4Rt" role="2ShVmc">
                  <ref role="HV5vE" node="4y$DvIYmXUU" resolve="BackgroundFacility.MyClickListener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24$hrn" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS24$hzy" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24$hrl" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIYmYil" resolve="scene" />
            </node>
            <node concept="liA8E" id="1iOpS24$hSU" role="2OqNvi">
              <ref role="37wK5l" node="17nGqbJd3JS" resolve="addDragListener" />
              <node concept="37vLTw" id="1iOpS24_mFI" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIYmYmc" resolve="backgroundLayer" />
              </node>
              <node concept="2ShNRf" id="1iOpS24_mIk" role="37wK5m">
                <node concept="HV5vD" id="1iOpS24_nBJ" role="2ShVmc">
                  <ref role="HV5vE" node="1iOpS24$BzK" resolve="BackgroundFacility.MyDragListener" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIYmYil" role="3clF46">
        <property role="TrG5h" value="scene" />
        <node concept="3uibUv" id="4y$DvIYmYlI" role="1tU5fm">
          <ref role="3uigEE" node="17nGqbJcVKF" resolve="SceneEditor" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIYmY2e" role="3clF46">
        <property role="TrG5h" value="sceneFocus" />
        <node concept="3uibUv" id="4y$DvIYmY2d" role="1tU5fm">
          <ref role="3uigEE" to="rvgs:4y$DvIXWfQg" resolve="SceneFocusModel" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIYmYmc" role="3clF46">
        <property role="TrG5h" value="backgroundLayer" />
        <node concept="3uibUv" id="4y$DvIYmYp9" role="1tU5fm">
          <ref role="3uigEE" node="4y$DvIY3jWa" resolve="Layer" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24$i3u" role="3clF46">
        <property role="TrG5h" value="sceneViewpoint" />
        <node concept="3uibUv" id="1iOpS24$j7d" role="1tU5fm">
          <ref role="3uigEE" to="rvgs:1iOpS24$iQB" resolve="ModifiableSceneViewpoint" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIYmXTH" role="jymVt" />
    <node concept="312cEu" id="4y$DvIYmXUU" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyClickListener" />
      <node concept="2tJIrI" id="4y$DvIYmXXI" role="jymVt" />
      <node concept="3clFb_" id="4y$DvIYmXYc" role="jymVt">
        <property role="TrG5h" value="onMouseClicked" />
        <node concept="3Tm1VV" id="4y$DvIYmXYe" role="1B3o_S" />
        <node concept="3cqZAl" id="4y$DvIYmXYf" role="3clF45" />
        <node concept="37vLTG" id="4y$DvIYmXYg" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="4y$DvIYmXYh" role="1tU5fm">
            <ref role="3uigEE" node="3vyG44AuRcU" resolve="ClickEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="4y$DvIYmXYi" role="3clF47">
          <node concept="3clFbJ" id="4y$DvIYn0Dd" role="3cqZAp">
            <node concept="3fqX7Q" id="4y$DvIYn1JG" role="3clFbw">
              <node concept="2OqwBi" id="4y$DvIYn1JI" role="3fr31v">
                <node concept="2OqwBi" id="4y$DvIYn1JJ" role="2Oq$k0">
                  <node concept="37vLTw" id="4y$DvIYn1JK" role="2Oq$k0">
                    <ref role="3cqZAo" node="4y$DvIYmXYg" resolve="event" />
                  </node>
                  <node concept="2OwXpG" id="4y$DvIYn1JL" role="2OqNvi">
                    <ref role="2Oxat5" node="3vyG44AuReH" resolve="data" />
                  </node>
                </node>
                <node concept="2OwXpG" id="4y$DvIYn1JM" role="2OqNvi">
                  <ref role="2Oxat5" node="3vyG44AulJH" resolve="metaDown" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="4y$DvIYn0Df" role="3clFbx">
              <node concept="3clFbF" id="4y$DvIYn1Wl" role="3cqZAp">
                <node concept="2OqwBi" id="4y$DvIYn27k" role="3clFbG">
                  <node concept="37vLTw" id="4y$DvIYn1Wk" role="2Oq$k0">
                    <ref role="3cqZAo" node="4y$DvIYmY1t" resolve="myFocus" />
                  </node>
                  <node concept="liA8E" id="4y$DvIYn3Tx" role="2OqNvi">
                    <ref role="37wK5l" to="rvgs:4y$DvIXWgRe" resolve="clearFocus" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="5MmYuOgxjtN" role="3cqZAp">
                <node concept="2OqwBi" id="5MmYuOgxjDr" role="3clFbG">
                  <node concept="37vLTw" id="5MmYuOgxjtL" role="2Oq$k0">
                    <ref role="3cqZAo" node="5MmYuOgxijc" resolve="myScene" />
                  </node>
                  <node concept="liA8E" id="5MmYuOgxjKl" role="2OqNvi">
                    <ref role="37wK5l" node="6tmlia_MTZ4" resolve="fireRepaint" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4y$DvIYmXYj" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIYmXUV" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIYmXWR" role="EKbjA">
        <ref role="3uigEE" node="17nGqbJcVRI" resolve="ClickEventListener" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24$AT2" role="jymVt" />
    <node concept="312cEu" id="1iOpS24$BzK" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyDragListener" />
      <node concept="2tJIrI" id="1iOpS24$CoN" role="jymVt" />
      <node concept="3clFb_" id="1iOpS24$Cpf" role="jymVt">
        <property role="TrG5h" value="onDragStarted" />
        <node concept="3Tm1VV" id="1iOpS24$Cph" role="1B3o_S" />
        <node concept="3cqZAl" id="1iOpS24$Cpi" role="3clF45" />
        <node concept="37vLTG" id="1iOpS24$Cpj" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="1iOpS24$Cpk" role="1tU5fm">
            <ref role="3uigEE" node="1KCfUoKRUJj" resolve="DragEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="1iOpS24$Cpl" role="3clF47">
          <node concept="3clFbJ" id="1iOpS24$Cxy" role="3cqZAp">
            <node concept="2OqwBi" id="1iOpS24$Dqu" role="3clFbw">
              <node concept="2OqwBi" id="1iOpS24$CPY" role="2Oq$k0">
                <node concept="37vLTw" id="1iOpS24$CEK" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iOpS24$Cpj" resolve="event" />
                </node>
                <node concept="2OwXpG" id="1iOpS24$D5x" role="2OqNvi">
                  <ref role="2Oxat5" node="3vyG44AuBRH" resolve="data" />
                </node>
              </node>
              <node concept="2OwXpG" id="1iOpS24$DyG" role="2OqNvi">
                <ref role="2Oxat5" node="3vyG44AulJH" resolve="metaDown" />
              </node>
            </node>
            <node concept="3clFbS" id="1iOpS24$Cx$" role="3clFbx">
              <node concept="3cpWs8" id="1iOpS24$G78" role="3cqZAp">
                <node concept="3cpWsn" id="1iOpS24$G79" role="3cpWs9">
                  <property role="TrG5h" value="origin" />
                  <node concept="3uibUv" id="1iOpS24$G77" role="1tU5fm">
                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                  </node>
                  <node concept="2OqwBi" id="1iOpS24$G7a" role="33vP2m">
                    <node concept="37vLTw" id="1iOpS24$G7b" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iOpS24$jnB" resolve="myViewpoint" />
                    </node>
                    <node concept="liA8E" id="1iOpS24$G7c" role="2OqNvi">
                      <ref role="37wK5l" to="rvgs:1KCfUoKQIdG" resolve="getEditorShift" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1iOpS24$DN2" role="3cqZAp">
                <node concept="2OqwBi" id="1iOpS24$DWW" role="3clFbG">
                  <node concept="37vLTw" id="1iOpS24$DN1" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iOpS24$Cpj" resolve="event" />
                  </node>
                  <node concept="liA8E" id="1iOpS24$E3X" role="2OqNvi">
                    <ref role="37wK5l" node="2XwVnrt0l_8" resolve="consume" />
                    <node concept="2ShNRf" id="1iOpS24$E98" role="37wK5m">
                      <node concept="1pGfFk" id="1iOpS24$EFb" role="2ShVmc">
                        <ref role="37wK5l" node="1iOpS24$kwE" resolve="BackgroundFacility.MyViewpointModifier" />
                        <node concept="3cpWsd" id="1iOpS24_4S3" role="37wK5m">
                          <node concept="2OqwBi" id="1iOpS24_638" role="3uHU7B">
                            <node concept="2OqwBi" id="1iOpS24_5u1" role="2Oq$k0">
                              <node concept="37vLTw" id="1iOpS24_5gf" role="2Oq$k0">
                                <ref role="3cqZAo" node="1iOpS24$Cpj" resolve="event" />
                              </node>
                              <node concept="2OwXpG" id="1iOpS24_5G5" role="2OqNvi">
                                <ref role="2Oxat5" node="3vyG44AuBRH" resolve="data" />
                              </node>
                            </node>
                            <node concept="2OwXpG" id="1iOpS24_7VG" role="2OqNvi">
                              <ref role="2Oxat5" node="3vyG44AulJ$" resolve="x" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1iOpS24_54S" role="3uHU7w">
                            <node concept="37vLTw" id="1iOpS24_54T" role="2Oq$k0">
                              <ref role="3cqZAo" node="1iOpS24$G79" resolve="origin" />
                            </node>
                            <node concept="2OwXpG" id="1iOpS24_54U" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWsd" id="1iOpS24_h$U" role="37wK5m">
                          <node concept="2OqwBi" id="1iOpS24_inz" role="3uHU7w">
                            <node concept="37vLTw" id="1iOpS24_hQE" role="2Oq$k0">
                              <ref role="3cqZAo" node="1iOpS24$G79" resolve="origin" />
                            </node>
                            <node concept="2OwXpG" id="1iOpS24_msP" role="2OqNvi">
                              <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="1iOpS24_9_X" role="3uHU7B">
                            <node concept="2OqwBi" id="1iOpS24_8Jq" role="2Oq$k0">
                              <node concept="37vLTw" id="1iOpS24_8pj" role="2Oq$k0">
                                <ref role="3cqZAo" node="1iOpS24$Cpj" resolve="event" />
                              </node>
                              <node concept="2OwXpG" id="1iOpS24_99Z" role="2OqNvi">
                                <ref role="2Oxat5" node="3vyG44AuBRH" resolve="data" />
                              </node>
                            </node>
                            <node concept="2OwXpG" id="1iOpS24_bFg" role="2OqNvi">
                              <ref role="2Oxat5" node="3vyG44AulJB" resolve="y" />
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
        <node concept="2AHcQZ" id="1iOpS24$Cpm" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1iOpS24$Bfo" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS24$Co7" role="EKbjA">
        <ref role="3uigEE" node="17nGqbJcVM0" resolve="DragEventListener" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24$jGF" role="jymVt" />
    <node concept="312cEu" id="1iOpS24$jWg" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyViewpointModifier" />
      <node concept="2tJIrI" id="1iOpS24$k5p" role="jymVt" />
      <node concept="312cEg" id="1iOpS24$Lb2" role="jymVt">
        <property role="TrG5h" value="dx" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="1iOpS24$KSj" role="1B3o_S" />
        <node concept="10Oyi0" id="1iOpS24$L9P" role="1tU5fm" />
      </node>
      <node concept="312cEg" id="1iOpS24$LX9" role="jymVt">
        <property role="TrG5h" value="dy" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="1iOpS24$LDc" role="1B3o_S" />
        <node concept="10Oyi0" id="1iOpS24$LVW" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="1iOpS24$kfm" role="jymVt" />
      <node concept="3clFbW" id="1iOpS24$kwE" role="jymVt">
        <node concept="3cqZAl" id="1iOpS24$kwF" role="3clF45" />
        <node concept="3Tm1VV" id="1iOpS24$kwG" role="1B3o_S" />
        <node concept="3clFbS" id="1iOpS24$kwI" role="3clF47">
          <node concept="3clFbF" id="1iOpS24$kwM" role="3cqZAp">
            <node concept="37vLTI" id="1iOpS24$N6X" role="3clFbG">
              <node concept="37vLTw" id="1iOpS24$NbU" role="37vLTx">
                <ref role="3cqZAo" node="1iOpS24$JVi" resolve="dx" />
              </node>
              <node concept="2OqwBi" id="1iOpS24$NOk" role="37vLTJ">
                <node concept="Xjq3P" id="1iOpS24$Nzm" role="2Oq$k0" />
                <node concept="2OwXpG" id="1iOpS24$O3m" role="2OqNvi">
                  <ref role="2Oxat5" node="1iOpS24$Lb2" resolve="dx" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1iOpS24$Ohp" role="3cqZAp">
            <node concept="37vLTI" id="1iOpS24$RFR" role="3clFbG">
              <node concept="37vLTw" id="1iOpS24$RPO" role="37vLTx">
                <ref role="3cqZAo" node="1iOpS24$KaU" resolve="dy" />
              </node>
              <node concept="2OqwBi" id="1iOpS24$OtB" role="37vLTJ">
                <node concept="Xjq3P" id="1iOpS24$Ohn" role="2Oq$k0" />
                <node concept="2OwXpG" id="1iOpS24$OGB" role="2OqNvi">
                  <ref role="2Oxat5" node="1iOpS24$LX9" resolve="dy" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1iOpS24$JVi" role="3clF46">
          <property role="TrG5h" value="dx" />
          <node concept="10Oyi0" id="1iOpS24$K7F" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="1iOpS24$KaU" role="3clF46">
          <property role="TrG5h" value="dy" />
          <node concept="10Oyi0" id="1iOpS24$Khw" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="1iOpS24$kuu" role="jymVt" />
      <node concept="3clFb_" id="1iOpS24$k5H" role="jymVt">
        <property role="TrG5h" value="dragTo" />
        <node concept="3Tm1VV" id="1iOpS24$k5J" role="1B3o_S" />
        <node concept="3cqZAl" id="1iOpS24$k5K" role="3clF45" />
        <node concept="37vLTG" id="1iOpS24$k5L" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="1iOpS24$k5M" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="1iOpS24$k5N" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="1iOpS24$k5O" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="1iOpS24$k5P" role="3clF47">
          <node concept="3clFbF" id="1iOpS24$mNo" role="3cqZAp">
            <node concept="2OqwBi" id="1iOpS24$n1R" role="3clFbG">
              <node concept="37vLTw" id="1iOpS24$mNn" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS24$jnB" resolve="myViewpoint" />
              </node>
              <node concept="liA8E" id="1iOpS24$nbU" role="2OqNvi">
                <ref role="37wK5l" to="rvgs:1iOpS24$iTH" resolve="setEditorShift" />
                <node concept="2ShNRf" id="1iOpS24$niy" role="37wK5m">
                  <node concept="1pGfFk" id="1iOpS24$oTL" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                    <node concept="3cpWsd" id="1iOpS24$pYa" role="37wK5m">
                      <node concept="37vLTw" id="1iOpS24$SdQ" role="3uHU7w">
                        <ref role="3cqZAo" node="1iOpS24$Lb2" resolve="dx" />
                      </node>
                      <node concept="37vLTw" id="1iOpS24$p0h" role="3uHU7B">
                        <ref role="3cqZAo" node="1iOpS24$k5L" resolve="x" />
                      </node>
                    </node>
                    <node concept="3cpWsd" id="1iOpS24$wUn" role="37wK5m">
                      <node concept="37vLTw" id="1iOpS24$SDD" role="3uHU7w">
                        <ref role="3cqZAo" node="1iOpS24$LX9" resolve="dy" />
                      </node>
                      <node concept="37vLTw" id="1iOpS24$vUk" role="3uHU7B">
                        <ref role="3cqZAo" node="1iOpS24$k5N" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1iOpS24$k5Q" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1iOpS24$jUu" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS24$k52" role="EKbjA">
        <ref role="3uigEE" to="rvgs:2_D_3xWXMp$" resolve="DragEventHandler" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4y$DvIYmXQG" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5jb5jNBOzSH">
    <property role="TrG5h" value="CompletionProviderByViewpoint" />
    <node concept="2tJIrI" id="5jb5jNBOzUE" role="jymVt" />
    <node concept="312cEg" id="5jb5jNBO$33" role="jymVt">
      <property role="TrG5h" value="myCompletionProvider" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5jb5jNBOzVO" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNBOzXv" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
        <node concept="3uibUv" id="5jb5jNBOzZ_" role="11_B2D">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="5jb5jNBO$2n" role="11_B2D">
            <ref role="3uigEE" to="hyqd:5jb5jNBOk89" resolve="PositionalCompletionItem" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="5jb5jNBOHsj" role="jymVt">
      <property role="TrG5h" value="myViewpoint" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5jb5jNBOGZZ" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNBOHrc" role="1tU5fm">
        <ref role="3uigEE" to="rvgs:17nGqbJdbfv" resolve="SceneViewpoint" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5jb5jNBOzSI" role="1B3o_S" />
    <node concept="3uibUv" id="5jb5jNBOzUu" role="EKbjA">
      <ref role="3uigEE" node="17nGqbJm4gr" resolve="SceneCompletionProvider" />
    </node>
    <node concept="2tJIrI" id="5jb5jNBO$4y" role="jymVt" />
    <node concept="3clFbW" id="5jb5jNBO$52" role="jymVt">
      <node concept="3cqZAl" id="5jb5jNBO$53" role="3clF45" />
      <node concept="3Tm1VV" id="5jb5jNBO$54" role="1B3o_S" />
      <node concept="3clFbS" id="5jb5jNBO$56" role="3clF47">
        <node concept="3clFbF" id="5jb5jNBOO60" role="3cqZAp">
          <node concept="37vLTI" id="5jb5jNBOOiU" role="3clFbG">
            <node concept="37vLTw" id="5jb5jNBOOrp" role="37vLTx">
              <ref role="3cqZAo" node="5jb5jNBOHhO" resolve="viewpoint" />
            </node>
            <node concept="37vLTw" id="5jb5jNBOO5Y" role="37vLTJ">
              <ref role="3cqZAo" node="5jb5jNBOHsj" resolve="myViewpoint" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jb5jNBO$5c" role="3cqZAp">
          <node concept="37vLTI" id="5jb5jNBO$5e" role="3clFbG">
            <node concept="37vLTw" id="5jb5jNBO$eA" role="37vLTJ">
              <ref role="3cqZAo" node="5jb5jNBO$33" resolve="myCompletionProvider" />
            </node>
            <node concept="37vLTw" id="5jb5jNBO$5l" role="37vLTx">
              <ref role="3cqZAo" node="5jb5jNBO$5b" resolve="completionProvider" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="5jb5jNBOHhO" role="3clF46">
        <property role="TrG5h" value="viewpoint" />
        <node concept="3uibUv" id="5jb5jNBOHnu" role="1tU5fm">
          <ref role="3uigEE" to="rvgs:17nGqbJdbfv" resolve="SceneViewpoint" />
        </node>
      </node>
      <node concept="37vLTG" id="5jb5jNBO$5b" role="3clF46">
        <property role="TrG5h" value="completionProvider" />
        <node concept="3uibUv" id="5jb5jNBO$58" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
          <node concept="3uibUv" id="5jb5jNBO$59" role="11_B2D">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="5jb5jNBO$5a" role="11_B2D">
              <ref role="3uigEE" to="hyqd:5jb5jNBOk89" resolve="PositionalCompletionItem" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNBO$gV" role="jymVt" />
    <node concept="3clFb_" id="5jb5jNBO$jL" role="jymVt">
      <property role="TrG5h" value="getActions" />
      <node concept="3Tm1VV" id="5jb5jNBO$jN" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNBO$jO" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5jb5jNBO$jP" role="11_B2D">
          <ref role="3uigEE" node="13N5a7yAkgu" resolve="SceneCompletionAction" />
        </node>
      </node>
      <node concept="3clFbS" id="5jb5jNBO$jQ" role="3clF47">
        <node concept="3cpWs8" id="5jb5jNBO$ux" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNBO$uB" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="5jb5jNBO$uD" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="5jb5jNBO$wX" role="11_B2D">
                <ref role="3uigEE" node="13N5a7yAkgu" resolve="SceneCompletionAction" />
              </node>
            </node>
            <node concept="2ShNRf" id="5jb5jNBO$_I" role="33vP2m">
              <node concept="1pGfFk" id="5jb5jNBO_1Z" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="5jb5jNBO_cP" role="1pMfVU">
                  <ref role="3uigEE" node="13N5a7yAkgu" resolve="SceneCompletionAction" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="5jb5jNBO_l2" role="3cqZAp">
          <node concept="2GrKxI" id="5jb5jNBO_l4" role="2Gsz3X">
            <property role="TrG5h" value="completionItem" />
          </node>
          <node concept="2OqwBi" id="5jb5jNBO_Q$" role="2GsD0m">
            <node concept="37vLTw" id="5jb5jNBO_sR" role="2Oq$k0">
              <ref role="3cqZAo" node="5jb5jNBO$33" resolve="myCompletionProvider" />
            </node>
            <node concept="liA8E" id="5jb5jNBOA49" role="2OqNvi">
              <ref role="37wK5l" to="82uw:~Supplier.get()" resolve="get" />
            </node>
          </node>
          <node concept="3clFbS" id="5jb5jNBO_l8" role="2LFqv$">
            <node concept="3clFbF" id="5jb5jNBOAdW" role="3cqZAp">
              <node concept="2OqwBi" id="5jb5jNBOAEz" role="3clFbG">
                <node concept="37vLTw" id="5jb5jNBOAdV" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jb5jNBO$uB" resolve="res" />
                </node>
                <node concept="liA8E" id="5jb5jNBOEiV" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="5jb5jNBOEUk" role="37wK5m">
                    <node concept="YeOm9" id="5jb5jNBOFkJ" role="2ShVmc">
                      <node concept="1Y3b0j" id="5jb5jNBOFkM" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="1Y3XeK" node="13N5a7yAkgu" resolve="SceneCompletionAction" />
                        <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                        <node concept="3Tm1VV" id="5jb5jNBOFkN" role="1B3o_S" />
                        <node concept="3clFb_" id="5jb5jNBOFkP" role="jymVt">
                          <property role="TrG5h" value="getMatchingText" />
                          <node concept="3Tm1VV" id="5jb5jNBOFkR" role="1B3o_S" />
                          <node concept="3uibUv" id="5jb5jNBOFkS" role="3clF45">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                          <node concept="3clFbS" id="5jb5jNBOFkT" role="3clF47">
                            <node concept="3clFbF" id="5jb5jNBOFKN" role="3cqZAp">
                              <node concept="2OqwBi" id="5jb5jNBOFWt" role="3clFbG">
                                <node concept="2GrUjf" id="5jb5jNBOFKM" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="5jb5jNBO_l4" resolve="completionItem" />
                                </node>
                                <node concept="liA8E" id="5jb5jNBOGmc" role="2OqNvi">
                                  <ref role="37wK5l" to="hyqd:13N5a7yAs_h" resolve="getMatchingText" />
                                  <node concept="37vLTw" id="5jb5jNC5DwH" role="37wK5m">
                                    <ref role="3cqZAo" node="5jb5jNC5Dgm" resolve="pattern" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTG" id="5jb5jNC5Dgm" role="3clF46">
                            <property role="TrG5h" value="pattern" />
                            <node concept="3uibUv" id="5jb5jNC5Dgl" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFb_" id="5jb5jNBOFkV" role="jymVt">
                          <property role="TrG5h" value="getDescriptionText" />
                          <node concept="3Tm1VV" id="5jb5jNBOFkX" role="1B3o_S" />
                          <node concept="3uibUv" id="5jb5jNBOFkY" role="3clF45">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                          <node concept="3clFbS" id="5jb5jNBOFkZ" role="3clF47">
                            <node concept="3clFbF" id="5jb5jNBOGve" role="3cqZAp">
                              <node concept="2OqwBi" id="5jb5jNBOGvf" role="3clFbG">
                                <node concept="2GrUjf" id="5jb5jNBOGvg" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="5jb5jNBO_l4" resolve="completionItem" />
                                </node>
                                <node concept="liA8E" id="5jb5jNBOGvh" role="2OqNvi">
                                  <ref role="37wK5l" to="hyqd:13N5a7yAsBc" resolve="getDescriptionText" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFb_" id="5jb5jNBOFl1" role="jymVt">
                          <property role="TrG5h" value="invoke" />
                          <node concept="37vLTG" id="5jb5jNC6esk" role="3clF46">
                            <property role="TrG5h" value="pattern" />
                            <node concept="3uibUv" id="5jb5jNC6eJn" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                            </node>
                          </node>
                          <node concept="37vLTG" id="5jb5jNBOFl2" role="3clF46">
                            <property role="TrG5h" value="x" />
                            <node concept="10Oyi0" id="5jb5jNBOFl3" role="1tU5fm" />
                          </node>
                          <node concept="37vLTG" id="5jb5jNBOFl4" role="3clF46">
                            <property role="TrG5h" value="y" />
                            <node concept="10Oyi0" id="5jb5jNBOFl5" role="1tU5fm" />
                          </node>
                          <node concept="3Tm1VV" id="5jb5jNBOFl7" role="1B3o_S" />
                          <node concept="3cqZAl" id="5jb5jNBOFl8" role="3clF45" />
                          <node concept="3clFbS" id="5jb5jNBOFl9" role="3clF47">
                            <node concept="3cpWs8" id="5jb5jNBOI_g" role="3cqZAp">
                              <node concept="3cpWsn" id="5jb5jNBOI_h" role="3cpWs9">
                                <property role="TrG5h" value="modelX" />
                                <node concept="10Oyi0" id="5jb5jNBOI_f" role="1tU5fm" />
                                <node concept="2OqwBi" id="5jb5jNBOI_i" role="33vP2m">
                                  <node concept="37vLTw" id="5jb5jNBOI_j" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5jb5jNBOHsj" resolve="myViewpoint" />
                                  </node>
                                  <node concept="liA8E" id="5jb5jNBOI_k" role="2OqNvi">
                                    <ref role="37wK5l" to="rvgs:309fsJ6iBhP" resolve="translateFromEditorX" />
                                    <node concept="37vLTw" id="5jb5jNBOI_l" role="37wK5m">
                                      <ref role="3cqZAo" node="5jb5jNBOFl2" resolve="x" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="5jb5jNBOIKJ" role="3cqZAp">
                              <node concept="3cpWsn" id="5jb5jNBOIKK" role="3cpWs9">
                                <property role="TrG5h" value="modelY" />
                                <node concept="10Oyi0" id="5jb5jNBOIKL" role="1tU5fm" />
                                <node concept="2OqwBi" id="5jb5jNBOIKM" role="33vP2m">
                                  <node concept="37vLTw" id="5jb5jNBOIKN" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5jb5jNBOHsj" resolve="myViewpoint" />
                                  </node>
                                  <node concept="liA8E" id="5jb5jNBOIKO" role="2OqNvi">
                                    <ref role="37wK5l" to="rvgs:309fsJ6iBhV" resolve="translateFromEditorY" />
                                    <node concept="37vLTw" id="5jb5jNBOJ4T" role="37wK5m">
                                      <ref role="3cqZAo" node="5jb5jNBOFl4" resolve="y" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="5jb5jNBOJoW" role="3cqZAp">
                              <node concept="2OqwBi" id="5jb5jNBOJAZ" role="3clFbG">
                                <node concept="2GrUjf" id="5jb5jNBOJoU" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="5jb5jNBO_l4" resolve="completionItem" />
                                </node>
                                <node concept="liA8E" id="5jb5jNBOK3J" role="2OqNvi">
                                  <ref role="37wK5l" to="hyqd:13N5a7yAsDK" resolve="invoke" />
                                  <node concept="37vLTw" id="5jb5jNC6fi8" role="37wK5m">
                                    <ref role="3cqZAo" node="5jb5jNC6esk" resolve="pattern" />
                                  </node>
                                  <node concept="37vLTw" id="5jb5jNBOM9k" role="37wK5m">
                                    <ref role="3cqZAo" node="5jb5jNBOI_h" resolve="modelX" />
                                  </node>
                                  <node concept="37vLTw" id="5jb5jNBOMYB" role="37wK5m">
                                    <ref role="3cqZAo" node="5jb5jNBOIKK" resolve="modelY" />
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
        </node>
        <node concept="3cpWs6" id="5jb5jNBONnM" role="3cqZAp">
          <node concept="37vLTw" id="5jb5jNBONrR" role="3cqZAk">
            <ref role="3cqZAo" node="5jb5jNBO$uB" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5jb5jNBO$jR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="1R4IoyRrSd8">
    <property role="TrG5h" value="SceneInitializer" />
    <node concept="2tJIrI" id="1R4IoyRrSdK" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyRrSfD" role="jymVt">
      <property role="TrG5h" value="onAdd" />
      <node concept="3clFbS" id="1R4IoyRrSfG" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyRrSfH" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyRrSfv" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1R4IoyRrSjc" role="jymVt" />
    <node concept="3clFb_" id="1R4IoyRrShL" role="jymVt">
      <property role="TrG5h" value="onRemove" />
      <node concept="3clFbS" id="1R4IoyRrShM" role="3clF47" />
      <node concept="3Tm1VV" id="1R4IoyRrShN" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyRrShO" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="1R4IoyRrSd9" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7eBFChA9Ziz">
    <property role="TrG5h" value="SceneStateManager" />
    <node concept="2tJIrI" id="7eBFChA9ZjF" role="jymVt" />
    <node concept="Wx3nA" id="7eBFChAa6fA" role="jymVt">
      <property role="TrG5h" value="INSTANCES" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7eBFChAa60q" role="1B3o_S" />
      <node concept="3uibUv" id="7eBFChAa6mA" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="7eBFChAa6nO" role="11_B2D">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
        <node concept="3uibUv" id="7eBFChAa6tx" role="11_B2D">
          <ref role="3uigEE" node="7eBFChA9Ziz" resolve="SceneStateManager" />
        </node>
      </node>
      <node concept="2ShNRf" id="7eBFChAa6vS" role="33vP2m">
        <node concept="1pGfFk" id="7eBFChAa6SL" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="7eBFChAa76q" role="1pMfVU">
            <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
          </node>
          <node concept="3uibUv" id="7eBFChAa76r" role="1pMfVU">
            <ref role="3uigEE" node="7eBFChA9Ziz" resolve="SceneStateManager" />
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
            <ref role="1Y3XeK" to="wvnl:~EditorExtension" resolve="EditorExtension" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
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
                <node concept="3clFbF" id="7eBFChAa5AT" role="3cqZAp">
                  <node concept="3clFbT" id="7eBFChAa5AS" role="3clFbG">
                    <property role="3clFbU" value="true" />
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
                      <node concept="2ShNRf" id="7eBFChAai9d" role="37wK5m">
                        <node concept="1pGfFk" id="7eBFChAamfi" role="2ShVmc">
                          <ref role="37wK5l" node="7eBFChAajdx" resolve="SceneStateManager" />
                          <node concept="37vLTw" id="7eBFChAamo3" role="37wK5m">
                            <ref role="3cqZAo" node="7eBFChAa5q4" resolve="ec" />
                          </node>
                        </node>
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
                <node concept="3cpWs8" id="7eBFChAaysQ" role="3cqZAp">
                  <node concept="3cpWsn" id="7eBFChAaysR" role="3cpWs9">
                    <property role="TrG5h" value="stateManager" />
                    <node concept="3uibUv" id="7eBFChAayst" role="1tU5fm">
                      <ref role="3uigEE" node="7eBFChA9Ziz" resolve="SceneStateManager" />
                    </node>
                    <node concept="2OqwBi" id="7eBFChAaysS" role="33vP2m">
                      <node concept="37vLTw" id="7eBFChAaysT" role="2Oq$k0">
                        <ref role="3cqZAo" node="7eBFChAa6fA" resolve="INSTANCES" />
                      </node>
                      <node concept="liA8E" id="7eBFChAaysU" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object)" resolve="remove" />
                        <node concept="37vLTw" id="7eBFChAaysV" role="37wK5m">
                          <ref role="3cqZAo" node="7eBFChAa5qd" resolve="ec" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7eBFChAamua" role="3cqZAp">
                  <node concept="2OqwBi" id="7eBFChAaQsg" role="3clFbG">
                    <node concept="2OqwBi" id="7eBFChAaz4C" role="2Oq$k0">
                      <node concept="37vLTw" id="7eBFChAaysW" role="2Oq$k0">
                        <ref role="3cqZAo" node="7eBFChAaysR" resolve="stateManager" />
                      </node>
                      <node concept="2OwXpG" id="7eBFChAaGG0" role="2OqNvi">
                        <ref role="2Oxat5" node="7eBFChAavbo" resolve="myStates" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7eBFChAb2Qs" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.clear()" resolve="clear" />
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
    <node concept="2tJIrI" id="7eBFChAakip" role="jymVt" />
    <node concept="312cEg" id="7eBFChAajZx" role="jymVt">
      <property role="TrG5h" value="myEditorComponent" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7eBFChAajKO" role="1B3o_S" />
      <node concept="3uibUv" id="7eBFChAakdK" role="1tU5fm">
        <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
      </node>
      <node concept="2AHcQZ" id="7eBFChAakwb" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="7eBFChAaiYb" role="jymVt" />
    <node concept="312cEg" id="7eBFChAavbo" role="jymVt">
      <property role="TrG5h" value="myStates" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7eBFChAauSE" role="1B3o_S" />
      <node concept="3uibUv" id="7eBFChAaw_K" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="7eBFChAawDF" role="11_B2D">
          <ref role="3uigEE" node="7eBFChAavsX" resolve="SceneStateManager.StateId" />
        </node>
        <node concept="3uibUv" id="7eBFChAawF8" role="11_B2D">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2ShNRf" id="7eBFChAb3tq" role="33vP2m">
        <node concept="1pGfFk" id="7eBFChAb3Ug" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="7eBFChAb4eN" role="1pMfVU">
            <ref role="3uigEE" node="7eBFChAavsX" resolve="SceneStateManager.StateId" />
          </node>
          <node concept="3uibUv" id="7eBFChAb4eO" role="1pMfVU">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7eBFChAauB8" role="jymVt" />
    <node concept="3clFbW" id="7eBFChAajdx" role="jymVt">
      <node concept="37vLTG" id="7eBFChAajrn" role="3clF46">
        <property role="TrG5h" value="ec" />
        <node concept="3uibUv" id="7eBFChAajro" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
        <node concept="2AHcQZ" id="7eBFChAajrp" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3cqZAl" id="7eBFChAajdz" role="3clF45" />
      <node concept="3Tm1VV" id="7eBFChAajd$" role="1B3o_S" />
      <node concept="3clFbS" id="7eBFChAajd_" role="3clF47">
        <node concept="3clFbF" id="7eBFChAakCm" role="3cqZAp">
          <node concept="37vLTI" id="7eBFChAalaI" role="3clFbG">
            <node concept="37vLTw" id="7eBFChAaldd" role="37vLTx">
              <ref role="3cqZAo" node="7eBFChAajrn" resolve="ec" />
            </node>
            <node concept="37vLTw" id="7eBFChAakCl" role="37vLTJ">
              <ref role="3cqZAo" node="7eBFChAajZx" resolve="myEditorComponent" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7eBFChAbBQk" role="jymVt" />
    <node concept="2YIFZL" id="7eBFChAbDR8" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="37vLTG" id="7eBFChAbEYc" role="3clF46">
        <property role="TrG5h" value="ec" />
        <node concept="3uibUv" id="7eBFChAbEYd" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
        <node concept="2AHcQZ" id="7eBFChAbEYe" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="7eBFChAbDRb" role="3clF47">
        <node concept="3clFbF" id="7eBFChAbF7E" role="3cqZAp">
          <node concept="2OqwBi" id="7eBFChAbFqp" role="3clFbG">
            <node concept="37vLTw" id="7eBFChAbF7D" role="2Oq$k0">
              <ref role="3cqZAo" node="7eBFChAa6fA" resolve="INSTANCES" />
            </node>
            <node concept="liA8E" id="7eBFChAbP_e" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="7eBFChAbPK$" role="37wK5m">
                <ref role="3cqZAo" node="7eBFChAbEYc" resolve="ec" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7eBFChAbCSM" role="1B3o_S" />
      <node concept="3uibUv" id="7eBFChAbEPG" role="3clF45">
        <ref role="3uigEE" node="7eBFChA9Ziz" resolve="SceneStateManager" />
      </node>
    </node>
    <node concept="2tJIrI" id="7eBFChAb4qG" role="jymVt" />
    <node concept="3clFb_" id="7eBFChAb5n8" role="jymVt">
      <property role="TrG5h" value="storeState" />
      <node concept="3clFbS" id="7eBFChAb5nb" role="3clF47">
        <node concept="3clFbF" id="7eBFChAb89f" role="3cqZAp">
          <node concept="2OqwBi" id="7eBFChAb8s$" role="3clFbG">
            <node concept="37vLTw" id="7eBFChAb89e" role="2Oq$k0">
              <ref role="3cqZAo" node="7eBFChAavbo" resolve="myStates" />
            </node>
            <node concept="liA8E" id="7eBFChAbbgS" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="2ShNRf" id="7eBFChAbbre" role="37wK5m">
                <node concept="1pGfFk" id="7eBFChAbkcw" role="2ShVmc">
                  <ref role="37wK5l" node="7eBFChAawad" resolve="SceneStateManager.StateId" />
                  <node concept="2OqwBi" id="7eBFChAbkQE" role="37wK5m">
                    <node concept="2OqwBi" id="7eBFChAbkw9" role="2Oq$k0">
                      <node concept="37vLTw" id="7eBFChAbklp" role="2Oq$k0">
                        <ref role="3cqZAo" node="7eBFChAb6F$" resolve="cell" />
                      </node>
                      <node concept="liA8E" id="7eBFChAbkE7" role="2OqNvi">
                        <ref role="37wK5l" to="f4zo:~EditorCell.getSNode()" resolve="getSNode" />
                      </node>
                    </node>
                    <node concept="liA8E" id="7eBFChAbl2b" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7eBFChAblnQ" role="37wK5m">
                    <node concept="37vLTw" id="7eBFChAbld3" role="2Oq$k0">
                      <ref role="3cqZAo" node="7eBFChAb6F$" resolve="cell" />
                    </node>
                    <node concept="liA8E" id="7eBFChAblKf" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell.getCellId()" resolve="getCellId" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7eBFChAbndN" role="37wK5m">
                    <ref role="3cqZAo" node="7eBFChAb779" resolve="key" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="7eBFChAbnpi" role="37wK5m">
                <ref role="3cqZAo" node="7eBFChAb7BY" resolve="state" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7eBFChAb4TN" role="1B3o_S" />
      <node concept="3cqZAl" id="7eBFChAb5mO" role="3clF45" />
      <node concept="16euLQ" id="7eBFChAb6fN" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="37vLTG" id="7eBFChAb6F$" role="3clF46">
        <property role="TrG5h" value="cell" />
        <node concept="3uibUv" id="7eBFChAb6Fz" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="37vLTG" id="7eBFChAb779" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="7eBFChAb7zf" role="1tU5fm">
          <ref role="3uigEE" node="7eBFChAanmT" resolve="SceneStateKey" />
          <node concept="16syzq" id="7eBFChAb7A1" role="11_B2D">
            <ref role="16sUi3" node="7eBFChAb6fN" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7eBFChAb7BY" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="16syzq" id="7eBFChAb83D" role="1tU5fm">
          <ref role="16sUi3" node="7eBFChAb6fN" resolve="T" />
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="7eBFChAbnxt" role="jymVt">
      <property role="TrG5h" value="loadState" />
      <node concept="3clFbS" id="7eBFChAbnxu" role="3clF47">
        <node concept="3clFbF" id="7eBFChAbnxv" role="3cqZAp">
          <node concept="10QFUN" id="7eBFChAbrHk" role="3clFbG">
            <node concept="16syzq" id="7eBFChAbrZx" role="10QFUM">
              <ref role="16sUi3" node="7eBFChAbnxL" resolve="T" />
            </node>
            <node concept="2OqwBi" id="7eBFChAbnxw" role="10QFUP">
              <node concept="37vLTw" id="7eBFChAbnxx" role="2Oq$k0">
                <ref role="3cqZAo" node="7eBFChAavbo" resolve="myStates" />
              </node>
              <node concept="liA8E" id="7eBFChAbnxy" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="2ShNRf" id="7eBFChAbnxz" role="37wK5m">
                  <node concept="1pGfFk" id="7eBFChAbnx$" role="2ShVmc">
                    <ref role="37wK5l" node="7eBFChAawad" resolve="SceneStateManager.StateId" />
                    <node concept="2OqwBi" id="7eBFChAbnx_" role="37wK5m">
                      <node concept="2OqwBi" id="7eBFChAbnxA" role="2Oq$k0">
                        <node concept="37vLTw" id="7eBFChAbnxB" role="2Oq$k0">
                          <ref role="3cqZAo" node="7eBFChAbnxM" resolve="cell" />
                        </node>
                        <node concept="liA8E" id="7eBFChAbnxC" role="2OqNvi">
                          <ref role="37wK5l" to="f4zo:~EditorCell.getSNode()" resolve="getSNode" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7eBFChAbnxD" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7eBFChAbnxE" role="37wK5m">
                      <node concept="37vLTw" id="7eBFChAbnxF" role="2Oq$k0">
                        <ref role="3cqZAo" node="7eBFChAbnxM" resolve="cell" />
                      </node>
                      <node concept="liA8E" id="7eBFChAbnxG" role="2OqNvi">
                        <ref role="37wK5l" to="f4zo:~EditorCell.getCellId()" resolve="getCellId" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7eBFChAbnxH" role="37wK5m">
                      <ref role="3cqZAo" node="7eBFChAbnxO" resolve="key" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7eBFChAbnxJ" role="1B3o_S" />
      <node concept="16syzq" id="7eBFChAbo$$" role="3clF45">
        <ref role="16sUi3" node="7eBFChAbnxL" resolve="T" />
      </node>
      <node concept="16euLQ" id="7eBFChAbnxL" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="37vLTG" id="7eBFChAbnxM" role="3clF46">
        <property role="TrG5h" value="cell" />
        <node concept="3uibUv" id="7eBFChAbnxN" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="37vLTG" id="7eBFChAbnxO" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="7eBFChAbnxP" role="1tU5fm">
          <ref role="3uigEE" node="7eBFChAanmT" resolve="SceneStateKey" />
          <node concept="16syzq" id="7eBFChAbnxQ" role="11_B2D">
            <ref role="16sUi3" node="7eBFChAbnxL" resolve="T" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7eBFChAaleL" role="jymVt" />
    <node concept="312cEu" id="7eBFChAavsX" role="jymVt">
      <property role="TrG5h" value="StateId" />
      <node concept="312cEg" id="7eBFChAavOT" role="jymVt">
        <property role="TrG5h" value="myNodeRef" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7eBFChAavL8" role="1B3o_S" />
        <node concept="3uibUv" id="7eBFChAavS5" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
      </node>
      <node concept="312cEg" id="7eBFChAaw1H" role="jymVt">
        <property role="TrG5h" value="myCellId" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7eBFChAavU6" role="1B3o_S" />
        <node concept="3uibUv" id="7eBFChAaw1A" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="312cEg" id="7eBFChAaw8R" role="jymVt">
        <property role="TrG5h" value="myKey" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7eBFChAaw3x" role="1B3o_S" />
        <node concept="3uibUv" id="7eBFChAaw8J" role="1tU5fm">
          <ref role="3uigEE" node="7eBFChAanmT" resolve="SceneStateKey" />
        </node>
      </node>
      <node concept="2tJIrI" id="7eBFChAaw9z" role="jymVt" />
      <node concept="3Tm6S6" id="7eBFChAavJQ" role="1B3o_S" />
      <node concept="3clFbW" id="7eBFChAawad" role="jymVt">
        <node concept="3cqZAl" id="7eBFChAawae" role="3clF45" />
        <node concept="3Tm6S6" id="7eBFChAawaf" role="1B3o_S" />
        <node concept="3clFbS" id="7eBFChAawah" role="3clF47">
          <node concept="3clFbF" id="7eBFChAawal" role="3cqZAp">
            <node concept="37vLTI" id="7eBFChAawan" role="3clFbG">
              <node concept="37vLTw" id="7eBFChAawau" role="37vLTx">
                <ref role="3cqZAo" node="7eBFChAawak" resolve="nodeRef" />
              </node>
              <node concept="37vLTw" id="7eBFChAawpe" role="37vLTJ">
                <ref role="3cqZAo" node="7eBFChAavOT" resolve="myNodeRef" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7eBFChAawax" role="3cqZAp">
            <node concept="37vLTI" id="7eBFChAawaz" role="3clFbG">
              <node concept="37vLTw" id="7eBFChAawaE" role="37vLTx">
                <ref role="3cqZAo" node="7eBFChAawaw" resolve="cellId" />
              </node>
              <node concept="37vLTw" id="7eBFChAawuC" role="37vLTJ">
                <ref role="3cqZAo" node="7eBFChAaw1H" resolve="myCellId" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7eBFChAawaH" role="3cqZAp">
            <node concept="37vLTI" id="7eBFChAawaJ" role="3clFbG">
              <node concept="37vLTw" id="7eBFChAawaQ" role="37vLTx">
                <ref role="3cqZAo" node="7eBFChAawaG" resolve="key" />
              </node>
              <node concept="37vLTw" id="7eBFChAaw$9" role="37vLTJ">
                <ref role="3cqZAo" node="7eBFChAaw8R" resolve="myKey" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7eBFChAawak" role="3clF46">
          <property role="TrG5h" value="nodeRef" />
          <node concept="3uibUv" id="7eBFChAawaj" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
          </node>
        </node>
        <node concept="37vLTG" id="7eBFChAawaw" role="3clF46">
          <property role="TrG5h" value="cellId" />
          <node concept="3uibUv" id="7eBFChAawav" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="37vLTG" id="7eBFChAawaG" role="3clF46">
          <property role="TrG5h" value="key" />
          <node concept="3uibUv" id="7eBFChAawaF" role="1tU5fm">
            <ref role="3uigEE" node="7eBFChAanmT" resolve="SceneStateKey" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7eBFChAbbKX" role="jymVt" />
      <node concept="2tJIrI" id="7eBFChAbbLv" role="jymVt" />
      <node concept="3clFb_" id="7eBFChAbbZm" role="jymVt">
        <property role="TrG5h" value="equals" />
        <node concept="10P_77" id="7eBFChAbbZn" role="3clF45" />
        <node concept="3Tm1VV" id="7eBFChAbbZo" role="1B3o_S" />
        <node concept="3clFbS" id="7eBFChAbbZp" role="3clF47">
          <node concept="3clFbJ" id="7eBFChAbbZq" role="3cqZAp">
            <node concept="3clFbS" id="7eBFChAbbZr" role="3clFbx">
              <node concept="3cpWs6" id="7eBFChAbbZs" role="3cqZAp">
                <node concept="3clFbT" id="7eBFChAbbZt" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="7eBFChAbbZu" role="3clFbw">
              <node concept="Xjq3P" id="7eBFChAbbZl" role="3uHU7B" />
              <node concept="37vLTw" id="7eBFChAbbZv" role="3uHU7w">
                <ref role="3cqZAo" node="7eBFChAbbZQ" resolve="o" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7eBFChAbbZw" role="3cqZAp">
            <node concept="3clFbS" id="7eBFChAbbZx" role="3clFbx">
              <node concept="3cpWs6" id="7eBFChAbbZy" role="3cqZAp">
                <node concept="3clFbT" id="7eBFChAbbZz" role="3cqZAk" />
              </node>
            </node>
            <node concept="3fqX7Q" id="7eBFChAbf7c" role="3clFbw">
              <node concept="1eOMI4" id="7eBFChAbf7e" role="3fr31v">
                <node concept="2ZW3vV" id="7eBFChAbfLo" role="1eOMHV">
                  <node concept="3uibUv" id="7eBFChAbfQ_" role="2ZW6by">
                    <ref role="3uigEE" node="7eBFChAavsX" resolve="SceneStateManager.StateId" />
                  </node>
                  <node concept="37vLTw" id="7eBFChAbfxX" role="2ZW6bz">
                    <ref role="3cqZAo" node="7eBFChAbbZQ" resolve="o" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7eBFChAbbZJ" role="3cqZAp" />
          <node concept="3cpWs8" id="7eBFChAbbZK" role="3cqZAp">
            <node concept="3cpWsn" id="7eBFChAbbZL" role="3cpWs9">
              <property role="TrG5h" value="that" />
              <node concept="3uibUv" id="7eBFChAbbZM" role="1tU5fm">
                <ref role="3uigEE" node="7eBFChAavsX" resolve="SceneStateManager.StateId" />
              </node>
              <node concept="10QFUN" id="7eBFChAbbZN" role="33vP2m">
                <node concept="3uibUv" id="7eBFChAbbZO" role="10QFUM">
                  <ref role="3uigEE" node="7eBFChAavsX" resolve="SceneStateManager.StateId" />
                </node>
                <node concept="37vLTw" id="7eBFChAbbZP" role="10QFUP">
                  <ref role="3cqZAo" node="7eBFChAbbZQ" resolve="o" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7eBFChAbc00" role="3cqZAp">
            <node concept="3clFbS" id="7eBFChAbc01" role="3clFbx">
              <node concept="3cpWs6" id="7eBFChAbc02" role="3cqZAp">
                <node concept="3clFbT" id="7eBFChAbc03" role="3cqZAk" />
              </node>
            </node>
            <node concept="3fqX7Q" id="7eBFChAbc05" role="3clFbw">
              <node concept="2OqwBi" id="7eBFChAbc06" role="3fr31v">
                <node concept="liA8E" id="7eBFChAbc07" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="7eBFChAbc08" role="37wK5m">
                    <node concept="37vLTw" id="7eBFChAbbZT" role="2Oq$k0">
                      <ref role="3cqZAo" node="7eBFChAbbZL" resolve="that" />
                    </node>
                    <node concept="2OwXpG" id="7eBFChAbbZW" role="2OqNvi">
                      <ref role="2Oxat5" node="7eBFChAavOT" resolve="myNodeRef" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7eBFChAbbZX" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eBFChAavOT" resolve="myNodeRef" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7eBFChAbc0j" role="3cqZAp">
            <node concept="3clFbS" id="7eBFChAbc0k" role="3clFbx">
              <node concept="3cpWs6" id="7eBFChAbc0l" role="3cqZAp">
                <node concept="3clFbT" id="7eBFChAbc0m" role="3cqZAk" />
              </node>
            </node>
            <node concept="3fqX7Q" id="7eBFChAbc0o" role="3clFbw">
              <node concept="2OqwBi" id="7eBFChAbc0p" role="3fr31v">
                <node concept="liA8E" id="7eBFChAbc0q" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
                  <node concept="2OqwBi" id="7eBFChAbc0r" role="37wK5m">
                    <node concept="37vLTw" id="7eBFChAbc0s" role="2Oq$k0">
                      <ref role="3cqZAo" node="7eBFChAbbZL" resolve="that" />
                    </node>
                    <node concept="2OwXpG" id="7eBFChAbc0f" role="2OqNvi">
                      <ref role="2Oxat5" node="7eBFChAaw1H" resolve="myCellId" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7eBFChAbc0g" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eBFChAaw1H" resolve="myCellId" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7eBFChAbc0B" role="3cqZAp">
            <node concept="3clFbS" id="7eBFChAbc0C" role="3clFbx">
              <node concept="3cpWs6" id="7eBFChAbc0D" role="3cqZAp">
                <node concept="3clFbT" id="7eBFChAbc0E" role="3cqZAk" />
              </node>
            </node>
            <node concept="3fqX7Q" id="7eBFChAbc0G" role="3clFbw">
              <node concept="2OqwBi" id="7eBFChAbc0H" role="3fr31v">
                <node concept="liA8E" id="7eBFChAbc0I" role="2OqNvi">
                  <ref role="37wK5l" node="7eBFChAanDR" resolve="equals" />
                  <node concept="2OqwBi" id="7eBFChAbc0J" role="37wK5m">
                    <node concept="37vLTw" id="7eBFChAbc0K" role="2Oq$k0">
                      <ref role="3cqZAo" node="7eBFChAbbZL" resolve="that" />
                    </node>
                    <node concept="2OwXpG" id="7eBFChAbc0z" role="2OqNvi">
                      <ref role="2Oxat5" node="7eBFChAaw8R" resolve="myKey" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7eBFChAbc0$" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eBFChAaw8R" resolve="myKey" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7eBFChAbc0R" role="3cqZAp" />
          <node concept="3clFbF" id="7eBFChAbc0S" role="3cqZAp">
            <node concept="3clFbT" id="7eBFChAbc0T" role="3clFbG">
              <property role="3clFbU" value="true" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7eBFChAbbZQ" role="3clF46">
          <property role="TrG5h" value="o" />
          <node concept="3uibUv" id="7eBFChAbbZR" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="2AHcQZ" id="7eBFChAbbZS" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="7eBFChAbc0U" role="jymVt">
        <property role="TrG5h" value="hashCode" />
        <node concept="10Oyi0" id="7eBFChAbc0V" role="3clF45" />
        <node concept="3Tm1VV" id="7eBFChAbc0W" role="1B3o_S" />
        <node concept="3clFbS" id="7eBFChAbc0X" role="3clF47">
          <node concept="3cpWs8" id="7eBFChAbc0Z" role="3cqZAp">
            <node concept="3cpWsn" id="7eBFChAbc10" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="10Oyi0" id="7eBFChAbc11" role="1tU5fm" />
              <node concept="3cmrfG" id="7eBFChAbc12" role="33vP2m">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7eBFChAbc1c" role="3cqZAp">
            <node concept="37vLTI" id="7eBFChAbc1d" role="3clFbG">
              <node concept="3cpWs3" id="7eBFChAbc1e" role="37vLTx">
                <node concept="17qRlL" id="7eBFChAbc18" role="3uHU7B">
                  <node concept="3cmrfG" id="7eBFChAbc19" role="3uHU7B">
                    <property role="3cmrfH" value="31" />
                  </node>
                  <node concept="37vLTw" id="7eBFChAbc13" role="3uHU7w">
                    <ref role="3cqZAo" node="7eBFChAbc10" resolve="result" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7eBFChAbc1k" role="3uHU7w">
                  <node concept="liA8E" id="7eBFChAbc1o" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                  </node>
                  <node concept="37vLTw" id="7eBFChAbc1b" role="2Oq$k0">
                    <ref role="3cqZAo" node="7eBFChAavOT" resolve="myNodeRef" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="7eBFChAbc1p" role="37vLTJ">
                <ref role="3cqZAo" node="7eBFChAbc10" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7eBFChAbc1v" role="3cqZAp">
            <node concept="37vLTI" id="7eBFChAbc1w" role="3clFbG">
              <node concept="3cpWs3" id="7eBFChAbc1x" role="37vLTx">
                <node concept="17qRlL" id="7eBFChAbc1q" role="3uHU7B">
                  <node concept="3cmrfG" id="7eBFChAbc1r" role="3uHU7B">
                    <property role="3cmrfH" value="31" />
                  </node>
                  <node concept="37vLTw" id="7eBFChAbc1s" role="3uHU7w">
                    <ref role="3cqZAo" node="7eBFChAbc10" resolve="result" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7eBFChAbc1B" role="3uHU7w">
                  <node concept="liA8E" id="7eBFChAbc1F" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.hashCode()" resolve="hashCode" />
                  </node>
                  <node concept="37vLTw" id="7eBFChAbc1u" role="2Oq$k0">
                    <ref role="3cqZAo" node="7eBFChAaw1H" resolve="myCellId" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="7eBFChAbc1G" role="37vLTJ">
                <ref role="3cqZAo" node="7eBFChAbc10" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7eBFChAbc1M" role="3cqZAp">
            <node concept="37vLTI" id="7eBFChAbc1N" role="3clFbG">
              <node concept="3cpWs3" id="7eBFChAbc1O" role="37vLTx">
                <node concept="17qRlL" id="7eBFChAbc1H" role="3uHU7B">
                  <node concept="3cmrfG" id="7eBFChAbc1I" role="3uHU7B">
                    <property role="3cmrfH" value="31" />
                  </node>
                  <node concept="37vLTw" id="7eBFChAbc1J" role="3uHU7w">
                    <ref role="3cqZAo" node="7eBFChAbc10" resolve="result" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7eBFChAbc1U" role="3uHU7w">
                  <node concept="liA8E" id="7eBFChAbc1Y" role="2OqNvi">
                    <ref role="37wK5l" node="7eBFChAanEN" resolve="hashCode" />
                  </node>
                  <node concept="37vLTw" id="7eBFChAbc1L" role="2Oq$k0">
                    <ref role="3cqZAo" node="7eBFChAaw8R" resolve="myKey" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="7eBFChAbc1Z" role="37vLTJ">
                <ref role="3cqZAo" node="7eBFChAbc10" resolve="result" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7eBFChAbc20" role="3cqZAp">
            <node concept="37vLTw" id="7eBFChAbc21" role="3clFbG">
              <ref role="3cqZAo" node="7eBFChAbc10" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7eBFChAbc0Y" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7eBFChA9Zi$" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="7eBFChAanmT">
    <property role="TrG5h" value="SceneStateKey" />
    <node concept="2tJIrI" id="7eBFChAano3" role="jymVt" />
    <node concept="312cEg" id="7eBFChAanqh" role="jymVt">
      <property role="TrG5h" value="myId" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7eBFChAanp5" role="1B3o_S" />
      <node concept="3uibUv" id="7eBFChAanqZ" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="7eBFChAanrb" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="7eBFChAanrH" role="jymVt" />
    <node concept="3Tm1VV" id="7eBFChAanmU" role="1B3o_S" />
    <node concept="16euLQ" id="7eBFChAannO" role="16eVyc">
      <property role="TrG5h" value="T" />
    </node>
    <node concept="3clFbW" id="7eBFChAansi" role="jymVt">
      <node concept="3cqZAl" id="7eBFChAansj" role="3clF45" />
      <node concept="3Tm1VV" id="7eBFChAansk" role="1B3o_S" />
      <node concept="3clFbS" id="7eBFChAansm" role="3clF47">
        <node concept="3clFbF" id="7eBFChAansq" role="3cqZAp">
          <node concept="37vLTI" id="7eBFChAanss" role="3clFbG">
            <node concept="2OqwBi" id="7eBFChAansw" role="37vLTJ">
              <node concept="Xjq3P" id="7eBFChAansx" role="2Oq$k0" />
              <node concept="2OwXpG" id="7eBFChAansy" role="2OqNvi">
                <ref role="2Oxat5" node="7eBFChAanqh" resolve="myId" />
              </node>
            </node>
            <node concept="37vLTw" id="7eBFChAansz" role="37vLTx">
              <ref role="3cqZAo" node="7eBFChAansp" resolve="id" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7eBFChAansp" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="7eBFChAanso" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="7eBFChAaudC" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7eBFChAanBs" role="jymVt" />
    <node concept="3clFb_" id="7eBFChAanDR" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="7eBFChAanDS" role="3clF45" />
      <node concept="3Tm1VV" id="7eBFChAanDT" role="1B3o_S" />
      <node concept="3clFbS" id="7eBFChAanDU" role="3clF47">
        <node concept="3clFbJ" id="7eBFChAanDV" role="3cqZAp">
          <node concept="3clFbS" id="7eBFChAanDW" role="3clFbx">
            <node concept="3cpWs6" id="7eBFChAanDX" role="3cqZAp">
              <node concept="3clFbT" id="7eBFChAanDY" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7eBFChAanDZ" role="3clFbw">
            <node concept="Xjq3P" id="7eBFChAanDQ" role="3uHU7B" />
            <node concept="37vLTw" id="7eBFChAanE0" role="3uHU7w">
              <ref role="3cqZAo" node="7eBFChAanEn" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7eBFChAanE1" role="3cqZAp">
          <node concept="3clFbS" id="7eBFChAanE2" role="3clFbx">
            <node concept="3cpWs6" id="7eBFChAanE3" role="3cqZAp">
              <node concept="3clFbT" id="7eBFChAanE4" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="7eBFChAapgV" role="3clFbw">
            <node concept="1eOMI4" id="7eBFChAaptd" role="3fr31v">
              <node concept="2ZW3vV" id="7eBFChAapMr" role="1eOMHV">
                <node concept="3uibUv" id="7eBFChAapRF" role="2ZW6by">
                  <ref role="3uigEE" node="7eBFChAanmT" resolve="SceneStateKey" />
                </node>
                <node concept="37vLTw" id="7eBFChAapvm" role="2ZW6bz">
                  <ref role="3cqZAo" node="7eBFChAanEn" resolve="o" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7eBFChAanEg" role="3cqZAp" />
        <node concept="3cpWs8" id="7eBFChAanEh" role="3cqZAp">
          <node concept="3cpWsn" id="7eBFChAanEi" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="7eBFChAanEj" role="1tU5fm">
              <ref role="3uigEE" node="7eBFChAanmT" resolve="SceneStateKey" />
            </node>
            <node concept="10QFUN" id="7eBFChAanEk" role="33vP2m">
              <node concept="3uibUv" id="7eBFChAanEl" role="10QFUM">
                <ref role="3uigEE" node="7eBFChAanmT" resolve="SceneStateKey" />
              </node>
              <node concept="37vLTw" id="7eBFChAanEm" role="10QFUP">
                <ref role="3cqZAo" node="7eBFChAanEn" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7eBFChAaoU$" role="3cqZAp">
          <node concept="2OqwBi" id="7eBFChAaovI" role="3cqZAk">
            <node concept="liA8E" id="7eBFChAaovJ" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="7eBFChAaovK" role="37wK5m">
                <node concept="37vLTw" id="7eBFChAaovL" role="2Oq$k0">
                  <ref role="3cqZAo" node="7eBFChAanEi" resolve="that" />
                </node>
                <node concept="2OwXpG" id="7eBFChAaovM" role="2OqNvi">
                  <ref role="2Oxat5" node="7eBFChAanqh" resolve="myId" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7eBFChAaovN" role="2Oq$k0">
              <ref role="3cqZAo" node="7eBFChAanqh" resolve="myId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7eBFChAanEn" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="7eBFChAanEo" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7eBFChAanEp" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7eBFChAat0h" role="jymVt" />
    <node concept="3clFb_" id="7eBFChAanEN" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="7eBFChAanEO" role="3clF45" />
      <node concept="3Tm1VV" id="7eBFChAanEP" role="1B3o_S" />
      <node concept="3clFbS" id="7eBFChAanEQ" role="3clF47">
        <node concept="3clFbF" id="7eBFChAaq0i" role="3cqZAp">
          <node concept="2OqwBi" id="7eBFChAaquW" role="3clFbG">
            <node concept="37vLTw" id="7eBFChAaq0h" role="2Oq$k0">
              <ref role="3cqZAo" node="7eBFChAanqh" resolve="myId" />
            </node>
            <node concept="liA8E" id="7eBFChAasYE" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.hashCode()" resolve="hashCode" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7eBFChAanER" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7eBFChAatbk" role="jymVt" />
    <node concept="3clFb_" id="7eBFChAatmc" role="jymVt">
      <property role="TrG5h" value="toString" />
      <node concept="17QB3L" id="7eBFChAatmd" role="3clF45" />
      <node concept="3Tm1VV" id="7eBFChAatme" role="1B3o_S" />
      <node concept="3clFbS" id="7eBFChAatmf" role="3clF47">
        <node concept="3clFbF" id="7eBFChAatmg" role="3cqZAp">
          <node concept="3cpWs3" id="7eBFChAatma" role="3clFbG">
            <node concept="Xl_RD" id="7eBFChAatmb" role="3uHU7w">
              <property role="Xl_RC" value="}" />
            </node>
            <node concept="3cpWs3" id="7eBFChAatm9" role="3uHU7B">
              <node concept="37vLTw" id="7eBFChAatm5" role="3uHU7w">
                <ref role="3cqZAo" node="7eBFChAanqh" resolve="myId" />
              </node>
              <node concept="Xl_RD" id="7eBFChAatm8" role="3uHU7B">
                <property role="Xl_RC" value="SceneStateKey{" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7eBFChAatmh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

