<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:c260e783-fa83-4eab-8183-e5c937092355(scenes.cells)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="8" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="12" />
    <use id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl" version="1" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="13" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8" version="0" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="654422bf-e75f-44dc-936d-188890a746ce" name="de.slisson.mps.reflection" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="kcid" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cellLayout(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="hhnx" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime(MPS.Editor/)" />
    <import index="hyam" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.event(JDK/)" />
    <import index="rvgs" ref="r:22f3147c-cd8c-496f-a7fc-c31f351de000(scenes.controllers)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="6lvu" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cellMenu(MPS.Editor/)" />
    <import index="zce0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.smodel.action(MPS.Editor/)" />
    <import index="3bo0" ref="r:2b66dd0d-2c90-4da0-994d-d7579a6bca2a(scenes.controllers.scene)" />
    <import index="y49u" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.util(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
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
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
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
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="6332851714983831325" name="jetbrains.mps.baseLanguage.logging.structure.MsgStatement" flags="ng" index="2xdQw9">
        <property id="6332851714983843871" name="severity" index="2xdLsb" />
        <child id="5721587534047265560" name="project" index="9lYEk" />
        <child id="5721587534047265374" name="message" index="9lYJi" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
    </language>
  </registry>
  <node concept="312cEu" id="7qPnRGFqlIs">
    <property role="TrG5h" value="EditorCell_Scene" />
    <node concept="2tJIrI" id="7qPnRGFqlJh" role="jymVt" />
    <node concept="Wx3nA" id="7sG$k3BM2YN" role="jymVt">
      <property role="TrG5h" value="INNER_PADDING" />
      <property role="3TUv4t" value="true" />
      <node concept="10Oyi0" id="7sG$k3BM2YQ" role="1tU5fm" />
      <node concept="3cmrfG" id="7sG$k3BM2YR" role="33vP2m">
        <property role="3cmrfH" value="20" />
      </node>
      <node concept="3Tm6S6" id="7sG$k3BM2YP" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3vyG44ABJle" role="jymVt" />
    <node concept="312cEg" id="2_D_3xWZTl7" role="jymVt">
      <property role="TrG5h" value="myDragEventHandler" />
      <node concept="3Tm6S6" id="2_D_3xWZJZF" role="1B3o_S" />
      <node concept="3uibUv" id="309fsJ6u9Pz" role="1tU5fm">
        <ref role="3uigEE" to="rvgs:2_D_3xWXMp$" resolve="DragEventHandler" />
      </node>
      <node concept="10Nm6u" id="2_D_3xWZYLw" role="33vP2m" />
    </node>
    <node concept="2tJIrI" id="13N5a7ySLqX" role="jymVt" />
    <node concept="312cEg" id="13N5a7yT5SL" role="jymVt">
      <property role="TrG5h" value="myCompletionPositionX" />
      <node concept="3Tm6S6" id="13N5a7ySUFm" role="1B3o_S" />
      <node concept="10Oyi0" id="13N5a7yT0FL" role="1tU5fm" />
      <node concept="3cmrfG" id="13N5a7yTkZG" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="312cEg" id="13N5a7yTmQV" role="jymVt">
      <property role="TrG5h" value="myCompletionPositionY" />
      <node concept="3Tm6S6" id="13N5a7yTmQW" role="1B3o_S" />
      <node concept="10Oyi0" id="13N5a7yTmQX" role="1tU5fm" />
      <node concept="3cmrfG" id="13N5a7yTmQY" role="33vP2m">
        <property role="3cmrfH" value="0" />
      </node>
    </node>
    <node concept="2tJIrI" id="4JFQCPi6lBd" role="jymVt" />
    <node concept="312cEg" id="4y$DvIY5dwZ" role="jymVt">
      <property role="TrG5h" value="myLayers" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4y$DvIY51qF" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIY5bb0" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="4y$DvIY5dw_" role="11_B2D">
          <ref role="3uigEE" node="4y$DvIY3kA3" resolve="LayerImpl" />
        </node>
      </node>
      <node concept="2ShNRf" id="4y$DvIY5hG7" role="33vP2m">
        <node concept="1pGfFk" id="4y$DvIY5nBw" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~TreeSet.&lt;init&gt;()" resolve="TreeSet" />
          <node concept="3uibUv" id="4y$DvIY5r$q" role="1pMfVU">
            <ref role="3uigEE" node="4y$DvIY3kA3" resolve="LayerImpl" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4y$DvIYeF4M" role="jymVt">
      <property role="TrG5h" value="myReversedLayers" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4y$DvIYeF4N" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIYeF4O" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="4y$DvIYeF4P" role="11_B2D">
          <ref role="3uigEE" node="4y$DvIY3kA3" resolve="LayerImpl" />
        </node>
      </node>
      <node concept="2ShNRf" id="4y$DvIYeF4Q" role="33vP2m">
        <node concept="1pGfFk" id="4y$DvIYeF4R" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~TreeSet.&lt;init&gt;(java.util.Comparator)" resolve="TreeSet" />
          <node concept="3uibUv" id="4y$DvIYeF4S" role="1pMfVU">
            <ref role="3uigEE" node="4y$DvIY3kA3" resolve="LayerImpl" />
          </node>
          <node concept="2YIFZM" id="4y$DvIYf$H$" role="37wK5m">
            <ref role="37wK5l" to="33ny:~Comparator.reverseOrder():java.util.Comparator" resolve="reverseOrder" />
            <ref role="1Pybhc" to="33ny:~Comparator" resolve="Comparator" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIY4T9c" role="jymVt" />
    <node concept="312cEg" id="17nGqbJfZxU" role="jymVt">
      <property role="TrG5h" value="myCursorListeners" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="17nGqbJfZxV" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJfZxW" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="17nGqbJg5OM" role="11_B2D">
          <ref role="3uigEE" to="3bo0:17nGqbJd2m8" resolve="CursorListner" />
        </node>
      </node>
      <node concept="2ShNRf" id="17nGqbJfZxY" role="33vP2m">
        <node concept="1pGfFk" id="17nGqbJfZxZ" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedHashSet.&lt;init&gt;()" resolve="LinkedHashSet" />
          <node concept="3uibUv" id="17nGqbJgcKH" role="1pMfVU">
            <ref role="3uigEE" to="3bo0:17nGqbJd2m8" resolve="CursorListner" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="17nGqbJgVLc" role="jymVt">
      <property role="TrG5h" value="myKeyboardListeners" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="17nGqbJgLgr" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJgRvI" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="17nGqbJgTYE" role="11_B2D">
          <ref role="3uigEE" to="3bo0:17nGqbJeGPf" resolve="KeyboardListener" />
        </node>
      </node>
      <node concept="2ShNRf" id="17nGqbJgZSS" role="33vP2m">
        <node concept="1pGfFk" id="17nGqbJh2Zf" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedHashSet.&lt;init&gt;()" resolve="LinkedHashSet" />
          <node concept="3uibUv" id="17nGqbJh7U0" role="1pMfVU">
            <ref role="3uigEE" to="3bo0:17nGqbJeGPf" resolve="KeyboardListener" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="17nGqbJh9Lj" role="jymVt">
      <property role="TrG5h" value="myLayouters" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="17nGqbJh9Lk" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJh9Ll" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="17nGqbJhg37" role="11_B2D">
          <ref role="3uigEE" to="3bo0:17nGqbJd3r4" resolve="SceneLayouter" />
        </node>
      </node>
      <node concept="2ShNRf" id="17nGqbJh9Ln" role="33vP2m">
        <node concept="1pGfFk" id="17nGqbJh9Lo" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedHashSet.&lt;init&gt;()" resolve="LinkedHashSet" />
          <node concept="3uibUv" id="17nGqbJhjQ1" role="1pMfVU">
            <ref role="3uigEE" to="3bo0:17nGqbJd3r4" resolve="SceneLayouter" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="17nGqbJmfAC" role="jymVt">
      <property role="TrG5h" value="myCompletionProviders" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="17nGqbJmfAD" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJmfAE" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="17nGqbJmnk9" role="11_B2D">
          <ref role="3uigEE" to="3bo0:17nGqbJm4gr" resolve="SceneCompletionProvider" />
        </node>
      </node>
      <node concept="2ShNRf" id="17nGqbJmfAG" role="33vP2m">
        <node concept="1pGfFk" id="17nGqbJmfAH" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedHashSet.&lt;init&gt;()" resolve="LinkedHashSet" />
          <node concept="3uibUv" id="17nGqbJmsEh" role="1pMfVU">
            <ref role="3uigEE" to="3bo0:17nGqbJm4gr" resolve="SceneCompletionProvider" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="1R4IoyRs4NV" role="jymVt">
      <property role="TrG5h" value="myInitializers" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1R4IoyRs4NW" role="1B3o_S" />
      <node concept="3uibUv" id="1R4IoyRs4NX" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="1R4IoyRscvw" role="11_B2D">
          <ref role="3uigEE" to="3bo0:1R4IoyRrSd8" resolve="SceneInitializer" />
        </node>
      </node>
      <node concept="2ShNRf" id="1R4IoyRs4NZ" role="33vP2m">
        <node concept="1pGfFk" id="1R4IoyRs4O0" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedHashSet.&lt;init&gt;()" resolve="LinkedHashSet" />
          <node concept="3uibUv" id="1R4IoyRsj9a" role="1pMfVU">
            <ref role="3uigEE" to="3bo0:1R4IoyRrSd8" resolve="SceneInitializer" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJfhHD" role="jymVt" />
    <node concept="3Tm1VV" id="7qPnRGFqlIt" role="1B3o_S" />
    <node concept="3clFbW" id="7qPnRGFqmUN" role="jymVt">
      <node concept="3cqZAl" id="7qPnRGFqmUO" role="3clF45" />
      <node concept="3Tm1VV" id="7qPnRGFqmUP" role="1B3o_S" />
      <node concept="3clFbS" id="7qPnRGFqmUR" role="3clF47">
        <node concept="XkiVB" id="38k27IQXFjj" role="3cqZAp">
          <ref role="37wK5l" to="g51k:~EditorCell_Collection.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.nodeEditor.cellLayout.CellLayout)" resolve="EditorCell_Collection" />
          <node concept="37vLTw" id="7qPnRGFqmUX" role="37wK5m">
            <ref role="3cqZAo" node="7qPnRGFqmUU" resolve="editorContext" />
          </node>
          <node concept="37vLTw" id="7qPnRGFqmV1" role="37wK5m">
            <ref role="3cqZAo" node="7qPnRGFqmUY" resolve="node" />
          </node>
          <node concept="37vLTw" id="38k27IQXHQ2" role="37wK5m">
            <ref role="3cqZAo" node="7qPnRGFsj8e" resolve="CELL_LAYOUT" />
          </node>
        </node>
        <node concept="1X3_iC" id="6tmlia_LoVo" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="2xdQw9" id="4JFQCPioE1B" role="8Wnug">
            <property role="2xdLsb" value="info" />
            <node concept="3cpWs3" id="4JFQCPioFxE" role="9lYJi">
              <node concept="Xjq3P" id="4JFQCPioN6Z" role="3uHU7w" />
              <node concept="Xl_RD" id="4JFQCPioE1D" role="3uHU7B">
                <property role="Xl_RC" value="Diagram created " />
              </node>
            </node>
            <node concept="2OqwBi" id="4JFQCPioEC$" role="9lYEk">
              <node concept="2OqwBi" id="4JFQCPioEqK" role="2Oq$k0">
                <node concept="37vLTw" id="4JFQCPioEga" role="2Oq$k0">
                  <ref role="3cqZAo" node="7qPnRGFqmUU" resolve="editorContext" />
                </node>
                <node concept="liA8E" id="4JFQCPioEyG" role="2OqNvi">
                  <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext():jetbrains.mps.smodel.IOperationContext" resolve="getOperationContext" />
                </node>
              </node>
              <node concept="liA8E" id="4JFQCPioEM_" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~IOperationContext.getProject():jetbrains.mps.project.Project" resolve="getProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="13N5a7yWsUa" role="3cqZAp">
          <node concept="1rXfSq" id="13N5a7yWsU8" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Collection.setSubstituteInfo(jetbrains.mps.openapi.editor.cells.SubstituteInfo):void" resolve="setSubstituteInfo" />
            <node concept="2ShNRf" id="13N5a7yWI1K" role="37wK5m">
              <node concept="1pGfFk" id="13N5a7z1J$Z" role="2ShVmc">
                <ref role="37wK5l" node="13N5a7yXVjr" resolve="EditorCell_Scene.MySubtituteInfo" />
                <node concept="37vLTw" id="13N5a7z1K7U" role="37wK5m">
                  <ref role="3cqZAo" node="7qPnRGFqmUU" resolve="editorContext" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7PF$iX$wwV$" role="3cqZAp">
          <node concept="1rXfSq" id="7PF$iX$wwVy" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Basic.setWidth(int):void" resolve="setWidth" />
            <node concept="3cmrfG" id="7PF$iX$wzVX" role="37wK5m">
              <property role="3cmrfH" value="900" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7PF$iX$w$fs" role="3cqZAp">
          <node concept="1rXfSq" id="7PF$iX$w$ft" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Basic.setHeight(int):void" resolve="setHeight" />
            <node concept="3cmrfG" id="7PF$iX$w$fu" role="37wK5m">
              <property role="3cmrfH" value="500" />
            </node>
          </node>
        </node>
        <node concept="3SKdUt" id="17nGqbJeX7Q" role="3cqZAp">
          <node concept="3SKdUq" id="17nGqbJeX7S" role="3SKWNk">
            <property role="3SKdUp" value="TODO is registration via awt more appropriate?" />
          </node>
        </node>
        <node concept="3clFbF" id="1CY1mmBeL6B" role="3cqZAp">
          <node concept="1rXfSq" id="1CY1mmBeL6C" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Collection.setAction(jetbrains.mps.openapi.editor.cells.CellActionType,jetbrains.mps.openapi.editor.cells.CellAction):void" resolve="setAction" />
            <node concept="Rm8GO" id="1CY1mmBeL6D" role="37wK5m">
              <ref role="Rm8GQ" to="f4zo:~CellActionType.BACKSPACE" resolve="BACKSPACE" />
              <ref role="1Px2BO" to="f4zo:~CellActionType" resolve="CellActionType" />
            </node>
            <node concept="2ShNRf" id="1CY1mmBeL6E" role="37wK5m">
              <node concept="YeOm9" id="1CY1mmBeL6F" role="2ShVmc">
                <node concept="1Y3b0j" id="1CY1mmBeL6G" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="f4zo:~CellAction" resolve="CellAction" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="1CY1mmBeL6H" role="1B3o_S" />
                  <node concept="3clFb_" id="1CY1mmBeL6I" role="jymVt">
                    <property role="TrG5h" value="getDescriptionText" />
                    <node concept="3Tm1VV" id="1CY1mmBeL6J" role="1B3o_S" />
                    <node concept="3uibUv" id="1CY1mmBeL6K" role="3clF45">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="3clFbS" id="1CY1mmBeL6L" role="3clF47">
                      <node concept="3clFbF" id="1CY1mmBeL6M" role="3cqZAp">
                        <node concept="Xl_RD" id="1CY1mmBeL6N" role="3clFbG">
                          <property role="Xl_RC" value="Scene's handler of backspace" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFb_" id="1CY1mmBeL6O" role="jymVt">
                    <property role="TrG5h" value="executeInCommand" />
                    <node concept="3Tm1VV" id="1CY1mmBeL6P" role="1B3o_S" />
                    <node concept="10P_77" id="1CY1mmBeL6Q" role="3clF45" />
                    <node concept="3clFbS" id="1CY1mmBeL6R" role="3clF47">
                      <node concept="3clFbF" id="1CY1mmBeL6S" role="3cqZAp">
                        <node concept="3clFbT" id="1CY1mmBeL6T" role="3clFbG">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFb_" id="1CY1mmBeL6U" role="jymVt">
                    <property role="TrG5h" value="canExecute" />
                    <node concept="3Tm1VV" id="1CY1mmBeL6V" role="1B3o_S" />
                    <node concept="10P_77" id="1CY1mmBeL6W" role="3clF45" />
                    <node concept="37vLTG" id="1CY1mmBeL6X" role="3clF46">
                      <property role="TrG5h" value="ec" />
                      <node concept="3uibUv" id="1CY1mmBeL6Y" role="1tU5fm">
                        <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1CY1mmBeL6Z" role="3clF47">
                      <node concept="3clFbF" id="3vyG44AB$ie" role="3cqZAp">
                        <node concept="3clFbT" id="3vyG44AB$id" role="3clFbG">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFb_" id="1CY1mmBeL74" role="jymVt">
                    <property role="TrG5h" value="execute" />
                    <node concept="3Tm1VV" id="1CY1mmBeL75" role="1B3o_S" />
                    <node concept="3cqZAl" id="1CY1mmBeL76" role="3clF45" />
                    <node concept="37vLTG" id="1CY1mmBeL77" role="3clF46">
                      <property role="TrG5h" value="ec" />
                      <node concept="3uibUv" id="1CY1mmBeL78" role="1tU5fm">
                        <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1CY1mmBeL79" role="3clF47">
                      <node concept="3clFbH" id="17nGqbJeXxs" role="3cqZAp" />
                      <node concept="2Gpval" id="3vyG44ACut9" role="3cqZAp">
                        <node concept="2GrKxI" id="3vyG44ACutb" role="2Gsz3X">
                          <property role="TrG5h" value="listener" />
                        </node>
                        <node concept="37vLTw" id="17nGqbJoqwx" role="2GsD0m">
                          <ref role="3cqZAo" node="17nGqbJgVLc" resolve="myKeyboardListeners" />
                        </node>
                        <node concept="3clFbS" id="3vyG44ACutf" role="2LFqv$">
                          <node concept="3clFbF" id="3vyG44ACx3g" role="3cqZAp">
                            <node concept="2OqwBi" id="3vyG44ACxgp" role="3clFbG">
                              <node concept="2GrUjf" id="3vyG44ACx3f" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="3vyG44ACutb" resolve="listener" />
                              </node>
                              <node concept="liA8E" id="3vyG44ACSum" role="2OqNvi">
                                <ref role="37wK5l" to="3bo0:17nGqbJeGSy" resolve="onBackspacePressed" />
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
        <node concept="3clFbF" id="2i$17fO9nRr" role="3cqZAp">
          <node concept="1rXfSq" id="2i$17fO9nRp" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Collection.synchronize():void" resolve="synchronize" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGFqmUU" role="3clF46">
        <property role="TrG5h" value="editorContext" />
        <node concept="3uibUv" id="7qPnRGFqmUW" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGFqmUY" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="7qPnRGFqmV0" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIYbil$" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIYbrxg" role="jymVt">
      <property role="TrG5h" value="createLayer" />
      <node concept="3Tm1VV" id="4y$DvIYbrxi" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIYbrxj" role="3clF45">
        <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
      </node>
      <node concept="37vLTG" id="4y$DvIYbrxk" role="3clF46">
        <property role="TrG5h" value="priority" />
        <node concept="10OMs4" id="4y$DvIYkLLx" role="1tU5fm" />
      </node>
      <node concept="2AHcQZ" id="4y$DvIYbrxm" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="4y$DvIYbrxv" role="3clF47">
        <node concept="3cpWs8" id="4y$DvIYbFiC" role="3cqZAp">
          <node concept="3cpWsn" id="4y$DvIYbFiD" role="3cpWs9">
            <property role="TrG5h" value="layer" />
            <node concept="3uibUv" id="4y$DvIYbFi_" role="1tU5fm">
              <ref role="3uigEE" node="4y$DvIY3kA3" resolve="LayerImpl" />
            </node>
            <node concept="2ShNRf" id="4y$DvIYbFiE" role="33vP2m">
              <node concept="1pGfFk" id="4y$DvIYbFiF" role="2ShVmc">
                <ref role="37wK5l" node="4y$DvIY3HlL" resolve="LayerImpl" />
                <node concept="37vLTw" id="4y$DvIYbFiG" role="37wK5m">
                  <ref role="3cqZAo" node="4y$DvIYbrxk" resolve="priority" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4y$DvIYbHth" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIYbHZk" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIYbHtf" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIY5dwZ" resolve="myLayers" />
            </node>
            <node concept="liA8E" id="4y$DvIYbW4g" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="4y$DvIYbWb3" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIYbFiD" resolve="layer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4y$DvIYfM5d" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIYfQNJ" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIYfM5b" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIYeF4M" resolve="myReversedLayers" />
            </node>
            <node concept="liA8E" id="4y$DvIYg7SB" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="4y$DvIYg8OW" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIYbFiD" resolve="layer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4y$DvIYbWOc" role="3cqZAp">
          <node concept="37vLTw" id="4y$DvIYbWVd" role="3cqZAk">
            <ref role="3cqZAo" node="4y$DvIYbFiD" resolve="layer" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIYbrxw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIYcH05" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIYbrxz" role="jymVt">
      <property role="TrG5h" value="removeLayer" />
      <node concept="3Tm1VV" id="4y$DvIYbrx_" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIYbrxA" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIYbrxB" role="3clF46">
        <property role="TrG5h" value="layer" />
        <node concept="3uibUv" id="4y$DvIYbrxC" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIYbrxD" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIYbrxM" role="3clF47">
        <node concept="3clFbF" id="4y$DvIYcQCt" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIYcRal" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIYcQCs" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIY5dwZ" resolve="myLayers" />
            </node>
            <node concept="liA8E" id="4y$DvIYd5Yw" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object):boolean" resolve="remove" />
              <node concept="37vLTw" id="4y$DvIYd6Vk" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIYbrxB" resolve="layer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4y$DvIYg9wh" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIYg9wi" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIYg9wj" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIYeF4M" resolve="myReversedLayers" />
            </node>
            <node concept="liA8E" id="4y$DvIYg9wk" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object):boolean" resolve="remove" />
              <node concept="37vLTw" id="4y$DvIYg9wl" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIYbrxB" resolve="layer" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIYbrxN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJeXLF" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJf4a8" role="jymVt">
      <property role="TrG5h" value="addClickListener" />
      <node concept="3Tm1VV" id="17nGqbJf4aa" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJf4ab" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIXXe$q" role="3clF46">
        <property role="TrG5h" value="layer" />
        <node concept="3uibUv" id="4y$DvIY3k6x" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIXXe$s" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="17nGqbJf4ac" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="17nGqbJf4ad" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJcVRI" resolve="ClickEventListener" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJf4ae" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJf4an" role="3clF47">
        <node concept="3clFbJ" id="4y$DvIY6Cq1" role="3cqZAp">
          <node concept="3clFbS" id="4y$DvIY6Cq3" role="3clFbx">
            <node concept="3clFbF" id="4y$DvIY6TXq" role="3cqZAp">
              <node concept="2OqwBi" id="4y$DvIY71U0" role="3clFbG">
                <node concept="1eOMI4" id="4y$DvIY702L" role="2Oq$k0">
                  <node concept="10QFUN" id="4y$DvIY6W1H" role="1eOMHV">
                    <node concept="3uibUv" id="4y$DvIY6XSo" role="10QFUM">
                      <ref role="3uigEE" node="4y$DvIY3kA3" resolve="LayerImpl" />
                    </node>
                    <node concept="37vLTw" id="4y$DvIY6TXo" role="10QFUP">
                      <ref role="3cqZAo" node="4y$DvIXXe$q" resolve="layer" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4y$DvIY73RM" role="2OqNvi">
                  <ref role="37wK5l" node="4y$DvIY3Qd0" resolve="addClickListener" />
                  <node concept="37vLTw" id="4y$DvIY746c" role="37wK5m">
                    <ref role="3cqZAo" node="17nGqbJf4ac" resolve="listener" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4y$DvIY6Dy1" role="3clFbw">
            <node concept="37vLTw" id="4y$DvIY6CNs" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIY5dwZ" resolve="myLayers" />
            </node>
            <node concept="liA8E" id="4y$DvIY6Rzy" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object):boolean" resolve="contains" />
              <node concept="37vLTw" id="4y$DvIY6RZf" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIXXe$q" resolve="layer" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJf4ao" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="17nGqbJf4ap" role="jymVt">
      <property role="TrG5h" value="removeClickListener" />
      <node concept="3Tm1VV" id="17nGqbJf4ar" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJf4as" role="3clF45" />
      <node concept="37vLTG" id="17nGqbJf4at" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="17nGqbJf4au" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJcVRI" resolve="ClickEventListener" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJf4av" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJf4aC" role="3clF47">
        <node concept="2Gpval" id="4y$DvIY78d_" role="3cqZAp">
          <node concept="2GrKxI" id="4y$DvIY78dB" role="2Gsz3X">
            <property role="TrG5h" value="layer" />
          </node>
          <node concept="37vLTw" id="4y$DvIY78K_" role="2GsD0m">
            <ref role="3cqZAo" node="4y$DvIY5dwZ" resolve="myLayers" />
          </node>
          <node concept="3clFbS" id="4y$DvIY78dF" role="2LFqv$">
            <node concept="3clFbF" id="4y$DvIY7aQT" role="3cqZAp">
              <node concept="2OqwBi" id="4y$DvIY7b6t" role="3clFbG">
                <node concept="liA8E" id="4y$DvIY7yiE" role="2OqNvi">
                  <ref role="37wK5l" node="4y$DvIY3Qdd" resolve="removeClickListener" />
                  <node concept="37vLTw" id="4y$DvIY8W1q" role="37wK5m">
                    <ref role="3cqZAo" node="17nGqbJf4at" resolve="listener" />
                  </node>
                </node>
                <node concept="2GrUjf" id="4y$DvIY8OZL" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4y$DvIY78dB" resolve="layer" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJf4aD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="17nGqbJf4aE" role="jymVt">
      <property role="TrG5h" value="addDragListener" />
      <node concept="3Tm1VV" id="17nGqbJf4aG" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJf4aH" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIY9grP" role="3clF46">
        <property role="TrG5h" value="layer" />
        <node concept="3uibUv" id="4y$DvIY9grQ" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIY9grR" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="17nGqbJf4aI" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="17nGqbJf4aJ" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJcVM0" resolve="DragEventListener" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJf4aK" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJf4aT" role="3clF47">
        <node concept="3clFbJ" id="4y$DvIY8XZi" role="3cqZAp">
          <node concept="3clFbS" id="4y$DvIY8XZj" role="3clFbx">
            <node concept="3clFbF" id="4y$DvIY8XZk" role="3cqZAp">
              <node concept="2OqwBi" id="4y$DvIY8XZl" role="3clFbG">
                <node concept="1eOMI4" id="4y$DvIY8XZm" role="2Oq$k0">
                  <node concept="10QFUN" id="4y$DvIY8XZn" role="1eOMHV">
                    <node concept="3uibUv" id="4y$DvIY8XZo" role="10QFUM">
                      <ref role="3uigEE" node="4y$DvIY3kA3" resolve="LayerImpl" />
                    </node>
                    <node concept="37vLTw" id="4y$DvIY8XZp" role="10QFUP">
                      <ref role="3cqZAo" node="4y$DvIY9grP" resolve="layer" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4y$DvIY8XZq" role="2OqNvi">
                  <ref role="37wK5l" node="4y$DvIY3Qdq" resolve="addDragListener" />
                  <node concept="37vLTw" id="4y$DvIY8XZr" role="37wK5m">
                    <ref role="3cqZAo" node="17nGqbJf4aI" resolve="listener" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4y$DvIY8XZs" role="3clFbw">
            <node concept="37vLTw" id="4y$DvIY8XZt" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIY5dwZ" resolve="myLayers" />
            </node>
            <node concept="liA8E" id="4y$DvIY8XZu" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object):boolean" resolve="contains" />
              <node concept="37vLTw" id="4y$DvIY8XZv" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIY9grP" resolve="layer" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJf4aU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="17nGqbJf4aV" role="jymVt">
      <property role="TrG5h" value="removeDragListener" />
      <node concept="3Tm1VV" id="17nGqbJf4aX" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJf4aY" role="3clF45" />
      <node concept="37vLTG" id="17nGqbJf4aZ" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="17nGqbJf4b0" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJcVM0" resolve="DragEventListener" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJf4b1" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="17nGqbJf4ba" role="3clF47">
        <node concept="2Gpval" id="4y$DvIYapbd" role="3cqZAp">
          <node concept="2GrKxI" id="4y$DvIYapbe" role="2Gsz3X">
            <property role="TrG5h" value="layer" />
          </node>
          <node concept="37vLTw" id="4y$DvIYapbf" role="2GsD0m">
            <ref role="3cqZAo" node="4y$DvIY5dwZ" resolve="myLayers" />
          </node>
          <node concept="3clFbS" id="4y$DvIYapbg" role="2LFqv$">
            <node concept="3clFbF" id="4y$DvIYapbh" role="3cqZAp">
              <node concept="2OqwBi" id="4y$DvIYapbi" role="3clFbG">
                <node concept="liA8E" id="4y$DvIYapbj" role="2OqNvi">
                  <ref role="37wK5l" node="4y$DvIY3QdB" resolve="removeDragListener" />
                  <node concept="37vLTw" id="4y$DvIYapbk" role="37wK5m">
                    <ref role="3cqZAo" node="17nGqbJf4aZ" resolve="listener" />
                  </node>
                </node>
                <node concept="2GrUjf" id="4y$DvIYapbl" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4y$DvIYapbe" resolve="layer" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJf4bb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="17nGqbJf4bc" role="jymVt">
      <property role="TrG5h" value="addCursorListener" />
      <node concept="37vLTG" id="17nGqbJf4bd" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="17nGqbJf4be" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJd2m8" resolve="CursorListner" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJf4bf" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="17nGqbJf4bh" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJf4bi" role="3clF45" />
      <node concept="3clFbS" id="17nGqbJf4br" role="3clF47">
        <node concept="3clFbF" id="17nGqbJidux" role="3cqZAp">
          <node concept="2OqwBi" id="17nGqbJiduz" role="3clFbG">
            <node concept="37vLTw" id="17nGqbJifBm" role="2Oq$k0">
              <ref role="3cqZAo" node="17nGqbJfZxU" resolve="myCursorListeners" />
            </node>
            <node concept="liA8E" id="17nGqbJidu_" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="17nGqbJiduA" role="37wK5m">
                <ref role="3cqZAo" node="17nGqbJf4bd" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJf4bs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="17nGqbJf4bt" role="jymVt">
      <property role="TrG5h" value="removeCursorListener" />
      <node concept="37vLTG" id="17nGqbJf4bu" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="17nGqbJf4bv" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJd2m8" resolve="CursorListner" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJf4bw" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="17nGqbJf4by" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJf4bz" role="3clF45" />
      <node concept="3clFbS" id="17nGqbJf4bG" role="3clF47">
        <node concept="3clFbF" id="17nGqbJihBy" role="3cqZAp">
          <node concept="2OqwBi" id="17nGqbJihB$" role="3clFbG">
            <node concept="37vLTw" id="17nGqbJihB_" role="2Oq$k0">
              <ref role="3cqZAo" node="17nGqbJfZxU" resolve="myCursorListeners" />
            </node>
            <node concept="liA8E" id="17nGqbJihBA" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object):boolean" resolve="remove" />
              <node concept="37vLTw" id="17nGqbJihBB" role="37wK5m">
                <ref role="3cqZAo" node="17nGqbJf4bu" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJf4bH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="17nGqbJf4bI" role="jymVt">
      <property role="TrG5h" value="addKeyboardListener" />
      <node concept="37vLTG" id="17nGqbJf4bJ" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="17nGqbJf4bK" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJeGPf" resolve="KeyboardListener" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJf4bL" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="17nGqbJf4bN" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJf4bO" role="3clF45" />
      <node concept="3clFbS" id="17nGqbJf4bX" role="3clF47">
        <node concept="3clFbF" id="17nGqbJijPG" role="3cqZAp">
          <node concept="2OqwBi" id="17nGqbJijPI" role="3clFbG">
            <node concept="37vLTw" id="17nGqbJim0p" role="2Oq$k0">
              <ref role="3cqZAo" node="17nGqbJgVLc" resolve="myKeyboardListeners" />
            </node>
            <node concept="liA8E" id="17nGqbJijPK" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="17nGqbJijPL" role="37wK5m">
                <ref role="3cqZAo" node="17nGqbJf4bJ" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJf4bY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="17nGqbJf4bZ" role="jymVt">
      <property role="TrG5h" value="removeKeyboardListener" />
      <node concept="37vLTG" id="17nGqbJf4c0" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="17nGqbJf4c1" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJeGPf" resolve="KeyboardListener" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJf4c2" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="17nGqbJf4c4" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJf4c5" role="3clF45" />
      <node concept="3clFbS" id="17nGqbJf4ce" role="3clF47">
        <node concept="3clFbF" id="17nGqbJinT_" role="3cqZAp">
          <node concept="2OqwBi" id="17nGqbJinTB" role="3clFbG">
            <node concept="37vLTw" id="17nGqbJiq5e" role="2Oq$k0">
              <ref role="3cqZAo" node="17nGqbJgVLc" resolve="myKeyboardListeners" />
            </node>
            <node concept="liA8E" id="17nGqbJinTD" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object):boolean" resolve="remove" />
              <node concept="37vLTw" id="17nGqbJinTE" role="37wK5m">
                <ref role="3cqZAo" node="17nGqbJf4c0" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJf4cf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="17nGqbJf4cg" role="jymVt">
      <property role="TrG5h" value="addLayouter" />
      <node concept="37vLTG" id="17nGqbJf4ch" role="3clF46">
        <property role="TrG5h" value="layouter" />
        <node concept="3uibUv" id="17nGqbJf4ci" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJd3r4" resolve="SceneLayouter" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJf4cj" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="17nGqbJf4cl" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJf4cm" role="3clF45" />
      <node concept="3clFbS" id="17nGqbJf4cv" role="3clF47">
        <node concept="3clFbF" id="17nGqbJisrd" role="3cqZAp">
          <node concept="2OqwBi" id="17nGqbJisWF" role="3clFbG">
            <node concept="37vLTw" id="17nGqbJisrc" role="2Oq$k0">
              <ref role="3cqZAo" node="17nGqbJh9Lj" resolve="myLayouters" />
            </node>
            <node concept="liA8E" id="17nGqbJiEsQ" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="17nGqbJiF1d" role="37wK5m">
                <ref role="3cqZAo" node="17nGqbJf4ch" resolve="layouter" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJf4cw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="17nGqbJf4cx" role="jymVt">
      <property role="TrG5h" value="removeLayouter" />
      <node concept="37vLTG" id="17nGqbJf4cy" role="3clF46">
        <property role="TrG5h" value="layouter" />
        <node concept="3uibUv" id="17nGqbJf4cz" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJd3r4" resolve="SceneLayouter" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJf4c$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="17nGqbJf4cA" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJf4cB" role="3clF45" />
      <node concept="3clFbS" id="17nGqbJf4cK" role="3clF47">
        <node concept="3clFbF" id="17nGqbJiGvy" role="3cqZAp">
          <node concept="2OqwBi" id="17nGqbJiGvz" role="3clFbG">
            <node concept="37vLTw" id="17nGqbJiGv$" role="2Oq$k0">
              <ref role="3cqZAo" node="17nGqbJh9Lj" resolve="myLayouters" />
            </node>
            <node concept="liA8E" id="17nGqbJiGv_" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object):boolean" resolve="remove" />
              <node concept="37vLTw" id="17nGqbJiGvA" role="37wK5m">
                <ref role="3cqZAo" node="17nGqbJf4cy" resolve="layouter" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJf4cL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="17nGqbJf4cM" role="jymVt">
      <property role="TrG5h" value="addCellProvider" />
      <node concept="37vLTG" id="4y$DvIY9PsL" role="3clF46">
        <property role="TrG5h" value="layer" />
        <node concept="3uibUv" id="4y$DvIY9PsM" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIY9PsN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="17nGqbJf4cN" role="3clF46">
        <property role="TrG5h" value="provider" />
        <node concept="3uibUv" id="17nGqbJf4cO" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJd3sJ" resolve="EditorCellProvider" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJf4cP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="17nGqbJf4cR" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJf4cS" role="3clF45" />
      <node concept="3clFbS" id="17nGqbJf4d1" role="3clF47">
        <node concept="3clFbJ" id="4y$DvIYaW2X" role="3cqZAp">
          <node concept="3clFbS" id="4y$DvIYaW2Y" role="3clFbx">
            <node concept="3clFbF" id="4y$DvIYaW2Z" role="3cqZAp">
              <node concept="2OqwBi" id="4y$DvIYaW30" role="3clFbG">
                <node concept="1eOMI4" id="4y$DvIYaW31" role="2Oq$k0">
                  <node concept="10QFUN" id="4y$DvIYaW32" role="1eOMHV">
                    <node concept="3uibUv" id="4y$DvIYaW33" role="10QFUM">
                      <ref role="3uigEE" node="4y$DvIY3kA3" resolve="LayerImpl" />
                    </node>
                    <node concept="37vLTw" id="4y$DvIYaW34" role="10QFUP">
                      <ref role="3cqZAo" node="4y$DvIY9PsL" resolve="layer" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4y$DvIYaW35" role="2OqNvi">
                  <ref role="37wK5l" node="4y$DvIY3Qf6" resolve="addCellProvider" />
                  <node concept="37vLTw" id="4y$DvIYbceR" role="37wK5m">
                    <ref role="3cqZAo" node="17nGqbJf4cN" resolve="provider" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="38k27IQY3P9" role="3cqZAp">
              <node concept="2GrKxI" id="38k27IQY3Pb" role="2Gsz3X">
                <property role="TrG5h" value="cell" />
              </node>
              <node concept="3clFbS" id="38k27IQY3Pf" role="2LFqv$">
                <node concept="3clFbF" id="38k27IQY1d6" role="3cqZAp">
                  <node concept="1rXfSq" id="38k27IQY1d4" role="3clFbG">
                    <ref role="37wK5l" to="g51k:~EditorCell_Collection.addEditorCell(jetbrains.mps.openapi.editor.cells.EditorCell):void" resolve="addEditorCell" />
                    <node concept="2GrUjf" id="38k27IQY5V9" role="37wK5m">
                      <ref role="2Gs0qQ" node="38k27IQY3Pb" resolve="cell" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="17nGqbJkeI9" role="2GsD0m">
                <node concept="37vLTw" id="3LngKhTJDud" role="2Oq$k0">
                  <ref role="3cqZAo" node="17nGqbJf4cN" resolve="provider" />
                </node>
                <node concept="liA8E" id="17nGqbJky9s" role="2OqNvi">
                  <ref role="37wK5l" to="3bo0:17nGqbJd3xz" resolve="getCells" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="38k27ISrMAM" role="3cqZAp">
              <node concept="1rXfSq" id="38k27ISrMAK" role="3clFbG">
                <ref role="37wK5l" to="g51k:~EditorCell_Collection.requestRelayout():void" resolve="requestRelayout" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4y$DvIYaW37" role="3clFbw">
            <node concept="37vLTw" id="4y$DvIYaW38" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIY5dwZ" resolve="myLayers" />
            </node>
            <node concept="liA8E" id="4y$DvIYaW39" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object):boolean" resolve="contains" />
              <node concept="37vLTw" id="4y$DvIYaW3a" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIY9PsL" resolve="layer" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJf4d2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="17nGqbJf4d3" role="jymVt">
      <property role="TrG5h" value="removeCellProvider" />
      <node concept="37vLTG" id="17nGqbJf4d4" role="3clF46">
        <property role="TrG5h" value="provider" />
        <node concept="3uibUv" id="17nGqbJf4d5" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJd3sJ" resolve="EditorCellProvider" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJf4d6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="17nGqbJf4d8" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJf4d9" role="3clF45" />
      <node concept="3clFbS" id="17nGqbJf4di" role="3clF47">
        <node concept="2Gpval" id="4y$DvIYauND" role="3cqZAp">
          <node concept="2GrKxI" id="4y$DvIYauNE" role="2Gsz3X">
            <property role="TrG5h" value="layer" />
          </node>
          <node concept="37vLTw" id="4y$DvIYauNF" role="2GsD0m">
            <ref role="3cqZAo" node="4y$DvIY5dwZ" resolve="myLayers" />
          </node>
          <node concept="3clFbS" id="4y$DvIYauNG" role="2LFqv$">
            <node concept="3clFbF" id="4y$DvIYauNH" role="3cqZAp">
              <node concept="2OqwBi" id="4y$DvIYauNI" role="3clFbG">
                <node concept="liA8E" id="4y$DvIYauNJ" role="2OqNvi">
                  <ref role="37wK5l" node="4y$DvIY3Qfj" resolve="removeCellProvider" />
                  <node concept="37vLTw" id="4y$DvIYa$LQ" role="37wK5m">
                    <ref role="3cqZAo" node="17nGqbJf4d4" resolve="provider" />
                  </node>
                </node>
                <node concept="2GrUjf" id="4y$DvIYauNL" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4y$DvIYauNE" resolve="layer" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3LngKhTJPZ4" role="3cqZAp">
          <node concept="2GrKxI" id="3LngKhTJPZ5" role="2Gsz3X">
            <property role="TrG5h" value="cell" />
          </node>
          <node concept="3clFbS" id="3LngKhTJPZ6" role="2LFqv$">
            <node concept="3clFbF" id="3LngKhTJPZ7" role="3cqZAp">
              <node concept="1rXfSq" id="3LngKhTJPZ8" role="3clFbG">
                <ref role="37wK5l" to="g51k:~EditorCell_Collection.removeCell(jetbrains.mps.openapi.editor.cells.EditorCell):void" resolve="removeCell" />
                <node concept="2GrUjf" id="3LngKhTJPZ9" role="37wK5m">
                  <ref role="2Gs0qQ" node="3LngKhTJPZ5" resolve="cell" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3LngKhTJPZa" role="2GsD0m">
            <node concept="37vLTw" id="3LngKhTJPZb" role="2Oq$k0">
              <ref role="3cqZAo" node="17nGqbJf4d4" resolve="provider" />
            </node>
            <node concept="liA8E" id="3LngKhTJPZc" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:17nGqbJd3xz" resolve="getCells" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJf4dj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="17nGqbJmuOx" role="jymVt">
      <property role="TrG5h" value="addCompletionProvider" />
      <node concept="37vLTG" id="17nGqbJmuOy" role="3clF46">
        <property role="TrG5h" value="provider" />
        <node concept="3uibUv" id="17nGqbJmuOz" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJm4gr" resolve="SceneCompletionProvider" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJmuO$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="17nGqbJmuOA" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJmuOB" role="3clF45" />
      <node concept="3clFbS" id="17nGqbJmuOK" role="3clF47">
        <node concept="3clFbF" id="17nGqbJmAN3" role="3cqZAp">
          <node concept="2OqwBi" id="17nGqbJmD4P" role="3clFbG">
            <node concept="37vLTw" id="17nGqbJmAN2" role="2Oq$k0">
              <ref role="3cqZAo" node="17nGqbJmfAC" resolve="myCompletionProviders" />
            </node>
            <node concept="liA8E" id="17nGqbJmRav" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="17nGqbJmR_Y" role="37wK5m">
                <ref role="3cqZAo" node="17nGqbJmuOy" resolve="provider" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJmuOL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="17nGqbJmuOM" role="jymVt">
      <property role="TrG5h" value="removeCompletionProvider" />
      <node concept="37vLTG" id="17nGqbJmuON" role="3clF46">
        <property role="TrG5h" value="provider" />
        <node concept="3uibUv" id="17nGqbJmuOO" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJm4gr" resolve="SceneCompletionProvider" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJmuOP" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="17nGqbJmuOR" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJmuOS" role="3clF45" />
      <node concept="3clFbS" id="17nGqbJmuP1" role="3clF47">
        <node concept="3clFbF" id="17nGqbJmTuE" role="3cqZAp">
          <node concept="2OqwBi" id="17nGqbJmTuF" role="3clFbG">
            <node concept="37vLTw" id="17nGqbJmTuG" role="2Oq$k0">
              <ref role="3cqZAo" node="17nGqbJmfAC" resolve="myCompletionProviders" />
            </node>
            <node concept="liA8E" id="17nGqbJmTuH" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object):boolean" resolve="remove" />
              <node concept="37vLTw" id="17nGqbJmTuI" role="37wK5m">
                <ref role="3cqZAo" node="17nGqbJmuON" resolve="provider" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJmuP2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="17nGqbJf4dk" role="jymVt">
      <property role="TrG5h" value="addPainter" />
      <node concept="37vLTG" id="4y$DvIYa9OL" role="3clF46">
        <property role="TrG5h" value="layer" />
        <node concept="3uibUv" id="4y$DvIYa9OM" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIYa9ON" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="17nGqbJf4dl" role="3clF46">
        <property role="TrG5h" value="painter" />
        <node concept="3uibUv" id="17nGqbJf4dm" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJcVWh" resolve="ScenePainter" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJf4dn" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="17nGqbJf4dp" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJf4dq" role="3clF45" />
      <node concept="3clFbS" id="17nGqbJf4dz" role="3clF47">
        <node concept="3clFbJ" id="4y$DvIYbe7r" role="3cqZAp">
          <node concept="3clFbS" id="4y$DvIYbe7s" role="3clFbx">
            <node concept="3clFbF" id="4y$DvIYbe7t" role="3cqZAp">
              <node concept="2OqwBi" id="4y$DvIYbe7u" role="3clFbG">
                <node concept="1eOMI4" id="4y$DvIYbe7v" role="2Oq$k0">
                  <node concept="10QFUN" id="4y$DvIYbe7w" role="1eOMHV">
                    <node concept="3uibUv" id="4y$DvIYbe7x" role="10QFUM">
                      <ref role="3uigEE" node="4y$DvIY3kA3" resolve="LayerImpl" />
                    </node>
                    <node concept="37vLTw" id="4y$DvIYbe7y" role="10QFUP">
                      <ref role="3cqZAo" node="4y$DvIYa9OL" resolve="layer" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4y$DvIYbe7z" role="2OqNvi">
                  <ref role="37wK5l" node="4y$DvIY3QfU" resolve="addPainter" />
                  <node concept="37vLTw" id="4y$DvIYbgsd" role="37wK5m">
                    <ref role="3cqZAo" node="17nGqbJf4dl" resolve="painter" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4y$DvIYbe7_" role="3clFbw">
            <node concept="37vLTw" id="4y$DvIYbe7A" role="2Oq$k0">
              <ref role="3cqZAo" node="4y$DvIY5dwZ" resolve="myLayers" />
            </node>
            <node concept="liA8E" id="4y$DvIYbe7B" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.contains(java.lang.Object):boolean" resolve="contains" />
              <node concept="37vLTw" id="4y$DvIYbe7C" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIYa9OL" resolve="layer" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJf4d$" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="17nGqbJf4d_" role="jymVt">
      <property role="TrG5h" value="removePainter" />
      <node concept="37vLTG" id="17nGqbJf4dA" role="3clF46">
        <property role="TrG5h" value="painter" />
        <node concept="3uibUv" id="17nGqbJf4dB" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJcVWh" resolve="ScenePainter" />
        </node>
        <node concept="2AHcQZ" id="17nGqbJf4dC" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="17nGqbJf4dE" role="1B3o_S" />
      <node concept="3cqZAl" id="17nGqbJf4dF" role="3clF45" />
      <node concept="3clFbS" id="17nGqbJf4dO" role="3clF47">
        <node concept="2Gpval" id="4y$DvIYaCcZ" role="3cqZAp">
          <node concept="2GrKxI" id="4y$DvIYaCd0" role="2Gsz3X">
            <property role="TrG5h" value="layer" />
          </node>
          <node concept="37vLTw" id="4y$DvIYaCd1" role="2GsD0m">
            <ref role="3cqZAo" node="4y$DvIY5dwZ" resolve="myLayers" />
          </node>
          <node concept="3clFbS" id="4y$DvIYaCd2" role="2LFqv$">
            <node concept="3clFbF" id="4y$DvIYaCd3" role="3cqZAp">
              <node concept="2OqwBi" id="4y$DvIYaCd4" role="3clFbG">
                <node concept="liA8E" id="4y$DvIYaCd5" role="2OqNvi">
                  <ref role="37wK5l" node="4y$DvIY3Qg7" resolve="removePainter" />
                  <node concept="37vLTw" id="4y$DvIYaG1s" role="37wK5m">
                    <ref role="3cqZAo" node="17nGqbJf4dA" resolve="painter" />
                  </node>
                </node>
                <node concept="2GrUjf" id="4y$DvIYaCd7" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4y$DvIYaCd0" resolve="layer" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="17nGqbJf4dP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1R4IoyRsss0" role="jymVt">
      <property role="TrG5h" value="addInitializer" />
      <node concept="37vLTG" id="1R4IoyRsss1" role="3clF46">
        <property role="TrG5h" value="initializer" />
        <node concept="3uibUv" id="1R4IoyRsss2" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:1R4IoyRrSd8" resolve="SceneInitializer" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRsss3" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyRsss5" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyRsss6" role="3clF45" />
      <node concept="3clFbS" id="1R4IoyRsssa" role="3clF47">
        <node concept="3clFbF" id="1R4IoyRsFJ8" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyRsH8J" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyRsFJ7" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyRs4NV" resolve="myInitializers" />
            </node>
            <node concept="liA8E" id="1R4IoyRsUBB" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="1R4IoyRsVpg" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyRsss1" resolve="initializer" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyRsssb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="1R4IoyRsssc" role="jymVt">
      <property role="TrG5h" value="removeInitializer" />
      <node concept="37vLTG" id="1R4IoyRsssd" role="3clF46">
        <property role="TrG5h" value="initializer" />
        <node concept="3uibUv" id="1R4IoyRssse" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:1R4IoyRrSd8" resolve="SceneInitializer" />
        </node>
        <node concept="2AHcQZ" id="1R4IoyRsssf" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyRsssh" role="1B3o_S" />
      <node concept="3cqZAl" id="1R4IoyRsssi" role="3clF45" />
      <node concept="3clFbS" id="1R4IoyRsssm" role="3clF47">
        <node concept="3clFbF" id="1R4IoyRsX0J" role="3cqZAp">
          <node concept="2OqwBi" id="1R4IoyRsX0K" role="3clFbG">
            <node concept="37vLTw" id="1R4IoyRsX0L" role="2Oq$k0">
              <ref role="3cqZAo" node="1R4IoyRs4NV" resolve="myInitializers" />
            </node>
            <node concept="liA8E" id="1R4IoyRsX0M" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object):boolean" resolve="remove" />
              <node concept="37vLTw" id="1R4IoyRsX0N" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyRsssd" resolve="initializer" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1R4IoyRsssn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7eBFChAc_Ym" role="jymVt" />
    <node concept="3clFb_" id="7eBFChAcIID" role="jymVt">
      <property role="TrG5h" value="storeState" />
      <node concept="3cqZAl" id="7eBFChAcIIE" role="3clF45" />
      <node concept="3Tm1VV" id="7eBFChAcIIF" role="1B3o_S" />
      <node concept="16euLQ" id="7eBFChAcIIH" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="37vLTG" id="7eBFChAcIII" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="7eBFChAcIIJ" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:7eBFChAanmT" resolve="SceneStateKey" />
          <node concept="16syzq" id="7eBFChAcIIK" role="11_B2D">
            <ref role="16sUi3" node="7eBFChAcIIH" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7eBFChAcIIL" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="16syzq" id="7eBFChAcIIM" role="1tU5fm">
          <ref role="16sUi3" node="7eBFChAcIIH" resolve="T" />
        </node>
      </node>
      <node concept="3clFbS" id="7eBFChAcIIQ" role="3clF47">
        <node concept="3clFbF" id="7eBFChAcZSN" role="3cqZAp">
          <node concept="2OqwBi" id="7eBFChAd1YI" role="3clFbG">
            <node concept="2YIFZM" id="7eBFChAcZTe" role="2Oq$k0">
              <ref role="37wK5l" to="3bo0:7eBFChAbDR8" resolve="getInstance" />
              <ref role="1Pybhc" to="3bo0:7eBFChA9Ziz" resolve="SceneStateManager" />
              <node concept="1rXfSq" id="7eBFChAd08f" role="37wK5m">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
              </node>
            </node>
            <node concept="liA8E" id="7eBFChAd3Rv" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:7eBFChAb5n8" resolve="storeState" />
              <node concept="Xjq3P" id="7eBFChAd40Z" role="37wK5m" />
              <node concept="37vLTw" id="7eBFChAdaQo" role="37wK5m">
                <ref role="3cqZAo" node="7eBFChAcIII" resolve="key" />
              </node>
              <node concept="37vLTw" id="7eBFChAdd8$" role="37wK5m">
                <ref role="3cqZAo" node="7eBFChAcIIL" resolve="state" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7eBFChAcIIR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="7eBFChAcIIS" role="jymVt">
      <property role="TrG5h" value="loadState" />
      <node concept="16syzq" id="7eBFChAcIIT" role="3clF45">
        <ref role="16sUi3" node="7eBFChAcIIW" resolve="T" />
      </node>
      <node concept="3Tm1VV" id="7eBFChAcIIU" role="1B3o_S" />
      <node concept="16euLQ" id="7eBFChAcIIW" role="16eVyc">
        <property role="TrG5h" value="T" />
      </node>
      <node concept="37vLTG" id="7eBFChAcIIX" role="3clF46">
        <property role="TrG5h" value="key" />
        <node concept="3uibUv" id="7eBFChAcIIY" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:7eBFChAanmT" resolve="SceneStateKey" />
          <node concept="16syzq" id="7eBFChAcIIZ" role="11_B2D">
            <ref role="16sUi3" node="7eBFChAcIIW" resolve="T" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="7eBFChAcIJ3" role="3clF47">
        <node concept="3clFbF" id="7eBFChAdeSJ" role="3cqZAp">
          <node concept="2OqwBi" id="7eBFChAdeSK" role="3clFbG">
            <node concept="2YIFZM" id="7eBFChAdeSL" role="2Oq$k0">
              <ref role="37wK5l" to="3bo0:7eBFChAbDR8" resolve="getInstance" />
              <ref role="1Pybhc" to="3bo0:7eBFChA9Ziz" resolve="SceneStateManager" />
              <node concept="1rXfSq" id="7eBFChAdeSM" role="37wK5m">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
              </node>
            </node>
            <node concept="liA8E" id="7eBFChAdeSN" role="2OqNvi">
              <ref role="37wK5l" to="3bo0:7eBFChAbnxt" resolve="loadState" />
              <node concept="Xjq3P" id="7eBFChAdeSO" role="37wK5m" />
              <node concept="37vLTw" id="7eBFChAdeSP" role="37wK5m">
                <ref role="3cqZAo" node="7eBFChAcIIX" resolve="key" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7eBFChAcIJ4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6$FGuy5pGbK" role="jymVt" />
    <node concept="3clFb_" id="2_D_3xXqKXL" role="jymVt">
      <property role="TrG5h" value="paintSelectionIfRequired" />
      <node concept="3Tmbuc" id="2_D_3xXqKXM" role="1B3o_S" />
      <node concept="3cqZAl" id="2_D_3xXqKXO" role="3clF45" />
      <node concept="37vLTG" id="2_D_3xXqKXP" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="2_D_3xXqKXQ" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="2_D_3xXqKXR" role="3clF46">
        <property role="TrG5h" value="parentSettings" />
        <node concept="3uibUv" id="2_D_3xXqKXS" role="1tU5fm">
          <ref role="3uigEE" to="g51k:~ParentSettings" resolve="ParentSettings" />
        </node>
      </node>
      <node concept="3clFbS" id="2_D_3xXqKXT" role="3clF47" />
      <node concept="2AHcQZ" id="2_D_3xXqKXU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGFqWPB" role="jymVt" />
    <node concept="2tJIrI" id="38k27IRrSfR" role="jymVt" />
    <node concept="3clFb_" id="38k27IRrZPj" role="jymVt">
      <property role="TrG5h" value="paintChildCells" />
      <node concept="3Tmbuc" id="38k27IRrZPk" role="1B3o_S" />
      <node concept="3cqZAl" id="38k27IRrZPm" role="3clF45" />
      <node concept="37vLTG" id="38k27IRrZPn" role="3clF46">
        <property role="TrG5h" value="g" />
        <node concept="3uibUv" id="38k27IRrZPo" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="38k27IRrZPp" role="3clF46">
        <property role="TrG5h" value="settings" />
        <node concept="3uibUv" id="38k27IRrZPq" role="1tU5fm">
          <ref role="3uigEE" to="g51k:~ParentSettings" resolve="ParentSettings" />
        </node>
      </node>
      <node concept="3clFbS" id="38k27IRrZPr" role="3clF47">
        <node concept="3SKdUt" id="38k27IRs8CZ" role="3cqZAp">
          <node concept="3SKdUq" id="38k27IRs8D0" role="3SKWNk">
            <property role="3SKdUp" value="painted in paintContent(...)" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRrZPs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRrS$k" role="jymVt" />
    <node concept="3clFb_" id="7qPnRGFqXDS" role="jymVt">
      <property role="TrG5h" value="paintContent" />
      <node concept="3Tmbuc" id="7qPnRGFqXDT" role="1B3o_S" />
      <node concept="3cqZAl" id="7qPnRGFqXDV" role="3clF45" />
      <node concept="37vLTG" id="7qPnRGFqXDW" role="3clF46">
        <property role="TrG5h" value="graphics" />
        <node concept="3uibUv" id="7qPnRGFqXDX" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Graphics" resolve="Graphics" />
        </node>
      </node>
      <node concept="37vLTG" id="7qPnRGFqXDY" role="3clF46">
        <property role="TrG5h" value="settings" />
        <node concept="3uibUv" id="7qPnRGFqXDZ" role="1tU5fm">
          <ref role="3uigEE" to="g51k:~ParentSettings" resolve="ParentSettings" />
        </node>
      </node>
      <node concept="3clFbS" id="7qPnRGFqXE0" role="3clF47">
        <node concept="3cpWs8" id="5MmYuOgRHP9" role="3cqZAp">
          <node concept="3cpWsn" id="5MmYuOgRHPa" role="3cpWs9">
            <property role="TrG5h" value="g" />
            <node concept="3uibUv" id="5MmYuOgRHPb" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
            </node>
            <node concept="1eOMI4" id="5MmYuOgR$H9" role="33vP2m">
              <node concept="10QFUN" id="5MmYuOgR$H6" role="1eOMHV">
                <node concept="3uibUv" id="5MmYuOgRAGl" role="10QFUM">
                  <ref role="3uigEE" to="z60i:~Graphics2D" resolve="Graphics2D" />
                </node>
                <node concept="2OqwBi" id="2i$17fOuo6k" role="10QFUP">
                  <node concept="37vLTw" id="2i$17fOuqqp" role="2Oq$k0">
                    <ref role="3cqZAo" node="7qPnRGFqXDW" resolve="graphics" />
                  </node>
                  <node concept="liA8E" id="2i$17fOupeY" role="2OqNvi">
                    <ref role="37wK5l" to="z60i:~Graphics.create():java.awt.Graphics" resolve="create" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5MmYuOgRdJh" role="3cqZAp">
          <node concept="2OqwBi" id="5MmYuOgRehI" role="3clFbG">
            <node concept="37vLTw" id="5MmYuOgRLGd" role="2Oq$k0">
              <ref role="3cqZAo" node="5MmYuOgRHPa" resolve="g" />
            </node>
            <node concept="liA8E" id="5MmYuOgRgH3" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setColor(java.awt.Color):void" resolve="setColor" />
              <node concept="10M0yZ" id="5MmYuOgRgRC" role="37wK5m">
                <ref role="3cqZAo" to="z60i:~Color.BLACK" resolve="BLACK" />
                <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5MmYuOgRgWT" role="3cqZAp">
          <node concept="3cpWsn" id="5MmYuOgRgWU" role="3cpWs9">
            <property role="TrG5h" value="bounds" />
            <node concept="3uibUv" id="5MmYuOgRgWS" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
            </node>
            <node concept="1rXfSq" id="5MmYuOgRgWV" role="33vP2m">
              <ref role="37wK5l" node="17nGqbJpmB_" resolve="getBounds" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5MmYuOgRqq0" role="3cqZAp">
          <node concept="2OqwBi" id="5MmYuOgRskW" role="3clFbG">
            <node concept="37vLTw" id="5MmYuOgRNHu" role="2Oq$k0">
              <ref role="3cqZAo" node="5MmYuOgRHPa" resolve="g" />
            </node>
            <node concept="liA8E" id="5MmYuOgRuxT" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics2D.draw(java.awt.Shape):void" resolve="draw" />
              <node concept="37vLTw" id="5MmYuOgRuDW" role="37wK5m">
                <ref role="3cqZAo" node="5MmYuOgRgWU" resolve="bounds" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5MmYuOgR2nC" role="3cqZAp">
          <node concept="2OqwBi" id="5MmYuOgR2Sl" role="3clFbG">
            <node concept="37vLTw" id="5MmYuOgRPpx" role="2Oq$k0">
              <ref role="3cqZAo" node="5MmYuOgRHPa" resolve="g" />
            </node>
            <node concept="liA8E" id="5MmYuOgR51W" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Graphics.setClip(java.awt.Shape):void" resolve="setClip" />
              <node concept="2OqwBi" id="5MmYuOgSDiF" role="37wK5m">
                <node concept="37vLTw" id="5MmYuOgRgWW" role="2Oq$k0">
                  <ref role="3cqZAo" node="5MmYuOgRgWU" resolve="bounds" />
                </node>
                <node concept="liA8E" id="5MmYuOgSDI6" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Rectangle.intersection(java.awt.Rectangle):java.awt.Rectangle" resolve="intersection" />
                  <node concept="2OqwBi" id="5MmYuOgSRZC" role="37wK5m">
                    <node concept="2OqwBi" id="5MmYuOgSLAp" role="2Oq$k0">
                      <node concept="37vLTw" id="5MmYuOgSLun" role="2Oq$k0">
                        <ref role="3cqZAo" node="5MmYuOgRHPa" resolve="g" />
                      </node>
                      <node concept="liA8E" id="5MmYuOgSLPD" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Graphics.getClip():java.awt.Shape" resolve="getClip" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5MmYuOgSTMz" role="2OqNvi">
                      <ref role="37wK5l" to="z60i:~Shape.getBounds():java.awt.Rectangle" resolve="getBounds" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3vyG44AL9AD" role="3cqZAp" />
        <node concept="2Gpval" id="4y$DvIYdDmr" role="3cqZAp">
          <node concept="2GrKxI" id="4y$DvIYdDmt" role="2Gsz3X">
            <property role="TrG5h" value="layer" />
          </node>
          <node concept="37vLTw" id="4y$DvIYdE5K" role="2GsD0m">
            <ref role="3cqZAo" node="4y$DvIY5dwZ" resolve="myLayers" />
          </node>
          <node concept="3clFbS" id="4y$DvIYdDmx" role="2LFqv$">
            <node concept="2Gpval" id="3vyG44ALaf8" role="3cqZAp">
              <node concept="2GrKxI" id="3vyG44ALafa" role="2Gsz3X">
                <property role="TrG5h" value="painter" />
              </node>
              <node concept="2OqwBi" id="4y$DvIYdOiH" role="2GsD0m">
                <node concept="2GrUjf" id="4y$DvIYdNIY" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4y$DvIYdDmt" resolve="layer" />
                </node>
                <node concept="liA8E" id="4y$DvIYe_pW" role="2OqNvi">
                  <ref role="37wK5l" node="4y$DvIYdqDj" resolve="getPainters" />
                </node>
              </node>
              <node concept="3clFbS" id="3vyG44ALafe" role="2LFqv$">
                <node concept="3clFbF" id="3vyG44ALcxc" role="3cqZAp">
                  <node concept="2OqwBi" id="3vyG44ALcF3" role="3clFbG">
                    <node concept="2GrUjf" id="3vyG44ALcxb" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="3vyG44ALafa" resolve="painter" />
                    </node>
                    <node concept="liA8E" id="3vyG44ALd76" role="2OqNvi">
                      <ref role="37wK5l" to="3bo0:17nGqbJcVXW" resolve="paint" />
                      <node concept="37vLTw" id="5MmYuOgRX8r" role="37wK5m">
                        <ref role="3cqZAo" node="5MmYuOgRHPa" resolve="g" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="4y$DvIXDN8p" role="3cqZAp">
              <node concept="2GrKxI" id="4y$DvIXDN8r" role="2Gsz3X">
                <property role="TrG5h" value="cellProvider" />
              </node>
              <node concept="2OqwBi" id="4y$DvIYdJGI" role="2GsD0m">
                <node concept="2GrUjf" id="4y$DvIYdJmW" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4y$DvIYdDmt" resolve="layer" />
                </node>
                <node concept="liA8E" id="4y$DvIYdKmc" role="2OqNvi">
                  <ref role="37wK5l" node="4y$DvIYdqDc" resolve="getCellProviders" />
                </node>
              </node>
              <node concept="3clFbS" id="4y$DvIXDN8v" role="2LFqv$">
                <node concept="2Gpval" id="4y$DvIXE5OI" role="3cqZAp">
                  <node concept="2GrKxI" id="4y$DvIXE5OJ" role="2Gsz3X">
                    <property role="TrG5h" value="cell" />
                  </node>
                  <node concept="3clFbS" id="4y$DvIXE5OL" role="2LFqv$">
                    <node concept="3clFbF" id="4y$DvIXE72y" role="3cqZAp">
                      <node concept="2OqwBi" id="4y$DvIXE7jU" role="3clFbG">
                        <node concept="2GrUjf" id="4y$DvIXE72x" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4y$DvIXE5OJ" resolve="cell" />
                        </node>
                        <node concept="liA8E" id="4y$DvIXEEBv" role="2OqNvi">
                          <ref role="37wK5l" to="g51k:~EditorCell.paintCell(java.awt.Graphics,jetbrains.mps.nodeEditor.cells.ParentSettings):void" resolve="paintCell" />
                          <node concept="37vLTw" id="5MmYuOgRRM6" role="37wK5m">
                            <ref role="3cqZAo" node="5MmYuOgRHPa" resolve="g" />
                          </node>
                          <node concept="37vLTw" id="38k27IRrK3y" role="37wK5m">
                            <ref role="3cqZAo" node="7qPnRGFqXDY" resolve="settings" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4y$DvIXDToC" role="2GsD0m">
                    <node concept="2GrUjf" id="4y$DvIXDTct" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="4y$DvIXDN8r" resolve="cellProvider" />
                    </node>
                    <node concept="liA8E" id="4y$DvIXDTOv" role="2OqNvi">
                      <ref role="37wK5l" to="3bo0:17nGqbJd3xz" resolve="getCells" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7qPnRGFqXE1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGFK$ki" role="jymVt" />
    <node concept="3clFb_" id="4JFQCPi4DSz" role="jymVt">
      <property role="TrG5h" value="onAdd" />
      <node concept="3Tm1VV" id="4JFQCPi4DS$" role="1B3o_S" />
      <node concept="3cqZAl" id="4JFQCPi4DSA" role="3clF45" />
      <node concept="3clFbS" id="4JFQCPi4DSB" role="3clF47">
        <node concept="3clFbF" id="38k27IQWQJF" role="3cqZAp">
          <node concept="3nyPlj" id="38k27IQWQJD" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Collection.onAdd():void" resolve="onAdd" />
          </node>
        </node>
        <node concept="3clFbH" id="38k27IQWQno" role="3cqZAp" />
        <node concept="3clFbJ" id="4JFQCPi4HGx" role="3cqZAp">
          <node concept="3clFbS" id="4JFQCPi4HGz" role="3clFbx">
            <node concept="1X3_iC" id="6tmlia_Kxw_" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="2xdQw9" id="4JFQCPioNnM" role="8Wnug">
                <property role="2xdLsb" value="info" />
                <node concept="3cpWs3" id="4JFQCPioNnN" role="9lYJi">
                  <node concept="Xjq3P" id="4JFQCPioNnO" role="3uHU7w" />
                  <node concept="Xl_RD" id="4JFQCPioNnP" role="3uHU7B">
                    <property role="Xl_RC" value="Diagram drag listener added " />
                  </node>
                </node>
                <node concept="2OqwBi" id="4JFQCPioNnQ" role="9lYEk">
                  <node concept="2OqwBi" id="4JFQCPioNnR" role="2Oq$k0">
                    <node concept="1rXfSq" id="4JFQCPioPau" role="2Oq$k0">
                      <ref role="37wK5l" to="g51k:~EditorCell_Basic.getContext():jetbrains.mps.openapi.editor.EditorContext" resolve="getContext" />
                    </node>
                    <node concept="liA8E" id="4JFQCPioNnT" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext():jetbrains.mps.smodel.IOperationContext" resolve="getOperationContext" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4JFQCPioNnU" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~IOperationContext.getProject():jetbrains.mps.project.Project" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4JFQCPi5ta$" role="3cqZAp">
              <node concept="3cpWsn" id="4JFQCPi5ta_" role="3cpWs9">
                <property role="TrG5h" value="editor" />
                <node concept="3uibUv" id="4JFQCPi5taA" role="1tU5fm">
                  <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                </node>
                <node concept="10QFUN" id="4JFQCPi5u_s" role="33vP2m">
                  <node concept="1rXfSq" id="4JFQCPi5tm2" role="10QFUP">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                  </node>
                  <node concept="3uibUv" id="4JFQCPi5vPU" role="10QFUM">
                    <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4JFQCPi5vR0" role="3cqZAp" />
            <node concept="3clFbF" id="4JFQCPi5vX5" role="3cqZAp">
              <node concept="2OqwBi" id="4JFQCPi5wEl" role="3clFbG">
                <node concept="37vLTw" id="4JFQCPi5vX3" role="2Oq$k0">
                  <ref role="3cqZAo" node="4JFQCPi5ta_" resolve="editor" />
                </node>
                <node concept="liA8E" id="4JFQCPi5zwS" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.addMouseListener(java.awt.event.MouseListener):void" resolve="addMouseListener" />
                  <node concept="37vLTw" id="4JFQCPibjW5" role="37wK5m">
                    <ref role="3cqZAo" node="4JFQCPib82l" resolve="MOUSE_LISTENER" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4JFQCPijpjJ" role="3cqZAp">
              <node concept="2OqwBi" id="4JFQCPijpjK" role="3clFbG">
                <node concept="37vLTw" id="4JFQCPijpjL" role="2Oq$k0">
                  <ref role="3cqZAo" node="4JFQCPi5ta_" resolve="editor" />
                </node>
                <node concept="liA8E" id="4JFQCPijpjM" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.addMouseMotionListener(java.awt.event.MouseMotionListener):void" resolve="addMouseMotionListener" />
                  <node concept="37vLTw" id="4JFQCPijpjN" role="37wK5m">
                    <ref role="3cqZAo" node="4JFQCPib82l" resolve="MOUSE_LISTENER" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="4JFQCPi4I7K" role="3clFbw">
            <node concept="3uibUv" id="4JFQCPi4OxC" role="2ZW6by">
              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
            </node>
            <node concept="1rXfSq" id="4JFQCPi4OxX" role="2ZW6bz">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1R4IoyRsZaM" role="3cqZAp" />
        <node concept="2Gpval" id="1R4IoyRsZDT" role="3cqZAp">
          <node concept="2GrKxI" id="1R4IoyRsZDV" role="2Gsz3X">
            <property role="TrG5h" value="initializer" />
          </node>
          <node concept="37vLTw" id="1R4IoyRt0bB" role="2GsD0m">
            <ref role="3cqZAo" node="1R4IoyRs4NV" resolve="myInitializers" />
          </node>
          <node concept="3clFbS" id="1R4IoyRsZDZ" role="2LFqv$">
            <node concept="3clFbF" id="1R4IoyRt1WJ" role="3cqZAp">
              <node concept="2OqwBi" id="1R4IoyRt27Y" role="3clFbG">
                <node concept="2GrUjf" id="1R4IoyRt1WI" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1R4IoyRsZDV" resolve="initializer" />
                </node>
                <node concept="liA8E" id="1R4IoyRtmbO" role="2OqNvi">
                  <ref role="37wK5l" to="3bo0:1R4IoyRrSfD" resolve="onAdd" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4JFQCPi4DSC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4JFQCPibBki" role="jymVt" />
    <node concept="3clFb_" id="4JFQCPibmMu" role="jymVt">
      <property role="TrG5h" value="onRemove" />
      <node concept="3Tm1VV" id="4JFQCPibmMv" role="1B3o_S" />
      <node concept="3cqZAl" id="4JFQCPibmMw" role="3clF45" />
      <node concept="3clFbS" id="4JFQCPibmMx" role="3clF47">
        <node concept="2Gpval" id="1R4IoyRto80" role="3cqZAp">
          <node concept="2GrKxI" id="1R4IoyRto81" role="2Gsz3X">
            <property role="TrG5h" value="initializer" />
          </node>
          <node concept="37vLTw" id="1R4IoyRto82" role="2GsD0m">
            <ref role="3cqZAo" node="1R4IoyRs4NV" resolve="myInitializers" />
          </node>
          <node concept="3clFbS" id="1R4IoyRto83" role="2LFqv$">
            <node concept="3clFbF" id="1R4IoyRto84" role="3cqZAp">
              <node concept="2OqwBi" id="1R4IoyRto85" role="3clFbG">
                <node concept="2GrUjf" id="1R4IoyRto86" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="1R4IoyRto81" resolve="initializer" />
                </node>
                <node concept="liA8E" id="1R4IoyRto87" role="2OqNvi">
                  <ref role="37wK5l" to="3bo0:1R4IoyRrShL" resolve="onRemove" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1R4IoyRto7r" role="3cqZAp" />
        <node concept="3clFbJ" id="4JFQCPibmMy" role="3cqZAp">
          <node concept="3clFbS" id="4JFQCPibmMz" role="3clFbx">
            <node concept="1X3_iC" id="6tmlia_K$tW" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="2xdQw9" id="4JFQCPioQE2" role="8Wnug">
                <property role="2xdLsb" value="info" />
                <node concept="3cpWs3" id="4JFQCPioQE3" role="9lYJi">
                  <node concept="Xjq3P" id="4JFQCPioQE4" role="3uHU7w" />
                  <node concept="Xl_RD" id="4JFQCPioQE5" role="3uHU7B">
                    <property role="Xl_RC" value="Diagram drag listener removed " />
                  </node>
                </node>
                <node concept="2OqwBi" id="4JFQCPioQE6" role="9lYEk">
                  <node concept="2OqwBi" id="4JFQCPioQE7" role="2Oq$k0">
                    <node concept="1rXfSq" id="4JFQCPioQE8" role="2Oq$k0">
                      <ref role="37wK5l" to="g51k:~EditorCell_Basic.getContext():jetbrains.mps.openapi.editor.EditorContext" resolve="getContext" />
                    </node>
                    <node concept="liA8E" id="4JFQCPioQE9" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext():jetbrains.mps.smodel.IOperationContext" resolve="getOperationContext" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4JFQCPioQEa" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~IOperationContext.getProject():jetbrains.mps.project.Project" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4JFQCPibmM$" role="3cqZAp">
              <node concept="3cpWsn" id="4JFQCPibmM_" role="3cpWs9">
                <property role="TrG5h" value="editor" />
                <node concept="3uibUv" id="4JFQCPibmMA" role="1tU5fm">
                  <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                </node>
                <node concept="10QFUN" id="4JFQCPibmMB" role="33vP2m">
                  <node concept="1rXfSq" id="4JFQCPibmMC" role="10QFUP">
                    <ref role="37wK5l" to="g51k:~EditorCell_Basic.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                  </node>
                  <node concept="3uibUv" id="4JFQCPibmMD" role="10QFUM">
                    <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4JFQCPibmME" role="3cqZAp" />
            <node concept="3clFbF" id="4JFQCPibmMF" role="3cqZAp">
              <node concept="2OqwBi" id="4JFQCPibmMG" role="3clFbG">
                <node concept="37vLTw" id="4JFQCPibmMH" role="2Oq$k0">
                  <ref role="3cqZAo" node="4JFQCPibmM_" resolve="editor" />
                </node>
                <node concept="liA8E" id="4JFQCPibmMI" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.removeMouseListener(java.awt.event.MouseListener):void" resolve="removeMouseListener" />
                  <node concept="37vLTw" id="4JFQCPibmMJ" role="37wK5m">
                    <ref role="3cqZAo" node="4JFQCPib82l" resolve="MOUSE_LISTENER" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4JFQCPijOFf" role="3cqZAp">
              <node concept="2OqwBi" id="4JFQCPijOFg" role="3clFbG">
                <node concept="37vLTw" id="4JFQCPijOFh" role="2Oq$k0">
                  <ref role="3cqZAo" node="4JFQCPibmM_" resolve="editor" />
                </node>
                <node concept="liA8E" id="4JFQCPijOFi" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.removeMouseMotionListener(java.awt.event.MouseMotionListener):void" resolve="removeMouseMotionListener" />
                  <node concept="37vLTw" id="4JFQCPijOFj" role="37wK5m">
                    <ref role="3cqZAo" node="4JFQCPib82l" resolve="MOUSE_LISTENER" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="4JFQCPibmMK" role="3clFbw">
            <node concept="3uibUv" id="4JFQCPibmML" role="2ZW6by">
              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
            </node>
            <node concept="1rXfSq" id="4JFQCPibmMM" role="2ZW6bz">
              <ref role="37wK5l" to="g51k:~EditorCell_Basic.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="38k27IQWYoW" role="3cqZAp" />
        <node concept="3clFbF" id="38k27IQWTAO" role="3cqZAp">
          <node concept="3nyPlj" id="38k27IQWTAP" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Collection.onRemove():void" resolve="onRemove" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4JFQCPibmMN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJnuGj" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJnK_J" role="jymVt">
      <property role="TrG5h" value="coerseMouseEvent" />
      <node concept="3clFbS" id="17nGqbJnK_M" role="3clF47">
        <node concept="3clFbF" id="17nGqbJnY9G" role="3cqZAp">
          <node concept="2ShNRf" id="3vyG44ADIKA" role="3clFbG">
            <node concept="1pGfFk" id="3vyG44ADIKB" role="2ShVmc">
              <ref role="37wK5l" to="3bo0:3vyG44AuATT" resolve="MouseEventData" />
              <node concept="2OqwBi" id="17nGqbJnZoC" role="37wK5m">
                <node concept="37vLTw" id="17nGqbJnYXZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="17nGqbJnQhL" resolve="event" />
                </node>
                <node concept="liA8E" id="17nGqbJo0Op" role="2OqNvi">
                  <ref role="37wK5l" to="hyam:~MouseEvent.getX():int" resolve="getX" />
                </node>
              </node>
              <node concept="2OqwBi" id="17nGqbJo116" role="37wK5m">
                <node concept="37vLTw" id="17nGqbJo117" role="2Oq$k0">
                  <ref role="3cqZAo" node="17nGqbJnQhL" resolve="event" />
                </node>
                <node concept="liA8E" id="17nGqbJo118" role="2OqNvi">
                  <ref role="37wK5l" to="hyam:~MouseEvent.getY():int" resolve="getY" />
                </node>
              </node>
              <node concept="2OqwBi" id="3vyG44ADIKE" role="37wK5m">
                <node concept="37vLTw" id="3vyG44ADIKF" role="2Oq$k0">
                  <ref role="3cqZAo" node="17nGqbJnQhL" resolve="event" />
                </node>
                <node concept="liA8E" id="3vyG44ADIKG" role="2OqNvi">
                  <ref role="37wK5l" to="hyam:~InputEvent.isShiftDown():boolean" resolve="isShiftDown" />
                </node>
              </node>
              <node concept="2OqwBi" id="3vyG44ADIKH" role="37wK5m">
                <node concept="37vLTw" id="3vyG44ADIKI" role="2Oq$k0">
                  <ref role="3cqZAo" node="17nGqbJnQhL" resolve="event" />
                </node>
                <node concept="liA8E" id="3vyG44ADIKJ" role="2OqNvi">
                  <ref role="37wK5l" to="hyam:~InputEvent.isControlDown():boolean" resolve="isControlDown" />
                </node>
              </node>
              <node concept="2OqwBi" id="3vyG44ADIKK" role="37wK5m">
                <node concept="37vLTw" id="3vyG44ADIKL" role="2Oq$k0">
                  <ref role="3cqZAo" node="17nGqbJnQhL" resolve="event" />
                </node>
                <node concept="liA8E" id="3vyG44ADIKM" role="2OqNvi">
                  <ref role="37wK5l" to="hyam:~InputEvent.isMetaDown():boolean" resolve="isMetaDown" />
                </node>
              </node>
              <node concept="2OqwBi" id="3vyG44ADIKN" role="37wK5m">
                <node concept="37vLTw" id="3vyG44ADIKO" role="2Oq$k0">
                  <ref role="3cqZAo" node="17nGqbJnQhL" resolve="event" />
                </node>
                <node concept="liA8E" id="3vyG44ADIKP" role="2OqNvi">
                  <ref role="37wK5l" to="hyam:~InputEvent.isAltDown():boolean" resolve="isAltDown" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="17nGqbJnAYw" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJnISs" role="3clF45">
        <ref role="3uigEE" to="3bo0:3vyG44AulHp" resolve="MouseEventData" />
      </node>
      <node concept="37vLTG" id="17nGqbJnQhL" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="17nGqbJnQhK" role="1tU5fm">
          <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4JFQCPi53HP" role="jymVt" />
    <node concept="312cEg" id="4JFQCPib82l" role="jymVt">
      <property role="TrG5h" value="MOUSE_LISTENER" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4JFQCPib0Wx" role="1B3o_S" />
      <node concept="3uibUv" id="4JFQCPijMpQ" role="1tU5fm">
        <ref role="3uigEE" to="hyam:~MouseAdapter" resolve="MouseAdapter" />
      </node>
      <node concept="2ShNRf" id="4JFQCPi5zHk" role="33vP2m">
        <node concept="YeOm9" id="4JFQCPi5_5c" role="2ShVmc">
          <node concept="1Y3b0j" id="4JFQCPi5_5f" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="hyam:~MouseAdapter" resolve="MouseAdapter" />
            <ref role="37wK5l" to="hyam:~MouseAdapter.&lt;init&gt;()" resolve="MouseAdapter" />
            <node concept="3Tm1VV" id="4JFQCPi5_5g" role="1B3o_S" />
            <node concept="2tJIrI" id="4JFQCPi94rY" role="jymVt" />
            <node concept="3clFb_" id="4JFQCPi94Yf" role="jymVt">
              <property role="TrG5h" value="mousePressed" />
              <node concept="3Tm1VV" id="4JFQCPi94Yg" role="1B3o_S" />
              <node concept="3cqZAl" id="4JFQCPi94Yi" role="3clF45" />
              <node concept="37vLTG" id="4JFQCPi94Yj" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="4JFQCPi94Yk" role="1tU5fm">
                  <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="4JFQCPi94Ym" role="3clF47">
                <node concept="3clFbJ" id="17nGqbJq2Ci" role="3cqZAp">
                  <node concept="3clFbS" id="17nGqbJq2Cj" role="3clFbx">
                    <node concept="3cpWs6" id="17nGqbJq2Ck" role="3cqZAp" />
                  </node>
                  <node concept="3fqX7Q" id="17nGqbJq2Cl" role="3clFbw">
                    <node concept="2OqwBi" id="17nGqbJq2Cm" role="3fr31v">
                      <node concept="1rXfSq" id="17nGqbJq2Cn" role="2Oq$k0">
                        <ref role="37wK5l" node="17nGqbJpmB_" resolve="getBounds" />
                      </node>
                      <node concept="liA8E" id="17nGqbJq2Co" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Rectangle.contains(int,int):boolean" resolve="contains" />
                        <node concept="2OqwBi" id="17nGqbJq2Cp" role="37wK5m">
                          <node concept="37vLTw" id="17nGqbJq2Cq" role="2Oq$k0">
                            <ref role="3cqZAo" node="4JFQCPi94Yj" resolve="event" />
                          </node>
                          <node concept="liA8E" id="17nGqbJq2Cr" role="2OqNvi">
                            <ref role="37wK5l" to="hyam:~MouseEvent.getX():int" resolve="getX" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="17nGqbJq2Cs" role="37wK5m">
                          <node concept="37vLTw" id="17nGqbJq2Ct" role="2Oq$k0">
                            <ref role="3cqZAo" node="4JFQCPi94Yj" resolve="event" />
                          </node>
                          <node concept="liA8E" id="17nGqbJq2Cu" role="2OqNvi">
                            <ref role="37wK5l" to="hyam:~MouseEvent.getY():int" resolve="getY" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="17nGqbJq2nX" role="3cqZAp" />
                <node concept="3cpWs8" id="3vyG44AEuaz" role="3cqZAp">
                  <node concept="3cpWsn" id="3vyG44AEua$" role="3cpWs9">
                    <property role="TrG5h" value="dragEvent" />
                    <node concept="3uibUv" id="17nGqbJp1MU" role="1tU5fm">
                      <ref role="3uigEE" to="3bo0:1KCfUoKRUJj" resolve="DragEvent" />
                    </node>
                    <node concept="2ShNRf" id="3vyG44AEuaA" role="33vP2m">
                      <node concept="1pGfFk" id="3vyG44AEuaB" role="2ShVmc">
                        <ref role="37wK5l" to="3bo0:1KCfUoKRUPL" resolve="DragEvent" />
                        <node concept="1rXfSq" id="17nGqbJoNWI" role="37wK5m">
                          <ref role="37wK5l" node="17nGqbJnK_J" resolve="coerseMouseEvent" />
                          <node concept="37vLTw" id="17nGqbJoNWJ" role="37wK5m">
                            <ref role="3cqZAo" node="4JFQCPi94Yj" resolve="event" />
                          </node>
                        </node>
                        <node concept="1bVj0M" id="3vyG44AEuaS" role="37wK5m">
                          <node concept="3clFbS" id="3vyG44AEuaT" role="1bW5cS">
                            <node concept="3clFbF" id="17nGqbJoTCb" role="3cqZAp">
                              <node concept="37vLTI" id="17nGqbJoW$I" role="3clFbG">
                                <node concept="37vLTw" id="17nGqbJp0Bm" role="37vLTx">
                                  <ref role="3cqZAo" node="17nGqbJoZhI" resolve="handler" />
                                </node>
                                <node concept="37vLTw" id="17nGqbJoTCa" role="37vLTJ">
                                  <ref role="3cqZAo" node="2_D_3xWZTl7" resolve="myDragEventHandler" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="37vLTG" id="17nGqbJoZhI" role="1bW2Oz">
                            <property role="TrG5h" value="handler" />
                            <node concept="3uibUv" id="17nGqbJoZhH" role="1tU5fm">
                              <ref role="3uigEE" to="rvgs:2_D_3xWXMp$" resolve="DragEventHandler" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3vyG44AEuaW" role="3cqZAp" />
                <node concept="2Gpval" id="4y$DvIYgih6" role="3cqZAp">
                  <node concept="2GrKxI" id="4y$DvIYgih9" role="2Gsz3X">
                    <property role="TrG5h" value="layer" />
                  </node>
                  <node concept="37vLTw" id="4y$DvIYgsbn" role="2GsD0m">
                    <ref role="3cqZAo" node="4y$DvIYeF4M" resolve="myReversedLayers" />
                  </node>
                  <node concept="3clFbS" id="4y$DvIYgihf" role="2LFqv$">
                    <node concept="2Gpval" id="3vyG44AEuaX" role="3cqZAp">
                      <node concept="2GrKxI" id="3vyG44AEuaY" role="2Gsz3X">
                        <property role="TrG5h" value="listener" />
                      </node>
                      <node concept="2OqwBi" id="4y$DvIYgqng" role="2GsD0m">
                        <node concept="2GrUjf" id="4y$DvIYgpXg" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4y$DvIYgih9" resolve="layer" />
                        </node>
                        <node concept="liA8E" id="4y$DvIYgruC" role="2OqNvi">
                          <ref role="37wK5l" node="4y$DvIYdqD5" resolve="getDragListeners" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="3vyG44AEub0" role="2LFqv$">
                        <node concept="3clFbF" id="3vyG44AEub1" role="3cqZAp">
                          <node concept="2OqwBi" id="3vyG44AEub2" role="3clFbG">
                            <node concept="2GrUjf" id="3vyG44AEub3" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="3vyG44AEuaY" resolve="listener" />
                            </node>
                            <node concept="liA8E" id="3vyG44AEub4" role="2OqNvi">
                              <ref role="37wK5l" to="3bo0:17nGqbJcVNJ" resolve="onDragStarted" />
                              <node concept="37vLTw" id="3vyG44AEub5" role="37wK5m">
                                <ref role="3cqZAo" node="3vyG44AEua$" resolve="dragEvent" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="4y$DvIYgvkE" role="3cqZAp">
                          <node concept="3clFbS" id="4y$DvIYgvkG" role="3clFbx">
                            <node concept="3cpWs6" id="4y$DvIYgAtF" role="3cqZAp" />
                          </node>
                          <node concept="2OqwBi" id="4y$DvIYgwDB" role="3clFbw">
                            <node concept="37vLTw" id="4y$DvIYgvXr" role="2Oq$k0">
                              <ref role="3cqZAo" node="3vyG44AEua$" resolve="dragEvent" />
                            </node>
                            <node concept="liA8E" id="4y$DvIYg_Vo" role="2OqNvi">
                              <ref role="37wK5l" to="3bo0:2XwVnrt0ldO" resolve="isConsumed" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="4JFQCPi94Yn" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="13N5a7y$$0m" role="jymVt" />
            <node concept="3clFb_" id="13N5a7y$CQG" role="jymVt">
              <property role="TrG5h" value="mouseClicked" />
              <node concept="3Tm1VV" id="13N5a7y$CQH" role="1B3o_S" />
              <node concept="3cqZAl" id="13N5a7y$CQJ" role="3clF45" />
              <node concept="37vLTG" id="13N5a7y$CQK" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="13N5a7y$CQL" role="1tU5fm">
                  <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="13N5a7y$CQN" role="3clF47">
                <node concept="3clFbJ" id="17nGqbJpTAX" role="3cqZAp">
                  <node concept="3clFbS" id="17nGqbJpTAZ" role="3clFbx">
                    <node concept="3cpWs6" id="17nGqbJpZct" role="3cqZAp" />
                  </node>
                  <node concept="3fqX7Q" id="17nGqbJpWsh" role="3clFbw">
                    <node concept="2OqwBi" id="17nGqbJpWsj" role="3fr31v">
                      <node concept="1rXfSq" id="17nGqbJpWsk" role="2Oq$k0">
                        <ref role="37wK5l" node="17nGqbJpmB_" resolve="getBounds" />
                      </node>
                      <node concept="liA8E" id="17nGqbJpWsl" role="2OqNvi">
                        <ref role="37wK5l" to="z60i:~Rectangle.contains(int,int):boolean" resolve="contains" />
                        <node concept="2OqwBi" id="17nGqbJpWsm" role="37wK5m">
                          <node concept="37vLTw" id="17nGqbJpWsn" role="2Oq$k0">
                            <ref role="3cqZAo" node="13N5a7y$CQK" resolve="event" />
                          </node>
                          <node concept="liA8E" id="17nGqbJpWso" role="2OqNvi">
                            <ref role="37wK5l" to="hyam:~MouseEvent.getX():int" resolve="getX" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="17nGqbJpWsp" role="37wK5m">
                          <node concept="37vLTw" id="17nGqbJpWsq" role="2Oq$k0">
                            <ref role="3cqZAo" node="13N5a7y$CQK" resolve="event" />
                          </node>
                          <node concept="liA8E" id="17nGqbJpWsr" role="2OqNvi">
                            <ref role="37wK5l" to="hyam:~MouseEvent.getY():int" resolve="getY" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="17nGqbJpZcE" role="3cqZAp" />
                <node concept="3cpWs8" id="3vyG44ADIKy" role="3cqZAp">
                  <node concept="3cpWsn" id="3vyG44ADIKz" role="3cpWs9">
                    <property role="TrG5h" value="clickEvent" />
                    <node concept="3uibUv" id="3vyG44ADIKl" role="1tU5fm">
                      <ref role="3uigEE" to="3bo0:3vyG44AuRcU" resolve="ClickEvent" />
                    </node>
                    <node concept="2ShNRf" id="3vyG44ADIK$" role="33vP2m">
                      <node concept="1pGfFk" id="3vyG44ADIK_" role="2ShVmc">
                        <ref role="37wK5l" to="3bo0:3vyG44AuReT" resolve="ClickEvent" />
                        <node concept="1rXfSq" id="17nGqbJo2rv" role="37wK5m">
                          <ref role="37wK5l" node="17nGqbJnK_J" resolve="coerseMouseEvent" />
                          <node concept="37vLTw" id="17nGqbJo4kt" role="37wK5m">
                            <ref role="3cqZAo" node="13N5a7y$CQK" resolve="event" />
                          </node>
                        </node>
                        <node concept="1bVj0M" id="3vyG44ADIKQ" role="37wK5m">
                          <node concept="3clFbS" id="3vyG44ADIKR" role="1bW5cS">
                            <node concept="3SKdUt" id="3vyG44ADIKS" role="3cqZAp">
                              <node concept="3SKdUq" id="3vyG44ADIKT" role="3SKWNk">
                                <property role="3SKdUp" value="do noting" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3vyG44ADlWv" role="3cqZAp" />
                <node concept="2Gpval" id="4y$DvIYgClr" role="3cqZAp">
                  <node concept="2GrKxI" id="4y$DvIYgClt" role="2Gsz3X">
                    <property role="TrG5h" value="layer" />
                  </node>
                  <node concept="37vLTw" id="5MmYuOgWU3m" role="2GsD0m">
                    <ref role="3cqZAo" node="4y$DvIYeF4M" resolve="myReversedLayers" />
                  </node>
                  <node concept="3clFbS" id="4y$DvIYgClx" role="2LFqv$">
                    <node concept="2Gpval" id="3vyG44AE3Uw" role="3cqZAp">
                      <node concept="2GrKxI" id="3vyG44AE3Uy" role="2Gsz3X">
                        <property role="TrG5h" value="listener" />
                      </node>
                      <node concept="2OqwBi" id="4y$DvIYgKbH" role="2GsD0m">
                        <node concept="2GrUjf" id="4y$DvIYgJC0" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="4y$DvIYgClt" resolve="layer" />
                        </node>
                        <node concept="liA8E" id="4y$DvIYhaD3" role="2OqNvi">
                          <ref role="37wK5l" node="4y$DvIYdqCY" resolve="getClickListeners" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="3vyG44AE3UA" role="2LFqv$">
                        <node concept="3clFbF" id="3vyG44AE6a2" role="3cqZAp">
                          <node concept="2OqwBi" id="3vyG44AE6mS" role="3clFbG">
                            <node concept="2GrUjf" id="3vyG44AE6a1" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="3vyG44AE3Uy" resolve="listener" />
                            </node>
                            <node concept="liA8E" id="3vyG44AEtx8" role="2OqNvi">
                              <ref role="37wK5l" to="3bo0:17nGqbJcVTx" resolve="onMouseClicked" />
                              <node concept="37vLTw" id="3vyG44AEtQf" role="37wK5m">
                                <ref role="3cqZAo" node="3vyG44ADIKz" resolve="clickEvent" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="4y$DvIYhbsm" role="3cqZAp">
                          <node concept="3clFbS" id="4y$DvIYhbso" role="3clFbx">
                            <node concept="3cpWs6" id="4y$DvIYhf4b" role="3cqZAp" />
                          </node>
                          <node concept="2OqwBi" id="4y$DvIYhcq$" role="3clFbw">
                            <node concept="37vLTw" id="4y$DvIYhbVW" role="2Oq$k0">
                              <ref role="3cqZAo" node="3vyG44ADIKz" resolve="clickEvent" />
                            </node>
                            <node concept="liA8E" id="4y$DvIYheG2" role="2OqNvi">
                              <ref role="37wK5l" to="3bo0:3vyG44AuRfj" resolve="isConsumed" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3vyG44AFzxu" role="3cqZAp" />
                <node concept="3clFbJ" id="3vyG44AEDJ$" role="3cqZAp">
                  <node concept="3clFbS" id="3vyG44AEDJA" role="3clFbx">
                    <node concept="3cpWs8" id="13N5a7y$OjF" role="3cqZAp">
                      <node concept="3cpWsn" id="13N5a7y$OjG" role="3cpWs9">
                        <property role="TrG5h" value="ec" />
                        <node concept="3uibUv" id="13N5a7y$OjH" role="1tU5fm">
                          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                        </node>
                        <node concept="10QFUN" id="13N5a7y_eKe" role="33vP2m">
                          <node concept="2OqwBi" id="13N5a7y_aM2" role="10QFUP">
                            <node concept="1rXfSq" id="13N5a7y$P4$" role="2Oq$k0">
                              <ref role="37wK5l" to="g51k:~EditorCell_Basic.getContext():jetbrains.mps.openapi.editor.EditorContext" resolve="getContext" />
                            </node>
                            <node concept="liA8E" id="13N5a7y_eCJ" role="2OqNvi">
                              <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                            </node>
                          </node>
                          <node concept="3uibUv" id="13N5a7y_iy6" role="10QFUM">
                            <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="13N5a7yTEeu" role="3cqZAp">
                      <node concept="37vLTI" id="13N5a7yTME3" role="3clFbG">
                        <node concept="2OqwBi" id="13N5a7yTReC" role="37vLTx">
                          <node concept="37vLTw" id="13N5a7yTQAO" role="2Oq$k0">
                            <ref role="3cqZAo" node="13N5a7y$CQK" resolve="event" />
                          </node>
                          <node concept="liA8E" id="13N5a7yTSB5" role="2OqNvi">
                            <ref role="37wK5l" to="hyam:~MouseEvent.getX():int" resolve="getX" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="13N5a7yTEes" role="37vLTJ">
                          <ref role="3cqZAo" node="13N5a7yT5SL" resolve="myCompletionPositionX" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="13N5a7yTSKE" role="3cqZAp">
                      <node concept="37vLTI" id="13N5a7yTSKF" role="3clFbG">
                        <node concept="2OqwBi" id="13N5a7yTSKG" role="37vLTx">
                          <node concept="37vLTw" id="13N5a7yTSKH" role="2Oq$k0">
                            <ref role="3cqZAo" node="13N5a7y$CQK" resolve="event" />
                          </node>
                          <node concept="liA8E" id="13N5a7yTSKI" role="2OqNvi">
                            <ref role="37wK5l" to="hyam:~MouseEvent.getY():int" resolve="getY" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="13N5a7yTX5j" role="37vLTJ">
                          <ref role="3cqZAo" node="13N5a7yTmQV" resolve="myCompletionPositionY" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="13N5a7y_je8" role="3cqZAp">
                      <node concept="2OqwBi" id="13N5a7y_jRc" role="3clFbG">
                        <node concept="37vLTw" id="13N5a7y_je6" role="2Oq$k0">
                          <ref role="3cqZAo" node="13N5a7y$OjG" resolve="ec" />
                        </node>
                        <node concept="liA8E" id="13N5a7y_kW9" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorComponent.activateNodeSubstituteChooser(jetbrains.mps.openapi.editor.cells.EditorCell,boolean):boolean" resolve="activateNodeSubstituteChooser" />
                          <node concept="Xjq3P" id="13N5a7yUuhw" role="37wK5m">
                            <ref role="1HBi2w" node="7qPnRGFqlIs" resolve="EditorCell_Scene" />
                          </node>
                          <node concept="3clFbT" id="13N5a7yUK8J" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="3vyG44AEQh4" role="3clFbw">
                    <node concept="2OqwBi" id="3vyG44AEQh5" role="3uHU7B">
                      <node concept="37vLTw" id="3vyG44AEQh6" role="2Oq$k0">
                        <ref role="3cqZAo" node="13N5a7y$CQK" resolve="event" />
                      </node>
                      <node concept="liA8E" id="3vyG44AEQh7" role="2OqNvi">
                        <ref role="37wK5l" to="hyam:~MouseEvent.getClickCount():int" resolve="getClickCount" />
                      </node>
                    </node>
                    <node concept="3cmrfG" id="3vyG44AEQh8" role="3uHU7w">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="13N5a7y$CQO" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="6tmliaAYVZU" role="jymVt" />
            <node concept="3clFb_" id="6tmliaAYZFw" role="jymVt">
              <property role="TrG5h" value="mouseMoved" />
              <node concept="3Tm1VV" id="6tmliaAYZFx" role="1B3o_S" />
              <node concept="3cqZAl" id="6tmliaAYZFz" role="3clF45" />
              <node concept="37vLTG" id="6tmliaAYZF$" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="6tmliaAYZF_" role="1tU5fm">
                  <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="6tmliaAYZFB" role="3clF47">
                <node concept="2Gpval" id="17nGqbJnjPt" role="3cqZAp">
                  <node concept="2GrKxI" id="17nGqbJnjPv" role="2Gsz3X">
                    <property role="TrG5h" value="listener" />
                  </node>
                  <node concept="37vLTw" id="17nGqbJnjYM" role="2GsD0m">
                    <ref role="3cqZAo" node="17nGqbJfZxU" resolve="myCursorListeners" />
                  </node>
                  <node concept="3clFbS" id="17nGqbJnjPz" role="2LFqv$">
                    <node concept="3clFbF" id="17nGqbJnqVG" role="3cqZAp">
                      <node concept="2OqwBi" id="17nGqbJnr7T" role="3clFbG">
                        <node concept="2GrUjf" id="17nGqbJnqVF" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="17nGqbJnjPv" resolve="listener" />
                        </node>
                        <node concept="liA8E" id="17nGqbJnruH" role="2OqNvi">
                          <ref role="37wK5l" to="3bo0:17nGqbJd2o$" resolve="onCursorMoved" />
                          <node concept="2ShNRf" id="17nGqbJnrF3" role="37wK5m">
                            <node concept="1pGfFk" id="17nGqbJnt2f" role="2ShVmc">
                              <ref role="37wK5l" to="3bo0:17nGqbJd3hd" resolve="CursorEvent" />
                              <node concept="1rXfSq" id="17nGqbJo8By" role="37wK5m">
                                <ref role="37wK5l" node="17nGqbJnK_J" resolve="coerseMouseEvent" />
                                <node concept="37vLTw" id="17nGqbJoaxu" role="37wK5m">
                                  <ref role="3cqZAo" node="6tmliaAYZF$" resolve="event" />
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
              <node concept="2AHcQZ" id="6tmliaAYZFC" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="4JFQCPi99T$" role="jymVt" />
            <node concept="3clFb_" id="4JFQCPi9axp" role="jymVt">
              <property role="TrG5h" value="mouseReleased" />
              <node concept="3Tm1VV" id="4JFQCPi9axq" role="1B3o_S" />
              <node concept="3cqZAl" id="4JFQCPi9axs" role="3clF45" />
              <node concept="37vLTG" id="4JFQCPi9axt" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="4JFQCPi9axu" role="1tU5fm">
                  <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="4JFQCPi9axw" role="3clF47">
                <node concept="3clFbJ" id="6tmlia_LF96" role="3cqZAp">
                  <node concept="3clFbC" id="6tmlia_LF97" role="3clFbw">
                    <node concept="10Nm6u" id="6tmlia_LF98" role="3uHU7w" />
                    <node concept="37vLTw" id="6tmlia_LF99" role="3uHU7B">
                      <ref role="3cqZAo" node="2_D_3xWZTl7" resolve="myDragEventHandler" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="6tmlia_LF9a" role="3clFbx">
                    <node concept="3cpWs6" id="6tmlia_LF9b" role="3cqZAp" />
                  </node>
                </node>
                <node concept="3clFbH" id="6tmlia_LC3r" role="3cqZAp" />
                <node concept="3clFbF" id="6tmlia_L_5T" role="3cqZAp">
                  <node concept="2OqwBi" id="6tmlia_L_5V" role="3clFbG">
                    <node concept="37vLTw" id="6tmlia_L_5W" role="2Oq$k0">
                      <ref role="3cqZAo" node="2_D_3xWZTl7" resolve="myDragEventHandler" />
                    </node>
                    <node concept="liA8E" id="6tmlia_L_5X" role="2OqNvi">
                      <ref role="37wK5l" to="rvgs:7sG$k3BCQhh" resolve="completeAt" />
                      <node concept="2OqwBi" id="6tmlia_L_5Y" role="37wK5m">
                        <node concept="37vLTw" id="6tmlia_L_5Z" role="2Oq$k0">
                          <ref role="3cqZAo" node="4JFQCPi9axt" resolve="event" />
                        </node>
                        <node concept="liA8E" id="6tmlia_L_60" role="2OqNvi">
                          <ref role="37wK5l" to="hyam:~MouseEvent.getX():int" resolve="getX" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6tmlia_L_61" role="37wK5m">
                        <node concept="37vLTw" id="6tmlia_L_62" role="2Oq$k0">
                          <ref role="3cqZAo" node="4JFQCPi9axt" resolve="event" />
                        </node>
                        <node concept="liA8E" id="6tmlia_L_63" role="2OqNvi">
                          <ref role="37wK5l" to="hyam:~MouseEvent.getY():int" resolve="getY" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4JFQCPi9bQi" role="3cqZAp">
                  <node concept="37vLTI" id="4JFQCPi9bQj" role="3clFbG">
                    <node concept="37vLTw" id="2_D_3xX08D6" role="37vLTJ">
                      <ref role="3cqZAo" node="2_D_3xWZTl7" resolve="myDragEventHandler" />
                    </node>
                    <node concept="10Nm6u" id="4JFQCPi9fZ1" role="37vLTx" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="4JFQCPi9axx" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="4JFQCPi94te" role="jymVt" />
            <node concept="3clFb_" id="4JFQCPi5CL5" role="jymVt">
              <property role="TrG5h" value="mouseDragged" />
              <node concept="3Tm1VV" id="4JFQCPi5CL6" role="1B3o_S" />
              <node concept="3cqZAl" id="4JFQCPi5CL8" role="3clF45" />
              <node concept="37vLTG" id="4JFQCPi5CL9" role="3clF46">
                <property role="TrG5h" value="event" />
                <node concept="3uibUv" id="4JFQCPi5CLa" role="1tU5fm">
                  <ref role="3uigEE" to="hyam:~MouseEvent" resolve="MouseEvent" />
                </node>
              </node>
              <node concept="3clFbS" id="4JFQCPi5CLc" role="3clF47">
                <node concept="3clFbJ" id="4JFQCPi6B9u" role="3cqZAp">
                  <node concept="3clFbC" id="4JFQCPi6EC$" role="3clFbw">
                    <node concept="10Nm6u" id="4JFQCPi6FU2" role="3uHU7w" />
                    <node concept="37vLTw" id="2_D_3xX21tH" role="3uHU7B">
                      <ref role="3cqZAo" node="2_D_3xWZTl7" resolve="myDragEventHandler" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="4JFQCPi6B9w" role="3clFbx">
                    <node concept="3cpWs6" id="4JFQCPi9qK9" role="3cqZAp" />
                  </node>
                </node>
                <node concept="3clFbH" id="4JFQCPikVfl" role="3cqZAp" />
                <node concept="3clFbF" id="2_D_3xX23dU" role="3cqZAp">
                  <node concept="2OqwBi" id="2_D_3xX23FS" role="3clFbG">
                    <node concept="37vLTw" id="2_D_3xX23dS" role="2Oq$k0">
                      <ref role="3cqZAo" node="2_D_3xWZTl7" resolve="myDragEventHandler" />
                    </node>
                    <node concept="liA8E" id="2_D_3xX27ly" role="2OqNvi">
                      <ref role="37wK5l" to="rvgs:2_D_3xWXMqJ" resolve="dragTo" />
                      <node concept="2OqwBi" id="2_D_3xX27Xp" role="37wK5m">
                        <node concept="37vLTw" id="2_D_3xX27xW" role="2Oq$k0">
                          <ref role="3cqZAo" node="4JFQCPi5CL9" resolve="event" />
                        </node>
                        <node concept="liA8E" id="2_D_3xX291a" role="2OqNvi">
                          <ref role="37wK5l" to="hyam:~MouseEvent.getX():int" resolve="getX" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2_D_3xX2a9g" role="37wK5m">
                        <node concept="37vLTw" id="2_D_3xX29ia" role="2Oq$k0">
                          <ref role="3cqZAo" node="4JFQCPi5CL9" resolve="event" />
                        </node>
                        <node concept="liA8E" id="2_D_3xX2aQE" role="2OqNvi">
                          <ref role="37wK5l" to="hyam:~MouseEvent.getY():int" resolve="getY" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="4JFQCPi5CLd" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="17nGqbJpteS" role="jymVt" />
    <node concept="3clFb_" id="17nGqbJpmB_" role="jymVt">
      <property role="TrG5h" value="getBounds" />
      <node concept="3Tm6S6" id="17nGqbJpmBA" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJpmBB" role="3clF45">
        <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
      </node>
      <node concept="3clFbS" id="17nGqbJpms8" role="3clF47">
        <node concept="3cpWs6" id="17nGqbJpmxN" role="3cqZAp">
          <node concept="2ShNRf" id="17nGqbJpmxO" role="3cqZAk">
            <node concept="1pGfFk" id="17nGqbJpmxP" role="2ShVmc">
              <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
              <node concept="37vLTw" id="17nGqbJpmxQ" role="37wK5m">
                <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myX" resolve="myX" />
              </node>
              <node concept="37vLTw" id="17nGqbJpmxR" role="37wK5m">
                <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myY" resolve="myY" />
              </node>
              <node concept="37vLTw" id="17nGqbJpmxS" role="37wK5m">
                <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myWidth" resolve="myWidth" />
              </node>
              <node concept="37vLTw" id="17nGqbJpmxT" role="37wK5m">
                <ref role="3cqZAo" to="g51k:~EditorCell_Basic.myHeight" resolve="myHeight" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="13N5a7y_VZ5" role="jymVt" />
    <node concept="3clFb_" id="13N5a7yA83x" role="jymVt">
      <property role="TrG5h" value="createSubstitutePatternEditor" />
      <node concept="3Tm1VV" id="13N5a7yA83y" role="1B3o_S" />
      <node concept="3uibUv" id="13N5a7yA83$" role="3clF45">
        <ref role="3uigEE" to="6lvu:~NodeSubstitutePatternEditor" resolve="NodeSubstitutePatternEditor" />
      </node>
      <node concept="3clFbS" id="13N5a7yA83_" role="3clF47">
        <node concept="3clFbF" id="13N5a7yV8Ib" role="3cqZAp">
          <node concept="2ShNRf" id="13N5a7yV8I9" role="3clFbG">
            <node concept="YeOm9" id="13N5a7yV9Td" role="2ShVmc">
              <node concept="1Y3b0j" id="13N5a7yV9Tg" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="37wK5l" to="6lvu:~NodeSubstitutePatternEditor.&lt;init&gt;()" resolve="NodeSubstitutePatternEditor" />
                <ref role="1Y3XeK" to="6lvu:~NodeSubstitutePatternEditor" resolve="NodeSubstitutePatternEditor" />
                <node concept="3Tm1VV" id="13N5a7yV9Th" role="1B3o_S" />
                <node concept="3clFb_" id="13N5a7yVboC" role="jymVt">
                  <property role="TrG5h" value="activate" />
                  <node concept="3Tm1VV" id="13N5a7yVboD" role="1B3o_S" />
                  <node concept="3cqZAl" id="13N5a7yVboF" role="3clF45" />
                  <node concept="37vLTG" id="13N5a7yVboG" role="3clF46">
                    <property role="TrG5h" value="owner" />
                    <node concept="3uibUv" id="13N5a7yVboH" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Window" resolve="Window" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="13N5a7yVboI" role="3clF46">
                    <property role="TrG5h" value="location" />
                    <node concept="3uibUv" id="13N5a7yVboJ" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="13N5a7yVboK" role="3clF46">
                    <property role="TrG5h" value="size" />
                    <node concept="3uibUv" id="13N5a7yVboL" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Dimension" resolve="Dimension" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="13N5a7yVboM" role="3clF46">
                    <property role="TrG5h" value="show" />
                    <node concept="10P_77" id="13N5a7yVboN" role="1tU5fm" />
                  </node>
                  <node concept="3clFbS" id="13N5a7yVboP" role="3clF47">
                    <node concept="3cpWs8" id="13N5a7z6xmA" role="3cqZAp">
                      <node concept="3cpWsn" id="13N5a7z6xmB" role="3cpWs9">
                        <property role="TrG5h" value="component" />
                        <node concept="3uibUv" id="13N5a7z6xm$" role="1tU5fm">
                          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                        </node>
                        <node concept="1eOMI4" id="13N5a7z6xmC" role="33vP2m">
                          <node concept="10QFUN" id="13N5a7z6xmD" role="1eOMHV">
                            <node concept="3uibUv" id="13N5a7z6xmE" role="10QFUM">
                              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                            </node>
                            <node concept="2OqwBi" id="13N5a7z6xmF" role="10QFUP">
                              <node concept="1rXfSq" id="13N5a7z6xmG" role="2Oq$k0">
                                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getContext():jetbrains.mps.openapi.editor.EditorContext" resolve="getContext" />
                              </node>
                              <node concept="liA8E" id="13N5a7z6xmH" role="2OqNvi">
                                <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="13N5a7z5ScZ" role="3cqZAp">
                      <node concept="3cpWsn" id="13N5a7z5Sd0" role="3cpWs9">
                        <property role="TrG5h" value="anchor" />
                        <node concept="3uibUv" id="13N5a7z5ScX" role="1tU5fm">
                          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                        </node>
                        <node concept="2OqwBi" id="13N5a7z5Sd1" role="33vP2m">
                          <node concept="liA8E" id="13N5a7z5Sd3" role="2OqNvi">
                            <ref role="37wK5l" to="z60i:~Component.getLocationOnScreen():java.awt.Point" resolve="getLocationOnScreen" />
                          </node>
                          <node concept="37vLTw" id="13N5a7z6xmI" role="2Oq$k0">
                            <ref role="3cqZAo" node="13N5a7z6xmB" resolve="component" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="13N5a7yVFff" role="3cqZAp">
                      <node concept="2OqwBi" id="13N5a7yVFfh" role="3clFbG">
                        <node concept="37vLTw" id="13N5a7yVFfi" role="2Oq$k0">
                          <ref role="3cqZAo" node="13N5a7yVboI" resolve="location" />
                        </node>
                        <node concept="liA8E" id="13N5a7yVFfj" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Point.move(int,int):void" resolve="move" />
                          <node concept="3cpWs3" id="13N5a7z3IoY" role="37wK5m">
                            <node concept="37vLTw" id="13N5a7z3Jzz" role="3uHU7w">
                              <ref role="3cqZAo" node="13N5a7yT5SL" resolve="myCompletionPositionX" />
                            </node>
                            <node concept="2OqwBi" id="13N5a7z5X9k" role="3uHU7B">
                              <node concept="37vLTw" id="13N5a7z5U6h" role="2Oq$k0">
                                <ref role="3cqZAo" node="13N5a7z5Sd0" resolve="anchor" />
                              </node>
                              <node concept="2OwXpG" id="13N5a7z60sN" role="2OqNvi">
                                <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs3" id="13N5a7z3RVp" role="37wK5m">
                            <node concept="37vLTw" id="13N5a7yVFfl" role="3uHU7w">
                              <ref role="3cqZAo" node="13N5a7yTmQV" resolve="myCompletionPositionY" />
                            </node>
                            <node concept="2OqwBi" id="13N5a7z62Bb" role="3uHU7B">
                              <node concept="37vLTw" id="13N5a7z618d" role="2Oq$k0">
                                <ref role="3cqZAo" node="13N5a7z5Sd0" resolve="anchor" />
                              </node>
                              <node concept="2OwXpG" id="13N5a7z65UE" role="2OqNvi">
                                <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="13N5a7yVboW" role="3cqZAp">
                      <node concept="3nyPlj" id="13N5a7yVboV" role="3clFbG">
                        <ref role="37wK5l" to="6lvu:~NodeSubstitutePatternEditor.activate(java.awt.Window,java.awt.Point,java.awt.Dimension,boolean):void" resolve="activate" />
                        <node concept="37vLTw" id="13N5a7yVboR" role="37wK5m">
                          <ref role="3cqZAo" node="13N5a7yVboG" resolve="owner" />
                        </node>
                        <node concept="37vLTw" id="13N5a7yVboS" role="37wK5m">
                          <ref role="3cqZAo" node="13N5a7yVboI" resolve="location" />
                        </node>
                        <node concept="2ShNRf" id="13N5a7z2H1S" role="37wK5m">
                          <node concept="1pGfFk" id="13N5a7z2GSj" role="2ShVmc">
                            <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                            <node concept="3cmrfG" id="13N5a7z2HQq" role="37wK5m">
                              <property role="3cmrfH" value="300" />
                            </node>
                            <node concept="3cmrfG" id="13N5a7z2Ik6" role="37wK5m">
                              <property role="3cmrfH" value="0" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTw" id="13N5a7yVboU" role="37wK5m">
                          <ref role="3cqZAo" node="13N5a7yVboM" resolve="show" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="13N5a7yVboQ" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="13N5a7z6bZm" role="jymVt" />
                <node concept="3clFb_" id="13N5a7z6ct7" role="jymVt">
                  <property role="TrG5h" value="setLocation" />
                  <node concept="3Tm1VV" id="13N5a7z6ct8" role="1B3o_S" />
                  <node concept="3cqZAl" id="13N5a7z6cta" role="3clF45" />
                  <node concept="37vLTG" id="13N5a7z6ctb" role="3clF46">
                    <property role="TrG5h" value="point" />
                    <node concept="3uibUv" id="13N5a7z6ctc" role="1tU5fm">
                      <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="13N5a7z6cte" role="3clF47">
                    <node concept="3cpWs8" id="13N5a7z6Aj7" role="3cqZAp">
                      <node concept="3cpWsn" id="13N5a7z6Aj8" role="3cpWs9">
                        <property role="TrG5h" value="component" />
                        <node concept="3uibUv" id="13N5a7z6Aj9" role="1tU5fm">
                          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                        </node>
                        <node concept="1eOMI4" id="13N5a7z6Aja" role="33vP2m">
                          <node concept="10QFUN" id="13N5a7z6Ajb" role="1eOMHV">
                            <node concept="3uibUv" id="13N5a7z6Ajc" role="10QFUM">
                              <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                            </node>
                            <node concept="2OqwBi" id="13N5a7z6Ajd" role="10QFUP">
                              <node concept="1rXfSq" id="13N5a7z6Aje" role="2Oq$k0">
                                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getContext():jetbrains.mps.openapi.editor.EditorContext" resolve="getContext" />
                              </node>
                              <node concept="liA8E" id="13N5a7z6Ajf" role="2OqNvi">
                                <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="13N5a7z6dGS" role="3cqZAp">
                      <node concept="3cpWsn" id="13N5a7z6dGT" role="3cpWs9">
                        <property role="TrG5h" value="anchor" />
                        <node concept="3uibUv" id="13N5a7z6dGU" role="1tU5fm">
                          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                        </node>
                        <node concept="2OqwBi" id="13N5a7z6dGV" role="33vP2m">
                          <node concept="37vLTw" id="13N5a7z6FYy" role="2Oq$k0">
                            <ref role="3cqZAo" node="13N5a7z6Aj8" resolve="component" />
                          </node>
                          <node concept="liA8E" id="13N5a7z6dGX" role="2OqNvi">
                            <ref role="37wK5l" to="z60i:~Component.getLocationOnScreen():java.awt.Point" resolve="getLocationOnScreen" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="13N5a7z6dGY" role="3cqZAp">
                      <node concept="2OqwBi" id="13N5a7z6dGZ" role="3clFbG">
                        <node concept="37vLTw" id="13N5a7z6iTY" role="2Oq$k0">
                          <ref role="3cqZAo" node="13N5a7z6ctb" resolve="point" />
                        </node>
                        <node concept="liA8E" id="13N5a7z6dH1" role="2OqNvi">
                          <ref role="37wK5l" to="z60i:~Point.move(int,int):void" resolve="move" />
                          <node concept="3cpWs3" id="13N5a7z6dH2" role="37wK5m">
                            <node concept="37vLTw" id="13N5a7z6dH3" role="3uHU7w">
                              <ref role="3cqZAo" node="13N5a7yT5SL" resolve="myCompletionPositionX" />
                            </node>
                            <node concept="2OqwBi" id="13N5a7z6dH4" role="3uHU7B">
                              <node concept="37vLTw" id="13N5a7z6dH5" role="2Oq$k0">
                                <ref role="3cqZAo" node="13N5a7z6dGT" resolve="anchor" />
                              </node>
                              <node concept="2OwXpG" id="13N5a7z6dH6" role="2OqNvi">
                                <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs3" id="13N5a7z6dH7" role="37wK5m">
                            <node concept="37vLTw" id="13N5a7z6dH8" role="3uHU7w">
                              <ref role="3cqZAo" node="13N5a7yTmQV" resolve="myCompletionPositionY" />
                            </node>
                            <node concept="2OqwBi" id="13N5a7z6dH9" role="3uHU7B">
                              <node concept="37vLTw" id="13N5a7z6dHa" role="2Oq$k0">
                                <ref role="3cqZAo" node="13N5a7z6dGT" resolve="anchor" />
                              </node>
                              <node concept="2OwXpG" id="13N5a7z6dHb" role="2OqNvi">
                                <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="13N5a7z6cti" role="3cqZAp">
                      <node concept="3nyPlj" id="13N5a7z6cth" role="3clFbG">
                        <ref role="37wK5l" to="6lvu:~NodeSubstitutePatternEditor.setLocation(java.awt.Point):void" resolve="setLocation" />
                        <node concept="37vLTw" id="13N5a7z6ctg" role="37wK5m">
                          <ref role="3cqZAo" node="13N5a7z6ctb" resolve="point" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="13N5a7z6ctf" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="2tJIrI" id="13N5a7z5Kmn" role="jymVt" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="13N5a7yA83A" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="13N5a7yWfkA" role="jymVt" />
    <node concept="312cEu" id="13N5a7yX16$" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MySubtituteInfo" />
      <node concept="2tJIrI" id="13N5a7yXK3O" role="jymVt" />
      <node concept="3clFbW" id="13N5a7yXVjr" role="jymVt">
        <node concept="3cqZAl" id="13N5a7yXVjs" role="3clF45" />
        <node concept="3Tm6S6" id="13N5a7yXVjt" role="1B3o_S" />
        <node concept="3clFbS" id="13N5a7yXVjv" role="3clF47">
          <node concept="XkiVB" id="13N5a7yXVjx" role="3cqZAp">
            <ref role="37wK5l" to="6lvu:~AbstractNodeSubstituteInfo.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext)" resolve="AbstractNodeSubstituteInfo" />
            <node concept="37vLTw" id="13N5a7yXVj_" role="37wK5m">
              <ref role="3cqZAo" node="13N5a7yXVjy" resolve="editorContext" />
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="13N5a7yXVjy" role="3clF46">
          <property role="TrG5h" value="editorContext" />
          <node concept="3uibUv" id="13N5a7yXVj$" role="1tU5fm">
            <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="13N5a7yY2BO" role="jymVt" />
      <node concept="3clFb_" id="13N5a7yXNy$" role="jymVt">
        <property role="TrG5h" value="createActions" />
        <node concept="3Tmbuc" id="13N5a7yXNy_" role="1B3o_S" />
        <node concept="3uibUv" id="13N5a7yXNyB" role="3clF45">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="13N5a7yXNyC" role="11_B2D">
            <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
          </node>
        </node>
        <node concept="3clFbS" id="13N5a7yXNyD" role="3clF47">
          <node concept="3cpWs8" id="13N5a7yYyiu" role="3cqZAp">
            <node concept="3cpWsn" id="13N5a7yYyix" role="3cpWs9">
              <property role="TrG5h" value="result" />
              <node concept="_YKpA" id="13N5a7yYyiq" role="1tU5fm">
                <node concept="3uibUv" id="13N5a7yYy_c" role="_ZDj9">
                  <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                </node>
              </node>
              <node concept="2ShNRf" id="13N5a7yYzdV" role="33vP2m">
                <node concept="Tc6Ow" id="13N5a7yYz4m" role="2ShVmc">
                  <node concept="3uibUv" id="13N5a7yYz4n" role="HW$YZ">
                    <ref role="3uigEE" to="f4zo:~SubstituteAction" resolve="SubstituteAction" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2Gpval" id="17nGqbJmYxg" role="3cqZAp">
            <node concept="2GrKxI" id="17nGqbJmYxi" role="2Gsz3X">
              <property role="TrG5h" value="provider" />
            </node>
            <node concept="37vLTw" id="17nGqbJn1Tj" role="2GsD0m">
              <ref role="3cqZAo" node="17nGqbJmfAC" resolve="myCompletionProviders" />
            </node>
            <node concept="3clFbS" id="17nGqbJmYxm" role="2LFqv$">
              <node concept="2Gpval" id="13N5a7z1D6h" role="3cqZAp">
                <node concept="3clFbS" id="13N5a7z1D6o" role="2LFqv$">
                  <node concept="3clFbF" id="13N5a7z1D6p" role="3cqZAp">
                    <node concept="2OqwBi" id="13N5a7z1D6q" role="3clFbG">
                      <node concept="37vLTw" id="13N5a7z1D6r" role="2Oq$k0">
                        <ref role="3cqZAo" node="13N5a7yYyix" resolve="result" />
                      </node>
                      <node concept="TSZUe" id="13N5a7z1D6s" role="2OqNvi">
                        <node concept="2ShNRf" id="13N5a7z1D6t" role="25WWJ7">
                          <node concept="YeOm9" id="13N5a7z1D6u" role="2ShVmc">
                            <node concept="1Y3b0j" id="13N5a7z1D6v" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="1Y3XeK" to="zce0:~AbstractSubstituteAction" resolve="AbstractSubstituteAction" />
                              <ref role="37wK5l" to="zce0:~AbstractSubstituteAction.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractSubstituteAction" />
                              <node concept="3Tm1VV" id="13N5a7z1D6w" role="1B3o_S" />
                              <node concept="3clFb_" id="13N5a7z1D6x" role="jymVt">
                                <property role="TrG5h" value="getMatchingText" />
                                <node concept="3Tm1VV" id="13N5a7z1D6y" role="1B3o_S" />
                                <node concept="3uibUv" id="13N5a7z1D6z" role="3clF45">
                                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                </node>
                                <node concept="37vLTG" id="13N5a7z1D6$" role="3clF46">
                                  <property role="TrG5h" value="pattern" />
                                  <node concept="3uibUv" id="13N5a7z1D6_" role="1tU5fm">
                                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="13N5a7z1D6A" role="3clF47">
                                  <node concept="3clFbF" id="13N5a7z1D6B" role="3cqZAp">
                                    <node concept="2OqwBi" id="13N5a7z1D6C" role="3clFbG">
                                      <node concept="2GrUjf" id="13N5a7z1D7b" role="2Oq$k0">
                                        <ref role="2Gs0qQ" node="13N5a7z1D7a" resolve="action" />
                                      </node>
                                      <node concept="liA8E" id="13N5a7z1D6E" role="2OqNvi">
                                        <ref role="37wK5l" to="3bo0:13N5a7yAs_h" resolve="getMatchingText" />
                                        <node concept="37vLTw" id="5jb5jNC5SI$" role="37wK5m">
                                          <ref role="3cqZAo" node="13N5a7z1D6$" resolve="pattern" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFb_" id="13N5a7z1D6F" role="jymVt">
                                <property role="TrG5h" value="getDescriptionText" />
                                <node concept="3Tm1VV" id="13N5a7z1D6G" role="1B3o_S" />
                                <node concept="3uibUv" id="13N5a7z1D6H" role="3clF45">
                                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                </node>
                                <node concept="37vLTG" id="13N5a7z1D6I" role="3clF46">
                                  <property role="TrG5h" value="pattern" />
                                  <node concept="3uibUv" id="13N5a7z1D6J" role="1tU5fm">
                                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="13N5a7z1D6K" role="3clF47">
                                  <node concept="3clFbF" id="13N5a7z1D6L" role="3cqZAp">
                                    <node concept="2OqwBi" id="13N5a7z1D6M" role="3clFbG">
                                      <node concept="2GrUjf" id="13N5a7z1D7c" role="2Oq$k0">
                                        <ref role="2Gs0qQ" node="13N5a7z1D7a" resolve="action" />
                                      </node>
                                      <node concept="liA8E" id="13N5a7z1D6O" role="2OqNvi">
                                        <ref role="37wK5l" to="3bo0:13N5a7yAsBc" resolve="getDescriptionText" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFb_" id="13N5a7z1D6P" role="jymVt">
                                <property role="TrG5h" value="doSubstitute" />
                                <node concept="3Tmbuc" id="13N5a7z1D6Q" role="1B3o_S" />
                                <node concept="3uibUv" id="13N5a7z1D6R" role="3clF45">
                                  <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                </node>
                                <node concept="37vLTG" id="13N5a7z1D6S" role="3clF46">
                                  <property role="TrG5h" value="editorContext" />
                                  <node concept="3uibUv" id="13N5a7z1D6T" role="1tU5fm">
                                    <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                                  </node>
                                  <node concept="2AHcQZ" id="13N5a7z1D6U" role="2AJF6D">
                                    <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                                  </node>
                                </node>
                                <node concept="37vLTG" id="13N5a7z1D6V" role="3clF46">
                                  <property role="TrG5h" value="pattern" />
                                  <node concept="3uibUv" id="13N5a7z1D6W" role="1tU5fm">
                                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="13N5a7z1D6X" role="3clF47">
                                  <node concept="3clFbF" id="13N5a7z1D6Y" role="3cqZAp">
                                    <node concept="2OqwBi" id="13N5a7z1D6Z" role="3clFbG">
                                      <node concept="2GrUjf" id="13N5a7z1D7d" role="2Oq$k0">
                                        <ref role="2Gs0qQ" node="13N5a7z1D7a" resolve="action" />
                                      </node>
                                      <node concept="liA8E" id="13N5a7z1D71" role="2OqNvi">
                                        <ref role="37wK5l" to="3bo0:13N5a7yAsDK" resolve="invoke" />
                                        <node concept="37vLTw" id="5jb5jNC8R9a" role="37wK5m">
                                          <ref role="3cqZAo" node="13N5a7z1D6V" resolve="pattern" />
                                        </node>
                                        <node concept="37vLTw" id="13N5a7z1D73" role="37wK5m">
                                          <ref role="3cqZAo" node="13N5a7yT5SL" resolve="myCompletionPositionX" />
                                        </node>
                                        <node concept="37vLTw" id="13N5a7z514d" role="37wK5m">
                                          <ref role="3cqZAo" node="13N5a7yTmQV" resolve="myCompletionPositionY" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3cpWs6" id="13N5a7z1D76" role="3cqZAp">
                                    <node concept="10Nm6u" id="13N5a7z1D77" role="3cqZAk" />
                                  </node>
                                </node>
                                <node concept="2AHcQZ" id="13N5a7z1D78" role="2AJF6D">
                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                </node>
                              </node>
                              <node concept="1rXfSq" id="13N5a7z1D79" role="37wK5m">
                                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getSNode():org.jetbrains.mps.openapi.model.SNode" resolve="getSNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="13N5a7z1D6l" role="2GsD0m">
                  <node concept="2GrUjf" id="17nGqbJn7J_" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="17nGqbJmYxi" resolve="provider" />
                  </node>
                  <node concept="liA8E" id="13N5a7z1D6n" role="2OqNvi">
                    <ref role="37wK5l" to="3bo0:17nGqbJm4jT" resolve="getActions" />
                  </node>
                </node>
                <node concept="2GrKxI" id="13N5a7z1D7a" role="2Gsz3X">
                  <property role="TrG5h" value="action" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="13N5a7z1$hD" role="3cqZAp">
            <node concept="37vLTw" id="13N5a7z1$ZZ" role="3cqZAk">
              <ref role="3cqZAo" node="13N5a7yYyix" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="13N5a7yXNyE" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="13N5a7yWPoa" role="1B3o_S" />
      <node concept="3uibUv" id="13N5a7yXGrC" role="1zkMxy">
        <ref role="3uigEE" to="6lvu:~AbstractNodeSubstituteInfo" resolve="AbstractNodeSubstituteInfo" />
      </node>
    </node>
    <node concept="2tJIrI" id="2i$17fOkOWy" role="jymVt" />
    <node concept="3clFb_" id="2i$17fOsBUV" role="jymVt">
      <property role="TrG5h" value="setX" />
      <node concept="3Tm1VV" id="2i$17fOsBUW" role="1B3o_S" />
      <node concept="3cqZAl" id="2i$17fOsBUY" role="3clF45" />
      <node concept="37vLTG" id="2i$17fOsBUZ" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="2i$17fOsBV0" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2i$17fOsBV1" role="3clF47">
        <node concept="3clFbF" id="2i$17fOsHQO" role="3cqZAp">
          <node concept="1rXfSq" id="2i$17fOsHQM" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Collection.requestRelayout():void" resolve="requestRelayout" />
          </node>
        </node>
        <node concept="3clFbF" id="2i$17fOsBV5" role="3cqZAp">
          <node concept="3nyPlj" id="2i$17fOsBV4" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Basic.setX(int):void" resolve="setX" />
            <node concept="37vLTw" id="2i$17fOsBV3" role="37wK5m">
              <ref role="3cqZAo" node="2i$17fOsBUZ" resolve="x" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2i$17fOsBV2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2i$17fOt6iS" role="jymVt" />
    <node concept="3clFb_" id="2i$17fOsJ0v" role="jymVt">
      <property role="TrG5h" value="setY" />
      <node concept="3Tm1VV" id="2i$17fOsJ0w" role="1B3o_S" />
      <node concept="3cqZAl" id="2i$17fOsJ0x" role="3clF45" />
      <node concept="37vLTG" id="2i$17fOsJ0y" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="2i$17fOsJ0z" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2i$17fOsJ0$" role="3clF47">
        <node concept="3clFbF" id="2i$17fOsJ0_" role="3cqZAp">
          <node concept="1rXfSq" id="2i$17fOsJ0A" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Collection.requestRelayout():void" resolve="requestRelayout" />
          </node>
        </node>
        <node concept="3clFbF" id="2i$17fOsJ0B" role="3cqZAp">
          <node concept="3nyPlj" id="2i$17fOsJ0C" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Basic.setY(int):void" resolve="setY" />
            <node concept="37vLTw" id="2i$17fOsJ0D" role="37wK5m">
              <ref role="3cqZAo" node="2i$17fOsJ0y" resolve="y" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2i$17fOsJ0E" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2i$17fOtwvB" role="jymVt" />
    <node concept="3clFb_" id="2i$17fOtApX" role="jymVt">
      <property role="TrG5h" value="moveTo" />
      <node concept="3Tm1VV" id="2i$17fOtApY" role="1B3o_S" />
      <node concept="3cqZAl" id="2i$17fOtAq0" role="3clF45" />
      <node concept="37vLTG" id="2i$17fOtAq1" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="2i$17fOtAq2" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2i$17fOtAq3" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="2i$17fOtAq4" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="2i$17fOtAq5" role="3clF47">
        <node concept="3clFbF" id="2i$17fOtIRz" role="3cqZAp">
          <node concept="1rXfSq" id="2i$17fOtIRx" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Collection.requestRelayout():void" resolve="requestRelayout" />
          </node>
        </node>
        <node concept="3clFbF" id="2i$17fOtAqa" role="3cqZAp">
          <node concept="3nyPlj" id="2i$17fOtAq9" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Collection.moveTo(int,int):void" resolve="moveTo" />
            <node concept="37vLTw" id="2i$17fOtAq7" role="37wK5m">
              <ref role="3cqZAo" node="2i$17fOtAq1" resolve="x" />
            </node>
            <node concept="37vLTw" id="2i$17fOtAq8" role="37wK5m">
              <ref role="3cqZAo" node="2i$17fOtAq3" resolve="y" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2i$17fOtAq6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2i$17fOt0x$" role="jymVt" />
    <node concept="3clFb_" id="2i$17fOkUwF" role="jymVt">
      <property role="TrG5h" value="relayoutImpl" />
      <node concept="3Tmbuc" id="2i$17fOkUwG" role="1B3o_S" />
      <node concept="3cqZAl" id="2i$17fOkUwI" role="3clF45" />
      <node concept="3clFbS" id="2i$17fOkUwJ" role="3clF47">
        <node concept="2Gpval" id="4y$DvIXJh9H" role="3cqZAp">
          <node concept="2GrKxI" id="4y$DvIXJh9J" role="2Gsz3X">
            <property role="TrG5h" value="layouter" />
          </node>
          <node concept="37vLTw" id="4y$DvIXJhAF" role="2GsD0m">
            <ref role="3cqZAo" node="17nGqbJh9Lj" resolve="myLayouters" />
          </node>
          <node concept="3clFbS" id="4y$DvIXJh9N" role="2LFqv$">
            <node concept="3clFbF" id="4y$DvIXJjBg" role="3cqZAp">
              <node concept="2OqwBi" id="4y$DvIXJjNe" role="3clFbG">
                <node concept="2GrUjf" id="4y$DvIXJjBf" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4y$DvIXJh9J" resolve="layouter" />
                </node>
                <node concept="liA8E" id="4y$DvIXJkeH" role="2OqNvi">
                  <ref role="37wK5l" to="3bo0:4y$DvIXItSd" resolve="relayout" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="4y$DvIYioOJ" role="3cqZAp">
          <node concept="2GrKxI" id="4y$DvIYioOL" role="2Gsz3X">
            <property role="TrG5h" value="layer" />
          </node>
          <node concept="37vLTw" id="4y$DvIYipJ_" role="2GsD0m">
            <ref role="3cqZAo" node="4y$DvIY5dwZ" resolve="myLayers" />
          </node>
          <node concept="3clFbS" id="4y$DvIYioOP" role="2LFqv$">
            <node concept="2Gpval" id="17nGqbJlFDM" role="3cqZAp">
              <node concept="2GrKxI" id="17nGqbJlFDN" role="2Gsz3X">
                <property role="TrG5h" value="provider" />
              </node>
              <node concept="2OqwBi" id="4y$DvIYisZl" role="2GsD0m">
                <node concept="2GrUjf" id="4y$DvIYisDI" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="4y$DvIYioOL" resolve="layer" />
                </node>
                <node concept="liA8E" id="4y$DvIYiOHd" role="2OqNvi">
                  <ref role="37wK5l" node="4y$DvIYdqDc" resolve="getCellProviders" />
                </node>
              </node>
              <node concept="3clFbS" id="17nGqbJlFDP" role="2LFqv$">
                <node concept="3clFbF" id="17nGqbJlFDQ" role="3cqZAp">
                  <node concept="2OqwBi" id="17nGqbJlFDR" role="3clFbG">
                    <node concept="2GrUjf" id="17nGqbJlFDS" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="17nGqbJlFDN" resolve="provider" />
                    </node>
                    <node concept="liA8E" id="17nGqbJlFDT" role="2OqNvi">
                      <ref role="37wK5l" to="3bo0:17nGqbJ_qgG" resolve="relayoutCells" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2i$17fOkUwK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1iOpS24ATXp" role="jymVt" />
    <node concept="3clFb_" id="1iOpS24BiHG" role="jymVt">
      <property role="TrG5h" value="fireRelayout" />
      <node concept="3Tm1VV" id="1iOpS24BiHI" role="1B3o_S" />
      <node concept="3cqZAl" id="1iOpS24BiHJ" role="3clF45" />
      <node concept="3clFbS" id="1iOpS24BiHS" role="3clF47">
        <node concept="3clFbF" id="1iOpS24FlUh" role="3cqZAp">
          <node concept="1rXfSq" id="1iOpS24FlUf" role="3clFbG">
            <ref role="37wK5l" to="g51k:~EditorCell_Collection.requestRelayout():void" resolve="requestRelayout" />
          </node>
        </node>
        <node concept="3clFbF" id="1iOpS24FVLW" role="3cqZAp">
          <node concept="1rXfSq" id="1iOpS24FVLU" role="3clFbG">
            <ref role="37wK5l" node="6tmlia_OITB" resolve="fireRepaint" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1iOpS24BiHT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6tmlia_OAVK" role="jymVt" />
    <node concept="3clFb_" id="6tmlia_OITB" role="jymVt">
      <property role="TrG5h" value="fireRepaint" />
      <node concept="3Tm1VV" id="6tmlia_OITD" role="1B3o_S" />
      <node concept="3cqZAl" id="6tmlia_OITE" role="3clF45" />
      <node concept="3clFbS" id="6tmlia_OITN" role="3clF47">
        <node concept="3clFbF" id="6tmliaAN4GV" role="3cqZAp">
          <node concept="2OqwBi" id="6tmliaANiVS" role="3clFbG">
            <node concept="2YIFZM" id="6tmliaANit8" role="2Oq$k0">
              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication():com.intellij.openapi.application.Application" resolve="getApplication" />
              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
            </node>
            <node concept="liA8E" id="6tmliaANjxd" role="2OqNvi">
              <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable):void" resolve="invokeLater" />
              <node concept="1bVj0M" id="6tmliaANp5$" role="37wK5m">
                <node concept="3clFbS" id="6tmliaANp5_" role="1bW5cS">
                  <node concept="3clFbF" id="6tmlia_R3au" role="3cqZAp">
                    <node concept="1rXfSq" id="6tmlia_R3as" role="3clFbG">
                      <ref role="37wK5l" to="g51k:~EditorCell_Basic.relayout():void" resolve="relayout" />
                    </node>
                  </node>
                  <node concept="3cpWs8" id="6tmlia_OUXA" role="3cqZAp">
                    <node concept="3cpWsn" id="6tmlia_OUXB" role="3cpWs9">
                      <property role="TrG5h" value="editorComponent" />
                      <node concept="3uibUv" id="6tmlia_P7Ij" role="1tU5fm">
                        <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                      </node>
                      <node concept="10QFUN" id="6tmlia_OY4t" role="33vP2m">
                        <node concept="3uibUv" id="6tmlia_P7ji" role="10QFUM">
                          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                        </node>
                        <node concept="1rXfSq" id="6tmlia_OUXC" role="10QFUP">
                          <ref role="37wK5l" to="g51k:~EditorCell_Basic.getEditorComponent():jetbrains.mps.openapi.editor.EditorComponent" resolve="getEditorComponent" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="6tmlia_OQPZ" role="3cqZAp">
                    <node concept="2OqwBi" id="6tmlia_OS4R" role="3clFbG">
                      <node concept="37vLTw" id="6tmlia_OUXD" role="2Oq$k0">
                        <ref role="3cqZAo" node="6tmlia_OUXB" resolve="editorComponent" />
                      </node>
                      <node concept="liA8E" id="6tmlia_P91i" role="2OqNvi">
                        <ref role="37wK5l" to="exr9:~EditorComponent.repaint(jetbrains.mps.openapi.editor.cells.EditorCell):void" resolve="repaint" />
                        <node concept="Xjq3P" id="6tmlia_P9SH" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6tmlia_OITO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRt54f" role="jymVt" />
    <node concept="3clFb_" id="38k27IRtcrh" role="jymVt">
      <property role="TrG5h" value="findNearestLeafOnLine" />
      <node concept="3Tm1VV" id="38k27IRtcri" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRtcrk" role="3clF45">
        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="37vLTG" id="38k27IRtcrl" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="38k27IRtcrm" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="38k27IRtcrn" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="38k27IRtcro" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="38k27IRtcrp" role="3clF46">
        <property role="TrG5h" value="condition" />
        <node concept="3uibUv" id="38k27IRtcrq" role="1tU5fm">
          <ref role="3uigEE" to="y49u:~Condition" resolve="Condition" />
          <node concept="3uibUv" id="38k27IRtcrr" role="11_B2D">
            <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="38k27IRtcrs" role="3clF47">
        <node concept="3clFbF" id="38k27IRtlqe" role="3cqZAp">
          <node concept="10Nm6u" id="38k27IRtlqd" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="38k27IRtcrt" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3fQLdr1Hq1N" role="jymVt" />
    <node concept="3clFb_" id="3fQLdr1HxYU" role="jymVt">
      <property role="TrG5h" value="findLeaf" />
      <node concept="3Tm1VV" id="3fQLdr1HxYV" role="1B3o_S" />
      <node concept="3uibUv" id="3fQLdr1HxYX" role="3clF45">
        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="37vLTG" id="3fQLdr1HxYY" role="3clF46">
        <property role="TrG5h" value="x" />
        <node concept="10Oyi0" id="3fQLdr1HxYZ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3fQLdr1HxZ0" role="3clF46">
        <property role="TrG5h" value="y" />
        <node concept="10Oyi0" id="3fQLdr1HxZ1" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="3fQLdr1HxZ2" role="3clF47">
        <node concept="3cpWs8" id="3fQLdr1HNdU" role="3cqZAp">
          <node concept="3cpWsn" id="3fQLdr1HNdV" role="3cpWs9">
            <property role="TrG5h" value="leaf" />
            <node concept="3uibUv" id="3fQLdr1HNdT" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="3nyPlj" id="3fQLdr1HNdW" role="33vP2m">
              <ref role="37wK5l" to="g51k:~EditorCell_Collection.findLeaf(int,int):jetbrains.mps.openapi.editor.cells.EditorCell" resolve="findLeaf" />
              <node concept="37vLTw" id="3fQLdr1HNdX" role="37wK5m">
                <ref role="3cqZAo" node="3fQLdr1HxYY" resolve="x" />
              </node>
              <node concept="37vLTw" id="3fQLdr1HNdY" role="37wK5m">
                <ref role="3cqZAo" node="3fQLdr1HxZ0" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3fQLdr1HQhn" role="3cqZAp">
          <node concept="3clFbS" id="3fQLdr1HQhp" role="3clFbx">
            <node concept="3cpWs6" id="3fQLdr1HR84" role="3cqZAp">
              <node concept="37vLTw" id="3fQLdr1HRfe" role="3cqZAk">
                <ref role="3cqZAo" node="3fQLdr1HNdV" resolve="leaf" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3fQLdr1HQSx" role="3clFbw">
            <node concept="10Nm6u" id="3fQLdr1HR0C" role="3uHU7w" />
            <node concept="37vLTw" id="3fQLdr1HQpQ" role="3uHU7B">
              <ref role="3cqZAo" node="3fQLdr1HNdV" resolve="leaf" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3fQLdr1Iv7S" role="3cqZAp">
          <node concept="3clFbS" id="3fQLdr1Iv84" role="3clFbx">
            <node concept="3cpWs6" id="3fQLdr1IAEG" role="3cqZAp">
              <node concept="Xjq3P" id="3fQLdr1IAM1" role="3cqZAk" />
            </node>
          </node>
          <node concept="2OqwBi" id="3fQLdr1IdsV" role="3clFbw">
            <node concept="1rXfSq" id="3fQLdr1I9zN" role="2Oq$k0">
              <ref role="37wK5l" node="17nGqbJpmB_" resolve="getBounds" />
            </node>
            <node concept="liA8E" id="3fQLdr1Ihwu" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Rectangle.contains(int,int):boolean" resolve="contains" />
              <node concept="37vLTw" id="3fQLdr1IhMf" role="37wK5m">
                <ref role="3cqZAo" node="3fQLdr1HxYY" resolve="x" />
              </node>
              <node concept="37vLTw" id="3fQLdr1IlmR" role="37wK5m">
                <ref role="3cqZAo" node="3fQLdr1HxZ0" resolve="y" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3fQLdr1IECZ" role="3cqZAp">
          <node concept="10Nm6u" id="3fQLdr1IEKv" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3fQLdr1HxZ3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7qPnRGFsfxN" role="jymVt" />
    <node concept="Wx3nA" id="7qPnRGFsj8e" role="jymVt">
      <property role="TrG5h" value="CELL_LAYOUT" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7qPnRGFsgA5" role="1B3o_S" />
      <node concept="2ShNRf" id="7qPnRGFskVb" role="33vP2m">
        <node concept="YeOm9" id="7qPnRGFsmhS" role="2ShVmc">
          <node concept="1Y3b0j" id="7qPnRGFsmhV" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="kcid:~AbstractCellLayout" resolve="AbstractCellLayout" />
            <ref role="37wK5l" to="kcid:~AbstractCellLayout.&lt;init&gt;()" resolve="AbstractCellLayout" />
            <node concept="3Tm1VV" id="7qPnRGFsmhW" role="1B3o_S" />
            <node concept="3clFb_" id="7qPnRGFsmi4" role="jymVt">
              <property role="TrG5h" value="doLayout" />
              <node concept="3Tm1VV" id="7qPnRGFsmi5" role="1B3o_S" />
              <node concept="3cqZAl" id="7qPnRGFsmi7" role="3clF45" />
              <node concept="37vLTG" id="7qPnRGFsmi8" role="3clF46">
                <property role="TrG5h" value="cell" />
                <node concept="3uibUv" id="7qPnRGFsmi9" role="1tU5fm">
                  <ref role="3uigEE" to="f4zo:~EditorCell_Collection" resolve="EditorCell_Collection" />
                </node>
              </node>
              <node concept="3clFbS" id="7qPnRGFsmia" role="3clF47">
                <node concept="3SKdUt" id="7qPnRGFsp53" role="3cqZAp">
                  <node concept="3SKdUq" id="7qPnRGFsp54" role="3SKWNk">
                    <property role="3SKdUp" value="do nothing" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="7qPnRGFsmic" role="jymVt">
              <property role="TrG5h" value="doLayoutText" />
              <node concept="3Tm1VV" id="7qPnRGFsmid" role="1B3o_S" />
              <node concept="3uibUv" id="7qPnRGFsmif" role="3clF45">
                <ref role="3uigEE" to="cj4x:~TextBuilder" resolve="TextBuilder" />
              </node>
              <node concept="37vLTG" id="7qPnRGFsmig" role="3clF46">
                <property role="TrG5h" value="cell" />
                <node concept="3uibUv" id="7qPnRGFsmih" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
                  <node concept="3uibUv" id="7qPnRGFsmii" role="11_B2D">
                    <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="7qPnRGFsmij" role="3clF47">
                <node concept="3SKdUt" id="7qPnRGFspbF" role="3cqZAp">
                  <node concept="3SKdUq" id="7qPnRGFspbG" role="3SKWNk">
                    <property role="3SKdUp" value="do nothing" />
                  </node>
                </node>
                <node concept="3clFbF" id="7qPnRGFspiz" role="3cqZAp">
                  <node concept="2ShNRf" id="7qPnRGFspiv" role="3clFbG">
                    <node concept="1pGfFk" id="7qPnRGFsq4k" role="2ShVmc">
                      <ref role="37wK5l" to="hhnx:~TextBuilderImpl.&lt;init&gt;()" resolve="TextBuilderImpl" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2tJIrI" id="38k27IRpYbr" role="jymVt" />
            <node concept="3clFb_" id="38k27IRpZUo" role="jymVt">
              <property role="TrG5h" value="requestRelayout" />
              <node concept="3Tm1VV" id="38k27IRpZUp" role="1B3o_S" />
              <node concept="3cqZAl" id="38k27IRpZUr" role="3clF45" />
              <node concept="37vLTG" id="38k27IRpZUs" role="3clF46">
                <property role="TrG5h" value="editorCells" />
                <node concept="3uibUv" id="38k27IRpZUt" role="1tU5fm">
                  <ref role="3uigEE" to="f4zo:~EditorCell_Collection" resolve="EditorCell_Collection" />
                </node>
              </node>
              <node concept="3clFbS" id="38k27IRpZUv" role="3clF47">
                <node concept="2Gpval" id="38k27IRq7zG" role="3cqZAp">
                  <node concept="2GrKxI" id="38k27IRq7zH" role="2Gsz3X">
                    <property role="TrG5h" value="cell" />
                  </node>
                  <node concept="3clFbS" id="38k27IRq7zJ" role="2LFqv$">
                    <node concept="3clFbF" id="38k27IRq9gV" role="3cqZAp">
                      <node concept="2OqwBi" id="38k27IRq9tn" role="3clFbG">
                        <node concept="2GrUjf" id="38k27IRq9gU" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="38k27IRq7zH" resolve="cell" />
                        </node>
                        <node concept="liA8E" id="38k27IRqgWL" role="2OqNvi">
                          <ref role="37wK5l" to="f4zo:~EditorCell.requestRelayout():void" resolve="requestRelayout" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="38k27IRq3Xc" role="2GsD0m">
                    <node concept="37vLTw" id="38k27IRq3z4" role="2Oq$k0">
                      <ref role="3cqZAo" node="38k27IRpZUs" resolve="editorCells" />
                    </node>
                    <node concept="liA8E" id="38k27IRq4nX" role="2OqNvi">
                      <ref role="37wK5l" to="f4zo:~EditorCell_Collection.getContentCells():java.lang.Iterable" resolve="getContentCells" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="38k27IRpZUw" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7qPnRGFsk9I" role="1tU5fm">
        <ref role="3uigEE" to="kcid:~CellLayout" resolve="CellLayout" />
      </node>
    </node>
    <node concept="3uibUv" id="38k27IQWhCV" role="1zkMxy">
      <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
    </node>
    <node concept="3uibUv" id="17nGqbJdAxY" role="EKbjA">
      <ref role="3uigEE" to="3bo0:17nGqbJcVKF" resolve="SceneEditor" />
    </node>
  </node>
  <node concept="312cEu" id="4y$DvIY3kA3">
    <property role="TrG5h" value="LayerImpl" />
    <node concept="2tJIrI" id="4y$DvIY3CMC" role="jymVt" />
    <node concept="312cEg" id="4y$DvIY3DtX" role="jymVt">
      <property role="TrG5h" value="myPriority" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4y$DvIY3Dr$" role="1B3o_S" />
      <node concept="10OMs4" id="4y$DvIY3DDa" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="4y$DvIY3CME" role="jymVt" />
    <node concept="312cEg" id="17nGqbJfvXH" role="jymVt">
      <property role="TrG5h" value="myClickListeners" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="17nGqbJfmJO" role="1B3o_S" />
      <node concept="2ShNRf" id="17nGqbJfEIK" role="33vP2m">
        <node concept="HV5vD" id="4y$DvIXXYkZ" role="2ShVmc">
          <ref role="HV5vE" to="33ny:~LinkedHashSet" resolve="LinkedHashSet" />
          <node concept="3uibUv" id="4y$DvIXY3oc" role="HU9BZ">
            <ref role="3uigEE" to="3bo0:17nGqbJcVRI" resolve="ClickEventListener" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4y$DvIXXNei" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="4y$DvIXXNek" role="11_B2D">
          <ref role="3uigEE" to="3bo0:17nGqbJcVRI" resolve="ClickEventListener" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="17nGqbJgudV" role="jymVt">
      <property role="TrG5h" value="myDragListeners" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="17nGqbJgkd0" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJgpke" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="17nGqbJgsrp" role="11_B2D">
          <ref role="3uigEE" to="3bo0:17nGqbJcVM0" resolve="DragEventListener" />
        </node>
      </node>
      <node concept="2ShNRf" id="17nGqbJgywx" role="33vP2m">
        <node concept="1pGfFk" id="17nGqbJg$XZ" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedHashSet.&lt;init&gt;()" resolve="LinkedHashSet" />
          <node concept="3uibUv" id="17nGqbJgElb" role="1pMfVU">
            <ref role="3uigEE" to="3bo0:17nGqbJcVM0" resolve="DragEventListener" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="17nGqbJhlI8" role="jymVt">
      <property role="TrG5h" value="myCellProviders" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="17nGqbJhlI9" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJhlIa" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="17nGqbJhs3x" role="11_B2D">
          <ref role="3uigEE" to="3bo0:17nGqbJd3sJ" resolve="EditorCellProvider" />
        </node>
      </node>
      <node concept="2ShNRf" id="17nGqbJhlIc" role="33vP2m">
        <node concept="1pGfFk" id="17nGqbJhlId" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedHashSet.&lt;init&gt;()" resolve="LinkedHashSet" />
          <node concept="3uibUv" id="17nGqbJhxbK" role="1pMfVU">
            <ref role="3uigEE" to="3bo0:17nGqbJd3sJ" resolve="EditorCellProvider" />
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEg" id="17nGqbJhz3R" role="jymVt">
      <property role="TrG5h" value="myPainters" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="17nGqbJhz3S" role="1B3o_S" />
      <node concept="3uibUv" id="17nGqbJhz3T" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="17nGqbJhDjM" role="11_B2D">
          <ref role="3uigEE" to="3bo0:17nGqbJcVWh" resolve="ScenePainter" />
        </node>
      </node>
      <node concept="2ShNRf" id="17nGqbJhz3V" role="33vP2m">
        <node concept="1pGfFk" id="17nGqbJhz3W" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~LinkedHashSet.&lt;init&gt;()" resolve="LinkedHashSet" />
          <node concept="3uibUv" id="17nGqbJhFek" role="1pMfVU">
            <ref role="3uigEE" to="3bo0:17nGqbJcVWh" resolve="ScenePainter" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIY3HbL" role="jymVt" />
    <node concept="3clFbW" id="4y$DvIY3HlL" role="jymVt">
      <node concept="3cqZAl" id="4y$DvIY3HlM" role="3clF45" />
      <node concept="3Tm1VV" id="4y$DvIY3HlN" role="1B3o_S" />
      <node concept="3clFbS" id="4y$DvIY3HlP" role="3clF47">
        <node concept="3clFbF" id="4y$DvIY3HlT" role="3cqZAp">
          <node concept="37vLTI" id="4y$DvIY3HlV" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIY3HRd" role="37vLTJ">
              <ref role="3cqZAo" node="4y$DvIY3DtX" resolve="myPriority" />
            </node>
            <node concept="37vLTw" id="4y$DvIY3Hm2" role="37vLTx">
              <ref role="3cqZAo" node="4y$DvIY3HlS" resolve="priority" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4y$DvIY3HlS" role="3clF46">
        <property role="TrG5h" value="priority" />
        <node concept="10OMs4" id="4y$DvIY3HlR" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIY3Hd1" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIY3DzB" role="jymVt">
      <property role="TrG5h" value="compareTo" />
      <node concept="3Tm1VV" id="4y$DvIY3DzC" role="1B3o_S" />
      <node concept="10Oyi0" id="4y$DvIY3DzE" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIY3DzF" role="3clF46">
        <property role="TrG5h" value="other" />
        <node concept="3uibUv" id="4y$DvIY3DzH" role="1tU5fm">
          <ref role="3uigEE" node="4y$DvIY3kA3" resolve="LayerImpl" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIY3DzI" role="3clF47">
        <node concept="3clFbF" id="4y$DvIY3DHW" role="3cqZAp">
          <node concept="2YIFZM" id="4y$DvIY3DIi" role="3clFbG">
            <ref role="37wK5l" to="wyt6:~Float.compare(float,float):int" resolve="compare" />
            <ref role="1Pybhc" to="wyt6:~Float" resolve="Float" />
            <node concept="37vLTw" id="4y$DvIY3If3" role="37wK5m">
              <ref role="3cqZAo" node="4y$DvIY3DtX" resolve="myPriority" />
            </node>
            <node concept="2OqwBi" id="4y$DvIY3G56" role="37wK5m">
              <node concept="37vLTw" id="4y$DvIY3FNv" role="2Oq$k0">
                <ref role="3cqZAo" node="4y$DvIY3DzF" resolve="other" />
              </node>
              <node concept="2OwXpG" id="4y$DvIY3GV5" role="2OqNvi">
                <ref role="2Oxat5" node="4y$DvIY3DtX" resolve="myPriority" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4y$DvIY3DzJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIY3IlY" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIY3Qd0" role="jymVt">
      <property role="TrG5h" value="addClickListener" />
      <node concept="3Tm1VV" id="4y$DvIY3Qd1" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIY3Qd2" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIY3Qd3" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="4y$DvIY3Qd4" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJcVRI" resolve="ClickEventListener" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIY3Qd5" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIY3Qd6" role="3clF47">
        <node concept="3clFbF" id="4y$DvIY3Qd7" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIY3Qd8" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIY3Qd9" role="2Oq$k0">
              <ref role="3cqZAo" node="17nGqbJfvXH" resolve="myClickListeners" />
            </node>
            <node concept="liA8E" id="4y$DvIY3Qda" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="4y$DvIY3Qdb" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIY3Qd3" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIY3T74" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIY3Qdd" role="jymVt">
      <property role="TrG5h" value="removeClickListener" />
      <node concept="3Tm1VV" id="4y$DvIY3Qde" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIY3Qdf" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIY3Qdg" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="4y$DvIY3Qdh" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJcVRI" resolve="ClickEventListener" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIY3Qdi" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIY3Qdj" role="3clF47">
        <node concept="3clFbF" id="4y$DvIY3Qdk" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIY3Qdl" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIY3Qdm" role="2Oq$k0">
              <ref role="3cqZAo" node="17nGqbJfvXH" resolve="myClickListeners" />
            </node>
            <node concept="liA8E" id="4y$DvIY3Qdn" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object):boolean" resolve="remove" />
              <node concept="37vLTw" id="4y$DvIY3Qdo" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIY3Qdg" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIY3VAy" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIY3Qdq" role="jymVt">
      <property role="TrG5h" value="addDragListener" />
      <node concept="3Tm1VV" id="4y$DvIY3Qdr" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIY3Qds" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIY3Qdt" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="4y$DvIY3Qdu" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJcVM0" resolve="DragEventListener" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIY3Qdv" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIY3Qdw" role="3clF47">
        <node concept="3clFbF" id="4y$DvIY3Qdx" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIY3Qdy" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIY3Qdz" role="2Oq$k0">
              <ref role="3cqZAo" node="17nGqbJgudV" resolve="myDragListeners" />
            </node>
            <node concept="liA8E" id="4y$DvIY3Qd$" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="4y$DvIY3Qd_" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIY3Qdt" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIY40k8" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIY3QdB" role="jymVt">
      <property role="TrG5h" value="removeDragListener" />
      <node concept="3Tm1VV" id="4y$DvIY3QdC" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIY3QdD" role="3clF45" />
      <node concept="37vLTG" id="4y$DvIY3QdE" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="4y$DvIY3QdF" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJcVM0" resolve="DragEventListener" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIY3QdG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4y$DvIY3QdH" role="3clF47">
        <node concept="3clFbF" id="4y$DvIY3QdI" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIY3QdJ" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIY3QdK" role="2Oq$k0">
              <ref role="3cqZAo" node="17nGqbJgudV" resolve="myDragListeners" />
            </node>
            <node concept="liA8E" id="4y$DvIY3QdL" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object):boolean" resolve="remove" />
              <node concept="37vLTw" id="4y$DvIY3QdM" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIY3QdE" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIY3Z23" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIY3Qf6" role="jymVt">
      <property role="TrG5h" value="addCellProvider" />
      <node concept="37vLTG" id="4y$DvIY3Qf7" role="3clF46">
        <property role="TrG5h" value="provider" />
        <node concept="3uibUv" id="4y$DvIY3Qf8" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJd3sJ" resolve="EditorCellProvider" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIY3Qf9" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIY3Qfa" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIY3Qfb" role="3clF45" />
      <node concept="3clFbS" id="4y$DvIY3Qfc" role="3clF47">
        <node concept="3clFbF" id="4y$DvIY3Qfd" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIY3Qfe" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIY3Qff" role="2Oq$k0">
              <ref role="3cqZAo" node="17nGqbJhlI8" resolve="myCellProviders" />
            </node>
            <node concept="liA8E" id="4y$DvIY3Qfg" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="4y$DvIY3Qfh" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIY3Qf7" resolve="provider" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIY4j2E" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIY3Qfj" role="jymVt">
      <property role="TrG5h" value="removeCellProvider" />
      <node concept="37vLTG" id="4y$DvIY3Qfk" role="3clF46">
        <property role="TrG5h" value="provider" />
        <node concept="3uibUv" id="4y$DvIY3Qfl" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJd3sJ" resolve="EditorCellProvider" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIY3Qfm" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIY3Qfn" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIY3Qfo" role="3clF45" />
      <node concept="3clFbS" id="4y$DvIY3Qfp" role="3clF47">
        <node concept="3clFbF" id="4y$DvIY3Qfq" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIY3Qfr" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIY3Qfs" role="2Oq$k0">
              <ref role="3cqZAo" node="17nGqbJhlI8" resolve="myCellProviders" />
            </node>
            <node concept="liA8E" id="4y$DvIY3Qft" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object):boolean" resolve="remove" />
              <node concept="37vLTw" id="4y$DvIY3Qfu" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIY3Qfk" resolve="provider" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIY4ly8" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIY3QfU" role="jymVt">
      <property role="TrG5h" value="addPainter" />
      <node concept="37vLTG" id="4y$DvIY3QfV" role="3clF46">
        <property role="TrG5h" value="painter" />
        <node concept="3uibUv" id="4y$DvIY3QfW" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJcVWh" resolve="ScenePainter" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIY3QfX" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIY3QfY" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIY3QfZ" role="3clF45" />
      <node concept="3clFbS" id="4y$DvIY3Qg0" role="3clF47">
        <node concept="3clFbF" id="4y$DvIY3Qg1" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIY3Qg2" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIY3Qg3" role="2Oq$k0">
              <ref role="3cqZAo" node="17nGqbJhz3R" resolve="myPainters" />
            </node>
            <node concept="liA8E" id="4y$DvIY3Qg4" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object):boolean" resolve="add" />
              <node concept="37vLTw" id="4y$DvIY3Qg5" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIY3QfV" resolve="painter" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIYaMN3" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIY3Qg7" role="jymVt">
      <property role="TrG5h" value="removePainter" />
      <node concept="37vLTG" id="4y$DvIY3Qg8" role="3clF46">
        <property role="TrG5h" value="painter" />
        <node concept="3uibUv" id="4y$DvIY3Qg9" role="1tU5fm">
          <ref role="3uigEE" to="3bo0:17nGqbJcVWh" resolve="ScenePainter" />
        </node>
        <node concept="2AHcQZ" id="4y$DvIY3Qga" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIY3Qgb" role="1B3o_S" />
      <node concept="3cqZAl" id="4y$DvIY3Qgc" role="3clF45" />
      <node concept="3clFbS" id="4y$DvIY3Qgd" role="3clF47">
        <node concept="3clFbF" id="4y$DvIY3Qge" role="3cqZAp">
          <node concept="2OqwBi" id="4y$DvIY3Qgf" role="3clFbG">
            <node concept="37vLTw" id="4y$DvIY3Qgg" role="2Oq$k0">
              <ref role="3cqZAo" node="17nGqbJhz3R" resolve="myPainters" />
            </node>
            <node concept="liA8E" id="4y$DvIY3Qgh" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Set.remove(java.lang.Object):boolean" resolve="remove" />
              <node concept="37vLTw" id="4y$DvIY3Qgi" role="37wK5m">
                <ref role="3cqZAo" node="4y$DvIY3Qg8" resolve="painter" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIYdasm" role="jymVt" />
    <node concept="3uibUv" id="4y$DvIY3DvI" role="EKbjA">
      <ref role="3uigEE" to="wyt6:~Comparable" resolve="Comparable" />
      <node concept="3uibUv" id="4y$DvIY3Dwl" role="11_B2D">
        <ref role="3uigEE" node="4y$DvIY3kA3" resolve="LayerImpl" />
      </node>
    </node>
    <node concept="3uibUv" id="4y$DvIYc5Vo" role="EKbjA">
      <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
    </node>
    <node concept="3clFb_" id="4y$DvIYdqCY" role="jymVt">
      <property role="TrG5h" value="getClickListeners" />
      <node concept="3uibUv" id="4y$DvIYdqCZ" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="4y$DvIYdqD0" role="11_B2D">
          <ref role="3uigEE" to="3bo0:17nGqbJcVRI" resolve="ClickEventListener" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIYdqD1" role="1B3o_S" />
      <node concept="3clFbS" id="4y$DvIYdqD2" role="3clF47">
        <node concept="3clFbF" id="4y$DvIYdqD3" role="3cqZAp">
          <node concept="37vLTw" id="4y$DvIYdqCX" role="3clFbG">
            <ref role="3cqZAo" node="17nGqbJfvXH" resolve="myClickListeners" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIYjFak" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIYdqD5" role="jymVt">
      <property role="TrG5h" value="getDragListeners" />
      <node concept="3uibUv" id="4y$DvIYdqD6" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="4y$DvIYdqD7" role="11_B2D">
          <ref role="3uigEE" to="3bo0:17nGqbJcVM0" resolve="DragEventListener" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIYdqD8" role="1B3o_S" />
      <node concept="3clFbS" id="4y$DvIYdqD9" role="3clF47">
        <node concept="3clFbF" id="4y$DvIYdqDa" role="3cqZAp">
          <node concept="37vLTw" id="4y$DvIYdqD4" role="3clFbG">
            <ref role="3cqZAo" node="17nGqbJgudV" resolve="myDragListeners" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIYjFUh" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIYdqDc" role="jymVt">
      <property role="TrG5h" value="getCellProviders" />
      <node concept="3uibUv" id="4y$DvIYdqDd" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="4y$DvIYdqDe" role="11_B2D">
          <ref role="3uigEE" to="3bo0:17nGqbJd3sJ" resolve="EditorCellProvider" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIYdqDf" role="1B3o_S" />
      <node concept="3clFbS" id="4y$DvIYdqDg" role="3clF47">
        <node concept="3clFbF" id="4y$DvIYdqDh" role="3cqZAp">
          <node concept="37vLTw" id="4y$DvIYdqDb" role="3clFbG">
            <ref role="3cqZAo" node="17nGqbJhlI8" resolve="myCellProviders" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4y$DvIYjGEf" role="jymVt" />
    <node concept="3clFb_" id="4y$DvIYdqDj" role="jymVt">
      <property role="TrG5h" value="getPainters" />
      <node concept="3uibUv" id="4y$DvIYdqDk" role="3clF45">
        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
        <node concept="3uibUv" id="4y$DvIYdqDl" role="11_B2D">
          <ref role="3uigEE" to="3bo0:17nGqbJcVWh" resolve="ScenePainter" />
        </node>
      </node>
      <node concept="3Tm1VV" id="4y$DvIYdqDm" role="1B3o_S" />
      <node concept="3clFbS" id="4y$DvIYdqDn" role="3clF47">
        <node concept="3clFbF" id="4y$DvIYdqDo" role="3cqZAp">
          <node concept="37vLTw" id="4y$DvIYdqDi" role="3clFbG">
            <ref role="3cqZAo" node="17nGqbJhz3R" resolve="myPainters" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

