<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:7effb02f-bde4-4d2f-b844-eefa6ab09c8c(scenes.controllers.diagram)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="rvgs" ref="r:22f3147c-cd8c-496f-a7fc-c31f351de000(scenes.controllers)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="hyqd" ref="r:01ce234a-ce36-43f1-8a99-7cbd899f1013(scenes.viewmodel)" />
    <import index="ee2c" ref="r:c260e783-fa83-4eab-8183-e5c937092355(scenes.cells)" />
    <import index="5lkm" ref="r:7effb02f-bde4-4d2f-b844-eefa6ab09c8c(scenes.controllers.diagram)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="3bo0" ref="r:2b66dd0d-2c90-4da0-994d-d7579a6bca2a(scenes.controllers.scene)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="xxy3" ref="r:b09c5f9b-eaf5-42ce-8c06-05ad1ccd4ce3(scenes.controllers.components)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
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
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
        <child id="2820489544402271667" name="typeParameter" index="HU9BZ" />
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
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
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
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
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
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
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
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
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
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
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
  <node concept="3HP615" id="7sG$k3BBij3">
    <property role="TrG5h" value="ConnectionController" />
    <node concept="2tJIrI" id="7_KjZP9bzJU" role="jymVt" />
    <node concept="3clFb_" id="7_KjZP9aQsu" role="jymVt">
      <property role="TrG5h" value="getEdgeTransformation" />
      <node concept="3clFbS" id="7_KjZP9aQsv" role="3clF47" />
      <node concept="3Tm1VV" id="7_KjZP9aQsw" role="1B3o_S" />
      <node concept="3uibUv" id="7_KjZP9aQsx" role="3clF45">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="7_KjZP9aQsy" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="16syzq" id="7_KjZP9aQsz" role="11_B2D">
          <ref role="16sUi3" node="7_KjZP99r3N" resolve="PathT" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS25mKPD" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="16syzq" id="1iOpS25mKTc" role="1tU5fm">
          <ref role="16sUi3" node="7_KjZP99r3N" resolve="PathT" />
        </node>
      </node>
      <node concept="37vLTG" id="7_KjZP9aQs$" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="7_KjZP9aQs_" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7_KjZP9aQsA" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="7_KjZP9aQsB" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7_KjZP9aQB4" role="jymVt" />
    <node concept="3clFb_" id="3vyG44AtJjf" role="jymVt">
      <property role="TrG5h" value="getSourceTransformation" />
      <node concept="3clFbS" id="3vyG44AtJjg" role="3clF47" />
      <node concept="3Tm1VV" id="3vyG44AtJjh" role="1B3o_S" />
      <node concept="3uibUv" id="7_KjZP9aJU4" role="3clF45">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="7_KjZP9aJWs" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="16syzq" id="7_KjZP9aJY4" role="11_B2D">
          <ref role="16sUi3" node="7_KjZP99r3N" resolve="PathT" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS25mKWf" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="16syzq" id="1iOpS25mKWe" role="1tU5fm">
          <ref role="16sUi3" node="7_KjZP99r3N" resolve="PathT" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7_KjZP9bc9k" role="jymVt" />
    <node concept="3clFb_" id="7_KjZP9bc40" role="jymVt">
      <property role="TrG5h" value="getTargetTransformation" />
      <node concept="3clFbS" id="7_KjZP9bc41" role="3clF47" />
      <node concept="3Tm1VV" id="7_KjZP9bc42" role="1B3o_S" />
      <node concept="3uibUv" id="7_KjZP9bc43" role="3clF45">
        <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
        <node concept="3uibUv" id="7_KjZP9bc44" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="16syzq" id="7_KjZP9bc45" role="11_B2D">
          <ref role="16sUi3" node="7_KjZP99r3N" resolve="PathT" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS25mL0f" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="16syzq" id="1iOpS25mL0e" role="1tU5fm">
          <ref role="16sUi3" node="7_KjZP99r3N" resolve="PathT" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7_KjZP9boqM" role="jymVt" />
    <node concept="3clFb_" id="7_KjZP9boFK" role="jymVt">
      <property role="TrG5h" value="getEndpointsTransformation" />
      <node concept="3clFbS" id="7_KjZP9boFN" role="3clF47" />
      <node concept="3Tm1VV" id="7_KjZP9boFO" role="1B3o_S" />
      <node concept="3uibUv" id="7_KjZP9bowa" role="3clF45">
        <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
        <node concept="3uibUv" id="1iOpS25afwf" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="7_KjZP9boB6" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="16syzq" id="7_KjZP9boEI" role="11_B2D">
          <ref role="16sUi3" node="7_KjZP99r3N" resolve="PathT" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS25mL4I" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="16syzq" id="1iOpS25mL4H" role="1tU5fm">
          <ref role="16sUi3" node="7_KjZP99r3N" resolve="PathT" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7_KjZP9boPK" role="jymVt" />
    <node concept="3clFb_" id="7_KjZP9boX4" role="jymVt">
      <property role="TrG5h" value="isSourceTransformableAt" />
      <node concept="3clFbS" id="7_KjZP9boX7" role="3clF47" />
      <node concept="3Tm1VV" id="7_KjZP9boX8" role="1B3o_S" />
      <node concept="10P_77" id="7_KjZP9boUc" role="3clF45" />
      <node concept="37vLTG" id="1iOpS25mL8d" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="16syzq" id="1iOpS25mLbA" role="1tU5fm">
          <ref role="16sUi3" node="7_KjZP99r3N" resolve="PathT" />
        </node>
      </node>
      <node concept="37vLTG" id="7_KjZP9bp46" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="7_KjZP9bp45" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7_KjZP9bp7g" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="7_KjZP9bp7O" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7_KjZP9bpa_" role="jymVt" />
    <node concept="3clFb_" id="7_KjZP9bpiE" role="jymVt">
      <property role="TrG5h" value="isTargetTransformableAt" />
      <node concept="3clFbS" id="7_KjZP9bpiH" role="3clF47" />
      <node concept="3Tm1VV" id="7_KjZP9bpiI" role="1B3o_S" />
      <node concept="10P_77" id="7_KjZP9bpfu" role="3clF45" />
      <node concept="37vLTG" id="1iOpS25mLeb" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="16syzq" id="1iOpS25mLec" role="1tU5fm">
          <ref role="16sUi3" node="7_KjZP99r3N" resolve="PathT" />
        </node>
      </node>
      <node concept="37vLTG" id="7_KjZP9bplt" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="7_KjZP9bpls" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7_KjZP9bpoM" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="7_KjZP9bppm" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3vyG44AuXzY" role="jymVt" />
    <node concept="3clFb_" id="3vyG44AuXDd" role="jymVt">
      <property role="TrG5h" value="isSelectableAt" />
      <node concept="3clFbS" id="3vyG44AuXDg" role="3clF47" />
      <node concept="3Tm1VV" id="3vyG44AuXDh" role="1B3o_S" />
      <node concept="10P_77" id="3vyG44AuXBY" role="3clF45" />
      <node concept="37vLTG" id="1iOpS25mLh6" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="16syzq" id="1iOpS25mLh7" role="1tU5fm">
          <ref role="16sUi3" node="7_KjZP99r3N" resolve="PathT" />
        </node>
      </node>
      <node concept="37vLTG" id="3vyG44AuXGy" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="3vyG44AuXGx" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3vyG44AuXII" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="3vyG44AuXLt" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="IMWzYPkcdD" role="jymVt" />
    <node concept="3clFb_" id="IMWzYPkcyz" role="jymVt">
      <property role="TrG5h" value="getCursorAt" />
      <node concept="3clFbS" id="IMWzYPkcyA" role="3clF47" />
      <node concept="3Tm1VV" id="IMWzYPkcyB" role="1B3o_S" />
      <node concept="16syzq" id="IMWzYPkcw1" role="3clF45">
        <ref role="16sUi3" node="IMWzYPkcho" resolve="CursorT" />
      </node>
      <node concept="37vLTG" id="1iOpS25mLjY" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="16syzq" id="1iOpS25mLjZ" role="1tU5fm">
          <ref role="16sUi3" node="7_KjZP99r3N" resolve="PathT" />
        </node>
      </node>
      <node concept="37vLTG" id="IMWzYPkwCt" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="IMWzYPkwCs" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="IMWzYPkwF1" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="IMWzYPkwI7" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmliaAjN75" role="jymVt" />
    <node concept="3clFb_" id="7sG$k3BBwrZ" role="jymVt">
      <property role="TrG5h" value="paintConneciton" />
      <node concept="3clFbS" id="7sG$k3BBws2" role="3clF47" />
      <node concept="3Tm1VV" id="7sG$k3BBws3" role="1B3o_S" />
      <node concept="3cqZAl" id="7sG$k3BBwrc" role="3clF45" />
      <node concept="37vLTG" id="1iOpS25mLmM" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="16syzq" id="1iOpS25mLmN" role="1tU5fm">
          <ref role="16sUi3" node="7_KjZP99r3N" resolve="PathT" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS25mWVE" role="3clF46">
        <property role="TrG5h" value="cursor" />
        <node concept="16syzq" id="1iOpS25mWZc" role="1tU5fm">
          <ref role="16sUi3" node="IMWzYPkcho" resolve="CursorT" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS25tbmK" role="3clF46">
        <property role="TrG5h" value="selected" />
        <node concept="10P_77" id="1iOpS25tbqp" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7sG$k3BBwt$" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="17nGqbJDA9T" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS25mLBm" role="jymVt" />
    <node concept="3clFb_" id="1iOpS25mLpz" role="jymVt">
      <property role="TrG5h" value="paintTrace" />
      <node concept="3clFbS" id="1iOpS25mLp$" role="3clF47" />
      <node concept="3Tm1VV" id="1iOpS25mLp_" role="1B3o_S" />
      <node concept="3cqZAl" id="1iOpS25mLpA" role="3clF45" />
      <node concept="37vLTG" id="1iOpS25mLpB" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="16syzq" id="1iOpS25mLpC" role="1tU5fm">
          <ref role="16sUi3" node="7_KjZP99r3N" resolve="PathT" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS25mLpD" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="1iOpS25mLpE" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW3b91" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJz_fg" role="jymVt">
      <property role="TrG5h" value="getConnectionCell" />
      <node concept="3clFbS" id="17nGqbJz_fj" role="3clF47">
        <node concept="3clFbF" id="38k27IRtRRZ" role="3cqZAp">
          <node concept="10Nm6u" id="38k27IRtRRY" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tm1VV" id="17nGqbJz_fk" role="1B3o_S" />
      <node concept="2AHcQZ" id="17nGqbJz_gw" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="17nGqbJzWUw" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="2JFqV2" id="38k27IRtRMh" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="1iOpS24JPvQ" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24JP$C" role="jymVt">
      <property role="TrG5h" value="updateCellWithPath" />
      <node concept="3clFbS" id="1iOpS24JP$F" role="3clF47" />
      <node concept="3Tm1VV" id="1iOpS24JP$G" role="1B3o_S" />
      <node concept="3cqZAl" id="1iOpS24JPyN" role="3clF45" />
      <node concept="37vLTG" id="1iOpS24JPBE" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="16syzq" id="38k27IRtRBe" role="1tU5fm">
          <ref role="16sUi3" node="7_KjZP99r3N" resolve="PathT" />
        </node>
      </node>
      <node concept="2JFqV2" id="38k27IRtRSU" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="38k27IQS4Q7" role="jymVt" />
    <node concept="3clFb_" id="38k27IQS4XN" role="jymVt">
      <property role="TrG5h" value="updateCellSelection" />
      <node concept="3clFbS" id="38k27IQS4XQ" role="3clF47" />
      <node concept="3Tm1VV" id="38k27IQS4XR" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IQS4UK" role="3clF45" />
      <node concept="37vLTG" id="38k27IQS553" role="3clF46">
        <property role="TrG5h" value="selected" />
        <node concept="10P_77" id="38k27IQS552" role="1tU5fm" />
      </node>
      <node concept="2JFqV2" id="38k27IRtRZU" role="2frcjj" />
    </node>
    <node concept="3Tm1VV" id="7sG$k3BBij4" role="1B3o_S" />
    <node concept="16euLQ" id="IMWzYPkcho" role="16eVyc">
      <property role="TrG5h" value="CursorT" />
    </node>
    <node concept="16euLQ" id="7_KjZP99r3N" role="16eVyc">
      <property role="TrG5h" value="PathT" />
    </node>
  </node>
  <node concept="3HP615" id="2JpbWDsQSwS">
    <property role="TrG5h" value="PortController" />
    <node concept="2tJIrI" id="4O0ojQpH3eU" role="jymVt" />
    <node concept="3clFb_" id="6tmliaB28KD" role="jymVt">
      <property role="TrG5h" value="getBounds" />
      <node concept="3clFbS" id="6tmliaB28KG" role="3clF47" />
      <node concept="3Tm1VV" id="6tmliaB28KH" role="1B3o_S" />
      <node concept="3uibUv" id="6tmliaB28K1" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="2AHcQZ" id="1KCfUoKShOv" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="3vyG44Arca2" role="jymVt" />
    <node concept="3clFb_" id="1iOpS255UuU" role="jymVt">
      <property role="TrG5h" value="getModelEndpointPosition" />
      <node concept="3clFbS" id="1iOpS255UuV" role="3clF47" />
      <node concept="3Tm1VV" id="1iOpS255UuW" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS255UuX" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="2AHcQZ" id="1iOpS255UuY" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS258J0x" role="jymVt" />
    <node concept="3clFb_" id="1iOpS258IP0" role="jymVt">
      <property role="TrG5h" value="getTransformedEndpointPosition" />
      <node concept="3clFbS" id="1iOpS258IP1" role="3clF47" />
      <node concept="3Tm1VV" id="1iOpS258IP2" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS258IP3" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="2AHcQZ" id="1iOpS258IP4" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpH2XV" role="jymVt" />
    <node concept="3clFb_" id="1KCfUoKSijC" role="jymVt">
      <property role="TrG5h" value="canBeSourcedAt" />
      <node concept="37vLTG" id="1KCfUoKSim8" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="1KCfUoKSiok" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1KCfUoKSiqo" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="1KCfUoKSisC" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1KCfUoKSijF" role="3clF47" />
      <node concept="3Tm1VV" id="1KCfUoKSijG" role="1B3o_S" />
      <node concept="10P_77" id="1KCfUoKSiig" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1KCfUoKSDUC" role="jymVt" />
    <node concept="3clFb_" id="1KCfUoKSE03" role="jymVt">
      <property role="TrG5h" value="canBeTargetedAt" />
      <node concept="3clFbS" id="1KCfUoKSE06" role="3clF47" />
      <node concept="3Tm1VV" id="1KCfUoKSE07" role="1B3o_S" />
      <node concept="10P_77" id="1KCfUoKSDYn" role="3clF45" />
      <node concept="37vLTG" id="1KCfUoKSE3m" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="1KCfUoKSE3l" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1KCfUoKSE5A" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="1KCfUoKSE81" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2JpbWDsQSwT" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2JpbWDsQSWA">
    <property role="TrG5h" value="ConnectionsFacility" />
    <node concept="2tJIrI" id="4vmY7CyGfVu" role="jymVt" />
    <node concept="Wx3nA" id="4vmY7CyGm0F" role="jymVt">
      <property role="TrG5h" value="SELECTION_KEY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4vmY7CyGiTE" role="1B3o_S" />
      <node concept="2ShNRf" id="4vmY7CyGpti" role="33vP2m">
        <node concept="1pGfFk" id="4vmY7CyGprn" role="2ShVmc">
          <ref role="37wK5l" to="3bo0:7eBFChAansi" resolve="SceneStateKey" />
          <node concept="3uibUv" id="4vmY7CyGpro" role="1pMfVU">
            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          </node>
          <node concept="Xl_RD" id="4vmY7CyGp_J" role="37wK5m">
            <property role="Xl_RC" value="conn-selection" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4vmY7CyGoZp" role="1tU5fm">
        <ref role="3uigEE" to="3bo0:7eBFChAanmT" resolve="SceneStateKey" />
        <node concept="3uibUv" id="4vmY7CyGp99" role="11_B2D">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3vyG44At5nG" role="jymVt" />
    <node concept="312cEg" id="7sG$k3BRVVR" role="jymVt">
      <property role="TrG5h" value="myConnections" />
      <node concept="3Tm6S6" id="7sG$k3BRVVS" role="1B3o_S" />
      <node concept="3uibUv" id="7sG$k3BRVVT" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="16syzq" id="4y$DvIW4Dbj" role="11_B2D">
          <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
        </node>
        <node concept="3uibUv" id="7_KjZP9ftU6" role="11_B2D">
          <ref role="3uigEE" node="7_KjZP9d656" resolve="ConnectionEntry" />
          <node concept="16syzq" id="4y$DvIXbtFA" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
          </node>
          <node concept="16syzq" id="4y$DvIXbtFB" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
          </node>
          <node concept="16syzq" id="4y$DvIWlsiz" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
          </node>
          <node concept="16syzq" id="4y$DvIWlxXg" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
          </node>
          <node concept="16syzq" id="4y$DvIWlCq5" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="7sG$k3BRVVV" role="33vP2m">
        <node concept="HV5vD" id="4ZaR9mNkTLM" role="2ShVmc">
          <ref role="HV5vE" to="33ny:~HashMap" resolve="HashMap" />
          <node concept="16syzq" id="4y$DvIW4FZM" role="HU9BZ">
            <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
          </node>
          <node concept="3uibUv" id="7_KjZP9fvQO" role="HU9BZ">
            <ref role="3uigEE" node="7_KjZP9d656" resolve="ConnectionEntry" />
            <node concept="16syzq" id="4y$DvIXbxG7" role="11_B2D">
              <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
            </node>
            <node concept="16syzq" id="4y$DvIXbxG8" role="11_B2D">
              <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
            </node>
            <node concept="16syzq" id="4y$DvIWlJeO" role="11_B2D">
              <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
            </node>
            <node concept="16syzq" id="4y$DvIWlJeP" role="11_B2D">
              <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
            </node>
            <node concept="16syzq" id="4y$DvIWlJeQ" role="11_B2D">
              <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7_KjZP9nHWG" role="jymVt" />
    <node concept="312cEg" id="7_KjZP9hsMT" role="jymVt">
      <property role="TrG5h" value="myScene" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7_KjZP9hTiz" role="1tU5fm">
        <ref role="3uigEE" to="3bo0:17nGqbJcVKF" resolve="SceneEditor" />
      </node>
    </node>
    <node concept="312cEg" id="3vyG44At6jy" role="jymVt">
      <property role="TrG5h" value="myControllerFactory" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4y$DvIW6MWs" role="1tU5fm">
        <ref role="3uigEE" node="4y$DvIW4oYS" resolve="ConnectionControllerFactory" />
        <node concept="16syzq" id="4y$DvIW6MWt" role="11_B2D">
          <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
        </node>
        <node concept="16syzq" id="1iOpS25hwcB" role="11_B2D">
          <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
        </node>
        <node concept="16syzq" id="1iOpS25hwrI" role="11_B2D">
          <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="3vyG44AyGV2" role="jymVt">
      <property role="TrG5h" value="myComponentsSelection" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="IMWzYPfwTe" role="1tU5fm">
        <ref role="3uigEE" to="rvgs:1KCfUoKRX_E" resolve="SelectionModel" />
        <node concept="16syzq" id="4y$DvIW1el3" role="11_B2D">
          <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7_KjZP9eRe1" role="jymVt">
      <property role="TrG5h" value="myConnectionSyncronizer" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7_KjZP9eQZu" role="1tU5fm">
        <ref role="3uigEE" node="7_KjZP9eHRu" resolve="ConnectionPathSyncronizer" />
        <node concept="16syzq" id="4y$DvIW6_UF" role="11_B2D">
          <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
        </node>
        <node concept="16syzq" id="7_KjZP9eR2L" role="11_B2D">
          <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
        </node>
        <node concept="16syzq" id="7_KjZP9eR5O" role="11_B2D">
          <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7_KjZP9iXjm" role="jymVt">
      <property role="TrG5h" value="myDiagramController" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7_KjZP9iVd$" role="1tU5fm">
        <ref role="3uigEE" node="2JpbWDsQT0H" resolve="DiagramController" />
        <node concept="16syzq" id="4y$DvIW1bj7" role="11_B2D">
          <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
        </node>
        <node concept="16syzq" id="7_KjZP9iXhm" role="11_B2D">
          <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
        </node>
        <node concept="16syzq" id="4y$DvIW6ops" role="11_B2D">
          <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4y$DvIYlJ$T" role="jymVt">
      <property role="TrG5h" value="mySceneFocus" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="4y$DvIYlJqk" role="1tU5fm">
        <ref role="3uigEE" to="rvgs:4y$DvIXWfQg" resolve="SceneFocusModel" />
      </node>
    </node>
    <node concept="312cEg" id="4y$DvIYmj6g" role="jymVt">
      <property role="TrG5h" value="myFocusHandle" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4y$DvIYmbMf" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIYmqpN" role="1tU5fm">
        <ref role="3uigEE" to="rvgs:4y$DvIXWfTF" resolve="FocusHandle" />
      </node>
      <node concept="2ShNRf" id="4y$DvIYmqN6" role="33vP2m">
        <node concept="1pGfFk" id="4y$DvIYmqLc" role="2ShVmc">
          <ref role="37wK5l" to="rvgs:4y$DvIXWfYd" resolve="FocusHandle" />
          <node concept="1bVj0M" id="4y$DvIYmrcL" role="37wK5m">
            <node concept="3clFbS" id="4y$DvIYmrcN" role="1bW5cS">
              <node concept="3clFbF" id="4y$DvIYmrs4" role="3cqZAp">
                <node concept="2OqwBi" id="4y$DvIYms1G" role="3clFbG">
                  <node concept="37vLTw" id="4y$DvIYmrs3" role="2Oq$k0">
                    <ref role="3cqZAo" node="3vyG44AvsFM" resolve="myConnectionsSelection" />
                  </node>
                  <node concept="liA8E" id="4y$DvIYmBrV" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Set.clear()" resolve="clear" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="38k27IRxgI7" role="3cqZAp">
                <node concept="1rXfSq" id="38k27IRxgI5" role="3clFbG">
                  <ref role="37wK5l" node="38k27IQRUHj" resolve="clearSelection" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7_KjZP9edWR" role="jymVt" />
    <node concept="312cEg" id="3vyG44AvsFM" role="jymVt">
      <property role="TrG5h" value="myConnectionsSelection" />
      <node concept="3uibUv" id="3vyG44AvsFO" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="16syzq" id="4y$DvIW6S7k" role="11_B2D">
          <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
        </node>
      </node>
      <node concept="2ShNRf" id="3vyG44AvsFT" role="33vP2m">
        <node concept="HV5vD" id="3vyG44AvsFU" role="2ShVmc">
          <ref role="HV5vE" to="33ny:~HashSet" resolve="HashSet" />
          <node concept="16syzq" id="4y$DvIW6V2F" role="HU9BZ">
            <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="IMWzYPfPBM" role="jymVt">
      <property role="TrG5h" value="myConnectionCursor" />
      <node concept="3uibUv" id="IMWzYPfPsr" role="1tU5fm">
        <ref role="3uigEE" node="IMWzYPfMhW" resolve="ConnectionCursor" />
        <node concept="16syzq" id="4y$DvIW7Zvp" role="11_B2D">
          <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
        </node>
        <node concept="16syzq" id="4y$DvIW7Zvq" role="11_B2D">
          <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2JpbWDsR0gm" role="jymVt" />
    <node concept="312cEg" id="4O0ojQpD31Y" role="jymVt">
      <property role="TrG5h" value="myNewPathFactory" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4O0ojQpCVh1" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQpD298" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
        <node concept="3uibUv" id="4O0ojQpD2_c" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="4O0ojQpD2AW" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="16syzq" id="4O0ojQpD2CK" role="11_B2D">
          <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4O0ojQpF5gj" role="jymVt">
      <property role="TrG5h" value="myNewPathPainther" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4O0ojQpEREW" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQpEYDK" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~BiConsumer" resolve="BiConsumer" />
        <node concept="3uibUv" id="4O0ojQpEZWe" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
        <node concept="16syzq" id="4O0ojQpF0hR" role="11_B2D">
          <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4O0ojQpE9Ft" role="jymVt">
      <property role="TrG5h" value="myNewConnectionPath" />
      <node concept="3Tm6S6" id="4O0ojQpE2i3" role="1B3o_S" />
      <node concept="16syzq" id="4O0ojQpE9hn" role="1tU5fm">
        <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpDVk5" role="jymVt" />
    <node concept="3clFbW" id="2JpbWDsR2ER" role="jymVt">
      <node concept="3cqZAl" id="2JpbWDsR2EU" role="3clF45" />
      <node concept="3Tm1VV" id="2JpbWDsR2EV" role="1B3o_S" />
      <node concept="3clFbS" id="2JpbWDsR2EW" role="3clF47">
        <node concept="3clFbF" id="7_KjZP9hEJE" role="3cqZAp">
          <node concept="37vLTI" id="7_KjZP9hG5g" role="3clFbG">
            <node concept="37vLTw" id="7_KjZP9hGJD" role="37vLTx">
              <ref role="3cqZAo" node="7_KjZP9hBnV" resolve="scene" />
            </node>
            <node concept="37vLTw" id="7_KjZP9hEJC" role="37vLTJ">
              <ref role="3cqZAo" node="7_KjZP9hsMT" resolve="myScene" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vyG44At71$" role="3cqZAp">
          <node concept="37vLTI" id="3vyG44At8xN" role="3clFbG">
            <node concept="37vLTw" id="3vyG44At8Jw" role="37vLTx">
              <ref role="3cqZAo" node="3vyG44ArUWs" resolve="controllerFactory" />
            </node>
            <node concept="37vLTw" id="3vyG44At71y" role="37vLTJ">
              <ref role="3cqZAo" node="3vyG44At6jy" resolve="myControllerFactory" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4O0ojQpDbnF" role="3cqZAp">
          <node concept="37vLTI" id="4O0ojQpDct$" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQpDcV0" role="37vLTx">
              <ref role="3cqZAo" node="4O0ojQpD9V9" resolve="pathFactory" />
            </node>
            <node concept="37vLTw" id="4O0ojQpDbnD" role="37vLTJ">
              <ref role="3cqZAo" node="4O0ojQpD31Y" resolve="myNewPathFactory" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4O0ojQpFdV1" role="3cqZAp">
          <node concept="37vLTI" id="4O0ojQpFfcO" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQpFfsi" role="37vLTx">
              <ref role="3cqZAo" node="4O0ojQpFclR" resolve="pathPaither" />
            </node>
            <node concept="37vLTw" id="4O0ojQpFdUZ" role="37vLTJ">
              <ref role="3cqZAo" node="4O0ojQpF5gj" resolve="myNewPathPainther" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vyG44AyIuT" role="3cqZAp">
          <node concept="37vLTI" id="3vyG44AyJat" role="3clFbG">
            <node concept="37vLTw" id="3vyG44AyJh4" role="37vLTx">
              <ref role="3cqZAo" node="3vyG44AyCKx" resolve="componentsSelection" />
            </node>
            <node concept="37vLTw" id="3vyG44AyIuR" role="37vLTJ">
              <ref role="3cqZAo" node="3vyG44AyGV2" resolve="myComponentsSelection" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7_KjZP9eVuc" role="3cqZAp">
          <node concept="37vLTI" id="7_KjZP9eX6a" role="3clFbG">
            <node concept="37vLTw" id="7_KjZP9eXep" role="37vLTx">
              <ref role="3cqZAo" node="7_KjZP9eUH$" resolve="connectionSyncronizer" />
            </node>
            <node concept="37vLTw" id="7_KjZP9eVua" role="37vLTJ">
              <ref role="3cqZAo" node="7_KjZP9eRe1" resolve="myConnectionSyncronizer" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7_KjZP9j0RN" role="3cqZAp">
          <node concept="37vLTI" id="7_KjZP9j1CN" role="3clFbG">
            <node concept="37vLTw" id="7_KjZP9j1Yi" role="37vLTx">
              <ref role="3cqZAo" node="7_KjZP9iM2B" resolve="diagramController" />
            </node>
            <node concept="37vLTw" id="7_KjZP9j0RL" role="37vLTJ">
              <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4y$DvIYlRjL" role="3cqZAp">
          <node concept="37vLTI" id="4y$DvIYlSxc" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIYlSXW" role="37vLTx">
              <ref role="3cqZAo" node="4y$DvIYleOe" resolve="focus" />
            </node>
            <node concept="37vLTw" id="4y$DvIYlRjJ" role="37vLTJ">
              <ref role="3cqZAo" node="4y$DvIYlJ$T" resolve="mySceneFocus" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4y$DvIX$QkK" role="3cqZAp" />
        <node concept="3clFbF" id="4y$DvIX$R1f" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIX$Rvl" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIX$R1d" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIX$Pvt" resolve="componentsLayout" />
            </node>
            <node concept="liA8E" id="4y$DvIX$RJq" role="2OqNvi">
              <ref role="37wK5l" to="rvgs:1KCfUoKRVCm" resolve="addListener" />
              <node concept="2ShNRf" id="4y$DvIX$RMT" role="37wK5m">
                <node concept="YeOm9" id="4y$DvIX$Sg1" role="2ShVmc">
                  <node concept="1Y3b0j" id="4y$DvIX$Sg4" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="rvgs:1KCfUoKRV4f" resolve="ROLayoutModel.Listener" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3clFb_" id="2syzu7qKHz0" role="jymVt">
                      <property role="TrG5h" value="onComponentAdded" />
                      <node concept="37vLTG" id="2syzu7qKHz1" role="3clF46">
                        <property role="TrG5h" value="component" />
                        <node concept="16syzq" id="2syzu7qKHzd" role="1tU5fm">
                          <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
                        </node>
                        <node concept="2AHcQZ" id="2syzu7qKHz3" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2syzu7qKHz4" role="3clF46">
                        <property role="TrG5h" value="x" />
                        <node concept="10Oyi0" id="2syzu7qKHz5" role="1tU5fm" />
                      </node>
                      <node concept="37vLTG" id="2syzu7qKHz6" role="3clF46">
                        <property role="TrG5h" value="y" />
                        <node concept="10Oyi0" id="2syzu7qKHz7" role="1tU5fm" />
                      </node>
                      <node concept="3Tm1VV" id="2syzu7qKHz9" role="1B3o_S" />
                      <node concept="3cqZAl" id="2syzu7qKHza" role="3clF45" />
                      <node concept="3clFbS" id="2syzu7qKHze" role="3clF47" />
                      <node concept="2AHcQZ" id="2syzu7qKHzf" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3clFb_" id="2syzu7qKHzg" role="jymVt">
                      <property role="TrG5h" value="onComponentRemoved" />
                      <node concept="37vLTG" id="2syzu7qKHzh" role="3clF46">
                        <property role="TrG5h" value="component" />
                        <node concept="16syzq" id="2syzu7qKHzp" role="1tU5fm">
                          <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
                        </node>
                        <node concept="2AHcQZ" id="2syzu7qKHzj" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                      </node>
                      <node concept="3Tm1VV" id="2syzu7qKHzl" role="1B3o_S" />
                      <node concept="3cqZAl" id="2syzu7qKHzm" role="3clF45" />
                      <node concept="3clFbS" id="2syzu7qKHzq" role="3clF47" />
                      <node concept="2AHcQZ" id="2syzu7qKHzr" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="3Tm1VV" id="4y$DvIX$Sg5" role="1B3o_S" />
                    <node concept="3clFb_" id="4y$DvIX$Sg7" role="jymVt">
                      <property role="TrG5h" value="onComponentsMoved" />
                      <node concept="3Tm1VV" id="4y$DvIX$Sg9" role="1B3o_S" />
                      <node concept="3cqZAl" id="4y$DvIX$Sga" role="3clF45" />
                      <node concept="37vLTG" id="4y$DvIX$Sgb" role="3clF46">
                        <property role="TrG5h" value="components" />
                        <node concept="2AHcQZ" id="4y$DvIX$Sgc" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                        <node concept="3uibUv" id="4y$DvIX$Sgd" role="1tU5fm">
                          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                          <node concept="16syzq" id="4y$DvIX$Sg_" role="11_B2D">
                            <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="4y$DvIX$Sgf" role="3clF46">
                        <property role="TrG5h" value="dx" />
                        <node concept="10Oyi0" id="4y$DvIX$Sgg" role="1tU5fm" />
                      </node>
                      <node concept="37vLTG" id="4y$DvIX$Sgh" role="3clF46">
                        <property role="TrG5h" value="dy" />
                        <node concept="10Oyi0" id="4y$DvIX$Sgi" role="1tU5fm" />
                      </node>
                      <node concept="37vLTG" id="38k27IS5Icy" role="3clF46">
                        <property role="TrG5h" value="completed" />
                        <node concept="10P_77" id="38k27IS5Ipc" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="4y$DvIX$Sgj" role="3clF47">
                        <node concept="3clFbF" id="4y$DvIX$TJA" role="3cqZAp">
                          <node concept="2OqwBi" id="4y$DvIX$VOZ" role="3clFbG">
                            <node concept="Xjq3P" id="4y$DvIX$VYq" role="2Oq$k0">
                              <ref role="1HBi2w" node="2JpbWDsQSWA" resolve="ConnectionsFacility" />
                            </node>
                            <node concept="liA8E" id="4y$DvIX$VP2" role="2OqNvi">
                              <ref role="37wK5l" node="3vyG44Az5GA" resolve="onComponentsMoved" />
                              <node concept="37vLTw" id="4y$DvIX$U14" role="37wK5m">
                                <ref role="3cqZAo" node="4y$DvIX$Sgb" resolve="components" />
                              </node>
                              <node concept="37vLTw" id="4y$DvIX$Ubm" role="37wK5m">
                                <ref role="3cqZAo" node="4y$DvIX$Sgf" resolve="dx" />
                              </node>
                              <node concept="37vLTw" id="4y$DvIX$Ul$" role="37wK5m">
                                <ref role="3cqZAo" node="4y$DvIX$Sgh" resolve="dy" />
                              </node>
                              <node concept="37vLTw" id="38k27IS5IFU" role="37wK5m">
                                <ref role="3cqZAo" node="38k27IS5Icy" resolve="completed" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="16syzq" id="4y$DvIX$Sg$" role="2Ghqu4">
                      <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4y$DvIX$Nsu" role="3cqZAp" />
        <node concept="3clFbF" id="4tjN0ibS_Py" role="3cqZAp">
          <node concept="1rXfSq" id="4tjN0ibS_Pw" role="3clFbG">
            <ref role="37wK5l" node="4tjN0ibROy_" resolve="init" />
          </node>
        </node>
        <node concept="3clFbH" id="4tjN0ibS_IL" role="3cqZAp" />
        <node concept="3clFbF" id="3LngKhTHfba" role="3cqZAp">
          <node concept="2OqwBi" id="3LngKhTHfIu" role="3clFbG">
            <node concept="37vLTw" id="3LngKhTHfb8" role="2Oq$k0">
              <ref role="3cqZAo" node="7_KjZP9hBnV" resolve="scene" />
            </node>
            <node concept="liA8E" id="3LngKhTHgkg" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJd4hx" resolve="addLayouter" />
              <node concept="2ShNRf" id="3LngKhTHgpx" role="37wK5m">
                <node concept="HV5vD" id="3LngKhTHgPH" role="2ShVmc">
                  <ref role="HV5vE" node="3LngKhTGLTs" resolve="ConnectionsFacility.MyLayouter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4vmY7CyKd9Q" role="3cqZAp">
          <node concept="2OqwBi" id="4vmY7CyKdI5" role="3clFbG">
            <node concept="37vLTw" id="4vmY7CyKd9O" role="2Oq$k0">
              <ref role="3cqZAo" node="7_KjZP9hBnV" resolve="scene" />
            </node>
            <node concept="liA8E" id="4vmY7CyKekS" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:1R4IoyRrSCW" resolve="addInitializer" />
              <node concept="2ShNRf" id="4vmY7CyKeqt" role="37wK5m">
                <node concept="HV5vD" id="4vmY7CyKiuJ" role="2ShVmc">
                  <ref role="HV5vE" node="4vmY7CyIGpE" resolve="ConnectionsFacility.MySelectionInitializer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IS3omb" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IS3oSb" role="3clFbG">
            <node concept="37vLTw" id="38k27IS3om9" role="2Oq$k0">
              <ref role="3cqZAo" node="7_KjZP9hBnV" resolve="scene" />
            </node>
            <node concept="liA8E" id="38k27IS3plA" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJd4_$" resolve="addCellProvider" />
              <node concept="37vLTw" id="38k27IS3puK" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIYldSM" resolve="connectionsLayer" />
              </node>
              <node concept="2ShNRf" id="38k27IS3pyl" role="37wK5m">
                <node concept="HV5vD" id="38k27IS3pLQ" role="2ShVmc">
                  <ref role="HV5vE" node="38k27IRup2H" resolve="ConnectionsFacility.MyCellProvider" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4O0ojQpWOhU" role="3cqZAp">
          <node concept="2OqwBi" id="4O0ojQpWOKB" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQpWOhS" role="2Oq$k0">
              <ref role="3cqZAo" node="7_KjZP9hBnV" resolve="scene" />
            </node>
            <node concept="liA8E" id="4O0ojQpWPif" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJd3Xf" resolve="addKeyboardListener" />
              <node concept="2ShNRf" id="4O0ojQpWPm0" role="37wK5m">
                <node concept="HV5vD" id="4O0ojQpWPLx" role="2ShVmc">
                  <ref role="HV5vE" node="17nGqbJBnIV" resolve="ConnectionsFacility.MyKeyboardListener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4O0ojQpWPWA" role="3cqZAp">
          <node concept="2OqwBi" id="4O0ojQpWPWB" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQpWPWC" role="2Oq$k0">
              <ref role="3cqZAo" node="7_KjZP9hBnV" resolve="scene" />
            </node>
            <node concept="liA8E" id="4O0ojQpWPWD" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJeJiI" resolve="addCursorListener" />
              <node concept="2ShNRf" id="4O0ojQpWPWE" role="37wK5m">
                <node concept="HV5vD" id="4O0ojQpWPWF" role="2ShVmc">
                  <ref role="HV5vE" node="1gL472DTBau" resolve="ConnectionsFacility.MyCursorListener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4O0ojQpWRdN" role="3cqZAp">
          <node concept="2OqwBi" id="4O0ojQpWRH9" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQpWRdL" role="2Oq$k0">
              <ref role="3cqZAo" node="7_KjZP9hBnV" resolve="scene" />
            </node>
            <node concept="liA8E" id="4O0ojQpWS3H" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJdjBx" resolve="addPainter" />
              <node concept="37vLTw" id="4y$DvIYleHc" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIYldSM" resolve="connectionsLayer" />
              </node>
              <node concept="2ShNRf" id="4O0ojQpWS7$" role="37wK5m">
                <node concept="HV5vD" id="4O0ojQpWVcj" role="2ShVmc">
                  <ref role="HV5vE" node="17nGqbJBHkL" resolve="ConnectionsFacility.MyPainter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4O0ojQpWVN7" role="3cqZAp">
          <node concept="2OqwBi" id="4O0ojQpWWkM" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQpWVN5" role="2Oq$k0">
              <ref role="3cqZAo" node="7_KjZP9hBnV" resolve="scene" />
            </node>
            <node concept="liA8E" id="4O0ojQpWWG2" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJd3Bi" resolve="addClickListener" />
              <node concept="37vLTw" id="4y$DvIYleJZ" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIYldSM" resolve="connectionsLayer" />
              </node>
              <node concept="2ShNRf" id="4O0ojQpWWJW" role="37wK5m">
                <node concept="HV5vD" id="4O0ojQpWXbt" role="2ShVmc">
                  <ref role="HV5vE" node="17nGqbJBTiX" resolve="ConnectionsFacility.MyClickListener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4O0ojQpWXQ0" role="3cqZAp">
          <node concept="2OqwBi" id="4O0ojQpWYns" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQpWXPY" role="2Oq$k0">
              <ref role="3cqZAo" node="7_KjZP9hBnV" resolve="scene" />
            </node>
            <node concept="liA8E" id="4O0ojQpWYK0" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJd3JS" resolve="addDragListener" />
              <node concept="37vLTw" id="4y$DvIYleLs" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIYldSM" resolve="connectionsLayer" />
              </node>
              <node concept="2ShNRf" id="4O0ojQpWYNX" role="37wK5m">
                <node concept="HV5vD" id="4O0ojQpWZfu" role="2ShVmc">
                  <ref role="HV5vE" node="17nGqbJCfzd" resolve="ConnectionsFacility.MyDragListener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS25BHog" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS25BHoh" role="3clFbG">
            <node concept="37vLTw" id="1iOpS25BHoi" role="2Oq$k0">
              <ref role="3cqZAo" node="7_KjZP9hBnV" resolve="scene" />
            </node>
            <node concept="liA8E" id="1iOpS25BHoj" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJdjBx" resolve="addPainter" />
              <node concept="37vLTw" id="1iOpS25BISM" role="37wK5m">
                <ref role="3cqZAo" node="1iOpS25mK0Y" resolve="tracesLayer" />
              </node>
              <node concept="2ShNRf" id="1iOpS25BHol" role="37wK5m">
                <node concept="HV5vD" id="1iOpS25BHom" role="2ShVmc">
                  <ref role="HV5vE" node="1iOpS25BxSo" resolve="ConnectionsFacility.MyTracesPainter" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7_KjZP9hBnV" role="3clF46">
        <property role="TrG5h" value="scene" />
        <node concept="3uibUv" id="7_KjZP9hVaJ" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJcVKF" resolve="SceneEditor" />
        </node>
      </node>
      <node concept="37vLTG" id="3vyG44ArUWs" role="3clF46">
        <property role="TrG5h" value="controllerFactory" />
        <node concept="3uibUv" id="4y$DvIW6HJ_" role="1tU5fm">
          <ref role="3uigEE" node="4y$DvIW4oYS" resolve="ConnectionControllerFactory" />
          <node concept="16syzq" id="4y$DvIW6MEE" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
          </node>
          <node concept="16syzq" id="1iOpS25hwEl" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
          </node>
          <node concept="16syzq" id="1iOpS25hwEm" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQpD9V9" role="3clF46">
        <property role="TrG5h" value="pathFactory" />
        <node concept="3uibUv" id="4O0ojQpDaiW" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
          <node concept="3uibUv" id="4O0ojQpDaiX" role="11_B2D">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
          <node concept="3uibUv" id="4O0ojQpDaiY" role="11_B2D">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
          <node concept="16syzq" id="4O0ojQpDaiZ" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQpFclR" role="3clF46">
        <property role="TrG5h" value="pathPaither" />
        <node concept="3uibUv" id="4O0ojQpFcLC" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~BiConsumer" resolve="BiConsumer" />
          <node concept="3uibUv" id="4O0ojQpFcLD" role="11_B2D">
            <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
          </node>
          <node concept="16syzq" id="4O0ojQpFcLE" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7_KjZP9eUH$" role="3clF46">
        <property role="TrG5h" value="connectionSyncronizer" />
        <node concept="3uibUv" id="7_KjZP9eUHA" role="1tU5fm">
          <ref role="3uigEE" node="7_KjZP9eHRu" resolve="ConnectionPathSyncronizer" />
          <node concept="16syzq" id="4y$DvIW6RN7" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
          </node>
          <node concept="16syzq" id="7_KjZP9eUHB" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
          </node>
          <node concept="16syzq" id="7_KjZP9eUHC" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIX$Pvt" role="3clF46">
        <property role="TrG5h" value="componentsLayout" />
        <node concept="3uibUv" id="4y$DvIX$Q0C" role="1tU5fm">
          <ref role="3uigEE" to="rvgs:2syzu7qKiXL" resolve="ROLayoutModel" />
          <node concept="16syzq" id="4y$DvIX$Q6m" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3vyG44AyCKx" role="3clF46">
        <property role="TrG5h" value="componentsSelection" />
        <node concept="3uibUv" id="3vyG44AyE5c" role="1tU5fm">
          <ref role="3uigEE" to="rvgs:1KCfUoKRX_E" resolve="SelectionModel" />
          <node concept="16syzq" id="4y$DvIW1aZK" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7_KjZP9iM2B" role="3clF46">
        <property role="TrG5h" value="diagramController" />
        <node concept="3uibUv" id="7_KjZP9iMj6" role="1tU5fm">
          <ref role="3uigEE" node="2JpbWDsQT0H" resolve="DiagramController" />
          <node concept="16syzq" id="4y$DvIWb1P4" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
          </node>
          <node concept="16syzq" id="4y$DvIWbdsF" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
          </node>
          <node concept="16syzq" id="4y$DvIWbhWp" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIYldSM" role="3clF46">
        <property role="TrG5h" value="connectionsLayer" />
        <node concept="3uibUv" id="4y$DvIYletA" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS25mK0Y" role="3clF46">
        <property role="TrG5h" value="tracesLayer" />
        <node concept="3uibUv" id="1iOpS25mKsN" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIYleOe" role="3clF46">
        <property role="TrG5h" value="focus" />
        <node concept="3uibUv" id="4y$DvIYlfrG" role="1tU5fm">
          <ref role="3uigEE" to="rvgs:4y$DvIXWfQg" resolve="SceneFocusModel" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3vyG44Az2Fu" role="jymVt" />
    <node concept="3clFb_" id="4tjN0ibROy_" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3clFbS" id="4tjN0ibROyC" role="3clF47">
        <node concept="3cpWs8" id="1gL472DNHqD" role="3cqZAp">
          <node concept="3cpWsn" id="1gL472DNHqE" role="3cpWs9">
            <property role="TrG5h" value="viewConnections" />
            <node concept="3uibUv" id="1gL472DNHqj" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="16syzq" id="4y$DvIW6WMy" role="11_B2D">
                <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
              </node>
            </node>
            <node concept="2OqwBi" id="1gL472DNHqF" role="33vP2m">
              <node concept="37vLTw" id="4y$DvIW9$Dp" role="2Oq$k0">
                <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
              </node>
              <node concept="liA8E" id="1gL472DNHqH" role="2OqNvi">
                <ref role="37wK5l" node="4y$DvIW8kkR" resolve="getConnections" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1gL472DNMKo" role="3cqZAp" />
        <node concept="2Gpval" id="7PF$iX$aP_M" role="3cqZAp">
          <node concept="2GrKxI" id="7PF$iX$aP_O" role="2Gsz3X">
            <property role="TrG5h" value="connection" />
          </node>
          <node concept="3clFbS" id="7PF$iX$aP_S" role="2LFqv$">
            <node concept="3clFbF" id="4tjN0ibSbYs" role="3cqZAp">
              <node concept="2OqwBi" id="4tjN0ibSd7Z" role="3clFbG">
                <node concept="37vLTw" id="4tjN0ibSbYq" role="2Oq$k0">
                  <ref role="3cqZAo" node="7sG$k3BRVVR" resolve="myConnections" />
                </node>
                <node concept="liA8E" id="4tjN0ibSk2Z" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2GrUjf" id="4tjN0ibSmUc" role="37wK5m">
                    <ref role="2Gs0qQ" node="7PF$iX$aP_O" resolve="connection" />
                  </node>
                  <node concept="2ShNRf" id="4tjN0ibSyjv" role="37wK5m">
                    <node concept="1pGfFk" id="1gL472DR6GQ" role="2ShVmc">
                      <ref role="37wK5l" node="7_KjZP9fg0l" resolve="ConnectionEntry" />
                      <node concept="Xjq3P" id="4y$DvIX8G95" role="37wK5m">
                        <ref role="1HBi2w" node="2JpbWDsQSWA" resolve="ConnectionsFacility" />
                      </node>
                      <node concept="2GrUjf" id="4tjN0ibSlZn" role="37wK5m">
                        <ref role="2Gs0qQ" node="7PF$iX$aP_O" resolve="connection" />
                      </node>
                      <node concept="16syzq" id="4y$DvIXbC5s" role="1pMfVU">
                        <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
                      </node>
                      <node concept="16syzq" id="4y$DvIXbC5t" role="1pMfVU">
                        <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
                      </node>
                      <node concept="16syzq" id="4y$DvIXaQKp" role="1pMfVU">
                        <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
                      </node>
                      <node concept="16syzq" id="4y$DvIXaQKq" role="1pMfVU">
                        <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
                      </node>
                      <node concept="16syzq" id="4y$DvIXaQKr" role="1pMfVU">
                        <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1gL472DNHqJ" role="2GsD0m">
            <ref role="3cqZAo" node="1gL472DNHqE" resolve="viewConnections" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4tjN0ibRH1E" role="1B3o_S" />
      <node concept="3cqZAl" id="4tjN0ibRW6K" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4tjN0ibR$ME" role="jymVt" />
    <node concept="2tJIrI" id="4tjN0ibR_jx" role="jymVt" />
    <node concept="3clFb_" id="38k27IQRUHj" role="jymVt">
      <property role="TrG5h" value="clearSelection" />
      <node concept="3clFbS" id="38k27IQRUHm" role="3clF47">
        <node concept="2Gpval" id="38k27IQSPlG" role="3cqZAp">
          <node concept="2GrKxI" id="38k27IQSPlH" role="2Gsz3X">
            <property role="TrG5h" value="connection" />
          </node>
          <node concept="37vLTw" id="38k27IRxd9u" role="2GsD0m">
            <ref role="3cqZAo" node="7sG$k3BRVVR" resolve="myConnections" />
          </node>
          <node concept="3clFbS" id="38k27IQSPlJ" role="2LFqv$">
            <node concept="3cpWs8" id="38k27IRxeF8" role="3cqZAp">
              <node concept="3cpWsn" id="38k27IRxeF9" role="3cpWs9">
                <property role="TrG5h" value="entry" />
                <node concept="3uibUv" id="38k27IRxeCO" role="1tU5fm">
                  <ref role="3uigEE" node="7_KjZP9d656" resolve="ConnectionEntry" />
                  <node concept="16syzq" id="38k27IRxeCZ" role="11_B2D">
                    <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
                  </node>
                  <node concept="16syzq" id="38k27IRxeD0" role="11_B2D">
                    <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
                  </node>
                  <node concept="16syzq" id="38k27IRxeD2" role="11_B2D">
                    <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
                  </node>
                  <node concept="16syzq" id="38k27IRxeD1" role="11_B2D">
                    <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
                  </node>
                  <node concept="16syzq" id="38k27IRxeD3" role="11_B2D">
                    <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
                  </node>
                </node>
                <node concept="2OqwBi" id="38k27IRxeFa" role="33vP2m">
                  <node concept="2GrUjf" id="38k27IRxeFb" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="38k27IQSPlH" resolve="connection" />
                  </node>
                  <node concept="3AV6Ez" id="38k27IRxeFc" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="38k27IQSPDL" role="3cqZAp">
              <node concept="2OqwBi" id="38k27IQTBm8" role="3clFbG">
                <node concept="2OqwBi" id="38k27IQT44B" role="2Oq$k0">
                  <node concept="37vLTw" id="38k27IRxfp8" role="2Oq$k0">
                    <ref role="3cqZAo" node="38k27IRxeF9" resolve="entry" />
                  </node>
                  <node concept="2OwXpG" id="38k27IRxfT9" role="2OqNvi">
                    <ref role="2Oxat5" node="7_KjZP9f9dA" resolve="myController" />
                  </node>
                </node>
                <node concept="liA8E" id="38k27IQTBEq" role="2OqNvi">
                  <ref role="37wK5l" node="38k27IQS4XN" resolve="updateCellSelection" />
                  <node concept="3clFbT" id="38k27IRwWR2" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="38k27IQRRh4" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IQRUDc" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="38k27IRwWW7" role="jymVt" />
    <node concept="2tJIrI" id="38k27IRwXte" role="jymVt" />
    <node concept="3clFb_" id="3vyG44Az5GA" role="jymVt">
      <property role="TrG5h" value="onComponentsMoved" />
      <node concept="3clFbS" id="3vyG44Az5GD" role="3clF47">
        <node concept="3cpWs8" id="1CY1mmCw53t" role="3cqZAp">
          <node concept="3cpWsn" id="1CY1mmCw53u" role="3cpWs9">
            <property role="TrG5h" value="ports" />
            <node concept="3uibUv" id="1CY1mmCw53r" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="16syzq" id="1CY1mmCxEJB" role="11_B2D">
                <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
              </node>
            </node>
            <node concept="2ShNRf" id="3vyG44AzGjX" role="33vP2m">
              <node concept="1pGfFk" id="3vyG44AzGKH" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="16syzq" id="3vyG44AzHf9" role="1pMfVU">
                  <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3vyG44AzHWO" role="3cqZAp">
          <node concept="2GrKxI" id="3vyG44AzHWQ" role="2Gsz3X">
            <property role="TrG5h" value="component" />
          </node>
          <node concept="37vLTw" id="3vyG44AzIw9" role="2GsD0m">
            <ref role="3cqZAo" node="3vyG44AzAfs" resolve="components" />
          </node>
          <node concept="3clFbS" id="3vyG44AzHWU" role="2LFqv$">
            <node concept="3clFbF" id="3vyG44AzJ51" role="3cqZAp">
              <node concept="2OqwBi" id="3vyG44AzJJs" role="3clFbG">
                <node concept="37vLTw" id="3vyG44AzJ50" role="2Oq$k0">
                  <ref role="3cqZAo" node="1CY1mmCw53u" resolve="ports" />
                </node>
                <node concept="liA8E" id="3vyG44AzVbB" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
                  <node concept="2OqwBi" id="1gL472DMf1a" role="37wK5m">
                    <node concept="37vLTw" id="4O0ojQpJBTp" role="2Oq$k0">
                      <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                    </node>
                    <node concept="liA8E" id="1gL472DMfok" role="2OqNvi">
                      <ref role="37wK5l" node="4O0ojQpH2Qa" resolve="getPorts" />
                      <node concept="2GrUjf" id="1gL472DMfB_" role="37wK5m">
                        <ref role="2Gs0qQ" node="3vyG44AzHWQ" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1CY1mmCx7FQ" role="3cqZAp" />
        <node concept="2Gpval" id="1CY1mmCxx$y" role="3cqZAp">
          <node concept="2GrKxI" id="1CY1mmCxx$$" role="2Gsz3X">
            <property role="TrG5h" value="connection" />
          </node>
          <node concept="37vLTw" id="1CY1mmCxxW7" role="2GsD0m">
            <ref role="3cqZAo" node="7sG$k3BRVVR" resolve="myConnections" />
          </node>
          <node concept="3clFbS" id="1CY1mmCxx$C" role="2LFqv$">
            <node concept="3cpWs8" id="1CY1mmCyxTE" role="3cqZAp">
              <node concept="3cpWsn" id="1CY1mmCyxTF" role="3cpWs9">
                <property role="TrG5h" value="connecitonView" />
                <node concept="2OqwBi" id="1CY1mmCyxTG" role="33vP2m">
                  <node concept="2GrUjf" id="1CY1mmCyxTH" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1CY1mmCxx$$" resolve="connection" />
                  </node>
                  <node concept="3AY5_j" id="1gL472DLrzv" role="2OqNvi" />
                </node>
                <node concept="16syzq" id="4y$DvIW4OgZ" role="1tU5fm">
                  <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4y$DvIYmIOr" role="3cqZAp">
              <node concept="3cpWsn" id="4y$DvIYmIOs" role="3cpWs9">
                <property role="TrG5h" value="entry" />
                <node concept="3uibUv" id="4y$DvIYmIGQ" role="1tU5fm">
                  <ref role="3uigEE" node="7_KjZP9d656" resolve="ConnectionEntry" />
                  <node concept="16syzq" id="4y$DvIYmIH4" role="11_B2D">
                    <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
                  </node>
                  <node concept="16syzq" id="4y$DvIYmIH3" role="11_B2D">
                    <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
                  </node>
                  <node concept="16syzq" id="4y$DvIYmIH1" role="11_B2D">
                    <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
                  </node>
                  <node concept="16syzq" id="4y$DvIYmIH2" role="11_B2D">
                    <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
                  </node>
                  <node concept="16syzq" id="4y$DvIYmIH5" role="11_B2D">
                    <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4y$DvIYmIOt" role="33vP2m">
                  <node concept="2GrUjf" id="4y$DvIYmIOu" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="1CY1mmCxx$$" resolve="connection" />
                  </node>
                  <node concept="3AV6Ez" id="4y$DvIYmIOv" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4y$DvIYmMdq" role="3cqZAp" />
            <node concept="3cpWs8" id="1gL472DIuPw" role="3cqZAp">
              <node concept="3cpWsn" id="1gL472DIuPx" role="3cpWs9">
                <property role="TrG5h" value="sourcePort" />
                <node concept="16syzq" id="1gL472DIuKB" role="1tU5fm">
                  <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
                </node>
                <node concept="2OqwBi" id="4y$DvIW4TCf" role="33vP2m">
                  <node concept="37vLTw" id="4y$DvIW4SIx" role="2Oq$k0">
                    <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                  </node>
                  <node concept="liA8E" id="4y$DvIW4UMT" role="2OqNvi">
                    <ref role="37wK5l" node="4O0ojQpINv1" resolve="getSource" />
                    <node concept="37vLTw" id="4y$DvIYmDgQ" role="37wK5m">
                      <ref role="3cqZAo" node="1CY1mmCyxTF" resolve="connecitonView" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1gL472DIwcI" role="3cqZAp">
              <node concept="3cpWsn" id="1gL472DIwcJ" role="3cpWs9">
                <property role="TrG5h" value="targetPort" />
                <node concept="16syzq" id="1gL472DIw7E" role="1tU5fm">
                  <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
                </node>
                <node concept="2OqwBi" id="4y$DvIW6bAC" role="33vP2m">
                  <node concept="37vLTw" id="4y$DvIW6bAD" role="2Oq$k0">
                    <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                  </node>
                  <node concept="liA8E" id="4y$DvIW6bAE" role="2OqNvi">
                    <ref role="37wK5l" node="4O0ojQpINEG" resolve="getTarget" />
                    <node concept="37vLTw" id="4y$DvIYmEif" role="37wK5m">
                      <ref role="3cqZAo" node="1CY1mmCyxTF" resolve="connecitonView" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1gL472DIxPT" role="3cqZAp" />
            <node concept="3cpWs8" id="1CY1mmCx_uF" role="3cqZAp">
              <node concept="3cpWsn" id="1CY1mmCx_uI" role="3cpWs9">
                <property role="TrG5h" value="sourceMoved" />
                <node concept="10P_77" id="1CY1mmCx_uE" role="1tU5fm" />
                <node concept="2OqwBi" id="1CY1mmCyp_i" role="33vP2m">
                  <node concept="37vLTw" id="1CY1mmCyoVu" role="2Oq$k0">
                    <ref role="3cqZAo" node="1CY1mmCw53u" resolve="ports" />
                  </node>
                  <node concept="liA8E" id="1CY1mmCyv$q" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                    <node concept="37vLTw" id="1gL472DIuP_" role="37wK5m">
                      <ref role="3cqZAo" node="1gL472DIuPx" resolve="sourcePort" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1CY1mmCywm8" role="3cqZAp">
              <node concept="3cpWsn" id="1CY1mmCywm9" role="3cpWs9">
                <property role="TrG5h" value="targetMoved" />
                <node concept="10P_77" id="1CY1mmCywma" role="1tU5fm" />
                <node concept="2OqwBi" id="1CY1mmCywmb" role="33vP2m">
                  <node concept="37vLTw" id="1CY1mmCywmc" role="2Oq$k0">
                    <ref role="3cqZAo" node="1CY1mmCw53u" resolve="ports" />
                  </node>
                  <node concept="liA8E" id="1CY1mmCywmd" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.contains(java.lang.Object)" resolve="contains" />
                    <node concept="37vLTw" id="1gL472DIwcN" role="37wK5m">
                      <ref role="3cqZAo" node="1gL472DIwcJ" resolve="targetPort" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1CY1mmCyADq" role="3cqZAp">
              <node concept="3clFbS" id="1CY1mmCyADs" role="3clFbx">
                <node concept="3cpWs8" id="1gL472DHhS_" role="3cqZAp">
                  <node concept="3cpWsn" id="1gL472DHhSA" role="3cpWs9">
                    <property role="TrG5h" value="endpointsTransformation" />
                    <node concept="3uibUv" id="1gL472DHhQ1" role="1tU5fm">
                      <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
                      <node concept="3uibUv" id="1gL472DHhQ6" role="11_B2D">
                        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                      </node>
                      <node concept="3uibUv" id="1iOpS25eMII" role="11_B2D">
                        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                      </node>
                      <node concept="16syzq" id="1gL472DHyAD" role="11_B2D">
                        <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1gL472DHhSB" role="33vP2m">
                      <node concept="2OqwBi" id="1gL472DHhSC" role="2Oq$k0">
                        <node concept="37vLTw" id="4y$DvIYmIOx" role="2Oq$k0">
                          <ref role="3cqZAo" node="4y$DvIYmIOs" resolve="entry" />
                        </node>
                        <node concept="2OwXpG" id="1gL472DHhSG" role="2OqNvi">
                          <ref role="2Oxat5" node="7_KjZP9f9dA" resolve="myController" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1gL472DHhSH" role="2OqNvi">
                        <ref role="37wK5l" node="7_KjZP9boFK" resolve="getEndpointsTransformation" />
                        <node concept="2OqwBi" id="1iOpS25p9Ww" role="37wK5m">
                          <node concept="37vLTw" id="1iOpS25p8TJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="4y$DvIYmIOs" resolve="entry" />
                          </node>
                          <node concept="2OwXpG" id="1iOpS25qBop" role="2OqNvi">
                            <ref role="2Oxat5" node="7_KjZP9f7KU" resolve="myModelPath" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1iOpS25eK4_" role="3cqZAp" />
                <node concept="3cpWs8" id="1iOpS25eKjH" role="3cqZAp">
                  <node concept="3cpWsn" id="1iOpS25eKjI" role="3cpWs9">
                    <property role="TrG5h" value="sourcePosition" />
                    <node concept="3uibUv" id="1iOpS25eKjJ" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                    </node>
                    <node concept="2OqwBi" id="1iOpS25eKjK" role="33vP2m">
                      <node concept="2OqwBi" id="1iOpS25eKjL" role="2Oq$k0">
                        <node concept="37vLTw" id="1iOpS25eKjM" role="2Oq$k0">
                          <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                        </node>
                        <node concept="liA8E" id="1iOpS25eKjN" role="2OqNvi">
                          <ref role="37wK5l" node="3vyG44Arcu2" resolve="getPortController" />
                          <node concept="37vLTw" id="1iOpS25eKjO" role="37wK5m">
                            <ref role="3cqZAo" node="1gL472DIuPx" resolve="sourcePort" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1iOpS25eKjP" role="2OqNvi">
                        <ref role="37wK5l" node="1iOpS255UuU" resolve="getModelEndpointPosition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1iOpS25eIR7" role="3cqZAp">
                  <node concept="3cpWsn" id="1iOpS25eIR8" role="3cpWs9">
                    <property role="TrG5h" value="targetPosition" />
                    <node concept="3uibUv" id="1iOpS25eIR9" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                    </node>
                    <node concept="2OqwBi" id="1iOpS25eIRa" role="33vP2m">
                      <node concept="2OqwBi" id="1iOpS25eIRb" role="2Oq$k0">
                        <node concept="37vLTw" id="1iOpS25eIRc" role="2Oq$k0">
                          <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                        </node>
                        <node concept="liA8E" id="1iOpS25eIRd" role="2OqNvi">
                          <ref role="37wK5l" node="3vyG44Arcu2" resolve="getPortController" />
                          <node concept="37vLTw" id="1iOpS25eIRe" role="37wK5m">
                            <ref role="3cqZAo" node="1gL472DIwcJ" resolve="targetPort" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1iOpS25eIRf" role="2OqNvi">
                        <ref role="37wK5l" node="1iOpS255UuU" resolve="getModelEndpointPosition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1iOpS25eKjQ" role="3cqZAp">
                  <node concept="2OqwBi" id="1iOpS25eKjR" role="3clFbG">
                    <node concept="37vLTw" id="1iOpS25eKjS" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iOpS25eKjI" resolve="sourcePosition" />
                    </node>
                    <node concept="liA8E" id="1iOpS25eKjT" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Point.translate(int,int)" resolve="translate" />
                      <node concept="37vLTw" id="1iOpS25eKjU" role="37wK5m">
                        <ref role="3cqZAo" node="3vyG44AzCoD" resolve="dx" />
                      </node>
                      <node concept="37vLTw" id="1iOpS25eKjV" role="37wK5m">
                        <ref role="3cqZAo" node="3vyG44AzEd3" resolve="dy" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1iOpS25eIRg" role="3cqZAp">
                  <node concept="2OqwBi" id="1iOpS25eIRh" role="3clFbG">
                    <node concept="37vLTw" id="1iOpS25eIRi" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iOpS25eIR8" resolve="targetPosition" />
                    </node>
                    <node concept="liA8E" id="1iOpS25eIRj" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Point.translate(int,int)" resolve="translate" />
                      <node concept="37vLTw" id="1iOpS25eIRk" role="37wK5m">
                        <ref role="3cqZAo" node="3vyG44AzCoD" resolve="dx" />
                      </node>
                      <node concept="37vLTw" id="1iOpS25eIRl" role="37wK5m">
                        <ref role="3cqZAo" node="3vyG44AzEd3" resolve="dy" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1iOpS25eIQE" role="3cqZAp" />
                <node concept="3cpWs8" id="1gL472DHAQS" role="3cqZAp">
                  <node concept="3cpWsn" id="1gL472DHAQT" role="3cpWs9">
                    <property role="TrG5h" value="translatedPath" />
                    <node concept="16syzq" id="1gL472DHAPe" role="1tU5fm">
                      <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
                    </node>
                    <node concept="2OqwBi" id="1gL472DHAQU" role="33vP2m">
                      <node concept="37vLTw" id="1gL472DHAQV" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472DHhSA" resolve="endpointsTransformation" />
                      </node>
                      <node concept="liA8E" id="1gL472DHAQW" role="2OqNvi">
                        <ref role="37wK5l" to="82uw:~BiFunction.apply(java.lang.Object,java.lang.Object)" resolve="apply" />
                        <node concept="37vLTw" id="1iOpS25ePre" role="37wK5m">
                          <ref role="3cqZAo" node="1iOpS25eKjI" resolve="sourcePosition" />
                        </node>
                        <node concept="37vLTw" id="1iOpS25eQVk" role="37wK5m">
                          <ref role="3cqZAo" node="1iOpS25eIR8" resolve="targetPosition" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="38k27ISh98j" role="3cqZAp">
                  <node concept="1rXfSq" id="38k27ISh98i" role="3clFbG">
                    <ref role="37wK5l" node="38k27ISh0xx" resolve="changePath" />
                    <node concept="37vLTw" id="38k27IShiQh" role="37wK5m">
                      <ref role="3cqZAo" node="4y$DvIYmIOs" resolve="entry" />
                    </node>
                    <node concept="37vLTw" id="38k27ISh98f" role="37wK5m">
                      <ref role="3cqZAo" node="1CY1mmCyxTF" resolve="connecitonView" />
                    </node>
                    <node concept="37vLTw" id="38k27ISh98g" role="37wK5m">
                      <ref role="3cqZAo" node="1gL472DHAQT" resolve="translatedPath" />
                    </node>
                    <node concept="37vLTw" id="38k27ISh98h" role="37wK5m">
                      <ref role="3cqZAo" node="38k27IS5IM4" resolve="completed" />
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="1CY1mmC$d0K" role="3cqZAp" />
              </node>
              <node concept="1Wc70l" id="1CY1mmCyL1F" role="3clFbw">
                <node concept="37vLTw" id="1CY1mmCyLqM" role="3uHU7w">
                  <ref role="3cqZAo" node="1CY1mmCywm9" resolve="targetMoved" />
                </node>
                <node concept="37vLTw" id="1CY1mmCyAZF" role="3uHU7B">
                  <ref role="3cqZAo" node="1CY1mmCx_uI" resolve="sourceMoved" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1CY1mmC$d1R" role="3cqZAp">
              <node concept="3clFbS" id="1CY1mmC$d1S" role="3clFbx">
                <node concept="3cpWs8" id="1gL472DKm0p" role="3cqZAp">
                  <node concept="3cpWsn" id="1gL472DKm0q" role="3cpWs9">
                    <property role="TrG5h" value="targetPosition" />
                    <node concept="3uibUv" id="1gL472DKlXZ" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                    </node>
                    <node concept="2OqwBi" id="1gL472DKm0r" role="33vP2m">
                      <node concept="2OqwBi" id="1gL472DKm0s" role="2Oq$k0">
                        <node concept="37vLTw" id="1gL472DKm0t" role="2Oq$k0">
                          <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                        </node>
                        <node concept="liA8E" id="1gL472DKm0u" role="2OqNvi">
                          <ref role="37wK5l" node="3vyG44Arcu2" resolve="getPortController" />
                          <node concept="37vLTw" id="1gL472DKm0v" role="37wK5m">
                            <ref role="3cqZAo" node="1gL472DIwcJ" resolve="targetPort" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1gL472DKm0w" role="2OqNvi">
                        <ref role="37wK5l" node="1iOpS255UuU" resolve="getModelEndpointPosition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1gL472DIq2X" role="3cqZAp">
                  <node concept="2OqwBi" id="1gL472DKncE" role="3clFbG">
                    <node concept="37vLTw" id="1gL472DKm0x" role="2Oq$k0">
                      <ref role="3cqZAo" node="1gL472DKm0q" resolve="targetPosition" />
                    </node>
                    <node concept="liA8E" id="1gL472DLfVE" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Point.translate(int,int)" resolve="translate" />
                      <node concept="37vLTw" id="1gL472DLfYN" role="37wK5m">
                        <ref role="3cqZAo" node="3vyG44AzCoD" resolve="dx" />
                      </node>
                      <node concept="37vLTw" id="1gL472DLgX$" role="37wK5m">
                        <ref role="3cqZAo" node="3vyG44AzEd3" resolve="dy" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1gL472DIj0d" role="3cqZAp">
                  <node concept="3cpWsn" id="1gL472DIj0e" role="3cpWs9">
                    <property role="TrG5h" value="targetTransformation" />
                    <node concept="3uibUv" id="1gL472DIj0f" role="1tU5fm">
                      <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
                      <node concept="3uibUv" id="1gL472DIj0g" role="11_B2D">
                        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                      </node>
                      <node concept="16syzq" id="1gL472DIj0h" role="11_B2D">
                        <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1gL472DIj0i" role="33vP2m">
                      <node concept="2OqwBi" id="1gL472DIj0j" role="2Oq$k0">
                        <node concept="37vLTw" id="4y$DvIYmIOy" role="2Oq$k0">
                          <ref role="3cqZAo" node="4y$DvIYmIOs" resolve="entry" />
                        </node>
                        <node concept="2OwXpG" id="1gL472DIj0n" role="2OqNvi">
                          <ref role="2Oxat5" node="7_KjZP9f9dA" resolve="myController" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1gL472DIj0o" role="2OqNvi">
                        <ref role="37wK5l" node="7_KjZP9bc40" resolve="getTargetTransformation" />
                        <node concept="2OqwBi" id="1iOpS25qB_V" role="37wK5m">
                          <node concept="37vLTw" id="1iOpS25qB_W" role="2Oq$k0">
                            <ref role="3cqZAo" node="4y$DvIYmIOs" resolve="entry" />
                          </node>
                          <node concept="2OwXpG" id="1iOpS25qB_X" role="2OqNvi">
                            <ref role="2Oxat5" node="7_KjZP9f7KU" resolve="myModelPath" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1gL472DIj0p" role="3cqZAp">
                  <node concept="3cpWsn" id="1gL472DIj0q" role="3cpWs9">
                    <property role="TrG5h" value="translatedPath" />
                    <node concept="16syzq" id="1gL472DIj0r" role="1tU5fm">
                      <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
                    </node>
                    <node concept="2OqwBi" id="1gL472DIj0s" role="33vP2m">
                      <node concept="37vLTw" id="1gL472DIj0t" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472DIj0e" resolve="targetTransformation" />
                      </node>
                      <node concept="liA8E" id="1gL472DIj0u" role="2OqNvi">
                        <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                        <node concept="37vLTw" id="1gL472DLjyw" role="37wK5m">
                          <ref role="3cqZAo" node="1gL472DKm0q" resolve="targetPosition" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="38k27ISh9Eg" role="3cqZAp">
                  <node concept="1rXfSq" id="38k27ISh9Ef" role="3clFbG">
                    <ref role="37wK5l" node="38k27ISh0xx" resolve="changePath" />
                    <node concept="37vLTw" id="38k27IShiGN" role="37wK5m">
                      <ref role="3cqZAo" node="4y$DvIYmIOs" resolve="entry" />
                    </node>
                    <node concept="37vLTw" id="38k27ISh9Ec" role="37wK5m">
                      <ref role="3cqZAo" node="1CY1mmCyxTF" resolve="connecitonView" />
                    </node>
                    <node concept="37vLTw" id="38k27ISh9Ed" role="37wK5m">
                      <ref role="3cqZAo" node="1gL472DIj0q" resolve="translatedPath" />
                    </node>
                    <node concept="37vLTw" id="38k27ISh9Ee" role="37wK5m">
                      <ref role="3cqZAo" node="38k27IS5IM4" resolve="completed" />
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="1CY1mmC$d1Z" role="3cqZAp" />
              </node>
              <node concept="37vLTw" id="1CY1mmC$d21" role="3clFbw">
                <ref role="3cqZAo" node="1CY1mmCywm9" resolve="targetMoved" />
              </node>
            </node>
            <node concept="3clFbJ" id="1CY1mmC$d2O" role="3cqZAp">
              <node concept="3clFbS" id="1CY1mmC$d2P" role="3clFbx">
                <node concept="3cpWs8" id="1gL472DLkLX" role="3cqZAp">
                  <node concept="3cpWsn" id="1gL472DLkLY" role="3cpWs9">
                    <property role="TrG5h" value="sourcePosition" />
                    <node concept="3uibUv" id="1gL472DLkLZ" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                    </node>
                    <node concept="2OqwBi" id="1gL472DLkM0" role="33vP2m">
                      <node concept="2OqwBi" id="1gL472DLkM1" role="2Oq$k0">
                        <node concept="37vLTw" id="1gL472DLkM2" role="2Oq$k0">
                          <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                        </node>
                        <node concept="liA8E" id="1gL472DLkM3" role="2OqNvi">
                          <ref role="37wK5l" node="3vyG44Arcu2" resolve="getPortController" />
                          <node concept="37vLTw" id="1gL472DLn3y" role="37wK5m">
                            <ref role="3cqZAo" node="1gL472DIuPx" resolve="sourcePort" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="1gL472DLkM5" role="2OqNvi">
                        <ref role="37wK5l" node="1iOpS255UuU" resolve="getModelEndpointPosition" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="1gL472DLkM6" role="3cqZAp">
                  <node concept="2OqwBi" id="1gL472DLkM7" role="3clFbG">
                    <node concept="37vLTw" id="1gL472DLkM8" role="2Oq$k0">
                      <ref role="3cqZAo" node="1gL472DLkLY" resolve="sourcePosition" />
                    </node>
                    <node concept="liA8E" id="1gL472DLkM9" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Point.translate(int,int)" resolve="translate" />
                      <node concept="37vLTw" id="1gL472DLkMa" role="37wK5m">
                        <ref role="3cqZAo" node="3vyG44AzCoD" resolve="dx" />
                      </node>
                      <node concept="37vLTw" id="1gL472DLkMb" role="37wK5m">
                        <ref role="3cqZAo" node="3vyG44AzEd3" resolve="dy" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1gL472DLkMc" role="3cqZAp">
                  <node concept="3cpWsn" id="1gL472DLkMd" role="3cpWs9">
                    <property role="TrG5h" value="sourceTransformation" />
                    <node concept="3uibUv" id="1gL472DLkMe" role="1tU5fm">
                      <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
                      <node concept="3uibUv" id="1gL472DLkMf" role="11_B2D">
                        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                      </node>
                      <node concept="16syzq" id="1gL472DLkMg" role="11_B2D">
                        <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1gL472DLkMh" role="33vP2m">
                      <node concept="2OqwBi" id="1gL472DLkMi" role="2Oq$k0">
                        <node concept="37vLTw" id="4y$DvIYmIOw" role="2Oq$k0">
                          <ref role="3cqZAo" node="4y$DvIYmIOs" resolve="entry" />
                        </node>
                        <node concept="2OwXpG" id="1gL472DLkMm" role="2OqNvi">
                          <ref role="2Oxat5" node="7_KjZP9f9dA" resolve="myController" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1gL472DLkMn" role="2OqNvi">
                        <ref role="37wK5l" node="3vyG44AtJjf" resolve="getSourceTransformation" />
                        <node concept="2OqwBi" id="1iOpS25qBQp" role="37wK5m">
                          <node concept="37vLTw" id="1iOpS25qBQq" role="2Oq$k0">
                            <ref role="3cqZAo" node="4y$DvIYmIOs" resolve="entry" />
                          </node>
                          <node concept="2OwXpG" id="1iOpS25qBQr" role="2OqNvi">
                            <ref role="2Oxat5" node="7_KjZP9f7KU" resolve="myModelPath" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="1gL472DLkMo" role="3cqZAp">
                  <node concept="3cpWsn" id="1gL472DLkMp" role="3cpWs9">
                    <property role="TrG5h" value="translatedPath" />
                    <node concept="16syzq" id="1gL472DLkMq" role="1tU5fm">
                      <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
                    </node>
                    <node concept="2OqwBi" id="1gL472DLkMr" role="33vP2m">
                      <node concept="37vLTw" id="1gL472DLkMs" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472DLkMd" resolve="sourceTransformation" />
                      </node>
                      <node concept="liA8E" id="1gL472DLkMt" role="2OqNvi">
                        <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                        <node concept="37vLTw" id="1gL472DLkMu" role="37wK5m">
                          <ref role="3cqZAo" node="1gL472DLkLY" resolve="sourcePosition" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="38k27ISh0xM" role="3cqZAp">
                  <node concept="1rXfSq" id="38k27ISh0xL" role="3clFbG">
                    <ref role="37wK5l" node="38k27ISh0xx" resolve="changePath" />
                    <node concept="37vLTw" id="38k27IShi$D" role="37wK5m">
                      <ref role="3cqZAo" node="4y$DvIYmIOs" resolve="entry" />
                    </node>
                    <node concept="37vLTw" id="38k27ISh0xI" role="37wK5m">
                      <ref role="3cqZAo" node="1CY1mmCyxTF" resolve="connecitonView" />
                    </node>
                    <node concept="37vLTw" id="38k27ISh0xJ" role="37wK5m">
                      <ref role="3cqZAo" node="1gL472DLkMp" resolve="translatedPath" />
                    </node>
                    <node concept="37vLTw" id="38k27ISh0xK" role="37wK5m">
                      <ref role="3cqZAo" node="38k27IS5IM4" resolve="completed" />
                    </node>
                  </node>
                </node>
                <node concept="3N13vt" id="1CY1mmC$d2W" role="3cqZAp" />
              </node>
              <node concept="37vLTw" id="1CY1mmC$d2Z" role="3clFbw">
                <ref role="3cqZAo" node="1CY1mmCx_uI" resolve="sourceMoved" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3vyG44Az4dH" role="1B3o_S" />
      <node concept="3cqZAl" id="3vyG44Az5Gm" role="3clF45" />
      <node concept="37vLTG" id="3vyG44AzAfs" role="3clF46">
        <property role="TrG5h" value="components" />
        <node concept="3uibUv" id="3vyG44AzAfr" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="16syzq" id="4y$DvIW19Wa" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3vyG44AzCoD" role="3clF46">
        <property role="TrG5h" value="dx" />
        <node concept="10Oyi0" id="3vyG44AzEa3" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3vyG44AzEd3" role="3clF46">
        <property role="TrG5h" value="dy" />
        <node concept="10Oyi0" id="3vyG44AzEdF" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="38k27IS5IM4" role="3clF46">
        <property role="TrG5h" value="completed" />
        <node concept="10P_77" id="38k27IS5QSJ" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27ISha9Z" role="jymVt" />
    <node concept="3clFb_" id="38k27ISh0xx" role="jymVt">
      <property role="TrG5h" value="changePath" />
      <node concept="3Tm6S6" id="38k27ISh0xy" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27ISh0xz" role="3clF45" />
      <node concept="37vLTG" id="38k27IShiYq" role="3clF46">
        <property role="TrG5h" value="entry" />
        <node concept="3uibUv" id="38k27IShiYs" role="1tU5fm">
          <ref role="3uigEE" node="7_KjZP9d656" resolve="ConnectionEntry" />
          <node concept="16syzq" id="38k27IShiYt" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
          </node>
          <node concept="16syzq" id="38k27IShiYu" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
          </node>
          <node concept="16syzq" id="38k27IShiYv" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
          </node>
          <node concept="16syzq" id="38k27IShiYw" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
          </node>
          <node concept="16syzq" id="38k27IShiYx" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="38k27ISgTRN" role="3clF46">
        <property role="TrG5h" value="connecitonView" />
        <node concept="16syzq" id="38k27ISgTRO" role="1tU5fm">
          <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27ISgTRP" role="3clF46">
        <property role="TrG5h" value="translatedPath" />
        <node concept="16syzq" id="38k27ISgTRQ" role="1tU5fm">
          <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27ISgTRR" role="3clF46">
        <property role="TrG5h" value="completed" />
        <node concept="10P_77" id="38k27ISgTRS" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="38k27ISgTRr" role="3clF47">
        <node concept="3clFbJ" id="38k27ISgTRs" role="3cqZAp">
          <node concept="3clFbS" id="38k27ISgTRt" role="3clFbx">
            <node concept="3clFbF" id="38k27ISgTRu" role="3cqZAp">
              <node concept="2OqwBi" id="38k27ISgTRv" role="3clFbG">
                <node concept="37vLTw" id="38k27ISgTRw" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9eRe1" resolve="myConnectionSyncronizer" />
                </node>
                <node concept="liA8E" id="38k27ISgTRx" role="2OqNvi">
                  <ref role="37wK5l" node="7_KjZP9eIiw" resolve="setPath" />
                  <node concept="37vLTw" id="38k27ISh0xs" role="37wK5m">
                    <ref role="3cqZAo" node="38k27ISgTRN" resolve="connecitonView" />
                  </node>
                  <node concept="37vLTw" id="38k27ISh0xr" role="37wK5m">
                    <ref role="3cqZAo" node="38k27ISgTRP" resolve="translatedPath" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="38k27ISgTR$" role="3cqZAp">
              <node concept="37vLTI" id="38k27ISgTR_" role="3clFbG">
                <node concept="10Nm6u" id="38k27ISgTRA" role="37vLTx" />
                <node concept="2OqwBi" id="38k27ISgTRB" role="37vLTJ">
                  <node concept="37vLTw" id="38k27IShs4e" role="2Oq$k0">
                    <ref role="3cqZAo" node="38k27IShiYq" resolve="entry" />
                  </node>
                  <node concept="2OwXpG" id="38k27ISgTRD" role="2OqNvi">
                    <ref role="2Oxat5" node="7_KjZP9glio" resolve="myTransformedPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="38k27ISh0xu" role="3clFbw">
            <ref role="3cqZAo" node="38k27ISgTRR" resolve="completed" />
          </node>
          <node concept="9aQIb" id="38k27ISgTRF" role="9aQIa">
            <node concept="3clFbS" id="38k27ISgTRG" role="9aQI4">
              <node concept="3clFbF" id="38k27ISgTRH" role="3cqZAp">
                <node concept="37vLTI" id="38k27ISgTRI" role="3clFbG">
                  <node concept="37vLTw" id="38k27ISh0xt" role="37vLTx">
                    <ref role="3cqZAo" node="38k27ISgTRP" resolve="translatedPath" />
                  </node>
                  <node concept="2OqwBi" id="38k27ISgTRK" role="37vLTJ">
                    <node concept="37vLTw" id="38k27IShs$W" role="2Oq$k0">
                      <ref role="3cqZAo" node="38k27IShiYq" resolve="entry" />
                    </node>
                    <node concept="2OwXpG" id="38k27ISgTRM" role="2OqNvi">
                      <ref role="2Oxat5" node="7_KjZP9glio" resolve="myTransformedPath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4vmY7CyIzZw" role="jymVt" />
    <node concept="312cEu" id="4vmY7CyIGpE" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MySelectionInitializer" />
      <node concept="2tJIrI" id="4vmY7CyISMN" role="jymVt" />
      <node concept="3clFb_" id="4vmY7CyITew" role="jymVt">
        <property role="TrG5h" value="onAdd" />
        <node concept="3Tm1VV" id="4vmY7CyITey" role="1B3o_S" />
        <node concept="3cqZAl" id="4vmY7CyITez" role="3clF45" />
        <node concept="3clFbS" id="4vmY7CyITe$" role="3clF47">
          <node concept="3cpWs8" id="4vmY7CyJ15S" role="3cqZAp">
            <node concept="3cpWsn" id="4vmY7CyJ15T" role="3cpWs9">
              <property role="TrG5h" value="selection" />
              <node concept="3uibUv" id="4vmY7CyJ15_" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                <node concept="16syzq" id="4vmY7CyJ1Uw" role="11_B2D">
                  <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
                </node>
              </node>
              <node concept="2OqwBi" id="4vmY7CyJ15U" role="33vP2m">
                <node concept="37vLTw" id="4vmY7CyJ15V" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9hsMT" resolve="myScene" />
                </node>
                <node concept="liA8E" id="4vmY7CyJ15W" role="2OqNvi">
                  <ref role="37wK5l" to="3bo0:7eBFChAbAUW" resolve="loadState" />
                  <node concept="37vLTw" id="4vmY7CyJ15X" role="37wK5m">
                    <ref role="3cqZAo" node="4vmY7CyGm0F" resolve="SELECTION_KEY" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4vmY7CyJmfD" role="3cqZAp">
            <node concept="3clFbS" id="4vmY7CyJmfF" role="3clFbx">
              <node concept="3clFbF" id="4vmY7CyJ3Fe" role="3cqZAp">
                <node concept="2OqwBi" id="4vmY7CyJ4oP" role="3clFbG">
                  <node concept="37vLTw" id="4vmY7CyJ7qY" role="2Oq$k0">
                    <ref role="3cqZAo" node="3vyG44AvsFM" resolve="myConnectionsSelection" />
                  </node>
                  <node concept="liA8E" id="4vmY7CyJ82y" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Set.addAll(java.util.Collection)" resolve="addAll" />
                    <node concept="37vLTw" id="4vmY7CyJ8P0" role="37wK5m">
                      <ref role="3cqZAo" node="4vmY7CyJ15T" resolve="selection" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4vmY7CyJ9Cf" role="3cqZAp">
                <node concept="3clFbS" id="4vmY7CyJ9Ch" role="3clFbx">
                  <node concept="3clFbF" id="4vmY7CyJipT" role="3cqZAp">
                    <node concept="2OqwBi" id="4vmY7CyJi_X" role="3clFbG">
                      <node concept="37vLTw" id="4vmY7CyJipR" role="2Oq$k0">
                        <ref role="3cqZAo" node="4y$DvIYlJ$T" resolve="mySceneFocus" />
                      </node>
                      <node concept="liA8E" id="4vmY7CyJlaP" role="2OqNvi">
                        <ref role="37wK5l" to="rvgs:4y$DvIXWfTe" resolve="addFocus" />
                        <node concept="37vLTw" id="4vmY7CyJlnq" role="37wK5m">
                          <ref role="3cqZAo" node="4y$DvIYmj6g" resolve="myFocusHandle" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="4vmY7CyJhWN" role="3clFbw">
                  <node concept="2OqwBi" id="4vmY7CyJhWP" role="3fr31v">
                    <node concept="37vLTw" id="4vmY7CyJhWQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="4vmY7CyJ15T" resolve="selection" />
                    </node>
                    <node concept="liA8E" id="4vmY7CyJhWR" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.isEmpty()" resolve="isEmpty" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="4vmY7CyJoDe" role="3clFbw">
              <node concept="10Nm6u" id="4vmY7CyJoYh" role="3uHU7w" />
              <node concept="37vLTw" id="4vmY7CyJmDs" role="3uHU7B">
                <ref role="3cqZAo" node="4vmY7CyJ15T" resolve="selection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4vmY7CyITe_" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="4vmY7CyITeA" role="jymVt">
        <property role="TrG5h" value="onRemove" />
        <node concept="3Tm1VV" id="4vmY7CyITeC" role="1B3o_S" />
        <node concept="3cqZAl" id="4vmY7CyITeD" role="3clF45" />
        <node concept="3clFbS" id="4vmY7CyITeE" role="3clF47">
          <node concept="3clFbF" id="4vmY7CyJqi6" role="3cqZAp">
            <node concept="2OqwBi" id="4vmY7CyJqCt" role="3clFbG">
              <node concept="37vLTw" id="4vmY7CyJqi5" role="2Oq$k0">
                <ref role="3cqZAo" node="7_KjZP9hsMT" resolve="myScene" />
              </node>
              <node concept="liA8E" id="4vmY7CyJrdY" role="2OqNvi">
                <ref role="37wK5l" to="3bo0:7eBFChAb_fZ" resolve="storeState" />
                <node concept="37vLTw" id="4vmY7CyJrsL" role="37wK5m">
                  <ref role="3cqZAo" node="4vmY7CyGm0F" resolve="SELECTION_KEY" />
                </node>
                <node concept="2ShNRf" id="4vmY7CyJs7G" role="37wK5m">
                  <node concept="1pGfFk" id="4vmY7CyJsJV" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;(java.util.Collection)" resolve="HashSet" />
                    <node concept="37vLTw" id="4vmY7CyJtJ4" role="37wK5m">
                      <ref role="3cqZAo" node="3vyG44AvsFM" resolve="myConnectionsSelection" />
                    </node>
                    <node concept="16syzq" id="4vmY7CyJ__U" role="1pMfVU">
                      <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4vmY7CyITeF" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4vmY7CyIGpF" role="1B3o_S" />
      <node concept="3uibUv" id="4vmY7CyIShO" role="EKbjA">
        <ref role="3uigEE" to="3bo0:1R4IoyRrSd8" resolve="SceneInitializer" />
      </node>
    </node>
    <node concept="2tJIrI" id="1gL472DTxjw" role="jymVt" />
    <node concept="312cEu" id="1gL472DTBau" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyCursorListener" />
      <node concept="2tJIrI" id="1gL472DTHcM" role="jymVt" />
      <node concept="3clFb_" id="1gL472DTHiH" role="jymVt">
        <property role="TrG5h" value="onCursorMoved" />
        <node concept="3Tm1VV" id="1gL472DTHiJ" role="1B3o_S" />
        <node concept="3cqZAl" id="1gL472DTHiK" role="3clF45" />
        <node concept="37vLTG" id="1gL472DTHiL" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="1gL472DTHiM" role="1tU5fm">
            <ref role="3uigEE" to="3bo0:17nGqbJd33F" resolve="CursorEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="1gL472DTHiN" role="3clF47">
          <node concept="3cpWs8" id="1gL472DTR5l" role="3cqZAp">
            <node concept="3cpWsn" id="1gL472DTR5m" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="10Oyi0" id="1gL472DTR5h" role="1tU5fm" />
              <node concept="2OqwBi" id="1gL472DTR5n" role="33vP2m">
                <node concept="2OqwBi" id="1gL472DTR5o" role="2Oq$k0">
                  <node concept="37vLTw" id="1gL472DTR5p" role="2Oq$k0">
                    <ref role="3cqZAo" node="1gL472DTHiL" resolve="event" />
                  </node>
                  <node concept="2OwXpG" id="1gL472DTR5q" role="2OqNvi">
                    <ref role="2Oxat5" to="3bo0:17nGqbJd3gq" resolve="data" />
                  </node>
                </node>
                <node concept="2OwXpG" id="1gL472DTR5r" role="2OqNvi">
                  <ref role="2Oxat5" to="3bo0:3vyG44AulJ$" resolve="x" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="1gL472DTRtL" role="3cqZAp">
            <node concept="3cpWsn" id="1gL472DTRtM" role="3cpWs9">
              <property role="TrG5h" value="y" />
              <node concept="10Oyi0" id="1gL472DTRtG" role="1tU5fm" />
              <node concept="2OqwBi" id="1gL472DTRtN" role="33vP2m">
                <node concept="2OqwBi" id="1gL472DTRtO" role="2Oq$k0">
                  <node concept="37vLTw" id="1gL472DTRtP" role="2Oq$k0">
                    <ref role="3cqZAo" node="1gL472DTHiL" resolve="event" />
                  </node>
                  <node concept="2OwXpG" id="1gL472DTRtQ" role="2OqNvi">
                    <ref role="2Oxat5" to="3bo0:17nGqbJd3gq" resolve="data" />
                  </node>
                </node>
                <node concept="2OwXpG" id="1gL472DTRtR" role="2OqNvi">
                  <ref role="2Oxat5" to="3bo0:3vyG44AulJB" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="1gL472DTHFZ" role="3cqZAp">
            <node concept="2GrKxI" id="1gL472DTHG0" role="2Gsz3X">
              <property role="TrG5h" value="connection" />
            </node>
            <node concept="37vLTw" id="1gL472DTHG1" role="2GsD0m">
              <ref role="3cqZAo" node="7sG$k3BRVVR" resolve="myConnections" />
            </node>
            <node concept="3clFbS" id="1gL472DTHG2" role="2LFqv$">
              <node concept="3cpWs8" id="1iOpS25qDNh" role="3cqZAp">
                <node concept="3cpWsn" id="1iOpS25qDNi" role="3cpWs9">
                  <property role="TrG5h" value="entry" />
                  <node concept="3uibUv" id="1iOpS25qDN1" role="1tU5fm">
                    <ref role="3uigEE" node="7_KjZP9d656" resolve="ConnectionEntry" />
                    <node concept="16syzq" id="1iOpS25qDNe" role="11_B2D">
                      <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25qDNd" role="11_B2D">
                      <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25qDNf" role="11_B2D">
                      <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25qDNg" role="11_B2D">
                      <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25qDNc" role="11_B2D">
                      <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1iOpS25qDNj" role="33vP2m">
                    <node concept="2GrUjf" id="1iOpS25qDNk" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="1gL472DTHG0" resolve="connection" />
                    </node>
                    <node concept="3AV6Ez" id="1iOpS25qDNl" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1gL472DTSee" role="3cqZAp">
                <node concept="3cpWsn" id="1gL472DTSef" role="3cpWs9">
                  <property role="TrG5h" value="cursor" />
                  <node concept="16syzq" id="1gL472DTSdv" role="1tU5fm">
                    <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
                  </node>
                  <node concept="2OqwBi" id="1gL472DTSeg" role="33vP2m">
                    <node concept="2OqwBi" id="1gL472DTSeh" role="2Oq$k0">
                      <node concept="37vLTw" id="1iOpS25qDNm" role="2Oq$k0">
                        <ref role="3cqZAo" node="1iOpS25qDNi" resolve="entry" />
                      </node>
                      <node concept="2OwXpG" id="1gL472DTSel" role="2OqNvi">
                        <ref role="2Oxat5" node="7_KjZP9f9dA" resolve="myController" />
                      </node>
                    </node>
                    <node concept="liA8E" id="1gL472DTSem" role="2OqNvi">
                      <ref role="37wK5l" node="IMWzYPkcyz" resolve="getCursorAt" />
                      <node concept="2OqwBi" id="1iOpS25qC6R" role="37wK5m">
                        <node concept="37vLTw" id="1iOpS25qEwa" role="2Oq$k0">
                          <ref role="3cqZAo" node="1iOpS25qDNi" resolve="entry" />
                        </node>
                        <node concept="2OwXpG" id="1iOpS25qC6T" role="2OqNvi">
                          <ref role="2Oxat5" node="7_KjZP9f7KU" resolve="myModelPath" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1gL472DTSen" role="37wK5m">
                        <ref role="3cqZAo" node="1gL472DTR5m" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="1gL472DTSeo" role="37wK5m">
                        <ref role="3cqZAo" node="1gL472DTRtM" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1gL472DTT44" role="3cqZAp">
                <node concept="3clFbS" id="1gL472DTT46" role="3clFbx">
                  <node concept="3cpWs8" id="1gL472DUQDR" role="3cqZAp">
                    <node concept="3cpWsn" id="1gL472DUQDS" role="3cpWs9">
                      <property role="TrG5h" value="freshConnectionCursor" />
                      <node concept="3uibUv" id="1gL472DUQCu" role="1tU5fm">
                        <ref role="3uigEE" node="IMWzYPfMhW" resolve="ConnectionCursor" />
                        <node concept="16syzq" id="4y$DvIW7YVi" role="11_B2D">
                          <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
                        </node>
                        <node concept="16syzq" id="4y$DvIW7YVj" role="11_B2D">
                          <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="1gL472DUQDT" role="33vP2m">
                        <node concept="1pGfFk" id="1gL472DUQDU" role="2ShVmc">
                          <ref role="37wK5l" node="IMWzYPfM$_" resolve="ConnectionCursor" />
                          <node concept="16syzq" id="4y$DvIW7Ywc" role="1pMfVU">
                            <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
                          </node>
                          <node concept="16syzq" id="1gL472DUQDV" role="1pMfVU">
                            <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
                          </node>
                          <node concept="2OqwBi" id="1gL472DUQDX" role="37wK5m">
                            <node concept="2GrUjf" id="1gL472DUQDY" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="1gL472DTHG0" resolve="connection" />
                            </node>
                            <node concept="3AY5_j" id="1gL472DUQDZ" role="2OqNvi" />
                          </node>
                          <node concept="37vLTw" id="1gL472DUQE0" role="37wK5m">
                            <ref role="3cqZAo" node="1gL472DTSef" resolve="cursor" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1gL472DV1_I" role="3cqZAp">
                    <node concept="3clFbS" id="1gL472DV1_K" role="3clFbx">
                      <node concept="3clFbF" id="1gL472DVDGR" role="3cqZAp">
                        <node concept="2OqwBi" id="1gL472DVDRT" role="3clFbG">
                          <node concept="37vLTw" id="1gL472DVDGP" role="2Oq$k0">
                            <ref role="3cqZAo" node="7_KjZP9hsMT" resolve="myScene" />
                          </node>
                          <node concept="liA8E" id="1gL472DVG2M" role="2OqNvi">
                            <ref role="37wK5l" to="3bo0:6tmlia_MTZ4" resolve="fireRepaint" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1gL472DU1bA" role="3cqZAp">
                        <node concept="37vLTI" id="1gL472DU2ko" role="3clFbG">
                          <node concept="37vLTw" id="1gL472DUQE1" role="37vLTx">
                            <ref role="3cqZAo" node="1gL472DUQDS" resolve="freshConnectionCursor" />
                          </node>
                          <node concept="37vLTw" id="1gL472DU1b$" role="37vLTJ">
                            <ref role="3cqZAo" node="IMWzYPfPBM" resolve="myConnectionCursor" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="1gL472DVDoU" role="3clFbw">
                      <node concept="2OqwBi" id="1gL472DVDoW" role="3fr31v">
                        <node concept="37vLTw" id="1gL472DVDoX" role="2Oq$k0">
                          <ref role="3cqZAo" node="1gL472DUQDS" resolve="freshConnectionCursor" />
                        </node>
                        <node concept="liA8E" id="1gL472DVDoY" role="2OqNvi">
                          <ref role="37wK5l" node="1gL472DUBEc" resolve="equals" />
                          <node concept="37vLTw" id="1gL472DVDoZ" role="37wK5m">
                            <ref role="3cqZAo" node="IMWzYPfPBM" resolve="myConnectionCursor" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="1gL472DU__C" role="3cqZAp" />
                </node>
                <node concept="3y3z36" id="1gL472DU0Wi" role="3clFbw">
                  <node concept="10Nm6u" id="1gL472DU11I" role="3uHU7w" />
                  <node concept="37vLTw" id="1gL472DTTmc" role="3uHU7B">
                    <ref role="3cqZAo" node="1gL472DTSef" resolve="cursor" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1gL472DVGtJ" role="3cqZAp">
            <node concept="3clFbS" id="1gL472DVGtL" role="3clFbx">
              <node concept="3clFbF" id="1gL472DVIJ_" role="3cqZAp">
                <node concept="2OqwBi" id="1gL472DVIJA" role="3clFbG">
                  <node concept="37vLTw" id="1gL472DVIJB" role="2Oq$k0">
                    <ref role="3cqZAo" node="7_KjZP9hsMT" resolve="myScene" />
                  </node>
                  <node concept="liA8E" id="1gL472DVIJC" role="2OqNvi">
                    <ref role="37wK5l" to="3bo0:6tmlia_MTZ4" resolve="fireRepaint" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1gL472DUA7L" role="3cqZAp">
                <node concept="37vLTI" id="1gL472DUB1s" role="3clFbG">
                  <node concept="10Nm6u" id="1gL472DUBig" role="37vLTx" />
                  <node concept="37vLTw" id="1gL472DUA7J" role="37vLTJ">
                    <ref role="3cqZAo" node="IMWzYPfPBM" resolve="myConnectionCursor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="1gL472DVI02" role="3clFbw">
              <node concept="10Nm6u" id="1gL472DVIft" role="3uHU7w" />
              <node concept="37vLTw" id="1gL472DVGSQ" role="3uHU7B">
                <ref role="3cqZAo" node="IMWzYPfPBM" resolve="myConnectionCursor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1gL472DTHiO" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1gL472DTAOU" role="1B3o_S" />
      <node concept="3uibUv" id="1gL472DTH4$" role="EKbjA">
        <ref role="3uigEE" to="3bo0:17nGqbJd2m8" resolve="CursorListner" />
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJBf3M" role="jymVt" />
    <node concept="312cEu" id="17nGqbJBnIV" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyKeyboardListener" />
      <node concept="2tJIrI" id="17nGqbJBr2C" role="jymVt" />
      <node concept="3clFb_" id="17nGqbJBr5Q" role="jymVt">
        <property role="TrG5h" value="onBackspacePressed" />
        <node concept="3Tm1VV" id="17nGqbJBr5S" role="1B3o_S" />
        <node concept="3cqZAl" id="17nGqbJBr5T" role="3clF45" />
        <node concept="3clFbS" id="17nGqbJBr5U" role="3clF47">
          <node concept="2Gpval" id="3vyG44AJJ3e" role="3cqZAp">
            <node concept="2GrKxI" id="3vyG44AJJ3g" role="2Gsz3X">
              <property role="TrG5h" value="connection" />
            </node>
            <node concept="37vLTw" id="3vyG44AJJzZ" role="2GsD0m">
              <ref role="3cqZAo" node="7sG$k3BRVVR" resolve="myConnections" />
            </node>
            <node concept="3clFbS" id="3vyG44AJJ3k" role="2LFqv$">
              <node concept="3clFbJ" id="3vyG44AJJXG" role="3cqZAp">
                <node concept="3clFbS" id="3vyG44AJJXI" role="3clFbx">
                  <node concept="3clFbF" id="4y$DvIW9q7w" role="3cqZAp">
                    <node concept="2OqwBi" id="4y$DvIW9qwh" role="3clFbG">
                      <node concept="37vLTw" id="4y$DvIW9q7u" role="2Oq$k0">
                        <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                      </node>
                      <node concept="liA8E" id="4y$DvIWajLf" role="2OqNvi">
                        <ref role="37wK5l" node="4y$DvIW9AEc" resolve="removeEdge" />
                        <node concept="2OqwBi" id="4y$DvIWakTs" role="37wK5m">
                          <node concept="2GrUjf" id="4y$DvIWak8d" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="3vyG44AJJ3g" resolve="connection" />
                          </node>
                          <node concept="3AY5_j" id="4y$DvIWaEfL" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="7_KjZP9klty" role="3clFbw">
                  <node concept="2OqwBi" id="7_KjZP9j_kR" role="2Oq$k0">
                    <node concept="2GrUjf" id="3vyG44AJKir" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3vyG44AJJ3g" resolve="connection" />
                    </node>
                    <node concept="3AV6Ez" id="7_KjZP9jA2u" role="2OqNvi" />
                  </node>
                  <node concept="liA8E" id="7_KjZP9kD0f" role="2OqNvi">
                    <ref role="37wK5l" node="7_KjZP9dhcj" resolve="isSelected" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="17nGqbJBr5V" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="17nGqbJBkS$" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJBqZx" role="EKbjA">
        <ref role="3uigEE" to="3bo0:17nGqbJeGPf" resolve="KeyboardListener" />
      </node>
    </node>
    <node concept="2tJIrI" id="3LngKhTGySa" role="jymVt" />
    <node concept="312cEu" id="3LngKhTGLTs" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyLayouter" />
      <node concept="2tJIrI" id="17nGqbJBKqJ" role="jymVt" />
      <node concept="3clFb_" id="4y$DvIXOO84" role="jymVt">
        <property role="TrG5h" value="relayout" />
        <node concept="3Tm1VV" id="4y$DvIXOO86" role="1B3o_S" />
        <node concept="3cqZAl" id="4y$DvIXOO87" role="3clF45" />
        <node concept="3clFbS" id="4y$DvIXOO88" role="3clF47">
          <node concept="2Gpval" id="4y$DvIXQpep" role="3cqZAp">
            <node concept="3clFbS" id="4y$DvIXQpeu" role="2LFqv$">
              <node concept="3clFbF" id="4y$DvIXQpev" role="3cqZAp">
                <node concept="2OqwBi" id="4y$DvIXQpew" role="3clFbG">
                  <node concept="2GrUjf" id="4y$DvIXQpeA" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="4y$DvIXQpe_" resolve="connection" />
                  </node>
                  <node concept="liA8E" id="4y$DvIXQpe$" role="2OqNvi">
                    <ref role="37wK5l" node="4y$DvIXOUcN" resolve="relayout" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4tjN0ibTaem" role="2GsD0m">
              <node concept="37vLTw" id="4y$DvIXQpet" role="2Oq$k0">
                <ref role="3cqZAo" node="7sG$k3BRVVR" resolve="myConnections" />
              </node>
              <node concept="liA8E" id="4tjN0ibThfx" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.values()" resolve="values" />
              </node>
            </node>
            <node concept="2GrKxI" id="4y$DvIXQpe_" role="2Gsz3X">
              <property role="TrG5h" value="connection" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4y$DvIXOO89" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="3LngKhTGFgr" role="1B3o_S" />
      <node concept="3uibUv" id="3LngKhTGUkq" role="EKbjA">
        <ref role="3uigEE" to="3bo0:17nGqbJd3r4" resolve="SceneLayouter" />
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJBxKB" role="jymVt" />
    <node concept="312cEu" id="17nGqbJBHkL" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyPainter" />
      <node concept="2tJIrI" id="4tjN0ibRu0C" role="jymVt" />
      <node concept="3clFb_" id="17nGqbJBKu4" role="jymVt">
        <property role="TrG5h" value="paint" />
        <node concept="37vLTG" id="17nGqbJBKu5" role="3clF46">
          <property role="TrG5h" value="graphics" />
          <node concept="3uibUv" id="17nGqbJBKu6" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
          </node>
        </node>
        <node concept="3Tm1VV" id="17nGqbJBKu8" role="1B3o_S" />
        <node concept="3cqZAl" id="17nGqbJBKu9" role="3clF45" />
        <node concept="3clFbS" id="17nGqbJBKua" role="3clF47">
          <node concept="2Gpval" id="309fsJ6ugsG" role="3cqZAp">
            <node concept="2GrKxI" id="309fsJ6ugsH" role="2Gsz3X">
              <property role="TrG5h" value="connection" />
            </node>
            <node concept="37vLTw" id="309fsJ6umoK" role="2GsD0m">
              <ref role="3cqZAo" node="7sG$k3BRVVR" resolve="myConnections" />
            </node>
            <node concept="3clFbS" id="309fsJ6ugsJ" role="2LFqv$">
              <node concept="3cpWs8" id="1iOpS25nFXs" role="3cqZAp">
                <node concept="3cpWsn" id="1iOpS25nFXt" role="3cpWs9">
                  <property role="TrG5h" value="entry" />
                  <node concept="3uibUv" id="1iOpS25nFVG" role="1tU5fm">
                    <ref role="3uigEE" node="7_KjZP9d656" resolve="ConnectionEntry" />
                    <node concept="16syzq" id="1iOpS25nFVV" role="11_B2D">
                      <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25nFVR" role="11_B2D">
                      <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25nFVS" role="11_B2D">
                      <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25nFVU" role="11_B2D">
                      <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25nFVT" role="11_B2D">
                      <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1iOpS25nFXu" role="33vP2m">
                    <node concept="2GrUjf" id="1iOpS25nFXv" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="309fsJ6ugsH" resolve="connection" />
                    </node>
                    <node concept="3AV6Ez" id="1iOpS25nFXw" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="1iOpS25Fdrw" role="3cqZAp">
                <node concept="3cpWsn" id="1iOpS25Fdrx" role="3cpWs9">
                  <property role="TrG5h" value="path" />
                  <node concept="16syzq" id="1iOpS25Fdpi" role="1tU5fm">
                    <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
                  </node>
                  <node concept="2OqwBi" id="1iOpS25Fdry" role="33vP2m">
                    <node concept="37vLTw" id="1iOpS25Fdrz" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iOpS25nFXt" resolve="entry" />
                    </node>
                    <node concept="2OwXpG" id="38k27ISiG4T" role="2OqNvi">
                      <ref role="2Oxat5" node="7_KjZP9glio" resolve="myTransformedPath" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="5jb5jNC2w5g" role="3cqZAp">
                <node concept="3cpWsn" id="5jb5jNC2w5j" role="3cpWs9">
                  <property role="TrG5h" value="selected" />
                  <node concept="10P_77" id="5jb5jNC2w5e" role="1tU5fm" />
                  <node concept="3clFbT" id="5jb5jNC2wjS" role="33vP2m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1iOpS25Feag" role="3cqZAp">
                <node concept="3clFbS" id="1iOpS25Feai" role="3clFbx">
                  <node concept="3clFbF" id="1iOpS25FoOu" role="3cqZAp">
                    <node concept="37vLTI" id="1iOpS25FyO5" role="3clFbG">
                      <node concept="2OqwBi" id="1iOpS25Fztm" role="37vLTx">
                        <node concept="37vLTw" id="1iOpS25FyT9" role="2Oq$k0">
                          <ref role="3cqZAo" node="1iOpS25nFXt" resolve="entry" />
                        </node>
                        <node concept="2OwXpG" id="1iOpS25G9Xz" role="2OqNvi">
                          <ref role="2Oxat5" node="7_KjZP9f7KU" resolve="myModelPath" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1iOpS25FoOs" role="37vLTJ">
                        <ref role="3cqZAo" node="1iOpS25Fdrx" resolve="path" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5jb5jNC2wq8" role="3cqZAp">
                    <node concept="37vLTI" id="5jb5jNC2wPB" role="3clFbG">
                      <node concept="3clFbT" id="5jb5jNC2wYw" role="37vLTx" />
                      <node concept="37vLTw" id="5jb5jNC2wq6" role="37vLTJ">
                        <ref role="3cqZAo" node="5jb5jNC2w5j" resolve="selected" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbC" id="1iOpS25FoDN" role="3clFbw">
                  <node concept="10Nm6u" id="1iOpS25FoII" role="3uHU7w" />
                  <node concept="37vLTw" id="1iOpS25FefK" role="3uHU7B">
                    <ref role="3cqZAo" node="1iOpS25Fdrx" resolve="path" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="309fsJ6ugsK" role="3cqZAp">
                <node concept="2OqwBi" id="309fsJ6ugsL" role="3clFbG">
                  <node concept="2OqwBi" id="7_KjZP9j$g3" role="2Oq$k0">
                    <node concept="37vLTw" id="1iOpS25nFXx" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iOpS25nFXt" resolve="entry" />
                    </node>
                    <node concept="2OwXpG" id="7_KjZP9j$yU" role="2OqNvi">
                      <ref role="2Oxat5" node="7_KjZP9f9dA" resolve="myController" />
                    </node>
                  </node>
                  <node concept="liA8E" id="309fsJ6ugsN" role="2OqNvi">
                    <ref role="37wK5l" node="7sG$k3BBwrZ" resolve="paintConneciton" />
                    <node concept="37vLTw" id="1iOpS25H6Eo" role="37wK5m">
                      <ref role="3cqZAo" node="1iOpS25Fdrx" resolve="path" />
                    </node>
                    <node concept="2OqwBi" id="1iOpS25nIx9" role="37wK5m">
                      <node concept="37vLTw" id="1iOpS25nHJ0" role="2Oq$k0">
                        <ref role="3cqZAo" node="1iOpS25nFXt" resolve="entry" />
                      </node>
                      <node concept="liA8E" id="1iOpS25p8xe" role="2OqNvi">
                        <ref role="37wK5l" node="7_KjZP9dhcr" resolve="getCursor" />
                      </node>
                    </node>
                    <node concept="22lmx$" id="5jb5jNC2xpa" role="37wK5m">
                      <node concept="37vLTw" id="5jb5jNC2xH_" role="3uHU7B">
                        <ref role="3cqZAo" node="5jb5jNC2w5j" resolve="selected" />
                      </node>
                      <node concept="2OqwBi" id="1iOpS25wpL4" role="3uHU7w">
                        <node concept="37vLTw" id="1iOpS25wp9A" role="2Oq$k0">
                          <ref role="3cqZAo" node="1iOpS25nFXt" resolve="entry" />
                        </node>
                        <node concept="liA8E" id="1iOpS25wWdd" role="2OqNvi">
                          <ref role="37wK5l" node="7_KjZP9dhcj" resolve="isSelected" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="1iOpS25EdEm" role="37wK5m">
                      <node concept="37vLTw" id="3vyG44At4gE" role="2Oq$k0">
                        <ref role="3cqZAo" node="17nGqbJBKu5" resolve="graphics" />
                      </node>
                      <node concept="liA8E" id="1iOpS25Ee0k" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Graphics.create()" resolve="create" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4O0ojQpGsHx" role="3cqZAp">
            <node concept="3clFbS" id="4O0ojQpGsHz" role="3clFbx">
              <node concept="3clFbF" id="4O0ojQpGuIs" role="3cqZAp">
                <node concept="2OqwBi" id="4O0ojQpGv8j" role="3clFbG">
                  <node concept="37vLTw" id="4O0ojQpGuIq" role="2Oq$k0">
                    <ref role="3cqZAo" node="4O0ojQpF5gj" resolve="myNewPathPainther" />
                  </node>
                  <node concept="liA8E" id="4O0ojQpGyl2" role="2OqNvi">
                    <ref role="37wK5l" to="82uw:~BiConsumer.accept(java.lang.Object,java.lang.Object)" resolve="accept" />
                    <node concept="2OqwBi" id="1iOpS25EcLn" role="37wK5m">
                      <node concept="37vLTw" id="4O0ojQpGB0a" role="2Oq$k0">
                        <ref role="3cqZAo" node="17nGqbJBKu5" resolve="graphics" />
                      </node>
                      <node concept="liA8E" id="1iOpS25Ed8o" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Graphics.create()" resolve="create" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4O0ojQpGGdt" role="37wK5m">
                      <ref role="3cqZAo" node="4O0ojQpE9Ft" resolve="myNewConnectionPath" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="4O0ojQpGudn" role="3clFbw">
              <node concept="10Nm6u" id="4O0ojQpGu$m" role="3uHU7w" />
              <node concept="37vLTw" id="4O0ojQpGtI_" role="3uHU7B">
                <ref role="3cqZAo" node="4O0ojQpE9Ft" resolve="myNewConnectionPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="17nGqbJBKub" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="17nGqbJB$Ib" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJBKnx" role="EKbjA">
        <ref role="3uigEE" to="3bo0:17nGqbJcVWh" resolve="ScenePainter" />
      </node>
    </node>
    <node concept="2tJIrI" id="3LngKhTHhnJ" role="jymVt" />
    <node concept="312cEu" id="1iOpS25BxSo" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyTracesPainter" />
      <node concept="2tJIrI" id="1iOpS25BxSp" role="jymVt" />
      <node concept="3clFb_" id="1iOpS25BxSq" role="jymVt">
        <property role="TrG5h" value="paint" />
        <node concept="37vLTG" id="1iOpS25BxSr" role="3clF46">
          <property role="TrG5h" value="graphics" />
          <node concept="3uibUv" id="1iOpS25BxSs" role="1tU5fm">
            <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
          </node>
        </node>
        <node concept="3Tm1VV" id="1iOpS25BxSt" role="1B3o_S" />
        <node concept="3cqZAl" id="1iOpS25BxSu" role="3clF45" />
        <node concept="3clFbS" id="1iOpS25BxSv" role="3clF47">
          <node concept="2Gpval" id="1iOpS25BxSw" role="3cqZAp">
            <node concept="2GrKxI" id="1iOpS25BxSx" role="2Gsz3X">
              <property role="TrG5h" value="connection" />
            </node>
            <node concept="37vLTw" id="1iOpS25BxSy" role="2GsD0m">
              <ref role="3cqZAo" node="7sG$k3BRVVR" resolve="myConnections" />
            </node>
            <node concept="3clFbS" id="1iOpS25BxSz" role="2LFqv$">
              <node concept="3cpWs8" id="1iOpS25BxS$" role="3cqZAp">
                <node concept="3cpWsn" id="1iOpS25BxS_" role="3cpWs9">
                  <property role="TrG5h" value="entry" />
                  <node concept="3uibUv" id="1iOpS25BxSA" role="1tU5fm">
                    <ref role="3uigEE" node="7_KjZP9d656" resolve="ConnectionEntry" />
                    <node concept="16syzq" id="1iOpS25BxSB" role="11_B2D">
                      <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25BxSC" role="11_B2D">
                      <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25BxSD" role="11_B2D">
                      <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25BxSE" role="11_B2D">
                      <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25BxSF" role="11_B2D">
                      <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1iOpS25BxSG" role="33vP2m">
                    <node concept="2GrUjf" id="1iOpS25BxSH" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="1iOpS25BxSx" resolve="connection" />
                    </node>
                    <node concept="3AV6Ez" id="1iOpS25BxSI" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="1iOpS25Ga6r" role="3cqZAp">
                <node concept="3clFbS" id="1iOpS25Ga6s" role="3clFbx">
                  <node concept="3clFbF" id="1iOpS25BxSJ" role="3cqZAp">
                    <node concept="2OqwBi" id="1iOpS25BxSK" role="3clFbG">
                      <node concept="2OqwBi" id="1iOpS25BxSL" role="2Oq$k0">
                        <node concept="37vLTw" id="1iOpS25BxSM" role="2Oq$k0">
                          <ref role="3cqZAo" node="1iOpS25BxS_" resolve="entry" />
                        </node>
                        <node concept="2OwXpG" id="1iOpS25BxSN" role="2OqNvi">
                          <ref role="2Oxat5" node="7_KjZP9f9dA" resolve="myController" />
                        </node>
                      </node>
                      <node concept="liA8E" id="1iOpS25BxSO" role="2OqNvi">
                        <ref role="37wK5l" node="1iOpS25mLpz" resolve="paintTrace" />
                        <node concept="2OqwBi" id="1iOpS25GcVL" role="37wK5m">
                          <node concept="37vLTw" id="1iOpS25Gcl7" role="2Oq$k0">
                            <ref role="3cqZAo" node="1iOpS25BxS_" resolve="entry" />
                          </node>
                          <node concept="2OwXpG" id="1iOpS25GGyT" role="2OqNvi">
                            <ref role="2Oxat5" node="7_KjZP9f7KU" resolve="myModelPath" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="1iOpS25EbWT" role="37wK5m">
                          <node concept="37vLTw" id="1iOpS25BxSY" role="2Oq$k0">
                            <ref role="3cqZAo" node="1iOpS25BxSr" resolve="graphics" />
                          </node>
                          <node concept="liA8E" id="1iOpS25Ecsz" role="2OqNvi">
                            <ref role="37wK5l" to="z60i:~Graphics.create()" resolve="create" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="1iOpS25GaxD" role="3clFbw">
                  <node concept="2OqwBi" id="1iOpS25GaAt" role="3uHU7B">
                    <node concept="37vLTw" id="1iOpS25GaAu" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iOpS25BxS_" resolve="entry" />
                    </node>
                    <node concept="2OwXpG" id="38k27ISjbpY" role="2OqNvi">
                      <ref role="2Oxat5" node="7_KjZP9glio" resolve="myTransformedPath" />
                    </node>
                  </node>
                  <node concept="10Nm6u" id="1iOpS25Ga6$" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1iOpS25BxTa" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1iOpS25BxTb" role="1B3o_S" />
      <node concept="3uibUv" id="1iOpS25BxTc" role="EKbjA">
        <ref role="3uigEE" to="3bo0:17nGqbJcVWh" resolve="ScenePainter" />
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJBL7h" role="jymVt" />
    <node concept="312cEu" id="17nGqbJBTiX" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyClickListener" />
      <node concept="3Tm6S6" id="17nGqbJBQrV" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJBWC$" role="EKbjA">
        <ref role="3uigEE" to="3bo0:17nGqbJcVRI" resolve="ClickEventListener" />
      </node>
      <node concept="2tJIrI" id="17nGqbJBWP1" role="jymVt" />
      <node concept="3clFb_" id="17nGqbJBWSj" role="jymVt">
        <property role="TrG5h" value="onMouseClicked" />
        <node concept="3Tm1VV" id="17nGqbJBWSl" role="1B3o_S" />
        <node concept="3cqZAl" id="17nGqbJBWSm" role="3clF45" />
        <node concept="37vLTG" id="17nGqbJBWSn" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="17nGqbJBWSo" role="1tU5fm">
            <ref role="3uigEE" to="3bo0:3vyG44AuRcU" resolve="ClickEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="17nGqbJBWSp" role="3clF47">
          <node concept="3cpWs8" id="5MmYuOgY84o" role="3cqZAp">
            <node concept="3cpWsn" id="5MmYuOgY84r" role="3cpWs9">
              <property role="TrG5h" value="focusCleared" />
              <node concept="10P_77" id="5MmYuOgY84m" role="1tU5fm" />
              <node concept="3clFbT" id="5MmYuOgY8O9" role="33vP2m" />
            </node>
          </node>
          <node concept="2Gpval" id="4ZaR9mNmIAE" role="3cqZAp">
            <node concept="2GrKxI" id="4ZaR9mNmIAF" role="2Gsz3X">
              <property role="TrG5h" value="connection" />
            </node>
            <node concept="37vLTw" id="4ZaR9mNmPt2" role="2GsD0m">
              <ref role="3cqZAo" node="7sG$k3BRVVR" resolve="myConnections" />
            </node>
            <node concept="3clFbS" id="4ZaR9mNmIAH" role="2LFqv$">
              <node concept="3cpWs8" id="1iOpS25nBaa" role="3cqZAp">
                <node concept="3cpWsn" id="1iOpS25nBab" role="3cpWs9">
                  <property role="TrG5h" value="entry" />
                  <node concept="3uibUv" id="1iOpS25nB6y" role="1tU5fm">
                    <ref role="3uigEE" node="7_KjZP9d656" resolve="ConnectionEntry" />
                    <node concept="16syzq" id="1iOpS25nB6K" role="11_B2D">
                      <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25nB6J" role="11_B2D">
                      <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25nB6H" role="11_B2D">
                      <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25nB6I" role="11_B2D">
                      <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25nB6L" role="11_B2D">
                      <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1iOpS25nBac" role="33vP2m">
                    <node concept="2GrUjf" id="1iOpS25nBad" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="4ZaR9mNmIAF" resolve="connection" />
                    </node>
                    <node concept="3AV6Ez" id="1iOpS25nBae" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="3vyG44AvQm6" role="3cqZAp">
                <node concept="3clFbS" id="3vyG44AvQmy" role="3clFbx">
                  <node concept="3clFbJ" id="3vyG44Avqyc" role="3cqZAp">
                    <node concept="3clFbS" id="3vyG44Avqye" role="3clFbx">
                      <node concept="3clFbF" id="3vyG44AvvEm" role="3cqZAp">
                        <node concept="2OqwBi" id="3vyG44AvweA" role="3clFbG">
                          <node concept="37vLTw" id="3vyG44AvvEk" role="2Oq$k0">
                            <ref role="3cqZAo" node="3vyG44AvsFM" resolve="myConnectionsSelection" />
                          </node>
                          <node concept="liA8E" id="3vyG44AvFqM" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Set.clear()" resolve="clear" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="4y$DvIYlYJF" role="3cqZAp">
                        <node concept="2OqwBi" id="4y$DvIYlZ0F" role="3clFbG">
                          <node concept="37vLTw" id="4y$DvIYlYJD" role="2Oq$k0">
                            <ref role="3cqZAo" node="4y$DvIYlJ$T" resolve="mySceneFocus" />
                          </node>
                          <node concept="liA8E" id="4y$DvIYm1kh" role="2OqNvi">
                            <ref role="37wK5l" to="rvgs:4y$DvIXWgRe" resolve="clearFocus" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="5MmYuOgYbl6" role="3cqZAp">
                        <node concept="37vLTI" id="5MmYuOgYbKB" role="3clFbG">
                          <node concept="3clFbT" id="5MmYuOgYbWZ" role="37vLTx">
                            <property role="3clFbU" value="true" />
                          </node>
                          <node concept="37vLTw" id="5MmYuOgYbl4" role="37vLTJ">
                            <ref role="3cqZAo" node="5MmYuOgY84r" resolve="focusCleared" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1Wc70l" id="5MmYuOgYa6O" role="3clFbw">
                      <node concept="3fqX7Q" id="5MmYuOgYaNG" role="3uHU7B">
                        <node concept="37vLTw" id="5MmYuOgYb03" role="3fr31v">
                          <ref role="3cqZAo" node="5MmYuOgY84r" resolve="focusCleared" />
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="5MmYuOgY8QV" role="3uHU7w">
                        <node concept="2OqwBi" id="5MmYuOgY8QW" role="3fr31v">
                          <node concept="2OqwBi" id="5MmYuOgY8QX" role="2Oq$k0">
                            <node concept="37vLTw" id="5MmYuOgY8QY" role="2Oq$k0">
                              <ref role="3cqZAo" node="17nGqbJBWSn" resolve="event" />
                            </node>
                            <node concept="2OwXpG" id="5MmYuOgY8QZ" role="2OqNvi">
                              <ref role="2Oxat5" to="3bo0:3vyG44AuReH" resolve="data" />
                            </node>
                          </node>
                          <node concept="2OwXpG" id="5MmYuOgY8R0" role="2OqNvi">
                            <ref role="2Oxat5" to="3bo0:3vyG44AulJH" resolve="metaDown" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="3vyG44AxHrr" role="3cqZAp">
                    <node concept="3clFbS" id="3vyG44AxHrt" role="3clFbx">
                      <node concept="3clFbF" id="3vyG44Ay1WH" role="3cqZAp">
                        <node concept="2OqwBi" id="3vyG44Ay1WI" role="3clFbG">
                          <node concept="37vLTw" id="3vyG44Ay1WJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="3vyG44AvsFM" resolve="myConnectionsSelection" />
                          </node>
                          <node concept="liA8E" id="3vyG44Ay1WK" role="2OqNvi">
                            <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object)" resolve="remove" />
                            <node concept="2OqwBi" id="1gL472DHdLy" role="37wK5m">
                              <node concept="2GrUjf" id="1gL472DHdLz" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="4ZaR9mNmIAF" resolve="connection" />
                              </node>
                              <node concept="3AY5_j" id="1gL472DHdL$" role="2OqNvi" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3vyG44AxKU7" role="3clFbw">
                      <node concept="37vLTw" id="3vyG44AxJKL" role="2Oq$k0">
                        <ref role="3cqZAo" node="3vyG44AvsFM" resolve="myConnectionsSelection" />
                      </node>
                      <node concept="liA8E" id="3vyG44AxZED" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                        <node concept="2OqwBi" id="1gL472DGnyz" role="37wK5m">
                          <node concept="2GrUjf" id="3vyG44AxZUR" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="4ZaR9mNmIAF" resolve="connection" />
                          </node>
                          <node concept="3AY5_j" id="1gL472DHdgi" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="3vyG44Ay0fA" role="9aQIa">
                      <node concept="3clFbS" id="3vyG44Ay0fB" role="9aQI4">
                        <node concept="3clFbF" id="3vyG44AvQV9" role="3cqZAp">
                          <node concept="2OqwBi" id="3vyG44AvR7p" role="3clFbG">
                            <node concept="37vLTw" id="3vyG44AwyIp" role="2Oq$k0">
                              <ref role="3cqZAo" node="3vyG44AvsFM" resolve="myConnectionsSelection" />
                            </node>
                            <node concept="liA8E" id="3vyG44AwzDJ" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                              <node concept="2OqwBi" id="1gL472DHeig" role="37wK5m">
                                <node concept="2GrUjf" id="1gL472DHeih" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="4ZaR9mNmIAF" resolve="connection" />
                                </node>
                                <node concept="3AY5_j" id="1gL472DHeii" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="4y$DvIYm22i" role="3cqZAp">
                          <node concept="2OqwBi" id="4y$DvIYm2FO" role="3clFbG">
                            <node concept="37vLTw" id="4y$DvIYm22g" role="2Oq$k0">
                              <ref role="3cqZAo" node="4y$DvIYlJ$T" resolve="mySceneFocus" />
                            </node>
                            <node concept="liA8E" id="4y$DvIYm524" role="2OqNvi">
                              <ref role="37wK5l" to="rvgs:4y$DvIXWfTe" resolve="addFocus" />
                              <node concept="37vLTw" id="4y$DvIYmBVg" role="37wK5m">
                                <ref role="3cqZAo" node="4y$DvIYmj6g" resolve="myFocusHandle" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5MmYuOgGLRi" role="3cqZAp">
                    <node concept="2OqwBi" id="5MmYuOgGM_W" role="3clFbG">
                      <node concept="37vLTw" id="5MmYuOgGLRg" role="2Oq$k0">
                        <ref role="3cqZAo" node="17nGqbJBWSn" resolve="event" />
                      </node>
                      <node concept="liA8E" id="5MmYuOgGMUP" role="2OqNvi">
                        <ref role="37wK5l" to="3bo0:3vyG44AuRfq" resolve="consume" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="5MmYuOgGNCM" role="3cqZAp">
                    <node concept="2OqwBi" id="5MmYuOgGOm6" role="3clFbG">
                      <node concept="37vLTw" id="5MmYuOgGNCK" role="2Oq$k0">
                        <ref role="3cqZAo" node="7_KjZP9hsMT" resolve="myScene" />
                      </node>
                      <node concept="liA8E" id="5MmYuOgGQI9" role="2OqNvi">
                        <ref role="37wK5l" to="3bo0:6tmlia_MTZ4" resolve="fireRepaint" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3vyG44AuVRn" role="3clFbw">
                  <node concept="2OqwBi" id="1gL472DFtNV" role="2Oq$k0">
                    <node concept="37vLTw" id="1iOpS25nBaf" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iOpS25nBab" resolve="entry" />
                    </node>
                    <node concept="2OwXpG" id="1gL472DGiVH" role="2OqNvi">
                      <ref role="2Oxat5" node="7_KjZP9f9dA" resolve="myController" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3vyG44Avqas" role="2OqNvi">
                    <ref role="37wK5l" node="3vyG44AuXDd" resolve="isSelectableAt" />
                    <node concept="2OqwBi" id="1iOpS25nErS" role="37wK5m">
                      <node concept="37vLTw" id="1iOpS25nErT" role="2Oq$k0">
                        <ref role="3cqZAo" node="1iOpS25nBab" resolve="entry" />
                      </node>
                      <node concept="2OwXpG" id="1iOpS25nErU" role="2OqNvi">
                        <ref role="2Oxat5" node="7_KjZP9f7KU" resolve="myModelPath" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3vyG44AvGAp" role="37wK5m">
                      <node concept="2OqwBi" id="3vyG44AvFVI" role="2Oq$k0">
                        <node concept="37vLTw" id="3vyG44AvF$f" role="2Oq$k0">
                          <ref role="3cqZAo" node="17nGqbJBWSn" resolve="event" />
                        </node>
                        <node concept="2OwXpG" id="3vyG44AvGlo" role="2OqNvi">
                          <ref role="2Oxat5" to="3bo0:3vyG44AuReH" resolve="data" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="3vyG44AvIuT" role="2OqNvi">
                        <ref role="2Oxat5" to="3bo0:3vyG44AulJ$" resolve="x" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3vyG44AvKTS" role="37wK5m">
                      <node concept="2OqwBi" id="3vyG44AvK7b" role="2Oq$k0">
                        <node concept="37vLTw" id="3vyG44AvJzA" role="2Oq$k0">
                          <ref role="3cqZAo" node="17nGqbJBWSn" resolve="event" />
                        </node>
                        <node concept="2OwXpG" id="3vyG44AvKzt" role="2OqNvi">
                          <ref role="2Oxat5" to="3bo0:3vyG44AuReH" resolve="data" />
                        </node>
                      </node>
                      <node concept="2OwXpG" id="3vyG44AvN0W" role="2OqNvi">
                        <ref role="2Oxat5" to="3bo0:3vyG44AulJB" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="17nGqbJBWSq" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJC6YJ" role="jymVt" />
    <node concept="312cEu" id="38k27IRup2H" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyCellProvider" />
      <node concept="2tJIrI" id="38k27IRuBsx" role="jymVt" />
      <node concept="2tJIrI" id="38k27IRuBsz" role="jymVt" />
      <node concept="3clFb_" id="38k27IRuBD_" role="jymVt">
        <property role="TrG5h" value="getCells" />
        <node concept="3Tm1VV" id="38k27IRuBDB" role="1B3o_S" />
        <node concept="3uibUv" id="38k27IRuBDC" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="38k27IRuBDD" role="11_B2D">
            <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
          </node>
        </node>
        <node concept="3clFbS" id="38k27IRuBDE" role="3clF47">
          <node concept="3cpWs8" id="17nGqbJ_r0p" role="3cqZAp">
            <node concept="3cpWsn" id="17nGqbJ_r0l" role="3cpWs9">
              <property role="TrG5h" value="cells" />
              <node concept="3uibUv" id="17nGqbJ_r0X" role="1tU5fm">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="17nGqbJ_r0Y" role="11_B2D">
                  <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
                </node>
              </node>
              <node concept="2ShNRf" id="17nGqbJ_r9N" role="33vP2m">
                <node concept="1pGfFk" id="17nGqbJ_rG8" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                  <node concept="3uibUv" id="17nGqbJ_VAp" role="1pMfVU">
                    <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="17nGqbJ_qUo" role="3cqZAp">
            <node concept="2GrKxI" id="17nGqbJ_qUp" role="2Gsz3X">
              <property role="TrG5h" value="connection" />
            </node>
            <node concept="37vLTw" id="38k27IRuUZe" role="2GsD0m">
              <ref role="3cqZAo" node="7sG$k3BRVVR" resolve="myConnections" />
            </node>
            <node concept="3clFbS" id="17nGqbJ_qUr" role="2LFqv$">
              <node concept="3cpWs8" id="17nGqbJ_M5E" role="3cqZAp">
                <node concept="3cpWsn" id="17nGqbJ_M5F" role="3cpWs9">
                  <property role="TrG5h" value="cell" />
                  <node concept="3uibUv" id="17nGqbJ_M5y" role="1tU5fm">
                    <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
                  </node>
                  <node concept="2OqwBi" id="4O0ojQpBwLx" role="33vP2m">
                    <node concept="2OqwBi" id="4O0ojQpBdhh" role="2Oq$k0">
                      <node concept="2OqwBi" id="17nGqbJ_M5G" role="2Oq$k0">
                        <node concept="2GrUjf" id="17nGqbJ_M5H" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="17nGqbJ_qUp" resolve="connection" />
                        </node>
                        <node concept="3AV6Ez" id="4O0ojQp$IMJ" role="2OqNvi" />
                      </node>
                      <node concept="2OwXpG" id="38k27IRw6_d" role="2OqNvi">
                        <ref role="2Oxat5" node="7_KjZP9f9dA" resolve="myController" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4O0ojQpBxGE" role="2OqNvi">
                      <ref role="37wK5l" node="17nGqbJz_fg" resolve="getConnectionCell" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="38k27IRweob" role="3cqZAp">
                <node concept="3clFbS" id="38k27IRweod" role="3clFbx">
                  <node concept="3clFbF" id="17nGqbJ_T9t" role="3cqZAp">
                    <node concept="2OqwBi" id="17nGqbJ_TII" role="3clFbG">
                      <node concept="37vLTw" id="17nGqbJ_T9o" role="2Oq$k0">
                        <ref role="3cqZAo" node="17nGqbJ_r0l" resolve="cells" />
                      </node>
                      <node concept="liA8E" id="17nGqbJ_Ujf" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                        <node concept="37vLTw" id="17nGqbJ_UzM" role="37wK5m">
                          <ref role="3cqZAo" node="17nGqbJ_M5F" resolve="cell" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="38k27IRwpL4" role="3clFbw">
                  <node concept="37vLTw" id="38k27IRweFP" role="3uHU7B">
                    <ref role="3cqZAo" node="17nGqbJ_M5F" resolve="cell" />
                  </node>
                  <node concept="10Nm6u" id="38k27IRwphW" role="3uHU7w" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="17nGqbJ_V0e" role="3cqZAp">
            <node concept="37vLTw" id="17nGqbJ_Viv" role="3cqZAk">
              <ref role="3cqZAo" node="17nGqbJ_r0l" resolve="cells" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="38k27IRuBDF" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="38k27IRuiaB" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRuxW1" role="EKbjA">
        <ref role="3uigEE" to="3bo0:17nGqbJd3sJ" resolve="EditorCellProvider" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRuam8" role="jymVt" />
    <node concept="312cEu" id="17nGqbJCfzd" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyDragListener" />
      <node concept="2tJIrI" id="17nGqbJClX_" role="jymVt" />
      <node concept="3Tm6S6" id="17nGqbJCcFR" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJCiJH" role="EKbjA">
        <ref role="3uigEE" to="3bo0:17nGqbJcVM0" resolve="DragEventListener" />
      </node>
      <node concept="3clFb_" id="17nGqbJClsx" role="jymVt">
        <property role="TrG5h" value="onDragStarted" />
        <node concept="3Tm1VV" id="17nGqbJClsz" role="1B3o_S" />
        <node concept="3cqZAl" id="17nGqbJCls$" role="3clF45" />
        <node concept="37vLTG" id="17nGqbJCls_" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="3uibUv" id="17nGqbJClsA" role="1tU5fm">
            <ref role="3uigEE" to="3bo0:1KCfUoKRUJj" resolve="DragEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="17nGqbJClsB" role="3clF47">
          <node concept="3cpWs8" id="7_KjZP9mK0T" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9mK0U" role="3cpWs9">
              <property role="TrG5h" value="x" />
              <node concept="10Oyi0" id="7_KjZP9mK0N" role="1tU5fm" />
              <node concept="2OqwBi" id="7_KjZP9mK0V" role="33vP2m">
                <node concept="2OqwBi" id="7_KjZP9mK0W" role="2Oq$k0">
                  <node concept="37vLTw" id="7_KjZP9mK0X" role="2Oq$k0">
                    <ref role="3cqZAo" node="17nGqbJCls_" resolve="event" />
                  </node>
                  <node concept="2OwXpG" id="7_KjZP9mK0Y" role="2OqNvi">
                    <ref role="2Oxat5" to="3bo0:3vyG44AuBRH" resolve="data" />
                  </node>
                </node>
                <node concept="2OwXpG" id="7_KjZP9mK0Z" role="2OqNvi">
                  <ref role="2Oxat5" to="3bo0:3vyG44AulJ$" resolve="x" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7_KjZP9mKkK" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9mKkL" role="3cpWs9">
              <property role="TrG5h" value="y" />
              <node concept="10Oyi0" id="7_KjZP9mKkF" role="1tU5fm" />
              <node concept="2OqwBi" id="7_KjZP9mKkM" role="33vP2m">
                <node concept="2OqwBi" id="7_KjZP9mKkN" role="2Oq$k0">
                  <node concept="37vLTw" id="7_KjZP9mKkO" role="2Oq$k0">
                    <ref role="3cqZAo" node="17nGqbJCls_" resolve="event" />
                  </node>
                  <node concept="2OwXpG" id="7_KjZP9mKkP" role="2OqNvi">
                    <ref role="2Oxat5" to="3bo0:3vyG44AuBRH" resolve="data" />
                  </node>
                </node>
                <node concept="2OwXpG" id="7_KjZP9mKkQ" role="2OqNvi">
                  <ref role="2Oxat5" to="3bo0:3vyG44AulJB" resolve="y" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="3vyG44AtLQY" role="3cqZAp">
            <node concept="2GrKxI" id="3vyG44AtLQZ" role="2Gsz3X">
              <property role="TrG5h" value="connection" />
            </node>
            <node concept="3clFbS" id="3vyG44AtLR1" role="2LFqv$">
              <node concept="3cpWs8" id="1iOpS25n7lo" role="3cqZAp">
                <node concept="3cpWsn" id="1iOpS25n7lp" role="3cpWs9">
                  <property role="TrG5h" value="entry" />
                  <node concept="3uibUv" id="1iOpS25n7gV" role="1tU5fm">
                    <ref role="3uigEE" node="7_KjZP9d656" resolve="ConnectionEntry" />
                    <node concept="16syzq" id="1iOpS25n7h7" role="11_B2D">
                      <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25n7h8" role="11_B2D">
                      <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25n7ha" role="11_B2D">
                      <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25n7h6" role="11_B2D">
                      <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
                    </node>
                    <node concept="16syzq" id="1iOpS25n7h9" role="11_B2D">
                      <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1iOpS25n7lq" role="33vP2m">
                    <node concept="2GrUjf" id="1iOpS25n7lr" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3vyG44AtLQZ" resolve="connection" />
                    </node>
                    <node concept="3AV6Ez" id="1iOpS25n7ls" role="2OqNvi" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7_KjZP9muRI" role="3cqZAp">
                <node concept="3cpWsn" id="7_KjZP9muRJ" role="3cpWs9">
                  <property role="TrG5h" value="controller" />
                  <node concept="3uibUv" id="7_KjZP9muQy" role="1tU5fm">
                    <ref role="3uigEE" node="7sG$k3BBij3" resolve="ConnectionController" />
                    <node concept="16syzq" id="7_KjZP9n7fv" role="11_B2D">
                      <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
                    </node>
                    <node concept="16syzq" id="7_KjZP9n7CW" role="11_B2D">
                      <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7_KjZP9muRK" role="33vP2m">
                    <node concept="37vLTw" id="1iOpS25n7lt" role="2Oq$k0">
                      <ref role="3cqZAo" node="1iOpS25n7lp" resolve="entry" />
                    </node>
                    <node concept="2OwXpG" id="7_KjZP9muRO" role="2OqNvi">
                      <ref role="2Oxat5" node="7_KjZP9f9dA" resolve="myController" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7_KjZP9ndNm" role="3cqZAp">
                <node concept="3cpWsn" id="7_KjZP9ndNn" role="3cpWs9">
                  <property role="TrG5h" value="pathTransformation" />
                  <node concept="3uibUv" id="7_KjZP9ndN5" role="1tU5fm">
                    <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
                    <node concept="3uibUv" id="7_KjZP9ndNa" role="11_B2D">
                      <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                    </node>
                    <node concept="16syzq" id="7_KjZP9ndNb" role="11_B2D">
                      <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7_KjZP9ndNo" role="33vP2m">
                    <node concept="37vLTw" id="7_KjZP9ndNp" role="2Oq$k0">
                      <ref role="3cqZAo" node="7_KjZP9muRJ" resolve="controller" />
                    </node>
                    <node concept="liA8E" id="7_KjZP9ndNq" role="2OqNvi">
                      <ref role="37wK5l" node="7_KjZP9aQsu" resolve="getEdgeTransformation" />
                      <node concept="2OqwBi" id="1iOpS25n9VB" role="37wK5m">
                        <node concept="37vLTw" id="1iOpS25n8k5" role="2Oq$k0">
                          <ref role="3cqZAo" node="1iOpS25n7lp" resolve="entry" />
                        </node>
                        <node concept="2OwXpG" id="1iOpS25nzYi" role="2OqNvi">
                          <ref role="2Oxat5" node="7_KjZP9f7KU" resolve="myModelPath" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="7_KjZP9ndNr" role="37wK5m">
                        <ref role="3cqZAo" node="7_KjZP9mK0U" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="7_KjZP9ndNs" role="37wK5m">
                        <ref role="3cqZAo" node="7_KjZP9mKkL" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7_KjZP9n9Li" role="3cqZAp">
                <node concept="3clFbS" id="7_KjZP9n9Lj" role="3clFbx">
                  <node concept="3clFbF" id="7_KjZP9n9Lk" role="3cqZAp">
                    <node concept="2OqwBi" id="7_KjZP9n9Ll" role="3clFbG">
                      <node concept="37vLTw" id="7_KjZP9n9Lm" role="2Oq$k0">
                        <ref role="3cqZAo" node="17nGqbJCls_" resolve="event" />
                      </node>
                      <node concept="liA8E" id="7_KjZP9n9Ln" role="2OqNvi">
                        <ref role="37wK5l" to="3bo0:2XwVnrt0l_8" resolve="consume" />
                        <node concept="2ShNRf" id="7_KjZP9n9Lo" role="37wK5m">
                          <node concept="1pGfFk" id="7_KjZP9n9Lp" role="2ShVmc">
                            <ref role="37wK5l" node="7_KjZP9g53r" resolve="ConnectionsFacility.ConnectionPathChangeDragEventHandler" />
                            <node concept="37vLTw" id="7_KjZP9n9Lq" role="37wK5m">
                              <ref role="3cqZAo" node="7_KjZP9mK0U" resolve="x" />
                            </node>
                            <node concept="37vLTw" id="7_KjZP9n9Lr" role="37wK5m">
                              <ref role="3cqZAo" node="7_KjZP9mKkL" resolve="y" />
                            </node>
                            <node concept="37vLTw" id="7_KjZP9nvS$" role="37wK5m">
                              <ref role="3cqZAo" node="7_KjZP9ndNn" resolve="pathTransformation" />
                            </node>
                            <node concept="37vLTw" id="1iOpS25n7lu" role="37wK5m">
                              <ref role="3cqZAo" node="1iOpS25n7lp" resolve="entry" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="7_KjZP9n9Ly" role="3cqZAp" />
                </node>
                <node concept="3y3z36" id="7_KjZP9nuTB" role="3clFbw">
                  <node concept="10Nm6u" id="7_KjZP9nvlT" role="3uHU7w" />
                  <node concept="37vLTw" id="7_KjZP9ndNt" role="3uHU7B">
                    <ref role="3cqZAo" node="7_KjZP9ndNn" resolve="pathTransformation" />
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7_KjZP9lQ6h" role="3cqZAp">
                <node concept="3clFbS" id="7_KjZP9lQ6j" role="3clFbx">
                  <node concept="3clFbF" id="7_KjZP9mA3z" role="3cqZAp">
                    <node concept="2OqwBi" id="7_KjZP9mAfk" role="3clFbG">
                      <node concept="37vLTw" id="7_KjZP9mA3x" role="2Oq$k0">
                        <ref role="3cqZAo" node="17nGqbJCls_" resolve="event" />
                      </node>
                      <node concept="liA8E" id="7_KjZP9mA$q" role="2OqNvi">
                        <ref role="37wK5l" to="3bo0:2XwVnrt0l_8" resolve="consume" />
                        <node concept="2ShNRf" id="7_KjZP9mAE1" role="37wK5m">
                          <node concept="1pGfFk" id="7_KjZP9mBdu" role="2ShVmc">
                            <ref role="37wK5l" node="7_KjZP9j2Yr" resolve="ConnectionsFacility.ConnectionSourceChangeDragEventHandler" />
                            <node concept="37vLTw" id="7_KjZP9mLjU" role="37wK5m">
                              <ref role="3cqZAo" node="7_KjZP9mK0U" resolve="x" />
                            </node>
                            <node concept="37vLTw" id="7_KjZP9mLqV" role="37wK5m">
                              <ref role="3cqZAo" node="7_KjZP9mKkL" resolve="y" />
                            </node>
                            <node concept="2OqwBi" id="7_KjZP9mMni" role="37wK5m">
                              <node concept="37vLTw" id="7_KjZP9mLT0" role="2Oq$k0">
                                <ref role="3cqZAo" node="7_KjZP9muRJ" resolve="controller" />
                              </node>
                              <node concept="liA8E" id="7_KjZP9mMEH" role="2OqNvi">
                                <ref role="37wK5l" node="3vyG44AtJjf" resolve="getSourceTransformation" />
                                <node concept="2OqwBi" id="1iOpS25n$G9" role="37wK5m">
                                  <node concept="37vLTw" id="1iOpS25n$Ga" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1iOpS25n7lp" resolve="entry" />
                                  </node>
                                  <node concept="2OwXpG" id="1iOpS25n$Gb" role="2OqNvi">
                                    <ref role="2Oxat5" node="7_KjZP9f7KU" resolve="myModelPath" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="1iOpS25n7lv" role="37wK5m">
                              <ref role="3cqZAo" node="1iOpS25n7lp" resolve="entry" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="7_KjZP9n8QH" role="3cqZAp" />
                </node>
                <node concept="2OqwBi" id="7_KjZP9mul4" role="3clFbw">
                  <node concept="37vLTw" id="7_KjZP9muRP" role="2Oq$k0">
                    <ref role="3cqZAo" node="7_KjZP9muRJ" resolve="controller" />
                  </node>
                  <node concept="liA8E" id="7_KjZP9mvbA" role="2OqNvi">
                    <ref role="37wK5l" node="7_KjZP9boX4" resolve="isSourceTransformableAt" />
                    <node concept="2OqwBi" id="1iOpS25nAnT" role="37wK5m">
                      <node concept="37vLTw" id="1iOpS25nAnU" role="2Oq$k0">
                        <ref role="3cqZAo" node="1iOpS25n7lp" resolve="entry" />
                      </node>
                      <node concept="2OwXpG" id="1iOpS25nAnV" role="2OqNvi">
                        <ref role="2Oxat5" node="7_KjZP9f7KU" resolve="myModelPath" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7_KjZP9mK10" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP9mK0U" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="7_KjZP9mKkR" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP9mKkL" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7_KjZP9n80i" role="3cqZAp">
                <node concept="3clFbS" id="7_KjZP9n80j" role="3clFbx">
                  <node concept="3clFbF" id="7_KjZP9n80k" role="3cqZAp">
                    <node concept="2OqwBi" id="7_KjZP9n80l" role="3clFbG">
                      <node concept="37vLTw" id="7_KjZP9n80m" role="2Oq$k0">
                        <ref role="3cqZAo" node="17nGqbJCls_" resolve="event" />
                      </node>
                      <node concept="liA8E" id="7_KjZP9n80n" role="2OqNvi">
                        <ref role="37wK5l" to="3bo0:2XwVnrt0l_8" resolve="consume" />
                        <node concept="2ShNRf" id="7_KjZP9n80o" role="37wK5m">
                          <node concept="1pGfFk" id="7_KjZP9n80p" role="2ShVmc">
                            <ref role="37wK5l" node="7_KjZP9lKb_" resolve="ConnectionsFacility.ConnectionTargetChangeDragEventHandler" />
                            <node concept="37vLTw" id="7_KjZP9n80q" role="37wK5m">
                              <ref role="3cqZAo" node="7_KjZP9mK0U" resolve="x" />
                            </node>
                            <node concept="37vLTw" id="7_KjZP9n80r" role="37wK5m">
                              <ref role="3cqZAo" node="7_KjZP9mKkL" resolve="y" />
                            </node>
                            <node concept="2OqwBi" id="7_KjZP9n80s" role="37wK5m">
                              <node concept="37vLTw" id="7_KjZP9n80t" role="2Oq$k0">
                                <ref role="3cqZAo" node="7_KjZP9muRJ" resolve="controller" />
                              </node>
                              <node concept="liA8E" id="7_KjZP9n80u" role="2OqNvi">
                                <ref role="37wK5l" node="7_KjZP9bc40" resolve="getTargetTransformation" />
                                <node concept="2OqwBi" id="1iOpS25n_tO" role="37wK5m">
                                  <node concept="37vLTw" id="1iOpS25n_tP" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1iOpS25n7lp" resolve="entry" />
                                  </node>
                                  <node concept="2OwXpG" id="1iOpS25n_tQ" role="2OqNvi">
                                    <ref role="2Oxat5" node="7_KjZP9f7KU" resolve="myModelPath" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="37vLTw" id="1iOpS25n7lw" role="37wK5m">
                              <ref role="3cqZAo" node="1iOpS25n7lp" resolve="entry" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="7_KjZP9n9vm" role="3cqZAp" />
                </node>
                <node concept="2OqwBi" id="7_KjZP9n80y" role="3clFbw">
                  <node concept="37vLTw" id="7_KjZP9n80z" role="2Oq$k0">
                    <ref role="3cqZAo" node="7_KjZP9muRJ" resolve="controller" />
                  </node>
                  <node concept="liA8E" id="7_KjZP9n80$" role="2OqNvi">
                    <ref role="37wK5l" node="7_KjZP9bpiE" resolve="isTargetTransformableAt" />
                    <node concept="2OqwBi" id="1iOpS25nAgv" role="37wK5m">
                      <node concept="37vLTw" id="1iOpS25nAgw" role="2Oq$k0">
                        <ref role="3cqZAo" node="1iOpS25n7lp" resolve="entry" />
                      </node>
                      <node concept="2OwXpG" id="1iOpS25nAgx" role="2OqNvi">
                        <ref role="2Oxat5" node="7_KjZP9f7KU" resolve="myModelPath" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7_KjZP9n80_" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP9mK0U" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="7_KjZP9n80A" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP9mKkL" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4y$DvIXcKN_" role="2GsD0m">
              <ref role="3cqZAo" node="7sG$k3BRVVR" resolve="myConnections" />
            </node>
          </node>
          <node concept="3cpWs8" id="4O0ojQpDigr" role="3cqZAp">
            <node concept="3cpWsn" id="4O0ojQpDigs" role="3cpWs9">
              <property role="TrG5h" value="port" />
              <node concept="16syzq" id="4O0ojQpDigg" role="1tU5fm">
                <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
              </node>
              <node concept="2OqwBi" id="4O0ojQpDigt" role="33vP2m">
                <node concept="37vLTw" id="4O0ojQpDigu" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                </node>
                <node concept="liA8E" id="4O0ojQpDigv" role="2OqNvi">
                  <ref role="37wK5l" node="7_KjZP9jaQA" resolve="findPort" />
                  <node concept="37vLTw" id="4O0ojQpDigw" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP9mK0U" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="4O0ojQpDigx" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP9mKkL" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4O0ojQpGiYY" role="3cqZAp">
            <node concept="3clFbS" id="4O0ojQpGiZ0" role="3clFbx">
              <node concept="3cpWs8" id="4O0ojQpDDH6" role="3cqZAp">
                <node concept="3cpWsn" id="4O0ojQpDDH7" role="3cpWs9">
                  <property role="TrG5h" value="setting" />
                  <node concept="3uibUv" id="4O0ojQpDDH8" role="1tU5fm">
                    <ref role="3uigEE" node="2JpbWDsQSwS" resolve="PortController" />
                  </node>
                  <node concept="2OqwBi" id="4O0ojQpDEur" role="33vP2m">
                    <node concept="37vLTw" id="4O0ojQpDEgi" role="2Oq$k0">
                      <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                    </node>
                    <node concept="liA8E" id="4O0ojQpDEL4" role="2OqNvi">
                      <ref role="37wK5l" node="3vyG44Arcu2" resolve="getPortController" />
                      <node concept="37vLTw" id="4O0ojQpDFzE" role="37wK5m">
                        <ref role="3cqZAo" node="4O0ojQpDigs" resolve="port" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4O0ojQpDjSh" role="3cqZAp">
                <node concept="3clFbS" id="4O0ojQpDjSj" role="3clFbx">
                  <node concept="3clFbF" id="4O0ojQpGqrx" role="3cqZAp">
                    <node concept="2OqwBi" id="4O0ojQpGq_H" role="3clFbG">
                      <node concept="37vLTw" id="4O0ojQpGqrv" role="2Oq$k0">
                        <ref role="3cqZAo" node="17nGqbJCls_" resolve="event" />
                      </node>
                      <node concept="liA8E" id="4O0ojQpGqVC" role="2OqNvi">
                        <ref role="37wK5l" to="3bo0:2XwVnrt0l_8" resolve="consume" />
                        <node concept="2ShNRf" id="4O0ojQpGr1q" role="37wK5m">
                          <node concept="1pGfFk" id="4O0ojQpGrk7" role="2ShVmc">
                            <ref role="37wK5l" node="4O0ojQpDIfJ" resolve="ConnectionsFacility.NewConnectionFromSourceDragEventHandler" />
                            <node concept="37vLTw" id="4O0ojQpGruk" role="37wK5m">
                              <ref role="3cqZAo" node="4O0ojQpDigs" resolve="port" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4O0ojQpDGwa" role="3clFbw">
                  <node concept="37vLTw" id="4O0ojQpDFZ1" role="2Oq$k0">
                    <ref role="3cqZAo" node="4O0ojQpDDH7" resolve="setting" />
                  </node>
                  <node concept="liA8E" id="4O0ojQpDGVm" role="2OqNvi">
                    <ref role="37wK5l" node="1KCfUoKSijC" resolve="canBeSourcedAt" />
                    <node concept="37vLTw" id="4O0ojQpDH24" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP9mK0U" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="4O0ojQpDHre" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP9mKkL" resolve="y" />
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="4O0ojQpGr_0" role="3eNLev">
                  <node concept="3clFbS" id="4O0ojQpGr_2" role="3eOfB_">
                    <node concept="3clFbF" id="4O0ojQpGs7b" role="3cqZAp">
                      <node concept="2OqwBi" id="4O0ojQpGs7c" role="3clFbG">
                        <node concept="37vLTw" id="4O0ojQpGs7d" role="2Oq$k0">
                          <ref role="3cqZAo" node="17nGqbJCls_" resolve="event" />
                        </node>
                        <node concept="liA8E" id="4O0ojQpGs7e" role="2OqNvi">
                          <ref role="37wK5l" to="3bo0:2XwVnrt0l_8" resolve="consume" />
                          <node concept="2ShNRf" id="4O0ojQpGs7f" role="37wK5m">
                            <node concept="1pGfFk" id="4O0ojQpGs7g" role="2ShVmc">
                              <ref role="37wK5l" node="4O0ojQpFSki" resolve="ConnectionsFacility.NewConnectionFromTargetDragEventHandler" />
                              <node concept="37vLTw" id="4O0ojQpGs7h" role="37wK5m">
                                <ref role="3cqZAo" node="4O0ojQpDigs" resolve="port" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4O0ojQpGrY2" role="3eO9$A">
                    <node concept="37vLTw" id="4O0ojQpGrY3" role="2Oq$k0">
                      <ref role="3cqZAo" node="4O0ojQpDDH7" resolve="setting" />
                    </node>
                    <node concept="liA8E" id="4O0ojQpGrY4" role="2OqNvi">
                      <ref role="37wK5l" node="1KCfUoKSE03" resolve="canBeTargetedAt" />
                      <node concept="37vLTw" id="4O0ojQpGrY5" role="37wK5m">
                        <ref role="3cqZAo" node="7_KjZP9mK0U" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="4O0ojQpGrY6" role="37wK5m">
                        <ref role="3cqZAo" node="7_KjZP9mKkL" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="4O0ojQpGovX" role="3clFbw">
              <node concept="10Nm6u" id="4O0ojQpGoUT" role="3uHU7w" />
              <node concept="37vLTw" id="4O0ojQpGjrQ" role="3uHU7B">
                <ref role="3cqZAo" node="4O0ojQpDigs" resolve="port" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="17nGqbJClsC" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7_KjZP9d1sj" role="jymVt" />
    <node concept="2tJIrI" id="4O0ojQpDHvi" role="jymVt" />
    <node concept="312cEu" id="4O0ojQpDIf_" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="NewConnectionFromSourceDragEventHandler" />
      <node concept="312cEg" id="4O0ojQpFhpY" role="jymVt">
        <property role="TrG5h" value="mySource" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="4O0ojQpFgJM" role="1B3o_S" />
        <node concept="16syzq" id="4O0ojQpFCVL" role="1tU5fm">
          <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
        </node>
      </node>
      <node concept="312cEg" id="4O0ojQpFEO5" role="jymVt">
        <property role="TrG5h" value="mySourceLocation" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="4O0ojQpFE7H" role="1B3o_S" />
        <node concept="3uibUv" id="4O0ojQpFEJ_" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="2tJIrI" id="4O0ojQpFgb8" role="jymVt" />
      <node concept="3clFbW" id="4O0ojQpDIfJ" role="jymVt">
        <node concept="3cqZAl" id="4O0ojQpDIfK" role="3clF45" />
        <node concept="3Tm6S6" id="4O0ojQpDIfL" role="1B3o_S" />
        <node concept="3clFbS" id="4O0ojQpDIfM" role="3clF47">
          <node concept="3clFbF" id="4O0ojQpFidu" role="3cqZAp">
            <node concept="37vLTI" id="4O0ojQpFjJa" role="3clFbG">
              <node concept="37vLTw" id="4O0ojQpFids" role="37vLTJ">
                <ref role="3cqZAo" node="4O0ojQpFhpY" resolve="mySource" />
              </node>
              <node concept="37vLTw" id="4O0ojQpFH1X" role="37vLTx">
                <ref role="3cqZAo" node="4O0ojQpFCeg" resolve="source" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4O0ojQpFHLW" role="3cqZAp">
            <node concept="37vLTI" id="4O0ojQpFI7j" role="3clFbG">
              <node concept="2OqwBi" id="4O0ojQpFJHj" role="37vLTx">
                <node concept="2OqwBi" id="4O0ojQpFIRX" role="2Oq$k0">
                  <node concept="37vLTw" id="4O0ojQpFI_n" role="2Oq$k0">
                    <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                  </node>
                  <node concept="liA8E" id="4O0ojQpFJht" role="2OqNvi">
                    <ref role="37wK5l" node="3vyG44Arcu2" resolve="getPortController" />
                    <node concept="37vLTw" id="4O0ojQpFJyS" role="37wK5m">
                      <ref role="3cqZAo" node="4O0ojQpFCeg" resolve="source" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4O0ojQpFK7b" role="2OqNvi">
                  <ref role="37wK5l" node="1iOpS255UuU" resolve="getModelEndpointPosition" />
                </node>
              </node>
              <node concept="37vLTw" id="4O0ojQpFHLU" role="37vLTJ">
                <ref role="3cqZAo" node="4O0ojQpFEO5" resolve="mySourceLocation" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4O0ojQpDIfV" role="3cqZAp">
            <node concept="1rXfSq" id="4O0ojQpDIfW" role="3clFbG">
              <ref role="37wK5l" node="4O0ojQpDIga" resolve="dragTo" />
              <node concept="2OqwBi" id="4O0ojQpFKL4" role="37wK5m">
                <node concept="37vLTw" id="4O0ojQpFKl8" role="2Oq$k0">
                  <ref role="3cqZAo" node="4O0ojQpFEO5" resolve="mySourceLocation" />
                </node>
                <node concept="2OwXpG" id="4O0ojQpFL6x" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="4O0ojQpFLeQ" role="37wK5m">
                <node concept="37vLTw" id="4O0ojQpFLeR" role="2Oq$k0">
                  <ref role="3cqZAo" node="4O0ojQpFEO5" resolve="mySourceLocation" />
                </node>
                <node concept="2OwXpG" id="4O0ojQpFQiv" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4O0ojQpFCeg" role="3clF46">
          <property role="TrG5h" value="source" />
          <node concept="16syzq" id="4O0ojQpFCox" role="1tU5fm">
            <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4O0ojQpDIg9" role="jymVt" />
      <node concept="3clFb_" id="4O0ojQpDIga" role="jymVt">
        <property role="TrG5h" value="dragTo" />
        <node concept="3Tm1VV" id="4O0ojQpDIgb" role="1B3o_S" />
        <node concept="3cqZAl" id="4O0ojQpDIgc" role="3clF45" />
        <node concept="37vLTG" id="4O0ojQpDIgd" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="4O0ojQpDIge" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="4O0ojQpDIgf" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="4O0ojQpDIgg" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="4O0ojQpDIgh" role="3clF47">
          <node concept="3cpWs8" id="4O0ojQpDIgi" role="3cqZAp">
            <node concept="3cpWsn" id="4O0ojQpDIgj" role="3cpWs9">
              <property role="TrG5h" value="port" />
              <node concept="16syzq" id="4O0ojQpDIgk" role="1tU5fm">
                <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
              </node>
              <node concept="2OqwBi" id="4O0ojQpDIgl" role="33vP2m">
                <node concept="37vLTw" id="4O0ojQpDIgm" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                </node>
                <node concept="liA8E" id="4O0ojQpDIgn" role="2OqNvi">
                  <ref role="37wK5l" node="7_KjZP9jaQA" resolve="findPort" />
                  <node concept="37vLTw" id="4O0ojQpDIgo" role="37wK5m">
                    <ref role="3cqZAo" node="4O0ojQpDIgd" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="4O0ojQpDIgp" role="37wK5m">
                    <ref role="3cqZAo" node="4O0ojQpDIgf" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4O0ojQpDIgx" role="3cqZAp">
            <node concept="3cpWsn" id="4O0ojQpDIgy" role="3cpWs9">
              <property role="TrG5h" value="target" />
              <node concept="3uibUv" id="4O0ojQpDIgz" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4O0ojQpDIgq" role="3cqZAp">
            <node concept="3cpWsn" id="4O0ojQpDIgr" role="3cpWs9">
              <property role="TrG5h" value="portSettings" />
              <node concept="3uibUv" id="4O0ojQpDIgs" role="1tU5fm">
                <ref role="3uigEE" node="2JpbWDsQSwS" resolve="PortController" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4O0ojQpDIg$" role="3cqZAp">
            <node concept="3clFbS" id="4O0ojQpDIg_" role="3clFbx">
              <node concept="3clFbF" id="4O0ojQpDIgA" role="3cqZAp">
                <node concept="37vLTI" id="4O0ojQpDIgB" role="3clFbG">
                  <node concept="2OqwBi" id="4O0ojQpDIgC" role="37vLTx">
                    <node concept="37vLTw" id="4O0ojQpDIgD" role="2Oq$k0">
                      <ref role="3cqZAo" node="4O0ojQpDIgr" resolve="portSettings" />
                    </node>
                    <node concept="liA8E" id="4O0ojQpDIgE" role="2OqNvi">
                      <ref role="37wK5l" node="1iOpS255UuU" resolve="getModelEndpointPosition" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4O0ojQpDIgF" role="37vLTJ">
                    <ref role="3cqZAo" node="4O0ojQpDIgy" resolve="target" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="4O0ojQpX53p" role="3clFbw">
              <node concept="1Wc70l" id="4O0ojQpX5x9" role="3uHU7B">
                <node concept="3y3z36" id="4O0ojQpX5Y_" role="3uHU7B">
                  <node concept="10Nm6u" id="4O0ojQpX6aq" role="3uHU7w" />
                  <node concept="37vLTw" id="4O0ojQpX5IX" role="3uHU7B">
                    <ref role="3cqZAo" node="4O0ojQpDIgj" resolve="port" />
                  </node>
                </node>
                <node concept="3y3z36" id="4O0ojQpX3Wv" role="3uHU7w">
                  <node concept="10Nm6u" id="4O0ojQpX4b1" role="3uHU7w" />
                  <node concept="1eOMI4" id="4O0ojQpX3jn" role="3uHU7B">
                    <node concept="37vLTI" id="4O0ojQpX3qy" role="1eOMHV">
                      <node concept="2OqwBi" id="4O0ojQpX3qz" role="37vLTx">
                        <node concept="37vLTw" id="4O0ojQpX3q$" role="2Oq$k0">
                          <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                        </node>
                        <node concept="liA8E" id="4O0ojQpX3q_" role="2OqNvi">
                          <ref role="37wK5l" node="3vyG44Arcu2" resolve="getPortController" />
                          <node concept="37vLTw" id="4O0ojQpX3qA" role="37wK5m">
                            <ref role="3cqZAo" node="4O0ojQpDIgj" resolve="port" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="4O0ojQpX3qB" role="37vLTJ">
                        <ref role="3cqZAo" node="4O0ojQpDIgr" resolve="portSettings" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4O0ojQpDIgG" role="3uHU7w">
                <node concept="37vLTw" id="4O0ojQpDIgH" role="2Oq$k0">
                  <ref role="3cqZAo" node="4O0ojQpDIgr" resolve="portSettings" />
                </node>
                <node concept="liA8E" id="4O0ojQpDIgI" role="2OqNvi">
                  <ref role="37wK5l" node="1KCfUoKSE03" resolve="canBeTargetedAt" />
                  <node concept="37vLTw" id="4O0ojQpDIgJ" role="37wK5m">
                    <ref role="3cqZAo" node="4O0ojQpDIgd" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="4O0ojQpDIgK" role="37wK5m">
                    <ref role="3cqZAo" node="4O0ojQpDIgf" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="4O0ojQpDIgL" role="9aQIa">
              <node concept="3clFbS" id="4O0ojQpDIgM" role="9aQI4">
                <node concept="3clFbF" id="4O0ojQpDIgN" role="3cqZAp">
                  <node concept="37vLTI" id="4O0ojQpDIgO" role="3clFbG">
                    <node concept="37vLTw" id="4O0ojQpDIgP" role="37vLTJ">
                      <ref role="3cqZAo" node="4O0ojQpDIgy" resolve="target" />
                    </node>
                    <node concept="2ShNRf" id="4O0ojQpDIgQ" role="37vLTx">
                      <node concept="1pGfFk" id="4O0ojQpDIgR" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                        <node concept="37vLTw" id="4O0ojQpDIgS" role="37wK5m">
                          <ref role="3cqZAo" node="4O0ojQpDIgd" resolve="x" />
                        </node>
                        <node concept="37vLTw" id="4O0ojQpDIgT" role="37wK5m">
                          <ref role="3cqZAo" node="4O0ojQpDIgf" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4O0ojQpDIgU" role="3cqZAp">
            <node concept="37vLTI" id="4O0ojQpDIgV" role="3clFbG">
              <node concept="2OqwBi" id="4O0ojQpDIgW" role="37vLTx">
                <node concept="37vLTw" id="4O0ojQpFkMC" role="2Oq$k0">
                  <ref role="3cqZAo" node="4O0ojQpD31Y" resolve="myNewPathFactory" />
                </node>
                <node concept="liA8E" id="4O0ojQpDIgY" role="2OqNvi">
                  <ref role="37wK5l" to="82uw:~BiFunction.apply(java.lang.Object,java.lang.Object)" resolve="apply" />
                  <node concept="37vLTw" id="4O0ojQpFHyG" role="37wK5m">
                    <ref role="3cqZAo" node="4O0ojQpFEO5" resolve="mySourceLocation" />
                  </node>
                  <node concept="37vLTw" id="4O0ojQpDIgZ" role="37wK5m">
                    <ref role="3cqZAo" node="4O0ojQpDIgy" resolve="target" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="4O0ojQpFfNN" role="37vLTJ">
                <ref role="3cqZAo" node="4O0ojQpE9Ft" resolve="myNewConnectionPath" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4O0ojQpDIh5" role="3cqZAp">
            <node concept="2OqwBi" id="4O0ojQpDIh6" role="3clFbG">
              <node concept="37vLTw" id="4O0ojQpDIh7" role="2Oq$k0">
                <ref role="3cqZAo" node="7_KjZP9hsMT" resolve="myScene" />
              </node>
              <node concept="liA8E" id="4O0ojQpDIh8" role="2OqNvi">
                <ref role="37wK5l" to="3bo0:6tmlia_MTZ4" resolve="fireRepaint" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpDIh9" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4O0ojQpDIha" role="jymVt" />
      <node concept="3clFb_" id="4O0ojQpDIhb" role="jymVt">
        <property role="TrG5h" value="completeAt" />
        <node concept="3Tm1VV" id="4O0ojQpDIhc" role="1B3o_S" />
        <node concept="3cqZAl" id="4O0ojQpDIhd" role="3clF45" />
        <node concept="37vLTG" id="4O0ojQpDIhe" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="4O0ojQpDIhf" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="4O0ojQpDIhg" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="4O0ojQpDIhh" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="4O0ojQpDIhi" role="3clF47">
          <node concept="3cpWs8" id="4O0ojQpDIhj" role="3cqZAp">
            <node concept="3cpWsn" id="4O0ojQpDIhk" role="3cpWs9">
              <property role="TrG5h" value="target" />
              <node concept="16syzq" id="4O0ojQpDIhl" role="1tU5fm">
                <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
              </node>
              <node concept="2OqwBi" id="4O0ojQpDIhm" role="33vP2m">
                <node concept="37vLTw" id="4O0ojQpDIhn" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                </node>
                <node concept="liA8E" id="4O0ojQpDIho" role="2OqNvi">
                  <ref role="37wK5l" node="7_KjZP9jaQA" resolve="findPort" />
                  <node concept="37vLTw" id="4O0ojQpDIhp" role="37wK5m">
                    <ref role="3cqZAo" node="4O0ojQpDIhe" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="4O0ojQpDIhq" role="37wK5m">
                    <ref role="3cqZAo" node="4O0ojQpDIhg" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4O0ojQpX781" role="3cqZAp">
            <node concept="3clFbS" id="4O0ojQpX783" role="3clFbx">
              <node concept="3cpWs8" id="4O0ojQpDIhr" role="3cqZAp">
                <node concept="3cpWsn" id="4O0ojQpDIhs" role="3cpWs9">
                  <property role="TrG5h" value="targetSettings" />
                  <node concept="3uibUv" id="4O0ojQpDIht" role="1tU5fm">
                    <ref role="3uigEE" node="2JpbWDsQSwS" resolve="PortController" />
                  </node>
                  <node concept="2OqwBi" id="4O0ojQpDIhu" role="33vP2m">
                    <node concept="37vLTw" id="4O0ojQpDIhv" role="2Oq$k0">
                      <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                    </node>
                    <node concept="liA8E" id="4O0ojQpDIhw" role="2OqNvi">
                      <ref role="37wK5l" node="3vyG44Arcu2" resolve="getPortController" />
                      <node concept="37vLTw" id="4O0ojQpDIhx" role="37wK5m">
                        <ref role="3cqZAo" node="4O0ojQpDIhk" resolve="target" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4O0ojQpDIhy" role="3cqZAp">
                <node concept="3clFbS" id="4O0ojQpDIhz" role="3clFbx">
                  <node concept="3clFbF" id="4O0ojQpDIh$" role="3cqZAp">
                    <node concept="2OqwBi" id="4O0ojQpDIh_" role="3clFbG">
                      <node concept="2OqwBi" id="4O0ojQpDIhA" role="2Oq$k0">
                        <node concept="2OqwBi" id="4O0ojQpDIhB" role="2Oq$k0">
                          <node concept="2OqwBi" id="4O0ojQpDIhC" role="2Oq$k0">
                            <node concept="37vLTw" id="4O0ojQpDIhD" role="2Oq$k0">
                              <ref role="3cqZAo" node="7_KjZP9hsMT" resolve="myScene" />
                            </node>
                            <node concept="liA8E" id="4O0ojQpDIhE" role="2OqNvi">
                              <ref role="37wK5l" to="3bo0:7sG$k3BQmmw" resolve="getContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="4O0ojQpDIhF" role="2OqNvi">
                            <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4O0ojQpDIhG" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4O0ojQpDIhH" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.executeCommandInEDT(java.lang.Runnable)" resolve="executeCommandInEDT" />
                        <node concept="1bVj0M" id="4O0ojQpDIhI" role="37wK5m">
                          <node concept="3clFbS" id="4O0ojQpDIhJ" role="1bW5cS">
                            <node concept="3cpWs8" id="4y$DvIWc9rp" role="3cqZAp">
                              <node concept="3cpWsn" id="4y$DvIWc9rq" role="3cpWs9">
                                <property role="TrG5h" value="edge" />
                                <node concept="16syzq" id="4y$DvIWc9rr" role="1tU5fm">
                                  <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
                                </node>
                                <node concept="2OqwBi" id="4y$DvIWc9rs" role="33vP2m">
                                  <node concept="37vLTw" id="4y$DvIWc9rt" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                                  </node>
                                  <node concept="liA8E" id="4y$DvIWc9ru" role="2OqNvi">
                                    <ref role="37wK5l" node="4y$DvIW9BxS" resolve="addEdge" />
                                    <node concept="37vLTw" id="4O0ojQpFR3N" role="37wK5m">
                                      <ref role="3cqZAo" node="4O0ojQpFhpY" resolve="mySource" />
                                    </node>
                                    <node concept="37vLTw" id="4O0ojQpFRsa" role="37wK5m">
                                      <ref role="3cqZAo" node="4O0ojQpDIhk" resolve="target" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="5MmYuOgN4k6" role="3cqZAp">
                              <node concept="3clFbS" id="5MmYuOgN4k8" role="3clFbx">
                                <node concept="3cpWs6" id="5MmYuOgN7Dl" role="3cqZAp" />
                              </node>
                              <node concept="3clFbC" id="5MmYuOgN7hL" role="3clFbw">
                                <node concept="10Nm6u" id="5MmYuOgN7mG" role="3uHU7w" />
                                <node concept="37vLTw" id="5MmYuOgN4B2" role="3uHU7B">
                                  <ref role="3cqZAo" node="4y$DvIWc9rq" resolve="edge" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="4O0ojQpDIhK" role="3cqZAp">
                              <node concept="2OqwBi" id="4O0ojQpDIhL" role="3clFbG">
                                <node concept="37vLTw" id="4O0ojQpDIhM" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7_KjZP9eRe1" resolve="myConnectionSyncronizer" />
                                </node>
                                <node concept="liA8E" id="4O0ojQpDIhN" role="2OqNvi">
                                  <ref role="37wK5l" node="7_KjZP9eIiw" resolve="setPath" />
                                  <node concept="37vLTw" id="4y$DvIWccUY" role="37wK5m">
                                    <ref role="3cqZAo" node="4y$DvIWc9rq" resolve="edge" />
                                  </node>
                                  <node concept="2OqwBi" id="4O0ojQpDIhR" role="37wK5m">
                                    <node concept="37vLTw" id="4O0ojQpFtXx" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4O0ojQpD31Y" resolve="myNewPathFactory" />
                                    </node>
                                    <node concept="liA8E" id="4O0ojQpDIhT" role="2OqNvi">
                                      <ref role="37wK5l" to="82uw:~BiFunction.apply(java.lang.Object,java.lang.Object)" resolve="apply" />
                                      <node concept="37vLTw" id="4O0ojQpFRPH" role="37wK5m">
                                        <ref role="3cqZAo" node="4O0ojQpFEO5" resolve="mySourceLocation" />
                                      </node>
                                      <node concept="2OqwBi" id="4O0ojQpDIhU" role="37wK5m">
                                        <node concept="37vLTw" id="4O0ojQpDIhV" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4O0ojQpDIhs" resolve="targetSettings" />
                                        </node>
                                        <node concept="liA8E" id="4O0ojQpDIhW" role="2OqNvi">
                                          <ref role="37wK5l" node="1iOpS255UuU" resolve="getModelEndpointPosition" />
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
                <node concept="2OqwBi" id="4O0ojQpDIic" role="3clFbw">
                  <node concept="37vLTw" id="4O0ojQpDIid" role="2Oq$k0">
                    <ref role="3cqZAo" node="4O0ojQpDIhs" resolve="targetSettings" />
                  </node>
                  <node concept="liA8E" id="4O0ojQpDIie" role="2OqNvi">
                    <ref role="37wK5l" node="1KCfUoKSE03" resolve="canBeTargetedAt" />
                    <node concept="37vLTw" id="4O0ojQpDIif" role="37wK5m">
                      <ref role="3cqZAo" node="4O0ojQpDIhe" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="4O0ojQpDIig" role="37wK5m">
                      <ref role="3cqZAo" node="4O0ojQpDIhg" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="4O0ojQpX9re" role="3clFbw">
              <node concept="10Nm6u" id="4O0ojQpX9Eg" role="3uHU7w" />
              <node concept="37vLTw" id="4O0ojQpX7wQ" role="3uHU7B">
                <ref role="3cqZAo" node="4O0ojQpDIhk" resolve="target" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4O0ojQpF_FD" role="3cqZAp">
            <node concept="37vLTI" id="4O0ojQpFBul" role="3clFbG">
              <node concept="10Nm6u" id="4O0ojQpFBGU" role="37vLTx" />
              <node concept="37vLTw" id="4O0ojQpFATS" role="37vLTJ">
                <ref role="3cqZAo" node="4O0ojQpE9Ft" resolve="myNewConnectionPath" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5MmYuOgXAjG" role="3cqZAp">
            <node concept="2OqwBi" id="5MmYuOgXAKj" role="3clFbG">
              <node concept="37vLTw" id="5MmYuOgXAjE" role="2Oq$k0">
                <ref role="3cqZAo" node="7_KjZP9hsMT" resolve="myScene" />
              </node>
              <node concept="liA8E" id="5MmYuOgXDj3" role="2OqNvi">
                <ref role="37wK5l" to="3bo0:6tmlia_MTZ4" resolve="fireRepaint" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpDIih" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4O0ojQpDIii" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQpDIij" role="EKbjA">
        <ref role="3uigEE" to="rvgs:2_D_3xWXMp$" resolve="DragEventHandler" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpG0h0" role="jymVt" />
    <node concept="312cEu" id="4O0ojQpFSka" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="NewConnectionFromTargetDragEventHandler" />
      <node concept="312cEg" id="4O0ojQpFSkb" role="jymVt">
        <property role="TrG5h" value="myTarget" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="4O0ojQpFSkc" role="1B3o_S" />
        <node concept="16syzq" id="4O0ojQpFSkd" role="1tU5fm">
          <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
        </node>
      </node>
      <node concept="312cEg" id="4O0ojQpFSke" role="jymVt">
        <property role="TrG5h" value="myTargetLocation" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="4O0ojQpFSkf" role="1B3o_S" />
        <node concept="3uibUv" id="4O0ojQpFSkg" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="2tJIrI" id="4O0ojQpFSkh" role="jymVt" />
      <node concept="3clFbW" id="4O0ojQpFSki" role="jymVt">
        <node concept="3cqZAl" id="4O0ojQpFSkj" role="3clF45" />
        <node concept="3Tm6S6" id="4O0ojQpFSkk" role="1B3o_S" />
        <node concept="3clFbS" id="4O0ojQpFSkl" role="3clF47">
          <node concept="3clFbF" id="4O0ojQpFSkm" role="3cqZAp">
            <node concept="37vLTI" id="4O0ojQpFSkn" role="3clFbG">
              <node concept="37vLTw" id="4O0ojQpFSko" role="37vLTJ">
                <ref role="3cqZAo" node="4O0ojQpFSkb" resolve="myTarget" />
              </node>
              <node concept="37vLTw" id="4O0ojQpFSkp" role="37vLTx">
                <ref role="3cqZAo" node="4O0ojQpFSkF" resolve="target" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4O0ojQpFSkq" role="3cqZAp">
            <node concept="37vLTI" id="4O0ojQpFSkr" role="3clFbG">
              <node concept="2OqwBi" id="4O0ojQpFSks" role="37vLTx">
                <node concept="2OqwBi" id="4O0ojQpFSkt" role="2Oq$k0">
                  <node concept="37vLTw" id="4O0ojQpFSku" role="2Oq$k0">
                    <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                  </node>
                  <node concept="liA8E" id="4O0ojQpFSkv" role="2OqNvi">
                    <ref role="37wK5l" node="3vyG44Arcu2" resolve="getPortController" />
                    <node concept="37vLTw" id="4O0ojQpFSkw" role="37wK5m">
                      <ref role="3cqZAo" node="4O0ojQpFSkF" resolve="target" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4O0ojQpFSkx" role="2OqNvi">
                  <ref role="37wK5l" node="1iOpS255UuU" resolve="getModelEndpointPosition" />
                </node>
              </node>
              <node concept="37vLTw" id="4O0ojQpFSky" role="37vLTJ">
                <ref role="3cqZAo" node="4O0ojQpFSke" resolve="myTargetLocation" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4O0ojQpFSkz" role="3cqZAp">
            <node concept="1rXfSq" id="4O0ojQpFSk$" role="3clFbG">
              <ref role="37wK5l" node="4O0ojQpFSkI" resolve="dragTo" />
              <node concept="2OqwBi" id="4O0ojQpFSk_" role="37wK5m">
                <node concept="37vLTw" id="4O0ojQpFSkA" role="2Oq$k0">
                  <ref role="3cqZAo" node="4O0ojQpFSke" resolve="myTargetLocation" />
                </node>
                <node concept="2OwXpG" id="4O0ojQpFSkB" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                </node>
              </node>
              <node concept="2OqwBi" id="4O0ojQpFSkC" role="37wK5m">
                <node concept="37vLTw" id="4O0ojQpFSkD" role="2Oq$k0">
                  <ref role="3cqZAo" node="4O0ojQpFSke" resolve="myTargetLocation" />
                </node>
                <node concept="2OwXpG" id="4O0ojQpFSkE" role="2OqNvi">
                  <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4O0ojQpFSkF" role="3clF46">
          <property role="TrG5h" value="target" />
          <node concept="16syzq" id="4O0ojQpFSkG" role="1tU5fm">
            <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4O0ojQpFSkH" role="jymVt" />
      <node concept="3clFb_" id="4O0ojQpFSkI" role="jymVt">
        <property role="TrG5h" value="dragTo" />
        <node concept="3Tm1VV" id="4O0ojQpFSkJ" role="1B3o_S" />
        <node concept="3cqZAl" id="4O0ojQpFSkK" role="3clF45" />
        <node concept="37vLTG" id="4O0ojQpFSkL" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="4O0ojQpFSkM" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="4O0ojQpFSkN" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="4O0ojQpFSkO" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="4O0ojQpFSkP" role="3clF47">
          <node concept="3cpWs8" id="4O0ojQpFSkQ" role="3cqZAp">
            <node concept="3cpWsn" id="4O0ojQpFSkR" role="3cpWs9">
              <property role="TrG5h" value="port" />
              <node concept="16syzq" id="4O0ojQpFSkS" role="1tU5fm">
                <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
              </node>
              <node concept="2OqwBi" id="4O0ojQpFSkT" role="33vP2m">
                <node concept="37vLTw" id="4O0ojQpFSkU" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                </node>
                <node concept="liA8E" id="4O0ojQpFSkV" role="2OqNvi">
                  <ref role="37wK5l" node="7_KjZP9jaQA" resolve="findPort" />
                  <node concept="37vLTw" id="4O0ojQpFSkW" role="37wK5m">
                    <ref role="3cqZAo" node="4O0ojQpFSkL" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="4O0ojQpFSkX" role="37wK5m">
                    <ref role="3cqZAo" node="4O0ojQpFSkN" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4O0ojQpFSl5" role="3cqZAp">
            <node concept="3cpWsn" id="4O0ojQpFSl6" role="3cpWs9">
              <property role="TrG5h" value="source" />
              <node concept="3uibUv" id="4O0ojQpFSl7" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4O0ojQpFSkY" role="3cqZAp">
            <node concept="3cpWsn" id="4O0ojQpFSkZ" role="3cpWs9">
              <property role="TrG5h" value="portSettings" />
              <node concept="3uibUv" id="4O0ojQpFSl0" role="1tU5fm">
                <ref role="3uigEE" node="2JpbWDsQSwS" resolve="PortController" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4O0ojQpFSl8" role="3cqZAp">
            <node concept="3clFbS" id="4O0ojQpFSl9" role="3clFbx">
              <node concept="3clFbF" id="4O0ojQpFSla" role="3cqZAp">
                <node concept="37vLTI" id="4O0ojQpFSlb" role="3clFbG">
                  <node concept="2OqwBi" id="4O0ojQpFSlc" role="37vLTx">
                    <node concept="37vLTw" id="4O0ojQpFSld" role="2Oq$k0">
                      <ref role="3cqZAo" node="4O0ojQpFSkZ" resolve="portSettings" />
                    </node>
                    <node concept="liA8E" id="4O0ojQpFSle" role="2OqNvi">
                      <ref role="37wK5l" node="1iOpS255UuU" resolve="getModelEndpointPosition" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="4O0ojQpFSlf" role="37vLTJ">
                    <ref role="3cqZAo" node="4O0ojQpFSl6" resolve="source" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="4O0ojQpXcaq" role="3clFbw">
              <node concept="1Wc70l" id="4O0ojQpXcoM" role="3uHU7B">
                <node concept="3y3z36" id="4O0ojQpXdjO" role="3uHU7w">
                  <node concept="10Nm6u" id="4O0ojQpXdvr" role="3uHU7w" />
                  <node concept="1eOMI4" id="4O0ojQpXcPt" role="3uHU7B">
                    <node concept="37vLTI" id="4O0ojQpXaPu" role="1eOMHV">
                      <node concept="2OqwBi" id="4O0ojQpFSl1" role="37vLTx">
                        <node concept="37vLTw" id="4O0ojQpFSl2" role="2Oq$k0">
                          <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                        </node>
                        <node concept="liA8E" id="4O0ojQpFSl3" role="2OqNvi">
                          <ref role="37wK5l" node="3vyG44Arcu2" resolve="getPortController" />
                          <node concept="37vLTw" id="4O0ojQpFSl4" role="37wK5m">
                            <ref role="3cqZAo" node="4O0ojQpFSkR" resolve="port" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="4O0ojQpXaPy" role="37vLTJ">
                        <ref role="3cqZAo" node="4O0ojQpFSkZ" resolve="portSettings" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="4O0ojQpXcDf" role="3uHU7B">
                  <node concept="10Nm6u" id="4O0ojQpXcJN" role="3uHU7w" />
                  <node concept="37vLTw" id="4O0ojQpXcuE" role="3uHU7B">
                    <ref role="3cqZAo" node="4O0ojQpFSkR" resolve="port" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4O0ojQpFSlg" role="3uHU7w">
                <node concept="37vLTw" id="4O0ojQpFSlh" role="2Oq$k0">
                  <ref role="3cqZAo" node="4O0ojQpFSkZ" resolve="portSettings" />
                </node>
                <node concept="liA8E" id="4O0ojQpFSli" role="2OqNvi">
                  <ref role="37wK5l" node="1KCfUoKSijC" resolve="canBeSourcedAt" />
                  <node concept="37vLTw" id="4O0ojQpFSlj" role="37wK5m">
                    <ref role="3cqZAo" node="4O0ojQpFSkL" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="4O0ojQpFSlk" role="37wK5m">
                    <ref role="3cqZAo" node="4O0ojQpFSkN" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="4O0ojQpFSll" role="9aQIa">
              <node concept="3clFbS" id="4O0ojQpFSlm" role="9aQI4">
                <node concept="3clFbF" id="4O0ojQpFSln" role="3cqZAp">
                  <node concept="37vLTI" id="4O0ojQpFSlo" role="3clFbG">
                    <node concept="37vLTw" id="4O0ojQpFSlp" role="37vLTJ">
                      <ref role="3cqZAo" node="4O0ojQpFSl6" resolve="source" />
                    </node>
                    <node concept="2ShNRf" id="4O0ojQpFSlq" role="37vLTx">
                      <node concept="1pGfFk" id="4O0ojQpFSlr" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                        <node concept="37vLTw" id="4O0ojQpFSls" role="37wK5m">
                          <ref role="3cqZAo" node="4O0ojQpFSkL" resolve="x" />
                        </node>
                        <node concept="37vLTw" id="4O0ojQpFSlt" role="37wK5m">
                          <ref role="3cqZAo" node="4O0ojQpFSkN" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4O0ojQpFSlu" role="3cqZAp">
            <node concept="37vLTI" id="4O0ojQpFSlv" role="3clFbG">
              <node concept="2OqwBi" id="4O0ojQpFSlw" role="37vLTx">
                <node concept="37vLTw" id="4O0ojQpFSlx" role="2Oq$k0">
                  <ref role="3cqZAo" node="4O0ojQpD31Y" resolve="myNewPathFactory" />
                </node>
                <node concept="liA8E" id="4O0ojQpFSly" role="2OqNvi">
                  <ref role="37wK5l" to="82uw:~BiFunction.apply(java.lang.Object,java.lang.Object)" resolve="apply" />
                  <node concept="37vLTw" id="4O0ojQpFSl$" role="37wK5m">
                    <ref role="3cqZAo" node="4O0ojQpFSl6" resolve="source" />
                  </node>
                  <node concept="37vLTw" id="4O0ojQpFSlz" role="37wK5m">
                    <ref role="3cqZAo" node="4O0ojQpFSke" resolve="myTargetLocation" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="4O0ojQpFSl_" role="37vLTJ">
                <ref role="3cqZAo" node="4O0ojQpE9Ft" resolve="myNewConnectionPath" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4O0ojQpFSlA" role="3cqZAp">
            <node concept="2OqwBi" id="4O0ojQpFSlB" role="3clFbG">
              <node concept="37vLTw" id="4O0ojQpFSlC" role="2Oq$k0">
                <ref role="3cqZAo" node="7_KjZP9hsMT" resolve="myScene" />
              </node>
              <node concept="liA8E" id="4O0ojQpFSlD" role="2OqNvi">
                <ref role="37wK5l" to="3bo0:6tmlia_MTZ4" resolve="fireRepaint" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpFSlE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4O0ojQpFSlF" role="jymVt" />
      <node concept="3clFb_" id="4O0ojQpFSlG" role="jymVt">
        <property role="TrG5h" value="completeAt" />
        <node concept="3Tm1VV" id="4O0ojQpFSlH" role="1B3o_S" />
        <node concept="3cqZAl" id="4O0ojQpFSlI" role="3clF45" />
        <node concept="37vLTG" id="4O0ojQpFSlJ" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="4O0ojQpFSlK" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="4O0ojQpFSlL" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="4O0ojQpFSlM" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="4O0ojQpFSlN" role="3clF47">
          <node concept="3cpWs8" id="4O0ojQpFSlO" role="3cqZAp">
            <node concept="3cpWsn" id="4O0ojQpFSlP" role="3cpWs9">
              <property role="TrG5h" value="source" />
              <node concept="16syzq" id="4O0ojQpFSlQ" role="1tU5fm">
                <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
              </node>
              <node concept="2OqwBi" id="4O0ojQpFSlR" role="33vP2m">
                <node concept="37vLTw" id="4O0ojQpFSlS" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                </node>
                <node concept="liA8E" id="4O0ojQpFSlT" role="2OqNvi">
                  <ref role="37wK5l" node="7_KjZP9jaQA" resolve="findPort" />
                  <node concept="37vLTw" id="4O0ojQpFSlU" role="37wK5m">
                    <ref role="3cqZAo" node="4O0ojQpFSlJ" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="4O0ojQpFSlV" role="37wK5m">
                    <ref role="3cqZAo" node="4O0ojQpFSlL" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4O0ojQpXeMG" role="3cqZAp">
            <node concept="3clFbS" id="4O0ojQpXeMI" role="3clFbx">
              <node concept="3cpWs8" id="4O0ojQpFSlW" role="3cqZAp">
                <node concept="3cpWsn" id="4O0ojQpFSlX" role="3cpWs9">
                  <property role="TrG5h" value="sourceSettings" />
                  <node concept="3uibUv" id="4O0ojQpFSlY" role="1tU5fm">
                    <ref role="3uigEE" node="2JpbWDsQSwS" resolve="PortController" />
                  </node>
                  <node concept="2OqwBi" id="4O0ojQpFSlZ" role="33vP2m">
                    <node concept="37vLTw" id="4O0ojQpFSm0" role="2Oq$k0">
                      <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                    </node>
                    <node concept="liA8E" id="4O0ojQpFSm1" role="2OqNvi">
                      <ref role="37wK5l" node="3vyG44Arcu2" resolve="getPortController" />
                      <node concept="37vLTw" id="4O0ojQpFSm2" role="37wK5m">
                        <ref role="3cqZAo" node="4O0ojQpFSlP" resolve="source" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="4O0ojQpFSm3" role="3cqZAp">
                <node concept="3clFbS" id="4O0ojQpFSm4" role="3clFbx">
                  <node concept="3clFbF" id="4O0ojQpFSm5" role="3cqZAp">
                    <node concept="2OqwBi" id="4O0ojQpFSm6" role="3clFbG">
                      <node concept="2OqwBi" id="4O0ojQpFSm7" role="2Oq$k0">
                        <node concept="2OqwBi" id="4O0ojQpFSm8" role="2Oq$k0">
                          <node concept="2OqwBi" id="4O0ojQpFSm9" role="2Oq$k0">
                            <node concept="37vLTw" id="4O0ojQpFSma" role="2Oq$k0">
                              <ref role="3cqZAo" node="7_KjZP9hsMT" resolve="myScene" />
                            </node>
                            <node concept="liA8E" id="4O0ojQpFSmb" role="2OqNvi">
                              <ref role="37wK5l" to="3bo0:7sG$k3BQmmw" resolve="getContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="4O0ojQpFSmc" role="2OqNvi">
                            <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4O0ojQpFSmd" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4O0ojQpFSme" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.runWriteInEDT(java.lang.Runnable)" resolve="runWriteInEDT" />
                        <node concept="1bVj0M" id="4O0ojQpFSmf" role="37wK5m">
                          <node concept="3clFbS" id="4O0ojQpFSmg" role="1bW5cS">
                            <node concept="3cpWs8" id="4y$DvIWc7JP" role="3cqZAp">
                              <node concept="3cpWsn" id="4y$DvIWc7JQ" role="3cpWs9">
                                <property role="TrG5h" value="edge" />
                                <node concept="16syzq" id="4y$DvIWc7JM" role="1tU5fm">
                                  <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
                                </node>
                                <node concept="2OqwBi" id="4y$DvIWc7JR" role="33vP2m">
                                  <node concept="37vLTw" id="4y$DvIWc7JS" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                                  </node>
                                  <node concept="liA8E" id="4y$DvIWc7JT" role="2OqNvi">
                                    <ref role="37wK5l" node="4y$DvIW9BxS" resolve="addEdge" />
                                    <node concept="37vLTw" id="4y$DvIWc7JU" role="37wK5m">
                                      <ref role="3cqZAo" node="4O0ojQpFSlP" resolve="source" />
                                    </node>
                                    <node concept="37vLTw" id="4y$DvIWc7JV" role="37wK5m">
                                      <ref role="3cqZAo" node="4O0ojQpFSkb" resolve="myTarget" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="5MmYuOgN81Q" role="3cqZAp">
                              <node concept="3clFbS" id="5MmYuOgN81R" role="3clFbx">
                                <node concept="3cpWs6" id="5MmYuOgN81S" role="3cqZAp" />
                              </node>
                              <node concept="3clFbC" id="5MmYuOgN81T" role="3clFbw">
                                <node concept="10Nm6u" id="5MmYuOgN81U" role="3uHU7w" />
                                <node concept="37vLTw" id="5MmYuOgN81V" role="3uHU7B">
                                  <ref role="3cqZAo" node="4y$DvIWc7JQ" resolve="edge" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="4O0ojQpFSmh" role="3cqZAp">
                              <node concept="2OqwBi" id="4O0ojQpFSmi" role="3clFbG">
                                <node concept="37vLTw" id="4O0ojQpFSmj" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7_KjZP9eRe1" resolve="myConnectionSyncronizer" />
                                </node>
                                <node concept="liA8E" id="4O0ojQpFSmk" role="2OqNvi">
                                  <ref role="37wK5l" node="7_KjZP9eIiw" resolve="setPath" />
                                  <node concept="37vLTw" id="4y$DvIWc9bQ" role="37wK5m">
                                    <ref role="3cqZAo" node="4y$DvIWc7JQ" resolve="edge" />
                                  </node>
                                  <node concept="2OqwBi" id="4O0ojQpFSmn" role="37wK5m">
                                    <node concept="37vLTw" id="4O0ojQpFSmo" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4O0ojQpD31Y" resolve="myNewPathFactory" />
                                    </node>
                                    <node concept="liA8E" id="4O0ojQpFSmp" role="2OqNvi">
                                      <ref role="37wK5l" to="82uw:~BiFunction.apply(java.lang.Object,java.lang.Object)" resolve="apply" />
                                      <node concept="37vLTw" id="4O0ojQpFSmq" role="37wK5m">
                                        <ref role="3cqZAo" node="4O0ojQpFSke" resolve="myTargetLocation" />
                                      </node>
                                      <node concept="2OqwBi" id="4O0ojQpFSmr" role="37wK5m">
                                        <node concept="37vLTw" id="4O0ojQpFSms" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4O0ojQpFSlX" resolve="sourceSettings" />
                                        </node>
                                        <node concept="liA8E" id="4O0ojQpFSmt" role="2OqNvi">
                                          <ref role="37wK5l" node="1iOpS255UuU" resolve="getModelEndpointPosition" />
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
                <node concept="2OqwBi" id="4O0ojQpFSmy" role="3clFbw">
                  <node concept="37vLTw" id="4O0ojQpFSmz" role="2Oq$k0">
                    <ref role="3cqZAo" node="4O0ojQpFSlX" resolve="sourceSettings" />
                  </node>
                  <node concept="liA8E" id="4O0ojQpFSm$" role="2OqNvi">
                    <ref role="37wK5l" node="1KCfUoKSijC" resolve="canBeSourcedAt" />
                    <node concept="37vLTw" id="4O0ojQpFSm_" role="37wK5m">
                      <ref role="3cqZAo" node="4O0ojQpFSlJ" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="4O0ojQpFSmA" role="37wK5m">
                      <ref role="3cqZAo" node="4O0ojQpFSlL" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="4O0ojQpXh4v" role="3clFbw">
              <node concept="10Nm6u" id="4O0ojQpXhjx" role="3uHU7w" />
              <node concept="37vLTw" id="4O0ojQpXfby" role="3uHU7B">
                <ref role="3cqZAo" node="4O0ojQpFSlP" resolve="source" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4O0ojQpFSmu" role="3cqZAp">
            <node concept="37vLTI" id="4O0ojQpFSmv" role="3clFbG">
              <node concept="10Nm6u" id="4O0ojQpFSmw" role="37vLTx" />
              <node concept="37vLTw" id="4O0ojQpFSmx" role="37vLTJ">
                <ref role="3cqZAo" node="4O0ojQpE9Ft" resolve="myNewConnectionPath" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="5MmYuOgXDW$" role="3cqZAp">
            <node concept="2OqwBi" id="5MmYuOgXDW_" role="3clFbG">
              <node concept="37vLTw" id="5MmYuOgXDWA" role="2Oq$k0">
                <ref role="3cqZAo" node="7_KjZP9hsMT" resolve="myScene" />
              </node>
              <node concept="liA8E" id="5MmYuOgXDWB" role="2OqNvi">
                <ref role="37wK5l" to="3bo0:6tmlia_MTZ4" resolve="fireRepaint" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpFSmB" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4O0ojQpFSmC" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQpFSmD" role="EKbjA">
        <ref role="3uigEE" to="rvgs:2_D_3xWXMp$" resolve="DragEventHandler" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpDHRr" role="jymVt" />
    <node concept="312cEu" id="7_KjZP9fIcw" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="ConnectionPathChangeDragEventHandler" />
      <node concept="312cEg" id="7_KjZP9fX_c" role="jymVt">
        <property role="TrG5h" value="myPathTransformation" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7_KjZP9fV1M" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
          <node concept="3uibUv" id="7_KjZP9fVOf" role="11_B2D">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
          <node concept="16syzq" id="7_KjZP9fWUW" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
          </node>
        </node>
        <node concept="3Tm6S6" id="7_KjZP9fYsj" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7_KjZP9g3IZ" role="jymVt">
        <property role="TrG5h" value="myEntry" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7_KjZP9g0SU" role="1B3o_S" />
        <node concept="3uibUv" id="7_KjZP9g2Z6" role="1tU5fm">
          <ref role="3uigEE" node="7_KjZP9d656" resolve="ConnectionEntry" />
          <node concept="16syzq" id="4y$DvIXdahY" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
          </node>
          <node concept="16syzq" id="4y$DvIXdahZ" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
          </node>
          <node concept="16syzq" id="4y$DvIX8OKs" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
          </node>
          <node concept="16syzq" id="4y$DvIX8OKt" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
          </node>
          <node concept="16syzq" id="4y$DvIX8OKu" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7_KjZP9g4qc" role="jymVt" />
      <node concept="3clFbW" id="7_KjZP9g53r" role="jymVt">
        <node concept="3cqZAl" id="7_KjZP9g53s" role="3clF45" />
        <node concept="3Tm6S6" id="7_KjZP9g53t" role="1B3o_S" />
        <node concept="3clFbS" id="7_KjZP9g53v" role="3clF47">
          <node concept="3clFbF" id="7_KjZP9g53_" role="3cqZAp">
            <node concept="37vLTI" id="7_KjZP9g53B" role="3clFbG">
              <node concept="37vLTw" id="7_KjZP9g53I" role="37vLTx">
                <ref role="3cqZAo" node="7_KjZP9g53$" resolve="pathTransformation" />
              </node>
              <node concept="37vLTw" id="7_KjZP9geOG" role="37vLTJ">
                <ref role="3cqZAo" node="7_KjZP9fX_c" resolve="myPathTransformation" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7_KjZP9g53L" role="3cqZAp">
            <node concept="37vLTI" id="7_KjZP9g53N" role="3clFbG">
              <node concept="37vLTw" id="7_KjZP9gg7i" role="37vLTJ">
                <ref role="3cqZAo" node="7_KjZP9g3IZ" resolve="myEntry" />
              </node>
              <node concept="37vLTw" id="7_KjZP9g53U" role="37vLTx">
                <ref role="3cqZAo" node="7_KjZP9g53K" resolve="entry" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7_KjZP9mHil" role="3cqZAp">
            <node concept="1rXfSq" id="7_KjZP9mHij" role="3clFbG">
              <ref role="37wK5l" node="7_KjZP9fT6r" resolve="dragTo" />
              <node concept="37vLTw" id="7_KjZP9mHL5" role="37wK5m">
                <ref role="3cqZAo" node="7_KjZP9gVIL" resolve="initialX" />
              </node>
              <node concept="37vLTw" id="7_KjZP9mHXn" role="37wK5m">
                <ref role="3cqZAo" node="7_KjZP9mFAC" resolve="initialY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7_KjZP9gVIL" role="3clF46">
          <property role="TrG5h" value="initialX" />
          <node concept="10Oyi0" id="7_KjZP9mF7q" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7_KjZP9mFAC" role="3clF46">
          <property role="TrG5h" value="initialY" />
          <node concept="10Oyi0" id="7_KjZP9mFWq" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7_KjZP9g53$" role="3clF46">
          <property role="TrG5h" value="pathTransformation" />
          <node concept="3uibUv" id="7_KjZP9g53x" role="1tU5fm">
            <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
            <node concept="3uibUv" id="7_KjZP9g53y" role="11_B2D">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="16syzq" id="7_KjZP9g53z" role="11_B2D">
              <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7_KjZP9g53K" role="3clF46">
          <property role="TrG5h" value="entry" />
          <node concept="3uibUv" id="7_KjZP9g53J" role="1tU5fm">
            <ref role="3uigEE" node="7_KjZP9d656" resolve="ConnectionEntry" />
            <node concept="16syzq" id="4y$DvIXdaRk" role="11_B2D">
              <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
            </node>
            <node concept="16syzq" id="4y$DvIXdaRl" role="11_B2D">
              <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
            </node>
            <node concept="16syzq" id="4y$DvIXaptj" role="11_B2D">
              <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
            </node>
            <node concept="16syzq" id="4y$DvIXaptk" role="11_B2D">
              <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
            </node>
            <node concept="16syzq" id="4y$DvIXaptl" role="11_B2D">
              <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7_KjZP9g4qJ" role="jymVt" />
      <node concept="3clFb_" id="7_KjZP9fT6r" role="jymVt">
        <property role="TrG5h" value="dragTo" />
        <node concept="3Tm1VV" id="7_KjZP9fT6t" role="1B3o_S" />
        <node concept="3cqZAl" id="7_KjZP9fT6u" role="3clF45" />
        <node concept="37vLTG" id="7_KjZP9fT6v" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="7_KjZP9fT6w" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7_KjZP9fT6x" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="7_KjZP9fT6y" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="7_KjZP9fT6z" role="3clF47">
          <node concept="3clFbF" id="7_KjZP9ggQZ" role="3cqZAp">
            <node concept="37vLTI" id="7_KjZP9gi7R" role="3clFbG">
              <node concept="2OqwBi" id="7_KjZP9h3dK" role="37vLTx">
                <node concept="37vLTw" id="7_KjZP9h1wh" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9fX_c" resolve="myPathTransformation" />
                </node>
                <node concept="liA8E" id="7_KjZP9h6O_" role="2OqNvi">
                  <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                  <node concept="2ShNRf" id="7_KjZP9h7$i" role="37wK5m">
                    <node concept="1pGfFk" id="7_KjZP9hd28" role="2ShVmc">
                      <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                      <node concept="37vLTw" id="7_KjZP9hf3Z" role="37wK5m">
                        <ref role="3cqZAo" node="7_KjZP9fT6v" resolve="x" />
                      </node>
                      <node concept="37vLTw" id="7_KjZP9hfWu" role="37wK5m">
                        <ref role="3cqZAo" node="7_KjZP9fT6x" resolve="y" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7_KjZP9gBRN" role="37vLTJ">
                <node concept="37vLTw" id="7_KjZP9ggQY" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9g3IZ" resolve="myEntry" />
                </node>
                <node concept="2OwXpG" id="7_KjZP9gKhQ" role="2OqNvi">
                  <ref role="2Oxat5" node="7_KjZP9glio" resolve="myTransformedPath" />
                </node>
              </node>
            </node>
            <node concept="15s5l7" id="4y$DvIXetIF" role="lGtFl">
              <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;" />
            </node>
          </node>
          <node concept="3clFbF" id="7_KjZP9i$Hq" role="3cqZAp">
            <node concept="2OqwBi" id="7_KjZP9i_15" role="3clFbG">
              <node concept="37vLTw" id="7_KjZP9i$Ho" role="2Oq$k0">
                <ref role="3cqZAo" node="7_KjZP9hsMT" resolve="myScene" />
              </node>
              <node concept="liA8E" id="7_KjZP9iB2F" role="2OqNvi">
                <ref role="37wK5l" to="3bo0:1iOpS24Am6k" resolve="fireRelayout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7_KjZP9fT6$" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7_KjZP9fTIu" role="jymVt" />
      <node concept="3clFb_" id="7_KjZP9fUkk" role="jymVt">
        <property role="TrG5h" value="completeAt" />
        <node concept="3Tm1VV" id="7_KjZP9fUkq" role="1B3o_S" />
        <node concept="3cqZAl" id="7_KjZP9fUkr" role="3clF45" />
        <node concept="37vLTG" id="7_KjZP9fUks" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="7_KjZP9fUkt" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7_KjZP9fUku" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="7_KjZP9fUkv" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="7_KjZP9fUkx" role="3clF47">
          <node concept="3clFbF" id="7_KjZP9hHqs" role="3cqZAp">
            <node concept="2OqwBi" id="7_KjZP9hLnZ" role="3clFbG">
              <node concept="2OqwBi" id="7_KjZP9hIbg" role="2Oq$k0">
                <node concept="2OqwBi" id="7_KjZP9hXSr" role="2Oq$k0">
                  <node concept="2OqwBi" id="7_KjZP9hWtx" role="2Oq$k0">
                    <node concept="37vLTw" id="7_KjZP9hHqr" role="2Oq$k0">
                      <ref role="3cqZAo" node="7_KjZP9hsMT" resolve="myScene" />
                    </node>
                    <node concept="liA8E" id="7_KjZP9hXbx" role="2OqNvi">
                      <ref role="37wK5l" to="3bo0:7sG$k3BQmmw" resolve="getContext" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7_KjZP9i0Tn" role="2OqNvi">
                    <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
                  </node>
                </node>
                <node concept="liA8E" id="7_KjZP9hKIL" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="7_KjZP9hOm6" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.executeCommandInEDT(java.lang.Runnable)" resolve="executeCommandInEDT" />
                <node concept="1bVj0M" id="7_KjZP9hQaw" role="37wK5m">
                  <node concept="3clFbS" id="7_KjZP9hQay" role="1bW5cS">
                    <node concept="3clFbF" id="7_KjZP9hQUf" role="3cqZAp">
                      <node concept="2OqwBi" id="7_KjZP9i1Il" role="3clFbG">
                        <node concept="37vLTw" id="7_KjZP9hQUe" role="2Oq$k0">
                          <ref role="3cqZAo" node="7_KjZP9eRe1" resolve="myConnectionSyncronizer" />
                        </node>
                        <node concept="liA8E" id="7_KjZP9i2xf" role="2OqNvi">
                          <ref role="37wK5l" node="7_KjZP9eIiw" resolve="setPath" />
                          <node concept="2OqwBi" id="7_KjZP9i5MQ" role="37wK5m">
                            <node concept="37vLTw" id="7_KjZP9i5sf" role="2Oq$k0">
                              <ref role="3cqZAo" node="7_KjZP9g3IZ" resolve="myEntry" />
                            </node>
                            <node concept="2OwXpG" id="7_KjZP9i812" role="2OqNvi">
                              <ref role="2Oxat5" node="7_KjZP9ek_0" resolve="myConnection" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7_KjZP9iBwV" role="37wK5m">
                            <node concept="37vLTw" id="7_KjZP9iBwW" role="2Oq$k0">
                              <ref role="3cqZAo" node="7_KjZP9fX_c" resolve="myPathTransformation" />
                            </node>
                            <node concept="liA8E" id="7_KjZP9iBwX" role="2OqNvi">
                              <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                              <node concept="2ShNRf" id="7_KjZP9iBwY" role="37wK5m">
                                <node concept="1pGfFk" id="7_KjZP9iBwZ" role="2ShVmc">
                                  <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                                  <node concept="37vLTw" id="7_KjZP9iBx0" role="37wK5m">
                                    <ref role="3cqZAo" node="7_KjZP9fUks" resolve="x" />
                                  </node>
                                  <node concept="37vLTw" id="7_KjZP9iBx1" role="37wK5m">
                                    <ref role="3cqZAo" node="7_KjZP9fUku" resolve="y" />
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
          <node concept="3clFbF" id="7_KjZP9i9aD" role="3cqZAp">
            <node concept="37vLTI" id="7_KjZP9iixC" role="3clFbG">
              <node concept="10Nm6u" id="7_KjZP9iiKt" role="37vLTx" />
              <node concept="2OqwBi" id="7_KjZP9i9aF" role="37vLTJ">
                <node concept="37vLTw" id="7_KjZP9i9aH" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9g3IZ" resolve="myEntry" />
                </node>
                <node concept="2OwXpG" id="7_KjZP9i9aJ" role="2OqNvi">
                  <ref role="2Oxat5" node="7_KjZP9glio" resolve="myTransformedPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7_KjZP9fUky" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7_KjZP9fI3z" role="1B3o_S" />
      <node concept="3uibUv" id="7_KjZP9fRX9" role="EKbjA">
        <ref role="3uigEE" to="rvgs:2_D_3xWXMp$" resolve="DragEventHandler" />
      </node>
    </node>
    <node concept="2tJIrI" id="7_KjZP9iBWh" role="jymVt" />
    <node concept="312cEu" id="7_KjZP9j2Yh" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="ConnectionSourceChangeDragEventHandler" />
      <node concept="312cEg" id="7_KjZP9j2Yi" role="jymVt">
        <property role="TrG5h" value="myPathTransformation" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7_KjZP9j2Yj" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
          <node concept="3uibUv" id="7_KjZP9j2Yk" role="11_B2D">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
          <node concept="16syzq" id="7_KjZP9j2Yl" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
          </node>
        </node>
        <node concept="3Tm6S6" id="7_KjZP9j2Ym" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7_KjZP9j2Yn" role="jymVt">
        <property role="TrG5h" value="myEntry" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7_KjZP9j2Yo" role="1B3o_S" />
        <node concept="3uibUv" id="7_KjZP9j2Yp" role="1tU5fm">
          <ref role="3uigEE" node="7_KjZP9d656" resolve="ConnectionEntry" />
          <node concept="16syzq" id="4y$DvIXd9GO" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
          </node>
          <node concept="16syzq" id="4y$DvIXd9GP" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
          </node>
          <node concept="16syzq" id="4y$DvIX8PAH" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
          </node>
          <node concept="16syzq" id="4y$DvIX8PAI" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
          </node>
          <node concept="16syzq" id="4y$DvIX8PAJ" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7_KjZP9j2Yq" role="jymVt" />
      <node concept="3clFbW" id="7_KjZP9j2Yr" role="jymVt">
        <node concept="3cqZAl" id="7_KjZP9j2Ys" role="3clF45" />
        <node concept="3Tm6S6" id="7_KjZP9j2Yt" role="1B3o_S" />
        <node concept="3clFbS" id="7_KjZP9j2Yu" role="3clF47">
          <node concept="3clFbF" id="7_KjZP9j2Yv" role="3cqZAp">
            <node concept="37vLTI" id="7_KjZP9j2Yw" role="3clFbG">
              <node concept="37vLTw" id="7_KjZP9j2Yx" role="37vLTx">
                <ref role="3cqZAo" node="7_KjZP9j2YO" resolve="pathTransformation" />
              </node>
              <node concept="37vLTw" id="7_KjZP9j2Yy" role="37vLTJ">
                <ref role="3cqZAo" node="7_KjZP9j2Yi" resolve="myPathTransformation" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7_KjZP9j2Yz" role="3cqZAp">
            <node concept="37vLTI" id="7_KjZP9j2Y$" role="3clFbG">
              <node concept="37vLTw" id="7_KjZP9j2Y_" role="37vLTJ">
                <ref role="3cqZAo" node="7_KjZP9j2Yn" resolve="myEntry" />
              </node>
              <node concept="37vLTw" id="7_KjZP9j2YA" role="37vLTx">
                <ref role="3cqZAo" node="7_KjZP9j2YS" resolve="entry" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7_KjZP9lu6V" role="3cqZAp">
            <node concept="1rXfSq" id="7_KjZP9lu6T" role="3clFbG">
              <ref role="37wK5l" node="7_KjZP9j2YV" resolve="dragTo" />
              <node concept="37vLTw" id="7_KjZP9mJ7Y" role="37wK5m">
                <ref role="3cqZAo" node="7_KjZP9mIgB" resolve="initialX" />
              </node>
              <node concept="37vLTw" id="7_KjZP9mJiB" role="37wK5m">
                <ref role="3cqZAo" node="7_KjZP9mIgD" resolve="initialY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7_KjZP9mIgB" role="3clF46">
          <property role="TrG5h" value="initialX" />
          <node concept="10Oyi0" id="7_KjZP9mIgC" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7_KjZP9mIgD" role="3clF46">
          <property role="TrG5h" value="initialY" />
          <node concept="10Oyi0" id="7_KjZP9mIgE" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7_KjZP9j2YO" role="3clF46">
          <property role="TrG5h" value="pathTransformation" />
          <node concept="3uibUv" id="7_KjZP9j2YP" role="1tU5fm">
            <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
            <node concept="3uibUv" id="7_KjZP9j2YQ" role="11_B2D">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="16syzq" id="7_KjZP9j2YR" role="11_B2D">
              <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7_KjZP9j2YS" role="3clF46">
          <property role="TrG5h" value="entry" />
          <node concept="3uibUv" id="7_KjZP9j2YT" role="1tU5fm">
            <ref role="3uigEE" node="7_KjZP9d656" resolve="ConnectionEntry" />
            <node concept="16syzq" id="4y$DvIXd8Q2" role="11_B2D">
              <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
            </node>
            <node concept="16syzq" id="4y$DvIXd8Q3" role="11_B2D">
              <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
            </node>
            <node concept="16syzq" id="4y$DvIXao9K" role="11_B2D">
              <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
            </node>
            <node concept="16syzq" id="4y$DvIXao9L" role="11_B2D">
              <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
            </node>
            <node concept="16syzq" id="4y$DvIXao9M" role="11_B2D">
              <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7_KjZP9j2YU" role="jymVt" />
      <node concept="3clFb_" id="7_KjZP9j2YV" role="jymVt">
        <property role="TrG5h" value="dragTo" />
        <node concept="3Tm1VV" id="7_KjZP9j2YW" role="1B3o_S" />
        <node concept="3cqZAl" id="7_KjZP9j2YX" role="3clF45" />
        <node concept="37vLTG" id="7_KjZP9j2YY" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="7_KjZP9j2YZ" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7_KjZP9j2Z0" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="7_KjZP9j2Z1" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="7_KjZP9j2Z2" role="3clF47">
          <node concept="3cpWs8" id="7_KjZP9jfGS" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9jfGT" role="3cpWs9">
              <property role="TrG5h" value="port" />
              <node concept="16syzq" id="7_KjZP9jfGP" role="1tU5fm">
                <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
              </node>
              <node concept="2OqwBi" id="7_KjZP9jfGU" role="33vP2m">
                <node concept="37vLTw" id="7_KjZP9jfGV" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                </node>
                <node concept="liA8E" id="7_KjZP9jfGW" role="2OqNvi">
                  <ref role="37wK5l" node="7_KjZP9jaQA" resolve="findPort" />
                  <node concept="37vLTw" id="7_KjZP9jfGX" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP9j2YY" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="7_KjZP9jfGY" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP9j2Z0" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7_KjZP9ljRc" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9ljRd" role="3cpWs9">
              <property role="TrG5h" value="target" />
              <node concept="3uibUv" id="7_KjZP9ljRe" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7_KjZP9jjxq" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9jjxr" role="3cpWs9">
              <property role="TrG5h" value="portSettings" />
              <node concept="3uibUv" id="7_KjZP9jjxn" role="1tU5fm">
                <ref role="3uigEE" node="2JpbWDsQSwS" resolve="PortController" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7_KjZP9jlfl" role="3cqZAp">
            <node concept="3clFbS" id="7_KjZP9jlfn" role="3clFbx">
              <node concept="3clFbF" id="7_KjZP9lkeP" role="3cqZAp">
                <node concept="37vLTI" id="7_KjZP9lkDg" role="3clFbG">
                  <node concept="2OqwBi" id="7_KjZP9ll2M" role="37vLTx">
                    <node concept="37vLTw" id="7_KjZP9lkR4" role="2Oq$k0">
                      <ref role="3cqZAo" node="7_KjZP9jjxr" resolve="portSettings" />
                    </node>
                    <node concept="liA8E" id="7_KjZP9lq_S" role="2OqNvi">
                      <ref role="37wK5l" node="1iOpS255UuU" resolve="getModelEndpointPosition" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7_KjZP9lkeN" role="37vLTJ">
                    <ref role="3cqZAo" node="7_KjZP9ljRd" resolve="target" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="4O0ojQpXjTY" role="3clFbw">
              <node concept="1Wc70l" id="4O0ojQpXk8v" role="3uHU7B">
                <node concept="3y3z36" id="4O0ojQpXkW_" role="3uHU7w">
                  <node concept="10Nm6u" id="4O0ojQpXlnO" role="3uHU7w" />
                  <node concept="1eOMI4" id="4O0ojQpXkuF" role="3uHU7B">
                    <node concept="37vLTI" id="4O0ojQpXiMT" role="1eOMHV">
                      <node concept="2OqwBi" id="7_KjZP9jjxs" role="37vLTx">
                        <node concept="37vLTw" id="7_KjZP9jjxt" role="2Oq$k0">
                          <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                        </node>
                        <node concept="liA8E" id="7_KjZP9jjxu" role="2OqNvi">
                          <ref role="37wK5l" node="3vyG44Arcu2" resolve="getPortController" />
                          <node concept="37vLTw" id="7_KjZP9jjxv" role="37wK5m">
                            <ref role="3cqZAo" node="7_KjZP9jfGT" resolve="port" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="4O0ojQpXiMX" role="37vLTJ">
                        <ref role="3cqZAo" node="7_KjZP9jjxr" resolve="portSettings" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="4O0ojQpXlN9" role="3uHU7B">
                  <node concept="10Nm6u" id="4O0ojQpXlZc" role="3uHU7w" />
                  <node concept="37vLTw" id="4O0ojQpXlz5" role="3uHU7B">
                    <ref role="3cqZAo" node="7_KjZP9jfGT" resolve="port" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7_KjZP9jk9q" role="3uHU7w">
                <node concept="37vLTw" id="7_KjZP9jjxw" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9jjxr" resolve="portSettings" />
                </node>
                <node concept="liA8E" id="7_KjZP9jkgU" role="2OqNvi">
                  <ref role="37wK5l" node="1KCfUoKSijC" resolve="canBeSourcedAt" />
                  <node concept="37vLTw" id="7_KjZP9jkrA" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP9j2YY" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="7_KjZP9jkEd" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP9j2Z0" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="7_KjZP9lqJE" role="9aQIa">
              <node concept="3clFbS" id="7_KjZP9lqJF" role="9aQI4">
                <node concept="3clFbF" id="7_KjZP9lqXc" role="3cqZAp">
                  <node concept="37vLTI" id="7_KjZP9lrhN" role="3clFbG">
                    <node concept="37vLTw" id="7_KjZP9lqXb" role="37vLTJ">
                      <ref role="3cqZAo" node="7_KjZP9ljRd" resolve="target" />
                    </node>
                    <node concept="2ShNRf" id="7_KjZP9lrBS" role="37vLTx">
                      <node concept="1pGfFk" id="7_KjZP9lrBT" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                        <node concept="37vLTw" id="7_KjZP9lrBU" role="37wK5m">
                          <ref role="3cqZAo" node="7_KjZP9j2YY" resolve="x" />
                        </node>
                        <node concept="37vLTw" id="7_KjZP9lrBV" role="37wK5m">
                          <ref role="3cqZAo" node="7_KjZP9j2Z0" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7_KjZP9j2Z3" role="3cqZAp">
            <node concept="37vLTI" id="7_KjZP9j2Z4" role="3clFbG">
              <node concept="2OqwBi" id="7_KjZP9j2Z5" role="37vLTx">
                <node concept="37vLTw" id="7_KjZP9j2Z6" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9j2Yi" resolve="myPathTransformation" />
                </node>
                <node concept="liA8E" id="7_KjZP9j2Z7" role="2OqNvi">
                  <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                  <node concept="37vLTw" id="7_KjZP9ltGZ" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP9ljRd" resolve="target" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7_KjZP9j2Zc" role="37vLTJ">
                <node concept="37vLTw" id="7_KjZP9j2Ze" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9j2Yn" resolve="myEntry" />
                </node>
                <node concept="2OwXpG" id="7_KjZP9j2Zg" role="2OqNvi">
                  <ref role="2Oxat5" node="7_KjZP9glio" resolve="myTransformedPath" />
                </node>
              </node>
            </node>
            <node concept="15s5l7" id="4y$DvIXet2t" role="lGtFl">
              <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;" />
            </node>
          </node>
          <node concept="3clFbF" id="7_KjZP9j2Zh" role="3cqZAp">
            <node concept="2OqwBi" id="7_KjZP9j2Zi" role="3clFbG">
              <node concept="37vLTw" id="7_KjZP9j2Zj" role="2Oq$k0">
                <ref role="3cqZAo" node="7_KjZP9hsMT" resolve="myScene" />
              </node>
              <node concept="liA8E" id="7_KjZP9j2Zk" role="2OqNvi">
                <ref role="37wK5l" to="3bo0:1iOpS24Am6k" resolve="fireRelayout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7_KjZP9j2Zl" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7_KjZP9j2Zm" role="jymVt" />
      <node concept="3clFb_" id="7_KjZP9j2Zn" role="jymVt">
        <property role="TrG5h" value="completeAt" />
        <node concept="3Tm1VV" id="7_KjZP9j2Zo" role="1B3o_S" />
        <node concept="3cqZAl" id="7_KjZP9j2Zp" role="3clF45" />
        <node concept="37vLTG" id="7_KjZP9j2Zq" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="7_KjZP9j2Zr" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7_KjZP9j2Zs" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="7_KjZP9j2Zt" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="7_KjZP9j2Zu" role="3clF47">
          <node concept="3cpWs8" id="7_KjZP9lwRq" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9lwRr" role="3cpWs9">
              <property role="TrG5h" value="port" />
              <node concept="16syzq" id="7_KjZP9lwRs" role="1tU5fm">
                <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
              </node>
              <node concept="2OqwBi" id="7_KjZP9lwRt" role="33vP2m">
                <node concept="37vLTw" id="7_KjZP9lwRu" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                </node>
                <node concept="liA8E" id="7_KjZP9lwRv" role="2OqNvi">
                  <ref role="37wK5l" node="7_KjZP9jaQA" resolve="findPort" />
                  <node concept="37vLTw" id="7_KjZP9lwRw" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP9j2Zq" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="7_KjZP9lwRx" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP9j2Zs" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4O0ojQpXnNd" role="3cqZAp">
            <node concept="3clFbS" id="4O0ojQpXnNf" role="3clFbx">
              <node concept="3cpWs8" id="7_KjZP9lwRy" role="3cqZAp">
                <node concept="3cpWsn" id="7_KjZP9lwRz" role="3cpWs9">
                  <property role="TrG5h" value="portSettings" />
                  <node concept="3uibUv" id="7_KjZP9lwR$" role="1tU5fm">
                    <ref role="3uigEE" node="2JpbWDsQSwS" resolve="PortController" />
                  </node>
                  <node concept="2OqwBi" id="7_KjZP9lwR_" role="33vP2m">
                    <node concept="37vLTw" id="7_KjZP9lwRA" role="2Oq$k0">
                      <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                    </node>
                    <node concept="liA8E" id="7_KjZP9lwRB" role="2OqNvi">
                      <ref role="37wK5l" node="3vyG44Arcu2" resolve="getPortController" />
                      <node concept="37vLTw" id="7_KjZP9lwRC" role="37wK5m">
                        <ref role="3cqZAo" node="7_KjZP9lwRr" resolve="port" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7_KjZP9lwRG" role="3cqZAp">
                <node concept="3clFbS" id="7_KjZP9lwRH" role="3clFbx">
                  <node concept="3clFbF" id="7_KjZP9j2Zv" role="3cqZAp">
                    <node concept="2OqwBi" id="7_KjZP9j2Zw" role="3clFbG">
                      <node concept="2OqwBi" id="7_KjZP9j2Zx" role="2Oq$k0">
                        <node concept="2OqwBi" id="7_KjZP9j2Zy" role="2Oq$k0">
                          <node concept="2OqwBi" id="7_KjZP9j2Zz" role="2Oq$k0">
                            <node concept="37vLTw" id="7_KjZP9j2Z$" role="2Oq$k0">
                              <ref role="3cqZAo" node="7_KjZP9hsMT" resolve="myScene" />
                            </node>
                            <node concept="liA8E" id="7_KjZP9j2Z_" role="2OqNvi">
                              <ref role="37wK5l" to="3bo0:7sG$k3BQmmw" resolve="getContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7_KjZP9j2ZA" role="2OqNvi">
                            <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7_KjZP9j2ZB" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7_KjZP9j2ZC" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.executeCommandInEDT(java.lang.Runnable)" resolve="executeCommandInEDT" />
                        <node concept="1bVj0M" id="7_KjZP9j2ZD" role="37wK5m">
                          <node concept="3clFbS" id="7_KjZP9j2ZE" role="1bW5cS">
                            <node concept="3clFbF" id="7_KjZP9j2ZF" role="3cqZAp">
                              <node concept="2OqwBi" id="7_KjZP9j2ZG" role="3clFbG">
                                <node concept="37vLTw" id="7_KjZP9j2ZH" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7_KjZP9eRe1" resolve="myConnectionSyncronizer" />
                                </node>
                                <node concept="liA8E" id="7_KjZP9j2ZI" role="2OqNvi">
                                  <ref role="37wK5l" node="7_KjZP9eIiw" resolve="setPath" />
                                  <node concept="2OqwBi" id="7_KjZP9j2ZJ" role="37wK5m">
                                    <node concept="37vLTw" id="7_KjZP9j2ZK" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7_KjZP9j2Yn" resolve="myEntry" />
                                    </node>
                                    <node concept="2OwXpG" id="7_KjZP9j2ZL" role="2OqNvi">
                                      <ref role="2Oxat5" node="7_KjZP9ek_0" resolve="myConnection" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="7_KjZP9j2ZM" role="37wK5m">
                                    <node concept="37vLTw" id="7_KjZP9j2ZN" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7_KjZP9j2Yi" resolve="myPathTransformation" />
                                    </node>
                                    <node concept="liA8E" id="7_KjZP9j2ZO" role="2OqNvi">
                                      <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                                      <node concept="2OqwBi" id="7_KjZP9l$8u" role="37wK5m">
                                        <node concept="37vLTw" id="7_KjZP9lzim" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7_KjZP9lwRz" resolve="portSettings" />
                                        </node>
                                        <node concept="liA8E" id="7_KjZP9l$t6" role="2OqNvi">
                                          <ref role="37wK5l" node="1iOpS255UuU" resolve="getModelEndpointPosition" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbH" id="4y$DvIWbIg$" role="3cqZAp" />
                            <node concept="3clFbF" id="4y$DvIWbMd2" role="3cqZAp">
                              <node concept="2OqwBi" id="4y$DvIWbMd3" role="3clFbG">
                                <node concept="37vLTw" id="4y$DvIWbMd4" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                                </node>
                                <node concept="liA8E" id="4y$DvIWbMd5" role="2OqNvi">
                                  <ref role="37wK5l" node="4y$DvIW7$nR" resolve="setSource" />
                                  <node concept="2OqwBi" id="4y$DvIWbMd6" role="37wK5m">
                                    <node concept="37vLTw" id="4y$DvIWbMd7" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7_KjZP9j2Yn" resolve="myEntry" />
                                    </node>
                                    <node concept="2OwXpG" id="4y$DvIWbMd8" role="2OqNvi">
                                      <ref role="2Oxat5" node="7_KjZP9ek_0" resolve="myConnection" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="4y$DvIWbMd9" role="37wK5m">
                                    <ref role="3cqZAo" node="7_KjZP9lwRr" resolve="port" />
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
                <node concept="2OqwBi" id="7_KjZP9lwRO" role="3clFbw">
                  <node concept="37vLTw" id="7_KjZP9lwRP" role="2Oq$k0">
                    <ref role="3cqZAo" node="7_KjZP9lwRz" resolve="portSettings" />
                  </node>
                  <node concept="liA8E" id="7_KjZP9lwRQ" role="2OqNvi">
                    <ref role="37wK5l" node="1KCfUoKSijC" resolve="canBeSourcedAt" />
                    <node concept="37vLTw" id="7_KjZP9lwRR" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP9j2Zq" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="7_KjZP9lwRS" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP9j2Zs" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="4O0ojQpXqaj" role="3clFbw">
              <node concept="10Nm6u" id="4O0ojQpXqf9" role="3uHU7w" />
              <node concept="37vLTw" id="4O0ojQpXody" role="3uHU7B">
                <ref role="3cqZAo" node="7_KjZP9lwRr" resolve="port" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7_KjZP9j2ZT" role="3cqZAp">
            <node concept="37vLTI" id="7_KjZP9j2ZU" role="3clFbG">
              <node concept="10Nm6u" id="7_KjZP9j2ZV" role="37vLTx" />
              <node concept="2OqwBi" id="7_KjZP9j2ZW" role="37vLTJ">
                <node concept="37vLTw" id="7_KjZP9j2ZY" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9j2Yn" resolve="myEntry" />
                </node>
                <node concept="2OwXpG" id="7_KjZP9j300" role="2OqNvi">
                  <ref role="2Oxat5" node="7_KjZP9glio" resolve="myTransformedPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7_KjZP9j301" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7_KjZP9j302" role="1B3o_S" />
      <node concept="3uibUv" id="7_KjZP9j303" role="EKbjA">
        <ref role="3uigEE" to="rvgs:2_D_3xWXMp$" resolve="DragEventHandler" />
      </node>
    </node>
    <node concept="2tJIrI" id="7_KjZP9nwEi" role="jymVt" />
    <node concept="312cEu" id="7_KjZP9lKbr" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="ConnectionTargetChangeDragEventHandler" />
      <node concept="312cEg" id="7_KjZP9lKbs" role="jymVt">
        <property role="TrG5h" value="myPathTransformation" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="7_KjZP9lKbt" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
          <node concept="3uibUv" id="7_KjZP9lKbu" role="11_B2D">
            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
          </node>
          <node concept="16syzq" id="7_KjZP9lKbv" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
          </node>
        </node>
        <node concept="3Tm6S6" id="7_KjZP9lKbw" role="1B3o_S" />
      </node>
      <node concept="312cEg" id="7_KjZP9lKbx" role="jymVt">
        <property role="TrG5h" value="myEntry" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7_KjZP9lKby" role="1B3o_S" />
        <node concept="3uibUv" id="7_KjZP9lKbz" role="1tU5fm">
          <ref role="3uigEE" node="7_KjZP9d656" resolve="ConnectionEntry" />
          <node concept="16syzq" id="4y$DvIXdCiF" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
          </node>
          <node concept="16syzq" id="4y$DvIXdCiG" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
          </node>
          <node concept="16syzq" id="4y$DvIX9gyc" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
          </node>
          <node concept="16syzq" id="4y$DvIX9gyd" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
          </node>
          <node concept="16syzq" id="4y$DvIX9gye" role="11_B2D">
            <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7_KjZP9lKb$" role="jymVt" />
      <node concept="3clFbW" id="7_KjZP9lKb_" role="jymVt">
        <node concept="3cqZAl" id="7_KjZP9lKbA" role="3clF45" />
        <node concept="3Tm6S6" id="7_KjZP9lKbB" role="1B3o_S" />
        <node concept="3clFbS" id="7_KjZP9lKbC" role="3clF47">
          <node concept="3clFbF" id="7_KjZP9lKbD" role="3cqZAp">
            <node concept="37vLTI" id="7_KjZP9lKbE" role="3clFbG">
              <node concept="37vLTw" id="7_KjZP9lKbF" role="37vLTx">
                <ref role="3cqZAo" node="7_KjZP9lKbV" resolve="pathTransformation" />
              </node>
              <node concept="37vLTw" id="7_KjZP9lKbG" role="37vLTJ">
                <ref role="3cqZAo" node="7_KjZP9lKbs" resolve="myPathTransformation" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7_KjZP9lKbH" role="3cqZAp">
            <node concept="37vLTI" id="7_KjZP9lKbI" role="3clFbG">
              <node concept="37vLTw" id="7_KjZP9lKbJ" role="37vLTJ">
                <ref role="3cqZAo" node="7_KjZP9lKbx" resolve="myEntry" />
              </node>
              <node concept="37vLTw" id="7_KjZP9lKbK" role="37vLTx">
                <ref role="3cqZAo" node="7_KjZP9lKbZ" resolve="entry" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7_KjZP9mJCd" role="3cqZAp">
            <node concept="1rXfSq" id="7_KjZP9mJCe" role="3clFbG">
              <ref role="37wK5l" node="7_KjZP9lKc2" resolve="dragTo" />
              <node concept="37vLTw" id="7_KjZP9mJCf" role="37wK5m">
                <ref role="3cqZAo" node="7_KjZP9mJpo" resolve="initialX" />
              </node>
              <node concept="37vLTw" id="7_KjZP9mJCg" role="37wK5m">
                <ref role="3cqZAo" node="7_KjZP9mJpq" resolve="initialY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7_KjZP9mJpo" role="3clF46">
          <property role="TrG5h" value="initialX" />
          <node concept="10Oyi0" id="7_KjZP9mJpp" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7_KjZP9mJpq" role="3clF46">
          <property role="TrG5h" value="initialY" />
          <node concept="10Oyi0" id="7_KjZP9mJpr" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7_KjZP9lKbV" role="3clF46">
          <property role="TrG5h" value="pathTransformation" />
          <node concept="3uibUv" id="7_KjZP9lKbW" role="1tU5fm">
            <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
            <node concept="3uibUv" id="7_KjZP9lKbX" role="11_B2D">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
            <node concept="16syzq" id="7_KjZP9lKbY" role="11_B2D">
              <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7_KjZP9lKbZ" role="3clF46">
          <property role="TrG5h" value="entry" />
          <node concept="3uibUv" id="7_KjZP9lKc0" role="1tU5fm">
            <ref role="3uigEE" node="7_KjZP9d656" resolve="ConnectionEntry" />
            <node concept="16syzq" id="4y$DvIXdCW4" role="11_B2D">
              <ref role="16sUi3" node="4y$DvIW0XJW" resolve="CompT" />
            </node>
            <node concept="16syzq" id="4y$DvIXdCW5" role="11_B2D">
              <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
            </node>
            <node concept="16syzq" id="4y$DvIXa7Mf" role="11_B2D">
              <ref role="16sUi3" node="4y$DvIW24c4" resolve="ConnT" />
            </node>
            <node concept="16syzq" id="4y$DvIXa7Mg" role="11_B2D">
              <ref role="16sUi3" node="7_KjZP9bCID" resolve="CursorT" />
            </node>
            <node concept="16syzq" id="4y$DvIXa7Mh" role="11_B2D">
              <ref role="16sUi3" node="7_KjZP9bKhr" resolve="PathT" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="7_KjZP9lKc1" role="jymVt" />
      <node concept="3clFb_" id="7_KjZP9lKc2" role="jymVt">
        <property role="TrG5h" value="dragTo" />
        <node concept="3Tm1VV" id="7_KjZP9lKc3" role="1B3o_S" />
        <node concept="3cqZAl" id="7_KjZP9lKc4" role="3clF45" />
        <node concept="37vLTG" id="7_KjZP9lKc5" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="7_KjZP9lKc6" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7_KjZP9lKc7" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="7_KjZP9lKc8" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="7_KjZP9lKc9" role="3clF47">
          <node concept="3cpWs8" id="7_KjZP9lKca" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9lKcb" role="3cpWs9">
              <property role="TrG5h" value="port" />
              <node concept="16syzq" id="7_KjZP9lKcc" role="1tU5fm">
                <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
              </node>
              <node concept="2OqwBi" id="7_KjZP9lKcd" role="33vP2m">
                <node concept="37vLTw" id="7_KjZP9lKce" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                </node>
                <node concept="liA8E" id="7_KjZP9lKcf" role="2OqNvi">
                  <ref role="37wK5l" node="7_KjZP9jaQA" resolve="findPort" />
                  <node concept="37vLTw" id="7_KjZP9lKcg" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP9lKc5" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="7_KjZP9lKch" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP9lKc7" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7_KjZP9lKci" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9lKcj" role="3cpWs9">
              <property role="TrG5h" value="portSettings" />
              <node concept="3uibUv" id="7_KjZP9lKck" role="1tU5fm">
                <ref role="3uigEE" node="2JpbWDsQSwS" resolve="PortController" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7_KjZP9lKcp" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9lKcq" role="3cpWs9">
              <property role="TrG5h" value="target" />
              <node concept="3uibUv" id="7_KjZP9lKcr" role="1tU5fm">
                <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="7_KjZP9lKcs" role="3cqZAp">
            <node concept="3clFbS" id="7_KjZP9lKct" role="3clFbx">
              <node concept="3clFbF" id="7_KjZP9lKcu" role="3cqZAp">
                <node concept="37vLTI" id="7_KjZP9lKcv" role="3clFbG">
                  <node concept="2OqwBi" id="7_KjZP9lKcw" role="37vLTx">
                    <node concept="37vLTw" id="7_KjZP9lKcx" role="2Oq$k0">
                      <ref role="3cqZAo" node="7_KjZP9lKcj" resolve="portSettings" />
                    </node>
                    <node concept="liA8E" id="7_KjZP9lKcy" role="2OqNvi">
                      <ref role="37wK5l" node="1iOpS255UuU" resolve="getModelEndpointPosition" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7_KjZP9lKcz" role="37vLTJ">
                    <ref role="3cqZAo" node="7_KjZP9lKcq" resolve="target" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="4O0ojQpXyiJ" role="3clFbw">
              <node concept="1Wc70l" id="4O0ojQpXyx7" role="3uHU7B">
                <node concept="3y3z36" id="4O0ojQpXB$o" role="3uHU7w">
                  <node concept="10Nm6u" id="4O0ojQpXBJJ" role="3uHU7w" />
                  <node concept="1eOMI4" id="4O0ojQpXyY1" role="3uHU7B">
                    <node concept="37vLTI" id="4O0ojQpXwPF" role="1eOMHV">
                      <node concept="2OqwBi" id="7_KjZP9lKcl" role="37vLTx">
                        <node concept="37vLTw" id="7_KjZP9lKcm" role="2Oq$k0">
                          <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                        </node>
                        <node concept="liA8E" id="7_KjZP9lKcn" role="2OqNvi">
                          <ref role="37wK5l" node="3vyG44Arcu2" resolve="getPortController" />
                          <node concept="37vLTw" id="7_KjZP9lKco" role="37wK5m">
                            <ref role="3cqZAo" node="7_KjZP9lKcb" resolve="port" />
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTw" id="4O0ojQpXwPJ" role="37vLTJ">
                        <ref role="3cqZAo" node="7_KjZP9lKcj" resolve="portSettings" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="4O0ojQpXyL$" role="3uHU7B">
                  <node concept="10Nm6u" id="4O0ojQpXyS8" role="3uHU7w" />
                  <node concept="37vLTw" id="4O0ojQpXyAZ" role="3uHU7B">
                    <ref role="3cqZAo" node="7_KjZP9lKcb" resolve="port" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7_KjZP9lKc$" role="3uHU7w">
                <node concept="37vLTw" id="7_KjZP9lKc_" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9lKcj" resolve="portSettings" />
                </node>
                <node concept="liA8E" id="7_KjZP9lKcA" role="2OqNvi">
                  <ref role="37wK5l" node="1KCfUoKSE03" resolve="canBeTargetedAt" />
                  <node concept="37vLTw" id="7_KjZP9lKcB" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP9lKc5" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="7_KjZP9lKcC" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP9lKc7" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="9aQIb" id="7_KjZP9lKcD" role="9aQIa">
              <node concept="3clFbS" id="7_KjZP9lKcE" role="9aQI4">
                <node concept="3clFbF" id="7_KjZP9lKcF" role="3cqZAp">
                  <node concept="37vLTI" id="7_KjZP9lKcG" role="3clFbG">
                    <node concept="37vLTw" id="7_KjZP9lKcH" role="37vLTJ">
                      <ref role="3cqZAo" node="7_KjZP9lKcq" resolve="target" />
                    </node>
                    <node concept="2ShNRf" id="7_KjZP9lKcI" role="37vLTx">
                      <node concept="1pGfFk" id="7_KjZP9lKcJ" role="2ShVmc">
                        <ref role="37wK5l" to="z60i:~Point.&lt;init&gt;(int,int)" resolve="Point" />
                        <node concept="37vLTw" id="7_KjZP9lKcK" role="37wK5m">
                          <ref role="3cqZAo" node="7_KjZP9lKc5" resolve="x" />
                        </node>
                        <node concept="37vLTw" id="7_KjZP9lKcL" role="37wK5m">
                          <ref role="3cqZAo" node="7_KjZP9lKc7" resolve="y" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7_KjZP9lKcM" role="3cqZAp">
            <node concept="37vLTI" id="7_KjZP9lKcN" role="3clFbG">
              <node concept="2OqwBi" id="7_KjZP9lKcO" role="37vLTx">
                <node concept="37vLTw" id="7_KjZP9lKcP" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9lKbs" resolve="myPathTransformation" />
                </node>
                <node concept="liA8E" id="7_KjZP9lKcQ" role="2OqNvi">
                  <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                  <node concept="37vLTw" id="7_KjZP9lKcR" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP9lKcq" resolve="target" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7_KjZP9lKcS" role="37vLTJ">
                <node concept="37vLTw" id="7_KjZP9lKcU" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9lKbx" resolve="myEntry" />
                </node>
                <node concept="2OwXpG" id="7_KjZP9lKcW" role="2OqNvi">
                  <ref role="2Oxat5" node="7_KjZP9glio" resolve="myTransformedPath" />
                </node>
              </node>
            </node>
            <node concept="15s5l7" id="4y$DvIXesng" role="lGtFl">
              <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;" />
            </node>
          </node>
          <node concept="3clFbF" id="7_KjZP9lKcX" role="3cqZAp">
            <node concept="2OqwBi" id="7_KjZP9lKcY" role="3clFbG">
              <node concept="37vLTw" id="7_KjZP9lKcZ" role="2Oq$k0">
                <ref role="3cqZAo" node="7_KjZP9hsMT" resolve="myScene" />
              </node>
              <node concept="liA8E" id="7_KjZP9lKd0" role="2OqNvi">
                <ref role="37wK5l" to="3bo0:1iOpS24Am6k" resolve="fireRelayout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7_KjZP9lKd1" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7_KjZP9lKd2" role="jymVt" />
      <node concept="3clFb_" id="7_KjZP9lKd3" role="jymVt">
        <property role="TrG5h" value="completeAt" />
        <node concept="3Tm1VV" id="7_KjZP9lKd4" role="1B3o_S" />
        <node concept="3cqZAl" id="7_KjZP9lKd5" role="3clF45" />
        <node concept="37vLTG" id="7_KjZP9lKd6" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="7_KjZP9lKd7" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="7_KjZP9lKd8" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="7_KjZP9lKd9" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="7_KjZP9lKda" role="3clF47">
          <node concept="3cpWs8" id="7_KjZP9lKdb" role="3cqZAp">
            <node concept="3cpWsn" id="7_KjZP9lKdc" role="3cpWs9">
              <property role="TrG5h" value="port" />
              <node concept="16syzq" id="7_KjZP9lKdd" role="1tU5fm">
                <ref role="16sUi3" node="7_KjZP9djPD" resolve="PortT" />
              </node>
              <node concept="2OqwBi" id="7_KjZP9lKde" role="33vP2m">
                <node concept="37vLTw" id="7_KjZP9lKdf" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                </node>
                <node concept="liA8E" id="7_KjZP9lKdg" role="2OqNvi">
                  <ref role="37wK5l" node="7_KjZP9jaQA" resolve="findPort" />
                  <node concept="37vLTw" id="7_KjZP9lKdh" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP9lKd6" resolve="x" />
                  </node>
                  <node concept="37vLTw" id="7_KjZP9lKdi" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP9lKd8" resolve="y" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="4O0ojQpXsU6" role="3cqZAp">
            <node concept="3clFbS" id="4O0ojQpXsU8" role="3clFbx">
              <node concept="3cpWs8" id="7_KjZP9lKdj" role="3cqZAp">
                <node concept="3cpWsn" id="7_KjZP9lKdk" role="3cpWs9">
                  <property role="TrG5h" value="portSettings" />
                  <node concept="3uibUv" id="7_KjZP9lKdl" role="1tU5fm">
                    <ref role="3uigEE" node="2JpbWDsQSwS" resolve="PortController" />
                  </node>
                  <node concept="2OqwBi" id="7_KjZP9lKdm" role="33vP2m">
                    <node concept="37vLTw" id="7_KjZP9lKdn" role="2Oq$k0">
                      <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                    </node>
                    <node concept="liA8E" id="7_KjZP9lKdo" role="2OqNvi">
                      <ref role="37wK5l" node="3vyG44Arcu2" resolve="getPortController" />
                      <node concept="37vLTw" id="7_KjZP9lKdp" role="37wK5m">
                        <ref role="3cqZAo" node="7_KjZP9lKdc" resolve="port" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="7_KjZP9lKdq" role="3cqZAp">
                <node concept="3clFbS" id="7_KjZP9lKdr" role="3clFbx">
                  <node concept="3clFbF" id="7_KjZP9lKds" role="3cqZAp">
                    <node concept="2OqwBi" id="7_KjZP9lKdt" role="3clFbG">
                      <node concept="2OqwBi" id="7_KjZP9lKdu" role="2Oq$k0">
                        <node concept="2OqwBi" id="7_KjZP9lKdv" role="2Oq$k0">
                          <node concept="2OqwBi" id="7_KjZP9lKdw" role="2Oq$k0">
                            <node concept="37vLTw" id="7_KjZP9lKdx" role="2Oq$k0">
                              <ref role="3cqZAo" node="7_KjZP9hsMT" resolve="myScene" />
                            </node>
                            <node concept="liA8E" id="7_KjZP9lKdy" role="2OqNvi">
                              <ref role="37wK5l" to="3bo0:7sG$k3BQmmw" resolve="getContext" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7_KjZP9lKdz" role="2OqNvi">
                            <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7_KjZP9lKd$" role="2OqNvi">
                          <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7_KjZP9lKd_" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.executeCommandInEDT(java.lang.Runnable)" resolve="executeCommandInEDT" />
                        <node concept="1bVj0M" id="7_KjZP9lKdA" role="37wK5m">
                          <node concept="3clFbS" id="7_KjZP9lKdB" role="1bW5cS">
                            <node concept="3clFbF" id="7_KjZP9lKdC" role="3cqZAp">
                              <node concept="2OqwBi" id="7_KjZP9lKdD" role="3clFbG">
                                <node concept="37vLTw" id="7_KjZP9lKdE" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7_KjZP9eRe1" resolve="myConnectionSyncronizer" />
                                </node>
                                <node concept="liA8E" id="7_KjZP9lKdF" role="2OqNvi">
                                  <ref role="37wK5l" node="7_KjZP9eIiw" resolve="setPath" />
                                  <node concept="2OqwBi" id="7_KjZP9lKdG" role="37wK5m">
                                    <node concept="37vLTw" id="7_KjZP9lKdH" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7_KjZP9lKbx" resolve="myEntry" />
                                    </node>
                                    <node concept="2OwXpG" id="7_KjZP9lKdI" role="2OqNvi">
                                      <ref role="2Oxat5" node="7_KjZP9ek_0" resolve="myConnection" />
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="7_KjZP9lKdJ" role="37wK5m">
                                    <node concept="37vLTw" id="7_KjZP9lKdK" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7_KjZP9lKbs" resolve="myPathTransformation" />
                                    </node>
                                    <node concept="liA8E" id="7_KjZP9lKdL" role="2OqNvi">
                                      <ref role="37wK5l" to="82uw:~Function.apply(java.lang.Object)" resolve="apply" />
                                      <node concept="2OqwBi" id="7_KjZP9lKdM" role="37wK5m">
                                        <node concept="37vLTw" id="7_KjZP9lKdN" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7_KjZP9lKdk" resolve="portSettings" />
                                        </node>
                                        <node concept="liA8E" id="7_KjZP9lKdO" role="2OqNvi">
                                          <ref role="37wK5l" node="1iOpS255UuU" resolve="getModelEndpointPosition" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="4y$DvIW7mR5" role="3cqZAp">
                              <node concept="2OqwBi" id="4y$DvIW7ni0" role="3clFbG">
                                <node concept="37vLTw" id="4y$DvIW7mR3" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7_KjZP9iXjm" resolve="myDiagramController" />
                                </node>
                                <node concept="liA8E" id="4y$DvIWbICa" role="2OqNvi">
                                  <ref role="37wK5l" node="4y$DvIW7_8W" resolve="setTarget" />
                                  <node concept="2OqwBi" id="4y$DvIWbJxL" role="37wK5m">
                                    <node concept="37vLTw" id="4y$DvIWbJxM" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7_KjZP9lKbx" resolve="myEntry" />
                                    </node>
                                    <node concept="2OwXpG" id="4y$DvIWbJxN" role="2OqNvi">
                                      <ref role="2Oxat5" node="7_KjZP9ek_0" resolve="myConnection" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="4y$DvIWbKh0" role="37wK5m">
                                    <ref role="3cqZAo" node="7_KjZP9lKdc" resolve="port" />
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
                <node concept="2OqwBi" id="7_KjZP9lKe4" role="3clFbw">
                  <node concept="37vLTw" id="7_KjZP9lKe5" role="2Oq$k0">
                    <ref role="3cqZAo" node="7_KjZP9lKdk" resolve="portSettings" />
                  </node>
                  <node concept="liA8E" id="7_KjZP9lKe6" role="2OqNvi">
                    <ref role="37wK5l" node="1KCfUoKSE03" resolve="canBeTargetedAt" />
                    <node concept="37vLTw" id="7_KjZP9lKe7" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP9lKd6" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="7_KjZP9lKe8" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP9lKd8" resolve="y" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="4O0ojQpXv3L" role="3clFbw">
              <node concept="10Nm6u" id="4O0ojQpXv8B" role="3uHU7w" />
              <node concept="37vLTw" id="4O0ojQpXsZW" role="3uHU7B">
                <ref role="3cqZAo" node="7_KjZP9lKdc" resolve="port" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7_KjZP9lKdW" role="3cqZAp">
            <node concept="37vLTI" id="7_KjZP9lKdX" role="3clFbG">
              <node concept="10Nm6u" id="7_KjZP9lKdY" role="37vLTx" />
              <node concept="2OqwBi" id="7_KjZP9lKdZ" role="37vLTJ">
                <node concept="37vLTw" id="7_KjZP9lKe1" role="2Oq$k0">
                  <ref role="3cqZAo" node="7_KjZP9lKbx" resolve="myEntry" />
                </node>
                <node concept="2OwXpG" id="7_KjZP9lKe3" role="2OqNvi">
                  <ref role="2Oxat5" node="7_KjZP9glio" resolve="myTransformedPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7_KjZP9lKe9" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7_KjZP9lKea" role="1B3o_S" />
      <node concept="3uibUv" id="7_KjZP9lKeb" role="EKbjA">
        <ref role="3uigEE" to="rvgs:2_D_3xWXMp$" resolve="DragEventHandler" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2JpbWDsQSWB" role="1B3o_S" />
    <node concept="16euLQ" id="4y$DvIW0XJW" role="16eVyc">
      <property role="TrG5h" value="CompT" />
    </node>
    <node concept="16euLQ" id="7_KjZP9djPD" role="16eVyc">
      <property role="TrG5h" value="PortT" />
    </node>
    <node concept="16euLQ" id="4y$DvIW24c4" role="16eVyc">
      <property role="TrG5h" value="ConnT" />
    </node>
    <node concept="16euLQ" id="7_KjZP9bCID" role="16eVyc">
      <property role="TrG5h" value="CursorT" />
    </node>
    <node concept="16euLQ" id="7_KjZP9bKhr" role="16eVyc">
      <property role="TrG5h" value="PathT" />
    </node>
  </node>
  <node concept="3HP615" id="2JpbWDsQT0H">
    <property role="TrG5h" value="DiagramController" />
    <node concept="2tJIrI" id="1gL472DM18k" role="jymVt" />
    <node concept="3clFb_" id="3vyG44Arcu2" role="jymVt">
      <property role="TrG5h" value="getPortController" />
      <node concept="3clFbS" id="3vyG44Arcu5" role="3clF47" />
      <node concept="3Tm1VV" id="3vyG44Arcu6" role="1B3o_S" />
      <node concept="3uibUv" id="3vyG44ArcnD" role="3clF45">
        <ref role="3uigEE" node="2JpbWDsQSwS" resolve="PortController" />
      </node>
      <node concept="37vLTG" id="3vyG44ArcvK" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="16syzq" id="3vyG44ArWnj" role="1tU5fm">
          <ref role="16sUi3" node="2JpbWDsQT5J" resolve="PortT" />
        </node>
        <node concept="2AHcQZ" id="3vyG44Arcxu" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3vyG44Arcy$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="7_KjZP9jaOs" role="jymVt" />
    <node concept="3clFb_" id="7_KjZP9jaQA" role="jymVt">
      <property role="TrG5h" value="findPort" />
      <node concept="3clFbS" id="7_KjZP9jaQD" role="3clF47" />
      <node concept="3Tm1VV" id="7_KjZP9jaQE" role="1B3o_S" />
      <node concept="16syzq" id="7_KjZP9jaQ3" role="3clF45">
        <ref role="16sUi3" node="2JpbWDsQT5J" resolve="PortT" />
      </node>
      <node concept="37vLTG" id="7_KjZP9jaRW" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="7_KjZP9jaRV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7_KjZP9jaSY" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="7_KjZP9jaUa" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="4O0ojQpH38B" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpH2M8" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW8k5O" role="jymVt">
      <property role="TrG5h" value="getComponents" />
      <node concept="3clFbS" id="4y$DvIW8k5R" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIW8k5S" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIW8jZ6" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="16syzq" id="4y$DvIW8k3E" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpH2Vm" resolve="CompT" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIW8kb1" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW8ki4" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW8kkR" role="jymVt">
      <property role="TrG5h" value="getConnections" />
      <node concept="3clFbS" id="4y$DvIW8kkS" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIW8kkT" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIW8kkU" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="16syzq" id="4y$DvIW8kHU" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHj27" resolve="ConnT" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIW8kkW" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW8jVb" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQpH2Qa" role="jymVt">
      <property role="TrG5h" value="getPorts" />
      <node concept="3clFbS" id="4O0ojQpH2Qd" role="3clF47" />
      <node concept="3Tm1VV" id="4O0ojQpH2Qe" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQpH2NJ" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="16syzq" id="4O0ojQpH2PB" role="11_B2D">
          <ref role="16sUi3" node="2JpbWDsQT5J" resolve="PortT" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4O0ojQpH36P" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="4O0ojQpH3aM" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="4O0ojQpH3aL" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpH2Vm" resolve="CompT" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQpH3cd" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW8jBk" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQpH31L" role="jymVt">
      <property role="TrG5h" value="getComponent" />
      <node concept="37vLTG" id="4y$DvIW8jPv" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="16syzq" id="4y$DvIW8jPw" role="1tU5fm">
          <ref role="16sUi3" node="2JpbWDsQT5J" resolve="PortT" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW8jPx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4O0ojQpH31O" role="3clF47" />
      <node concept="3Tm1VV" id="4O0ojQpH31P" role="1B3o_S" />
      <node concept="16syzq" id="4O0ojQpH30m" role="3clF45">
        <ref role="16sUi3" node="4O0ojQpH2Vm" resolve="CompT" />
      </node>
      <node concept="2AHcQZ" id="4O0ojQpH33w" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpINpB" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQpINv1" role="jymVt">
      <property role="TrG5h" value="getSource" />
      <node concept="37vLTG" id="4O0ojQpINyK" role="3clF46">
        <property role="TrG5h" value="edge" />
        <node concept="16syzq" id="4O0ojQpIN_i" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpHj27" resolve="ConnT" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQpINyM" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4O0ojQpINv4" role="3clF47" />
      <node concept="3Tm1VV" id="4O0ojQpINv5" role="1B3o_S" />
      <node concept="16syzq" id="4O0ojQpINud" role="3clF45">
        <ref role="16sUi3" node="2JpbWDsQT5J" resolve="PortT" />
      </node>
      <node concept="2AHcQZ" id="4O0ojQpINK8" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW7$sA" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW7$nR" role="jymVt">
      <property role="TrG5h" value="setSource" />
      <node concept="37vLTG" id="4y$DvIW7$nS" role="3clF46">
        <property role="TrG5h" value="edge" />
        <node concept="16syzq" id="4y$DvIW7$nT" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpHj27" resolve="ConnT" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW7$nU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIW7$N9" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="16syzq" id="4y$DvIW7$R5" role="1tU5fm">
          <ref role="16sUi3" node="2JpbWDsQT5J" resolve="PortT" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW7_4T" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIW7$nV" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIW7$nW" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIW7$Zt" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4O0ojQpINCs" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQpINEG" role="jymVt">
      <property role="TrG5h" value="getTarget" />
      <node concept="37vLTG" id="4O0ojQpINEH" role="3clF46">
        <property role="TrG5h" value="edge" />
        <node concept="16syzq" id="4O0ojQpINEI" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpHj27" resolve="ConnT" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQpINEJ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4O0ojQpINEK" role="3clF47" />
      <node concept="3Tm1VV" id="4O0ojQpINEL" role="1B3o_S" />
      <node concept="16syzq" id="4O0ojQpINEM" role="3clF45">
        <ref role="16sUi3" node="2JpbWDsQT5J" resolve="PortT" />
      </node>
      <node concept="2AHcQZ" id="4O0ojQpINNk" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW7$JC" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW7_8W" role="jymVt">
      <property role="TrG5h" value="setTarget" />
      <node concept="37vLTG" id="4y$DvIW7_8X" role="3clF46">
        <property role="TrG5h" value="edge" />
        <node concept="16syzq" id="4y$DvIW7_8Y" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpHj27" resolve="ConnT" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW7_8Z" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIW7_90" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="16syzq" id="4y$DvIW7_91" role="1tU5fm">
          <ref role="16sUi3" node="2JpbWDsQT5J" resolve="PortT" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW7_92" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIW7_93" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIW7_94" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIW7_95" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4y$DvIW9Awd" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW9AEc" role="jymVt">
      <property role="TrG5h" value="removeEdge" />
      <node concept="37vLTG" id="4y$DvIW9AYY" role="3clF46">
        <property role="TrG5h" value="edge" />
        <node concept="16syzq" id="4y$DvIW9Bff" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpHj27" resolve="ConnT" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW9Bj4" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIW9AEf" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIW9AEg" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIW9AAa" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4y$DvIW9Bn7" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW9BxS" role="jymVt">
      <property role="TrG5h" value="addEdge" />
      <node concept="37vLTG" id="4y$DvIW9BCq" role="3clF46">
        <property role="TrG5h" value="sourcePort" />
        <node concept="16syzq" id="4y$DvIW9BCr" role="1tU5fm">
          <ref role="16sUi3" node="2JpbWDsQT5J" resolve="PortT" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW9BCs" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIW9BQ4" role="3clF46">
        <property role="TrG5h" value="targetPort" />
        <node concept="16syzq" id="4y$DvIW9BQ5" role="1tU5fm">
          <ref role="16sUi3" node="2JpbWDsQT5J" resolve="PortT" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW9BQ6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIW9BxV" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIW9BxW" role="1B3o_S" />
      <node concept="16syzq" id="4y$DvIWbZ1x" role="3clF45">
        <ref role="16sUi3" node="4O0ojQpHj27" resolve="ConnT" />
      </node>
      <node concept="2AHcQZ" id="4y$DvIWbZ4D" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2JpbWDsQT0I" role="1B3o_S" />
    <node concept="16euLQ" id="4O0ojQpH2Vm" role="16eVyc">
      <property role="TrG5h" value="CompT" />
    </node>
    <node concept="16euLQ" id="2JpbWDsQT5J" role="16eVyc">
      <property role="TrG5h" value="PortT" />
    </node>
    <node concept="16euLQ" id="4O0ojQpHj27" role="16eVyc">
      <property role="TrG5h" value="ConnT" />
    </node>
  </node>
  <node concept="312cEu" id="IMWzYPfMhW">
    <property role="TrG5h" value="ConnectionCursor" />
    <node concept="2tJIrI" id="IMWzYPfMjB" role="jymVt" />
    <node concept="312cEg" id="IMWzYPfMwd" role="jymVt">
      <property role="TrG5h" value="myConnection" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="IMWzYPfMki" role="1B3o_S" />
      <node concept="2AHcQZ" id="1gL472DUDl_" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="16syzq" id="4y$DvIW4sDD" role="1tU5fm">
        <ref role="16sUi3" node="IMWzYPfMmT" resolve="ConnT" />
      </node>
    </node>
    <node concept="2tJIrI" id="1gL472DUDER" role="jymVt" />
    <node concept="312cEg" id="IMWzYPfMzm" role="jymVt">
      <property role="TrG5h" value="myCursor" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="IMWzYPfMxL" role="1B3o_S" />
      <node concept="16syzq" id="IMWzYPfTwC" role="1tU5fm">
        <ref role="16sUi3" node="IMWzYPfSLC" resolve="CursorT" />
      </node>
      <node concept="2AHcQZ" id="1gL472DUE0g" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="IMWzYPfMzH" role="jymVt" />
    <node concept="2tJIrI" id="IMWzYPfMzS" role="jymVt" />
    <node concept="3Tm1VV" id="IMWzYPfMhX" role="1B3o_S" />
    <node concept="16euLQ" id="IMWzYPfMmT" role="16eVyc">
      <property role="TrG5h" value="ConnT" />
    </node>
    <node concept="16euLQ" id="IMWzYPfSLC" role="16eVyc">
      <property role="TrG5h" value="CursorT" />
    </node>
    <node concept="3clFbW" id="IMWzYPfM$_" role="jymVt">
      <node concept="3cqZAl" id="IMWzYPfM$A" role="3clF45" />
      <node concept="3Tm1VV" id="IMWzYPfM$B" role="1B3o_S" />
      <node concept="3clFbS" id="IMWzYPfM$D" role="3clF47">
        <node concept="3clFbF" id="IMWzYPfM$J" role="3cqZAp">
          <node concept="37vLTI" id="IMWzYPfM$L" role="3clFbG">
            <node concept="37vLTw" id="IMWzYPfM$S" role="37vLTx">
              <ref role="3cqZAo" node="IMWzYPfM$I" resolve="connection" />
            </node>
            <node concept="37vLTw" id="IMWzYPfMIT" role="37vLTJ">
              <ref role="3cqZAo" node="IMWzYPfMwd" resolve="myConnection" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="IMWzYPfM$V" role="3cqZAp">
          <node concept="37vLTI" id="IMWzYPfM$X" role="3clFbG">
            <node concept="37vLTw" id="IMWzYPfM_4" role="37vLTx">
              <ref role="3cqZAo" node="IMWzYPfM$U" resolve="cursor" />
            </node>
            <node concept="37vLTw" id="IMWzYPfMNy" role="37vLTJ">
              <ref role="3cqZAo" node="IMWzYPfMzm" resolve="myCursor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="IMWzYPfM$I" role="3clF46">
        <property role="TrG5h" value="connection" />
        <node concept="2AHcQZ" id="1gL472DUDhb" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="16syzq" id="4y$DvIW4t2P" role="1tU5fm">
          <ref role="16sUi3" node="IMWzYPfMmT" resolve="ConnT" />
        </node>
      </node>
      <node concept="37vLTG" id="IMWzYPfM$U" role="3clF46">
        <property role="TrG5h" value="cursor" />
        <node concept="16syzq" id="IMWzYPfVMp" role="1tU5fm">
          <ref role="16sUi3" node="IMWzYPfSLC" resolve="CursorT" />
        </node>
        <node concept="2AHcQZ" id="1gL472DUDkx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="IMWzYPfMOT" role="jymVt" />
    <node concept="3clFb_" id="IMWzYPfMTI" role="jymVt">
      <property role="TrG5h" value="getConnection" />
      <node concept="3Tm1VV" id="IMWzYPfMTM" role="1B3o_S" />
      <node concept="3clFbS" id="IMWzYPfMTN" role="3clF47">
        <node concept="3clFbF" id="IMWzYPfMTO" role="3cqZAp">
          <node concept="37vLTw" id="IMWzYPfMTH" role="3clFbG">
            <ref role="3cqZAo" node="IMWzYPfMwd" resolve="myConnection" />
          </node>
        </node>
      </node>
      <node concept="16syzq" id="4y$DvIW4tvA" role="3clF45">
        <ref role="16sUi3" node="IMWzYPfMmT" resolve="ConnT" />
      </node>
    </node>
    <node concept="2tJIrI" id="IMWzYPfMZB" role="jymVt" />
    <node concept="3clFb_" id="IMWzYPfMTQ" role="jymVt">
      <property role="TrG5h" value="getCursor" />
      <node concept="16syzq" id="IMWzYPfVQg" role="3clF45">
        <ref role="16sUi3" node="IMWzYPfSLC" resolve="CursorT" />
      </node>
      <node concept="3Tm1VV" id="IMWzYPfMTS" role="1B3o_S" />
      <node concept="3clFbS" id="IMWzYPfMTT" role="3clF47">
        <node concept="3clFbF" id="IMWzYPfMTU" role="3cqZAp">
          <node concept="37vLTw" id="IMWzYPfMTP" role="3clFbG">
            <ref role="3cqZAo" node="IMWzYPfMzm" resolve="myCursor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1gL472DUB_d" role="jymVt" />
    <node concept="3clFb_" id="1gL472DUBEc" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="1gL472DUBEd" role="3clF45" />
      <node concept="3Tm1VV" id="1gL472DUBEe" role="1B3o_S" />
      <node concept="3clFbS" id="1gL472DUBEf" role="3clF47">
        <node concept="3clFbJ" id="1gL472DUBEg" role="3cqZAp">
          <node concept="3clFbS" id="1gL472DUBEh" role="3clFbx">
            <node concept="3cpWs6" id="1gL472DUBEi" role="3cqZAp">
              <node concept="3clFbT" id="1gL472DUBEj" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="1gL472DUBEk" role="3clFbw">
            <node concept="Xjq3P" id="1gL472DUBEb" role="3uHU7B" />
            <node concept="37vLTw" id="1gL472DUBEl" role="3uHU7w">
              <ref role="3cqZAo" node="1gL472DUBEG" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1gL472DUBEm" role="3cqZAp">
          <node concept="3clFbS" id="1gL472DUBEn" role="3clFbx">
            <node concept="3cpWs6" id="1gL472DUBEo" role="3cqZAp">
              <node concept="3clFbT" id="1gL472DUBEp" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="1gL472DUJ2m" role="3clFbw">
            <node concept="1eOMI4" id="1gL472DUJ2o" role="3fr31v">
              <node concept="2ZW3vV" id="1gL472DUJFk" role="1eOMHV">
                <node concept="3uibUv" id="1gL472DUJKJ" role="2ZW6by">
                  <ref role="3uigEE" node="IMWzYPfMhW" resolve="ConnectionCursor" />
                </node>
                <node concept="37vLTw" id="1gL472DUJwl" role="2ZW6bz">
                  <ref role="3cqZAo" node="1gL472DUBEG" resolve="o" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1gL472DUBE_" role="3cqZAp" />
        <node concept="3cpWs8" id="1gL472DUBEA" role="3cqZAp">
          <node concept="3cpWsn" id="1gL472DUBEB" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="1gL472DUBEC" role="1tU5fm">
              <ref role="3uigEE" node="IMWzYPfMhW" resolve="ConnectionCursor" />
            </node>
            <node concept="10QFUN" id="1gL472DUBED" role="33vP2m">
              <node concept="3uibUv" id="1gL472DUBEE" role="10QFUM">
                <ref role="3uigEE" node="IMWzYPfMhW" resolve="ConnectionCursor" />
              </node>
              <node concept="37vLTw" id="1gL472DUBEF" role="10QFUP">
                <ref role="3cqZAo" node="1gL472DUBEG" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1gL472DUBEQ" role="3cqZAp">
          <node concept="3clFbS" id="1gL472DUBER" role="3clFbx">
            <node concept="3cpWs6" id="1gL472DUBES" role="3cqZAp">
              <node concept="3clFbT" id="1gL472DUBET" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="1gL472DUI5x" role="3clFbw">
            <node concept="2OqwBi" id="1gL472DUI5z" role="3fr31v">
              <node concept="liA8E" id="1gL472DUI5$" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                <node concept="2OqwBi" id="1gL472DUI5_" role="37wK5m">
                  <node concept="37vLTw" id="1gL472DUI5A" role="2Oq$k0">
                    <ref role="3cqZAo" node="1gL472DUBEB" resolve="that" />
                  </node>
                  <node concept="2OwXpG" id="1gL472DUI5B" role="2OqNvi">
                    <ref role="2Oxat5" node="IMWzYPfMwd" resolve="myConnection" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1gL472DUI5C" role="2Oq$k0">
                <ref role="3cqZAo" node="IMWzYPfMwd" resolve="myConnection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1gL472DUBF9" role="3cqZAp">
          <node concept="3clFbS" id="1gL472DUBFa" role="3clFbx">
            <node concept="3cpWs6" id="1gL472DUBFb" role="3cqZAp">
              <node concept="3clFbT" id="1gL472DUBFc" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="1gL472DUBFe" role="3clFbw">
            <node concept="2OqwBi" id="1gL472DUBFf" role="3fr31v">
              <node concept="liA8E" id="1gL472DUBFg" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.equals(java.lang.Object)" resolve="equals" />
                <node concept="2OqwBi" id="1gL472DUBFh" role="37wK5m">
                  <node concept="37vLTw" id="1gL472DUBFi" role="2Oq$k0">
                    <ref role="3cqZAo" node="1gL472DUBEB" resolve="that" />
                  </node>
                  <node concept="2OwXpG" id="1gL472DUBF5" role="2OqNvi">
                    <ref role="2Oxat5" node="IMWzYPfMzm" resolve="myCursor" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1gL472DUBF6" role="2Oq$k0">
                <ref role="3cqZAo" node="IMWzYPfMzm" resolve="myCursor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1gL472DUBFs" role="3cqZAp" />
        <node concept="3clFbF" id="1gL472DUBFt" role="3cqZAp">
          <node concept="3clFbT" id="1gL472DUBFu" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1gL472DUBEG" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="1gL472DUBEH" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1gL472DUBEI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1gL472DUBFv" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="1gL472DUBFw" role="3clF45" />
      <node concept="3Tm1VV" id="1gL472DUBFx" role="1B3o_S" />
      <node concept="3clFbS" id="1gL472DUBFy" role="3clF47">
        <node concept="3cpWs8" id="1gL472DUBF$" role="3cqZAp">
          <node concept="3cpWsn" id="1gL472DUBF_" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="1gL472DUBFA" role="1tU5fm" />
            <node concept="3cmrfG" id="1gL472DUBFB" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1gL472DUBFL" role="3cqZAp">
          <node concept="37vLTI" id="1gL472DUBFM" role="3clFbG">
            <node concept="3cpWs3" id="1gL472DUBFN" role="37vLTx">
              <node concept="17qRlL" id="1gL472DUBFH" role="3uHU7B">
                <node concept="3cmrfG" id="1gL472DUBFI" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="1gL472DUBFC" role="3uHU7w">
                  <ref role="3cqZAo" node="1gL472DUBF_" resolve="result" />
                </node>
              </node>
              <node concept="2OqwBi" id="1gL472DUBFT" role="3uHU7w">
                <node concept="37vLTw" id="1gL472DUBFK" role="2Oq$k0">
                  <ref role="3cqZAo" node="IMWzYPfMwd" resolve="myConnection" />
                </node>
                <node concept="liA8E" id="1gL472DUBFX" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1gL472DUBFY" role="37vLTJ">
              <ref role="3cqZAo" node="1gL472DUBF_" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1gL472DUBG4" role="3cqZAp">
          <node concept="37vLTI" id="1gL472DUBG5" role="3clFbG">
            <node concept="3cpWs3" id="1gL472DUBG6" role="37vLTx">
              <node concept="2OqwBi" id="1gL472DUBGc" role="3uHU7w">
                <node concept="37vLTw" id="1gL472DUBG3" role="2Oq$k0">
                  <ref role="3cqZAo" node="IMWzYPfMzm" resolve="myCursor" />
                </node>
                <node concept="liA8E" id="1gL472DUBGg" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
                </node>
              </node>
              <node concept="17qRlL" id="1gL472DUBFZ" role="3uHU7B">
                <node concept="3cmrfG" id="1gL472DUBG0" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="1gL472DUBG1" role="3uHU7w">
                  <ref role="3cqZAo" node="1gL472DUBF_" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1gL472DUBGh" role="37vLTJ">
              <ref role="3cqZAo" node="1gL472DUBF_" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1gL472DUBGi" role="3cqZAp">
          <node concept="37vLTw" id="1gL472DUBGj" role="3clFbG">
            <ref role="3cqZAo" node="1gL472DUBF_" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1gL472DUBFz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="7_KjZP9eHRu">
    <property role="TrG5h" value="ConnectionPathSyncronizer" />
    <node concept="2tJIrI" id="1gL472DDxDt" role="jymVt" />
    <node concept="3clFb_" id="7_KjZP9eHTC" role="jymVt">
      <property role="TrG5h" value="getPath" />
      <node concept="37vLTG" id="4O0ojQp_Jqr" role="3clF46">
        <property role="TrG5h" value="connection" />
        <node concept="16syzq" id="4y$DvIW1xSV" role="1tU5fm">
          <ref role="16sUi3" node="4y$DvIW1xOn" resolve="ConnT" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQp_Jqu" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="7_KjZP9eHTF" role="3clF47" />
      <node concept="3Tm1VV" id="7_KjZP9eHTG" role="1B3o_S" />
      <node concept="2AHcQZ" id="7_KjZP9eHU9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="4y$DvIXP9cY" role="3clF45">
        <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
        <node concept="3uibUv" id="1iOpS25idJN" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="1iOpS25idLH" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="16syzq" id="7_KjZP9eHTr" role="11_B2D">
          <ref role="16sUi3" node="7_KjZP9eHSt" resolve="PathT" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7_KjZP9eIbo" role="jymVt" />
    <node concept="3clFb_" id="7_KjZP9eIiw" role="jymVt">
      <property role="TrG5h" value="setPath" />
      <node concept="3clFbS" id="7_KjZP9eIiz" role="3clF47" />
      <node concept="3Tm1VV" id="7_KjZP9eIi$" role="1B3o_S" />
      <node concept="3cqZAl" id="7_KjZP9eIhN" role="3clF45" />
      <node concept="37vLTG" id="4O0ojQp_JL0" role="3clF46">
        <property role="TrG5h" value="connection" />
        <node concept="16syzq" id="4y$DvIW1y0i" role="1tU5fm">
          <ref role="16sUi3" node="4y$DvIW1xOn" resolve="ConnT" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQp_JL3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="7_KjZP9eIoH" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="16syzq" id="7_KjZP9eIqv" role="1tU5fm">
          <ref role="16sUi3" node="7_KjZP9eHSt" resolve="PathT" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW1ypH" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7_KjZP9eHRv" role="1B3o_S" />
    <node concept="16euLQ" id="4y$DvIW1xOn" role="16eVyc">
      <property role="TrG5h" value="ConnT" />
    </node>
    <node concept="16euLQ" id="7_KjZP9eHSh" role="16eVyc">
      <property role="TrG5h" value="PortT" />
    </node>
    <node concept="16euLQ" id="7_KjZP9eHSt" role="16eVyc">
      <property role="TrG5h" value="PathT" />
    </node>
  </node>
  <node concept="312cEu" id="4O0ojQpH3gw">
    <property role="TrG5h" value="DiagramFacility" />
    <node concept="2tJIrI" id="4O0ojQpHA1f" role="jymVt" />
    <node concept="312cEg" id="4O0ojQpHCqD" role="jymVt">
      <property role="TrG5h" value="myDiagramModel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4O0ojQpHAsu" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQpHAS2" role="1tU5fm">
        <ref role="3uigEE" node="4O0ojQpH$TE" resolve="DiagramView" />
        <node concept="16syzq" id="4O0ojQpHCo0" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHwZE" resolve="CompT" />
        </node>
        <node concept="16syzq" id="4O0ojQpHCoW" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
        </node>
        <node concept="16syzq" id="4O0ojQpHCqb" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHx1T" resolve="ConnT" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4O0ojQpHHiE" role="jymVt">
      <property role="TrG5h" value="myPortSettingProvider" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4O0ojQpHG69" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQpHHFw" role="1tU5fm">
        <ref role="3uigEE" node="4O0ojQpHEzY" resolve="PortSettingProvider" />
        <node concept="16syzq" id="4y$DvIVUuZm" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
        </node>
        <node concept="16syzq" id="1iOpS24WPXW" role="11_B2D">
          <ref role="16sUi3" node="1iOpS24VS9U" resolve="CFormT" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1iOpS24X1n7" role="jymVt">
      <property role="TrG5h" value="myComponentSettings" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1iOpS24WWHK" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7rdVGX" role="1tU5fm">
        <ref role="3uigEE" node="2syzu7rdoTh" resolve="DiagramComponentSettingProvider" />
        <node concept="16syzq" id="2syzu7rdVGY" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHwZE" resolve="CompT" />
        </node>
        <node concept="16syzq" id="2syzu7rdVGZ" role="11_B2D">
          <ref role="16sUi3" node="1iOpS24VS9U" resolve="CFormT" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpKZE_" role="jymVt" />
    <node concept="312cEg" id="4y$DvIW8vs2" role="jymVt">
      <property role="TrG5h" value="myComponents" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4y$DvIW8vs3" role="1B3o_S" />
      <node concept="2ShNRf" id="4y$DvIW8vs8" role="33vP2m">
        <node concept="1pGfFk" id="4y$DvIW8vs9" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="16syzq" id="4y$DvIW8vsa" role="1pMfVU">
            <ref role="16sUi3" node="4O0ojQpHwZE" resolve="CompT" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4y$DvIW8vs6" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="16syzq" id="4y$DvIW8Bqx" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHwZE" resolve="CompT" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4y$DvIW8v$a" role="jymVt">
      <property role="TrG5h" value="myEdges" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4y$DvIW8v$b" role="1B3o_S" />
      <node concept="2ShNRf" id="4y$DvIW8v$g" role="33vP2m">
        <node concept="1pGfFk" id="4y$DvIW8Ewi" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
          <node concept="16syzq" id="4y$DvIW8Fc$" role="1pMfVU">
            <ref role="16sUi3" node="4O0ojQpHx1T" resolve="ConnT" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4y$DvIW8C14" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="16syzq" id="4y$DvIW8CZb" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHx1T" resolve="ConnT" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1gL472DRU3d" role="jymVt">
      <property role="TrG5h" value="myComponentToPorts" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1gL472DRMfe" role="1B3o_S" />
      <node concept="3uibUv" id="1gL472DRQNM" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="16syzq" id="4O0ojQpHBa4" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHwZE" resolve="CompT" />
        </node>
        <node concept="3uibUv" id="1gL472DRTV3" role="11_B2D">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="16syzq" id="1gL472DRTWT" role="11_B2D">
            <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="1gL472DSd5B" role="33vP2m">
        <node concept="1pGfFk" id="1gL472DSd$M" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="16syzq" id="4O0ojQpHBO$" role="1pMfVU">
            <ref role="16sUi3" node="4O0ojQpHwZE" resolve="CompT" />
          </node>
          <node concept="3uibUv" id="1gL472DSdOO" role="1pMfVU">
            <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
            <node concept="16syzq" id="1gL472DSdOP" role="11_B2D">
              <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1gL472DSCTm" role="jymVt">
      <property role="TrG5h" value="myPortToComponent" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1gL472DSpuL" role="1B3o_S" />
      <node concept="3uibUv" id="1gL472DSuQu" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="16syzq" id="1gL472DSv1Z" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
        </node>
        <node concept="16syzq" id="4O0ojQpHBsd" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHwZE" resolve="CompT" />
        </node>
      </node>
      <node concept="2ShNRf" id="1gL472DSHHx" role="33vP2m">
        <node concept="1pGfFk" id="1gL472DSHHy" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="16syzq" id="1gL472DSHXY" role="1pMfVU">
            <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
          </node>
          <node concept="16syzq" id="4O0ojQpHBVK" role="1pMfVU">
            <ref role="16sUi3" node="4O0ojQpHwZE" resolve="CompT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1gL472DS8ml" role="jymVt">
      <property role="TrG5h" value="myConnectionToSource" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1gL472DS3cT" role="1B3o_S" />
      <node concept="3uibUv" id="1gL472DS7Yz" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="16syzq" id="4O0ojQpHBjm" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHx1T" resolve="ConnT" />
        </node>
        <node concept="16syzq" id="1gL472DS8gu" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
        </node>
      </node>
      <node concept="2ShNRf" id="1gL472DSe1i" role="33vP2m">
        <node concept="1pGfFk" id="1gL472DSewt" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="16syzq" id="4O0ojQpHC6X" role="1pMfVU">
            <ref role="16sUi3" node="4O0ojQpHx1T" resolve="ConnT" />
          </node>
          <node concept="16syzq" id="1gL472DSeLV" role="1pMfVU">
            <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1gL472DSfsR" role="jymVt">
      <property role="TrG5h" value="myConnectionToTarget" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1gL472DSfsS" role="1B3o_S" />
      <node concept="3uibUv" id="1gL472DSfsT" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="16syzq" id="4O0ojQpHBFG" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHx1T" resolve="ConnT" />
        </node>
        <node concept="16syzq" id="1gL472DSfsW" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
        </node>
      </node>
      <node concept="2ShNRf" id="1gL472DSfsX" role="33vP2m">
        <node concept="1pGfFk" id="1gL472DSfsY" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="16syzq" id="4O0ojQpHCi4" role="1pMfVU">
            <ref role="16sUi3" node="4O0ojQpHx1T" resolve="ConnT" />
          </node>
          <node concept="16syzq" id="1gL472DSft1" role="1pMfVU">
            <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpH3hO" role="jymVt" />
    <node concept="312cEg" id="4O0ojQpHyso" role="jymVt">
      <property role="TrG5h" value="myPorts" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4O0ojQpHy2S" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQpHypp" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="16syzq" id="4O0ojQpHyr5" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
        </node>
        <node concept="3uibUv" id="4O0ojQpLt8G" role="11_B2D">
          <ref role="3uigEE" node="4O0ojQpKW8H" resolve="DiagramFacility.PortEntry" />
        </node>
      </node>
      <node concept="2ShNRf" id="4O0ojQpHyO1" role="33vP2m">
        <node concept="1pGfFk" id="4O0ojQpHzcW" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="16syzq" id="4O0ojQpHzrG" role="1pMfVU">
            <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
          </node>
          <node concept="3uibUv" id="4O0ojQpVdkq" role="1pMfVU">
            <ref role="3uigEE" node="4O0ojQpKW8H" resolve="DiagramFacility.PortEntry" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpHKJB" role="jymVt" />
    <node concept="312cEg" id="4O0ojQpHMQW" role="jymVt">
      <property role="TrG5h" value="myDiagramController" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4O0ojQpHLfI" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQpHLO8" role="1tU5fm">
        <ref role="3uigEE" node="2JpbWDsQT0H" resolve="DiagramController" />
        <node concept="16syzq" id="4O0ojQpHLRh" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHwZE" resolve="CompT" />
        </node>
        <node concept="16syzq" id="4O0ojQpHLSe" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
        </node>
        <node concept="16syzq" id="4O0ojQpHLTu" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHx1T" resolve="ConnT" />
        </node>
      </node>
      <node concept="2ShNRf" id="4O0ojQpISUP" role="33vP2m">
        <node concept="HV5vD" id="4O0ojQpITjW" role="2ShVmc">
          <ref role="HV5vE" node="4O0ojQpHNOL" resolve="DiagramFacility.MyDiagramController" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpHzGe" role="jymVt" />
    <node concept="3clFbW" id="4O0ojQpHDXN" role="jymVt">
      <node concept="37vLTG" id="4O0ojQpXEB$" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="4O0ojQpXEVo" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJcVKF" resolve="SceneEditor" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQpXEYe" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQpHEmy" role="3clF46">
        <property role="TrG5h" value="diagramModel" />
        <node concept="3uibUv" id="4O0ojQpHEmR" role="1tU5fm">
          <ref role="3uigEE" node="4O0ojQpH$TE" resolve="DiagramView" />
          <node concept="16syzq" id="4O0ojQpHEmS" role="11_B2D">
            <ref role="16sUi3" node="4O0ojQpHwZE" resolve="CompT" />
          </node>
          <node concept="16syzq" id="4O0ojQpHEmT" role="11_B2D">
            <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
          </node>
          <node concept="16syzq" id="4O0ojQpHEmU" role="11_B2D">
            <ref role="16sUi3" node="4O0ojQpHx1T" resolve="ConnT" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpHEoN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQpHEwj" role="3clF46">
        <property role="TrG5h" value="portSettingProvider" />
        <node concept="3uibUv" id="4O0ojQpHFFi" role="1tU5fm">
          <ref role="3uigEE" node="4O0ojQpHEzY" resolve="PortSettingProvider" />
          <node concept="16syzq" id="4y$DvIVUwU4" role="11_B2D">
            <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
          </node>
          <node concept="16syzq" id="1iOpS24WSfM" role="11_B2D">
            <ref role="16sUi3" node="1iOpS24VS9U" resolve="CFormT" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpZwL$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1iOpS24WSxv" role="3clF46">
        <property role="TrG5h" value="componentSettings" />
        <node concept="3uibUv" id="2syzu7rdSSv" role="1tU5fm">
          <ref role="3uigEE" node="2syzu7rdoTh" resolve="DiagramComponentSettingProvider" />
          <node concept="16syzq" id="2syzu7rdT5_" role="11_B2D">
            <ref role="16sUi3" node="4O0ojQpHwZE" resolve="CompT" />
          </node>
          <node concept="16syzq" id="2syzu7rdTKJ" role="11_B2D">
            <ref role="16sUi3" node="1iOpS24VS9U" resolve="CFormT" />
          </node>
        </node>
        <node concept="2AHcQZ" id="1iOpS24X6Ap" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3cqZAl" id="4O0ojQpHDXO" role="3clF45" />
      <node concept="3clFbS" id="4O0ojQpHDXQ" role="3clF47">
        <node concept="3clFbF" id="4O0ojQpHHJS" role="3cqZAp">
          <node concept="37vLTI" id="4O0ojQpHIEX" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQpHIMW" role="37vLTx">
              <ref role="3cqZAo" node="4O0ojQpHEmy" resolve="diagramModel" />
            </node>
            <node concept="37vLTw" id="4O0ojQpHHJR" role="37vLTJ">
              <ref role="3cqZAo" node="4O0ojQpHCqD" resolve="myDiagramModel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4O0ojQpHIVz" role="3cqZAp">
          <node concept="37vLTI" id="4O0ojQpHK49" role="3clFbG">
            <node concept="37vLTw" id="4O0ojQpHKcB" role="37vLTx">
              <ref role="3cqZAo" node="4O0ojQpHEwj" resolve="portSettingProvider" />
            </node>
            <node concept="37vLTw" id="4O0ojQpHIVx" role="37vLTJ">
              <ref role="3cqZAo" node="4O0ojQpHHiE" resolve="myPortSettingProvider" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24X5uP" role="3cqZAp">
          <node concept="37vLTI" id="1iOpS24X6rv" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24X6$w" role="37vLTx">
              <ref role="3cqZAo" node="1iOpS24WSxv" resolve="componentSettings" />
            </node>
            <node concept="37vLTw" id="1iOpS24X5uN" role="37vLTJ">
              <ref role="3cqZAo" node="1iOpS24X1n7" resolve="myComponentSettings" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4O0ojQpXJGi" role="3cqZAp" />
        <node concept="3clFbF" id="4tjN0ibTlwN" role="3cqZAp">
          <node concept="1rXfSq" id="4tjN0ibTlwG" role="3clFbG">
            <ref role="37wK5l" node="4tjN0ibTlg7" resolve="init" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4O0ojQpHDXR" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4tjN0ibTk$6" role="jymVt" />
    <node concept="3clFb_" id="4tjN0ibTlg7" role="jymVt">
      <property role="TrG5h" value="init" />
      <node concept="3clFbS" id="4tjN0ibTlga" role="3clF47">
        <node concept="2Gpval" id="1gL472DVTqS" role="3cqZAp">
          <node concept="2GrKxI" id="1gL472DVTqU" role="2Gsz3X">
            <property role="TrG5h" value="component" />
          </node>
          <node concept="3clFbS" id="1gL472DVTqY" role="2LFqv$">
            <node concept="3clFbF" id="4y$DvIXS_8e" role="3cqZAp">
              <node concept="2OqwBi" id="4y$DvIXSAYV" role="3clFbG">
                <node concept="37vLTw" id="4y$DvIXS_8c" role="2Oq$k0">
                  <ref role="3cqZAo" node="4y$DvIW8vs2" resolve="myComponents" />
                </node>
                <node concept="liA8E" id="4y$DvIXSNpm" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="2GrUjf" id="4y$DvIXSNGm" role="37wK5m">
                    <ref role="2Gs0qQ" node="1gL472DVTqU" resolve="component" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1gL472DWFWh" role="3cqZAp">
              <node concept="3cpWsn" id="1gL472DWFWi" role="3cpWs9">
                <property role="TrG5h" value="ports" />
                <node concept="3uibUv" id="1gL472DWFVI" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~HashSet" resolve="HashSet" />
                  <node concept="16syzq" id="1gL472DWXSq" role="11_B2D">
                    <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1gL472DWFWj" role="33vP2m">
                  <node concept="1pGfFk" id="1gL472DWFWk" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;(java.util.Collection)" resolve="HashSet" />
                    <node concept="2OqwBi" id="1gL472DWFWl" role="37wK5m">
                      <node concept="37vLTw" id="4O0ojQpJVGF" role="2Oq$k0">
                        <ref role="3cqZAo" node="4O0ojQpHCqD" resolve="myDiagramModel" />
                      </node>
                      <node concept="liA8E" id="1gL472DWFWn" role="2OqNvi">
                        <ref role="37wK5l" node="4O0ojQpH_1P" resolve="ports" />
                        <node concept="2GrUjf" id="1gL472DWFWo" role="37wK5m">
                          <ref role="2Gs0qQ" node="1gL472DVTqU" resolve="component" />
                        </node>
                      </node>
                    </node>
                    <node concept="16syzq" id="1gL472DX0Gu" role="1pMfVU">
                      <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1gL472DWy8B" role="3cqZAp">
              <node concept="2OqwBi" id="1gL472DWztU" role="3clFbG">
                <node concept="37vLTw" id="1gL472DWz6N" role="2Oq$k0">
                  <ref role="3cqZAo" node="1gL472DRU3d" resolve="myComponentToPorts" />
                </node>
                <node concept="liA8E" id="1gL472DWBFb" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2GrUjf" id="1gL472DWTeI" role="37wK5m">
                    <ref role="2Gs0qQ" node="1gL472DVTqU" resolve="component" />
                  </node>
                  <node concept="37vLTw" id="1gL472DWV9e" role="37wK5m">
                    <ref role="3cqZAo" node="1gL472DWFWi" resolve="ports" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="1gL472DX3qp" role="3cqZAp">
              <node concept="2GrKxI" id="1gL472DX3qr" role="2Gsz3X">
                <property role="TrG5h" value="port" />
              </node>
              <node concept="37vLTw" id="1gL472DX4Gn" role="2GsD0m">
                <ref role="3cqZAo" node="1gL472DWFWi" resolve="ports" />
              </node>
              <node concept="3clFbS" id="1gL472DX3qv" role="2LFqv$">
                <node concept="3cpWs8" id="4O0ojQpOecf" role="3cqZAp">
                  <node concept="3cpWsn" id="4O0ojQpOecg" role="3cpWs9">
                    <property role="TrG5h" value="entry" />
                    <node concept="3uibUv" id="4O0ojQpOebg" role="1tU5fm">
                      <ref role="3uigEE" node="4O0ojQpKW8H" resolve="DiagramFacility.PortEntry" />
                    </node>
                    <node concept="2OqwBi" id="4O0ojQpOech" role="33vP2m">
                      <node concept="37vLTw" id="4O0ojQpOeci" role="2Oq$k0">
                        <ref role="3cqZAo" node="4O0ojQpHyso" resolve="myPorts" />
                      </node>
                      <node concept="liA8E" id="4O0ojQpOecj" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.computeIfAbsent(java.lang.Object,java.util.function.Function)" resolve="computeIfAbsent" />
                        <node concept="2GrUjf" id="4O0ojQpOeck" role="37wK5m">
                          <ref role="2Gs0qQ" node="1gL472DX3qr" resolve="port" />
                        </node>
                        <node concept="1bVj0M" id="4O0ojQpOecl" role="37wK5m">
                          <node concept="37vLTG" id="4O0ojQpOecm" role="1bW2Oz">
                            <property role="TrG5h" value="p" />
                            <node concept="16syzq" id="4O0ojQpOecn" role="1tU5fm">
                              <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="4O0ojQpOeco" role="1bW5cS">
                            <node concept="3clFbF" id="4O0ojQpOecp" role="3cqZAp">
                              <node concept="2ShNRf" id="4O0ojQpOecq" role="3clFbG">
                                <node concept="1pGfFk" id="4O0ojQpOecr" role="2ShVmc">
                                  <ref role="37wK5l" node="4O0ojQpLEcn" resolve="DiagramFacility.PortEntry" />
                                  <node concept="37vLTw" id="4O0ojQpOecs" role="37wK5m">
                                    <ref role="3cqZAo" node="4O0ojQpOecm" resolve="p" />
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
                <node concept="3clFbF" id="1gL472DX5e_" role="3cqZAp">
                  <node concept="2OqwBi" id="1gL472DX5$t" role="3clFbG">
                    <node concept="37vLTw" id="1gL472DX5e$" role="2Oq$k0">
                      <ref role="3cqZAo" node="1gL472DSCTm" resolve="myPortToComponent" />
                    </node>
                    <node concept="liA8E" id="1gL472DX8Y6" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                      <node concept="2GrUjf" id="1gL472DX9oN" role="37wK5m">
                        <ref role="2Gs0qQ" node="1gL472DX3qr" resolve="port" />
                      </node>
                      <node concept="2GrUjf" id="1gL472DXa1q" role="37wK5m">
                        <ref role="2Gs0qQ" node="1gL472DVTqU" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="1gL472DVVqG" role="2GsD0m">
            <node concept="37vLTw" id="4O0ojQpJI$W" role="2Oq$k0">
              <ref role="3cqZAo" node="4O0ojQpHCqD" resolve="myDiagramModel" />
            </node>
            <node concept="liA8E" id="1gL472DW1EO" role="2OqNvi">
              <ref role="37wK5l" node="4O0ojQpH$XA" resolve="components" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="1gL472DXcuo" role="3cqZAp">
          <node concept="2GrKxI" id="1gL472DXcuq" role="2Gsz3X">
            <property role="TrG5h" value="edge" />
          </node>
          <node concept="2OqwBi" id="1gL472DXha_" role="2GsD0m">
            <node concept="37vLTw" id="4O0ojQpJPhQ" role="2Oq$k0">
              <ref role="3cqZAo" node="4O0ojQpHCqD" resolve="myDiagramModel" />
            </node>
            <node concept="liA8E" id="1gL472DXoal" role="2OqNvi">
              <ref role="37wK5l" node="4O0ojQpH__0" resolve="edges" />
            </node>
          </node>
          <node concept="3clFbS" id="1gL472DXcuu" role="2LFqv$">
            <node concept="3clFbF" id="4y$DvIXSvRY" role="3cqZAp">
              <node concept="2OqwBi" id="4y$DvIXSyeJ" role="3clFbG">
                <node concept="37vLTw" id="4y$DvIXSvRW" role="2Oq$k0">
                  <ref role="3cqZAo" node="4y$DvIW8v$a" resolve="myEdges" />
                </node>
                <node concept="liA8E" id="4y$DvIXSyPS" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                  <node concept="2GrUjf" id="4y$DvIXSz2G" role="37wK5m">
                    <ref role="2Gs0qQ" node="1gL472DXcuq" resolve="edge" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1gL472DXvGy" role="3cqZAp">
              <node concept="2OqwBi" id="1gL472DXwaN" role="3clFbG">
                <node concept="37vLTw" id="1gL472DXvGw" role="2Oq$k0">
                  <ref role="3cqZAo" node="1gL472DS8ml" resolve="myConnectionToSource" />
                </node>
                <node concept="liA8E" id="1gL472DX$0v" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2GrUjf" id="1gL472DX$yz" role="37wK5m">
                    <ref role="2Gs0qQ" node="1gL472DXcuq" resolve="edge" />
                  </node>
                  <node concept="2OqwBi" id="4O0ojQpJZeY" role="37wK5m">
                    <node concept="37vLTw" id="4O0ojQpJZeZ" role="2Oq$k0">
                      <ref role="3cqZAo" node="4O0ojQpHCqD" resolve="myDiagramModel" />
                    </node>
                    <node concept="liA8E" id="4O0ojQpJZf0" role="2OqNvi">
                      <ref role="37wK5l" node="4O0ojQpH_ig" resolve="sourcePort" />
                      <node concept="2GrUjf" id="4O0ojQpK22D" role="37wK5m">
                        <ref role="2Gs0qQ" node="1gL472DXcuq" resolve="edge" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1gL472DXAp8" role="3cqZAp">
              <node concept="2OqwBi" id="1gL472DXAp9" role="3clFbG">
                <node concept="37vLTw" id="1gL472DXEh9" role="2Oq$k0">
                  <ref role="3cqZAo" node="1gL472DSfsR" resolve="myConnectionToTarget" />
                </node>
                <node concept="liA8E" id="1gL472DXApb" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
                  <node concept="2GrUjf" id="1gL472DXApc" role="37wK5m">
                    <ref role="2Gs0qQ" node="1gL472DXcuq" resolve="edge" />
                  </node>
                  <node concept="2OqwBi" id="4O0ojQpK3hy" role="37wK5m">
                    <node concept="37vLTw" id="4O0ojQpK3hz" role="2Oq$k0">
                      <ref role="3cqZAo" node="4O0ojQpHCqD" resolve="myDiagramModel" />
                    </node>
                    <node concept="liA8E" id="4O0ojQpK3h$" role="2OqNvi">
                      <ref role="37wK5l" node="4O0ojQpH_qO" resolve="targetPort" />
                      <node concept="2GrUjf" id="4O0ojQpK3h_" role="37wK5m">
                        <ref role="2Gs0qQ" node="1gL472DXcuq" resolve="edge" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4tjN0ibTl73" role="1B3o_S" />
      <node concept="3cqZAl" id="4tjN0ibTlg5" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4y$DvIX$vVb" role="jymVt" />
    <node concept="312cEu" id="4O0ojQpHNOL" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyDiagramController" />
      <node concept="2tJIrI" id="4y$DvIW8tsk" role="jymVt" />
      <node concept="3clFb_" id="4y$DvIW8ufQ" role="jymVt">
        <property role="TrG5h" value="getComponents" />
        <node concept="3Tm1VV" id="4y$DvIW8ufS" role="1B3o_S" />
        <node concept="3uibUv" id="4y$DvIW8ufT" role="3clF45">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="16syzq" id="4y$DvIW8ufW" role="11_B2D">
            <ref role="16sUi3" node="4O0ojQpHwZE" resolve="CompT" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4y$DvIW8ufV" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3clFbS" id="4y$DvIW8ufX" role="3clF47">
          <node concept="3clFbF" id="4y$DvIW8G0H" role="3cqZAp">
            <node concept="37vLTw" id="4y$DvIW8G0G" role="3clFbG">
              <ref role="3cqZAo" node="4y$DvIW8vs2" resolve="myComponents" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4y$DvIW8ufY" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4y$DvIW8Hil" role="jymVt" />
      <node concept="3clFb_" id="4y$DvIW8ug1" role="jymVt">
        <property role="TrG5h" value="getConnections" />
        <node concept="3Tm1VV" id="4y$DvIW8ug3" role="1B3o_S" />
        <node concept="3uibUv" id="4y$DvIW8ug4" role="3clF45">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="16syzq" id="4y$DvIW8ug7" role="11_B2D">
            <ref role="16sUi3" node="4O0ojQpHx1T" resolve="ConnT" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4y$DvIW8ug6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3clFbS" id="4y$DvIW8ug8" role="3clF47">
          <node concept="3clFbF" id="4y$DvIW8Gi1" role="3cqZAp">
            <node concept="37vLTw" id="4y$DvIW8GhY" role="3clFbG">
              <ref role="3cqZAo" node="4y$DvIW8v$a" resolve="myEdges" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4y$DvIW8ug9" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4y$DvIW8Goc" role="jymVt" />
      <node concept="3clFb_" id="4y$DvIW8ugc" role="jymVt">
        <property role="TrG5h" value="getComponent" />
        <node concept="37vLTG" id="4y$DvIW8ugd" role="3clF46">
          <property role="TrG5h" value="port" />
          <node concept="16syzq" id="4y$DvIW8ugl" role="1tU5fm">
            <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
          </node>
          <node concept="2AHcQZ" id="4y$DvIW8ugf" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3Tm1VV" id="4y$DvIW8ugh" role="1B3o_S" />
        <node concept="16syzq" id="4y$DvIW8ugk" role="3clF45">
          <ref role="16sUi3" node="4O0ojQpHwZE" resolve="CompT" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW8ugj" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3clFbS" id="4y$DvIW8ugm" role="3clF47">
          <node concept="3clFbF" id="4y$DvIW8JlF" role="3cqZAp">
            <node concept="2OqwBi" id="4y$DvIW8JLi" role="3clFbG">
              <node concept="37vLTw" id="4y$DvIW8JlE" role="2Oq$k0">
                <ref role="3cqZAo" node="1gL472DSCTm" resolve="myPortToComponent" />
              </node>
              <node concept="liA8E" id="4y$DvIW8K7F" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="4y$DvIW8KCG" role="37wK5m">
                  <ref role="3cqZAo" node="4y$DvIW8ugd" resolve="port" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4y$DvIW8ugn" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4y$DvIW8tud" role="jymVt" />
      <node concept="3clFb_" id="4O0ojQpHOpH" role="jymVt">
        <property role="TrG5h" value="getPortController" />
        <node concept="3Tm1VV" id="4O0ojQpHOpJ" role="1B3o_S" />
        <node concept="3uibUv" id="4O0ojQpHOpK" role="3clF45">
          <ref role="3uigEE" node="2JpbWDsQSwS" resolve="PortController" />
        </node>
        <node concept="37vLTG" id="4O0ojQpHOpL" role="3clF46">
          <property role="TrG5h" value="port" />
          <node concept="16syzq" id="4O0ojQpHOpP" role="1tU5fm">
            <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
          </node>
          <node concept="2AHcQZ" id="4O0ojQpHOpN" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpHOpO" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3clFbS" id="4O0ojQpHOpQ" role="3clF47">
          <node concept="3clFbF" id="4O0ojQpHOR0" role="3cqZAp">
            <node concept="2OqwBi" id="4O0ojQpHPh_" role="3clFbG">
              <node concept="37vLTw" id="4O0ojQpHOQZ" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQpHyso" resolve="myPorts" />
              </node>
              <node concept="liA8E" id="4O0ojQpHSLB" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="4O0ojQpHSW8" role="37wK5m">
                  <ref role="3cqZAo" node="4O0ojQpHOpL" resolve="port" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpHOpR" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4O0ojQpHOzE" role="jymVt" />
      <node concept="3clFb_" id="4O0ojQpHOpU" role="jymVt">
        <property role="TrG5h" value="findPort" />
        <node concept="3Tm1VV" id="4O0ojQpHOpW" role="1B3o_S" />
        <node concept="16syzq" id="4O0ojQpHOq3" role="3clF45">
          <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
        </node>
        <node concept="37vLTG" id="4O0ojQpHOpY" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="4O0ojQpHOpZ" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="4O0ojQpHOq0" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="4O0ojQpHOq1" role="1tU5fm" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQpHOq2" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3clFbS" id="4O0ojQpHOq4" role="3clF47">
          <node concept="2Gpval" id="4O0ojQpHTiN" role="3cqZAp">
            <node concept="2GrKxI" id="4O0ojQpHTiO" role="2Gsz3X">
              <property role="TrG5h" value="port" />
            </node>
            <node concept="37vLTw" id="4O0ojQpHTok" role="2GsD0m">
              <ref role="3cqZAo" node="4O0ojQpHyso" resolve="myPorts" />
            </node>
            <node concept="3clFbS" id="4O0ojQpHTiQ" role="2LFqv$">
              <node concept="3clFbJ" id="4O0ojQpHTxV" role="3cqZAp">
                <node concept="2OqwBi" id="4O0ojQpIgwE" role="3clFbw">
                  <node concept="2OqwBi" id="4O0ojQpIfOr" role="2Oq$k0">
                    <node concept="2OqwBi" id="4O0ojQpHTSS" role="2Oq$k0">
                      <node concept="2GrUjf" id="4O0ojQpHTB6" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4O0ojQpHTiO" resolve="port" />
                      </node>
                      <node concept="3AV6Ez" id="4O0ojQpI3eM" role="2OqNvi" />
                    </node>
                    <node concept="liA8E" id="4O0ojQpIg5b" role="2OqNvi">
                      <ref role="37wK5l" node="4O0ojQpUMg$" resolve="getBounds" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4O0ojQpIrGa" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Rectangle.contains(int,int)" resolve="contains" />
                    <node concept="37vLTw" id="4O0ojQpIs9A" role="37wK5m">
                      <ref role="3cqZAo" node="4O0ojQpHOpY" resolve="x" />
                    </node>
                    <node concept="37vLTw" id="4O0ojQpItYh" role="37wK5m">
                      <ref role="3cqZAo" node="4O0ojQpHOq0" resolve="y" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="4O0ojQpHTxX" role="3clFbx">
                  <node concept="3cpWs6" id="4O0ojQpIu$9" role="3cqZAp">
                    <node concept="2OqwBi" id="4O0ojQpIv1k" role="3cqZAk">
                      <node concept="2GrUjf" id="4O0ojQpIuDf" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="4O0ojQpHTiO" resolve="port" />
                      </node>
                      <node concept="3AY5_j" id="4O0ojQpIEZ0" role="2OqNvi" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4O0ojQpIFnQ" role="3cqZAp">
            <node concept="10Nm6u" id="4O0ojQpIFKL" role="3cqZAk" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpHOq5" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4O0ojQpIG0r" role="jymVt" />
      <node concept="3clFb_" id="4O0ojQpHOq6" role="jymVt">
        <property role="TrG5h" value="getPorts" />
        <node concept="3Tm1VV" id="4O0ojQpHOq8" role="1B3o_S" />
        <node concept="3uibUv" id="4O0ojQpHOq9" role="3clF45">
          <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
          <node concept="16syzq" id="4O0ojQpHOqf" role="11_B2D">
            <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpHOqb" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="37vLTG" id="4O0ojQpHOqc" role="3clF46">
          <property role="TrG5h" value="component" />
          <node concept="16syzq" id="4O0ojQpHOqg" role="1tU5fm">
            <ref role="16sUi3" node="4O0ojQpHwZE" resolve="CompT" />
          </node>
          <node concept="2AHcQZ" id="4O0ojQpHOqe" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="4O0ojQpHOqh" role="3clF47">
          <node concept="3clFbF" id="4O0ojQpIGqQ" role="3cqZAp">
            <node concept="2OqwBi" id="4O0ojQpIGMs" role="3clFbG">
              <node concept="37vLTw" id="4O0ojQpIGqP" role="2Oq$k0">
                <ref role="3cqZAo" node="1gL472DRU3d" resolve="myComponentToPorts" />
              </node>
              <node concept="liA8E" id="4O0ojQpIKKC" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="4O0ojQpIMBQ" role="37wK5m">
                  <ref role="3cqZAo" node="4O0ojQpHOqc" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpHOqi" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4O0ojQpIOqV" role="jymVt" />
      <node concept="3clFb_" id="4O0ojQpIOLT" role="jymVt">
        <property role="TrG5h" value="getSource" />
        <node concept="37vLTG" id="4O0ojQpIOLU" role="3clF46">
          <property role="TrG5h" value="edge" />
          <node concept="16syzq" id="4O0ojQpIOM1" role="1tU5fm">
            <ref role="16sUi3" node="4O0ojQpHx1T" resolve="ConnT" />
          </node>
          <node concept="2AHcQZ" id="4O0ojQpIOLW" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3Tm1VV" id="4O0ojQpIOLY" role="1B3o_S" />
        <node concept="16syzq" id="4O0ojQpIOM2" role="3clF45">
          <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQpIOM0" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3clFbS" id="4O0ojQpIOM3" role="3clF47">
          <node concept="3clFbF" id="4O0ojQpIPn9" role="3cqZAp">
            <node concept="2OqwBi" id="4O0ojQpIPOb" role="3clFbG">
              <node concept="37vLTw" id="4O0ojQpIPn8" role="2Oq$k0">
                <ref role="3cqZAo" node="1gL472DS8ml" resolve="myConnectionToSource" />
              </node>
              <node concept="liA8E" id="4O0ojQpIQae" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="4O0ojQpIQoc" role="37wK5m">
                  <ref role="3cqZAo" node="4O0ojQpIOLU" resolve="edge" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpIOM4" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4O0ojQpIR7h" role="jymVt" />
      <node concept="3clFb_" id="4O0ojQpIOM5" role="jymVt">
        <property role="TrG5h" value="getTarget" />
        <node concept="37vLTG" id="4O0ojQpIOM6" role="3clF46">
          <property role="TrG5h" value="edge" />
          <node concept="16syzq" id="4O0ojQpIOMe" role="1tU5fm">
            <ref role="16sUi3" node="4O0ojQpHx1T" resolve="ConnT" />
          </node>
          <node concept="2AHcQZ" id="4O0ojQpIOM8" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3Tm1VV" id="4O0ojQpIOMa" role="1B3o_S" />
        <node concept="16syzq" id="4O0ojQpIOMd" role="3clF45">
          <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQpIOMc" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3clFbS" id="4O0ojQpIOMf" role="3clF47">
          <node concept="3clFbF" id="4O0ojQpIQD4" role="3cqZAp">
            <node concept="2OqwBi" id="4O0ojQpIQD5" role="3clFbG">
              <node concept="37vLTw" id="4O0ojQpIR35" role="2Oq$k0">
                <ref role="3cqZAo" node="1gL472DSfsR" resolve="myConnectionToTarget" />
              </node>
              <node concept="liA8E" id="4O0ojQpIQD7" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                <node concept="37vLTw" id="4O0ojQpIQD8" role="37wK5m">
                  <ref role="3cqZAo" node="4O0ojQpIOM6" resolve="edge" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpIOMg" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4y$DvIW7D_6" role="jymVt" />
      <node concept="3clFb_" id="4y$DvIW7Eap" role="jymVt">
        <property role="TrG5h" value="setSource" />
        <node concept="37vLTG" id="4y$DvIW7Eaq" role="3clF46">
          <property role="TrG5h" value="edge" />
          <node concept="16syzq" id="4y$DvIW7Ea$" role="1tU5fm">
            <ref role="16sUi3" node="4O0ojQpHx1T" resolve="ConnT" />
          </node>
          <node concept="2AHcQZ" id="4y$DvIW7Eas" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="4y$DvIW7Eat" role="3clF46">
          <property role="TrG5h" value="port" />
          <node concept="16syzq" id="4y$DvIW7Eaz" role="1tU5fm">
            <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
          </node>
          <node concept="2AHcQZ" id="4y$DvIW7Eav" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3Tm1VV" id="4y$DvIW7Eax" role="1B3o_S" />
        <node concept="3cqZAl" id="4y$DvIW7Eay" role="3clF45" />
        <node concept="3clFbS" id="4y$DvIW7Ea_" role="3clF47">
          <node concept="3clFbF" id="4y$DvIW9MFN" role="3cqZAp">
            <node concept="2OqwBi" id="4y$DvIW9OWq" role="3clFbG">
              <node concept="37vLTw" id="4y$DvIW9MFM" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQpHCqD" resolve="myDiagramModel" />
              </node>
              <node concept="liA8E" id="4y$DvIW9SiI" role="2OqNvi">
                <ref role="37wK5l" node="4y$DvIW1oBz" resolve="setSourcePort" />
                <node concept="37vLTw" id="4y$DvIW9StI" role="37wK5m">
                  <ref role="3cqZAo" node="4y$DvIW7Eaq" resolve="edge" />
                </node>
                <node concept="37vLTw" id="4y$DvIW9SZ1" role="37wK5m">
                  <ref role="3cqZAo" node="4y$DvIW7Eat" resolve="port" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4y$DvIW7EaA" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4y$DvIW7FT5" role="jymVt" />
      <node concept="3clFb_" id="4y$DvIW7EaB" role="jymVt">
        <property role="TrG5h" value="setTarget" />
        <node concept="37vLTG" id="4y$DvIW7EaC" role="3clF46">
          <property role="TrG5h" value="edge" />
          <node concept="16syzq" id="4y$DvIW7EaL" role="1tU5fm">
            <ref role="16sUi3" node="4O0ojQpHx1T" resolve="ConnT" />
          </node>
          <node concept="2AHcQZ" id="4y$DvIW7EaE" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="4y$DvIW7EaF" role="3clF46">
          <property role="TrG5h" value="port" />
          <node concept="16syzq" id="4y$DvIW7EaM" role="1tU5fm">
            <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
          </node>
          <node concept="2AHcQZ" id="4y$DvIW7EaH" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3Tm1VV" id="4y$DvIW7EaJ" role="1B3o_S" />
        <node concept="3cqZAl" id="4y$DvIW7EaK" role="3clF45" />
        <node concept="3clFbS" id="4y$DvIW7EaN" role="3clF47">
          <node concept="3clFbF" id="4y$DvIW9Tjz" role="3cqZAp">
            <node concept="2OqwBi" id="4y$DvIW9Tj_" role="3clFbG">
              <node concept="37vLTw" id="4y$DvIW9TjA" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQpHCqD" resolve="myDiagramModel" />
              </node>
              <node concept="liA8E" id="4y$DvIW9TjB" role="2OqNvi">
                <ref role="37wK5l" node="4y$DvIW1oTC" resolve="setTargetPort" />
                <node concept="37vLTw" id="4y$DvIW9TjC" role="37wK5m">
                  <ref role="3cqZAo" node="4y$DvIW7EaC" resolve="edge" />
                </node>
                <node concept="37vLTw" id="4y$DvIW9TjD" role="37wK5m">
                  <ref role="3cqZAo" node="4y$DvIW7EaF" resolve="port" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4y$DvIW7EaO" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4y$DvIW9TYL" role="jymVt" />
      <node concept="3clFb_" id="4y$DvIW9V65" role="jymVt">
        <property role="TrG5h" value="removeEdge" />
        <node concept="37vLTG" id="4y$DvIW9V66" role="3clF46">
          <property role="TrG5h" value="edge" />
          <node concept="16syzq" id="4y$DvIW9V6c" role="1tU5fm">
            <ref role="16sUi3" node="4O0ojQpHx1T" resolve="ConnT" />
          </node>
          <node concept="2AHcQZ" id="4y$DvIW9V68" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3Tm1VV" id="4y$DvIW9V6a" role="1B3o_S" />
        <node concept="3cqZAl" id="4y$DvIW9V6b" role="3clF45" />
        <node concept="3clFbS" id="4y$DvIW9V6d" role="3clF47">
          <node concept="3clFbF" id="4y$DvIW9WM7" role="3cqZAp">
            <node concept="2OqwBi" id="4y$DvIW9XeT" role="3clFbG">
              <node concept="37vLTw" id="4y$DvIW9WM6" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQpHCqD" resolve="myDiagramModel" />
              </node>
              <node concept="liA8E" id="4y$DvIWa0_u" role="2OqNvi">
                <ref role="37wK5l" node="4y$DvIW9EYB" resolve="removeEdge" />
                <node concept="37vLTw" id="4y$DvIWa0Ld" role="37wK5m">
                  <ref role="3cqZAo" node="4y$DvIW9V66" resolve="edge" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4y$DvIW9V6e" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3clFb_" id="4y$DvIW9V6f" role="jymVt">
        <property role="TrG5h" value="addEdge" />
        <node concept="37vLTG" id="4y$DvIW9V6g" role="3clF46">
          <property role="TrG5h" value="sourcePort" />
          <node concept="16syzq" id="4y$DvIW9V6p" role="1tU5fm">
            <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
          </node>
          <node concept="2AHcQZ" id="4y$DvIW9V6i" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="4y$DvIW9V6j" role="3clF46">
          <property role="TrG5h" value="targetPort" />
          <node concept="16syzq" id="4y$DvIW9V6q" role="1tU5fm">
            <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
          </node>
          <node concept="2AHcQZ" id="4y$DvIW9V6l" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3Tm1VV" id="4y$DvIW9V6n" role="1B3o_S" />
        <node concept="16syzq" id="4y$DvIWc1GD" role="3clF45">
          <ref role="16sUi3" node="4O0ojQpHx1T" resolve="ConnT" />
        </node>
        <node concept="3clFbS" id="4y$DvIW9V6r" role="3clF47">
          <node concept="3clFbF" id="4y$DvIWa18S" role="3cqZAp">
            <node concept="2OqwBi" id="4y$DvIWa18T" role="3clFbG">
              <node concept="37vLTw" id="4y$DvIWa18U" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQpHCqD" resolve="myDiagramModel" />
              </node>
              <node concept="liA8E" id="4y$DvIWa18V" role="2OqNvi">
                <ref role="37wK5l" node="4y$DvIW9EYJ" resolve="addEdge" />
                <node concept="37vLTw" id="4y$DvIWa3Ak" role="37wK5m">
                  <ref role="3cqZAo" node="4y$DvIW9V6g" resolve="sourcePort" />
                </node>
                <node concept="37vLTw" id="4y$DvIWa4hl" role="37wK5m">
                  <ref role="3cqZAo" node="4y$DvIW9V6j" resolve="targetPort" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4y$DvIW9V6s" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4O0ojQpHNlX" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQpHOkM" role="EKbjA">
        <ref role="3uigEE" node="2JpbWDsQT0H" resolve="DiagramController" />
        <node concept="16syzq" id="4O0ojQpHOlY" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHwZE" resolve="CompT" />
        </node>
        <node concept="16syzq" id="4O0ojQpHOna" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
        </node>
        <node concept="16syzq" id="4O0ojQpHOoE" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHx1T" resolve="ConnT" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpKPeC" role="jymVt" />
    <node concept="312cEu" id="4O0ojQpKW8H" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="PortEntry" />
      <node concept="312cEg" id="4O0ojQpL_WD" role="jymVt">
        <property role="TrG5h" value="myPort" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="4O0ojQpLztp" role="1B3o_S" />
        <node concept="16syzq" id="4O0ojQpL_Ak" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
        </node>
      </node>
      <node concept="2tJIrI" id="4O0ojQpLC9$" role="jymVt" />
      <node concept="3Tm6S6" id="4O0ojQpKTI$" role="1B3o_S" />
      <node concept="3clFbW" id="4O0ojQpLEcn" role="jymVt">
        <node concept="3cqZAl" id="4O0ojQpLEco" role="3clF45" />
        <node concept="3Tm6S6" id="4O0ojQpLEcp" role="1B3o_S" />
        <node concept="3clFbS" id="4O0ojQpLEcr" role="3clF47">
          <node concept="3clFbF" id="4O0ojQpLEcv" role="3cqZAp">
            <node concept="37vLTI" id="4O0ojQpLEcx" role="3clFbG">
              <node concept="37vLTw" id="4O0ojQpLGs6" role="37vLTJ">
                <ref role="3cqZAo" node="4O0ojQpL_WD" resolve="myPort" />
              </node>
              <node concept="37vLTw" id="4O0ojQpLEcC" role="37vLTx">
                <ref role="3cqZAo" node="4O0ojQpLEcu" resolve="port" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4O0ojQpLEcu" role="3clF46">
          <property role="TrG5h" value="port" />
          <node concept="16syzq" id="4O0ojQpLEct" role="1tU5fm">
            <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4O0ojQpUJOm" role="jymVt" />
      <node concept="3clFb_" id="4O0ojQpUMg$" role="jymVt">
        <property role="TrG5h" value="getBounds" />
        <node concept="3Tm1VV" id="4O0ojQpUMgA" role="1B3o_S" />
        <node concept="3uibUv" id="4O0ojQpUMgB" role="3clF45">
          <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQpUMgC" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3clFbS" id="4O0ojQpUMgD" role="3clF47">
          <node concept="3clFbF" id="1iOpS250zHZ" role="3cqZAp">
            <node concept="2OqwBi" id="4y$DvIXN22c" role="3clFbG">
              <node concept="37vLTw" id="4y$DvIXN22d" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQpHHiE" resolve="myPortSettingProvider" />
              </node>
              <node concept="liA8E" id="4y$DvIXN22e" role="2OqNvi">
                <ref role="37wK5l" node="4O0ojQpHFbR" resolve="getBounds" />
                <node concept="2OqwBi" id="1iOpS250ojW" role="37wK5m">
                  <node concept="37vLTw" id="1iOpS250nMN" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iOpS24X1n7" resolve="myComponentSettings" />
                  </node>
                  <node concept="liA8E" id="1iOpS250oQO" role="2OqNvi">
                    <ref role="37wK5l" node="2syzu7rdJ6W" resolve="getModelForm" />
                    <node concept="2OqwBi" id="1iOpS250q38" role="37wK5m">
                      <node concept="37vLTw" id="1iOpS250plf" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472DSCTm" resolve="myPortToComponent" />
                      </node>
                      <node concept="liA8E" id="1iOpS250qLA" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                        <node concept="37vLTw" id="1iOpS250$F6" role="37wK5m">
                          <ref role="3cqZAo" node="4O0ojQpL_WD" resolve="myPort" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1iOpS250AsS" role="37wK5m">
                  <ref role="3cqZAo" node="4O0ojQpL_WD" resolve="myPort" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpUMgE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4O0ojQpUP35" role="jymVt" />
      <node concept="3clFb_" id="1iOpS25678j" role="jymVt">
        <property role="TrG5h" value="getModelEndpointPosition" />
        <node concept="3Tm1VV" id="1iOpS25678k" role="1B3o_S" />
        <node concept="3uibUv" id="1iOpS25678l" role="3clF45">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="2AHcQZ" id="1iOpS25678m" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3clFbS" id="1iOpS25678n" role="3clF47">
          <node concept="3clFbF" id="1iOpS25678o" role="3cqZAp">
            <node concept="2OqwBi" id="1iOpS25678p" role="3clFbG">
              <node concept="37vLTw" id="1iOpS25678q" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQpHHiE" resolve="myPortSettingProvider" />
              </node>
              <node concept="liA8E" id="1iOpS25678r" role="2OqNvi">
                <ref role="37wK5l" node="4O0ojQpHFbX" resolve="getEndpointPosition" />
                <node concept="2OqwBi" id="1iOpS25678s" role="37wK5m">
                  <node concept="37vLTw" id="1iOpS25678t" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iOpS24X1n7" resolve="myComponentSettings" />
                  </node>
                  <node concept="liA8E" id="1iOpS25678u" role="2OqNvi">
                    <ref role="37wK5l" node="2syzu7rdJ6W" resolve="getModelForm" />
                    <node concept="2OqwBi" id="1iOpS25678v" role="37wK5m">
                      <node concept="37vLTw" id="1iOpS25678w" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472DSCTm" resolve="myPortToComponent" />
                      </node>
                      <node concept="liA8E" id="1iOpS25678x" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                        <node concept="37vLTw" id="1iOpS25678y" role="37wK5m">
                          <ref role="3cqZAo" node="4O0ojQpL_WD" resolve="myPort" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1iOpS25678z" role="37wK5m">
                  <ref role="3cqZAo" node="4O0ojQpL_WD" resolve="myPort" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1iOpS25678$" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1iOpS256jxO" role="jymVt" />
      <node concept="3clFb_" id="4O0ojQpUMgH" role="jymVt">
        <property role="TrG5h" value="getTransformedEndpointPosition" />
        <node concept="3Tm1VV" id="4O0ojQpUMgJ" role="1B3o_S" />
        <node concept="3uibUv" id="4O0ojQpUMgK" role="3clF45">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQpUMgL" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3clFbS" id="4O0ojQpUMgM" role="3clF47">
          <node concept="3cpWs8" id="1iOpS25DLvb" role="3cqZAp">
            <node concept="3cpWsn" id="1iOpS25DLvc" role="3cpWs9">
              <property role="TrG5h" value="transformedForm" />
              <node concept="16syzq" id="1iOpS25DLv8" role="1tU5fm">
                <ref role="16sUi3" node="1iOpS24VS9U" resolve="CFormT" />
              </node>
              <node concept="2OqwBi" id="1iOpS25DLvd" role="33vP2m">
                <node concept="37vLTw" id="1iOpS25DLve" role="2Oq$k0">
                  <ref role="3cqZAo" node="1iOpS24X1n7" resolve="myComponentSettings" />
                </node>
                <node concept="liA8E" id="1iOpS25DLvf" role="2OqNvi">
                  <ref role="37wK5l" node="2syzu7rdJaJ" resolve="getTransformedForm" />
                  <node concept="2OqwBi" id="1iOpS25DLvg" role="37wK5m">
                    <node concept="37vLTw" id="1iOpS25DLvh" role="2Oq$k0">
                      <ref role="3cqZAo" node="1gL472DSCTm" resolve="myPortToComponent" />
                    </node>
                    <node concept="liA8E" id="1iOpS25DLvi" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                      <node concept="37vLTw" id="1iOpS25DLvj" role="37wK5m">
                        <ref role="3cqZAo" node="4O0ojQpL_WD" resolve="myPort" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1iOpS25DMCZ" role="3cqZAp">
            <node concept="3clFbS" id="1iOpS25DMD1" role="3clFbx">
              <node concept="3cpWs6" id="1iOpS25DPMh" role="3cqZAp">
                <node concept="10Nm6u" id="1iOpS25DPR3" role="3cqZAk" />
              </node>
            </node>
            <node concept="3clFbC" id="1iOpS25DPuA" role="3clFbw">
              <node concept="10Nm6u" id="1iOpS25DPHc" role="3uHU7w" />
              <node concept="37vLTw" id="1iOpS25DMV8" role="3uHU7B">
                <ref role="3cqZAo" node="1iOpS25DLvc" resolve="transformedForm" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1iOpS250AVr" role="3cqZAp">
            <node concept="2OqwBi" id="1iOpS250AVt" role="3clFbG">
              <node concept="37vLTw" id="1iOpS250AVu" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQpHHiE" resolve="myPortSettingProvider" />
              </node>
              <node concept="liA8E" id="1iOpS250AVv" role="2OqNvi">
                <ref role="37wK5l" node="4O0ojQpHFbX" resolve="getEndpointPosition" />
                <node concept="37vLTw" id="1iOpS25DLvk" role="37wK5m">
                  <ref role="3cqZAo" node="1iOpS25DLvc" resolve="transformedForm" />
                </node>
                <node concept="37vLTw" id="1iOpS250AVB" role="37wK5m">
                  <ref role="3cqZAo" node="4O0ojQpL_WD" resolve="myPort" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpUMgN" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4O0ojQpV4hL" role="jymVt" />
      <node concept="3clFb_" id="4O0ojQpUMgY" role="jymVt">
        <property role="TrG5h" value="canBeSourcedAt" />
        <node concept="37vLTG" id="4O0ojQpUMgZ" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="4O0ojQpUMh0" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="4O0ojQpUMh1" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="4O0ojQpUMh2" role="1tU5fm" />
        </node>
        <node concept="3Tm1VV" id="4O0ojQpUMh4" role="1B3o_S" />
        <node concept="10P_77" id="4O0ojQpUMh5" role="3clF45" />
        <node concept="3clFbS" id="4O0ojQpUMh6" role="3clF47">
          <node concept="3clFbF" id="4O0ojQpV6Z$" role="3cqZAp">
            <node concept="2OqwBi" id="4O0ojQpV7bQ" role="3clFbG">
              <node concept="37vLTw" id="4O0ojQpZUIm" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQpHHiE" resolve="myPortSettingProvider" />
              </node>
              <node concept="liA8E" id="4O0ojQpV9iy" role="2OqNvi">
                <ref role="37wK5l" node="4O0ojQpHFc9" resolve="canBeSourcedAt" />
                <node concept="2OqwBi" id="1iOpS24ZUcY" role="37wK5m">
                  <node concept="37vLTw" id="1iOpS24ZTNp" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iOpS24X1n7" resolve="myComponentSettings" />
                  </node>
                  <node concept="liA8E" id="1iOpS24ZXlO" role="2OqNvi">
                    <ref role="37wK5l" node="2syzu7rdJ6W" resolve="getModelForm" />
                    <node concept="2OqwBi" id="1iOpS24ZRFg" role="37wK5m">
                      <node concept="37vLTw" id="1iOpS24ZR5o" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472DSCTm" resolve="myPortToComponent" />
                      </node>
                      <node concept="liA8E" id="1iOpS24ZSdv" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                        <node concept="37vLTw" id="1iOpS24ZSOb" role="37wK5m">
                          <ref role="3cqZAo" node="4O0ojQpL_WD" resolve="myPort" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1iOpS250kx4" role="37wK5m">
                  <ref role="3cqZAo" node="4O0ojQpL_WD" resolve="myPort" />
                </node>
                <node concept="37vLTw" id="4O0ojQpV9ph" role="37wK5m">
                  <ref role="3cqZAo" node="4O0ojQpUMgZ" resolve="x" />
                </node>
                <node concept="37vLTw" id="4O0ojQpV9CJ" role="37wK5m">
                  <ref role="3cqZAo" node="4O0ojQpUMh1" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpUMh7" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4O0ojQpV9Yi" role="jymVt" />
      <node concept="3clFb_" id="4O0ojQpUMha" role="jymVt">
        <property role="TrG5h" value="canBeTargetedAt" />
        <node concept="3Tm1VV" id="4O0ojQpUMhc" role="1B3o_S" />
        <node concept="10P_77" id="4O0ojQpUMhd" role="3clF45" />
        <node concept="37vLTG" id="4O0ojQpUMhe" role="3clF46">
          <property role="TrG5h" value="x" />
          <node concept="10Oyi0" id="4O0ojQpUMhf" role="1tU5fm" />
        </node>
        <node concept="37vLTG" id="4O0ojQpUMhg" role="3clF46">
          <property role="TrG5h" value="y" />
          <node concept="10Oyi0" id="4O0ojQpUMhh" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="4O0ojQpUMhi" role="3clF47">
          <node concept="3clFbF" id="4O0ojQpV9LA" role="3cqZAp">
            <node concept="2OqwBi" id="4O0ojQpZVqS" role="3clFbG">
              <node concept="37vLTw" id="4O0ojQpZVqT" role="2Oq$k0">
                <ref role="3cqZAo" node="4O0ojQpHHiE" resolve="myPortSettingProvider" />
              </node>
              <node concept="liA8E" id="4O0ojQpZVqU" role="2OqNvi">
                <ref role="37wK5l" node="4O0ojQpHFcl" resolve="canBeTargetedAt" />
                <node concept="2OqwBi" id="1iOpS250kQd" role="37wK5m">
                  <node concept="37vLTw" id="1iOpS250kQe" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iOpS24X1n7" resolve="myComponentSettings" />
                  </node>
                  <node concept="liA8E" id="1iOpS250kQf" role="2OqNvi">
                    <ref role="37wK5l" node="2syzu7rdJ6W" resolve="getModelForm" />
                    <node concept="2OqwBi" id="1iOpS250kQg" role="37wK5m">
                      <node concept="37vLTw" id="1iOpS250kQh" role="2Oq$k0">
                        <ref role="3cqZAo" node="1gL472DSCTm" resolve="myPortToComponent" />
                      </node>
                      <node concept="liA8E" id="1iOpS250kQi" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
                        <node concept="37vLTw" id="1iOpS250kQj" role="37wK5m">
                          <ref role="3cqZAo" node="4O0ojQpL_WD" resolve="myPort" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="4O0ojQpZVqV" role="37wK5m">
                  <ref role="3cqZAo" node="4O0ojQpL_WD" resolve="myPort" />
                </node>
                <node concept="37vLTw" id="4O0ojQpZVqW" role="37wK5m">
                  <ref role="3cqZAo" node="4O0ojQpUMhe" resolve="x" />
                </node>
                <node concept="37vLTw" id="4O0ojQpZVqX" role="37wK5m">
                  <ref role="3cqZAo" node="4O0ojQpUMhg" resolve="y" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4O0ojQpUMhj" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3uibUv" id="4O0ojQpUzo9" role="EKbjA">
        <ref role="3uigEE" node="2JpbWDsQSwS" resolve="PortController" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIX$B5S" role="jymVt" />
    <node concept="3Tm1VV" id="4O0ojQpH3gx" role="1B3o_S" />
    <node concept="16euLQ" id="4O0ojQpHwZE" role="16eVyc">
      <property role="TrG5h" value="CompT" />
    </node>
    <node concept="16euLQ" id="4O0ojQpHx08" role="16eVyc">
      <property role="TrG5h" value="PortT" />
    </node>
    <node concept="16euLQ" id="4O0ojQpHx1T" role="16eVyc">
      <property role="TrG5h" value="ConnT" />
    </node>
    <node concept="16euLQ" id="1iOpS24VS9U" role="16eVyc">
      <property role="TrG5h" value="CFormT" />
    </node>
    <node concept="3clFb_" id="4y$DvIX$zw5" role="jymVt">
      <property role="TrG5h" value="getDiagramController" />
      <node concept="3uibUv" id="4y$DvIX$zw6" role="3clF45">
        <ref role="3uigEE" node="2JpbWDsQT0H" resolve="DiagramController" />
        <node concept="16syzq" id="4y$DvIX$zw7" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHwZE" resolve="CompT" />
        </node>
        <node concept="16syzq" id="4y$DvIX$zw8" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHx08" resolve="PortT" />
        </node>
        <node concept="16syzq" id="4y$DvIX$zw9" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpHx1T" resolve="ConnT" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIX$zwa" role="1B3o_S" />
      <node concept="3clFbS" id="4y$DvIX$zwb" role="3clF47">
        <node concept="3clFbF" id="4y$DvIX$zwc" role="3cqZAp">
          <node concept="37vLTw" id="4y$DvIX$zw4" role="3clFbG">
            <ref role="3cqZAo" node="4O0ojQpHMQW" resolve="myDiagramController" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="4O0ojQpH$TE">
    <property role="TrG5h" value="DiagramView" />
    <node concept="3Tm1VV" id="4O0ojQpH$TF" role="1B3o_S" />
    <node concept="16euLQ" id="4O0ojQpH$U5" role="16eVyc">
      <property role="TrG5h" value="C" />
    </node>
    <node concept="16euLQ" id="4O0ojQpH$Uh" role="16eVyc">
      <property role="TrG5h" value="P" />
    </node>
    <node concept="16euLQ" id="4O0ojQpH$Uw" role="16eVyc">
      <property role="TrG5h" value="E" />
    </node>
    <node concept="2tJIrI" id="4O0ojQpH$V2" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQpH$XA" role="jymVt">
      <property role="TrG5h" value="components" />
      <node concept="3clFbS" id="4O0ojQpH$XD" role="3clF47" />
      <node concept="3Tm1VV" id="4O0ojQpH$XE" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQpH$Wb" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="16syzq" id="4O0ojQpH$Xp" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpH$U5" resolve="C" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIW9F7c" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpH_uN" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQpH__0" role="jymVt">
      <property role="TrG5h" value="edges" />
      <node concept="3clFbS" id="4O0ojQpH__3" role="3clF47" />
      <node concept="3Tm1VV" id="4O0ojQpH__4" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQpH_xy" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="16syzq" id="4O0ojQpH_$p" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpH$Uw" resolve="E" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIW9FqR" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpH$Ye" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQpH_1P" role="jymVt">
      <property role="TrG5h" value="ports" />
      <node concept="3clFbS" id="4O0ojQpH_1S" role="3clF47" />
      <node concept="3Tm1VV" id="4O0ojQpH_1T" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQpH_07" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="16syzq" id="4O0ojQpH_1C" role="11_B2D">
          <ref role="16sUi3" node="4O0ojQpH$Uh" resolve="P" />
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQpH_3f" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="4O0ojQpH_3e" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpH$U5" resolve="C" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW9FDk" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIW9FyC" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpH_4O" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQpH_7$" role="jymVt">
      <property role="TrG5h" value="component" />
      <node concept="37vLTG" id="4O0ojQpH_99" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="16syzq" id="4O0ojQpH_as" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpH$Uh" resolve="P" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW9FL9" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4O0ojQpH_7B" role="3clF47" />
      <node concept="3Tm1VV" id="4O0ojQpH_7C" role="1B3o_S" />
      <node concept="16syzq" id="4O0ojQpH_6L" role="3clF45">
        <ref role="16sUi3" node="4O0ojQpH$U5" resolve="C" />
      </node>
      <node concept="2AHcQZ" id="4y$DvIW9FPW" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpH_b_" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQpH_ig" role="jymVt">
      <property role="TrG5h" value="sourcePort" />
      <node concept="3clFbS" id="4O0ojQpH_ij" role="3clF47" />
      <node concept="3Tm1VV" id="4O0ojQpH_ik" role="1B3o_S" />
      <node concept="16syzq" id="4O0ojQpH_h9" role="3clF45">
        <ref role="16sUi3" node="4O0ojQpH$Uh" resolve="P" />
      </node>
      <node concept="37vLTG" id="4O0ojQpH_l4" role="3clF46">
        <property role="TrG5h" value="edge" />
        <node concept="16syzq" id="4O0ojQpH_l3" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpH$Uw" resolve="E" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW9G0R" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIW9FVD" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW1otE" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW1oBz" role="jymVt">
      <property role="TrG5h" value="setSourcePort" />
      <node concept="3clFbS" id="4y$DvIW1oBA" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIW1oBB" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIW1o__" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIW1oEO" role="3clF46">
        <property role="TrG5h" value="edge" />
        <node concept="16syzq" id="4y$DvIW1oEN" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpH$Uw" resolve="E" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW9G4d" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIW1oHU" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="16syzq" id="4y$DvIW1oK$" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpH$Uh" resolve="P" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW9G7V" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpH_n5" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQpH_qO" role="jymVt">
      <property role="TrG5h" value="targetPort" />
      <node concept="3clFbS" id="4O0ojQpH_qR" role="3clF47" />
      <node concept="3Tm1VV" id="4O0ojQpH_qS" role="1B3o_S" />
      <node concept="16syzq" id="4O0ojQpH_pp" role="3clF45">
        <ref role="16sUi3" node="4O0ojQpH$Uh" resolve="P" />
      </node>
      <node concept="37vLTG" id="4O0ojQpH_t2" role="3clF46">
        <property role="TrG5h" value="edge" />
        <node concept="16syzq" id="4O0ojQpH_t1" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpH$Uw" resolve="E" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW9GbA" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIW9Ghx" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW1oND" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW1oTC" role="jymVt">
      <property role="TrG5h" value="setTargetPort" />
      <node concept="3clFbS" id="4y$DvIW1oTF" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIW1oTG" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIW1oRg" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIW1oXj" role="3clF46">
        <property role="TrG5h" value="edge" />
        <node concept="16syzq" id="4y$DvIW1oXi" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpH$Uw" resolve="E" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW9GlS" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIW1p1K" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="16syzq" id="4y$DvIW1p4F" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpH$Uh" resolve="P" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW9Gqj" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIW9EWG" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW9EYB" role="jymVt">
      <property role="TrG5h" value="removeEdge" />
      <node concept="37vLTG" id="4y$DvIW9EYC" role="3clF46">
        <property role="TrG5h" value="edge" />
        <node concept="16syzq" id="4y$DvIW9EYD" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpH$Uw" resolve="E" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW9EYE" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIW9EYF" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIW9EYG" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIW9EYH" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4y$DvIW9EYI" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIW9EYJ" role="jymVt">
      <property role="TrG5h" value="addEdge" />
      <node concept="37vLTG" id="4y$DvIW9EYK" role="3clF46">
        <property role="TrG5h" value="sourcePort" />
        <node concept="16syzq" id="4y$DvIW9EYL" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpH$Uh" resolve="P" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW9EYM" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIW9EYN" role="3clF46">
        <property role="TrG5h" value="targetPort" />
        <node concept="16syzq" id="4y$DvIW9EYO" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpH$Uh" resolve="P" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIW9EYP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIW9EYQ" role="3clF47" />
      <node concept="3Tm1VV" id="4y$DvIW9EYR" role="1B3o_S" />
      <node concept="16syzq" id="4y$DvIW9IJR" role="3clF45">
        <ref role="16sUi3" node="4O0ojQpH$Uw" resolve="E" />
      </node>
      <node concept="2AHcQZ" id="5MmYuOgyJ6Y" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="4O0ojQpHEzY">
    <property role="TrG5h" value="PortSettingProvider" />
    <node concept="2tJIrI" id="4O0ojQpHFbC" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQpHFbR" role="jymVt">
      <property role="TrG5h" value="getBounds" />
      <node concept="3clFbS" id="4O0ojQpHFbS" role="3clF47" />
      <node concept="3Tm1VV" id="4O0ojQpHFbT" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQpHFbU" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="2AHcQZ" id="4O0ojQpHFbV" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="1iOpS24VBGu" role="3clF46">
        <property role="TrG5h" value="componentForm" />
        <node concept="16syzq" id="1iOpS24VBKy" role="1tU5fm">
          <ref role="16sUi3" node="1iOpS24VBzG" resolve="CFormT" />
        </node>
        <node concept="2AHcQZ" id="1iOpS24VBNa" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQpZ9rV" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="16syzq" id="4O0ojQpZ9rU" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpZ9q$" resolve="PortT" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQpZ9to" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpHFbW" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQpHFbX" role="jymVt">
      <property role="TrG5h" value="getEndpointPosition" />
      <node concept="37vLTG" id="1iOpS24VBUJ" role="3clF46">
        <property role="TrG5h" value="componentForm" />
        <node concept="16syzq" id="1iOpS24VBUK" role="1tU5fm">
          <ref role="16sUi3" node="1iOpS24VBzG" resolve="CFormT" />
        </node>
        <node concept="2AHcQZ" id="1iOpS24VBUL" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQpZ9u_" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="16syzq" id="4O0ojQpZ9uA" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpZ9q$" resolve="PortT" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQpZ9uB" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4O0ojQpHFbY" role="3clF47" />
      <node concept="3Tm1VV" id="4O0ojQpHFbZ" role="1B3o_S" />
      <node concept="3uibUv" id="4O0ojQpHFc0" role="3clF45">
        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
      </node>
      <node concept="2AHcQZ" id="4O0ojQpHFc1" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="4O0ojQpHFc8" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQpHFc9" role="jymVt">
      <property role="TrG5h" value="canBeSourcedAt" />
      <node concept="37vLTG" id="1iOpS24VBYM" role="3clF46">
        <property role="TrG5h" value="componentForm" />
        <node concept="16syzq" id="1iOpS24VBYN" role="1tU5fm">
          <ref role="16sUi3" node="1iOpS24VBzG" resolve="CFormT" />
        </node>
        <node concept="2AHcQZ" id="1iOpS24VBYO" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQpZ9vW" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="16syzq" id="4O0ojQpZ9vX" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpZ9q$" resolve="PortT" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQpZ9vY" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQpHFca" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="4O0ojQpHFcb" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4O0ojQpHFcc" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="4O0ojQpHFcd" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="4O0ojQpHFce" role="3clF47">
        <node concept="3clFbF" id="4O0ojQpHFcf" role="3cqZAp">
          <node concept="3clFbT" id="4O0ojQpHFcg" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4O0ojQpHFch" role="1B3o_S" />
      <node concept="10P_77" id="4O0ojQpHFci" role="3clF45" />
      <node concept="2JFqV2" id="4O0ojQpHFcj" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="4O0ojQpHFck" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQpHFcl" role="jymVt">
      <property role="TrG5h" value="canBeTargetedAt" />
      <node concept="3clFbS" id="4O0ojQpHFcm" role="3clF47">
        <node concept="3clFbF" id="4O0ojQpHFcn" role="3cqZAp">
          <node concept="3clFbT" id="4O0ojQpHFco" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4O0ojQpHFcp" role="1B3o_S" />
      <node concept="10P_77" id="4O0ojQpHFcq" role="3clF45" />
      <node concept="37vLTG" id="1iOpS24VC3j" role="3clF46">
        <property role="TrG5h" value="componentForm" />
        <node concept="16syzq" id="1iOpS24VC3k" role="1tU5fm">
          <ref role="16sUi3" node="1iOpS24VBzG" resolve="CFormT" />
        </node>
        <node concept="2AHcQZ" id="1iOpS24VC3l" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQpZ9xE" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="16syzq" id="4O0ojQpZ9xF" role="1tU5fm">
          <ref role="16sUi3" node="4O0ojQpZ9q$" resolve="PortT" />
        </node>
        <node concept="2AHcQZ" id="4O0ojQpZ9xG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQpHFcr" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="4O0ojQpHFcs" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4O0ojQpHFct" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="4O0ojQpHFcu" role="1tU5fm" />
      </node>
      <node concept="2JFqV2" id="4O0ojQpHFcv" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="4O0ojQpHFbF" role="jymVt" />
    <node concept="3Tm1VV" id="4O0ojQpHEzZ" role="1B3o_S" />
    <node concept="16euLQ" id="4O0ojQpZ9q$" role="16eVyc">
      <property role="TrG5h" value="PortT" />
    </node>
    <node concept="16euLQ" id="1iOpS24VBzG" role="16eVyc">
      <property role="TrG5h" value="CFormT" />
    </node>
  </node>
  <node concept="3HP615" id="4y$DvIW4oYS">
    <property role="TrG5h" value="ConnectionControllerFactory" />
    <node concept="2tJIrI" id="4y$DvIW4oZq" role="jymVt" />
    <node concept="3clFb_" id="4O0ojQq3jsJ" role="jymVt">
      <property role="TrG5h" value="create" />
      <node concept="3clFbS" id="4O0ojQq3jsM" role="3clF47" />
      <node concept="3Tm1VV" id="4O0ojQq3jsN" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIW4p8b" role="3clF45">
        <ref role="3uigEE" node="7sG$k3BBij3" resolve="ConnectionController" />
        <node concept="16syzq" id="1iOpS25fwmr" role="11_B2D">
          <ref role="16sUi3" node="1iOpS25fwiw" resolve="CursorT" />
        </node>
        <node concept="16syzq" id="1iOpS25fwnB" role="11_B2D">
          <ref role="16sUi3" node="1iOpS25fwjG" resolve="PathT" />
        </node>
      </node>
      <node concept="37vLTG" id="4O0ojQq3jvs" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4O0ojQq3jxp" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIVPduo" role="3clF46">
        <property role="TrG5h" value="view" />
        <node concept="16syzq" id="4y$DvIW4p6H" role="1tU5fm">
          <ref role="16sUi3" node="4y$DvIW4p2N" resolve="ViewT" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="4y$DvIW4oYT" role="1B3o_S" />
    <node concept="16euLQ" id="4y$DvIW4p2N" role="16eVyc">
      <property role="TrG5h" value="ViewT" />
    </node>
    <node concept="16euLQ" id="1iOpS25fwiw" role="16eVyc">
      <property role="TrG5h" value="CursorT" />
    </node>
    <node concept="16euLQ" id="1iOpS25fwjG" role="16eVyc">
      <property role="TrG5h" value="PathT" />
    </node>
  </node>
  <node concept="312cEu" id="7_KjZP9d656">
    <property role="TrG5h" value="ConnectionEntry" />
    <property role="2bfB8j" value="true" />
    <node concept="312cEg" id="4y$DvIWN9gA" role="jymVt">
      <property role="TrG5h" value="myConnFacility" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4y$DvIWN9gB" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIWN9gD" role="1tU5fm">
        <ref role="3uigEE" node="2JpbWDsQSWA" resolve="ConnectionsFacility" />
        <node concept="16syzq" id="4y$DvIXb9Hk" role="11_B2D">
          <ref role="16sUi3" node="4y$DvIXb8K3" resolve="CompT" />
        </node>
        <node concept="16syzq" id="4y$DvIXbaDH" role="11_B2D">
          <ref role="16sUi3" node="4y$DvIXb8K4" resolve="PortT" />
        </node>
        <node concept="16syzq" id="4y$DvIWN9gG" role="11_B2D">
          <ref role="16sUi3" node="4y$DvIWkmcx" resolve="ConnT" />
        </node>
        <node concept="16syzq" id="4y$DvIWN9gH" role="11_B2D">
          <ref role="16sUi3" node="4y$DvIWkmcy" resolve="CursorT" />
        </node>
        <node concept="16syzq" id="4y$DvIWN9gI" role="11_B2D">
          <ref role="16sUi3" node="4y$DvIWkmcz" resolve="PathT" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7_KjZP9ek_0" role="jymVt">
      <property role="TrG5h" value="myConnection" />
      <property role="3TUv4t" value="true" />
      <node concept="16syzq" id="4y$DvIW70iR" role="1tU5fm">
        <ref role="16sUi3" node="4y$DvIWkmcx" resolve="ConnT" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS25AI$P" role="jymVt" />
    <node concept="312cEg" id="7_KjZP9f9dA" role="jymVt">
      <property role="TrG5h" value="myController" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7_KjZP9f9cY" role="1tU5fm">
        <ref role="3uigEE" node="7sG$k3BBij3" resolve="ConnectionController" />
        <node concept="16syzq" id="1gL472DHvJx" role="11_B2D">
          <ref role="16sUi3" node="4y$DvIWkmcy" resolve="CursorT" />
        </node>
        <node concept="16syzq" id="1gL472DHx0T" role="11_B2D">
          <ref role="16sUi3" node="4y$DvIWkmcz" resolve="PathT" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIXPEvx" role="jymVt" />
    <node concept="312cEg" id="7_KjZP9f7KU" role="jymVt">
      <property role="TrG5h" value="myModelPath" />
      <node concept="16syzq" id="7_KjZP9f7Dg" role="1tU5fm">
        <ref role="16sUi3" node="4y$DvIWkmcz" resolve="PathT" />
      </node>
    </node>
    <node concept="312cEg" id="7_KjZP9glio" role="jymVt">
      <property role="TrG5h" value="myTransformedPath" />
      <node concept="16syzq" id="7_KjZP9gmvD" role="1tU5fm">
        <ref role="16sUi3" node="4y$DvIWkmcz" resolve="PathT" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS25nofk" role="jymVt" />
    <node concept="312cEg" id="4y$DvIXPDrL" role="jymVt">
      <property role="TrG5h" value="myModelPathProvider" />
      <node concept="3uibUv" id="4y$DvIXPDjD" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~BiFunction" resolve="BiFunction" />
        <node concept="3uibUv" id="1iOpS25ib0B" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="3uibUv" id="1iOpS25ibhK" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
        <node concept="16syzq" id="4y$DvIXPDlk" role="11_B2D">
          <ref role="16sUi3" node="4y$DvIWkmcz" resolve="PathT" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4y$DvIXPFyr" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7_KjZP9ffvc" role="jymVt" />
    <node concept="3clFbW" id="7_KjZP9fg0l" role="jymVt">
      <node concept="37vLTG" id="4y$DvIWm1NU" role="3clF46">
        <property role="TrG5h" value="connFacility" />
        <node concept="3uibUv" id="4y$DvIWm3d$" role="1tU5fm">
          <ref role="3uigEE" node="2JpbWDsQSWA" resolve="ConnectionsFacility" />
          <node concept="16syzq" id="4y$DvIXbbC9" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIXb8K3" resolve="CompT" />
          </node>
          <node concept="16syzq" id="4y$DvIXbbCa" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIXb8K4" resolve="PortT" />
          </node>
          <node concept="16syzq" id="4y$DvIWMLeb" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIWkmcx" resolve="ConnT" />
          </node>
          <node concept="16syzq" id="4y$DvIWMNGP" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIWkmcy" resolve="CursorT" />
          </node>
          <node concept="16syzq" id="4y$DvIWMQhm" role="11_B2D">
            <ref role="16sUi3" node="4y$DvIWkmcz" resolve="PathT" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7_KjZP9fgwh" role="3clF46">
        <property role="TrG5h" value="connection" />
        <node concept="16syzq" id="4y$DvIW6ZAD" role="1tU5fm">
          <ref role="16sUi3" node="4y$DvIWkmcx" resolve="ConnT" />
        </node>
      </node>
      <node concept="3cqZAl" id="7_KjZP9fg0n" role="3clF45" />
      <node concept="3clFbS" id="7_KjZP9fg0p" role="3clF47">
        <node concept="3clFbF" id="4y$DvIWNi0o" role="3cqZAp">
          <node concept="37vLTI" id="4y$DvIWNnjG" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIWNoGy" role="37vLTx">
              <ref role="3cqZAo" node="4y$DvIWm1NU" resolve="connFacility" />
            </node>
            <node concept="37vLTw" id="4y$DvIWNi0m" role="37vLTJ">
              <ref role="3cqZAo" node="4y$DvIWN9gA" resolve="myConnFacility" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7_KjZP9fgBH" role="3cqZAp">
          <node concept="37vLTI" id="7_KjZP9fhvt" role="3clFbG">
            <node concept="37vLTw" id="7_KjZP9fh$e" role="37vLTx">
              <ref role="3cqZAo" node="7_KjZP9fgwh" resolve="connection" />
            </node>
            <node concept="37vLTw" id="7_KjZP9fgBG" role="37vLTJ">
              <ref role="3cqZAo" node="7_KjZP9ek_0" resolve="myConnection" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7_KjZP9flbE" role="3cqZAp">
          <node concept="37vLTI" id="7_KjZP9flUm" role="3clFbG">
            <node concept="2OqwBi" id="7_KjZP9fmqJ" role="37vLTx">
              <node concept="2OqwBi" id="4y$DvIWOOpd" role="2Oq$k0">
                <node concept="37vLTw" id="4y$DvIWOPCv" role="2Oq$k0">
                  <ref role="3cqZAo" node="4y$DvIWN9gA" resolve="myConnFacility" />
                </node>
                <node concept="2OwXpG" id="4y$DvIWOOpg" role="2OqNvi">
                  <ref role="2Oxat5" node="3vyG44At6jy" resolve="myControllerFactory" />
                </node>
              </node>
              <node concept="liA8E" id="7_KjZP9fmOd" role="2OqNvi">
                <ref role="37wK5l" node="4O0ojQq3jsJ" resolve="create" />
                <node concept="2OqwBi" id="4y$DvIW7a9I" role="37wK5m">
                  <node concept="2OqwBi" id="4y$DvIWSxCn" role="2Oq$k0">
                    <node concept="37vLTw" id="4y$DvIWSyT8" role="2Oq$k0">
                      <ref role="3cqZAo" node="4y$DvIWN9gA" resolve="myConnFacility" />
                    </node>
                    <node concept="2OwXpG" id="4y$DvIWSxCq" role="2OqNvi">
                      <ref role="2Oxat5" node="7_KjZP9hsMT" resolve="myScene" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4y$DvIW7aBS" role="2OqNvi">
                    <ref role="37wK5l" to="3bo0:7sG$k3BQmmw" resolve="getContext" />
                  </node>
                </node>
                <node concept="37vLTw" id="4y$DvIW7bzD" role="37wK5m">
                  <ref role="3cqZAo" node="7_KjZP9ek_0" resolve="myConnection" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7_KjZP9flbC" role="37vLTJ">
              <ref role="3cqZAo" node="7_KjZP9f9dA" resolve="myController" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4y$DvIXPGgb" role="3cqZAp">
          <node concept="37vLTI" id="4y$DvIXPHgI" role="3clFbG">
            <node concept="2OqwBi" id="4y$DvIXPIUM" role="37vLTx">
              <node concept="2OqwBi" id="4y$DvIXPIUN" role="2Oq$k0">
                <node concept="37vLTw" id="4y$DvIXPIUO" role="2Oq$k0">
                  <ref role="3cqZAo" node="4y$DvIWN9gA" resolve="myConnFacility" />
                </node>
                <node concept="2OwXpG" id="4y$DvIXPIUP" role="2OqNvi">
                  <ref role="2Oxat5" node="7_KjZP9eRe1" resolve="myConnectionSyncronizer" />
                </node>
              </node>
              <node concept="liA8E" id="4y$DvIXPIUQ" role="2OqNvi">
                <ref role="37wK5l" node="7_KjZP9eHTC" resolve="getPath" />
                <node concept="37vLTw" id="4y$DvIXPIUR" role="37wK5m">
                  <ref role="3cqZAo" node="7_KjZP9ek_0" resolve="myConnection" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4y$DvIXPGg9" role="37vLTJ">
              <ref role="3cqZAo" node="4y$DvIXPDrL" resolve="myModelPathProvider" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS25oP98" role="jymVt" />
    <node concept="2tJIrI" id="4y$DvIXORdQ" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIXOUcN" role="jymVt">
      <property role="TrG5h" value="relayout" />
      <node concept="3clFbS" id="4y$DvIXOUcQ" role="3clF47">
        <node concept="3cpWs8" id="1iOpS25i6m0" role="3cqZAp">
          <node concept="3cpWsn" id="1iOpS25i6m1" role="3cpWs9">
            <property role="TrG5h" value="diagramController" />
            <node concept="3uibUv" id="1iOpS25i6lA" role="1tU5fm">
              <ref role="3uigEE" node="2JpbWDsQT0H" resolve="DiagramController" />
              <node concept="16syzq" id="1iOpS25i6lH" role="11_B2D">
                <ref role="16sUi3" node="4y$DvIXb8K3" resolve="CompT" />
              </node>
              <node concept="16syzq" id="1iOpS25i6lJ" role="11_B2D">
                <ref role="16sUi3" node="4y$DvIXb8K4" resolve="PortT" />
              </node>
              <node concept="16syzq" id="1iOpS25i6lI" role="11_B2D">
                <ref role="16sUi3" node="4y$DvIWkmcx" resolve="ConnT" />
              </node>
            </node>
            <node concept="2OqwBi" id="1iOpS25i6m2" role="33vP2m">
              <node concept="37vLTw" id="1iOpS25i6m3" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIWN9gA" resolve="myConnFacility" />
              </node>
              <node concept="2OwXpG" id="1iOpS25i6m4" role="2OqNvi">
                <ref role="2Oxat5" node="7_KjZP9iXjm" resolve="myDiagramController" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1iOpS25i94j" role="3cqZAp">
          <node concept="3cpWsn" id="1iOpS25i94k" role="3cpWs9">
            <property role="TrG5h" value="sourcePort" />
            <node concept="3uibUv" id="1iOpS25i93x" role="1tU5fm">
              <ref role="3uigEE" node="2JpbWDsQSwS" resolve="PortController" />
            </node>
            <node concept="2OqwBi" id="1iOpS25i94l" role="33vP2m">
              <node concept="37vLTw" id="1iOpS25i94m" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25i6m1" resolve="diagramController" />
              </node>
              <node concept="liA8E" id="1iOpS25i94n" role="2OqNvi">
                <ref role="37wK5l" node="3vyG44Arcu2" resolve="getPortController" />
                <node concept="2OqwBi" id="1iOpS25i94o" role="37wK5m">
                  <node concept="37vLTw" id="1iOpS25i94p" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iOpS25i6m1" resolve="diagramController" />
                  </node>
                  <node concept="liA8E" id="1iOpS25i94q" role="2OqNvi">
                    <ref role="37wK5l" node="4O0ojQpINv1" resolve="getSource" />
                    <node concept="37vLTw" id="1iOpS25i94r" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP9ek_0" resolve="myConnection" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1iOpS25i9H$" role="3cqZAp">
          <node concept="3cpWsn" id="1iOpS25i9H_" role="3cpWs9">
            <property role="TrG5h" value="targetPort" />
            <node concept="3uibUv" id="1iOpS25i9HA" role="1tU5fm">
              <ref role="3uigEE" node="2JpbWDsQSwS" resolve="PortController" />
            </node>
            <node concept="2OqwBi" id="1iOpS25i9HB" role="33vP2m">
              <node concept="37vLTw" id="1iOpS25i9HC" role="2Oq$k0">
                <ref role="3cqZAo" node="1iOpS25i6m1" resolve="diagramController" />
              </node>
              <node concept="liA8E" id="1iOpS25i9HD" role="2OqNvi">
                <ref role="37wK5l" node="3vyG44Arcu2" resolve="getPortController" />
                <node concept="2OqwBi" id="1iOpS25i9HE" role="37wK5m">
                  <node concept="37vLTw" id="1iOpS25i9HF" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iOpS25i6m1" resolve="diagramController" />
                  </node>
                  <node concept="liA8E" id="1iOpS25i9HG" role="2OqNvi">
                    <ref role="37wK5l" node="4O0ojQpINEG" resolve="getTarget" />
                    <node concept="37vLTw" id="1iOpS25i9HH" role="37wK5m">
                      <ref role="3cqZAo" node="7_KjZP9ek_0" resolve="myConnection" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4y$DvIXOWdg" role="3cqZAp">
          <node concept="37vLTI" id="4y$DvIXP8Xr" role="3clFbG">
            <node concept="2OqwBi" id="4y$DvIXPJiB" role="37vLTx">
              <node concept="37vLTw" id="4y$DvIXPJiC" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIXPDrL" resolve="myModelPathProvider" />
              </node>
              <node concept="liA8E" id="4y$DvIXPJiD" role="2OqNvi">
                <ref role="37wK5l" to="82uw:~BiFunction.apply(java.lang.Object,java.lang.Object)" resolve="apply" />
                <node concept="2OqwBi" id="1iOpS25ifn3" role="37wK5m">
                  <node concept="37vLTw" id="1iOpS25if7Q" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iOpS25i94k" resolve="sourcePort" />
                  </node>
                  <node concept="liA8E" id="1iOpS25if$D" role="2OqNvi">
                    <ref role="37wK5l" node="1iOpS255UuU" resolve="getModelEndpointPosition" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1iOpS25ifGk" role="37wK5m">
                  <node concept="37vLTw" id="1iOpS25ifSn" role="2Oq$k0">
                    <ref role="3cqZAo" node="1iOpS25i9H_" resolve="targetPort" />
                  </node>
                  <node concept="liA8E" id="1iOpS25ifGm" role="2OqNvi">
                    <ref role="37wK5l" node="1iOpS255UuU" resolve="getModelEndpointPosition" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1iOpS25oY9L" role="37vLTJ">
              <ref role="3cqZAo" node="7_KjZP9f7KU" resolve="myModelPath" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24NqLH" role="3cqZAp">
          <node concept="2OqwBi" id="1iOpS24Nr65" role="3clFbG">
            <node concept="37vLTw" id="1iOpS24NqLF" role="2Oq$k0">
              <ref role="3cqZAo" node="7_KjZP9f9dA" resolve="myController" />
            </node>
            <node concept="liA8E" id="1iOpS24Nriq" role="2OqNvi">
              <ref role="37wK5l" node="1iOpS24JP$C" resolve="updateCellWithPath" />
              <node concept="3K4zz7" id="38k27IRsLSX" role="37wK5m">
                <node concept="37vLTw" id="38k27IRwEfo" role="3K4E3e">
                  <ref role="3cqZAo" node="7_KjZP9glio" resolve="myTransformedPath" />
                </node>
                <node concept="37vLTw" id="38k27IRwEpK" role="3K4GZi">
                  <ref role="3cqZAo" node="7_KjZP9f7KU" resolve="myModelPath" />
                </node>
                <node concept="3y3z36" id="38k27IRsLCH" role="3K4Cdx">
                  <node concept="10Nm6u" id="38k27IRsLKW" role="3uHU7w" />
                  <node concept="37vLTw" id="38k27IRwEaO" role="3uHU7B">
                    <ref role="3cqZAo" node="7_KjZP9glio" resolve="myTransformedPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="38k27IQSIP6" role="3cqZAp">
          <node concept="2OqwBi" id="38k27IQSJfd" role="3clFbG">
            <node concept="37vLTw" id="38k27IQSJ2l" role="2Oq$k0">
              <ref role="3cqZAo" node="7_KjZP9f9dA" resolve="myController" />
            </node>
            <node concept="liA8E" id="38k27IQSLFh" role="2OqNvi">
              <ref role="37wK5l" node="38k27IQS4XN" resolve="updateCellSelection" />
              <node concept="1rXfSq" id="38k27IQSNjM" role="37wK5m">
                <ref role="37wK5l" node="7_KjZP9dhcj" resolve="isSelected" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4y$DvIXOTdh" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1iOpS25oWCh" role="jymVt" />
    <node concept="3clFb_" id="7_KjZP9dhcr" role="jymVt">
      <property role="TrG5h" value="getCursor" />
      <node concept="16syzq" id="7_KjZP9dhcw" role="3clF45">
        <ref role="16sUi3" node="4y$DvIWkmcy" resolve="CursorT" />
      </node>
      <node concept="2AHcQZ" id="7_KjZP9dhcv" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="7_KjZP9dhcx" role="3clF47">
        <node concept="3clFbJ" id="7_KjZP9euvE" role="3cqZAp">
          <node concept="22lmx$" id="7_KjZP9eyET" role="3clFbw">
            <node concept="3y3z36" id="7_KjZP9e$R4" role="3uHU7w">
              <node concept="37vLTw" id="7_KjZP9e_2J" role="3uHU7w">
                <ref role="3cqZAo" node="7_KjZP9ek_0" resolve="myConnection" />
              </node>
              <node concept="2OqwBi" id="7_KjZP9ezak" role="3uHU7B">
                <node concept="2OqwBi" id="4y$DvIX65vf" role="2Oq$k0">
                  <node concept="37vLTw" id="4y$DvIX65J4" role="2Oq$k0">
                    <ref role="3cqZAo" node="4y$DvIWN9gA" resolve="myConnFacility" />
                  </node>
                  <node concept="2OwXpG" id="4y$DvIX65vi" role="2OqNvi">
                    <ref role="2Oxat5" node="IMWzYPfPBM" resolve="myConnectionCursor" />
                  </node>
                </node>
                <node concept="liA8E" id="7_KjZP9ezpp" role="2OqNvi">
                  <ref role="37wK5l" node="IMWzYPfMTI" resolve="getConnection" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="7_KjZP9eykS" role="3uHU7B">
              <node concept="2OqwBi" id="4y$DvIX652r" role="3uHU7B">
                <node concept="37vLTw" id="4y$DvIX65ac" role="2Oq$k0">
                  <ref role="3cqZAo" node="4y$DvIWN9gA" resolve="myConnFacility" />
                </node>
                <node concept="2OwXpG" id="4y$DvIX652u" role="2OqNvi">
                  <ref role="2Oxat5" node="IMWzYPfPBM" resolve="myConnectionCursor" />
                </node>
              </node>
              <node concept="10Nm6u" id="7_KjZP9eyrB" role="3uHU7w" />
            </node>
          </node>
          <node concept="3clFbS" id="7_KjZP9euvG" role="3clFbx">
            <node concept="3cpWs6" id="7_KjZP9ey$4" role="3cqZAp">
              <node concept="10Nm6u" id="7_KjZP9e_hF" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7_KjZP9eB8X" role="3cqZAp">
          <node concept="2OqwBi" id="7_KjZP9eCE6" role="3cqZAk">
            <node concept="2OqwBi" id="4y$DvIX66e5" role="2Oq$k0">
              <node concept="37vLTw" id="4y$DvIX67dJ" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIWN9gA" resolve="myConnFacility" />
              </node>
              <node concept="2OwXpG" id="4y$DvIX66e8" role="2OqNvi">
                <ref role="2Oxat5" node="IMWzYPfPBM" resolve="myConnectionCursor" />
              </node>
            </node>
            <node concept="liA8E" id="7_KjZP9eDgv" role="2OqNvi">
              <ref role="37wK5l" node="IMWzYPfMTQ" resolve="getCursor" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7_KjZP9ff1o" role="jymVt" />
    <node concept="3clFb_" id="7_KjZP9dhcj" role="jymVt">
      <property role="TrG5h" value="isSelected" />
      <node concept="10P_77" id="7_KjZP9dhcm" role="3clF45" />
      <node concept="3clFbS" id="7_KjZP9dhcn" role="3clF47">
        <node concept="3cpWs8" id="4y$DvIXb1ey" role="3cqZAp">
          <node concept="3cpWsn" id="4y$DvIXb1ez" role="3cpWs9">
            <property role="TrG5h" value="myConnectionsSelection" />
            <node concept="3uibUv" id="4y$DvIXb1eq" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="16syzq" id="4y$DvIXb1et" role="11_B2D">
                <ref role="16sUi3" node="4y$DvIWkmcx" resolve="ConnT" />
              </node>
            </node>
            <node concept="2OqwBi" id="4y$DvIXb1e$" role="33vP2m">
              <node concept="37vLTw" id="4y$DvIXb1e_" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIWN9gA" resolve="myConnFacility" />
              </node>
              <node concept="2OwXpG" id="4y$DvIXb1eA" role="2OqNvi">
                <ref role="2Oxat5" node="3vyG44AvsFM" resolve="myConnectionsSelection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4y$DvIXb1Sr" role="3cqZAp">
          <node concept="3cpWsn" id="4y$DvIXb1Ss" role="3cpWs9">
            <property role="TrG5h" value="componentsSelection" />
            <node concept="3uibUv" id="4y$DvIXb1S3" role="1tU5fm">
              <ref role="3uigEE" to="rvgs:1KCfUoKRX_E" resolve="SelectionModel" />
              <node concept="16syzq" id="4y$DvIXbeOO" role="11_B2D">
                <ref role="16sUi3" node="4y$DvIXb8K3" resolve="CompT" />
              </node>
            </node>
            <node concept="2OqwBi" id="4y$DvIXb1St" role="33vP2m">
              <node concept="37vLTw" id="4y$DvIXb1Su" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIWN9gA" resolve="myConnFacility" />
              </node>
              <node concept="2OwXpG" id="4y$DvIXb1Sv" role="2OqNvi">
                <ref role="2Oxat5" node="3vyG44AyGV2" resolve="myComponentsSelection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4y$DvIXb2q_" role="3cqZAp">
          <node concept="3cpWsn" id="4y$DvIXb2qA" role="3cpWs9">
            <property role="TrG5h" value="diagramController" />
            <node concept="3uibUv" id="4y$DvIXb2qh" role="1tU5fm">
              <ref role="3uigEE" node="2JpbWDsQT0H" resolve="DiagramController" />
              <node concept="16syzq" id="4y$DvIXbf2t" role="11_B2D">
                <ref role="16sUi3" node="4y$DvIXb8K3" resolve="CompT" />
              </node>
              <node concept="16syzq" id="4y$DvIXbfhF" role="11_B2D">
                <ref role="16sUi3" node="4y$DvIXb8K4" resolve="PortT" />
              </node>
              <node concept="16syzq" id="4y$DvIXb2qo" role="11_B2D">
                <ref role="16sUi3" node="4y$DvIWkmcx" resolve="ConnT" />
              </node>
            </node>
            <node concept="2OqwBi" id="4y$DvIXb2qB" role="33vP2m">
              <node concept="37vLTw" id="4y$DvIXb2qC" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIWN9gA" resolve="myConnFacility" />
              </node>
              <node concept="2OwXpG" id="4y$DvIXb2qD" role="2OqNvi">
                <ref role="2Oxat5" node="7_KjZP9iXjm" resolve="myDiagramController" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7_KjZP9el$1" role="3cqZAp">
          <node concept="22lmx$" id="7_KjZP9el$2" role="3clFbG">
            <node concept="22lmx$" id="7_KjZP9el$3" role="3uHU7B">
              <node concept="2OqwBi" id="7_KjZP9el$4" role="3uHU7B">
                <node concept="37vLTw" id="4y$DvIXb1eB" role="2Oq$k0">
                  <ref role="3cqZAo" node="4y$DvIXb1ez" resolve="myConnectionsSelection" />
                </node>
                <node concept="liA8E" id="7_KjZP9el$6" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object)" resolve="contains" />
                  <node concept="37vLTw" id="7_KjZP9eoB_" role="37wK5m">
                    <ref role="3cqZAo" node="7_KjZP9ek_0" resolve="myConnection" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="7_KjZP9el$8" role="3uHU7w">
                <node concept="37vLTw" id="4y$DvIXb1Sw" role="2Oq$k0">
                  <ref role="3cqZAo" node="4y$DvIXb1Ss" resolve="componentsSelection" />
                </node>
                <node concept="liA8E" id="7_KjZP9el$a" role="2OqNvi">
                  <ref role="37wK5l" to="rvgs:2XwVnrt19Ro" resolve="isSelected" />
                  <node concept="2OqwBi" id="4O0ojQpVxlV" role="37wK5m">
                    <node concept="37vLTw" id="4y$DvIXb2qE" role="2Oq$k0">
                      <ref role="3cqZAo" node="4y$DvIXb2qA" resolve="diagramController" />
                    </node>
                    <node concept="liA8E" id="4O0ojQpV_V1" role="2OqNvi">
                      <ref role="37wK5l" node="4O0ojQpH31L" resolve="getComponent" />
                      <node concept="2OqwBi" id="4O0ojQpVqBq" role="37wK5m">
                        <node concept="37vLTw" id="4y$DvIXb2qF" role="2Oq$k0">
                          <ref role="3cqZAo" node="4y$DvIXb2qA" resolve="diagramController" />
                        </node>
                        <node concept="liA8E" id="4O0ojQpVuZK" role="2OqNvi">
                          <ref role="37wK5l" node="4O0ojQpINv1" resolve="getSource" />
                          <node concept="37vLTw" id="4O0ojQpVvD2" role="37wK5m">
                            <ref role="3cqZAo" node="7_KjZP9ek_0" resolve="myConnection" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="7_KjZP9el$i" role="3uHU7w">
              <node concept="37vLTw" id="4y$DvIXb1Sx" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIXb1Ss" resolve="componentsSelection" />
              </node>
              <node concept="liA8E" id="7_KjZP9el$k" role="2OqNvi">
                <ref role="37wK5l" to="rvgs:2XwVnrt19Ro" resolve="isSelected" />
                <node concept="2OqwBi" id="4O0ojQpVDS5" role="37wK5m">
                  <node concept="37vLTw" id="4y$DvIXb2qG" role="2Oq$k0">
                    <ref role="3cqZAo" node="4y$DvIXb2qA" resolve="diagramController" />
                  </node>
                  <node concept="liA8E" id="4O0ojQpVDS7" role="2OqNvi">
                    <ref role="37wK5l" node="4O0ojQpH31L" resolve="getComponent" />
                    <node concept="2OqwBi" id="4O0ojQpVDS8" role="37wK5m">
                      <node concept="37vLTw" id="4y$DvIXb2qH" role="2Oq$k0">
                        <ref role="3cqZAo" node="4y$DvIXb2qA" resolve="diagramController" />
                      </node>
                      <node concept="liA8E" id="4O0ojQpVDSa" role="2OqNvi">
                        <ref role="37wK5l" node="4O0ojQpINEG" resolve="getTarget" />
                        <node concept="37vLTw" id="4O0ojQpVDSb" role="37wK5m">
                          <ref role="3cqZAo" node="7_KjZP9ek_0" resolve="myConnection" />
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
    <node concept="16euLQ" id="4y$DvIXb8K3" role="16eVyc">
      <property role="TrG5h" value="CompT" />
    </node>
    <node concept="16euLQ" id="4y$DvIXb8K4" role="16eVyc">
      <property role="TrG5h" value="PortT" />
    </node>
    <node concept="16euLQ" id="4y$DvIWkmcx" role="16eVyc">
      <property role="TrG5h" value="ConnT" />
    </node>
    <node concept="16euLQ" id="4y$DvIWkmcy" role="16eVyc">
      <property role="TrG5h" value="CursorT" />
    </node>
    <node concept="16euLQ" id="4y$DvIWkmcz" role="16eVyc">
      <property role="TrG5h" value="PathT" />
    </node>
    <node concept="3UR2Jj" id="4y$DvIXbdGD" role="lGtFl">
      <node concept="TZ5HA" id="4y$DvIXbdGE" role="TZ5H$">
        <node concept="1dT_AC" id="4y$DvIXbdGF" role="1dT_Ay">
          <property role="1dT_AB" value="FIXME should be an inner class of ConnectionsFacility, but MPS messes with inner classes and generics" />
        </node>
      </node>
    </node>
  </node>
  <node concept="3HP615" id="2syzu7rdoTh">
    <property role="TrG5h" value="DiagramComponentSettingProvider" />
    <node concept="2tJIrI" id="2syzu7rdoVu" role="jymVt" />
    <node concept="3clFb_" id="2syzu7rdJ6W" role="jymVt">
      <property role="TrG5h" value="getModelForm" />
      <node concept="3clFbS" id="2syzu7rdJ6Z" role="3clF47" />
      <node concept="3Tm1VV" id="2syzu7rdJ70" role="1B3o_S" />
      <node concept="16syzq" id="2syzu7rdtIe" role="3clF45">
        <ref role="16sUi3" node="2syzu7rdoV0" resolve="CFormT" />
      </node>
      <node concept="2AHcQZ" id="2syzu7rdJ7t" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="2syzu7rdJ8K" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="2syzu7rdJ8J" role="1tU5fm">
          <ref role="16sUi3" node="2syzu7rdoUC" resolve="CompT" />
        </node>
        <node concept="2AHcQZ" id="2syzu7rdJ9H" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2syzu7rdJhW" role="jymVt" />
    <node concept="3clFb_" id="2syzu7rdJaJ" role="jymVt">
      <property role="TrG5h" value="getTransformedForm" />
      <node concept="3clFbS" id="2syzu7rdJaK" role="3clF47" />
      <node concept="3Tm1VV" id="2syzu7rdJaL" role="1B3o_S" />
      <node concept="16syzq" id="2syzu7rdJaM" role="3clF45">
        <ref role="16sUi3" node="2syzu7rdoV0" resolve="CFormT" />
      </node>
      <node concept="2AHcQZ" id="2syzu7rdJaN" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="37vLTG" id="2syzu7rdJaO" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="16syzq" id="2syzu7rdJaP" role="1tU5fm">
          <ref role="16sUi3" node="2syzu7rdoUC" resolve="CompT" />
        </node>
        <node concept="2AHcQZ" id="2syzu7rdJaQ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="2syzu7rdoTi" role="1B3o_S" />
    <node concept="16euLQ" id="2syzu7rdoUC" role="16eVyc">
      <property role="TrG5h" value="CompT" />
    </node>
    <node concept="16euLQ" id="2syzu7rdoV0" role="16eVyc">
      <property role="TrG5h" value="CFormT" />
    </node>
  </node>
</model>

