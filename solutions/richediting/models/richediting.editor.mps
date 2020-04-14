<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:800eac96-bf9c-458b-84d9-4e8242e44fb3(richediting.editor)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="13" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots" version="0" />
  </languages>
  <imports>
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="rk1n" ref="r:296ba507-c250-4c4f-87ec-b3402bd9d933(common.iec61499.model.instances)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="ewej" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.font(JDK/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="93vd" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.navigationToolbar(MPS.IDEA/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="v5xl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.navigationToolbar.ui(MPS.IDEA/)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(mps.lang.iec61499.structure)" />
    <import index="dj18" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.psi(MPS.IDEA/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="dixw" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.pom(MPS.IDEA/)" />
    <import index="g1qu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.ui(MPS.IDEA/)" />
    <import index="de0p" ref="r:d7cab6e9-7043-4e10-b77e-569e7736ba5e(mps.ide.editor)" />
    <import index="5z5t" ref="r:cb5ca339-5ab1-4d45-82cc-3e94fa36eca9(richediting.plugin)" />
    <import index="78d5" ref="r:d018f155-a8e1-4632-87ac-0cbc89a1f1c2(richediting.lang.editor)" />
    <import index="mmaq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.jdom(MPS.Core/)" />
    <import index="rwq3" ref="r:c1a93deb-50a3-4728-ba16-8df97b360951(mps.iec61499.model.fbnetwork)" />
    <import index="tphl" ref="r:633df809-762d-4f16-bc5b-7387c85c4bd1(common.iec61499.model.fbnetwork)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="2xsi" ref="r:65444cdf-4c94-4902-99af-ca11b363595e(common.iec61499.model.interfacepart)" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs(MPS.IDEA/)" />
    <import index="go3h" ref="r:c95c1d38-95d5-42ab-aead-d308fc2b6566(mps.iec61499.model.interfacepart)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
    <import index="5ueo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.style(MPS.Editor/)" />
    <import index="ubo9" ref="r:15c6feaa-d38f-494f-a105-0b74d654dd08(richediting.adapters.fb)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="se19" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:org.jdom.output(MPS.IDEA/)" />
    <import index="kz9k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.navigation(MPS.Editor/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="9w4s" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util(MPS.IDEA/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="3s15" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.workbench(MPS.Workbench/)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="ddhc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide(MPS.IDEA/)" />
    <import index="9ywi" ref="r:b27d9d9b-1904-40b8-bdb1-cf26b125baf7(mps.ide.synteticLang.structure)" />
    <import index="rvgs" ref="r:22f3147c-cd8c-496f-a7fc-c31f351de000(scenes.controllers)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="4820515453818318288" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReferenceExpression" flags="ng" index="2pYGij">
        <reference id="4820515453818318891" name="hint" index="2pYH_C" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1076505808687" name="jetbrains.mps.baseLanguage.structure.WhileStatement" flags="nn" index="2$JKZl">
        <child id="1076505808688" name="condition" index="2$JKZa" />
      </concept>
      <concept id="1173175405605" name="jetbrains.mps.baseLanguage.structure.ArrayAccessExpression" flags="nn" index="AH0OO">
        <child id="1173175577737" name="index" index="AHEQo" />
        <child id="1173175590490" name="array" index="AHHXb" />
      </concept>
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
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1164991038168" name="jetbrains.mps.baseLanguage.structure.ThrowStatement" flags="nn" index="YS8fn">
        <child id="1164991057263" name="throwable" index="YScLw" />
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
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
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
      <concept id="1154542696413" name="jetbrains.mps.baseLanguage.structure.ArrayCreatorWithInitializer" flags="nn" index="3g6Rrh">
        <child id="1154542793668" name="componentType" index="3g7fb8" />
        <child id="1154542803372" name="initValue" index="3g7hyw" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
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
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1221737317277" name="jetbrains.mps.baseLanguage.structure.StaticInitializer" flags="lg" index="1Pe0a1">
        <child id="1221737317278" name="statementList" index="1Pe0a2" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="774bf8a0-62e5-41e1-af63-f4812e60e48b" name="jetbrains.mps.baseLanguage.checkedDots">
      <concept id="4079382982702596667" name="jetbrains.mps.baseLanguage.checkedDots.structure.CheckedDotExpression" flags="nn" index="2EnYce" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="6039268229364358244" name="jetbrains.mps.lang.smodel.structure.ExactConceptCase" flags="ng" index="1pnPoh">
        <child id="6039268229364358388" name="body" index="1pnPq1" />
        <child id="6039268229364358387" name="concept" index="1pnPq6" />
      </concept>
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
      </concept>
      <concept id="5944356402132808749" name="jetbrains.mps.lang.smodel.structure.ConceptSwitchStatement" flags="nn" index="1_3QMa">
        <child id="6039268229365417680" name="defaultBlock" index="1prKM_" />
        <child id="5944356402132808753" name="case" index="1_3QMm" />
        <child id="5944356402132808752" name="expression" index="1_3QMn" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="312cEu" id="1QSEqLhzVOM">
    <property role="TrG5h" value="NetworkInstanceHeaderComponentProvider" />
    <node concept="2tJIrI" id="1QSEqLhzVPK" role="jymVt" />
    <node concept="312cEg" id="1QSEqLh$8De" role="jymVt">
      <property role="TrG5h" value="myBaseNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1QSEqLh$82k" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLh$8wM" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLh$fSc" role="jymVt" />
    <node concept="312cEg" id="1QSEqLh$gJY" role="jymVt">
      <property role="TrG5h" value="myComponent" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1QSEqLh$gaE" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLh$kGf" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLh_y9k" role="jymVt" />
    <node concept="312cEg" id="1vJkp1TVOIG" role="jymVt">
      <property role="TrG5h" value="myInstance" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1vJkp1TVNXY" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtSBKPG" role="1tU5fm">
        <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
    </node>
    <node concept="2tJIrI" id="1vJkp1TVPEB" role="jymVt" />
    <node concept="312cEg" id="1vJkp1TWmno" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1vJkp1TWloF" role="1B3o_S" />
      <node concept="3uibUv" id="1vJkp1TWmmP" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLh$9Bi" role="jymVt" />
    <node concept="3clFbW" id="1QSEqLh$ahC" role="jymVt">
      <node concept="3cqZAl" id="1QSEqLh$ahD" role="3clF45" />
      <node concept="3Tm1VV" id="1QSEqLh$ahE" role="1B3o_S" />
      <node concept="3clFbS" id="1QSEqLh$ahG" role="3clF47">
        <node concept="3clFbF" id="1QSEqLh$ahK" role="3cqZAp">
          <node concept="37vLTI" id="1QSEqLh$ahM" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLh$ahT" role="37vLTx">
              <ref role="3cqZAo" node="1QSEqLh$ahJ" resolve="baseNode" />
            </node>
            <node concept="37vLTw" id="1QSEqLh$bHP" role="37vLTJ">
              <ref role="3cqZAo" node="1QSEqLh$8De" resolve="myBaseNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QSEqLh_F1P" role="3cqZAp">
          <node concept="37vLTI" id="1vJkp1TVRme" role="3clFbG">
            <node concept="37vLTw" id="1vJkp1TVRZk" role="37vLTx">
              <ref role="3cqZAo" node="1vJkp1TVMeJ" resolve="instance" />
            </node>
            <node concept="37vLTw" id="1vJkp1TVQAu" role="37vLTJ">
              <ref role="3cqZAo" node="1vJkp1TVOIG" resolve="myInstance" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1vJkp1TWnQX" role="3cqZAp">
          <node concept="37vLTI" id="1vJkp1TWoOT" role="3clFbG">
            <node concept="37vLTw" id="1vJkp1TWpvs" role="37vLTx">
              <ref role="3cqZAo" node="1vJkp1TWjra" resolve="project" />
            </node>
            <node concept="37vLTw" id="1vJkp1TWnQV" role="37vLTJ">
              <ref role="3cqZAo" node="1vJkp1TWmno" resolve="myProject" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1QSEqLh$gXc" role="3cqZAp" />
        <node concept="3clFbF" id="1QSEqLh$jA8" role="3cqZAp">
          <node concept="37vLTI" id="1QSEqLh$k7T" role="3clFbG">
            <node concept="2ShNRf" id="1QSEqLh$l3I" role="37vLTx">
              <node concept="1pGfFk" id="1QSEqLh$kXU" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="2ShNRf" id="1QSEqLh$liH" role="37wK5m">
                  <node concept="1pGfFk" id="1QSEqLh$TV6" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~FlowLayout.&lt;init&gt;()" resolve="FlowLayout" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1QSEqLh$jA6" role="37vLTJ">
              <ref role="3cqZAo" node="1QSEqLh$gJY" resolve="myComponent" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1QSEqLh$ZRF" role="3cqZAp">
          <node concept="3cpWsn" id="1QSEqLh$ZRG" role="3cpWs9">
            <property role="TrG5h" value="aliasLabel" />
            <node concept="3uibUv" id="1QSEqLh$ZNc" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
            </node>
            <node concept="2ShNRf" id="1QSEqLh$ZRH" role="33vP2m">
              <node concept="1pGfFk" id="1QSEqLh$ZRI" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                <node concept="1rXfSq" id="1QSEqLhB1Hm" role="37wK5m">
                  <ref role="37wK5l" node="1QSEqLhAYwV" resolve="chooseAliasFor" />
                  <node concept="37vLTw" id="1QSEqLhB2dc" role="37wK5m">
                    <ref role="3cqZAo" node="1QSEqLh$8De" resolve="myBaseNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1QSEqLh_lqD" role="3cqZAp">
          <node concept="3cpWsn" id="1QSEqLh_lqE" role="3cpWs9">
            <property role="TrG5h" value="defaultFont" />
            <node concept="3uibUv" id="1QSEqLh_llI" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
            </node>
            <node concept="2OqwBi" id="1QSEqLh_lqF" role="33vP2m">
              <node concept="2YIFZM" id="1QSEqLh_lqG" role="2Oq$k0">
                <ref role="1Pybhc" to="exr9:~EditorSettings" resolve="EditorSettings" />
                <ref role="37wK5l" to="exr9:~EditorSettings.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="1QSEqLh_lqH" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorSettings.getDefaultEditorFont()" resolve="getDefaultEditorFont" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1QSEqLh_n60" role="3cqZAp">
          <node concept="3cpWsn" id="1QSEqLh_n61" role="3cpWs9">
            <property role="TrG5h" value="attributes" />
            <node concept="2OqwBi" id="1QSEqLh_n62" role="33vP2m">
              <node concept="37vLTw" id="1QSEqLh_n63" role="2Oq$k0">
                <ref role="3cqZAo" node="1QSEqLh_lqE" resolve="defaultFont" />
              </node>
              <node concept="liA8E" id="1QSEqLh_n64" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Font.getAttributes()" resolve="getAttributes" />
              </node>
            </node>
            <node concept="3uibUv" id="1QSEqLh_rbl" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QSEqLh_nQ1" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLh_ot9" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLh_nPZ" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLh_n61" resolve="attributes" />
            </node>
            <node concept="liA8E" id="1QSEqLh_peG" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="10M0yZ" id="1QSEqLh_pIi" role="37wK5m">
                <ref role="3cqZAo" to="ewej:~TextAttribute.UNDERLINE" resolve="UNDERLINE" />
                <ref role="1PxDUh" to="ewej:~TextAttribute" resolve="TextAttribute" />
              </node>
              <node concept="10M0yZ" id="1QSEqLh_qnK" role="37wK5m">
                <ref role="3cqZAo" to="ewej:~TextAttribute.UNDERLINE_ON" resolve="UNDERLINE_ON" />
                <ref role="1PxDUh" to="ewej:~TextAttribute" resolve="TextAttribute" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QSEqLhDaiG" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLhDaiH" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLhDaiI" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLh_n61" resolve="attributes" />
            </node>
            <node concept="liA8E" id="1QSEqLhDaiJ" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="10M0yZ" id="1QSEqLhDb7_" role="37wK5m">
                <ref role="3cqZAo" to="ewej:~TextAttribute.WEIGHT" resolve="WEIGHT" />
                <ref role="1PxDUh" to="ewej:~TextAttribute" resolve="TextAttribute" />
              </node>
              <node concept="10M0yZ" id="1QSEqLhDbdR" role="37wK5m">
                <ref role="3cqZAo" to="ewej:~TextAttribute.WEIGHT_BOLD" resolve="WEIGHT_BOLD" />
                <ref role="1PxDUh" to="ewej:~TextAttribute" resolve="TextAttribute" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QSEqLh_rFc" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLh_rFd" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLh_rFe" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLh_n61" resolve="attributes" />
            </node>
            <node concept="liA8E" id="1QSEqLh_rFf" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="10M0yZ" id="1QSEqLh_u9Y" role="37wK5m">
                <ref role="3cqZAo" to="ewej:~TextAttribute.POSTURE" resolve="POSTURE" />
                <ref role="1PxDUh" to="ewej:~TextAttribute" resolve="TextAttribute" />
              </node>
              <node concept="10M0yZ" id="1QSEqLh_ugg" role="37wK5m">
                <ref role="1PxDUh" to="ewej:~TextAttribute" resolve="TextAttribute" />
                <ref role="3cqZAo" to="ewej:~TextAttribute.POSTURE_OBLIQUE" resolve="POSTURE_OBLIQUE" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QSEqLh_x2B" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLh_x2C" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLh_x2D" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLh_n61" resolve="attributes" />
            </node>
            <node concept="liA8E" id="1QSEqLh_x2E" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="10M0yZ" id="1QSEqLh_x2F" role="37wK5m">
                <ref role="3cqZAo" to="ewej:~TextAttribute.POSTURE" resolve="POSTURE" />
                <ref role="1PxDUh" to="ewej:~TextAttribute" resolve="TextAttribute" />
              </node>
              <node concept="10M0yZ" id="1QSEqLh_x2G" role="37wK5m">
                <ref role="3cqZAo" to="ewej:~TextAttribute.POSTURE_OBLIQUE" resolve="POSTURE_OBLIQUE" />
                <ref role="1PxDUh" to="ewej:~TextAttribute" resolve="TextAttribute" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1QSEqLh_gWG" role="3cqZAp">
          <node concept="3cpWsn" id="1QSEqLh_gWH" role="3cpWs9">
            <property role="TrG5h" value="font" />
            <node concept="3uibUv" id="1QSEqLh_gWe" role="1tU5fm">
              <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
            </node>
            <node concept="2OqwBi" id="1QSEqLh_uUc" role="33vP2m">
              <node concept="37vLTw" id="1QSEqLh_uFA" role="2Oq$k0">
                <ref role="3cqZAo" node="1QSEqLh_lqE" resolve="defaultFont" />
              </node>
              <node concept="liA8E" id="1QSEqLh_v7$" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Font.deriveFont(java.util.Map)" resolve="deriveFont" />
                <node concept="37vLTw" id="1QSEqLh_w4c" role="37wK5m">
                  <ref role="3cqZAo" node="1QSEqLh_n61" resolve="attributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QSEqLh_0Dq" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLh_1rQ" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLh_0Do" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLh$ZRG" resolve="aliasLabel" />
            </node>
            <node concept="liA8E" id="1QSEqLh_2mD" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setFont(java.awt.Font)" resolve="setFont" />
              <node concept="37vLTw" id="1QSEqLh_y2l" role="37wK5m">
                <ref role="3cqZAo" node="1QSEqLh_gWH" resolve="font" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QSEqLh_4Im" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLh_5nx" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLh_4Ik" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLh$ZRG" resolve="aliasLabel" />
            </node>
            <node concept="liA8E" id="1QSEqLh_88H" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setForeground(java.awt.Color)" resolve="setForeground" />
              <node concept="10M0yZ" id="1QSEqLhCn80" role="37wK5m">
                <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                <ref role="3cqZAo" to="exr9:~MPSColors.DARK_GREEN" resolve="DARK_GREEN" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QSEqLh$URY" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLh$Xgs" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLh$URW" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLh$gJY" resolve="myComponent" />
            </node>
            <node concept="liA8E" id="1QSEqLh$XYh" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
              <node concept="37vLTw" id="1QSEqLh$ZRJ" role="37wK5m">
                <ref role="3cqZAo" node="1QSEqLh$ZRG" resolve="aliasLabel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1vJkp1TVTU8" role="3cqZAp" />
        <node concept="3cpWs8" id="1vJkp1TYwLj" role="3cqZAp">
          <node concept="3cpWsn" id="1vJkp1TYwLk" role="3cpWs9">
            <property role="TrG5h" value="ideaProject" />
            <node concept="3uibUv" id="1vJkp1TXLzk" role="1tU5fm">
              <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="1vJkp1TYwLl" role="33vP2m">
              <node concept="1eOMI4" id="1vJkp1TYwLm" role="2Oq$k0">
                <node concept="10QFUN" id="1vJkp1TYwLn" role="1eOMHV">
                  <node concept="3uibUv" id="1vJkp1TYwLo" role="10QFUM">
                    <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                  </node>
                  <node concept="37vLTw" id="1vJkp1TYwLp" role="10QFUP">
                    <ref role="3cqZAo" node="1vJkp1TWjra" resolve="project" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1vJkp1TYwLq" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getProject()" resolve="getProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1vJkp1TWusN" role="3cqZAp">
          <node concept="3cpWsn" id="1vJkp1TWusO" role="3cpWs9">
            <property role="TrG5h" value="panel" />
            <node concept="3uibUv" id="1vJkp1TWusa" role="1tU5fm">
              <ref role="3uigEE" to="93vd:~NavBarPanel" resolve="NavBarPanel" />
            </node>
            <node concept="2ShNRf" id="1vJkp1TWusP" role="33vP2m">
              <node concept="YeOm9" id="1vJkp1TYyj4" role="2ShVmc">
                <node concept="1Y3b0j" id="1vJkp1TYyj7" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="93vd:~NavBarPanel.&lt;init&gt;(com.intellij.openapi.project.Project,boolean)" resolve="NavBarPanel" />
                  <ref role="1Y3XeK" to="93vd:~NavBarPanel" resolve="NavBarPanel" />
                  <node concept="3Tm1VV" id="1vJkp1TYyj8" role="1B3o_S" />
                  <node concept="37vLTw" id="1vJkp1TYwLr" role="37wK5m">
                    <ref role="3cqZAo" node="1vJkp1TYwLk" resolve="ideaProject" />
                  </node>
                  <node concept="3clFbT" id="1vJkp1TWusX" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="3clFb_" id="1vJkp1TYyDn" role="jymVt">
                    <property role="TrG5h" value="createModel" />
                    <node concept="3Tmbuc" id="1vJkp1TYyDo" role="1B3o_S" />
                    <node concept="3uibUv" id="1vJkp1TYyDq" role="3clF45">
                      <ref role="3uigEE" to="93vd:~NavBarModel" resolve="NavBarModel" />
                    </node>
                    <node concept="3clFbS" id="1vJkp1TYyDs" role="3clF47">
                      <node concept="3clFbF" id="1vJkp1TYAXf" role="3cqZAp">
                        <node concept="2ShNRf" id="1vJkp1TYAX9" role="3clFbG">
                          <node concept="1pGfFk" id="1vJkp1TYEpP" role="2ShVmc">
                            <ref role="37wK5l" node="1vJkp1TYvgi" resolve="NetworkInstanceNavBarModel" />
                            <node concept="37vLTw" id="1vJkp1TYGgR" role="37wK5m">
                              <ref role="3cqZAo" to="93vd:~NavBarPanel.myProject" resolve="myProject" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="1vJkp1TYyDt" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="2tJIrI" id="1vJkp1TZq9Y" role="jymVt" />
                  <node concept="3clFb_" id="1vJkp1TZqxS" role="jymVt">
                    <property role="TrG5h" value="getNavBarUI" />
                    <node concept="3Tm1VV" id="1vJkp1TZqxT" role="1B3o_S" />
                    <node concept="2AHcQZ" id="1vJkp1TZqxV" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                    </node>
                    <node concept="3uibUv" id="1vJkp1TZqxW" role="3clF45">
                      <ref role="3uigEE" to="v5xl:~NavBarUI" resolve="NavBarUI" />
                    </node>
                    <node concept="3clFbS" id="1vJkp1TZqxY" role="3clF47">
                      <node concept="3clFbF" id="1vJkp1TZt0K" role="3cqZAp">
                        <node concept="37vLTw" id="1vJkp1TZt0J" role="3clFbG">
                          <ref role="3cqZAo" node="1vJkp1TZ6YG" resolve="NavBarUI" />
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="1vJkp1TZqxZ" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3vwudsmZLC1" role="3cqZAp">
          <node concept="2OqwBi" id="3vwudsmZNlC" role="3clFbG">
            <node concept="37vLTw" id="3vwudsmZLBZ" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLh$gJY" resolve="myComponent" />
            </node>
            <node concept="liA8E" id="3vwudsmZOuQ" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.putClientProperty(java.lang.Object,java.lang.Object)" resolve="putClientProperty" />
              <node concept="Xl_RD" id="3vwudsmZP0p" role="37wK5m">
                <property role="Xl_RC" value="NavBarPanel" />
              </node>
              <node concept="37vLTw" id="3vwudsmZPK7" role="37wK5m">
                <ref role="3cqZAo" node="1vJkp1TWusO" resolve="panel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1vJkp1TXJs7" role="3cqZAp">
          <node concept="2OqwBi" id="1vJkp1TYMT2" role="3clFbG">
            <node concept="2OqwBi" id="1vJkp1TXL1H" role="2Oq$k0">
              <node concept="37vLTw" id="1vJkp1TXJs5" role="2Oq$k0">
                <ref role="3cqZAo" node="1vJkp1TWusO" resolve="panel" />
              </node>
              <node concept="liA8E" id="1vJkp1TXN60" role="2OqNvi">
                <ref role="37wK5l" to="93vd:~NavBarPanel.getModel()" resolve="getModel" />
              </node>
            </node>
            <node concept="liA8E" id="1vJkp1TYNUm" role="2OqNvi">
              <ref role="37wK5l" to="93vd:~NavBarModel.updateModel(java.lang.Object)" resolve="updateModel" />
              <node concept="37vLTw" id="1vJkp1TYPp_" role="37wK5m">
                <ref role="3cqZAo" node="1vJkp1TVMeJ" resolve="instance" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1vJkp1TWxmD" role="3cqZAp">
          <node concept="2OqwBi" id="1vJkp1TWycL" role="3clFbG">
            <node concept="37vLTw" id="1vJkp1TWxmA" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLh$gJY" resolve="myComponent" />
            </node>
            <node concept="liA8E" id="1vJkp1TWz_m" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
              <node concept="37vLTw" id="1vJkp1TWzJ2" role="37wK5m">
                <ref role="3cqZAo" node="1vJkp1TWusO" resolve="panel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLh$ahJ" role="3clF46">
        <property role="TrG5h" value="baseNode" />
        <node concept="3uibUv" id="1QSEqLh$ahI" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="1vJkp1TVMeJ" role="3clF46">
        <property role="TrG5h" value="instance" />
        <node concept="3uibUv" id="4kSwwtSBKvQ" role="1tU5fm">
          <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="1vJkp1TWjra" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1vJkp1TWka1" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLh_VRa" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLh_WCu" role="jymVt">
      <property role="TrG5h" value="getComponent" />
      <node concept="3uibUv" id="1QSEqLhA0Be" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3Tm1VV" id="1QSEqLh_WCw" role="1B3o_S" />
      <node concept="3clFbS" id="1QSEqLh_WCx" role="3clF47">
        <node concept="3clFbF" id="1QSEqLh_WCy" role="3cqZAp">
          <node concept="37vLTw" id="1QSEqLhA1B_" role="3clFbG">
            <ref role="3cqZAo" node="1QSEqLh$gJY" resolve="myComponent" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhAWYc" role="jymVt" />
    <node concept="2YIFZL" id="1QSEqLhAYwV" role="jymVt">
      <property role="TrG5h" value="chooseAliasFor" />
      <node concept="3clFbS" id="1QSEqLhAYwY" role="3clF47">
        <node concept="1_3QMa" id="1QSEqLhAEE5" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLhAEE6" role="1_3QMn">
            <node concept="37vLTw" id="1QSEqLhBj$v" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLhAZ_D" resolve="node" />
            </node>
            <node concept="2yIwOk" id="1QSEqLhAEE8" role="2OqNvi" />
          </node>
          <node concept="1pnPoh" id="1QSEqLhAEE9" role="1_3QMm">
            <node concept="3gn64h" id="1QSEqLhAEEa" role="1pnPq6">
              <ref role="3gnhBz" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
            </node>
            <node concept="3clFbS" id="1QSEqLhAEEb" role="1pnPq1">
              <node concept="3cpWs6" id="1QSEqLhBflo" role="3cqZAp">
                <node concept="Xl_RD" id="1QSEqLhAEEf" role="3cqZAk">
                  <property role="Xl_RC" value="Composite Function Block" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="1QSEqLhAEEg" role="1_3QMm">
            <node concept="3gn64h" id="1QSEqLhAEEh" role="1pnPq6">
              <ref role="3gnhBz" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
            </node>
            <node concept="3clFbS" id="1QSEqLhAEEi" role="1pnPq1">
              <node concept="3cpWs6" id="1QSEqLhBf_d" role="3cqZAp">
                <node concept="Xl_RD" id="1QSEqLhAEEl" role="3cqZAk">
                  <property role="Xl_RC" value="Subapplication" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="1QSEqLhAF66" role="1_3QMm">
            <node concept="3gn64h" id="1QSEqLhAF6R" role="1pnPq6">
              <ref role="3gnhBz" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
            </node>
            <node concept="3clFbS" id="1QSEqLhAF6a" role="1pnPq1">
              <node concept="3cpWs6" id="1QSEqLhBghP" role="3cqZAp">
                <node concept="Xl_RD" id="1QSEqLhAFPN" role="3cqZAk">
                  <property role="Xl_RC" value="Basic Function Block" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="1QSEqLhAFUN" role="1_3QMm">
            <node concept="3gn64h" id="1QSEqLhAFWR" role="1pnPq6">
              <ref role="3gnhBz" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
            </node>
            <node concept="3clFbS" id="1QSEqLhAFUP" role="1pnPq1">
              <node concept="3cpWs6" id="1QSEqLhBgrW" role="3cqZAp">
                <node concept="Xl_RD" id="1QSEqLhAFUS" role="3cqZAk">
                  <property role="Xl_RC" value="Adapter" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="1QSEqLhAFZI" role="1_3QMm">
            <node concept="3gn64h" id="1QSEqLhAG1T" role="1pnPq6">
              <ref role="3gnhBz" to="xiqq:23XkovVSBlc" resolve="ServiceInterfaceFBTypeDeclaration" />
            </node>
            <node concept="3clFbS" id="1QSEqLhAFZK" role="1pnPq1">
              <node concept="3cpWs6" id="1QSEqLhBh4W" role="3cqZAp">
                <node concept="Xl_RD" id="1QSEqLhAFZN" role="3cqZAk">
                  <property role="Xl_RC" value="Service Interface Function Block" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="1QSEqLhAG6p" role="1_3QMm">
            <node concept="3gn64h" id="1QSEqLhAG8F" role="1pnPq6">
              <ref role="3gnhBz" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
            </node>
            <node concept="3clFbS" id="1QSEqLhAG6r" role="1pnPq1">
              <node concept="3cpWs6" id="1QSEqLhBhff" role="3cqZAp">
                <node concept="Xl_RD" id="1QSEqLhAG6u" role="3cqZAk">
                  <property role="Xl_RC" value="Device" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="1QSEqLhAGbd" role="1_3QMm">
            <node concept="3gn64h" id="1QSEqLhAGhP" role="1pnPq6">
              <ref role="3gnhBz" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
            </node>
            <node concept="3clFbS" id="1QSEqLhAGbf" role="1pnPq1">
              <node concept="3cpWs6" id="1QSEqLhBhpA" role="3cqZAp">
                <node concept="Xl_RD" id="1QSEqLhAGbi" role="3cqZAk">
                  <property role="Xl_RC" value="Resource" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="1QSEqLhAGmT" role="1_3QMm">
            <node concept="3gn64h" id="1QSEqLhAGpp" role="1pnPq6">
              <ref role="3gnhBz" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
            </node>
            <node concept="3clFbS" id="1QSEqLhAGmV" role="1pnPq1">
              <node concept="3cpWs6" id="1QSEqLhBhW7" role="3cqZAp">
                <node concept="Xl_RD" id="1QSEqLhAGmY" role="3cqZAk">
                  <property role="Xl_RC" value="System" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1pnPoh" id="1QSEqLhBikE" role="1_3QMm">
            <node concept="3gn64h" id="1QSEqLhBixM" role="1pnPq6">
              <ref role="3gnhBz" to="xiqq:5s_pyghtjox" resolve="SegmentTypeDeclaration" />
            </node>
            <node concept="3clFbS" id="1QSEqLhBikG" role="1pnPq1">
              <node concept="3cpWs6" id="1QSEqLhBikH" role="3cqZAp">
                <node concept="Xl_RD" id="1QSEqLhBikI" role="3cqZAk">
                  <property role="Xl_RC" value="Segment" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1QSEqLhAEEn" role="1prKM_">
            <node concept="3cpWs6" id="1QSEqLhBj5G" role="3cqZAp">
              <node concept="Xl_RD" id="1QSEqLhAEEq" role="3cqZAk">
                <property role="Xl_RC" value="Library Element" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1QSEqLhAXVb" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhAZl9" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="1QSEqLhAZ_D" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1QSEqLhAZ_C" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1vJkp1TXODY" role="jymVt" />
    <node concept="Wx3nA" id="1vJkp1TZ6YG" role="jymVt">
      <property role="TrG5h" value="NavBarUI" />
      <node concept="3Tm6S6" id="1vJkp1TZ5IO" role="1B3o_S" />
      <node concept="3uibUv" id="1vJkp1TZ8tB" role="1tU5fm">
        <ref role="3uigEE" to="v5xl:~NavBarUI" resolve="NavBarUI" />
      </node>
      <node concept="2ShNRf" id="1vJkp1TZ8$u" role="33vP2m">
        <node concept="YeOm9" id="1vJkp1TZ9Lo" role="2ShVmc">
          <node concept="1Y3b0j" id="1vJkp1TZ9Lr" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="v5xl:~CommonNavBarUI.&lt;init&gt;()" resolve="CommonNavBarUI" />
            <ref role="1Y3XeK" to="v5xl:~CommonNavBarUI" resolve="CommonNavBarUI" />
            <node concept="3Tm1VV" id="1vJkp1TZ9Ls" role="1B3o_S" />
            <node concept="3clFb_" id="1vJkp1TZ9NL" role="jymVt">
              <property role="TrG5h" value="getElementFont" />
              <node concept="3Tm1VV" id="1vJkp1TZ9NM" role="1B3o_S" />
              <node concept="3uibUv" id="1vJkp1TZ9NO" role="3clF45">
                <ref role="3uigEE" to="z60i:~Font" resolve="Font" />
              </node>
              <node concept="37vLTG" id="1vJkp1TZ9NP" role="3clF46">
                <property role="TrG5h" value="navBarItem" />
                <node concept="3uibUv" id="1vJkp1TZ9NQ" role="1tU5fm">
                  <ref role="3uigEE" to="93vd:~NavBarItem" resolve="NavBarItem" />
                </node>
              </node>
              <node concept="3clFbS" id="1vJkp1TZ9NT" role="3clF47">
                <node concept="3cpWs8" id="1vJkp1TZfSF" role="3cqZAp">
                  <node concept="3cpWsn" id="1vJkp1TZfSG" role="3cpWs9">
                    <property role="TrG5h" value="object" />
                    <node concept="3uibUv" id="1vJkp1TZfNA" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                    </node>
                    <node concept="2OqwBi" id="1vJkp1TZfSH" role="33vP2m">
                      <node concept="37vLTw" id="1vJkp1TZfSI" role="2Oq$k0">
                        <ref role="3cqZAo" node="1vJkp1TZ9NP" resolve="navBarItem" />
                      </node>
                      <node concept="liA8E" id="1vJkp1TZfSJ" role="2OqNvi">
                        <ref role="37wK5l" to="93vd:~NavBarItem.getObject()" resolve="getObject" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1vJkp1TZers" role="3cqZAp">
                  <node concept="3clFbS" id="1vJkp1TZeru" role="3clFbx">
                    <node concept="3cpWs6" id="1vJkp1TZmw5" role="3cqZAp">
                      <node concept="2OqwBi" id="1vJkp1TZmwd" role="3cqZAk">
                        <node concept="2YIFZM" id="1vJkp1TZmwe" role="2Oq$k0">
                          <ref role="1Pybhc" to="exr9:~EditorSettings" resolve="EditorSettings" />
                          <ref role="37wK5l" to="exr9:~EditorSettings.getInstance()" resolve="getInstance" />
                        </node>
                        <node concept="liA8E" id="1vJkp1TZmwf" role="2OqNvi">
                          <ref role="37wK5l" to="exr9:~EditorSettings.getDefaultEditorFont()" resolve="getDefaultEditorFont" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="22lmx$" id="2SP6YJBWy_t" role="3clFbw">
                    <node concept="22lmx$" id="4gibKcMymiH" role="3uHU7B">
                      <node concept="2ZW3vV" id="1vJkp1TZiUr" role="3uHU7B">
                        <node concept="3uibUv" id="5sOEwwECehF" role="2ZW6by">
                          <ref role="3uigEE" node="2CiAywA8qPc" resolve="NetworkInstanceNavBarModel.Item" />
                        </node>
                        <node concept="37vLTw" id="1vJkp1TZiiL" role="2ZW6bz">
                          <ref role="3cqZAo" node="1vJkp1TZfSG" resolve="object" />
                        </node>
                      </node>
                      <node concept="2ZW3vV" id="4gibKcMymyD" role="3uHU7w">
                        <node concept="3uibUv" id="4gibKcMymFs" role="2ZW6by">
                          <ref role="3uigEE" node="4gibKcMwOFv" resolve="NetworkInstanceNavBarModel.SystemItem" />
                        </node>
                        <node concept="37vLTw" id="4gibKcMymyF" role="2ZW6bz">
                          <ref role="3cqZAo" node="1vJkp1TZfSG" resolve="object" />
                        </node>
                      </node>
                    </node>
                    <node concept="2ZW3vV" id="2SP6YJBWyOZ" role="3uHU7w">
                      <node concept="3uibUv" id="2SP6YJBWyY0" role="2ZW6by">
                        <ref role="3uigEE" node="2SP6YJBWpQs" resolve="NetworkInstanceNavBarModel.DeviceItem" />
                      </node>
                      <node concept="37vLTw" id="2SP6YJBWyP1" role="2ZW6bz">
                        <ref role="3cqZAo" node="1vJkp1TZfSG" resolve="object" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="1vJkp1TZn_x" role="3cqZAp">
                  <node concept="3nyPlj" id="1vJkp1TZo6_" role="3cqZAk">
                    <ref role="37wK5l" to="v5xl:~AbstractNavBarUI.getElementFont(com.intellij.ide.navigationToolbar.NavBarItem)" resolve="getElementFont" />
                    <node concept="37vLTw" id="1vJkp1TZoRT" role="37wK5m">
                      <ref role="3cqZAo" node="1vJkp1TZ9NP" resolve="navBarItem" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="1vJkp1TZ9NU" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="30N5LJac3Ox" role="jymVt" />
            <node concept="3clFb_" id="30N5LJac3Zw" role="jymVt">
              <property role="TrG5h" value="getElementPadding" />
              <node concept="3Tm1VV" id="30N5LJac3Zx" role="1B3o_S" />
              <node concept="3uibUv" id="30N5LJactRF" role="3clF45">
                <ref role="3uigEE" to="g1qu:~JBInsets" resolve="JBInsets" />
              </node>
              <node concept="3clFbS" id="30N5LJac3ZA" role="3clF47">
                <node concept="3clFbF" id="30N5LJac8$m" role="3cqZAp">
                  <node concept="2ShNRf" id="30N5LJac8$k" role="3clFbG">
                    <node concept="1pGfFk" id="30N5LJacrCK" role="2ShVmc">
                      <ref role="37wK5l" to="g1qu:~JBInsets.&lt;init&gt;(int,int,int,int)" resolve="JBInsets" />
                      <node concept="3cmrfG" id="30N5LJac_cH" role="37wK5m">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="3cmrfG" id="30N5LJacrU0" role="37wK5m">
                        <property role="3cmrfH" value="-4" />
                      </node>
                      <node concept="3cmrfG" id="30N5LJacUbE" role="37wK5m">
                        <property role="3cmrfH" value="1" />
                      </node>
                      <node concept="3cmrfG" id="30N5LJactH5" role="37wK5m">
                        <property role="3cmrfH" value="0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="30N5LJac3ZB" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="30N5LJacUcj" role="jymVt" />
            <node concept="3clFb_" id="30N5LJacUpS" role="jymVt">
              <property role="TrG5h" value="getWrapperPanelInsets" />
              <node concept="3Tm1VV" id="30N5LJacUpT" role="1B3o_S" />
              <node concept="3uibUv" id="30N5LJacUpV" role="3clF45">
                <ref role="3uigEE" to="z60i:~Insets" resolve="Insets" />
              </node>
              <node concept="37vLTG" id="30N5LJacUpW" role="3clF46">
                <property role="TrG5h" value="insets" />
                <node concept="3uibUv" id="30N5LJacUpX" role="1tU5fm">
                  <ref role="3uigEE" to="z60i:~Insets" resolve="Insets" />
                </node>
              </node>
              <node concept="3clFbS" id="30N5LJacUq0" role="3clF47">
                <node concept="3clFbF" id="30N5LJacWrr" role="3cqZAp">
                  <node concept="37vLTw" id="30N5LJacWrq" role="3clFbG">
                    <ref role="3cqZAo" node="30N5LJacUpW" resolve="insets" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="30N5LJacUq1" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1QSEqLhzVON" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1QSEqLhW8CO">
    <property role="TrG5h" value="NetworkInstanceEditorProjection" />
    <node concept="2tJIrI" id="1QSEqLhW8ZR" role="jymVt" />
    <node concept="312cEg" id="1QSEqLhW9hu" role="jymVt">
      <property role="TrG5h" value="myInstance" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1QSEqLhW95H" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtSBHb9" role="1tU5fm">
        <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
      <node concept="2AHcQZ" id="1_XvODPGzeB" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="1_XvODPGM0E" role="jymVt" />
    <node concept="312cEg" id="1vJkp1TWft9" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1vJkp1TWeQU" role="1B3o_S" />
      <node concept="3uibUv" id="1vJkp1TWfo$" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhWhSp" role="jymVt" />
    <node concept="Wx3nA" id="1QSEqLhY9nm" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="PERSISTENCE_KEY" />
      <node concept="3Tm1VV" id="1QSEqLhY9nj" role="1B3o_S" />
      <node concept="17QB3L" id="1QSEqLhY9nk" role="1tU5fm" />
      <node concept="Xl_RD" id="1QSEqLhY9nl" role="33vP2m">
        <property role="Xl_RC" value="instance-ref" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhW9ic" role="jymVt" />
    <node concept="3Tm1VV" id="1QSEqLhW8CP" role="1B3o_S" />
    <node concept="3uibUv" id="1QSEqLhW8ZC" role="1zkMxy">
      <ref role="3uigEE" to="de0p:7Y8B9wpmJ8m" resolve="SimpleHeaderedEditorProjection" />
    </node>
    <node concept="3clFbW" id="1QSEqLhW9A1" role="jymVt">
      <node concept="3cqZAl" id="1QSEqLhW9A2" role="3clF45" />
      <node concept="3Tm1VV" id="1QSEqLhW9A3" role="1B3o_S" />
      <node concept="3clFbS" id="1QSEqLhW9A5" role="3clF47">
        <node concept="XkiVB" id="1QSEqLhW9A7" role="3cqZAp">
          <ref role="37wK5l" to="de0p:7Y8B9wpmJqb" resolve="SimpleHeaderedEditorProjection" />
          <node concept="37vLTw" id="1QSEqLhW9Ab" role="37wK5m">
            <ref role="3cqZAo" node="1QSEqLhW9A8" resolve="node" />
          </node>
          <node concept="37vLTw" id="1QSEqLhW9Af" role="37wK5m">
            <ref role="3cqZAo" node="1QSEqLhW9Ac" resolve="controller" />
          </node>
          <node concept="37vLTw" id="1QSEqLhW9Aj" role="37wK5m">
            <ref role="3cqZAo" node="1QSEqLhW9Ag" resolve="name" />
          </node>
          <node concept="2ShNRf" id="7ii99HMnm5U" role="37wK5m">
            <node concept="3g6Rrh" id="7ii99HMnvrP" role="2ShVmc">
              <node concept="2pYGij" id="bRdTVHYKvN" role="3g7hyw">
                <ref role="2pYH_C" to="78d5:bRdTVHYMtn" resolve="network" />
              </node>
              <node concept="17QB3L" id="7ii99HMnv9P" role="3g7fb8" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QSEqLhW9Am" role="3cqZAp">
          <node concept="37vLTI" id="1QSEqLhW9Ao" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLhW9Av" role="37vLTx">
              <ref role="3cqZAo" node="1QSEqLhW9Al" resolve="instance" />
            </node>
            <node concept="37vLTw" id="1QSEqLhW9PP" role="37vLTJ">
              <ref role="3cqZAo" node="1QSEqLhW9hu" resolve="myInstance" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1vJkp1TWg8k" role="3cqZAp">
          <node concept="37vLTI" id="1vJkp1TWgBz" role="3clFbG">
            <node concept="37vLTw" id="1vJkp1TWgRN" role="37vLTx">
              <ref role="3cqZAo" node="1vJkp1TWeir" resolve="project" />
            </node>
            <node concept="37vLTw" id="1vJkp1TWg8i" role="37vLTJ">
              <ref role="3cqZAo" node="1vJkp1TWft9" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLhW9A8" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1QSEqLhW9Aa" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLhW9Ac" role="3clF46">
        <property role="TrG5h" value="controller" />
        <node concept="3uibUv" id="1QSEqLhW9Ae" role="1tU5fm">
          <ref role="3uigEE" to="de0p:7Y8B9wpj6Z6" resolve="HeaderedEditorProjectionController" />
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLhW9Ag" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="1QSEqLhW9Ai" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLhW9Al" role="3clF46">
        <property role="TrG5h" value="instance" />
        <node concept="3uibUv" id="4kSwwtSBHr$" role="1tU5fm">
          <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
        </node>
        <node concept="2AHcQZ" id="1_XvODPGMbG" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1vJkp1TWeir" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1vJkp1TWex0" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhW9DP" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhW9iF" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3uibUv" id="4kSwwtSBHxk" role="3clF45">
        <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
      <node concept="3Tm1VV" id="1QSEqLhW9iH" role="1B3o_S" />
      <node concept="3clFbS" id="1QSEqLhW9iI" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhW9iJ" role="3cqZAp">
          <node concept="37vLTw" id="1QSEqLhW9qR" role="3clFbG">
            <ref role="3cqZAo" node="1QSEqLhW9hu" resolve="myInstance" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1vJkp1TVClC" role="jymVt" />
    <node concept="3clFb_" id="1vJkp1TVCvu" role="jymVt">
      <property role="TrG5h" value="createHeaderComponent" />
      <node concept="3Tm1VV" id="1vJkp1TVCvv" role="1B3o_S" />
      <node concept="3uibUv" id="1vJkp1TVCvw" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2AHcQZ" id="1vJkp1TVCvx" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="2AHcQZ" id="1vJkp1TVCvD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="1vJkp1TVCvE" role="3clF47">
        <node concept="3clFbF" id="1vJkp1TWhAg" role="3cqZAp">
          <node concept="2OqwBi" id="1vJkp1TX7W0" role="3clFbG">
            <node concept="2ShNRf" id="1vJkp1TWhAa" role="2Oq$k0">
              <node concept="1pGfFk" id="1vJkp1TWiRD" role="2ShVmc">
                <ref role="37wK5l" node="1QSEqLh$ahC" resolve="NetworkInstanceHeaderComponentProvider" />
                <node concept="37vLTw" id="1vJkp1TX6f_" role="37wK5m">
                  <ref role="3cqZAo" to="de0p:1QSEqLhAhx5" resolve="myNode" />
                </node>
                <node concept="37vLTw" id="1vJkp1TX6YC" role="37wK5m">
                  <ref role="3cqZAo" node="1QSEqLhW9hu" resolve="myInstance" />
                </node>
                <node concept="37vLTw" id="1vJkp1TX7J1" role="37wK5m">
                  <ref role="3cqZAo" node="1vJkp1TWft9" resolve="myProject" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1vJkp1TX8dx" role="2OqNvi">
              <ref role="37wK5l" node="1QSEqLh_WCu" resolve="getComponent" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhWg$5" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhWgDH" role="jymVt">
      <property role="TrG5h" value="getData" />
      <node concept="3Tm1VV" id="1QSEqLhWgDI" role="1B3o_S" />
      <node concept="2AHcQZ" id="1QSEqLhWgDJ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="1QSEqLhWgDK" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="1QSEqLhWgDL" role="3clF46">
        <property role="TrG5h" value="dataId" />
        <node concept="3uibUv" id="1QSEqLhWgDM" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="1QSEqLhWgDN" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="2AHcQZ" id="1QSEqLhWgDO" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhWgDS" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="1QSEqLhWgDT" role="3clF47">
        <node concept="3clFbJ" id="1QSEqLhWgVa" role="3cqZAp">
          <node concept="3clFbS" id="1QSEqLhWgVc" role="3clFbx">
            <node concept="3cpWs6" id="1QSEqLhWk05" role="3cqZAp">
              <node concept="37vLTw" id="1QSEqLhWkug" role="3cqZAk">
                <ref role="3cqZAo" node="1QSEqLhW9hu" resolve="myInstance" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="1QSEqLhWiTN" role="3clFbw">
            <node concept="2OqwBi" id="1QSEqLhWjnp" role="3uHU7w">
              <node concept="10M0yZ" id="2CiAywAa1i7" role="2Oq$k0">
                <ref role="3cqZAo" node="1QSEqLhW3tU" resolve="NETWORK_INSTANCE" />
                <ref role="1PxDUh" node="3vwudsmYiwt" resolve="RichEditorDataKeys" />
              </node>
              <node concept="liA8E" id="1QSEqLhWjPu" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="37vLTw" id="1QSEqLhWit_" role="3uHU7B">
              <ref role="3cqZAo" node="1QSEqLhWgDL" resolve="dataId" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1QSEqLhWkIR" role="3cqZAp">
          <node concept="10Nm6u" id="1QSEqLhWkU$" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhWarp" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhWava" role="jymVt">
      <property role="TrG5h" value="saveState" />
      <node concept="3Tm1VV" id="1QSEqLhWavb" role="1B3o_S" />
      <node concept="3cqZAl" id="1QSEqLhWavc" role="3clF45" />
      <node concept="37vLTG" id="1QSEqLhWavd" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="3uibUv" id="1QSEqLhWave" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
        </node>
        <node concept="2AHcQZ" id="1QSEqLhWavf" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhWavh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="1QSEqLhWavi" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhXm6y" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLhXmzf" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLhXm6x" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLhWavd" resolve="element" />
            </node>
            <node concept="liA8E" id="1QSEqLhXn7K" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
              <node concept="37vLTw" id="1QSEqLhY9np" role="37wK5m">
                <ref role="3cqZAo" node="1QSEqLhY9nm" resolve="PERSISTENCE_KEY" />
              </node>
              <node concept="2OqwBi" id="1QSEqLhXOiP" role="37wK5m">
                <node concept="2YIFZM" id="1QSEqLhXNEE" role="2Oq$k0">
                  <ref role="37wK5l" to="rwq3:1QSEqLhXrjF" resolve="create" />
                  <ref role="1Pybhc" to="rwq3:1QSEqLhWl9W" resolve="MPSNetworkInstanceReference" />
                  <node concept="37vLTw" id="1QSEqLhXNME" role="37wK5m">
                    <ref role="3cqZAo" node="1QSEqLhW9hu" resolve="myInstance" />
                  </node>
                </node>
                <node concept="liA8E" id="1QSEqLhXOAa" role="2OqNvi">
                  <ref role="37wK5l" to="rwq3:1QSEqLhWZMH" resolve="serialize" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="1vJkp1TZS1d">
    <property role="TrG5h" value="NetworkInstanceNavBarExtension" />
    <node concept="2tJIrI" id="1vJkp1TZS3j" role="jymVt" />
    <node concept="3Tm1VV" id="1vJkp1TZS1e" role="1B3o_S" />
    <node concept="3clFb_" id="1vJkp1TZS3Z" role="jymVt">
      <property role="TrG5h" value="getPresentableText" />
      <node concept="3Tm1VV" id="1vJkp1TZS40" role="1B3o_S" />
      <node concept="2AHcQZ" id="1vJkp1TZS42" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="1vJkp1TZS43" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="1vJkp1TZS44" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="1vJkp1TZS45" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="1vJkp1TZS46" role="3clF47">
        <node concept="3clFbJ" id="1vJkp1TZUfy" role="3cqZAp">
          <node concept="3clFbS" id="1vJkp1TZUf$" role="3clFbx">
            <node concept="3cpWs8" id="1vJkp1TZWh8" role="3cqZAp">
              <node concept="3cpWsn" id="1vJkp1TZWh9" role="3cpWs9">
                <property role="TrG5h" value="instance" />
                <node concept="3uibUv" id="4kSwwtSCb$a" role="1tU5fm">
                  <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
                </node>
                <node concept="2OqwBi" id="2CiAywAc8tq" role="33vP2m">
                  <node concept="1eOMI4" id="1vJkp1TZWha" role="2Oq$k0">
                    <node concept="10QFUN" id="1vJkp1TZWhb" role="1eOMHV">
                      <node concept="3uibUv" id="2CiAywAc8kq" role="10QFUM">
                        <ref role="3uigEE" node="2CiAywA8qPc" resolve="NetworkInstanceNavBarModel.Item" />
                      </node>
                      <node concept="37vLTw" id="1vJkp1TZWhd" role="10QFUP">
                        <ref role="3cqZAo" node="1vJkp1TZS44" resolve="object" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="2CiAywAcyBm" role="2OqNvi">
                    <ref role="37wK5l" node="2CiAywAciuT" resolve="getInstance" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="30N5LJabfxV" role="3cqZAp">
              <node concept="3cpWsn" id="30N5LJabfxW" role="3cpWs9">
                <property role="TrG5h" value="name" />
                <node concept="3uibUv" id="30N5LJabfxX" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="10Nm6u" id="30N5LJabluT" role="33vP2m" />
              </node>
            </node>
            <node concept="3clFbF" id="30N5LJaben0" role="3cqZAp">
              <node concept="2OqwBi" id="30N5LJaben2" role="3clFbG">
                <node concept="2OqwBi" id="30N5LJaben3" role="2Oq$k0">
                  <node concept="2YIFZM" id="30N5LJaben4" role="2Oq$k0">
                    <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                    <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                  </node>
                  <node concept="liA8E" id="30N5LJaben5" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="liA8E" id="30N5LJaben6" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                  <node concept="1bVj0M" id="30N5LJaben7" role="37wK5m">
                    <node concept="3clFbS" id="30N5LJaben8" role="1bW5cS">
                      <node concept="3cpWs8" id="4kSwwtS$_1A" role="3cqZAp">
                        <node concept="3cpWsn" id="4kSwwtS$_1B" role="3cpWs9">
                          <property role="TrG5h" value="parent" />
                          <node concept="3uibUv" id="4kSwwtSCcMs" role="1tU5fm">
                            <ref role="3uigEE" to="rk1n:4kSwwtS$sUJ" resolve="Instance" />
                          </node>
                          <node concept="2OqwBi" id="4kSwwtSCd4E" role="33vP2m">
                            <node concept="37vLTw" id="4kSwwtSCcVL" role="2Oq$k0">
                              <ref role="3cqZAo" node="1vJkp1TZWh9" resolve="instance" />
                            </node>
                            <node concept="liA8E" id="4kSwwtSCd8j" role="2OqNvi">
                              <ref role="37wK5l" to="rk1n:4kSwwtS$sXF" resolve="getParent" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="30N5LJaaWoj" role="3cqZAp">
                        <node concept="3clFbS" id="30N5LJaaWol" role="3clFbx">
                          <node concept="3clFbF" id="4kSwwtS$wHE" role="3cqZAp">
                            <node concept="37vLTI" id="4kSwwtS$wHF" role="3clFbG">
                              <node concept="37vLTw" id="4kSwwtS$wHG" role="37vLTJ">
                                <ref role="3cqZAo" node="30N5LJabfxW" resolve="name" />
                              </node>
                              <node concept="2OqwBi" id="4kSwwtS$wHH" role="37vLTx">
                                <node concept="0kSF2" id="4kSwwtSCecU" role="2Oq$k0">
                                  <node concept="3uibUv" id="4kSwwtSCek5" role="0kSFW">
                                    <ref role="3uigEE" to="2xsi:31Fn7oZJ7qm" resolve="NamedDeclaration" />
                                  </node>
                                  <node concept="2OqwBi" id="4kSwwtS$wHK" role="0kSFX">
                                    <node concept="liA8E" id="4kSwwtS$wHM" role="2OqNvi">
                                      <ref role="37wK5l" to="rk1n:4kSwwtS$sVt" resolve="getDeclaration" />
                                    </node>
                                    <node concept="37vLTw" id="4kSwwtSCdzl" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1vJkp1TZWh9" resolve="instance" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="4kSwwtSCfId" role="2OqNvi">
                                  <ref role="37wK5l" to="2xsi:31Fn7oZJ7rr" resolve="getName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbC" id="30N5LJaaXaQ" role="3clFbw">
                          <node concept="10Nm6u" id="30N5LJaaXlM" role="3uHU7w" />
                          <node concept="37vLTw" id="30N5LJaaWPv" role="3uHU7B">
                            <ref role="3cqZAo" node="4kSwwtS$_1B" resolve="parent" />
                          </node>
                        </node>
                        <node concept="9aQIb" id="30N5LJabhIm" role="9aQIa">
                          <node concept="3clFbS" id="30N5LJabhIn" role="9aQI4">
                            <node concept="3clFbF" id="30N5LJabiaV" role="3cqZAp">
                              <node concept="37vLTI" id="30N5LJabiFB" role="3clFbG">
                                <node concept="2OqwBi" id="4kSwwtSCf7f" role="37vLTx">
                                  <node concept="2OqwBi" id="30N5LJabjBt" role="2Oq$k0">
                                    <node concept="0kSF2" id="4kSwwtSCe_T" role="2Oq$k0">
                                      <node concept="3uibUv" id="4kSwwtSCeGv" role="0kSFW">
                                        <ref role="3uigEE" to="rk1n:1QSEqLhV6fd" resolve="FunctionBlockInstance" />
                                      </node>
                                      <node concept="37vLTw" id="30N5LJabjf0" role="0kSFX">
                                        <ref role="3cqZAo" node="4kSwwtS$_1B" resolve="parent" />
                                      </node>
                                    </node>
                                    <node concept="liA8E" id="4kSwwtSCeTm" role="2OqNvi">
                                      <ref role="37wK5l" to="rk1n:4kSwwtS$wX6" resolve="getDeclaration" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="4kSwwtSCfvQ" role="2OqNvi">
                                    <ref role="37wK5l" to="2xsi:31Fn7oZJ7rr" resolve="getName" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="30N5LJabiaU" role="37vLTJ">
                                  <ref role="3cqZAo" node="30N5LJabfxW" resolve="name" />
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
            <node concept="3cpWs6" id="1vJkp1TZYii" role="3cqZAp">
              <node concept="37vLTw" id="30N5LJabl7N" role="3cqZAk">
                <ref role="3cqZAo" node="30N5LJabfxW" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="1vJkp1TZUHS" role="3clFbw">
            <node concept="3uibUv" id="2CiAywAc8hY" role="2ZW6by">
              <ref role="3uigEE" node="2CiAywA8qPc" resolve="NetworkInstanceNavBarModel.Item" />
            </node>
            <node concept="37vLTw" id="1vJkp1TZUqI" role="2ZW6bz">
              <ref role="3cqZAo" node="1vJkp1TZS44" resolve="object" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4gibKcMxOJv" role="3cqZAp">
          <node concept="3clFbS" id="4gibKcMxOJw" role="3clFbx">
            <node concept="3cpWs8" id="4gibKcMxOJx" role="3cqZAp">
              <node concept="3cpWsn" id="4gibKcMxOJy" role="3cpWs9">
                <property role="TrG5h" value="system" />
                <node concept="3uibUv" id="4gibKcMxPuM" role="1tU5fm">
                  <ref role="3uigEE" to="2xsi:2SU8oJdH$Ob" resolve="SystemDeclaration" />
                </node>
                <node concept="2OqwBi" id="4gibKcMxOJ$" role="33vP2m">
                  <node concept="1eOMI4" id="4gibKcMxOJ_" role="2Oq$k0">
                    <node concept="10QFUN" id="4gibKcMxOJA" role="1eOMHV">
                      <node concept="3uibUv" id="4gibKcMxP9b" role="10QFUM">
                        <ref role="3uigEE" node="4gibKcMwOFv" resolve="NetworkInstanceNavBarModel.SystemItem" />
                      </node>
                      <node concept="37vLTw" id="4gibKcMxOJC" role="10QFUP">
                        <ref role="3cqZAo" node="1vJkp1TZS44" resolve="object" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4gibKcMxPm$" role="2OqNvi">
                    <ref role="37wK5l" node="4gibKcMwOGF" resolve="getSystem" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4gibKcMxOJE" role="3cqZAp">
              <node concept="3cpWsn" id="4gibKcMxOJF" role="3cpWs9">
                <property role="TrG5h" value="name" />
                <node concept="3uibUv" id="4gibKcMxOJG" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="10Nm6u" id="4gibKcMxOJH" role="33vP2m" />
              </node>
            </node>
            <node concept="3clFbF" id="4gibKcMxOJI" role="3cqZAp">
              <node concept="2OqwBi" id="4gibKcMxOJJ" role="3clFbG">
                <node concept="2OqwBi" id="4gibKcMxOJK" role="2Oq$k0">
                  <node concept="2YIFZM" id="4gibKcMxOJL" role="2Oq$k0">
                    <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                    <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                  </node>
                  <node concept="liA8E" id="4gibKcMxOJM" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="liA8E" id="4gibKcMxOJN" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                  <node concept="1bVj0M" id="4gibKcMxOJO" role="37wK5m">
                    <node concept="3clFbS" id="4gibKcMxOJP" role="1bW5cS">
                      <node concept="3clFbF" id="4gibKcMxPDR" role="3cqZAp">
                        <node concept="37vLTI" id="4gibKcMxPWA" role="3clFbG">
                          <node concept="2OqwBi" id="4gibKcMxQBY" role="37vLTx">
                            <node concept="37vLTw" id="4gibKcMxQq3" role="2Oq$k0">
                              <ref role="3cqZAo" node="4gibKcMxOJy" resolve="system" />
                            </node>
                            <node concept="liA8E" id="4gibKcMxQRj" role="2OqNvi">
                              <ref role="37wK5l" to="2xsi:31Fn7oZJ7rr" resolve="getName" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="4gibKcMxPDP" role="37vLTJ">
                            <ref role="3cqZAo" node="4gibKcMxOJF" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="4gibKcMxOKj" role="3cqZAp">
              <node concept="37vLTw" id="4gibKcMxOKk" role="3cqZAk">
                <ref role="3cqZAo" node="4gibKcMxOJF" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="4gibKcMxOKl" role="3clFbw">
            <node concept="3uibUv" id="4gibKcMxP6p" role="2ZW6by">
              <ref role="3uigEE" node="4gibKcMwOFv" resolve="NetworkInstanceNavBarModel.SystemItem" />
            </node>
            <node concept="37vLTw" id="4gibKcMxOKn" role="2ZW6bz">
              <ref role="3cqZAo" node="1vJkp1TZS44" resolve="object" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2SP6YJBWzNH" role="3cqZAp">
          <node concept="3clFbS" id="2SP6YJBWzNI" role="3clFbx">
            <node concept="3cpWs8" id="2SP6YJBWzNJ" role="3cqZAp">
              <node concept="3cpWsn" id="2SP6YJBWzNK" role="3cpWs9">
                <property role="TrG5h" value="device" />
                <node concept="3uibUv" id="2SP6YJBW$uB" role="1tU5fm">
                  <ref role="3uigEE" to="2xsi:2SU8oJdHTR3" resolve="DeviceDeclaration" />
                </node>
                <node concept="2OqwBi" id="2SP6YJBWzNM" role="33vP2m">
                  <node concept="1eOMI4" id="2SP6YJBWzNN" role="2Oq$k0">
                    <node concept="10QFUN" id="2SP6YJBWzNO" role="1eOMHV">
                      <node concept="3uibUv" id="2SP6YJBW$ek" role="10QFUM">
                        <ref role="3uigEE" node="2SP6YJBWpQs" resolve="NetworkInstanceNavBarModel.DeviceItem" />
                      </node>
                      <node concept="37vLTw" id="2SP6YJBWzNQ" role="10QFUP">
                        <ref role="3cqZAo" node="1vJkp1TZS44" resolve="object" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="2SP6YJBW$nq" role="2OqNvi">
                    <ref role="37wK5l" node="2SP6YJBWpSD" resolve="getDevice" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2SP6YJBWzNS" role="3cqZAp">
              <node concept="3cpWsn" id="2SP6YJBWzNT" role="3cpWs9">
                <property role="TrG5h" value="name" />
                <node concept="3uibUv" id="2SP6YJBWzNU" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="10Nm6u" id="2SP6YJBWzNV" role="33vP2m" />
              </node>
            </node>
            <node concept="3clFbF" id="2SP6YJBWzNW" role="3cqZAp">
              <node concept="2OqwBi" id="2SP6YJBWzNX" role="3clFbG">
                <node concept="2OqwBi" id="2SP6YJBWzNY" role="2Oq$k0">
                  <node concept="2YIFZM" id="2SP6YJBWzNZ" role="2Oq$k0">
                    <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
                    <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                  </node>
                  <node concept="liA8E" id="2SP6YJBWzO0" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="liA8E" id="2SP6YJBWzO1" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                  <node concept="1bVj0M" id="2SP6YJBWzO2" role="37wK5m">
                    <node concept="3clFbS" id="2SP6YJBWzO3" role="1bW5cS">
                      <node concept="3clFbF" id="2SP6YJBWzO4" role="3cqZAp">
                        <node concept="37vLTI" id="2SP6YJBWzO5" role="3clFbG">
                          <node concept="2OqwBi" id="2SP6YJBWzO6" role="37vLTx">
                            <node concept="37vLTw" id="2SP6YJBWzO7" role="2Oq$k0">
                              <ref role="3cqZAo" node="2SP6YJBWzNK" resolve="device" />
                            </node>
                            <node concept="liA8E" id="2SP6YJBWzO8" role="2OqNvi">
                              <ref role="37wK5l" to="2xsi:31Fn7oZJ7rr" resolve="getName" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="2SP6YJBWzO9" role="37vLTJ">
                            <ref role="3cqZAo" node="2SP6YJBWzNT" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2SP6YJBWzOa" role="3cqZAp">
              <node concept="37vLTw" id="2SP6YJBWzOb" role="3cqZAk">
                <ref role="3cqZAo" node="2SP6YJBWzNT" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="2SP6YJBWzOc" role="3clFbw">
            <node concept="3uibUv" id="2SP6YJBW$bw" role="2ZW6by">
              <ref role="3uigEE" node="2SP6YJBWpQs" resolve="NetworkInstanceNavBarModel.DeviceItem" />
            </node>
            <node concept="37vLTw" id="2SP6YJBWzOe" role="2ZW6bz">
              <ref role="3cqZAo" node="1vJkp1TZS44" resolve="object" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1vJkp1TZYM6" role="3cqZAp">
          <node concept="10Nm6u" id="1vJkp1TZZdc" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1vJkp1TZS47" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1vJkp1U00DQ" role="jymVt" />
    <node concept="3clFb_" id="1vJkp1TZS4a" role="jymVt">
      <property role="TrG5h" value="getParent" />
      <node concept="3Tm1VV" id="1vJkp1TZS4b" role="1B3o_S" />
      <node concept="2AHcQZ" id="1vJkp1TZS4d" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="1vJkp1TZS4e" role="3clF45">
        <ref role="3uigEE" to="dj18:~PsiElement" resolve="PsiElement" />
      </node>
      <node concept="37vLTG" id="1vJkp1TZS4f" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="3uibUv" id="1vJkp1TZS4g" role="1tU5fm">
          <ref role="3uigEE" to="dj18:~PsiElement" resolve="PsiElement" />
        </node>
      </node>
      <node concept="3clFbS" id="1vJkp1TZS4h" role="3clF47">
        <node concept="3clFbF" id="1vJkp1TZS4k" role="3cqZAp">
          <node concept="10Nm6u" id="1vJkp1TZS4j" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1vJkp1TZS4i" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1vJkp1U00yH" role="jymVt" />
    <node concept="3clFb_" id="1vJkp1TZS4l" role="jymVt">
      <property role="TrG5h" value="adjustElement" />
      <node concept="3Tm1VV" id="1vJkp1TZS4m" role="1B3o_S" />
      <node concept="2AHcQZ" id="1vJkp1TZS4o" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="1vJkp1TZS4p" role="3clF45">
        <ref role="3uigEE" to="dj18:~PsiElement" resolve="PsiElement" />
      </node>
      <node concept="37vLTG" id="1vJkp1TZS4q" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="3uibUv" id="1vJkp1TZS4r" role="1tU5fm">
          <ref role="3uigEE" to="dj18:~PsiElement" resolve="PsiElement" />
        </node>
      </node>
      <node concept="3clFbS" id="1vJkp1TZS4s" role="3clF47">
        <node concept="3clFbF" id="1vJkp1TZS4v" role="3cqZAp">
          <node concept="10Nm6u" id="1vJkp1TZS4u" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1vJkp1TZS4t" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1vJkp1U00r_" role="jymVt" />
    <node concept="3clFb_" id="1vJkp1TZS4w" role="jymVt">
      <property role="TrG5h" value="additionalRoots" />
      <node concept="3Tm1VV" id="1vJkp1TZS4x" role="1B3o_S" />
      <node concept="2AHcQZ" id="1vJkp1TZS4z" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="1vJkp1TZS4$" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="1vJkp1TZS4_" role="11_B2D">
          <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
        </node>
      </node>
      <node concept="37vLTG" id="1vJkp1TZS4A" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1vJkp1TZS4B" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="1vJkp1TZS4C" role="3clF47">
        <node concept="3clFbF" id="1vJkp1TZSqV" role="3cqZAp">
          <node concept="2YIFZM" id="1vJkp1TZSsI" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="1vJkp1U00iG" role="3PaCim">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1vJkp1TZS4D" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2CiAywAc6rO" role="jymVt" />
    <node concept="3clFb_" id="2CiAywAc9cC" role="jymVt">
      <property role="TrG5h" value="processChildren" />
      <node concept="3Tm1VV" id="2CiAywAc9cD" role="1B3o_S" />
      <node concept="10P_77" id="2CiAywAc9cF" role="3clF45" />
      <node concept="37vLTG" id="2CiAywAc9cG" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="2CiAywAc9cH" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="2CiAywAc9cI" role="3clF46">
        <property role="TrG5h" value="rootElement" />
        <node concept="3uibUv" id="2CiAywAc9cJ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="37vLTG" id="2CiAywAc9cK" role="3clF46">
        <property role="TrG5h" value="processor" />
        <node concept="3uibUv" id="2CiAywAc9cL" role="1tU5fm">
          <ref role="3uigEE" to="9w4s:~Processor" resolve="Processor" />
          <node concept="3uibUv" id="2CiAywAc9cM" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="2CiAywAc9cN" role="3clF47">
        <node concept="3clFbJ" id="2CiAywAcadN" role="3cqZAp">
          <node concept="3clFbS" id="2CiAywAcadO" role="3clFbx">
            <node concept="3cpWs8" id="2CiAywAcmk3" role="3cqZAp">
              <node concept="3cpWsn" id="2CiAywAcmk4" role="3cpWs9">
                <property role="TrG5h" value="item" />
                <node concept="3uibUv" id="2CiAywAcl$a" role="1tU5fm">
                  <ref role="3uigEE" node="2CiAywA8qPc" resolve="NetworkInstanceNavBarModel.Item" />
                </node>
                <node concept="10QFUN" id="2CiAywAcmk6" role="33vP2m">
                  <node concept="3uibUv" id="2CiAywAcmk7" role="10QFUM">
                    <ref role="3uigEE" node="2CiAywA8qPc" resolve="NetworkInstanceNavBarModel.Item" />
                  </node>
                  <node concept="37vLTw" id="2CiAywAcmk8" role="10QFUP">
                    <ref role="3cqZAo" node="2CiAywAc9cG" resolve="object" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2CiAywAcadP" role="3cqZAp">
              <node concept="3cpWsn" id="2CiAywAcadQ" role="3cpWs9">
                <property role="TrG5h" value="instance" />
                <node concept="3uibUv" id="4kSwwtSCfQy" role="1tU5fm">
                  <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
                </node>
                <node concept="2OqwBi" id="2CiAywAcadS" role="33vP2m">
                  <node concept="37vLTw" id="2CiAywAcmk9" role="2Oq$k0">
                    <ref role="3cqZAo" node="2CiAywAcmk4" resolve="item" />
                  </node>
                  <node concept="liA8E" id="2CiAywAcltZ" role="2OqNvi">
                    <ref role="37wK5l" node="2CiAywAciuT" resolve="getInstance" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2CiAywAcvVr" role="3cqZAp">
              <node concept="3cpWsn" id="2CiAywAcvVs" role="3cpWs9">
                <property role="TrG5h" value="project" />
                <node concept="3uibUv" id="2CiAywAcvUU" role="1tU5fm">
                  <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                </node>
                <node concept="2OqwBi" id="2CiAywAcvVt" role="33vP2m">
                  <node concept="37vLTw" id="2CiAywAcvVu" role="2Oq$k0">
                    <ref role="3cqZAo" node="2CiAywAcmk4" resolve="item" />
                  </node>
                  <node concept="liA8E" id="2CiAywAcvVv" role="2OqNvi">
                    <ref role="37wK5l" node="2CiAywAckBO" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2CiAywAcb5e" role="3cqZAp" />
            <node concept="3clFbF" id="5sOEwwECuFX" role="3cqZAp">
              <node concept="2OqwBi" id="5sOEwwECvpi" role="3clFbG">
                <node concept="2OqwBi" id="5sOEwwECv2$" role="2Oq$k0">
                  <node concept="37vLTw" id="5sOEwwECuFV" role="2Oq$k0">
                    <ref role="3cqZAo" node="2CiAywAcvVs" resolve="project" />
                  </node>
                  <node concept="liA8E" id="5sOEwwECvku" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="liA8E" id="5sOEwwECvxL" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                  <node concept="1bVj0M" id="5sOEwwECvEm" role="37wK5m">
                    <node concept="3clFbS" id="5sOEwwECvEn" role="1bW5cS">
                      <node concept="2Gpval" id="2CiAywAcocU" role="3cqZAp">
                        <node concept="2GrKxI" id="2CiAywAcocW" role="2Gsz3X">
                          <property role="TrG5h" value="component" />
                        </node>
                        <node concept="2OqwBi" id="2CiAywAco_F" role="2GsD0m">
                          <node concept="2OqwBi" id="2CiAywAco_G" role="2Oq$k0">
                            <node concept="37vLTw" id="2CiAywAco_H" role="2Oq$k0">
                              <ref role="3cqZAo" node="2CiAywAcadQ" resolve="instance" />
                            </node>
                            <node concept="liA8E" id="4kSwwtSCg8F" role="2OqNvi">
                              <ref role="37wK5l" to="rk1n:4kSwwtS_7k8" resolve="getNetworkDeclaration" />
                            </node>
                          </node>
                          <node concept="liA8E" id="4kSwwtSCgn0" role="2OqNvi">
                            <ref role="37wK5l" to="tphl:1R4IoyQvZqY" resolve="getComponents" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2CiAywAcod0" role="2LFqv$">
                          <node concept="3clFbJ" id="2CiAywAcppa" role="3cqZAp">
                            <node concept="2ZW3vV" id="2CiAywAcpAx" role="3clFbw">
                              <node concept="3uibUv" id="2CiAywAcpMa" role="2ZW6by">
                                <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FunctionBlockDeclaration" />
                              </node>
                              <node concept="2GrUjf" id="2CiAywAcpt8" role="2ZW6bz">
                                <ref role="2Gs0qQ" node="2CiAywAcocW" resolve="component" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="2CiAywAcppc" role="3clFbx">
                              <node concept="3cpWs8" id="2CiAywAcq0A" role="3cqZAp">
                                <node concept="3cpWsn" id="2CiAywAcq0B" role="3cpWs9">
                                  <property role="TrG5h" value="child" />
                                  <node concept="3uibUv" id="2CiAywAcq0C" role="1tU5fm">
                                    <ref role="3uigEE" to="rk1n:1QSEqLhV6fd" resolve="FunctionBlockInstance" />
                                  </node>
                                  <node concept="2OqwBi" id="2CiAywAcr1r" role="33vP2m">
                                    <node concept="37vLTw" id="2CiAywAcqNw" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2CiAywAcadQ" resolve="instance" />
                                    </node>
                                    <node concept="liA8E" id="2CiAywAcr8_" role="2OqNvi">
                                      <ref role="37wK5l" to="rk1n:1QSEqLhV6lF" resolve="getChild" />
                                      <node concept="10QFUN" id="2CiAywAcrmq" role="37wK5m">
                                        <node concept="3uibUv" id="2CiAywAcrEa" role="10QFUM">
                                          <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FunctionBlockDeclaration" />
                                        </node>
                                        <node concept="2GrUjf" id="2CiAywAcrgK" role="10QFUP">
                                          <ref role="2Gs0qQ" node="2CiAywAcocW" resolve="component" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="2CiAywAcsSx" role="3cqZAp">
                                <node concept="3clFbS" id="2CiAywAcsSz" role="3clFbx">
                                  <node concept="3clFbF" id="2CiAywActry" role="3cqZAp">
                                    <node concept="2OqwBi" id="2CiAywActLe" role="3clFbG">
                                      <node concept="37vLTw" id="2CiAywActrw" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2CiAywAc9cK" resolve="processor" />
                                      </node>
                                      <node concept="liA8E" id="2CiAywAcu26" role="2OqNvi">
                                        <ref role="37wK5l" to="9w4s:~Processor.process(java.lang.Object)" resolve="process" />
                                        <node concept="2ShNRf" id="2CiAywAcu6T" role="37wK5m">
                                          <node concept="1pGfFk" id="2CiAywAcvzi" role="2ShVmc">
                                            <ref role="37wK5l" node="2CiAywA8u11" resolve="NetworkInstanceNavBarModel.Item" />
                                            <node concept="2OqwBi" id="4kSwwtSCgNg" role="37wK5m">
                                              <node concept="37vLTw" id="2CiAywAcwr0" role="2Oq$k0">
                                                <ref role="3cqZAo" node="2CiAywAcq0B" resolve="child" />
                                              </node>
                                              <node concept="liA8E" id="4kSwwtSCiLw" role="2OqNvi">
                                                <ref role="37wK5l" to="rk1n:1QSEqLhV6ih" resolve="getContainedNetwork" />
                                              </node>
                                            </node>
                                            <node concept="37vLTw" id="2CiAywAcvVw" role="37wK5m">
                                              <ref role="3cqZAo" node="2CiAywAcvVs" resolve="project" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="1Wc70l" id="4kSwwtSCh9m" role="3clFbw">
                                  <node concept="3y3z36" id="4kSwwtSCif1" role="3uHU7w">
                                    <node concept="10Nm6u" id="4kSwwtSCiw0" role="3uHU7w" />
                                    <node concept="2OqwBi" id="4kSwwtSChCP" role="3uHU7B">
                                      <node concept="37vLTw" id="4kSwwtSChko" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2CiAywAcq0B" resolve="child" />
                                      </node>
                                      <node concept="liA8E" id="4kSwwtSCi1S" role="2OqNvi">
                                        <ref role="37wK5l" to="rk1n:1QSEqLhV6ih" resolve="getContainedNetwork" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3y3z36" id="2CiAywActcr" role="3uHU7B">
                                    <node concept="37vLTw" id="2CiAywAct2Z" role="3uHU7B">
                                      <ref role="3cqZAo" node="2CiAywAcq0B" resolve="child" />
                                    </node>
                                    <node concept="10Nm6u" id="2CiAywActjf" role="3uHU7w" />
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
          <node concept="2ZW3vV" id="2CiAywAcaeD" role="3clFbw">
            <node concept="3uibUv" id="2CiAywAcaeE" role="2ZW6by">
              <ref role="3uigEE" node="2CiAywA8qPc" resolve="NetworkInstanceNavBarModel.Item" />
            </node>
            <node concept="37vLTw" id="2CiAywAcaeF" role="2ZW6bz">
              <ref role="3cqZAo" node="2CiAywAc9cG" resolve="object" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4gibKcMyaiW" role="3cqZAp">
          <node concept="3clFbS" id="4gibKcMyaiX" role="3clFbx">
            <node concept="3cpWs8" id="4gibKcMybtE" role="3cqZAp">
              <node concept="3cpWsn" id="4gibKcMybtF" role="3cpWs9">
                <property role="TrG5h" value="systemItem" />
                <node concept="3uibUv" id="4gibKcMybj7" role="1tU5fm">
                  <ref role="3uigEE" node="4gibKcMwOFv" resolve="NetworkInstanceNavBarModel.SystemItem" />
                </node>
                <node concept="1eOMI4" id="4gibKcMybtG" role="33vP2m">
                  <node concept="10QFUN" id="4gibKcMybtH" role="1eOMHV">
                    <node concept="3uibUv" id="4gibKcMybtI" role="10QFUM">
                      <ref role="3uigEE" node="4gibKcMwOFv" resolve="NetworkInstanceNavBarModel.SystemItem" />
                    </node>
                    <node concept="37vLTw" id="4gibKcMybtJ" role="10QFUP">
                      <ref role="3cqZAo" node="2CiAywAc9cG" resolve="object" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4gibKcMyaYC" role="3cqZAp">
              <node concept="3cpWsn" id="4gibKcMyaYD" role="3cpWs9">
                <property role="TrG5h" value="system" />
                <node concept="3uibUv" id="4gibKcMyaYE" role="1tU5fm">
                  <ref role="3uigEE" to="2xsi:2SU8oJdH$Ob" resolve="SystemDeclaration" />
                </node>
                <node concept="2OqwBi" id="4gibKcMyaYF" role="33vP2m">
                  <node concept="37vLTw" id="4gibKcMybtK" role="2Oq$k0">
                    <ref role="3cqZAo" node="4gibKcMybtF" resolve="systemItem" />
                  </node>
                  <node concept="liA8E" id="4gibKcMyaYK" role="2OqNvi">
                    <ref role="37wK5l" node="4gibKcMwOGF" resolve="getSystem" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4gibKcMyaja" role="3cqZAp">
              <node concept="3cpWsn" id="4gibKcMyajb" role="3cpWs9">
                <property role="TrG5h" value="project" />
                <node concept="3uibUv" id="4gibKcMyajc" role="1tU5fm">
                  <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                </node>
                <node concept="2OqwBi" id="4gibKcMyajd" role="33vP2m">
                  <node concept="37vLTw" id="4gibKcMybMz" role="2Oq$k0">
                    <ref role="3cqZAo" node="4gibKcMybtF" resolve="systemItem" />
                  </node>
                  <node concept="liA8E" id="4gibKcMyajf" role="2OqNvi">
                    <ref role="37wK5l" node="4gibKcMwOGL" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4gibKcMyc1U" role="3cqZAp" />
            <node concept="3clFbF" id="4gibKcMyajh" role="3cqZAp">
              <node concept="2OqwBi" id="4gibKcMyaji" role="3clFbG">
                <node concept="2OqwBi" id="4gibKcMyajj" role="2Oq$k0">
                  <node concept="37vLTw" id="4gibKcMyajk" role="2Oq$k0">
                    <ref role="3cqZAo" node="4gibKcMyajb" resolve="project" />
                  </node>
                  <node concept="liA8E" id="4gibKcMyajl" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="liA8E" id="4gibKcMyajm" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                  <node concept="1bVj0M" id="4gibKcMyajn" role="37wK5m">
                    <node concept="3clFbS" id="4gibKcMyajo" role="1bW5cS">
                      <node concept="2Gpval" id="4gibKcMyajp" role="3cqZAp">
                        <node concept="2GrKxI" id="4gibKcMyajq" role="2Gsz3X">
                          <property role="TrG5h" value="application" />
                        </node>
                        <node concept="2OqwBi" id="4gibKcMycBY" role="2GsD0m">
                          <node concept="37vLTw" id="4gibKcMycTA" role="2Oq$k0">
                            <ref role="3cqZAo" node="4gibKcMyaYD" resolve="system" />
                          </node>
                          <node concept="liA8E" id="4gibKcMyd9x" role="2OqNvi">
                            <ref role="37wK5l" to="2xsi:2SU8oJdHAX0" resolve="getApplcations" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="4gibKcMyajw" role="2LFqv$">
                          <node concept="3clFbH" id="4kSwwtSA6Zx" role="3cqZAp" />
                          <node concept="3cpWs8" id="4gibKcMyajA" role="3cqZAp">
                            <node concept="3cpWsn" id="4gibKcMyajB" role="3cpWs9">
                              <property role="TrG5h" value="root" />
                              <node concept="3uibUv" id="4kSwwtSCkgh" role="1tU5fm">
                                <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
                              </node>
                              <node concept="2YIFZM" id="4kSwwtSCjnE" role="33vP2m">
                                <ref role="37wK5l" to="rk1n:4kSwwtS_nOs" resolve="createForApplication" />
                                <ref role="1Pybhc" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
                                <node concept="2GrUjf" id="4kSwwtSCjAM" role="37wK5m">
                                  <ref role="2Gs0qQ" node="4gibKcMyajq" resolve="application" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="4gibKcMyajL" role="3cqZAp">
                            <node concept="2OqwBi" id="4gibKcMyajM" role="3clFbG">
                              <node concept="37vLTw" id="4gibKcMyajN" role="2Oq$k0">
                                <ref role="3cqZAo" node="2CiAywAc9cK" resolve="processor" />
                              </node>
                              <node concept="liA8E" id="4gibKcMyajO" role="2OqNvi">
                                <ref role="37wK5l" to="9w4s:~Processor.process(java.lang.Object)" resolve="process" />
                                <node concept="2ShNRf" id="4gibKcMyajP" role="37wK5m">
                                  <node concept="1pGfFk" id="4gibKcMyajQ" role="2ShVmc">
                                    <ref role="37wK5l" node="2CiAywA8u11" resolve="NetworkInstanceNavBarModel.Item" />
                                    <node concept="37vLTw" id="4gibKcMyajR" role="37wK5m">
                                      <ref role="3cqZAo" node="4gibKcMyajB" resolve="root" />
                                    </node>
                                    <node concept="37vLTw" id="4gibKcMyajS" role="37wK5m">
                                      <ref role="3cqZAo" node="4gibKcMyajb" resolve="project" />
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
          <node concept="2ZW3vV" id="4gibKcMyajW" role="3clFbw">
            <node concept="3uibUv" id="4gibKcMyaOF" role="2ZW6by">
              <ref role="3uigEE" node="4gibKcMwOFv" resolve="NetworkInstanceNavBarModel.SystemItem" />
            </node>
            <node concept="37vLTw" id="4gibKcMyajY" role="2ZW6bz">
              <ref role="3cqZAo" node="2CiAywAc9cG" resolve="object" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2SP6YJBW$zF" role="3cqZAp">
          <node concept="3clFbS" id="2SP6YJBW$zG" role="3clFbx">
            <node concept="3cpWs8" id="2SP6YJBW$zH" role="3cqZAp">
              <node concept="3cpWsn" id="2SP6YJBW$zI" role="3cpWs9">
                <property role="TrG5h" value="deviceItem" />
                <node concept="3uibUv" id="2SP6YJBW__v" role="1tU5fm">
                  <ref role="3uigEE" node="2SP6YJBWpQs" resolve="NetworkInstanceNavBarModel.DeviceItem" />
                </node>
                <node concept="1eOMI4" id="2SP6YJBW$zK" role="33vP2m">
                  <node concept="10QFUN" id="2SP6YJBW$zL" role="1eOMHV">
                    <node concept="3uibUv" id="2SP6YJBW_pd" role="10QFUM">
                      <ref role="3uigEE" node="2SP6YJBWpQs" resolve="NetworkInstanceNavBarModel.DeviceItem" />
                    </node>
                    <node concept="37vLTw" id="2SP6YJBW$zN" role="10QFUP">
                      <ref role="3cqZAo" node="2CiAywAc9cG" resolve="object" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2SP6YJBW$zO" role="3cqZAp">
              <node concept="3cpWsn" id="2SP6YJBW$zP" role="3cpWs9">
                <property role="TrG5h" value="device" />
                <node concept="3uibUv" id="2SP6YJBWA2M" role="1tU5fm">
                  <ref role="3uigEE" to="2xsi:2SU8oJdHTR3" resolve="DeviceDeclaration" />
                </node>
                <node concept="2OqwBi" id="2SP6YJBW$zR" role="33vP2m">
                  <node concept="37vLTw" id="2SP6YJBW$zS" role="2Oq$k0">
                    <ref role="3cqZAo" node="2SP6YJBW$zI" resolve="deviceItem" />
                  </node>
                  <node concept="liA8E" id="2SP6YJBWAiv" role="2OqNvi">
                    <ref role="37wK5l" node="2SP6YJBWpSD" resolve="getDevice" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2SP6YJBW$zU" role="3cqZAp">
              <node concept="3cpWsn" id="2SP6YJBW$zV" role="3cpWs9">
                <property role="TrG5h" value="project" />
                <node concept="3uibUv" id="2SP6YJBW$zW" role="1tU5fm">
                  <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                </node>
                <node concept="2OqwBi" id="2SP6YJBW$zX" role="33vP2m">
                  <node concept="37vLTw" id="2SP6YJBW$zY" role="2Oq$k0">
                    <ref role="3cqZAo" node="2SP6YJBW$zI" resolve="deviceItem" />
                  </node>
                  <node concept="liA8E" id="2SP6YJBW$zZ" role="2OqNvi">
                    <ref role="37wK5l" node="2SP6YJBWpSJ" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2SP6YJBW$$0" role="3cqZAp" />
            <node concept="3clFbF" id="2SP6YJBW$$1" role="3cqZAp">
              <node concept="2OqwBi" id="2SP6YJBW$$2" role="3clFbG">
                <node concept="2OqwBi" id="2SP6YJBW$$3" role="2Oq$k0">
                  <node concept="37vLTw" id="2SP6YJBW$$4" role="2Oq$k0">
                    <ref role="3cqZAo" node="2SP6YJBW$zV" resolve="project" />
                  </node>
                  <node concept="liA8E" id="2SP6YJBW$$5" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="liA8E" id="2SP6YJBW$$6" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                  <node concept="1bVj0M" id="2SP6YJBW$$7" role="37wK5m">
                    <node concept="3clFbS" id="2SP6YJBW$$8" role="1bW5cS">
                      <node concept="2Gpval" id="2SP6YJBW$$9" role="3cqZAp">
                        <node concept="2GrKxI" id="2SP6YJBW$$a" role="2Gsz3X">
                          <property role="TrG5h" value="resource" />
                        </node>
                        <node concept="2OqwBi" id="2SP6YJBW$$b" role="2GsD0m">
                          <node concept="37vLTw" id="2SP6YJBW$$c" role="2Oq$k0">
                            <ref role="3cqZAo" node="2SP6YJBW$zP" resolve="device" />
                          </node>
                          <node concept="liA8E" id="2SP6YJBWARJ" role="2OqNvi">
                            <ref role="37wK5l" to="2xsi:2SU8oJdIhON" resolve="getResources" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2SP6YJBW$$e" role="2LFqv$">
                          <node concept="3cpWs8" id="4kSwwtSCko2" role="3cqZAp">
                            <node concept="3cpWsn" id="4kSwwtSCko3" role="3cpWs9">
                              <property role="TrG5h" value="root" />
                              <node concept="3uibUv" id="4kSwwtSCko4" role="1tU5fm">
                                <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
                              </node>
                              <node concept="2YIFZM" id="4kSwwtSCkxS" role="33vP2m">
                                <ref role="37wK5l" to="rk1n:4kSwwtS_o6x" resolve="createForResource" />
                                <ref role="1Pybhc" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
                                <node concept="2GrUjf" id="4kSwwtSCkSD" role="37wK5m">
                                  <ref role="2Gs0qQ" node="2SP6YJBW$$a" resolve="resource" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="2SP6YJBW$$o" role="3cqZAp">
                            <node concept="2OqwBi" id="2SP6YJBW$$p" role="3clFbG">
                              <node concept="37vLTw" id="2SP6YJBW$$q" role="2Oq$k0">
                                <ref role="3cqZAo" node="2CiAywAc9cK" resolve="processor" />
                              </node>
                              <node concept="liA8E" id="2SP6YJBW$$r" role="2OqNvi">
                                <ref role="37wK5l" to="9w4s:~Processor.process(java.lang.Object)" resolve="process" />
                                <node concept="2ShNRf" id="2SP6YJBW$$s" role="37wK5m">
                                  <node concept="1pGfFk" id="2SP6YJBW$$t" role="2ShVmc">
                                    <ref role="37wK5l" node="2CiAywA8u11" resolve="NetworkInstanceNavBarModel.Item" />
                                    <node concept="37vLTw" id="4kSwwtSClg$" role="37wK5m">
                                      <ref role="3cqZAo" node="4kSwwtSCko3" resolve="root" />
                                    </node>
                                    <node concept="37vLTw" id="2SP6YJBW$$v" role="37wK5m">
                                      <ref role="3cqZAo" node="2SP6YJBW$zV" resolve="project" />
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
          <node concept="2ZW3vV" id="2SP6YJBW$$w" role="3clFbw">
            <node concept="3uibUv" id="2SP6YJBW_mm" role="2ZW6by">
              <ref role="3uigEE" node="2SP6YJBWpQs" resolve="NetworkInstanceNavBarModel.DeviceItem" />
            </node>
            <node concept="37vLTw" id="2SP6YJBW$$y" role="2ZW6bz">
              <ref role="3cqZAo" node="2CiAywAc9cG" resolve="object" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2CiAywAc9FL" role="3cqZAp">
          <node concept="3clFbT" id="2CiAywAc9Jw" role="3cqZAk">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2CiAywAc9cO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2CiAywAc6rP" role="jymVt" />
    <node concept="2tJIrI" id="1vJkp1U01Yv" role="jymVt" />
    <node concept="3uibUv" id="2CiAywAc6hX" role="1zkMxy">
      <ref role="3uigEE" to="93vd:~AbstractNavBarModelExtension" resolve="AbstractNavBarModelExtension" />
    </node>
  </node>
  <node concept="312cEu" id="bRdTVHYKvb">
    <property role="2bfB8j" value="true" />
    <property role="TrG5h" value="RichNetworkProjectionController" />
    <node concept="2tJIrI" id="bRdTVHYKvc" role="jymVt" />
    <node concept="312cEg" id="1QSEqLhApg2" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1QSEqLhAoNC" role="1B3o_S" />
      <node concept="3Tqbb2" id="1QSEqLhA$$4" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="1vJkp1TWbk3" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1vJkp1TWayg" role="1B3o_S" />
      <node concept="3uibUv" id="1vJkp1TWbcP" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhAptM" role="jymVt" />
    <node concept="3Tm1VV" id="bRdTVHYKvd" role="1B3o_S" />
    <node concept="3uibUv" id="bRdTVHYKve" role="EKbjA">
      <ref role="3uigEE" to="de0p:7Y8B9wpj6Z6" resolve="HeaderedEditorProjectionController" />
    </node>
    <node concept="3clFbW" id="1QSEqLhAp$$" role="jymVt">
      <node concept="3cqZAl" id="1QSEqLhAp$_" role="3clF45" />
      <node concept="3Tm1VV" id="1QSEqLhAp$A" role="1B3o_S" />
      <node concept="3clFbS" id="1QSEqLhAp$C" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhAp$G" role="3cqZAp">
          <node concept="37vLTI" id="1QSEqLhAp$I" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLhAp$P" role="37vLTx">
              <ref role="3cqZAo" node="1QSEqLhAp$F" resolve="node" />
            </node>
            <node concept="37vLTw" id="1QSEqLhAqg6" role="37vLTJ">
              <ref role="3cqZAo" node="1QSEqLhApg2" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1vJkp1TWcSz" role="3cqZAp">
          <node concept="37vLTI" id="1vJkp1TWdod" role="3clFbG">
            <node concept="37vLTw" id="1vJkp1TWdVU" role="37vLTx">
              <ref role="3cqZAo" node="1vJkp1TWbOV" resolve="project" />
            </node>
            <node concept="37vLTw" id="1vJkp1TWcSx" role="37vLTJ">
              <ref role="3cqZAo" node="1vJkp1TWbk3" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLhAp$F" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1QSEqLhA$KJ" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="1vJkp1TWbOV" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1vJkp1TWc8D" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhApXw" role="jymVt" />
    <node concept="3clFb_" id="bRdTVHYKvf" role="jymVt">
      <property role="TrG5h" value="getId" />
      <node concept="3Tm1VV" id="bRdTVHYKvg" role="1B3o_S" />
      <node concept="3uibUv" id="bRdTVHYKvh" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="bRdTVHYKvi" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="bRdTVHYKvj" role="3clF47">
        <node concept="3clFbF" id="bRdTVHYKvk" role="3cqZAp">
          <node concept="Xl_RD" id="bRdTVHYKvl" role="3clFbG">
            <property role="Xl_RC" value="Network" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="bRdTVHYKvm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="bRdTVHYKvn" role="jymVt" />
    <node concept="3clFb_" id="bRdTVHYKvo" role="jymVt">
      <property role="TrG5h" value="createProjection" />
      <node concept="3Tm1VV" id="bRdTVHYKvp" role="1B3o_S" />
      <node concept="3uibUv" id="bRdTVHYKvq" role="3clF45">
        <ref role="3uigEE" to="de0p:7Y8B9wpl75t" resolve="HeaderedEditorProjection" />
      </node>
      <node concept="37vLTG" id="bRdTVHYKvr" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="bRdTVHYKvs" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="bRdTVHYKvt" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="bRdTVHYKvu" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="bRdTVHYKvv" role="3clF47">
        <node concept="3clFbJ" id="bRdTVHYKvw" role="3cqZAp">
          <node concept="3clFbS" id="bRdTVHYKvx" role="3clFbx">
            <node concept="3cpWs6" id="1QSEqLhXQ38" role="3cqZAp">
              <node concept="1rXfSq" id="1QSEqLhY67b" role="3cqZAk">
                <ref role="37wK5l" node="1QSEqLhY5Ka" resolve="createProjectionInternal" />
                <node concept="37vLTw" id="1QSEqLhY67a" role="37wK5m">
                  <ref role="3cqZAo" node="bRdTVHYKvr" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="bRdTVHYKvP" role="3clFbw">
            <node concept="1rXfSq" id="bRdTVHYKvQ" role="3uHU7w">
              <ref role="37wK5l" node="bRdTVHYKvf" resolve="getId" />
            </node>
            <node concept="37vLTw" id="bRdTVHYKvR" role="3uHU7B">
              <ref role="3cqZAo" node="bRdTVHYKvr" resolve="name" />
            </node>
          </node>
          <node concept="9aQIb" id="bRdTVHYKvS" role="9aQIa">
            <node concept="3clFbS" id="bRdTVHYKvT" role="9aQI4">
              <node concept="YS8fn" id="bRdTVHYKvU" role="3cqZAp">
                <node concept="2ShNRf" id="bRdTVHYKvV" role="YScLw">
                  <node concept="1pGfFk" id="bRdTVHYKvW" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="bRdTVHYKvX" role="37wK5m">
                      <property role="Xl_RC" value="Unsupported projection" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="bRdTVHYKvY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLhY4CB" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhY4No" role="jymVt">
      <property role="TrG5h" value="restoreProjection" />
      <node concept="3Tm1VV" id="1QSEqLhY4Nt" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhY4Nu" role="3clF45">
        <ref role="3uigEE" to="de0p:7Y8B9wpl75t" resolve="HeaderedEditorProjection" />
      </node>
      <node concept="37vLTG" id="1QSEqLhY4Nv" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="1QSEqLhY4Nw" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="1QSEqLhY4Nx" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLhY4Ny" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="1QSEqLhY4Nz" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
        </node>
        <node concept="2AHcQZ" id="1QSEqLhY4N$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="1QSEqLhY4NA" role="3clF47">
        <node concept="3clFbJ" id="1QSEqLhY5gU" role="3cqZAp">
          <node concept="3clFbS" id="1QSEqLhY5gV" role="3clFbx">
            <node concept="3cpWs8" id="1QSEqLhZcck" role="3cqZAp">
              <node concept="3cpWsn" id="1QSEqLhZccl" role="3cpWs9">
                <property role="TrG5h" value="ref" />
                <node concept="3uibUv" id="1QSEqLhZca9" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="1QSEqLhZccm" role="33vP2m">
                  <node concept="37vLTw" id="1QSEqLhZccn" role="2Oq$k0">
                    <ref role="3cqZAo" node="1QSEqLhY4Ny" resolve="e" />
                  </node>
                  <node concept="liA8E" id="1QSEqLhZcco" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String)" resolve="getAttributeValue" />
                    <node concept="10M0yZ" id="2CiAywA9yhZ" role="37wK5m">
                      <ref role="3cqZAo" node="1QSEqLhY9nm" resolve="PERSISTENCE_KEY" />
                      <ref role="1PxDUh" node="1QSEqLhW8CO" resolve="NetworkInstanceEditorProjection" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6YAH_gOFzYl" role="3cqZAp">
              <node concept="3cpWsn" id="6YAH_gOFzYm" role="3cpWs9">
                <property role="TrG5h" value="instance" />
                <node concept="3uibUv" id="4kSwwtSCJ8w" role="1tU5fm">
                  <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
                </node>
                <node concept="3K4zz7" id="6YAH_gOFCgf" role="33vP2m">
                  <node concept="3y3z36" id="6YAH_gOFBSg" role="3K4Cdx">
                    <node concept="10Nm6u" id="6YAH_gOFCah" role="3uHU7w" />
                    <node concept="37vLTw" id="6YAH_gOFByX" role="3uHU7B">
                      <ref role="3cqZAo" node="1QSEqLhZccl" resolve="ref" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6YAH_gOFzYn" role="3K4E3e">
                    <node concept="2YIFZM" id="6YAH_gOFzYo" role="2Oq$k0">
                      <ref role="37wK5l" to="rwq3:1QSEqLhZdF9" resolve="deserialize" />
                      <ref role="1Pybhc" to="rwq3:1QSEqLhWl9W" resolve="MPSNetworkInstanceReference" />
                      <node concept="37vLTw" id="6YAH_gOFzYp" role="37wK5m">
                        <ref role="3cqZAo" node="1QSEqLhZccl" resolve="ref" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6YAH_gOFzYq" role="2OqNvi">
                      <ref role="37wK5l" to="rwq3:1QSEqLhWlfG" resolve="resolve" />
                      <node concept="2OqwBi" id="6YAH_gOFzYr" role="37wK5m">
                        <node concept="liA8E" id="6YAH_gOFzYs" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                        </node>
                        <node concept="2JrnkZ" id="6YAH_gOFzYt" role="2Oq$k0">
                          <node concept="2OqwBi" id="6YAH_gOFzYu" role="2JrQYb">
                            <node concept="37vLTw" id="6YAH_gOFzYv" role="2Oq$k0">
                              <ref role="3cqZAo" node="1QSEqLhApg2" resolve="myNode" />
                            </node>
                            <node concept="I4A8Y" id="6YAH_gOFzYw" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="1_XvODPGNdt" role="3K4GZi" />
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1_XvODPGNPZ" role="3cqZAp">
              <node concept="3clFbS" id="1_XvODPGNQ1" role="3clFbx">
                <node concept="3clFbF" id="1_XvODPGPw6" role="3cqZAp">
                  <node concept="37vLTI" id="1_XvODPGPHr" role="3clFbG">
                    <node concept="37vLTw" id="1_XvODPGPw4" role="37vLTJ">
                      <ref role="3cqZAo" node="6YAH_gOFzYm" resolve="instance" />
                    </node>
                    <node concept="2YIFZM" id="4kSwwtSCKct" role="37vLTx">
                      <ref role="37wK5l" to="rk1n:4kSwwtS_x0T" resolve="createForDeclaraiton" />
                      <ref role="1Pybhc" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
                      <node concept="2YIFZM" id="6YAH_gOFCrp" role="37wK5m">
                        <ref role="37wK5l" to="go3h:1QSEqLhWmX0" resolve="adaptDeclaration" />
                        <ref role="1Pybhc" to="go3h:31Fn7oZJid9" resolve="NodesAdapter" />
                        <node concept="37vLTw" id="6YAH_gOFCrq" role="37wK5m">
                          <ref role="3cqZAo" node="1QSEqLhApg2" resolve="myNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="1_XvODPGOQt" role="3clFbw">
                <node concept="10Nm6u" id="1_XvODPGP1b" role="3uHU7w" />
                <node concept="37vLTw" id="1_XvODPGOBM" role="3uHU7B">
                  <ref role="3cqZAo" node="6YAH_gOFzYm" resolve="instance" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6YAH_gOFzHh" role="3cqZAp">
              <node concept="3cpWsn" id="6YAH_gOFzHi" role="3cpWs9">
                <property role="TrG5h" value="projection" />
                <node concept="3uibUv" id="6YAH_gOFzHj" role="1tU5fm">
                  <ref role="3uigEE" node="1QSEqLhW8CO" resolve="NetworkInstanceEditorProjection" />
                </node>
                <node concept="2ShNRf" id="6YAH_gOFzHk" role="33vP2m">
                  <node concept="1pGfFk" id="6YAH_gOFzHl" role="2ShVmc">
                    <ref role="37wK5l" node="1QSEqLhW9A1" resolve="NetworkInstanceEditorProjection" />
                    <node concept="37vLTw" id="6YAH_gOFzHm" role="37wK5m">
                      <ref role="3cqZAo" node="1QSEqLhApg2" resolve="myNode" />
                    </node>
                    <node concept="Xjq3P" id="6YAH_gOFzHn" role="37wK5m" />
                    <node concept="37vLTw" id="6YAH_gOFzHo" role="37wK5m">
                      <ref role="3cqZAo" node="1QSEqLhY4Nv" resolve="name" />
                    </node>
                    <node concept="37vLTw" id="6YAH_gOFFYl" role="37wK5m">
                      <ref role="3cqZAo" node="6YAH_gOFzYm" resolve="instance" />
                    </node>
                    <node concept="37vLTw" id="1vJkp1TXqfj" role="37wK5m">
                      <ref role="3cqZAo" node="1vJkp1TWbk3" resolve="myProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1QSEqLhY5gW" role="3cqZAp">
              <node concept="37vLTw" id="1QSEqLhY6nk" role="3cqZAk">
                <ref role="3cqZAo" node="6YAH_gOFzHi" resolve="projection" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="1QSEqLhY5h8" role="3clFbw">
            <node concept="1rXfSq" id="1QSEqLhY5h9" role="3uHU7w">
              <ref role="37wK5l" node="bRdTVHYKvf" resolve="getId" />
            </node>
            <node concept="37vLTw" id="1QSEqLhY5ha" role="3uHU7B">
              <ref role="3cqZAo" node="1QSEqLhY4Nv" resolve="name" />
            </node>
          </node>
          <node concept="9aQIb" id="1QSEqLhY5hb" role="9aQIa">
            <node concept="3clFbS" id="1QSEqLhY5hc" role="9aQI4">
              <node concept="YS8fn" id="1QSEqLhY5hd" role="3cqZAp">
                <node concept="2ShNRf" id="1QSEqLhY5he" role="YScLw">
                  <node concept="1pGfFk" id="1QSEqLhY5hf" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="1QSEqLhY5hg" role="37wK5m">
                      <property role="Xl_RC" value="Unsupported projection" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLhY4NB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ii99HMnNYg" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLhY5Ka" role="jymVt">
      <property role="TrG5h" value="createProjectionInternal" />
      <node concept="3Tm6S6" id="1QSEqLhY5Kb" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhY5Kc" role="3clF45">
        <ref role="3uigEE" node="1QSEqLhW8CO" resolve="NetworkInstanceEditorProjection" />
      </node>
      <node concept="37vLTG" id="1QSEqLhY5JW" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="1QSEqLhY5JX" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="1QSEqLhY5JJ" role="3clF47">
        <node concept="3cpWs8" id="1vJkp1TXqwO" role="3cqZAp">
          <node concept="3cpWsn" id="1vJkp1TXqwP" role="3cpWs9">
            <property role="TrG5h" value="instance" />
            <node concept="3uibUv" id="4kSwwtSCKVw" role="1tU5fm">
              <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
            </node>
            <node concept="2YIFZM" id="4kSwwtSCKAJ" role="33vP2m">
              <ref role="1Pybhc" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
              <ref role="37wK5l" to="rk1n:4kSwwtS_x0T" resolve="createForDeclaraiton" />
              <node concept="2YIFZM" id="4kSwwtSCKAK" role="37wK5m">
                <ref role="1Pybhc" to="go3h:31Fn7oZJid9" resolve="NodesAdapter" />
                <ref role="37wK5l" to="go3h:1QSEqLhWmX0" resolve="adaptDeclaration" />
                <node concept="37vLTw" id="4kSwwtSCKAL" role="37wK5m">
                  <ref role="3cqZAo" node="1QSEqLhApg2" resolve="myNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1QSEqLhY5JK" role="3cqZAp">
          <node concept="2ShNRf" id="1QSEqLhY5JL" role="3cqZAk">
            <node concept="1pGfFk" id="1QSEqLhY5JM" role="2ShVmc">
              <ref role="37wK5l" node="1QSEqLhW9A1" resolve="NetworkInstanceEditorProjection" />
              <node concept="37vLTw" id="1QSEqLhY5JN" role="37wK5m">
                <ref role="3cqZAo" node="1QSEqLhApg2" resolve="myNode" />
              </node>
              <node concept="Xjq3P" id="1QSEqLhY5JO" role="37wK5m" />
              <node concept="37vLTw" id="1QSEqLhY5K8" role="37wK5m">
                <ref role="3cqZAo" node="1QSEqLhY5JW" resolve="name" />
              </node>
              <node concept="37vLTw" id="1vJkp1TXqwW" role="37wK5m">
                <ref role="3cqZAo" node="1vJkp1TXqwP" resolve="instance" />
              </node>
              <node concept="37vLTw" id="1vJkp1TXroT" role="37wK5m">
                <ref role="3cqZAo" node="1vJkp1TWbk3" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ii99HMnKmh" role="jymVt" />
    <node concept="3clFb_" id="7ii99HMnKHp" role="jymVt">
      <property role="TrG5h" value="getChooseProjectionActions" />
      <node concept="3Tm1VV" id="7ii99HMnKHr" role="1B3o_S" />
      <node concept="3uibUv" id="7ii99HMnKHs" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7ii99HMnKHt" role="11_B2D">
          <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
        </node>
      </node>
      <node concept="3clFbS" id="7ii99HMnKHu" role="3clF47">
        <node concept="3clFbF" id="7ii99HMnLy1" role="3cqZAp">
          <node concept="2YIFZM" id="7ii99HMnUAf" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="2ShNRf" id="7ii99HMnUAg" role="37wK5m">
              <node concept="1pGfFk" id="7ii99HMnUAh" role="2ShVmc">
                <ref role="37wK5l" to="de0p:7ii99HMlpha" resolve="ChooseProjectionAction" />
                <node concept="Xjq3P" id="7ii99HMnUAi" role="37wK5m" />
                <node concept="Xl_RD" id="7ii99HMnUAj" role="37wK5m">
                  <property role="Xl_RC" value="Network" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="7ii99HMnV03" role="3PaCim">
              <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7ii99HMnKHv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ii99HMnVFV" role="jymVt" />
    <node concept="3clFb_" id="7ii99HMnKHy" role="jymVt">
      <property role="TrG5h" value="getCreateProjectionActions" />
      <node concept="3Tm1VV" id="7ii99HMnKH$" role="1B3o_S" />
      <node concept="3uibUv" id="7ii99HMnKH_" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7ii99HMnKHA" role="11_B2D">
          <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
        </node>
      </node>
      <node concept="3clFbS" id="7ii99HMnKHB" role="3clF47">
        <node concept="3clFbF" id="7ii99HMnVfj" role="3cqZAp">
          <node concept="2YIFZM" id="7ii99HMnVp3" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="7ii99HMnVA7" role="3PaCim">
              <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7ii99HMnKHC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2CiAywA9Mz5">
    <property role="TrG5h" value="NetworkInstanceNavigationSupport" />
    <node concept="2tJIrI" id="2CiAywA9M$F" role="jymVt" />
    <node concept="2YIFZL" id="2CiAywAbsXx" role="jymVt">
      <property role="TrG5h" value="navigate" />
      <node concept="3clFbS" id="2CiAywAbsXz" role="3clF47">
        <node concept="3clFbF" id="2CiAywAbsX$" role="3cqZAp">
          <node concept="2OqwBi" id="2CiAywAbsX_" role="3clFbG">
            <node concept="2YIFZM" id="2CiAywAbsXA" role="2Oq$k0">
              <ref role="37wK5l" to="kz9k:~NavigationSupport.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="kz9k:~NavigationSupport" resolve="NavigationSupport" />
            </node>
            <node concept="liA8E" id="2CiAywAbsXB" role="2OqNvi">
              <ref role="37wK5l" to="kz9k:~NavigationSupport.openNode(jetbrains.mps.project.Project,org.jetbrains.mps.openapi.model.SNode,boolean,boolean)" resolve="openNode" />
              <node concept="37vLTw" id="2CiAywAbsXC" role="37wK5m">
                <ref role="3cqZAo" node="2CiAywAbsXK" resolve="project" />
              </node>
              <node concept="1rXfSq" id="2CiAywAbsXD" role="37wK5m">
                <ref role="37wK5l" node="2CiAywAbteV" resolve="getNavigationStub" />
                <node concept="37vLTw" id="2CiAywAbsXE" role="37wK5m">
                  <ref role="3cqZAo" node="2CiAywAbsXK" resolve="project" />
                </node>
                <node concept="37vLTw" id="2CiAywAbsXF" role="37wK5m">
                  <ref role="3cqZAo" node="2CiAywAbsXM" resolve="instance" />
                </node>
              </node>
              <node concept="37vLTw" id="2CiAywAbsXG" role="37wK5m">
                <ref role="3cqZAo" node="2CiAywAbsXO" resolve="focus" />
              </node>
              <node concept="3clFbT" id="2CiAywAbsXH" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="3tYGpuLuupI" role="3clF45">
        <ref role="3uigEE" to="cj4x:~Editor" resolve="Editor" />
      </node>
      <node concept="37vLTG" id="2CiAywAbsXK" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2CiAywAbsXL" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="2CiAywAbsXM" role="3clF46">
        <property role="TrG5h" value="instance" />
        <node concept="3uibUv" id="4kSwwtSAcWX" role="1tU5fm">
          <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="2CiAywAbsXO" role="3clF46">
        <property role="TrG5h" value="focus" />
        <node concept="10P_77" id="2CiAywAbsXP" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="2CiAywAbsXI" role="1B3o_S" />
    </node>
    <node concept="2YIFZL" id="2CiAywAbYd$" role="jymVt">
      <property role="TrG5h" value="canNavigate" />
      <node concept="3clFbS" id="2CiAywAbYd_" role="3clF47">
        <node concept="3clFbF" id="2CiAywAbYNL" role="3cqZAp">
          <node concept="3y3z36" id="2CiAywAbZdy" role="3clFbG">
            <node concept="10Nm6u" id="2CiAywAbZtK" role="3uHU7w" />
            <node concept="1rXfSq" id="2CiAywAbYNK" role="3uHU7B">
              <ref role="37wK5l" node="2CiAywAbteV" resolve="getNavigationStub" />
              <node concept="37vLTw" id="2CiAywAbYYF" role="37wK5m">
                <ref role="3cqZAo" node="2CiAywAbYdL" resolve="project" />
              </node>
              <node concept="37vLTw" id="4kSwwtSAd6C" role="37wK5m">
                <ref role="3cqZAo" node="4kSwwtSAd1u" resolve="instance" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="2CiAywAbZwt" role="3clF45" />
      <node concept="37vLTG" id="2CiAywAbYdL" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2CiAywAbYdM" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="4kSwwtSAd1u" role="3clF46">
        <property role="TrG5h" value="instance" />
        <node concept="3uibUv" id="4kSwwtSAd1v" role="1tU5fm">
          <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2CiAywAbYdR" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2CiAywA9M$H" role="jymVt" />
    <node concept="2YIFZL" id="2CiAywAbteV" role="jymVt">
      <property role="TrG5h" value="getNavigationStub" />
      <node concept="3clFbS" id="2CiAywAbtf1" role="3clF47">
        <node concept="3cpWs8" id="4kSwwtS$wI0" role="3cqZAp">
          <node concept="3cpWsn" id="4kSwwtS$wI1" role="3cpWs9">
            <property role="TrG5h" value="container" />
            <node concept="3uibUv" id="4kSwwtS$wI2" role="1tU5fm">
              <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
            </node>
            <node concept="2OqwBi" id="4kSwwtSAfxn" role="33vP2m">
              <node concept="2OqwBi" id="4kSwwtSAegS" role="2Oq$k0">
                <node concept="37vLTw" id="4kSwwtSAeWX" role="2Oq$k0">
                  <ref role="3cqZAo" node="2CiAywAbteZ" resolve="instance" />
                </node>
                <node concept="liA8E" id="4kSwwtSAegV" role="2OqNvi">
                  <ref role="37wK5l" to="rk1n:4kSwwtS$t0Y" resolve="getRootInstance" />
                </node>
              </node>
              <node concept="liA8E" id="4kSwwtSAgdq" role="2OqNvi">
                <ref role="37wK5l" to="rk1n:4kSwwtS$sVt" resolve="getDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2CiAywAbtf2" role="3cqZAp">
          <node concept="3clFbS" id="2CiAywAbtf3" role="3clFbx">
            <node concept="3cpWs8" id="2CiAywAbtf4" role="3cqZAp">
              <node concept="3cpWsn" id="2CiAywAbtf5" role="3cpWs9">
                <property role="TrG5h" value="targetNode" />
                <node concept="3Tqbb2" id="2CiAywAbtf6" role="1tU5fm" />
                <node concept="2OqwBi" id="2CiAywAbtf7" role="33vP2m">
                  <node concept="1eOMI4" id="2CiAywAbtf8" role="2Oq$k0">
                    <node concept="10QFUN" id="2CiAywAbtf9" role="1eOMHV">
                      <node concept="3uibUv" id="2CiAywAbtfa" role="10QFUM">
                        <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="HasNode" />
                      </node>
                      <node concept="37vLTw" id="4gibKcMvyNr" role="10QFUP">
                        <ref role="3cqZAo" node="4kSwwtS$wI1" resolve="container" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="2CiAywAbtfe" role="2OqNvi">
                    <ref role="37wK5l" to="go3h:1JYTWWzyU9A" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2CiAywAbtff" role="3cqZAp" />
            <node concept="3cpWs8" id="2CiAywAbtfg" role="3cqZAp">
              <node concept="3cpWsn" id="2CiAywAbtfh" role="3cpWs9">
                <property role="TrG5h" value="element" />
                <node concept="3uibUv" id="2CiAywAbtfi" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                </node>
                <node concept="2ShNRf" id="2CiAywAbtfj" role="33vP2m">
                  <node concept="1pGfFk" id="2CiAywAbtfk" role="2ShVmc">
                    <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                    <node concept="10M0yZ" id="2CiAywAbtfl" role="37wK5m">
                      <ref role="3cqZAo" to="de0p:7Y8B9wpkNGr" resolve="PROJECTION_DATA_KEY" />
                      <ref role="1PxDUh" to="de0p:7Y8B9wpd$4e" resolve="HeaderedNodeEditor" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4gibKcMr1Di" role="3cqZAp" />
            <node concept="3clFbJ" id="4gibKcMvyxx" role="3cqZAp">
              <node concept="3clFbS" id="4gibKcMvyxz" role="3clFbx">
                <node concept="3clFbF" id="4gibKcMvGWa" role="3cqZAp">
                  <node concept="2OqwBi" id="4gibKcMvGWb" role="3clFbG">
                    <node concept="37vLTw" id="4gibKcMvGWc" role="2Oq$k0">
                      <ref role="3cqZAo" node="2CiAywAbtfh" resolve="element" />
                    </node>
                    <node concept="liA8E" id="4gibKcMvGWd" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                      <node concept="10M0yZ" id="4gibKcMvGWe" role="37wK5m">
                        <ref role="1PxDUh" to="de0p:7Y8B9wpd$4e" resolve="HeaderedNodeEditor" />
                        <ref role="3cqZAo" to="de0p:7Y8B9wpj48Z" resolve="CONTROLLER_ID_KEY" />
                      </node>
                      <node concept="Xl_RD" id="4gibKcMvGWf" role="37wK5m">
                        <property role="Xl_RC" value="Application" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4gibKcMvGWi" role="3cqZAp">
                  <node concept="2OqwBi" id="4gibKcMvGWj" role="3clFbG">
                    <node concept="37vLTw" id="4gibKcMvGWk" role="2Oq$k0">
                      <ref role="3cqZAo" node="2CiAywAbtfh" resolve="element" />
                    </node>
                    <node concept="liA8E" id="4gibKcMvGWl" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                      <node concept="10M0yZ" id="4gibKcMvGWm" role="37wK5m">
                        <ref role="1PxDUh" to="de0p:7Y8B9wpd$4e" resolve="HeaderedNodeEditor" />
                        <ref role="3cqZAo" to="de0p:7Y8B9wpllVQ" resolve="PROJECTION_NAME_KEY" />
                      </node>
                      <node concept="2OqwBi" id="4gibKcMwoJZ" role="37wK5m">
                        <node concept="1PxgMI" id="4gibKcMwo$8" role="2Oq$k0">
                          <node concept="chp4Y" id="4gibKcMwo_l" role="3oSUPX">
                            <ref role="cht4Q" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
                          </node>
                          <node concept="37vLTw" id="4gibKcMwo6Z" role="1m5AlR">
                            <ref role="3cqZAo" node="2CiAywAbtf5" resolve="targetNode" />
                          </node>
                        </node>
                        <node concept="3TrcHB" id="4gibKcMwp72" role="2OqNvi">
                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4gibKcMvGWq" role="3cqZAp">
                  <node concept="2OqwBi" id="4gibKcMvGWr" role="3clFbG">
                    <node concept="37vLTw" id="4gibKcMvGWs" role="2Oq$k0">
                      <ref role="3cqZAo" node="2CiAywAbtfh" resolve="element" />
                    </node>
                    <node concept="liA8E" id="4gibKcMvGWt" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                      <node concept="10M0yZ" id="4gibKcMvHjG" role="37wK5m">
                        <ref role="3cqZAo" node="4gibKcMrPZo" resolve="PERSISTENCE_KEY" />
                        <ref role="1PxDUh" node="2SU8oJdFQLo" resolve="RichApplicationProjection" />
                      </node>
                      <node concept="2OqwBi" id="4gibKcMvGWv" role="37wK5m">
                        <node concept="liA8E" id="4gibKcMvGWw" role="2OqNvi">
                          <ref role="37wK5l" to="rwq3:1QSEqLhWZMH" resolve="serialize" />
                        </node>
                        <node concept="2YIFZM" id="4gibKcMvGWx" role="2Oq$k0">
                          <ref role="37wK5l" to="rwq3:1QSEqLhXrjF" resolve="create" />
                          <ref role="1Pybhc" to="rwq3:1QSEqLhWl9W" resolve="MPSNetworkInstanceReference" />
                          <node concept="37vLTw" id="4gibKcMvGWy" role="37wK5m">
                            <ref role="3cqZAo" node="2CiAywAbteZ" resolve="instance" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="4gibKcMw4Jz" role="3cqZAp">
                  <node concept="37vLTI" id="4gibKcMw4Ua" role="3clFbG">
                    <node concept="2OqwBi" id="4gibKcMw5bm" role="37vLTx">
                      <node concept="37vLTw" id="4gibKcMw52c" role="2Oq$k0">
                        <ref role="3cqZAo" node="2CiAywAbtf5" resolve="targetNode" />
                      </node>
                      <node concept="1mfA1w" id="4gibKcMw5kn" role="2OqNvi" />
                    </node>
                    <node concept="37vLTw" id="4gibKcMw4Jx" role="37vLTJ">
                      <ref role="3cqZAo" node="2CiAywAbtf5" resolve="targetNode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="4gibKcMvGPL" role="3clFbw">
                <node concept="3uibUv" id="4gibKcMvGVM" role="2ZW6by">
                  <ref role="3uigEE" to="2xsi:2SU8oJdH$Pn" resolve="ApplicationDeclaration" />
                </node>
                <node concept="37vLTw" id="4gibKcMvGG4" role="2ZW6bz">
                  <ref role="3cqZAo" node="4kSwwtS$wI1" resolve="container" />
                </node>
              </node>
              <node concept="3eNFk2" id="2SP6YJBZw7Y" role="3eNLev">
                <node concept="3clFbS" id="2SP6YJBZw7Z" role="3eOfB_">
                  <node concept="3clFbF" id="2SP6YJBZw80" role="3cqZAp">
                    <node concept="2OqwBi" id="2SP6YJBZw81" role="3clFbG">
                      <node concept="37vLTw" id="2SP6YJBZw82" role="2Oq$k0">
                        <ref role="3cqZAo" node="2CiAywAbtfh" resolve="element" />
                      </node>
                      <node concept="liA8E" id="2SP6YJBZw83" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                        <node concept="10M0yZ" id="2SP6YJBZw84" role="37wK5m">
                          <ref role="1PxDUh" to="de0p:7Y8B9wpd$4e" resolve="HeaderedNodeEditor" />
                          <ref role="3cqZAo" to="de0p:7Y8B9wpj48Z" resolve="CONTROLLER_ID_KEY" />
                        </node>
                        <node concept="Xl_RD" id="2SP6YJBZw85" role="37wK5m">
                          <property role="Xl_RC" value="Resource" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2SP6YJBZw86" role="3cqZAp">
                    <node concept="2OqwBi" id="2SP6YJBZw87" role="3clFbG">
                      <node concept="37vLTw" id="2SP6YJBZw88" role="2Oq$k0">
                        <ref role="3cqZAo" node="2CiAywAbtfh" resolve="element" />
                      </node>
                      <node concept="liA8E" id="2SP6YJBZw89" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                        <node concept="10M0yZ" id="2SP6YJBZw8a" role="37wK5m">
                          <ref role="1PxDUh" to="de0p:7Y8B9wpd$4e" resolve="HeaderedNodeEditor" />
                          <ref role="3cqZAo" to="de0p:7Y8B9wpllVQ" resolve="PROJECTION_NAME_KEY" />
                        </node>
                        <node concept="3cpWs3" id="2SP6YJBZx0X" role="37wK5m">
                          <node concept="3cpWs3" id="2SP6YJBZxFc" role="3uHU7B">
                            <node concept="2OqwBi" id="2SP6YJBZz6s" role="3uHU7B">
                              <node concept="1PxgMI" id="2SP6YJBZyL6" role="2Oq$k0">
                                <node concept="chp4Y" id="2SP6YJBZyMo" role="3oSUPX">
                                  <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
                                </node>
                                <node concept="2OqwBi" id="2SP6YJBZyty" role="1m5AlR">
                                  <node concept="37vLTw" id="2SP6YJBZyac" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2CiAywAbtf5" resolve="targetNode" />
                                  </node>
                                  <node concept="1mfA1w" id="2SP6YJBZyEx" role="2OqNvi" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="2SP6YJBZzmx" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="2SP6YJBZx_r" role="3uHU7w">
                              <property role="Xl_RC" value="." />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="2SP6YJBZwEK" role="3uHU7w">
                            <node concept="1PxgMI" id="2SP6YJBZwEL" role="2Oq$k0">
                              <node concept="chp4Y" id="2SP6YJBZxoD" role="3oSUPX">
                                <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                              </node>
                              <node concept="37vLTw" id="2SP6YJBZwEN" role="1m5AlR">
                                <ref role="3cqZAo" node="2CiAywAbtf5" resolve="targetNode" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="2SP6YJBZwEO" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2SP6YJBZw8c" role="3cqZAp">
                    <node concept="2OqwBi" id="2SP6YJBZw8d" role="3clFbG">
                      <node concept="37vLTw" id="2SP6YJBZw8e" role="2Oq$k0">
                        <ref role="3cqZAo" node="2CiAywAbtfh" resolve="element" />
                      </node>
                      <node concept="liA8E" id="2SP6YJBZw8f" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                        <node concept="10M0yZ" id="2SP6YJBZVAO" role="37wK5m">
                          <ref role="3cqZAo" node="2SP6YJBVLKp" resolve="PERSISTENCE_KEY" />
                          <ref role="1PxDUh" node="2SP6YJBVLKg" resolve="RichResourceProjection" />
                        </node>
                        <node concept="2OqwBi" id="2SP6YJBZw8h" role="37wK5m">
                          <node concept="liA8E" id="2SP6YJBZw8i" role="2OqNvi">
                            <ref role="37wK5l" to="rwq3:1QSEqLhWZMH" resolve="serialize" />
                          </node>
                          <node concept="2YIFZM" id="2SP6YJBZw8j" role="2Oq$k0">
                            <ref role="1Pybhc" to="rwq3:1QSEqLhWl9W" resolve="MPSNetworkInstanceReference" />
                            <ref role="37wK5l" to="rwq3:1QSEqLhXrjF" resolve="create" />
                            <node concept="37vLTw" id="2SP6YJBZw8k" role="37wK5m">
                              <ref role="3cqZAo" node="2CiAywAbteZ" resolve="instance" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2SP6YJBZXa2" role="3cqZAp">
                    <node concept="37vLTI" id="2SP6YJBZXa3" role="3clFbG">
                      <node concept="2OqwBi" id="2SP6YJBZXtm" role="37vLTx">
                        <node concept="2OqwBi" id="2SP6YJBZXa4" role="2Oq$k0">
                          <node concept="37vLTw" id="2SP6YJBZXa5" role="2Oq$k0">
                            <ref role="3cqZAo" node="2CiAywAbtf5" resolve="targetNode" />
                          </node>
                          <node concept="1mfA1w" id="2SP6YJBZXa6" role="2OqNvi" />
                        </node>
                        <node concept="1mfA1w" id="2SP6YJBZXAu" role="2OqNvi" />
                      </node>
                      <node concept="37vLTw" id="2SP6YJBZXa7" role="37vLTJ">
                        <ref role="3cqZAo" node="2CiAywAbtf5" resolve="targetNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZW3vV" id="2SP6YJBZzNd" role="3eO9$A">
                  <node concept="3uibUv" id="2SP6YJBZzV$" role="2ZW6by">
                    <ref role="3uigEE" to="2xsi:2SU8oJdIdeb" resolve="ResourceDeclaration" />
                  </node>
                  <node concept="37vLTw" id="2SP6YJBZztU" role="2ZW6bz">
                    <ref role="3cqZAo" node="4kSwwtS$wI1" resolve="container" />
                  </node>
                </node>
              </node>
              <node concept="9aQIb" id="2SP6YJBZwlN" role="9aQIa">
                <node concept="3clFbS" id="2SP6YJBZwlO" role="9aQI4">
                  <node concept="3clFbF" id="2SP6YJBZwps" role="3cqZAp">
                    <node concept="2OqwBi" id="2SP6YJBZwpt" role="3clFbG">
                      <node concept="37vLTw" id="2SP6YJBZwpu" role="2Oq$k0">
                        <ref role="3cqZAo" node="2CiAywAbtfh" resolve="element" />
                      </node>
                      <node concept="liA8E" id="2SP6YJBZwpv" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                        <node concept="10M0yZ" id="2SP6YJBZwpw" role="37wK5m">
                          <ref role="1PxDUh" to="de0p:7Y8B9wpd$4e" resolve="HeaderedNodeEditor" />
                          <ref role="3cqZAo" to="de0p:7Y8B9wpj48Z" resolve="CONTROLLER_ID_KEY" />
                        </node>
                        <node concept="Xl_RD" id="2SP6YJBZwpx" role="37wK5m">
                          <property role="Xl_RC" value="Network" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2SP6YJBZwp$" role="3cqZAp">
                    <node concept="2OqwBi" id="2SP6YJBZwp_" role="3clFbG">
                      <node concept="37vLTw" id="2SP6YJBZwpA" role="2Oq$k0">
                        <ref role="3cqZAo" node="2CiAywAbtfh" resolve="element" />
                      </node>
                      <node concept="liA8E" id="2SP6YJBZwpB" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                        <node concept="10M0yZ" id="2SP6YJBZwpC" role="37wK5m">
                          <ref role="1PxDUh" to="de0p:7Y8B9wpd$4e" resolve="HeaderedNodeEditor" />
                          <ref role="3cqZAo" to="de0p:7Y8B9wpllVQ" resolve="PROJECTION_NAME_KEY" />
                        </node>
                        <node concept="Xl_RD" id="2SP6YJBZwpD" role="37wK5m">
                          <property role="Xl_RC" value="Network" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2SP6YJBZwpG" role="3cqZAp">
                    <node concept="2OqwBi" id="2SP6YJBZwpH" role="3clFbG">
                      <node concept="37vLTw" id="2SP6YJBZwpI" role="2Oq$k0">
                        <ref role="3cqZAo" node="2CiAywAbtfh" resolve="element" />
                      </node>
                      <node concept="liA8E" id="2SP6YJBZwpJ" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                        <node concept="10M0yZ" id="2SP6YJBZwpK" role="37wK5m">
                          <ref role="1PxDUh" node="1QSEqLhW8CO" resolve="NetworkInstanceEditorProjection" />
                          <ref role="3cqZAo" node="1QSEqLhY9nm" resolve="PERSISTENCE_KEY" />
                        </node>
                        <node concept="2OqwBi" id="2SP6YJBZwpL" role="37wK5m">
                          <node concept="liA8E" id="2SP6YJBZwpM" role="2OqNvi">
                            <ref role="37wK5l" to="rwq3:1QSEqLhWZMH" resolve="serialize" />
                          </node>
                          <node concept="2YIFZM" id="2SP6YJBZwpN" role="2Oq$k0">
                            <ref role="1Pybhc" to="rwq3:1QSEqLhWl9W" resolve="MPSNetworkInstanceReference" />
                            <ref role="37wK5l" to="rwq3:1QSEqLhXrjF" resolve="create" />
                            <node concept="37vLTw" id="2SP6YJBZwpO" role="37wK5m">
                              <ref role="3cqZAo" node="2CiAywAbteZ" resolve="instance" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2CiAywAbtfF" role="3cqZAp" />
            <node concept="3cpWs8" id="2CiAywAbtfG" role="3cqZAp">
              <node concept="3cpWsn" id="2CiAywAbtfH" role="3cpWs9">
                <property role="TrG5h" value="specs" />
                <node concept="3uibUv" id="2CiAywAbtfI" role="1tU5fm">
                  <ref role="3uigEE" to="de0p:2hWn4IdUWjD" resolve="ProjectHeaderedEditorSpecs" />
                </node>
                <node concept="2YIFZM" id="2CiAywAbtfJ" role="33vP2m">
                  <ref role="37wK5l" to="de0p:2hWn4IdWIEf" resolve="getInstance" />
                  <ref role="1Pybhc" to="de0p:2hWn4IdUWjD" resolve="ProjectHeaderedEditorSpecs" />
                  <node concept="37vLTw" id="2CiAywAbtfK" role="37wK5m">
                    <ref role="3cqZAo" node="2CiAywAbteX" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="2CiAywAbtfL" role="3cqZAp">
              <node concept="2OqwBi" id="2CiAywAbtfM" role="3cqZAk">
                <node concept="37vLTw" id="2CiAywAbtfN" role="2Oq$k0">
                  <ref role="3cqZAo" node="2CiAywAbtfH" resolve="specs" />
                </node>
                <node concept="liA8E" id="2CiAywAbtfO" role="2OqNvi">
                  <ref role="37wK5l" to="de0p:2hWn4IdW8g3" resolve="getSpec" />
                  <node concept="37vLTw" id="2CiAywAbtfP" role="37wK5m">
                    <ref role="3cqZAo" node="2CiAywAbtf5" resolve="targetNode" />
                  </node>
                  <node concept="2OqwBi" id="2CiAywAbtfQ" role="37wK5m">
                    <node concept="2ShNRf" id="2CiAywAbtfR" role="2Oq$k0">
                      <node concept="1pGfFk" id="2CiAywAbtfS" role="2ShVmc">
                        <ref role="37wK5l" to="se19:~XMLOutputter.&lt;init&gt;()" resolve="XMLOutputter" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2CiAywAbtfT" role="2OqNvi">
                      <ref role="37wK5l" to="se19:~XMLOutputter.outputString(org.jdom.Element)" resolve="outputString" />
                      <node concept="37vLTw" id="2CiAywAbtfU" role="37wK5m">
                        <ref role="3cqZAo" node="2CiAywAbtfh" resolve="element" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="2CiAywAbtfW" role="3clFbw">
            <node concept="3uibUv" id="2CiAywAbtfX" role="2ZW6by">
              <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="HasNode" />
            </node>
            <node concept="37vLTw" id="4gibKcMvyNq" role="2ZW6bz">
              <ref role="3cqZAo" node="4kSwwtS$wI1" resolve="container" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2CiAywAbtg4" role="3cqZAp">
          <node concept="10Nm6u" id="2CiAywAbtg5" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tqbb2" id="2CiAywAbtg7" role="3clF45">
        <ref role="ehGHo" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
      </node>
      <node concept="37vLTG" id="2CiAywAbteX" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2CiAywAbteY" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="2CiAywAbteZ" role="3clF46">
        <property role="TrG5h" value="instance" />
        <node concept="3uibUv" id="4kSwwtSAdbM" role="1tU5fm">
          <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
        </node>
      </node>
      <node concept="3Tm1VV" id="2CiAywAbtg6" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="2CiAywA9Mz6" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3DiEZ8TM99k">
    <property role="TrG5h" value="RichEditorStyleAttributes" />
    <node concept="Wx3nA" id="3DiEZ8TM9f3" role="jymVt">
      <property role="TrG5h" value="NETWORK" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3DiEZ8TM9aS" role="1B3o_S" />
      <node concept="3uibUv" id="3DiEZ8TM9dK" role="1tU5fm">
        <ref role="3uigEE" to="hox0:~StyleAttribute" resolve="StyleAttribute" />
        <node concept="3uibUv" id="3DiEZ8TM9eT" role="11_B2D">
          <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
        </node>
      </node>
      <node concept="2ShNRf" id="3DiEZ8TM66i" role="33vP2m">
        <node concept="1pGfFk" id="3DiEZ8TM66j" role="2ShVmc">
          <ref role="37wK5l" to="5ueo:~InheritableStyleAttribute.&lt;init&gt;(java.lang.String)" resolve="InheritableStyleAttribute" />
          <node concept="Xl_RD" id="3DiEZ8TM66k" role="37wK5m">
            <property role="Xl_RC" value="fb-network" />
          </node>
          <node concept="3uibUv" id="3DiEZ8TM66l" role="1pMfVU">
            <ref role="3uigEE" to="tphl:1R4IoyQvXM6" resolve="FBNetwork" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="6YAH_gOc44k" role="jymVt">
      <property role="TrG5h" value="NETWORK_INSTANCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="6YAH_gOc44l" role="1B3o_S" />
      <node concept="3uibUv" id="6YAH_gOc44m" role="1tU5fm">
        <ref role="3uigEE" to="hox0:~StyleAttribute" resolve="StyleAttribute" />
        <node concept="3uibUv" id="4kSwwtSC7Xt" role="11_B2D">
          <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
        </node>
      </node>
      <node concept="2ShNRf" id="6YAH_gOc44o" role="33vP2m">
        <node concept="1pGfFk" id="6YAH_gOc44p" role="2ShVmc">
          <ref role="37wK5l" to="5ueo:~InheritableStyleAttribute.&lt;init&gt;(java.lang.String)" resolve="InheritableStyleAttribute" />
          <node concept="Xl_RD" id="6YAH_gOc44q" role="37wK5m">
            <property role="Xl_RC" value="fb-network-instance" />
          </node>
          <node concept="3uibUv" id="4kSwwtSDVpw" role="1pMfVU">
            <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="3DiEZ8TM9th" role="jymVt">
      <property role="TrG5h" value="PORT" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3DiEZ8TM9ti" role="1B3o_S" />
      <node concept="3uibUv" id="3DiEZ8TM9tj" role="1tU5fm">
        <ref role="3uigEE" to="hox0:~StyleAttribute" resolve="StyleAttribute" />
        <node concept="3uibUv" id="3DiEZ8TM9w9" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
        </node>
      </node>
      <node concept="2ShNRf" id="3DiEZ8TJRSk" role="33vP2m">
        <node concept="1pGfFk" id="3DiEZ8TJSKK" role="2ShVmc">
          <ref role="37wK5l" to="5ueo:~SimpleStyleAttribute.&lt;init&gt;(java.lang.String)" resolve="SimpleStyleAttribute" />
          <node concept="Xl_RD" id="3DiEZ8TJVBx" role="37wK5m">
            <property role="Xl_RC" value="fb-port" />
          </node>
          <node concept="3uibUv" id="3DiEZ8TK8Ic" role="1pMfVU">
            <ref role="3uigEE" to="2xsi:1HEL0zWehtJ" resolve="FBPortDescriptor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="3DiEZ8TM9F8" role="jymVt">
      <property role="TrG5h" value="TYPE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3DiEZ8TM9F9" role="1B3o_S" />
      <node concept="3uibUv" id="3DiEZ8TM9Fa" role="1tU5fm">
        <ref role="3uigEE" to="hox0:~StyleAttribute" resolve="StyleAttribute" />
        <node concept="3uibUv" id="3DiEZ8TM9H4" role="11_B2D">
          <ref role="3uigEE" to="2xsi:1R4IoyQ$Zv8" resolve="FBTypeDescriptor" />
        </node>
      </node>
      <node concept="2ShNRf" id="3DiEZ8TK8YG" role="33vP2m">
        <node concept="1pGfFk" id="3DiEZ8TK8YH" role="2ShVmc">
          <ref role="37wK5l" to="5ueo:~InheritableStyleAttribute.&lt;init&gt;(java.lang.String)" resolve="InheritableStyleAttribute" />
          <node concept="Xl_RD" id="3DiEZ8TK8YI" role="37wK5m">
            <property role="Xl_RC" value="fb-type" />
          </node>
          <node concept="3uibUv" id="3DiEZ8TKfOo" role="1pMfVU">
            <ref role="3uigEE" to="2xsi:1R4IoyQ$Zv8" resolve="FBTypeDescriptor" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="3DiEZ8TO1Tb" role="jymVt">
      <property role="TrG5h" value="FB" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="3DiEZ8TO1Tc" role="1B3o_S" />
      <node concept="3uibUv" id="3DiEZ8TO1Td" role="1tU5fm">
        <ref role="3uigEE" to="hox0:~StyleAttribute" resolve="StyleAttribute" />
        <node concept="3uibUv" id="3DiEZ8TO1VK" role="11_B2D">
          <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FunctionBlockDeclaration" />
        </node>
      </node>
      <node concept="2ShNRf" id="3DiEZ8TNMPa" role="33vP2m">
        <node concept="1pGfFk" id="3DiEZ8TNNO3" role="2ShVmc">
          <ref role="37wK5l" to="5ueo:~InheritableStyleAttribute.&lt;init&gt;(java.lang.String)" resolve="InheritableStyleAttribute" />
          <node concept="Xl_RD" id="3DiEZ8TNOkk" role="37wK5m">
            <property role="Xl_RC" value="fb-inst" />
          </node>
          <node concept="3uibUv" id="3DiEZ8TNQ_D" role="1pMfVU">
            <ref role="3uigEE" to="tphl:7qPnRGGlWfX" resolve="FunctionBlockDeclaration" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="1DfKejr7po3" role="jymVt">
      <property role="TrG5h" value="SELECTED_FBS" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1DfKejr7p8W" role="1B3o_S" />
      <node concept="3uibUv" id="1DfKejr7plp" role="1tU5fm">
        <ref role="3uigEE" to="hox0:~StyleAttribute" resolve="StyleAttribute" />
        <node concept="3uibUv" id="1DfKejr7pwn" role="11_B2D">
          <ref role="3uigEE" to="rvgs:1KCfUoKRX_E" resolve="SelectionModel" />
          <node concept="3uibUv" id="1DfKejr7pPh" role="11_B2D">
            <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="1DfKejr7pQv" role="33vP2m">
        <node concept="1pGfFk" id="1DfKejr7pQw" role="2ShVmc">
          <ref role="37wK5l" to="5ueo:~InheritableStyleAttribute.&lt;init&gt;(java.lang.String)" resolve="InheritableStyleAttribute" />
          <node concept="Xl_RD" id="1DfKejr7pQx" role="37wK5m">
            <property role="Xl_RC" value="selected-fbs" />
          </node>
          <node concept="3uibUv" id="1DfKejr8oT6" role="1pMfVU">
            <ref role="3uigEE" to="rvgs:1KCfUoKRX_E" resolve="SelectionModel" />
            <node concept="3uibUv" id="1DfKejr8oT7" role="11_B2D">
              <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7XpzHqcw9_q" role="jymVt" />
    <node concept="1Pe0a1" id="7XpzHqcwdtQ" role="jymVt">
      <node concept="3clFbS" id="7XpzHqcwdtS" role="1Pe0a2">
        <node concept="3clFbF" id="7XpzHqcwdA9" role="3cqZAp">
          <node concept="2OqwBi" id="7XpzHqcwdIR" role="3clFbG">
            <node concept="37vLTw" id="7XpzHqcwdA8" role="2Oq$k0">
              <ref role="3cqZAo" node="3DiEZ8TM9f3" resolve="NETWORK" />
            </node>
            <node concept="liA8E" id="7XpzHqcweB1" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.register()" resolve="register" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6YAH_gOc5eX" role="3cqZAp">
          <node concept="2OqwBi" id="6YAH_gOc5r8" role="3clFbG">
            <node concept="37vLTw" id="6YAH_gOc5eV" role="2Oq$k0">
              <ref role="3cqZAo" node="6YAH_gOc44k" resolve="NETWORK_INSTANCE" />
            </node>
            <node concept="liA8E" id="6YAH_gOc5De" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.register()" resolve="register" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7XpzHqcweHc" role="3cqZAp">
          <node concept="2OqwBi" id="7XpzHqcweQn" role="3clFbG">
            <node concept="37vLTw" id="7XpzHqcweHa" role="2Oq$k0">
              <ref role="3cqZAo" node="3DiEZ8TM9th" resolve="PORT" />
            </node>
            <node concept="liA8E" id="7XpzHqcwf39" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.register()" resolve="register" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7XpzHqcwf9U" role="3cqZAp">
          <node concept="2OqwBi" id="7XpzHqcwfjJ" role="3clFbG">
            <node concept="37vLTw" id="7XpzHqcwf9S" role="2Oq$k0">
              <ref role="3cqZAo" node="3DiEZ8TM9F8" resolve="TYPE" />
            </node>
            <node concept="liA8E" id="7XpzHqcwfwv" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.register()" resolve="register" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7XpzHqcwfBF" role="3cqZAp">
          <node concept="2OqwBi" id="7XpzHqcwfLk" role="3clFbG">
            <node concept="37vLTw" id="7XpzHqcwfBD" role="2Oq$k0">
              <ref role="3cqZAo" node="3DiEZ8TO1Tb" resolve="FB" />
            </node>
            <node concept="liA8E" id="7XpzHqcwfYy" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.register()" resolve="register" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1DfKejr8oej" role="3cqZAp">
          <node concept="2OqwBi" id="1DfKejr8ozs" role="3clFbG">
            <node concept="37vLTw" id="1DfKejr8oeh" role="2Oq$k0">
              <ref role="3cqZAo" node="1DfKejr7po3" resolve="SELECTED_FBS" />
            </node>
            <node concept="liA8E" id="1DfKejr8oMl" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~StyleAttribute.register()" resolve="register" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3DiEZ8TM99l" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3vwudsmYiwt">
    <property role="TrG5h" value="RichEditorDataKeys" />
    <node concept="2tJIrI" id="3vwudsmYixr" role="jymVt" />
    <node concept="Wx3nA" id="1QSEqLhW3tU" role="jymVt">
      <property role="TrG5h" value="NETWORK_INSTANCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1QSEqLhW2DL" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhW39M" role="1tU5fm">
        <ref role="3uigEE" to="qkt:~DataKey" resolve="DataKey" />
        <node concept="3uibUv" id="4kSwwtSC5HC" role="11_B2D">
          <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
        </node>
      </node>
      <node concept="2YIFZM" id="1QSEqLhW4HT" role="33vP2m">
        <ref role="37wK5l" to="qkt:~DataKey.create(java.lang.String)" resolve="create" />
        <ref role="1Pybhc" to="qkt:~DataKey" resolve="DataKey" />
        <node concept="Xl_RD" id="1QSEqLhW4KJ" role="37wK5m">
          <property role="Xl_RC" value="fbnetwork-instance" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="1_XvODPJVm0" role="jymVt">
      <property role="TrG5h" value="ALGORITHM" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="1_XvODPJVm1" role="1B3o_S" />
      <node concept="3uibUv" id="1_XvODPJVm2" role="1tU5fm">
        <ref role="3uigEE" to="qkt:~DataKey" resolve="DataKey" />
        <node concept="3Tqbb2" id="1_XvODPKbdi" role="11_B2D">
          <ref role="ehGHo" to="xiqq:3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
        </node>
      </node>
      <node concept="2YIFZM" id="1_XvODPJVm4" role="33vP2m">
        <ref role="37wK5l" to="qkt:~DataKey.create(java.lang.String)" resolve="create" />
        <ref role="1Pybhc" to="qkt:~DataKey" resolve="DataKey" />
        <node concept="Xl_RD" id="1_XvODPJVm5" role="37wK5m">
          <property role="Xl_RC" value="algorithm-node" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2SU8oJdEKlf" role="jymVt">
      <property role="TrG5h" value="APPLICATION" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2SU8oJdEKlg" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdEKlh" role="1tU5fm">
        <ref role="3uigEE" to="qkt:~DataKey" resolve="DataKey" />
        <node concept="3uibUv" id="4gibKcMuC6T" role="11_B2D">
          <ref role="3uigEE" to="go3h:4dM3MZ7oKoQ" resolve="ApplicationDeclarationByNode" />
        </node>
      </node>
      <node concept="2YIFZM" id="2SU8oJdEKlj" role="33vP2m">
        <ref role="37wK5l" to="qkt:~DataKey.create(java.lang.String)" resolve="create" />
        <ref role="1Pybhc" to="qkt:~DataKey" resolve="DataKey" />
        <node concept="Xl_RD" id="2SU8oJdEKlk" role="37wK5m">
          <property role="Xl_RC" value="application-node" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2SU8oJdEKta" role="jymVt">
      <property role="TrG5h" value="DEVICE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2SU8oJdEKtb" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdEKtc" role="1tU5fm">
        <ref role="3uigEE" to="qkt:~DataKey" resolve="DataKey" />
        <node concept="3uibUv" id="2SP6YJBVNh5" role="11_B2D">
          <ref role="3uigEE" to="go3h:3MncU7wPdcu" resolve="DeviceDeclarationByNode" />
        </node>
      </node>
      <node concept="2YIFZM" id="2SU8oJdEKte" role="33vP2m">
        <ref role="37wK5l" to="qkt:~DataKey.create(java.lang.String)" resolve="create" />
        <ref role="1Pybhc" to="qkt:~DataKey" resolve="DataKey" />
        <node concept="Xl_RD" id="2SU8oJdEKtf" role="37wK5m">
          <property role="Xl_RC" value="device-node" />
        </node>
      </node>
    </node>
    <node concept="Wx3nA" id="2SU8oJdEK$1" role="jymVt">
      <property role="TrG5h" value="RESOURCE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2SU8oJdEK$2" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdEK$3" role="1tU5fm">
        <ref role="3uigEE" to="qkt:~DataKey" resolve="DataKey" />
        <node concept="3uibUv" id="2SP6YJBVN7d" role="11_B2D">
          <ref role="3uigEE" to="go3h:3MncU7wPlNy" resolve="ResourceDeclarationByNode" />
        </node>
      </node>
      <node concept="2YIFZM" id="2SU8oJdEK$5" role="33vP2m">
        <ref role="37wK5l" to="qkt:~DataKey.create(java.lang.String)" resolve="create" />
        <ref role="1Pybhc" to="qkt:~DataKey" resolve="DataKey" />
        <node concept="Xl_RD" id="2SU8oJdEK$6" role="37wK5m">
          <property role="Xl_RC" value="resource-node" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3vwudsmYlBD" role="jymVt" />
    <node concept="2tJIrI" id="4dM3MZ7pdwh" role="jymVt" />
    <node concept="2YIFZL" id="4dM3MZ7piYE" role="jymVt">
      <property role="TrG5h" value="contextNetworkInstance" />
      <node concept="3clFbS" id="4dM3MZ7piYH" role="3clF47">
        <node concept="3cpWs6" id="4dM3MZ7ppVs" role="3cqZAp">
          <node concept="2OqwBi" id="4dM3MZ7pq3t" role="3cqZAk">
            <node concept="1rXfSq" id="4dM3MZ7pq_5" role="2Oq$k0">
              <ref role="37wK5l" node="4dM3MZ7pqjD" resolve="ideaDataContext" />
              <node concept="37vLTw" id="4dM3MZ7pqye" role="37wK5m">
                <ref role="3cqZAo" node="4dM3MZ7pj3H" resolve="context" />
              </node>
            </node>
            <node concept="liA8E" id="4dM3MZ7pqcu" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DataContext.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
              <node concept="37vLTw" id="4dM3MZ7pqeh" role="37wK5m">
                <ref role="3cqZAo" node="1QSEqLhW3tU" resolve="NETWORK_INSTANCE" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4dM3MZ7piUe" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtSC5Nq" role="3clF45">
        <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
      <node concept="37vLTG" id="4dM3MZ7pj3H" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4dM3MZ7pj3G" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
        <node concept="2AHcQZ" id="4dM3MZ7pj45" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2YIFZL" id="4dM3MZ7pqM4" role="jymVt">
      <property role="TrG5h" value="contextAlogithm" />
      <node concept="3clFbS" id="4dM3MZ7pqM5" role="3clF47">
        <node concept="3cpWs6" id="4dM3MZ7pqM6" role="3cqZAp">
          <node concept="2OqwBi" id="4dM3MZ7pqM7" role="3cqZAk">
            <node concept="1rXfSq" id="4dM3MZ7pqM8" role="2Oq$k0">
              <ref role="37wK5l" node="4dM3MZ7pqjD" resolve="ideaDataContext" />
              <node concept="37vLTw" id="4dM3MZ7pqM9" role="37wK5m">
                <ref role="3cqZAo" node="4dM3MZ7pqMe" resolve="context" />
              </node>
            </node>
            <node concept="liA8E" id="4dM3MZ7pqMa" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DataContext.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
              <node concept="37vLTw" id="4dM3MZ7pr0T" role="37wK5m">
                <ref role="3cqZAo" node="1_XvODPJVm0" resolve="ALGORITHM" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4dM3MZ7pqMc" role="1B3o_S" />
      <node concept="37vLTG" id="4dM3MZ7pqMe" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4dM3MZ7pqMf" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
        <node concept="2AHcQZ" id="4dM3MZ7pqMg" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tqbb2" id="4dM3MZ7pr5H" role="3clF45">
        <ref role="ehGHo" to="xiqq:3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="4dM3MZ7pqC4" role="jymVt" />
    <node concept="2YIFZL" id="4dM3MZ7prOL" role="jymVt">
      <property role="TrG5h" value="contextApplication" />
      <node concept="37vLTG" id="4dM3MZ7prOM" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4dM3MZ7prON" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
        <node concept="2AHcQZ" id="4dM3MZ7prOO" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4dM3MZ7prOP" role="3clF47">
        <node concept="3cpWs6" id="4dM3MZ7prOQ" role="3cqZAp">
          <node concept="2OqwBi" id="4dM3MZ7prOR" role="3cqZAk">
            <node concept="1rXfSq" id="4dM3MZ7prOS" role="2Oq$k0">
              <ref role="37wK5l" node="4dM3MZ7pqjD" resolve="ideaDataContext" />
              <node concept="37vLTw" id="4dM3MZ7prOT" role="37wK5m">
                <ref role="3cqZAo" node="4dM3MZ7prOM" resolve="context" />
              </node>
            </node>
            <node concept="liA8E" id="4dM3MZ7prOU" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DataContext.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
              <node concept="37vLTw" id="4dM3MZ7pstW" role="37wK5m">
                <ref role="3cqZAo" node="2SU8oJdEKlf" resolve="APPLICATION" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4dM3MZ7prOW" role="1B3o_S" />
      <node concept="3uibUv" id="4gibKcMuC4K" role="3clF45">
        <ref role="3uigEE" to="go3h:4dM3MZ7oKoQ" resolve="ApplicationDeclarationByNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="4dM3MZ7psbF" role="jymVt" />
    <node concept="2YIFZL" id="4dM3MZ7prg6" role="jymVt">
      <property role="TrG5h" value="contextDevice" />
      <node concept="37vLTG" id="4dM3MZ7prnB" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4dM3MZ7prnC" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
        <node concept="2AHcQZ" id="4dM3MZ7prnD" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4dM3MZ7prg9" role="3clF47">
        <node concept="3cpWs6" id="4dM3MZ7proS" role="3cqZAp">
          <node concept="2OqwBi" id="4dM3MZ7prwI" role="3cqZAk">
            <node concept="1rXfSq" id="4dM3MZ7prpm" role="2Oq$k0">
              <ref role="37wK5l" node="4dM3MZ7pqjD" resolve="ideaDataContext" />
              <node concept="37vLTw" id="4dM3MZ7prrH" role="37wK5m">
                <ref role="3cqZAo" node="4dM3MZ7prnB" resolve="context" />
              </node>
            </node>
            <node concept="liA8E" id="4dM3MZ7prJq" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DataContext.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
              <node concept="37vLTw" id="4dM3MZ7prLX" role="37wK5m">
                <ref role="3cqZAo" node="2SU8oJdEKta" resolve="DEVICE" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4dM3MZ7pr7R" role="1B3o_S" />
      <node concept="3uibUv" id="2SP6YJBVNo4" role="3clF45">
        <ref role="3uigEE" to="go3h:3MncU7wPdcu" resolve="DeviceDeclarationByNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="4dM3MZ7psIG" role="jymVt" />
    <node concept="2YIFZL" id="4dM3MZ7psx4" role="jymVt">
      <property role="TrG5h" value="contextResource" />
      <node concept="37vLTG" id="4dM3MZ7psx5" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4dM3MZ7psx6" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
        <node concept="2AHcQZ" id="4dM3MZ7psx7" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4dM3MZ7psx8" role="3clF47">
        <node concept="3cpWs6" id="4dM3MZ7psx9" role="3cqZAp">
          <node concept="2OqwBi" id="4dM3MZ7psxa" role="3cqZAk">
            <node concept="1rXfSq" id="4dM3MZ7psxb" role="2Oq$k0">
              <ref role="37wK5l" node="4dM3MZ7pqjD" resolve="ideaDataContext" />
              <node concept="37vLTw" id="4dM3MZ7psxc" role="37wK5m">
                <ref role="3cqZAo" node="4dM3MZ7psx5" resolve="context" />
              </node>
            </node>
            <node concept="liA8E" id="4dM3MZ7psxd" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~DataContext.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
              <node concept="37vLTw" id="4dM3MZ7pt0G" role="37wK5m">
                <ref role="3cqZAo" node="2SU8oJdEK$1" resolve="RESOURCE" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4dM3MZ7psxf" role="1B3o_S" />
      <node concept="3uibUv" id="2SP6YJBVNpW" role="3clF45">
        <ref role="3uigEE" to="go3h:3MncU7wPlNy" resolve="ResourceDeclarationByNode" />
      </node>
    </node>
    <node concept="2tJIrI" id="4dM3MZ7pqsz" role="jymVt" />
    <node concept="2YIFZL" id="4dM3MZ7pqjD" role="jymVt">
      <property role="TrG5h" value="ideaDataContext" />
      <node concept="3Tm6S6" id="4dM3MZ7pqjE" role="1B3o_S" />
      <node concept="3uibUv" id="4dM3MZ7pqjF" role="3clF45">
        <ref role="3uigEE" to="qkt:~DataContext" resolve="DataContext" />
      </node>
      <node concept="37vLTG" id="4dM3MZ7pqj$" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="4dM3MZ7pqj_" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3clFbS" id="4dM3MZ7pqjg" role="3clF47">
        <node concept="3cpWs6" id="4dM3MZ7pqjy" role="3cqZAp">
          <node concept="2OqwBi" id="4dM3MZ7pqjm" role="3cqZAk">
            <node concept="2YIFZM" id="4dM3MZ7pqjn" role="2Oq$k0">
              <ref role="37wK5l" to="ddhc:~DataManager.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="ddhc:~DataManager" resolve="DataManager" />
            </node>
            <node concept="liA8E" id="4dM3MZ7pqjo" role="2OqNvi">
              <ref role="37wK5l" to="ddhc:~DataManager.getDataContext(java.awt.Component)" resolve="getDataContext" />
              <node concept="2OqwBi" id="4dM3MZ7pqjp" role="37wK5m">
                <node concept="2OqwBi" id="4dM3MZ7pqjq" role="2Oq$k0">
                  <node concept="0kSF2" id="4dM3MZ7pqjr" role="2Oq$k0">
                    <node concept="3uibUv" id="4dM3MZ7pqjs" role="0kSFW">
                      <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
                    </node>
                    <node concept="2OqwBi" id="4dM3MZ7pqjt" role="0kSFX">
                      <node concept="37vLTw" id="4dM3MZ7pqjA" role="2Oq$k0">
                        <ref role="3cqZAo" node="4dM3MZ7pqj$" resolve="context" />
                      </node>
                      <node concept="liA8E" id="4dM3MZ7pqjv" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.getEditorComponent()" resolve="getEditorComponent" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4dM3MZ7pqjw" role="2OqNvi">
                    <ref role="37wK5l" to="exr9:~EditorComponent.getExternalComponent()" resolve="getExternalComponent" />
                  </node>
                </node>
                <node concept="liA8E" id="4dM3MZ7pqjx" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Component.getParent()" resolve="getParent" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="3vwudsmYiwu" role="1B3o_S" />
    <node concept="3uibUv" id="3vwudsmYizF" role="1zkMxy">
      <ref role="3uigEE" to="qkt:~CommonDataKeys" resolve="CommonDataKeys" />
    </node>
  </node>
  <node concept="312cEu" id="1vJkp1TXRse">
    <property role="TrG5h" value="NetworkInstanceNavBarModel" />
    <node concept="2tJIrI" id="1vJkp1TXSfq" role="jymVt" />
    <node concept="312cEg" id="2CiAywAbUz6" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2CiAywAbUma" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
      <node concept="3Tm6S6" id="2CiAywAbV0R" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2CiAywAbTVS" role="jymVt" />
    <node concept="3uibUv" id="1vJkp1TXSeV" role="1zkMxy">
      <ref role="3uigEE" to="93vd:~NavBarModel" resolve="NavBarModel" />
    </node>
    <node concept="3clFbW" id="1vJkp1TYvgi" role="jymVt">
      <node concept="3cqZAl" id="1vJkp1TYvgj" role="3clF45" />
      <node concept="3Tm1VV" id="1vJkp1TYvgk" role="1B3o_S" />
      <node concept="3clFbS" id="1vJkp1TYvgm" role="3clF47">
        <node concept="XkiVB" id="1vJkp1TYvgo" role="3cqZAp">
          <ref role="37wK5l" to="93vd:~NavBarModel.&lt;init&gt;(com.intellij.openapi.project.Project)" resolve="NavBarModel" />
          <node concept="37vLTw" id="1vJkp1TYvgs" role="37wK5m">
            <ref role="3cqZAo" node="1vJkp1TYvgp" resolve="project" />
          </node>
        </node>
        <node concept="3clFbF" id="2CiAywAbVpX" role="3cqZAp">
          <node concept="37vLTI" id="2CiAywAbVGn" role="3clFbG">
            <node concept="37vLTw" id="2CiAywAbVpV" role="37vLTJ">
              <ref role="3cqZAo" node="2CiAywAbUz6" resolve="myProject" />
            </node>
            <node concept="2YIFZM" id="2CiAywAbUMn" role="37vLTx">
              <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="37vLTw" id="2CiAywAbVUf" role="37wK5m">
                <ref role="3cqZAo" node="1vJkp1TYvgp" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1vJkp1TYvgp" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1vJkp1TYvgr" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1vJkp1U0sSk" role="jymVt" />
    <node concept="3clFb_" id="1vJkp1U0t8r" role="jymVt">
      <property role="TrG5h" value="updateModel" />
      <node concept="3Tmbuc" id="1vJkp1U0t8s" role="1B3o_S" />
      <node concept="3cqZAl" id="1vJkp1U0t8u" role="3clF45" />
      <node concept="37vLTG" id="1vJkp1U0t8v" role="3clF46">
        <property role="TrG5h" value="psiElement" />
        <node concept="3uibUv" id="1vJkp1U0t8w" role="1tU5fm">
          <ref role="3uigEE" to="dj18:~PsiElement" resolve="PsiElement" />
        </node>
      </node>
      <node concept="3clFbS" id="1vJkp1U0t8x" role="3clF47" />
      <node concept="2AHcQZ" id="1vJkp1U0t8y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1vJkp1U0tIk" role="jymVt" />
    <node concept="3clFb_" id="1vJkp1U0twe" role="jymVt">
      <property role="TrG5h" value="updateModel" />
      <node concept="3Tmbuc" id="1vJkp1U0twf" role="1B3o_S" />
      <node concept="3cqZAl" id="1vJkp1U0twg" role="3clF45" />
      <node concept="3clFbS" id="1vJkp1U0twj" role="3clF47" />
      <node concept="2AHcQZ" id="1vJkp1U0twk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="1vJkp1U0upz" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1vJkp1U0upy" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~DataContext" resolve="DataContext" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1vJkp1TYvsd" role="jymVt" />
    <node concept="3clFb_" id="1vJkp1TXSsp" role="jymVt">
      <property role="TrG5h" value="updateModel" />
      <node concept="3Tm1VV" id="1vJkp1TXSsq" role="1B3o_S" />
      <node concept="3cqZAl" id="1vJkp1TXSss" role="3clF45" />
      <node concept="37vLTG" id="1vJkp1TXSst" role="3clF46">
        <property role="TrG5h" value="object" />
        <node concept="3uibUv" id="1vJkp1TXSsu" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="1vJkp1TXSsv" role="3clF47">
        <node concept="3cpWs8" id="1vJkp1TXTZX" role="3cqZAp">
          <node concept="3cpWsn" id="1vJkp1TXTZY" role="3cpWs9">
            <property role="TrG5h" value="instance" />
            <node concept="3uibUv" id="4kSwwtSAhwQ" role="1tU5fm">
              <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
            </node>
            <node concept="10Nm6u" id="4gibKcMxcf7" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbJ" id="5sOEwwECAoB" role="3cqZAp">
          <node concept="3clFbS" id="5sOEwwECAoD" role="3clFbx">
            <node concept="3clFbF" id="5sOEwwECBjD" role="3cqZAp">
              <node concept="37vLTI" id="5sOEwwECBql" role="3clFbG">
                <node concept="2OqwBi" id="5sOEwwECCvB" role="37vLTx">
                  <node concept="1eOMI4" id="5sOEwwECCAX" role="2Oq$k0">
                    <node concept="10QFUN" id="5sOEwwECCF7" role="1eOMHV">
                      <node concept="3uibUv" id="5sOEwwECCKa" role="10QFUM">
                        <ref role="3uigEE" node="2CiAywA8qPc" resolve="NetworkInstanceNavBarModel.Item" />
                      </node>
                      <node concept="37vLTw" id="5sOEwwECCoM" role="10QFUP">
                        <ref role="3cqZAo" node="1vJkp1TXSst" resolve="object" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5sOEwwECD1C" role="2OqNvi">
                    <ref role="37wK5l" node="2CiAywAciuT" resolve="getInstance" />
                  </node>
                </node>
                <node concept="37vLTw" id="5sOEwwECFv5" role="37vLTJ">
                  <ref role="3cqZAo" node="1vJkp1TXTZY" resolve="instance" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="5sOEwwECAWk" role="3clFbw">
            <node concept="3uibUv" id="5sOEwwECBcG" role="2ZW6by">
              <ref role="3uigEE" node="2CiAywA8qPc" resolve="NetworkInstanceNavBarModel.Item" />
            </node>
            <node concept="37vLTw" id="5sOEwwECABx" role="2ZW6bz">
              <ref role="3cqZAo" node="1vJkp1TXSst" resolve="object" />
            </node>
          </node>
          <node concept="3eNFk2" id="4gibKcMxdG1" role="3eNLev">
            <node concept="2ZW3vV" id="4gibKcMxdG2" role="3eO9$A">
              <node concept="3uibUv" id="2bCJJGg_DOf" role="2ZW6by">
                <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
              </node>
              <node concept="37vLTw" id="4gibKcMxdG4" role="2ZW6bz">
                <ref role="3cqZAo" node="1vJkp1TXSst" resolve="object" />
              </node>
            </node>
            <node concept="3clFbS" id="4gibKcMxdG5" role="3eOfB_">
              <node concept="3clFbF" id="4gibKcMxdG6" role="3cqZAp">
                <node concept="37vLTI" id="4gibKcMxdG7" role="3clFbG">
                  <node concept="37vLTw" id="4gibKcMxdG8" role="37vLTJ">
                    <ref role="3cqZAo" node="1vJkp1TXTZY" resolve="instance" />
                  </node>
                  <node concept="10QFUN" id="4gibKcMxdG9" role="37vLTx">
                    <node concept="3uibUv" id="4kSwwtSAhQK" role="10QFUM">
                      <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
                    </node>
                    <node concept="37vLTw" id="4gibKcMxdGb" role="10QFUP">
                      <ref role="3cqZAo" node="1vJkp1TXSst" resolve="object" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="5sOEwwECDu1" role="9aQIa">
            <node concept="3clFbS" id="5sOEwwECDu2" role="9aQI4">
              <node concept="3clFbF" id="5sOEwwECDY6" role="3cqZAp">
                <node concept="1rXfSq" id="5sOEwwECDY4" role="3clFbG">
                  <ref role="37wK5l" to="93vd:~NavBarModel.setModel(java.util.List)" resolve="setModel" />
                  <node concept="2YIFZM" id="5sOEwwECE7p" role="37wK5m">
                    <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="5sOEwwECDGD" role="3cqZAp" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1vJkp1TXY4j" role="3cqZAp">
          <node concept="3cpWsn" id="1vJkp1TXY4k" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="1vJkp1TXY3V" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="1vJkp1TYtKq" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
              </node>
            </node>
            <node concept="2ShNRf" id="1vJkp1TXY4l" role="33vP2m">
              <node concept="1pGfFk" id="1vJkp1TXY4m" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="1vJkp1TYuyP" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4gibKcMxbC2" role="3cqZAp">
          <node concept="3cpWsn" id="4gibKcMxbC3" role="3cpWs9">
            <property role="TrG5h" value="system" />
            <node concept="3uibUv" id="4gibKcMxbC4" role="1tU5fm">
              <ref role="3uigEE" to="2xsi:2SU8oJdH$Ob" resolve="SystemDeclaration" />
            </node>
            <node concept="10Nm6u" id="4gibKcMxcnx" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="2SP6YJBWva_" role="3cqZAp">
          <node concept="3cpWsn" id="2SP6YJBWvaA" role="3cpWs9">
            <property role="TrG5h" value="device" />
            <node concept="3uibUv" id="2SP6YJBWvx2" role="1tU5fm">
              <ref role="3uigEE" to="2xsi:2SU8oJdHTR3" resolve="DeviceDeclaration" />
            </node>
            <node concept="10Nm6u" id="2SP6YJBWvaC" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="4kSwwtSAj0V" role="3cqZAp">
          <node concept="3cpWsn" id="4kSwwtSAj0W" role="3cpWs9">
            <property role="TrG5h" value="container" />
            <node concept="3uibUv" id="4kSwwtSAj0n" role="1tU5fm">
              <ref role="3uigEE" to="2xsi:31Fn7oZJ7rQ" resolve="Declaration" />
            </node>
            <node concept="2OqwBi" id="4kSwwtSAj0X" role="33vP2m">
              <node concept="2OqwBi" id="4kSwwtSAj0Y" role="2Oq$k0">
                <node concept="37vLTw" id="4kSwwtSAj0Z" role="2Oq$k0">
                  <ref role="3cqZAo" node="1vJkp1TXTZY" resolve="instance" />
                </node>
                <node concept="liA8E" id="4kSwwtSAj10" role="2OqNvi">
                  <ref role="37wK5l" to="rk1n:4kSwwtS$t0Y" resolve="getRootInstance" />
                </node>
              </node>
              <node concept="liA8E" id="4kSwwtSAj11" role="2OqNvi">
                <ref role="37wK5l" to="rk1n:4kSwwtS$sVt" resolve="getDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4kSwwtS$wIC" role="3cqZAp">
          <node concept="3clFbS" id="4kSwwtS$wID" role="3clFbx">
            <node concept="3clFbF" id="4kSwwtS$wIE" role="3cqZAp">
              <node concept="37vLTI" id="4kSwwtS$wIF" role="3clFbG">
                <node concept="37vLTw" id="4kSwwtS$wIG" role="37vLTJ">
                  <ref role="3cqZAo" node="4gibKcMxbC3" resolve="system" />
                </node>
                <node concept="2OqwBi" id="4kSwwtS$wIH" role="37vLTx">
                  <node concept="0kSF2" id="4kSwwtS$wII" role="2Oq$k0">
                    <node concept="3uibUv" id="4kSwwtS$wIJ" role="0kSFW">
                      <ref role="3uigEE" to="2xsi:2SU8oJdH$Pn" resolve="ApplicationDeclaration" />
                    </node>
                    <node concept="37vLTw" id="4kSwwtSAj12" role="0kSFX">
                      <ref role="3cqZAo" node="4kSwwtSAj0W" resolve="container" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4kSwwtS$wIN" role="2OqNvi">
                    <ref role="37wK5l" to="2xsi:4gibKcMrfxf" resolve="getSytem" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="4kSwwtS$wIO" role="3clFbw">
            <node concept="3uibUv" id="4kSwwtS$wIP" role="2ZW6by">
              <ref role="3uigEE" to="2xsi:2SU8oJdH$Pn" resolve="ApplicationDeclaration" />
            </node>
            <node concept="37vLTw" id="4kSwwtSAj13" role="2ZW6bz">
              <ref role="3cqZAo" node="4kSwwtSAj0W" resolve="container" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4kSwwtS$wJt" role="3cqZAp">
          <node concept="3clFbS" id="4kSwwtS$wJu" role="3clFbx">
            <node concept="3clFbF" id="4kSwwtS$wJv" role="3cqZAp">
              <node concept="37vLTI" id="4kSwwtS$wJw" role="3clFbG">
                <node concept="37vLTw" id="4kSwwtS$wJx" role="37vLTJ">
                  <ref role="3cqZAo" node="2SP6YJBWvaA" resolve="device" />
                </node>
                <node concept="0kSF2" id="4kSwwtS$wJy" role="37vLTx">
                  <node concept="3uibUv" id="4kSwwtS$wJz" role="0kSFW">
                    <ref role="3uigEE" to="2xsi:2SU8oJdHTR3" resolve="DeviceDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="4kSwwtS$wJ$" role="0kSFX">
                    <node concept="0kSF2" id="4kSwwtS$wJ_" role="2Oq$k0">
                      <node concept="3uibUv" id="4kSwwtS$wJA" role="0kSFW">
                        <ref role="3uigEE" to="2xsi:2SU8oJdIdeb" resolve="ResourceDeclaration" />
                      </node>
                      <node concept="37vLTw" id="4kSwwtSAjxO" role="0kSFX">
                        <ref role="3cqZAo" node="4kSwwtSAj0W" resolve="container" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4kSwwtS$wJE" role="2OqNvi">
                      <ref role="37wK5l" to="2xsi:3MncU7wPy7U" resolve="getContainer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4kSwwtS$wJF" role="3cqZAp">
              <node concept="37vLTI" id="4kSwwtS$wJG" role="3clFbG">
                <node concept="2OqwBi" id="4kSwwtS$wJH" role="37vLTx">
                  <node concept="37vLTw" id="4kSwwtS$wJI" role="2Oq$k0">
                    <ref role="3cqZAo" node="2SP6YJBWvaA" resolve="device" />
                  </node>
                  <node concept="liA8E" id="4kSwwtS$wJJ" role="2OqNvi">
                    <ref role="37wK5l" to="2xsi:3MncU7wPdc5" resolve="getSystem" />
                  </node>
                </node>
                <node concept="37vLTw" id="4kSwwtS$wJK" role="37vLTJ">
                  <ref role="3cqZAo" node="4gibKcMxbC3" resolve="system" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="4kSwwtS$wJL" role="3clFbw">
            <node concept="3uibUv" id="4kSwwtS$wJM" role="2ZW6by">
              <ref role="3uigEE" to="2xsi:2SU8oJdIdeb" resolve="ResourceDeclaration" />
            </node>
            <node concept="37vLTw" id="4kSwwtSAjxk" role="2ZW6bz">
              <ref role="3cqZAo" node="4kSwwtSAj0W" resolve="container" />
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="1vJkp1TXYhk" role="3cqZAp">
          <node concept="3clFbS" id="1vJkp1TXYhm" role="2LFqv$">
            <node concept="3clFbF" id="1vJkp1TXZgW" role="3cqZAp">
              <node concept="2OqwBi" id="1vJkp1TY0mg" role="3clFbG">
                <node concept="37vLTw" id="1vJkp1TXZgV" role="2Oq$k0">
                  <ref role="3cqZAo" node="1vJkp1TXY4k" resolve="model" />
                </node>
                <node concept="liA8E" id="1vJkp1TY2fp" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="5sOEwwEBD7y" role="37wK5m">
                    <node concept="1pGfFk" id="5sOEwwEC5Eo" role="2ShVmc">
                      <ref role="37wK5l" node="2CiAywA8u11" resolve="NetworkInstanceNavBarModel.Item" />
                      <node concept="37vLTw" id="5sOEwwEC5N8" role="37wK5m">
                        <ref role="3cqZAo" node="1vJkp1TXTZY" resolve="instance" />
                      </node>
                      <node concept="37vLTw" id="5sOEwwEC5WF" role="37wK5m">
                        <ref role="3cqZAo" node="2CiAywAbUz6" resolve="myProject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1vJkp1TY3fI" role="3cqZAp">
              <node concept="37vLTI" id="1vJkp1TY3Ir" role="3clFbG">
                <node concept="2EnYce" id="2bCJJGgA6CD" role="37vLTx">
                  <node concept="0kSF2" id="4kSwwtSAjWf" role="2Oq$k0">
                    <node concept="3uibUv" id="4kSwwtSAjZj" role="0kSFW">
                      <ref role="3uigEE" to="rk1n:1QSEqLhV6fd" resolve="FunctionBlockInstance" />
                    </node>
                    <node concept="2OqwBi" id="1vJkp1TY43S" role="0kSFX">
                      <node concept="37vLTw" id="1vJkp1TY3TO" role="2Oq$k0">
                        <ref role="3cqZAo" node="1vJkp1TXTZY" resolve="instance" />
                      </node>
                      <node concept="liA8E" id="1vJkp1TY4de" role="2OqNvi">
                        <ref role="37wK5l" to="rk1n:4kSwwtS$sXF" resolve="getParent" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="4kSwwtSAkeL" role="2OqNvi">
                    <ref role="37wK5l" to="rk1n:4kSwwtS_Kkh" resolve="getParent" />
                  </node>
                </node>
                <node concept="37vLTw" id="1vJkp1TY3fG" role="37vLTJ">
                  <ref role="3cqZAo" node="1vJkp1TXTZY" resolve="instance" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="1vJkp1TXYNw" role="2$JKZa">
            <node concept="10Nm6u" id="1vJkp1TXYWE" role="3uHU7w" />
            <node concept="37vLTw" id="2bCJJGgA399" role="3uHU7B">
              <ref role="3cqZAo" node="1vJkp1TXTZY" resolve="instance" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2bCJJGgA2mC" role="3cqZAp" />
        <node concept="3clFbJ" id="2SP6YJBWwxB" role="3cqZAp">
          <node concept="3clFbS" id="2SP6YJBWwxC" role="3clFbx">
            <node concept="3clFbF" id="2SP6YJBWwxD" role="3cqZAp">
              <node concept="2OqwBi" id="2SP6YJBWwxE" role="3clFbG">
                <node concept="37vLTw" id="2SP6YJBWwxF" role="2Oq$k0">
                  <ref role="3cqZAo" node="1vJkp1TXY4k" resolve="model" />
                </node>
                <node concept="liA8E" id="2SP6YJBWwxG" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="2SP6YJBWwxH" role="37wK5m">
                    <node concept="1pGfFk" id="2SP6YJBWwxI" role="2ShVmc">
                      <ref role="37wK5l" node="2SP6YJBWpQA" resolve="NetworkInstanceNavBarModel.DeviceItem" />
                      <node concept="37vLTw" id="2SP6YJBWxKc" role="37wK5m">
                        <ref role="3cqZAo" node="2SP6YJBWvaA" resolve="device" />
                      </node>
                      <node concept="37vLTw" id="2SP6YJBWwxK" role="37wK5m">
                        <ref role="3cqZAo" node="2CiAywAbUz6" resolve="myProject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2SP6YJBWwxL" role="3clFbw">
            <node concept="10Nm6u" id="2SP6YJBWwxM" role="3uHU7w" />
            <node concept="37vLTw" id="2SP6YJBWxyW" role="3uHU7B">
              <ref role="3cqZAo" node="2SP6YJBWvaA" resolve="device" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3MncU7wOOO0" role="3cqZAp">
          <node concept="3clFbS" id="3MncU7wOOO2" role="3clFbx">
            <node concept="3clFbF" id="4gibKcMxgvB" role="3cqZAp">
              <node concept="2OqwBi" id="4gibKcMxhwo" role="3clFbG">
                <node concept="37vLTw" id="4gibKcMxgv_" role="2Oq$k0">
                  <ref role="3cqZAo" node="1vJkp1TXY4k" resolve="model" />
                </node>
                <node concept="liA8E" id="4gibKcMxjm0" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~ArrayList.add(java.lang.Object)" resolve="add" />
                  <node concept="2ShNRf" id="4gibKcMxjvh" role="37wK5m">
                    <node concept="1pGfFk" id="4gibKcMxkRx" role="2ShVmc">
                      <ref role="37wK5l" node="4gibKcMwOFD" resolve="NetworkInstanceNavBarModel.SystemItem" />
                      <node concept="37vLTw" id="4gibKcMxl0v" role="37wK5m">
                        <ref role="3cqZAo" node="4gibKcMxbC3" resolve="system" />
                      </node>
                      <node concept="37vLTw" id="4gibKcMxlds" role="37wK5m">
                        <ref role="3cqZAo" node="2CiAywAbUz6" resolve="myProject" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3MncU7wOPxw" role="3clFbw">
            <node concept="10Nm6u" id="3MncU7wOPOm" role="3uHU7w" />
            <node concept="37vLTw" id="3MncU7wOP2F" role="3uHU7B">
              <ref role="3cqZAo" node="4gibKcMxbC3" resolve="system" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4gibKcMwIYl" role="3cqZAp" />
        <node concept="3clFbF" id="1vJkp1TYnRH" role="3cqZAp">
          <node concept="2YIFZM" id="1vJkp1TY8ek" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.reverse(java.util.List)" resolve="reverse" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="37vLTw" id="1vJkp1TY8xX" role="37wK5m">
              <ref role="3cqZAo" node="1vJkp1TXY4k" resolve="model" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1vJkp1TY937" role="3cqZAp">
          <node concept="1rXfSq" id="1vJkp1TY935" role="3clFbG">
            <ref role="37wK5l" to="93vd:~NavBarModel.setModel(java.util.List)" resolve="setModel" />
            <node concept="37vLTw" id="1vJkp1TYojA" role="37wK5m">
              <ref role="3cqZAo" node="1vJkp1TXY4k" resolve="model" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1vJkp1TXSsw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2CiAywAbSqv" role="jymVt" />
    <node concept="312cEu" id="2CiAywA8qPc" role="jymVt">
      <property role="TrG5h" value="Item" />
      <node concept="312cEg" id="2CiAywA8tvK" role="jymVt">
        <property role="TrG5h" value="myInstance" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2CiAywAcjEw" role="1B3o_S" />
        <node concept="3uibUv" id="4kSwwtSAaKZ" role="1tU5fm">
          <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
        </node>
      </node>
      <node concept="312cEg" id="2CiAywAcjwF" role="jymVt">
        <property role="TrG5h" value="myProject" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2CiAywAcjKU" role="1B3o_S" />
        <node concept="3uibUv" id="2CiAywAcy3W" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="2tJIrI" id="2CiAywA8tZK" role="jymVt" />
      <node concept="3Tm1VV" id="2CiAywAc7BY" role="1B3o_S" />
      <node concept="3uibUv" id="2CiAywA8w8w" role="EKbjA">
        <ref role="3uigEE" to="dixw:~Navigatable" resolve="Navigatable" />
      </node>
      <node concept="3clFbW" id="2CiAywA8u11" role="jymVt">
        <node concept="3cqZAl" id="2CiAywA8u12" role="3clF45" />
        <node concept="3Tm1VV" id="2CiAywA8u13" role="1B3o_S" />
        <node concept="3clFbS" id="2CiAywA8u15" role="3clF47">
          <node concept="3clFbF" id="2CiAywA8u19" role="3cqZAp">
            <node concept="37vLTI" id="2CiAywA8u1b" role="3clFbG">
              <node concept="37vLTw" id="2CiAywA8u1i" role="37vLTx">
                <ref role="3cqZAo" node="2CiAywA8u18" resolve="instance" />
              </node>
              <node concept="37vLTw" id="2CiAywA8u$F" role="37vLTJ">
                <ref role="3cqZAo" node="2CiAywA8tvK" resolve="myInstance" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2CiAywAcxpB" role="3cqZAp">
            <node concept="37vLTI" id="2CiAywAcxNE" role="3clFbG">
              <node concept="37vLTw" id="2CiAywAcxVZ" role="37vLTx">
                <ref role="3cqZAo" node="2CiAywAciCo" resolve="project" />
              </node>
              <node concept="37vLTw" id="2CiAywAcxp_" role="37vLTJ">
                <ref role="3cqZAo" node="2CiAywAcjwF" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2CiAywA8u18" role="3clF46">
          <property role="TrG5h" value="instance" />
          <node concept="3uibUv" id="4kSwwtSAafq" role="1tU5fm">
            <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
          </node>
          <node concept="2AHcQZ" id="3MncU7wOOaT" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="2CiAywAciCo" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="2CiAywAciOO" role="1tU5fm">
            <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2CiAywA8u_X" role="jymVt" />
      <node concept="3clFb_" id="2CiAywA8wlO" role="jymVt">
        <property role="TrG5h" value="navigate" />
        <node concept="3Tm1VV" id="2CiAywA8wlP" role="1B3o_S" />
        <node concept="3cqZAl" id="2CiAywA8wlR" role="3clF45" />
        <node concept="37vLTG" id="2CiAywA8wlS" role="3clF46">
          <property role="TrG5h" value="requestFocus" />
          <node concept="10P_77" id="2CiAywA8wlT" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="2CiAywA8wlU" role="3clF47">
          <node concept="3clFbF" id="5sOEwwECPai" role="3cqZAp">
            <node concept="2OqwBi" id="5sOEwwECPjL" role="3clFbG">
              <node concept="2OqwBi" id="5sOEwwECPak" role="2Oq$k0">
                <node concept="37vLTw" id="5sOEwwECPal" role="2Oq$k0">
                  <ref role="3cqZAo" node="2CiAywAcjwF" resolve="myProject" />
                </node>
                <node concept="liA8E" id="5sOEwwECPam" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                </node>
              </node>
              <node concept="liA8E" id="5sOEwwECPxo" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                <node concept="1bVj0M" id="5sOEwwECPLh" role="37wK5m">
                  <node concept="3clFbS" id="5sOEwwECPLi" role="1bW5cS">
                    <node concept="3clFbF" id="2CiAywAbTeX" role="3cqZAp">
                      <node concept="2YIFZM" id="2CiAywAbWxx" role="3clFbG">
                        <ref role="37wK5l" node="2CiAywAbsXx" resolve="navigate" />
                        <ref role="1Pybhc" node="2CiAywA9Mz5" resolve="NetworkInstanceNavigationSupport" />
                        <node concept="37vLTw" id="2CiAywAbWxy" role="37wK5m">
                          <ref role="3cqZAo" node="2CiAywAcjwF" resolve="myProject" />
                        </node>
                        <node concept="37vLTw" id="2CiAywAbWQK" role="37wK5m">
                          <ref role="3cqZAo" node="2CiAywA8tvK" resolve="myInstance" />
                        </node>
                        <node concept="37vLTw" id="2CiAywAbXcr" role="37wK5m">
                          <ref role="3cqZAo" node="2CiAywA8wlS" resolve="requestFocus" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2CiAywA8wlV" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2CiAywA8xM2" role="jymVt" />
      <node concept="3clFb_" id="2CiAywA8wlW" role="jymVt">
        <property role="TrG5h" value="canNavigate" />
        <node concept="3Tm1VV" id="2CiAywA8wlX" role="1B3o_S" />
        <node concept="10P_77" id="2CiAywA8wlZ" role="3clF45" />
        <node concept="3clFbS" id="2CiAywA8wm0" role="3clF47">
          <node concept="3clFbF" id="5sOEwwECKWm" role="3cqZAp">
            <node concept="2OqwBi" id="5sOEwwECN7M" role="3clFbG">
              <node concept="2ShNRf" id="5sOEwwECLh3" role="2Oq$k0">
                <node concept="1pGfFk" id="5sOEwwECMT_" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                  <node concept="2OqwBi" id="5sOEwwECKkd" role="37wK5m">
                    <node concept="37vLTw" id="5sOEwwECJWQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="2CiAywAcjwF" resolve="myProject" />
                    </node>
                    <node concept="liA8E" id="5sOEwwECKF1" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5sOEwwECNjL" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
                <node concept="1bVj0M" id="5sOEwwECON2" role="37wK5m">
                  <node concept="3clFbS" id="5sOEwwECON3" role="1bW5cS">
                    <node concept="3clFbF" id="5sOEwwECOVt" role="3cqZAp">
                      <node concept="2YIFZM" id="2CiAywAbZAl" role="3clFbG">
                        <ref role="37wK5l" node="2CiAywAbYd$" resolve="canNavigate" />
                        <ref role="1Pybhc" node="2CiAywA9Mz5" resolve="NetworkInstanceNavigationSupport" />
                        <node concept="37vLTw" id="2CiAywAbZPj" role="37wK5m">
                          <ref role="3cqZAo" node="2CiAywAcjwF" resolve="myProject" />
                        </node>
                        <node concept="37vLTw" id="2CiAywAc0a4" role="37wK5m">
                          <ref role="3cqZAo" node="2CiAywA8tvK" resolve="myInstance" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2CiAywA8wm1" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2CiAywA8wP9" role="jymVt" />
      <node concept="3clFb_" id="2CiAywA8wTQ" role="jymVt">
        <property role="TrG5h" value="canNavigateToSource" />
        <node concept="3Tm1VV" id="2CiAywA8wTR" role="1B3o_S" />
        <node concept="10P_77" id="2CiAywA8wTT" role="3clF45" />
        <node concept="3clFbS" id="2CiAywA8wTU" role="3clF47">
          <node concept="3clFbF" id="2CiAywAc0_E" role="3cqZAp">
            <node concept="1rXfSq" id="2CiAywAc0_B" role="3clFbG">
              <ref role="37wK5l" node="2CiAywA8wlW" resolve="canNavigate" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="2CiAywA8wTV" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="2CiAywAck5X" role="jymVt" />
      <node concept="3clFb_" id="2CiAywAciuT" role="jymVt">
        <property role="TrG5h" value="getInstance" />
        <node concept="3uibUv" id="4kSwwtSAhZc" role="3clF45">
          <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
        </node>
        <node concept="3Tm1VV" id="2CiAywAciuV" role="1B3o_S" />
        <node concept="3clFbS" id="2CiAywAciuW" role="3clF47">
          <node concept="3clFbF" id="2CiAywAciuX" role="3cqZAp">
            <node concept="37vLTw" id="2CiAywAckpN" role="3clFbG">
              <ref role="3cqZAo" node="2CiAywA8tvK" resolve="myInstance" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2CiAywAckBO" role="jymVt">
        <property role="TrG5h" value="getProject" />
        <node concept="3uibUv" id="2CiAywAckBP" role="3clF45">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="3Tm1VV" id="2CiAywAckBQ" role="1B3o_S" />
        <node concept="3clFbS" id="2CiAywAckBR" role="3clF47">
          <node concept="3clFbF" id="2CiAywAckBS" role="3cqZAp">
            <node concept="37vLTw" id="2CiAywAckVU" role="3clFbG">
              <ref role="3cqZAo" node="2CiAywAcjwF" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="312cEu" id="4gibKcMwOFv" role="jymVt">
      <property role="TrG5h" value="SystemItem" />
      <node concept="312cEg" id="4gibKcMwOFw" role="jymVt">
        <property role="TrG5h" value="mySystem" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="4gibKcMwOFx" role="1B3o_S" />
        <node concept="3uibUv" id="4gibKcMwQ4c" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:2SU8oJdH$Ob" resolve="SystemDeclaration" />
        </node>
      </node>
      <node concept="312cEg" id="4gibKcMwOFz" role="jymVt">
        <property role="TrG5h" value="myProject" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="4gibKcMwOF$" role="1B3o_S" />
        <node concept="3uibUv" id="4gibKcMwOF_" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="2tJIrI" id="4gibKcMwOFA" role="jymVt" />
      <node concept="3Tm1VV" id="4gibKcMwOFB" role="1B3o_S" />
      <node concept="3uibUv" id="4gibKcMwOFC" role="EKbjA">
        <ref role="3uigEE" to="dixw:~Navigatable" resolve="Navigatable" />
      </node>
      <node concept="3clFbW" id="4gibKcMwOFD" role="jymVt">
        <node concept="3cqZAl" id="4gibKcMwOFE" role="3clF45" />
        <node concept="3Tm1VV" id="4gibKcMwOFF" role="1B3o_S" />
        <node concept="3clFbS" id="4gibKcMwOFG" role="3clF47">
          <node concept="3clFbF" id="4gibKcMwOFH" role="3cqZAp">
            <node concept="37vLTI" id="4gibKcMwOFI" role="3clFbG">
              <node concept="37vLTw" id="4gibKcMwOFJ" role="37vLTx">
                <ref role="3cqZAo" node="4gibKcMwOFP" resolve="system" />
              </node>
              <node concept="37vLTw" id="4gibKcMwOFK" role="37vLTJ">
                <ref role="3cqZAo" node="4gibKcMwOFw" resolve="mySystem" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4gibKcMwOFL" role="3cqZAp">
            <node concept="37vLTI" id="4gibKcMwOFM" role="3clFbG">
              <node concept="37vLTw" id="4gibKcMwOFN" role="37vLTx">
                <ref role="3cqZAo" node="4gibKcMwOFR" resolve="project" />
              </node>
              <node concept="37vLTw" id="4gibKcMwOFO" role="37vLTJ">
                <ref role="3cqZAo" node="4gibKcMwOFz" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="4gibKcMwOFP" role="3clF46">
          <property role="TrG5h" value="system" />
          <node concept="3uibUv" id="4gibKcMwQF9" role="1tU5fm">
            <ref role="3uigEE" to="2xsi:2SU8oJdH$Ob" resolve="SystemDeclaration" />
          </node>
          <node concept="2AHcQZ" id="3MncU7wONTY" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="4gibKcMwOFR" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="4gibKcMwOFS" role="1tU5fm">
            <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="4gibKcMwOFT" role="jymVt" />
      <node concept="3clFb_" id="4gibKcMwOFU" role="jymVt">
        <property role="TrG5h" value="navigate" />
        <node concept="3Tm1VV" id="4gibKcMwOFV" role="1B3o_S" />
        <node concept="3cqZAl" id="4gibKcMwOFW" role="3clF45" />
        <node concept="37vLTG" id="4gibKcMwOFX" role="3clF46">
          <property role="TrG5h" value="requestFocus" />
          <node concept="10P_77" id="4gibKcMwOFY" role="1tU5fm" />
        </node>
        <node concept="3clFbS" id="4gibKcMwOFZ" role="3clF47">
          <node concept="3clFbF" id="4gibKcMx8nK" role="3cqZAp">
            <node concept="2OqwBi" id="4gibKcMx8nL" role="3clFbG">
              <node concept="2ShNRf" id="4gibKcMx8nM" role="2Oq$k0">
                <node concept="1pGfFk" id="4gibKcMx8nN" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                  <node concept="2OqwBi" id="4gibKcMx8nO" role="37wK5m">
                    <node concept="37vLTw" id="4gibKcMx8nP" role="2Oq$k0">
                      <ref role="3cqZAo" node="4gibKcMwOFz" resolve="myProject" />
                    </node>
                    <node concept="liA8E" id="4gibKcMx8nQ" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4gibKcMx8nR" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
                <node concept="1bVj0M" id="4gibKcMx8nS" role="37wK5m">
                  <node concept="3clFbS" id="4gibKcMx8nT" role="1bW5cS">
                    <node concept="3clFbF" id="4gibKcMx8nU" role="3cqZAp">
                      <node concept="2OqwBi" id="4gibKcMx8nV" role="3clFbG">
                        <node concept="2YIFZM" id="4gibKcMx8nW" role="2Oq$k0">
                          <ref role="1Pybhc" to="kz9k:~NavigationSupport" resolve="NavigationSupport" />
                          <ref role="37wK5l" to="kz9k:~NavigationSupport.getInstance()" resolve="getInstance" />
                        </node>
                        <node concept="liA8E" id="4gibKcMx8nX" role="2OqNvi">
                          <ref role="37wK5l" to="kz9k:~NavigationSupport.openNode(jetbrains.mps.project.Project,org.jetbrains.mps.openapi.model.SNode,boolean,boolean)" resolve="openNode" />
                          <node concept="37vLTw" id="4gibKcMx8nY" role="37wK5m">
                            <ref role="3cqZAo" node="4gibKcMwOFz" resolve="myProject" />
                          </node>
                          <node concept="1rXfSq" id="4gibKcMx8nZ" role="37wK5m">
                            <ref role="37wK5l" node="4gibKcMwYTe" resolve="getSpec" />
                          </node>
                          <node concept="37vLTw" id="4gibKcMx8o0" role="37wK5m">
                            <ref role="3cqZAo" node="4gibKcMwOFX" resolve="requestFocus" />
                          </node>
                          <node concept="3clFbT" id="4gibKcMx8o1" role="37wK5m">
                            <property role="3clFbU" value="true" />
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
        <node concept="2AHcQZ" id="4gibKcMwOGd" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4gibKcMwOGe" role="jymVt" />
      <node concept="3clFb_" id="4gibKcMwOGf" role="jymVt">
        <property role="TrG5h" value="canNavigate" />
        <node concept="3Tm1VV" id="4gibKcMwOGg" role="1B3o_S" />
        <node concept="10P_77" id="4gibKcMwOGh" role="3clF45" />
        <node concept="3clFbS" id="4gibKcMwOGi" role="3clF47">
          <node concept="3clFbF" id="4gibKcMwOGj" role="3cqZAp">
            <node concept="2OqwBi" id="4gibKcMwOGk" role="3clFbG">
              <node concept="2ShNRf" id="4gibKcMwOGl" role="2Oq$k0">
                <node concept="1pGfFk" id="4gibKcMwOGm" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                  <node concept="2OqwBi" id="4gibKcMwOGn" role="37wK5m">
                    <node concept="37vLTw" id="4gibKcMwOGo" role="2Oq$k0">
                      <ref role="3cqZAo" node="4gibKcMwOFz" resolve="myProject" />
                    </node>
                    <node concept="liA8E" id="4gibKcMwOGp" role="2OqNvi">
                      <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="4gibKcMwOGq" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
                <node concept="1bVj0M" id="4gibKcMwOGr" role="37wK5m">
                  <node concept="3clFbS" id="4gibKcMwOGs" role="1bW5cS">
                    <node concept="3clFbF" id="4gibKcMx6Gy" role="3cqZAp">
                      <node concept="3y3z36" id="4gibKcMx96u" role="3clFbG">
                        <node concept="10Nm6u" id="4gibKcMx9w4" role="3uHU7w" />
                        <node concept="1rXfSq" id="4gibKcMx75$" role="3uHU7B">
                          <ref role="37wK5l" node="4gibKcMwYTe" resolve="getSpec" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4gibKcMwOGx" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4gibKcMwOGy" role="jymVt" />
      <node concept="3clFb_" id="4gibKcMwYTe" role="jymVt">
        <property role="TrG5h" value="getSpec" />
        <node concept="3clFbS" id="4gibKcMwYTh" role="3clF47">
          <node concept="3clFbJ" id="4gibKcMwZ9s" role="3cqZAp">
            <node concept="3clFbS" id="4gibKcMwZ9t" role="3clFbx">
              <node concept="3cpWs8" id="4gibKcMwZ9u" role="3cqZAp">
                <node concept="3cpWsn" id="4gibKcMwZ9v" role="3cpWs9">
                  <property role="TrG5h" value="targetNode" />
                  <node concept="3Tqbb2" id="4gibKcMwZ9w" role="1tU5fm">
                    <ref role="ehGHo" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
                  </node>
                  <node concept="1PxgMI" id="4gibKcMx22j" role="33vP2m">
                    <node concept="chp4Y" id="4gibKcMx2Dg" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="4gibKcMwZ9x" role="1m5AlR">
                      <node concept="1eOMI4" id="4gibKcMwZ9y" role="2Oq$k0">
                        <node concept="10QFUN" id="4gibKcMwZ9z" role="1eOMHV">
                          <node concept="3uibUv" id="4gibKcMwZ9$" role="10QFUM">
                            <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="HasNode" />
                          </node>
                          <node concept="37vLTw" id="4gibKcMx0Rx" role="10QFUP">
                            <ref role="3cqZAo" node="4gibKcMwOFw" resolve="mySystem" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="4gibKcMwZ9A" role="2OqNvi">
                        <ref role="37wK5l" to="go3h:1JYTWWzyU9A" resolve="getNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="4gibKcMwZ9B" role="3cqZAp" />
              <node concept="3cpWs8" id="4gibKcMwZ9C" role="3cqZAp">
                <node concept="3cpWsn" id="4gibKcMwZ9D" role="3cpWs9">
                  <property role="TrG5h" value="element" />
                  <node concept="3uibUv" id="4gibKcMwZ9E" role="1tU5fm">
                    <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                  </node>
                  <node concept="2ShNRf" id="4gibKcMwZ9F" role="33vP2m">
                    <node concept="1pGfFk" id="4gibKcMwZ9G" role="2ShVmc">
                      <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                      <node concept="10M0yZ" id="4gibKcMwZ9H" role="37wK5m">
                        <ref role="1PxDUh" to="de0p:7Y8B9wpd$4e" resolve="HeaderedNodeEditor" />
                        <ref role="3cqZAo" to="de0p:7Y8B9wpkNGr" resolve="PROJECTION_DATA_KEY" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="4gibKcMwZ9I" role="3cqZAp" />
              <node concept="3clFbF" id="4gibKcMwZ9L" role="3cqZAp">
                <node concept="2OqwBi" id="4gibKcMwZ9M" role="3clFbG">
                  <node concept="37vLTw" id="4gibKcMwZ9N" role="2Oq$k0">
                    <ref role="3cqZAo" node="4gibKcMwZ9D" resolve="element" />
                  </node>
                  <node concept="liA8E" id="4gibKcMwZ9O" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                    <node concept="10M0yZ" id="4gibKcMwZ9P" role="37wK5m">
                      <ref role="3cqZAo" to="de0p:7Y8B9wpj48Z" resolve="CONTROLLER_ID_KEY" />
                      <ref role="1PxDUh" to="de0p:7Y8B9wpd$4e" resolve="HeaderedNodeEditor" />
                    </node>
                    <node concept="Xl_RD" id="4gibKcMwZ9Q" role="37wK5m">
                      <property role="Xl_RC" value="Overview" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="4gibKcMwZ9R" role="3cqZAp">
                <node concept="2OqwBi" id="4gibKcMwZ9S" role="3clFbG">
                  <node concept="37vLTw" id="4gibKcMwZ9T" role="2Oq$k0">
                    <ref role="3cqZAo" node="4gibKcMwZ9D" resolve="element" />
                  </node>
                  <node concept="liA8E" id="4gibKcMwZ9U" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                    <node concept="10M0yZ" id="4gibKcMwZ9V" role="37wK5m">
                      <ref role="3cqZAo" to="de0p:7Y8B9wpllVQ" resolve="PROJECTION_NAME_KEY" />
                      <ref role="1PxDUh" to="de0p:7Y8B9wpd$4e" resolve="HeaderedNodeEditor" />
                    </node>
                    <node concept="Xl_RD" id="4gibKcMx34u" role="37wK5m">
                      <property role="Xl_RC" value="Overview" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="4gibKcMwZaE" role="3cqZAp" />
              <node concept="3cpWs8" id="4gibKcMwZaF" role="3cqZAp">
                <node concept="3cpWsn" id="4gibKcMwZaG" role="3cpWs9">
                  <property role="TrG5h" value="specs" />
                  <node concept="3uibUv" id="4gibKcMwZaH" role="1tU5fm">
                    <ref role="3uigEE" to="de0p:2hWn4IdUWjD" resolve="ProjectHeaderedEditorSpecs" />
                  </node>
                  <node concept="2YIFZM" id="4gibKcMwZaI" role="33vP2m">
                    <ref role="1Pybhc" to="de0p:2hWn4IdUWjD" resolve="ProjectHeaderedEditorSpecs" />
                    <ref role="37wK5l" to="de0p:2hWn4IdWIEf" resolve="getInstance" />
                    <node concept="37vLTw" id="4gibKcMx5GU" role="37wK5m">
                      <ref role="3cqZAo" node="4gibKcMwOFz" resolve="myProject" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4gibKcMwZaK" role="3cqZAp">
                <node concept="2OqwBi" id="4gibKcMwZaL" role="3cqZAk">
                  <node concept="37vLTw" id="4gibKcMwZaM" role="2Oq$k0">
                    <ref role="3cqZAo" node="4gibKcMwZaG" resolve="specs" />
                  </node>
                  <node concept="liA8E" id="4gibKcMwZaN" role="2OqNvi">
                    <ref role="37wK5l" to="de0p:2hWn4IdW8g3" resolve="getSpec" />
                    <node concept="37vLTw" id="4gibKcMwZaO" role="37wK5m">
                      <ref role="3cqZAo" node="4gibKcMwZ9v" resolve="targetNode" />
                    </node>
                    <node concept="2OqwBi" id="4gibKcMwZaP" role="37wK5m">
                      <node concept="2ShNRf" id="4gibKcMwZaQ" role="2Oq$k0">
                        <node concept="1pGfFk" id="4gibKcMwZaR" role="2ShVmc">
                          <ref role="37wK5l" to="se19:~XMLOutputter.&lt;init&gt;()" resolve="XMLOutputter" />
                        </node>
                      </node>
                      <node concept="liA8E" id="4gibKcMwZaS" role="2OqNvi">
                        <ref role="37wK5l" to="se19:~XMLOutputter.outputString(org.jdom.Element)" resolve="outputString" />
                        <node concept="37vLTw" id="4gibKcMwZaT" role="37wK5m">
                          <ref role="3cqZAo" node="4gibKcMwZ9D" resolve="element" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="4gibKcMwZaU" role="3clFbw">
              <node concept="3uibUv" id="4gibKcMwZaV" role="2ZW6by">
                <ref role="3uigEE" to="go3h:1JYTWWzyU94" resolve="HasNode" />
              </node>
              <node concept="37vLTw" id="4gibKcMx0yv" role="2ZW6bz">
                <ref role="3cqZAo" node="4gibKcMwOFw" resolve="mySystem" />
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4gibKcMwZbi" role="3cqZAp">
            <node concept="10Nm6u" id="4gibKcMwZbj" role="3cqZAk" />
          </node>
        </node>
        <node concept="3Tm6S6" id="4gibKcMwR_E" role="1B3o_S" />
        <node concept="3Tqbb2" id="4gibKcMwRTD" role="3clF45">
          <ref role="ehGHo" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
        </node>
      </node>
      <node concept="2tJIrI" id="4gibKcMwRiQ" role="jymVt" />
      <node concept="3clFb_" id="4gibKcMwOGz" role="jymVt">
        <property role="TrG5h" value="canNavigateToSource" />
        <node concept="3Tm1VV" id="4gibKcMwOG$" role="1B3o_S" />
        <node concept="10P_77" id="4gibKcMwOG_" role="3clF45" />
        <node concept="3clFbS" id="4gibKcMwOGA" role="3clF47">
          <node concept="3clFbF" id="4gibKcMwOGB" role="3cqZAp">
            <node concept="1rXfSq" id="4gibKcMwOGC" role="3clFbG">
              <ref role="37wK5l" node="4gibKcMwOGf" resolve="canNavigate" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="4gibKcMwOGD" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="4gibKcMwOGE" role="jymVt" />
      <node concept="3clFb_" id="4gibKcMwOGF" role="jymVt">
        <property role="TrG5h" value="getSystem" />
        <node concept="3uibUv" id="4gibKcMx9Et" role="3clF45">
          <ref role="3uigEE" to="2xsi:2SU8oJdH$Ob" resolve="SystemDeclaration" />
        </node>
        <node concept="3Tm1VV" id="4gibKcMwOGH" role="1B3o_S" />
        <node concept="3clFbS" id="4gibKcMwOGI" role="3clF47">
          <node concept="3clFbF" id="4gibKcMwOGJ" role="3cqZAp">
            <node concept="37vLTw" id="4gibKcMwOGK" role="3clFbG">
              <ref role="3cqZAo" node="4gibKcMwOFw" resolve="mySystem" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="4gibKcMwOGL" role="jymVt">
        <property role="TrG5h" value="getProject" />
        <node concept="3uibUv" id="4gibKcMwOGM" role="3clF45">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="3Tm1VV" id="4gibKcMwOGN" role="1B3o_S" />
        <node concept="3clFbS" id="4gibKcMwOGO" role="3clF47">
          <node concept="3clFbF" id="4gibKcMwOGP" role="3cqZAp">
            <node concept="37vLTw" id="4gibKcMwOGQ" role="3clFbG">
              <ref role="3cqZAo" node="4gibKcMwOFz" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SP6YJBWu09" role="jymVt" />
    <node concept="312cEu" id="2SP6YJBWpQs" role="jymVt">
      <property role="TrG5h" value="DeviceItem" />
      <node concept="312cEg" id="2SP6YJBWpQt" role="jymVt">
        <property role="TrG5h" value="myDevice" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2SP6YJBWpQu" role="1B3o_S" />
        <node concept="3uibUv" id="2SP6YJBWrDW" role="1tU5fm">
          <ref role="3uigEE" to="2xsi:2SU8oJdHTR3" resolve="DeviceDeclaration" />
        </node>
      </node>
      <node concept="312cEg" id="2SP6YJBWpQw" role="jymVt">
        <property role="TrG5h" value="myProject" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="2SP6YJBWpQx" role="1B3o_S" />
        <node concept="3uibUv" id="2SP6YJBWpQy" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="2tJIrI" id="2SP6YJBWpQz" role="jymVt" />
      <node concept="3Tm1VV" id="2SP6YJBWpQ$" role="1B3o_S" />
      <node concept="3clFbW" id="2SP6YJBWpQA" role="jymVt">
        <node concept="3cqZAl" id="2SP6YJBWpQB" role="3clF45" />
        <node concept="3Tm1VV" id="2SP6YJBWpQC" role="1B3o_S" />
        <node concept="3clFbS" id="2SP6YJBWpQD" role="3clF47">
          <node concept="3clFbF" id="2SP6YJBWpQE" role="3cqZAp">
            <node concept="37vLTI" id="2SP6YJBWpQF" role="3clFbG">
              <node concept="37vLTw" id="2SP6YJBWpQG" role="37vLTx">
                <ref role="3cqZAo" node="2SP6YJBWpQM" resolve="device" />
              </node>
              <node concept="37vLTw" id="2SP6YJBWpQH" role="37vLTJ">
                <ref role="3cqZAo" node="2SP6YJBWpQt" resolve="myDevice" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="2SP6YJBWpQI" role="3cqZAp">
            <node concept="37vLTI" id="2SP6YJBWpQJ" role="3clFbG">
              <node concept="37vLTw" id="2SP6YJBWpQK" role="37vLTx">
                <ref role="3cqZAo" node="2SP6YJBWpQP" resolve="project" />
              </node>
              <node concept="37vLTw" id="2SP6YJBWpQL" role="37vLTJ">
                <ref role="3cqZAo" node="2SP6YJBWpQw" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="2SP6YJBWpQM" role="3clF46">
          <property role="TrG5h" value="device" />
          <node concept="3uibUv" id="2SP6YJBWrYf" role="1tU5fm">
            <ref role="3uigEE" to="2xsi:2SU8oJdHTR3" resolve="DeviceDeclaration" />
          </node>
          <node concept="2AHcQZ" id="2SP6YJBWpQO" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="2SP6YJBWpQP" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="2SP6YJBWpQQ" role="1tU5fm">
            <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="2SP6YJBWpSC" role="jymVt" />
      <node concept="3clFb_" id="2SP6YJBWpSD" role="jymVt">
        <property role="TrG5h" value="getDevice" />
        <node concept="3uibUv" id="2SP6YJBWtHt" role="3clF45">
          <ref role="3uigEE" to="2xsi:2SU8oJdHTR3" resolve="DeviceDeclaration" />
        </node>
        <node concept="3Tm1VV" id="2SP6YJBWpSF" role="1B3o_S" />
        <node concept="3clFbS" id="2SP6YJBWpSG" role="3clF47">
          <node concept="3clFbF" id="2SP6YJBWpSH" role="3cqZAp">
            <node concept="37vLTw" id="2SP6YJBWpSI" role="3clFbG">
              <ref role="3cqZAo" node="2SP6YJBWpQt" resolve="myDevice" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="2SP6YJBWpSJ" role="jymVt">
        <property role="TrG5h" value="getProject" />
        <node concept="3uibUv" id="2SP6YJBWpSK" role="3clF45">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="3Tm1VV" id="2SP6YJBWpSL" role="1B3o_S" />
        <node concept="3clFbS" id="2SP6YJBWpSM" role="3clF47">
          <node concept="3clFbF" id="2SP6YJBWpSN" role="3cqZAp">
            <node concept="37vLTw" id="2SP6YJBWpSO" role="3clFbG">
              <ref role="3cqZAo" node="2SP6YJBWpQw" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2CiAywAbSqw" role="jymVt" />
    <node concept="3Tm1VV" id="2CiAywAbVcC" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1_XvODPJGLn">
    <property role="TrG5h" value="RichAlgorithmsProjectionController" />
    <node concept="2tJIrI" id="1_XvODPJGSW" role="jymVt" />
    <node concept="312cEg" id="1_XvODPJH2i" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1_XvODPJH2j" role="1B3o_S" />
      <node concept="3Tqbb2" id="1_XvODPJH2k" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="1_XvODPJH2l" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1_XvODPJH2m" role="1B3o_S" />
      <node concept="3uibUv" id="1_XvODPJH2n" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2tJIrI" id="1_XvODPJH2o" role="jymVt" />
    <node concept="3clFbW" id="1_XvODPJH2p" role="jymVt">
      <node concept="3cqZAl" id="1_XvODPJH2q" role="3clF45" />
      <node concept="3Tm1VV" id="1_XvODPJH2r" role="1B3o_S" />
      <node concept="3clFbS" id="1_XvODPJH2s" role="3clF47">
        <node concept="3clFbF" id="1_XvODPJH2t" role="3cqZAp">
          <node concept="37vLTI" id="1_XvODPJH2u" role="3clFbG">
            <node concept="37vLTw" id="1_XvODPJH2v" role="37vLTx">
              <ref role="3cqZAo" node="1_XvODPJH2_" resolve="node" />
            </node>
            <node concept="37vLTw" id="1_XvODPJH2w" role="37vLTJ">
              <ref role="3cqZAo" node="1_XvODPJH2i" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1_XvODPJH2x" role="3cqZAp">
          <node concept="37vLTI" id="1_XvODPJH2y" role="3clFbG">
            <node concept="37vLTw" id="1_XvODPJH2z" role="37vLTx">
              <ref role="3cqZAo" node="1_XvODPJH2B" resolve="project" />
            </node>
            <node concept="37vLTw" id="1_XvODPJH2$" role="37vLTJ">
              <ref role="3cqZAo" node="1_XvODPJH2l" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1_XvODPJH2_" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1_XvODPJH2A" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="1_XvODPJH2B" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1_XvODPJH2C" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_XvODPJH2D" role="jymVt" />
    <node concept="3clFb_" id="1_XvODPJH2E" role="jymVt">
      <property role="TrG5h" value="getId" />
      <node concept="3Tm1VV" id="1_XvODPJH2F" role="1B3o_S" />
      <node concept="3uibUv" id="1_XvODPJH2G" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="1_XvODPJH2H" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1_XvODPJH2I" role="3clF47">
        <node concept="3clFbF" id="1_XvODPJH2J" role="3cqZAp">
          <node concept="Xl_RD" id="1_XvODPJH2K" role="3clFbG">
            <property role="Xl_RC" value="Algorithm" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1_XvODPJH2L" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1_XvODPJH2M" role="jymVt" />
    <node concept="3clFb_" id="1_XvODPJH2N" role="jymVt">
      <property role="TrG5h" value="createProjection" />
      <node concept="3Tm1VV" id="1_XvODPJH2O" role="1B3o_S" />
      <node concept="3uibUv" id="1_XvODPJH2P" role="3clF45">
        <ref role="3uigEE" to="de0p:7Y8B9wpl75t" resolve="HeaderedEditorProjection" />
      </node>
      <node concept="37vLTG" id="1_XvODPJH2Q" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="1_XvODPJH2R" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="1_XvODPJH2S" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1_XvODPJH2T" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="1_XvODPJH2U" role="3clF47">
        <node concept="3cpWs8" id="1_XvODPJXQN" role="3cqZAp">
          <node concept="3cpWsn" id="1_XvODPJXQQ" role="3cpWs9">
            <property role="TrG5h" value="algorithm" />
            <node concept="3Tqbb2" id="1_XvODPKa3F" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
            </node>
            <node concept="10Nm6u" id="1_XvODPJZpU" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbF" id="1_XvODPJN5t" role="3cqZAp">
          <node concept="2OqwBi" id="1_XvODPJOgY" role="3clFbG">
            <node concept="2OqwBi" id="1_XvODPJN_2" role="2Oq$k0">
              <node concept="37vLTw" id="1_XvODPJN5r" role="2Oq$k0">
                <ref role="3cqZAo" node="1_XvODPJH2l" resolve="myProject" />
              </node>
              <node concept="liA8E" id="1_XvODPJO9W" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="1_XvODPJOxI" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="1_XvODPJOLz" role="37wK5m">
                <node concept="3clFbS" id="1_XvODPJOL$" role="1bW5cS">
                  <node concept="3clFbF" id="1_XvODPJP3V" role="3cqZAp">
                    <node concept="37vLTI" id="1_XvODPJYtG" role="3clFbG">
                      <node concept="37vLTw" id="1_XvODPJZ6j" role="37vLTJ">
                        <ref role="3cqZAo" node="1_XvODPJXQQ" resolve="algorithm" />
                      </node>
                      <node concept="2OqwBi" id="1_XvODPJReq" role="37vLTx">
                        <node concept="2OqwBi" id="1_XvODPJPts" role="2Oq$k0">
                          <node concept="37vLTw" id="1_XvODPJP3U" role="2Oq$k0">
                            <ref role="3cqZAo" node="1_XvODPJH2i" resolve="myNode" />
                          </node>
                          <node concept="3Tsc0h" id="1_XvODPJPTq" role="2OqNvi">
                            <ref role="3TtcxE" to="xiqq:3HBlKeoZ0WV" resolve="algorithms" />
                          </node>
                        </node>
                        <node concept="1z4cxt" id="1_XvODPJTtn" role="2OqNvi">
                          <node concept="1bVj0M" id="1_XvODPJTtp" role="23t8la">
                            <node concept="3clFbS" id="1_XvODPJTtq" role="1bW5cS">
                              <node concept="3clFbJ" id="1_XvODPKE8D" role="3cqZAp">
                                <node concept="3clFbS" id="1_XvODPKE8F" role="3clFbx">
                                  <node concept="3cpWs6" id="1_XvODPKFMk" role="3cqZAp">
                                    <node concept="2OqwBi" id="1_XvODPKIfd" role="3cqZAk">
                                      <node concept="2OqwBi" id="1_XvODPKGFA" role="2Oq$k0">
                                        <node concept="37vLTw" id="1_XvODPKFXX" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1_XvODPJTtr" resolve="it" />
                                        </node>
                                        <node concept="3TrcHB" id="1_XvODPKH2g" role="2OqNvi">
                                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                        </node>
                                      </node>
                                      <node concept="17RlXB" id="1_XvODPKItU" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="1_XvODPKEUg" role="3clFbw">
                                  <node concept="37vLTw" id="1_XvODPKEsq" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1_XvODPJH2Q" resolve="name" />
                                  </node>
                                  <node concept="17RlXB" id="1_XvODPKFsR" role="2OqNvi" />
                                </node>
                                <node concept="9aQIb" id="1_XvODPKIDX" role="9aQIa">
                                  <node concept="3clFbS" id="1_XvODPKIDY" role="9aQI4">
                                    <node concept="3clFbF" id="1_XvODPJTE9" role="3cqZAp">
                                      <node concept="17R0WA" id="1_XvODPJUD_" role="3clFbG">
                                        <node concept="37vLTw" id="1_XvODPJV0E" role="3uHU7w">
                                          <ref role="3cqZAo" node="1_XvODPJH2Q" resolve="name" />
                                        </node>
                                        <node concept="2OqwBi" id="1_XvODPJTTh" role="3uHU7B">
                                          <node concept="37vLTw" id="1_XvODPJTE8" role="2Oq$k0">
                                            <ref role="3cqZAo" node="1_XvODPJTtr" resolve="it" />
                                          </node>
                                          <node concept="3TrcHB" id="1_XvODPJUcW" role="2OqNvi">
                                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="1_XvODPJTtr" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="1_XvODPJTts" role="1tU5fm" />
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
        <node concept="3clFbF" id="1_XvODPKjvq" role="3cqZAp">
          <node concept="2ShNRf" id="1_XvODPK6gI" role="3clFbG">
            <node concept="1pGfFk" id="1_XvODPK8S8" role="2ShVmc">
              <ref role="37wK5l" node="1_XvODPK1tU" resolve="RichAlgorithmProjection" />
              <node concept="37vLTw" id="1_XvODPK9_j" role="37wK5m">
                <ref role="3cqZAo" node="1_XvODPJH2i" resolve="myNode" />
              </node>
              <node concept="Xjq3P" id="1_XvODPKcx7" role="37wK5m" />
              <node concept="37vLTw" id="1_XvODPKeS3" role="37wK5m">
                <ref role="3cqZAo" node="1_XvODPJH2Q" resolve="name" />
              </node>
              <node concept="2ShNRf" id="1_XvODPKk7X" role="37wK5m">
                <node concept="3g6Rrh" id="1_XvODPKlQN" role="2ShVmc">
                  <node concept="17QB3L" id="1_XvODPKlDn" role="3g7fb8" />
                  <node concept="2pYGij" id="1_XvODPKmar" role="3g7hyw">
                    <ref role="2pYH_C" to="78d5:1_XvODPKmeL" resolve="algorithm" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="1_XvODPKmTp" role="37wK5m">
                <ref role="3cqZAo" node="1_XvODPJXQQ" resolve="algorithm" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1_XvODPJH39" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1_XvODPJH4G" role="jymVt" />
    <node concept="3clFb_" id="1_XvODPJH4H" role="jymVt">
      <property role="TrG5h" value="getChooseProjectionActions" />
      <node concept="3Tm1VV" id="1_XvODPJH4I" role="1B3o_S" />
      <node concept="3uibUv" id="1_XvODPJH4J" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1_XvODPJH4K" role="11_B2D">
          <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
        </node>
      </node>
      <node concept="3clFbS" id="1_XvODPJH4L" role="3clF47">
        <node concept="3clFbF" id="1_XvODPM4dl" role="3cqZAp">
          <node concept="2OqwBi" id="1_XvODPM6XW" role="3clFbG">
            <node concept="2ShNRf" id="1_XvODPM4dh" role="2Oq$k0">
              <node concept="1pGfFk" id="1_XvODPM5Sp" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                <node concept="2OqwBi" id="1_XvODPM6v_" role="37wK5m">
                  <node concept="37vLTw" id="1_XvODPM67s" role="2Oq$k0">
                    <ref role="3cqZAo" node="1_XvODPJH2l" resolve="myProject" />
                  </node>
                  <node concept="liA8E" id="1_XvODPM6RC" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1_XvODPM7em" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="1_XvODPM7uy" role="37wK5m">
                <node concept="3clFbS" id="1_XvODPM7uz" role="1bW5cS">
                  <node concept="3clFbF" id="1_XvODPM8s_" role="3cqZAp">
                    <node concept="2OqwBi" id="1_XvODPMggg" role="3clFbG">
                      <node concept="2OqwBi" id="1_XvODPMajX" role="2Oq$k0">
                        <node concept="2OqwBi" id="1_XvODPM7Ca" role="2Oq$k0">
                          <node concept="37vLTw" id="1_XvODPM7Cb" role="2Oq$k0">
                            <ref role="3cqZAo" node="1_XvODPJH2i" resolve="myNode" />
                          </node>
                          <node concept="3Tsc0h" id="1_XvODPM7Cc" role="2OqNvi">
                            <ref role="3TtcxE" to="xiqq:3HBlKeoZ0WV" resolve="algorithms" />
                          </node>
                        </node>
                        <node concept="3$u5V9" id="1_XvODPMdi9" role="2OqNvi">
                          <node concept="1bVj0M" id="1_XvODPMdib" role="23t8la">
                            <node concept="3clFbS" id="1_XvODPMdic" role="1bW5cS">
                              <node concept="3clFbF" id="1_XvODPMd$A" role="3cqZAp">
                                <node concept="10QFUN" id="1_XvODPMhQw" role="3clFbG">
                                  <node concept="3uibUv" id="1_XvODPMieC" role="10QFUM">
                                    <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
                                  </node>
                                  <node concept="2ShNRf" id="1_XvODPMet_" role="10QFUP">
                                    <node concept="1pGfFk" id="1_XvODPMetA" role="2ShVmc">
                                      <ref role="37wK5l" to="de0p:7ii99HMlpha" resolve="ChooseProjectionAction" />
                                      <node concept="Xjq3P" id="1_XvODPMetB" role="37wK5m" />
                                      <node concept="2OqwBi" id="1_XvODPMfyt" role="37wK5m">
                                        <node concept="37vLTw" id="1_XvODPMfcl" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1_XvODPMdid" resolve="it" />
                                        </node>
                                        <node concept="3TrcHB" id="1_XvODPMfTq" role="2OqNvi">
                                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="1_XvODPMdid" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="1_XvODPMdie" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="ANE8D" id="1_XvODPMgOY" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="1_XvODPM7_9" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1_XvODPJH4T" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1_XvODPJH4U" role="jymVt" />
    <node concept="3clFb_" id="1_XvODPJH4V" role="jymVt">
      <property role="TrG5h" value="getCreateProjectionActions" />
      <node concept="3Tm1VV" id="1_XvODPJH4W" role="1B3o_S" />
      <node concept="3uibUv" id="1_XvODPJH4X" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1_XvODPJH4Y" role="11_B2D">
          <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
        </node>
      </node>
      <node concept="3clFbS" id="1_XvODPJH4Z" role="3clF47">
        <node concept="3clFbF" id="1_XvODPKo31" role="3cqZAp">
          <node concept="2YIFZM" id="1_XvODPKo32" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="2ShNRf" id="1_XvODPKo33" role="37wK5m">
              <node concept="YeOm9" id="1_XvODPKovf" role="2ShVmc">
                <node concept="1Y3b0j" id="1_XvODPKovi" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="qkt:~AnAction" resolve="AnAction" />
                  <ref role="37wK5l" to="qkt:~AnAction.&lt;init&gt;(java.lang.String)" resolve="AnAction" />
                  <node concept="2tJIrI" id="1_XvODPKQbG" role="jymVt" />
                  <node concept="3clFb_" id="7ii99HMlpLh" role="jymVt">
                    <property role="TrG5h" value="actionPerformed" />
                    <node concept="3Tm1VV" id="7ii99HMlpLi" role="1B3o_S" />
                    <node concept="3cqZAl" id="7ii99HMlpLk" role="3clF45" />
                    <node concept="37vLTG" id="7ii99HMlpLl" role="3clF46">
                      <property role="TrG5h" value="event" />
                      <node concept="3uibUv" id="7ii99HMlpLm" role="1tU5fm">
                        <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
                      </node>
                      <node concept="2AHcQZ" id="7ii99HMlpLn" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7ii99HMlpLo" role="3clF47">
                      <node concept="3cpWs8" id="7ii99HMmtIy" role="3cqZAp">
                        <node concept="3cpWsn" id="7ii99HMmtIz" role="3cpWs9">
                          <property role="TrG5h" value="project" />
                          <node concept="3uibUv" id="7ii99HMmt_P" role="1tU5fm">
                            <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                          </node>
                          <node concept="2OqwBi" id="7ii99HMmtI$" role="33vP2m">
                            <node concept="37vLTw" id="7ii99HMmtI_" role="2Oq$k0">
                              <ref role="3cqZAo" node="7ii99HMlpLl" resolve="event" />
                            </node>
                            <node concept="liA8E" id="7ii99HMmtIA" role="2OqNvi">
                              <ref role="37wK5l" to="qkt:~AnActionEvent.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                              <node concept="10M0yZ" id="7ii99HMmtIB" role="37wK5m">
                                <ref role="1PxDUh" to="3s15:~MPSDataKeys" resolve="MPSDataKeys" />
                                <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="7ii99HMmtZ7" role="3cqZAp">
                        <node concept="3cpWsn" id="7ii99HMmtZ8" role="3cpWs9">
                          <property role="TrG5h" value="editor" />
                          <node concept="3uibUv" id="7ii99HMmtYo" role="1tU5fm">
                            <ref role="3uigEE" to="de0p:7Y8B9wpd$4e" resolve="HeaderedNodeEditor" />
                          </node>
                          <node concept="2OqwBi" id="7ii99HMmtZ9" role="33vP2m">
                            <node concept="37vLTw" id="7ii99HMmtZa" role="2Oq$k0">
                              <ref role="3cqZAo" node="7ii99HMlpLl" resolve="event" />
                            </node>
                            <node concept="liA8E" id="7ii99HMmtZb" role="2OqNvi">
                              <ref role="37wK5l" to="qkt:~AnActionEvent.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                              <node concept="10M0yZ" id="7ii99HMmtZc" role="37wK5m">
                                <ref role="1PxDUh" to="de0p:7Y8B9wpne4m" resolve="HeaderedEditorDataKeys" />
                                <ref role="3cqZAo" to="de0p:7Y8B9wpnhj$" resolve="EDITOR" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7ii99HMmyPp" role="3cqZAp" />
                      <node concept="3clFbJ" id="7ii99HMmvNe" role="3cqZAp">
                        <node concept="3clFbS" id="7ii99HMmvNg" role="3clFbx">
                          <node concept="3cpWs6" id="7ii99HMmyzc" role="3cqZAp" />
                        </node>
                        <node concept="22lmx$" id="7ii99HMmxph" role="3clFbw">
                          <node concept="3clFbC" id="7ii99HMmwMG" role="3uHU7B">
                            <node concept="37vLTw" id="7ii99HMmvZh" role="3uHU7B">
                              <ref role="3cqZAo" node="7ii99HMmtIz" resolve="project" />
                            </node>
                            <node concept="10Nm6u" id="7ii99HMmxcZ" role="3uHU7w" />
                          </node>
                          <node concept="3clFbC" id="7ii99HMmydx" role="3uHU7w">
                            <node concept="10Nm6u" id="7ii99HMmyju" role="3uHU7w" />
                            <node concept="37vLTw" id="7ii99HMmxzy" role="3uHU7B">
                              <ref role="3cqZAo" node="7ii99HMmtZ8" resolve="editor" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7ii99HMmjZT" role="3cqZAp">
                        <node concept="2OqwBi" id="7ii99HMmkLC" role="3clFbG">
                          <node concept="2OqwBi" id="7ii99HMmkks" role="2Oq$k0">
                            <node concept="liA8E" id="7ii99HMmkEJ" role="2OqNvi">
                              <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                            </node>
                            <node concept="37vLTw" id="7ii99HMmvwk" role="2Oq$k0">
                              <ref role="3cqZAo" node="7ii99HMmtIz" resolve="project" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7ii99HMmkW0" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
                            <node concept="1bVj0M" id="7ii99HMml8G" role="37wK5m">
                              <node concept="3clFbS" id="7ii99HMml8H" role="1bW5cS">
                                <node concept="3cpWs8" id="1_XvODPKCk8" role="3cqZAp">
                                  <node concept="3cpWsn" id="1_XvODPKCk9" role="3cpWs9">
                                    <property role="TrG5h" value="algorithm" />
                                    <node concept="3Tqbb2" id="1_XvODPKCgD" role="1tU5fm">
                                      <ref role="ehGHo" to="xiqq:3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
                                    </node>
                                    <node concept="2ShNRf" id="1_XvODPKCka" role="33vP2m">
                                      <node concept="3zrR0B" id="1_XvODPKCkb" role="2ShVmc">
                                        <node concept="3Tqbb2" id="1_XvODPKCkc" role="3zrR0E">
                                          <ref role="ehGHo" to="xiqq:3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="1_XvODPKKlh" role="3cqZAp">
                                  <node concept="2OqwBi" id="1_XvODPKMyV" role="3clFbG">
                                    <node concept="2OqwBi" id="1_XvODPKKPL" role="2Oq$k0">
                                      <node concept="37vLTw" id="1_XvODPKKlf" role="2Oq$k0">
                                        <ref role="3cqZAo" node="1_XvODPJH2i" resolve="myNode" />
                                      </node>
                                      <node concept="3Tsc0h" id="1_XvODPKLeZ" role="2OqNvi">
                                        <ref role="3TtcxE" to="xiqq:3HBlKeoZ0WV" resolve="algorithms" />
                                      </node>
                                    </node>
                                    <node concept="TSZUe" id="1_XvODPKOQR" role="2OqNvi">
                                      <node concept="37vLTw" id="1_XvODPKPyV" role="25WWJ7">
                                        <ref role="3cqZAo" node="1_XvODPKCk9" resolve="algorithm" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="7ii99HMmunN" role="3cqZAp">
                                  <node concept="2OqwBi" id="7ii99HMmuGj" role="3clFbG">
                                    <node concept="37vLTw" id="7ii99HMmunL" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7ii99HMmtZ8" resolve="editor" />
                                    </node>
                                    <node concept="liA8E" id="7ii99HMmv0C" role="2OqNvi">
                                      <ref role="37wK5l" to="de0p:7Y8B9wpn_eO" resolve="chooseProjection" />
                                      <node concept="2OqwBi" id="7ii99HMmoOg" role="37wK5m">
                                        <node concept="Xjq3P" id="1_XvODPK_nw" role="2Oq$k0">
                                          <ref role="1HBi2w" node="1_XvODPJGLn" resolve="RichAlgorithmsProjectionController" />
                                        </node>
                                        <node concept="liA8E" id="7ii99HMmp09" role="2OqNvi">
                                          <ref role="37wK5l" node="1_XvODPJH2N" resolve="createProjection" />
                                          <node concept="Xl_RD" id="1_XvODPKJih" role="37wK5m">
                                            <property role="Xl_RC" value="" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="1_XvODPL3pj" role="3cqZAp">
                                  <node concept="3cpWsn" id="1_XvODPL3pk" role="3cpWs9">
                                    <property role="TrG5h" value="component" />
                                    <node concept="3uibUv" id="1_XvODPKZIo" role="1tU5fm">
                                      <ref role="3uigEE" to="exr9:~NodeEditorComponent" resolve="NodeEditorComponent" />
                                    </node>
                                    <node concept="2OqwBi" id="1_XvODPL3pl" role="33vP2m">
                                      <node concept="37vLTw" id="1_XvODPL3pm" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7ii99HMmtZ8" resolve="editor" />
                                      </node>
                                      <node concept="liA8E" id="1_XvODPL3pn" role="2OqNvi">
                                        <ref role="37wK5l" to="k3nr:~BaseNodeEditor.getCurrentEditorComponent()" resolve="getCurrentEditorComponent" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="1_XvODPKWiK" role="3cqZAp">
                                  <node concept="2OqwBi" id="1_XvODPKYdL" role="3clFbG">
                                    <node concept="37vLTw" id="1_XvODPL3po" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1_XvODPL3pk" resolve="component" />
                                    </node>
                                    <node concept="liA8E" id="1_XvODPKZx7" role="2OqNvi">
                                      <ref role="37wK5l" to="exr9:~EditorComponent.changeSelection(jetbrains.mps.openapi.editor.cells.EditorCell)" resolve="changeSelection" />
                                      <node concept="2OqwBi" id="1_XvODPL66u" role="37wK5m">
                                        <node concept="37vLTw" id="1_XvODPL4SI" role="2Oq$k0">
                                          <ref role="3cqZAo" node="1_XvODPL3pk" resolve="component" />
                                        </node>
                                        <node concept="liA8E" id="1_XvODPL7Nh" role="2OqNvi">
                                          <ref role="37wK5l" to="exr9:~EditorComponent.findNodeCellWithRole(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="findNodeCellWithRole" />
                                          <node concept="37vLTw" id="1_XvODPL8Gd" role="37wK5m">
                                            <ref role="3cqZAo" node="1_XvODPKCk9" resolve="algorithm" />
                                          </node>
                                          <node concept="Xl_RD" id="1_XvODPL9Wt" role="37wK5m">
                                            <property role="Xl_RC" value="name" />
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
                    <node concept="2AHcQZ" id="7ii99HMlpLp" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="1_XvODPKovj" role="1B3o_S" />
                  <node concept="Xl_RD" id="1_XvODPKTDk" role="37wK5m">
                    <property role="Xl_RC" value="New Algorithm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="1_XvODPKo37" role="3PaCim">
              <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1_XvODPJH53" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="1_XvODPJGSY" role="jymVt" />
    <node concept="3Tm1VV" id="1_XvODPJGLo" role="1B3o_S" />
    <node concept="3uibUv" id="1_XvODPJGSE" role="EKbjA">
      <ref role="3uigEE" to="de0p:7Y8B9wpj6Z6" resolve="HeaderedEditorProjectionController" />
    </node>
  </node>
  <node concept="312cEu" id="1_XvODPK0PB">
    <property role="TrG5h" value="RichAlgorithmProjection" />
    <node concept="2tJIrI" id="1_XvODPK16O" role="jymVt" />
    <node concept="312cEg" id="1_XvODPK1j8" role="jymVt">
      <property role="TrG5h" value="myAlgorithm" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1_XvODPK1b8" role="1B3o_S" />
      <node concept="3Tqbb2" id="1_XvODPKauw" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
      </node>
    </node>
    <node concept="2tJIrI" id="1_XvODPK1ts" role="jymVt" />
    <node concept="3Tm1VV" id="1_XvODPK0PC" role="1B3o_S" />
    <node concept="3uibUv" id="1_XvODPK0VS" role="1zkMxy">
      <ref role="3uigEE" to="de0p:7Y8B9wpmJ8m" resolve="SimpleHeaderedEditorProjection" />
    </node>
    <node concept="3clFbW" id="1_XvODPK1tU" role="jymVt">
      <node concept="3cqZAl" id="1_XvODPK1tV" role="3clF45" />
      <node concept="3Tm1VV" id="1_XvODPK1tW" role="1B3o_S" />
      <node concept="3clFbS" id="1_XvODPK1tY" role="3clF47">
        <node concept="XkiVB" id="1_XvODPK1u0" role="3cqZAp">
          <ref role="37wK5l" to="de0p:7Y8B9wpmJqb" resolve="SimpleHeaderedEditorProjection" />
          <node concept="37vLTw" id="1_XvODPK1u4" role="37wK5m">
            <ref role="3cqZAo" node="1_XvODPK1u1" resolve="node" />
          </node>
          <node concept="37vLTw" id="1_XvODPK1u8" role="37wK5m">
            <ref role="3cqZAo" node="1_XvODPK1u5" resolve="controller" />
          </node>
          <node concept="37vLTw" id="1_XvODPK1uc" role="37wK5m">
            <ref role="3cqZAo" node="1_XvODPK1u9" resolve="name" />
          </node>
          <node concept="37vLTw" id="1_XvODPK1uh" role="37wK5m">
            <ref role="3cqZAo" node="1_XvODPK1ud" resolve="hints" />
          </node>
        </node>
        <node concept="3clFbF" id="1_XvODPK1uk" role="3cqZAp">
          <node concept="37vLTI" id="1_XvODPK1um" role="3clFbG">
            <node concept="37vLTw" id="1_XvODPK1ut" role="37vLTx">
              <ref role="3cqZAo" node="1_XvODPK1uj" resolve="algorithm" />
            </node>
            <node concept="37vLTw" id="1_XvODPK1J$" role="37vLTJ">
              <ref role="3cqZAo" node="1_XvODPK1j8" resolve="myAlgorithm" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1_XvODPK1u1" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1_XvODPK1u3" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="1_XvODPK1u5" role="3clF46">
        <property role="TrG5h" value="controller" />
        <node concept="3uibUv" id="1_XvODPK1u7" role="1tU5fm">
          <ref role="3uigEE" to="de0p:7Y8B9wpj6Z6" resolve="HeaderedEditorProjectionController" />
        </node>
      </node>
      <node concept="37vLTG" id="1_XvODPK1u9" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="1_XvODPK1ub" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="1_XvODPK1ud" role="3clF46">
        <property role="TrG5h" value="hints" />
        <node concept="10Q1$e" id="1_XvODPK1uf" role="1tU5fm">
          <node concept="17QB3L" id="1_XvODPK1ug" role="10Q1$1" />
        </node>
      </node>
      <node concept="37vLTG" id="1_XvODPK1uj" role="3clF46">
        <property role="TrG5h" value="algorithm" />
        <node concept="3Tqbb2" id="1_XvODPKa_G" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1_XvODPK1L7" role="jymVt" />
    <node concept="3clFb_" id="1_XvODPK1Nn" role="jymVt">
      <property role="TrG5h" value="getData" />
      <node concept="3Tm1VV" id="1_XvODPK1No" role="1B3o_S" />
      <node concept="2AHcQZ" id="1_XvODPK1Np" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="1_XvODPK1Nq" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="1_XvODPK1Nr" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="1_XvODPK1Ns" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="1_XvODPK1Nt" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="2AHcQZ" id="1_XvODPK1Nu" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
      </node>
      <node concept="2AHcQZ" id="1_XvODPK1Ny" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="1_XvODPK1Nz" role="3clF47">
        <node concept="3clFbJ" id="1_XvODPK208" role="3cqZAp">
          <node concept="3clFbS" id="1_XvODPK20a" role="3clFbx">
            <node concept="3cpWs6" id="1_XvODPK3AA" role="3cqZAp">
              <node concept="37vLTw" id="1_XvODPK42w" role="3cqZAk">
                <ref role="3cqZAo" node="1_XvODPK1j8" resolve="myAlgorithm" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="1_XvODPK3jj" role="3clFbw">
            <node concept="37vLTw" id="1_XvODPK3sd" role="3uHU7w">
              <ref role="3cqZAo" node="1_XvODPK1Nr" resolve="string" />
            </node>
            <node concept="2OqwBi" id="1_XvODPK2Gw" role="3uHU7B">
              <node concept="10M0yZ" id="1_XvODPK2ow" role="2Oq$k0">
                <ref role="3cqZAo" node="1_XvODPJVm0" resolve="ALGORITHM" />
                <ref role="1PxDUh" node="3vwudsmYiwt" resolve="RichEditorDataKeys" />
              </node>
              <node concept="liA8E" id="1_XvODPK32Y" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1_XvODPKaM7" role="3cqZAp">
          <node concept="10Nm6u" id="1_XvODPKaZd" role="3cqZAk" />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2SU8oJdFFJk">
    <property role="TrG5h" value="RichApplicationProjectionController" />
    <node concept="2tJIrI" id="2SU8oJdFFJl" role="jymVt" />
    <node concept="312cEg" id="2SU8oJdFFJm" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2SU8oJdFFJn" role="1B3o_S" />
      <node concept="3Tqbb2" id="2SU8oJdFFJo" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="2SU8oJdFFJp" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2SU8oJdFFJq" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdFFJr" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdFFJs" role="jymVt" />
    <node concept="3clFbW" id="2SU8oJdFFJt" role="jymVt">
      <node concept="3cqZAl" id="2SU8oJdFFJu" role="3clF45" />
      <node concept="3Tm1VV" id="2SU8oJdFFJv" role="1B3o_S" />
      <node concept="3clFbS" id="2SU8oJdFFJw" role="3clF47">
        <node concept="3clFbF" id="2SU8oJdFFJx" role="3cqZAp">
          <node concept="37vLTI" id="2SU8oJdFFJy" role="3clFbG">
            <node concept="37vLTw" id="2SU8oJdFFJz" role="37vLTx">
              <ref role="3cqZAo" node="2SU8oJdFFJD" resolve="node" />
            </node>
            <node concept="37vLTw" id="2SU8oJdFFJ$" role="37vLTJ">
              <ref role="3cqZAo" node="2SU8oJdFFJm" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2SU8oJdFFJ_" role="3cqZAp">
          <node concept="37vLTI" id="2SU8oJdFFJA" role="3clFbG">
            <node concept="37vLTw" id="2SU8oJdFFJB" role="37vLTx">
              <ref role="3cqZAo" node="2SU8oJdFFJF" resolve="project" />
            </node>
            <node concept="37vLTw" id="2SU8oJdFFJC" role="37vLTJ">
              <ref role="3cqZAo" node="2SU8oJdFFJp" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2SU8oJdFFJD" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2SU8oJdFFJE" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="2SU8oJdFFJF" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2SU8oJdFFJG" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdFFJH" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdFFJI" role="jymVt">
      <property role="TrG5h" value="getId" />
      <node concept="3Tm1VV" id="2SU8oJdFFJJ" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdFFJK" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="2SU8oJdFFJL" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2SU8oJdFFJM" role="3clF47">
        <node concept="3clFbF" id="2SU8oJdFFJN" role="3cqZAp">
          <node concept="Xl_RD" id="2SU8oJdFFJO" role="3clFbG">
            <property role="Xl_RC" value="Application" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdFFJP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdFFJQ" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdFFJR" role="jymVt">
      <property role="TrG5h" value="createProjection" />
      <node concept="3Tm1VV" id="2SU8oJdFFJS" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdFFJT" role="3clF45">
        <ref role="3uigEE" to="de0p:7Y8B9wpl75t" resolve="HeaderedEditorProjection" />
      </node>
      <node concept="37vLTG" id="2SU8oJdFFJU" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="2SU8oJdFFJV" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="2SU8oJdFFJW" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdFFJX" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2SU8oJdFFJY" role="3clF47">
        <node concept="3cpWs8" id="2SU8oJdFFJZ" role="3cqZAp">
          <node concept="3cpWsn" id="2SU8oJdFFK0" role="3cpWs9">
            <property role="TrG5h" value="appNode" />
            <node concept="3Tqbb2" id="2SU8oJdFFK1" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
            </node>
            <node concept="10Nm6u" id="2SU8oJdFFK2" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbF" id="2SU8oJdFFK3" role="3cqZAp">
          <node concept="2OqwBi" id="2SU8oJdFFK4" role="3clFbG">
            <node concept="2OqwBi" id="2SU8oJdFFK5" role="2Oq$k0">
              <node concept="37vLTw" id="2SU8oJdFFK6" role="2Oq$k0">
                <ref role="3cqZAo" node="2SU8oJdFFJp" resolve="myProject" />
              </node>
              <node concept="liA8E" id="2SU8oJdFFK7" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="2SU8oJdFFK8" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="2SU8oJdFFK9" role="37wK5m">
                <node concept="3clFbS" id="2SU8oJdFFKa" role="1bW5cS">
                  <node concept="3clFbF" id="2SU8oJdFFKb" role="3cqZAp">
                    <node concept="37vLTI" id="2SU8oJdFFKc" role="3clFbG">
                      <node concept="37vLTw" id="2SU8oJdFFKd" role="37vLTJ">
                        <ref role="3cqZAo" node="2SU8oJdFFK0" resolve="appNode" />
                      </node>
                      <node concept="2OqwBi" id="2SU8oJdFFKe" role="37vLTx">
                        <node concept="2OqwBi" id="2SU8oJdFFKf" role="2Oq$k0">
                          <node concept="37vLTw" id="2SU8oJdFFKg" role="2Oq$k0">
                            <ref role="3cqZAo" node="2SU8oJdFFJm" resolve="myNode" />
                          </node>
                          <node concept="3Tsc0h" id="2SU8oJdFLZy" role="2OqNvi">
                            <ref role="3TtcxE" to="xiqq:uLhTRR7MVq" resolve="applications" />
                          </node>
                        </node>
                        <node concept="1z4cxt" id="2SU8oJdFFKi" role="2OqNvi">
                          <node concept="1bVj0M" id="2SU8oJdFFKj" role="23t8la">
                            <node concept="3clFbS" id="2SU8oJdFFKk" role="1bW5cS">
                              <node concept="3clFbJ" id="2SU8oJdFFKl" role="3cqZAp">
                                <node concept="3clFbS" id="2SU8oJdFFKm" role="3clFbx">
                                  <node concept="3cpWs6" id="2SU8oJdFFKn" role="3cqZAp">
                                    <node concept="2OqwBi" id="2SU8oJdFFKo" role="3cqZAk">
                                      <node concept="2OqwBi" id="2SU8oJdFFKp" role="2Oq$k0">
                                        <node concept="37vLTw" id="2SU8oJdFFKq" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2SU8oJdFFKC" resolve="it" />
                                        </node>
                                        <node concept="3TrcHB" id="2SU8oJdFFKr" role="2OqNvi">
                                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                        </node>
                                      </node>
                                      <node concept="17RlXB" id="2SU8oJdFFKs" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="2SU8oJdFFKt" role="3clFbw">
                                  <node concept="37vLTw" id="2SU8oJdFFKu" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2SU8oJdFFJU" resolve="name" />
                                  </node>
                                  <node concept="17RlXB" id="2SU8oJdFFKv" role="2OqNvi" />
                                </node>
                                <node concept="9aQIb" id="2SU8oJdFFKw" role="9aQIa">
                                  <node concept="3clFbS" id="2SU8oJdFFKx" role="9aQI4">
                                    <node concept="3clFbF" id="2SU8oJdFFKy" role="3cqZAp">
                                      <node concept="17R0WA" id="2SU8oJdFFKz" role="3clFbG">
                                        <node concept="37vLTw" id="2SU8oJdFFK$" role="3uHU7w">
                                          <ref role="3cqZAo" node="2SU8oJdFFJU" resolve="name" />
                                        </node>
                                        <node concept="2OqwBi" id="2SU8oJdFFK_" role="3uHU7B">
                                          <node concept="37vLTw" id="2SU8oJdFFKA" role="2Oq$k0">
                                            <ref role="3cqZAo" node="2SU8oJdFFKC" resolve="it" />
                                          </node>
                                          <node concept="3TrcHB" id="2SU8oJdFFKB" role="2OqNvi">
                                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="2SU8oJdFFKC" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="2SU8oJdFFKD" role="1tU5fm" />
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
        <node concept="3cpWs8" id="4gibKcMsrDq" role="3cqZAp">
          <node concept="3cpWsn" id="4gibKcMsrDr" role="3cpWs9">
            <property role="TrG5h" value="app" />
            <node concept="3uibUv" id="4gibKcMsrzN" role="1tU5fm">
              <ref role="3uigEE" to="go3h:4dM3MZ7oKoQ" resolve="ApplicationDeclarationByNode" />
            </node>
            <node concept="2ShNRf" id="4gibKcMsrDs" role="33vP2m">
              <node concept="1pGfFk" id="4gibKcMsrDt" role="2ShVmc">
                <ref role="37wK5l" to="go3h:4gibKcMrx9X" resolve="ApplicationDeclarationByNode" />
                <node concept="37vLTw" id="4gibKcMsrDu" role="37wK5m">
                  <ref role="3cqZAo" node="2SU8oJdFFK0" resolve="appNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4gibKcMssOg" role="3cqZAp">
          <node concept="3cpWsn" id="4gibKcMssOh" role="3cpWs9">
            <property role="TrG5h" value="instance" />
            <node concept="3uibUv" id="4kSwwtSCH_Y" role="1tU5fm">
              <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
            </node>
            <node concept="2YIFZM" id="4kSwwtSCFUM" role="33vP2m">
              <ref role="37wK5l" to="rk1n:4kSwwtS_nOs" resolve="createForApplication" />
              <ref role="1Pybhc" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
              <node concept="37vLTw" id="4kSwwtSCGDw" role="37wK5m">
                <ref role="3cqZAo" node="4gibKcMsrDr" resolve="app" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4gibKcMsDMS" role="3cqZAp">
          <node concept="1rXfSq" id="4gibKcMsDMR" role="3cqZAk">
            <ref role="37wK5l" node="4gibKcMsCSG" resolve="createProjection0" />
            <node concept="37vLTw" id="4gibKcMsDMP" role="37wK5m">
              <ref role="3cqZAo" node="2SU8oJdFFJU" resolve="name" />
            </node>
            <node concept="37vLTw" id="4gibKcMsDMQ" role="37wK5m">
              <ref role="3cqZAo" node="4gibKcMssOh" resolve="instance" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdFFKP" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMsu7P" role="jymVt" />
    <node concept="2tJIrI" id="4gibKcMsuU6" role="jymVt" />
    <node concept="3clFb_" id="4gibKcMsvyX" role="jymVt">
      <property role="TrG5h" value="restoreProjection" />
      <node concept="3Tm1VV" id="4gibKcMsvz2" role="1B3o_S" />
      <node concept="3uibUv" id="4gibKcMsvz3" role="3clF45">
        <ref role="3uigEE" to="de0p:7Y8B9wpl75t" resolve="HeaderedEditorProjection" />
      </node>
      <node concept="37vLTG" id="4gibKcMsvz4" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="4gibKcMsvz5" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="4gibKcMsvz6" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4gibKcMsvz7" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="4gibKcMsvz8" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
        </node>
        <node concept="2AHcQZ" id="4gibKcMsvz9" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="4gibKcMsvzb" role="3clF47">
        <node concept="3cpWs8" id="4gibKcMsAM9" role="3cqZAp">
          <node concept="3cpWsn" id="4gibKcMsAMa" role="3cpWs9">
            <property role="TrG5h" value="ref" />
            <node concept="3uibUv" id="4gibKcMsAMb" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="4gibKcMsAMc" role="33vP2m">
              <node concept="37vLTw" id="4gibKcMsAMd" role="2Oq$k0">
                <ref role="3cqZAo" node="4gibKcMsvz7" resolve="e" />
              </node>
              <node concept="liA8E" id="4gibKcMsAMe" role="2OqNvi">
                <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String)" resolve="getAttributeValue" />
                <node concept="10M0yZ" id="4gibKcMsBvg" role="37wK5m">
                  <ref role="3cqZAo" node="4gibKcMrPZo" resolve="PERSISTENCE_KEY" />
                  <ref role="1PxDUh" node="2SU8oJdFQLo" resolve="RichApplicationProjection" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4gibKcMsAMi" role="3cqZAp">
          <node concept="3cpWsn" id="4gibKcMsAMj" role="3cpWs9">
            <property role="TrG5h" value="instance" />
            <node concept="3uibUv" id="4kSwwtSCzSZ" role="1tU5fm">
              <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
            </node>
            <node concept="3K4zz7" id="4gibKcMsAMl" role="33vP2m">
              <node concept="3y3z36" id="4gibKcMsAMm" role="3K4Cdx">
                <node concept="10Nm6u" id="4gibKcMsAMn" role="3uHU7w" />
                <node concept="37vLTw" id="4gibKcMsAMo" role="3uHU7B">
                  <ref role="3cqZAo" node="4gibKcMsAMa" resolve="ref" />
                </node>
              </node>
              <node concept="2OqwBi" id="4gibKcMsAMp" role="3K4E3e">
                <node concept="2YIFZM" id="4gibKcMsAMq" role="2Oq$k0">
                  <ref role="37wK5l" to="rwq3:1QSEqLhZdF9" resolve="deserialize" />
                  <ref role="1Pybhc" to="rwq3:1QSEqLhWl9W" resolve="MPSNetworkInstanceReference" />
                  <node concept="37vLTw" id="4gibKcMsAMr" role="37wK5m">
                    <ref role="3cqZAo" node="4gibKcMsAMa" resolve="ref" />
                  </node>
                </node>
                <node concept="liA8E" id="4gibKcMsAMs" role="2OqNvi">
                  <ref role="37wK5l" to="rwq3:1QSEqLhWlfG" resolve="resolve" />
                  <node concept="2OqwBi" id="4gibKcMsAMt" role="37wK5m">
                    <node concept="liA8E" id="4gibKcMsAMu" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                    </node>
                    <node concept="2JrnkZ" id="4gibKcMsAMv" role="2Oq$k0">
                      <node concept="2OqwBi" id="4gibKcMsAMw" role="2JrQYb">
                        <node concept="37vLTw" id="4gibKcMsAMx" role="2Oq$k0">
                          <ref role="3cqZAo" node="2SU8oJdFFJm" resolve="myNode" />
                        </node>
                        <node concept="I4A8Y" id="4gibKcMsAMy" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="4gibKcMsAMz" role="3K4GZi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4gibKcMsAM$" role="3cqZAp">
          <node concept="3clFbS" id="4gibKcMsAM_" role="3clFbx">
            <node concept="3cpWs6" id="4gibKcMsCSM" role="3cqZAp">
              <node concept="1rXfSq" id="4gibKcMsCSL" role="3cqZAk">
                <ref role="37wK5l" node="4gibKcMsCSG" resolve="createProjection0" />
                <node concept="37vLTw" id="4gibKcMsCSJ" role="37wK5m">
                  <ref role="3cqZAo" node="4gibKcMsvz4" resolve="name" />
                </node>
                <node concept="37vLTw" id="4gibKcMsCSK" role="37wK5m">
                  <ref role="3cqZAo" node="4gibKcMsAMj" resolve="instance" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4gibKcMsCz_" role="3clFbw">
            <node concept="37vLTw" id="4gibKcMsAML" role="3uHU7B">
              <ref role="3cqZAo" node="4gibKcMsAMj" resolve="instance" />
            </node>
            <node concept="10Nm6u" id="4gibKcMsAMK" role="3uHU7w" />
          </node>
          <node concept="9aQIb" id="4gibKcMsFEN" role="9aQIa">
            <node concept="3clFbS" id="4gibKcMsFEO" role="9aQI4">
              <node concept="3cpWs6" id="4gibKcMsHzV" role="3cqZAp">
                <node concept="1rXfSq" id="4gibKcMsGOY" role="3cqZAk">
                  <ref role="37wK5l" node="2SU8oJdFFJR" resolve="createProjection" />
                  <node concept="37vLTw" id="4gibKcMsH5w" role="37wK5m">
                    <ref role="3cqZAo" node="4gibKcMsvz4" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4gibKcMsBFx" role="3cqZAp" />
      </node>
      <node concept="2AHcQZ" id="4gibKcMsvzc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4gibKcMsCSG" role="jymVt">
      <property role="TrG5h" value="createProjection0" />
      <node concept="3Tm6S6" id="4gibKcMsCSH" role="1B3o_S" />
      <node concept="3uibUv" id="4gibKcMsCSI" role="3clF45">
        <ref role="3uigEE" to="de0p:7Y8B9wpl75t" resolve="HeaderedEditorProjection" />
      </node>
      <node concept="37vLTG" id="4gibKcMsCQZ" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="4gibKcMsCR0" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="4gibKcMsCR1" role="3clF46">
        <property role="TrG5h" value="instance" />
        <node concept="3uibUv" id="4kSwwtSCAhi" role="1tU5fm">
          <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
        </node>
      </node>
      <node concept="3clFbS" id="4gibKcMsCQM" role="3clF47">
        <node concept="3clFbF" id="4gibKcMsCQN" role="3cqZAp">
          <node concept="2ShNRf" id="4gibKcMsCQO" role="3clFbG">
            <node concept="1pGfFk" id="4gibKcMsCQP" role="2ShVmc">
              <ref role="37wK5l" node="2SU8oJdFQLw" resolve="RichApplicationProjection" />
              <node concept="37vLTw" id="4gibKcMsCQQ" role="37wK5m">
                <ref role="3cqZAo" node="2SU8oJdFFJm" resolve="myNode" />
              </node>
              <node concept="Xjq3P" id="4gibKcMsCQR" role="37wK5m" />
              <node concept="37vLTw" id="4gibKcMsCSC" role="37wK5m">
                <ref role="3cqZAo" node="4gibKcMsCQZ" resolve="name" />
              </node>
              <node concept="2ShNRf" id="4gibKcMsCQT" role="37wK5m">
                <node concept="3g6Rrh" id="4gibKcMsCQU" role="2ShVmc">
                  <node concept="17QB3L" id="4gibKcMsCQV" role="3g7fb8" />
                  <node concept="2pYGij" id="4gibKcMsCQW" role="3g7hyw">
                    <ref role="2pYH_C" to="78d5:2SU8oJdEKXu" resolve="system_app" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="4gibKcMsCSD" role="37wK5m">
                <ref role="3cqZAo" node="4gibKcMsCR1" resolve="instance" />
              </node>
              <node concept="37vLTw" id="4gibKcMsCQY" role="37wK5m">
                <ref role="3cqZAo" node="2SU8oJdFFJp" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdFFKQ" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdFFKR" role="jymVt">
      <property role="TrG5h" value="getChooseProjectionActions" />
      <node concept="3Tm1VV" id="2SU8oJdFFKS" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdFFKT" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2SU8oJdFFKU" role="11_B2D">
          <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
        </node>
      </node>
      <node concept="3clFbS" id="2SU8oJdFFKV" role="3clF47">
        <node concept="3clFbF" id="2SU8oJdFFKW" role="3cqZAp">
          <node concept="2OqwBi" id="2SU8oJdFFKX" role="3clFbG">
            <node concept="2ShNRf" id="2SU8oJdFFKY" role="2Oq$k0">
              <node concept="1pGfFk" id="2SU8oJdFFKZ" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                <node concept="2OqwBi" id="2SU8oJdFFL0" role="37wK5m">
                  <node concept="37vLTw" id="2SU8oJdFFL1" role="2Oq$k0">
                    <ref role="3cqZAo" node="2SU8oJdFFJp" resolve="myProject" />
                  </node>
                  <node concept="liA8E" id="2SU8oJdFFL2" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2SU8oJdFFL3" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="2SU8oJdFFL4" role="37wK5m">
                <node concept="3clFbS" id="2SU8oJdFFL5" role="1bW5cS">
                  <node concept="3clFbF" id="2SU8oJdFFL6" role="3cqZAp">
                    <node concept="2OqwBi" id="2SU8oJdFFL7" role="3clFbG">
                      <node concept="2OqwBi" id="2SU8oJdFFL8" role="2Oq$k0">
                        <node concept="2OqwBi" id="2SU8oJdFFL9" role="2Oq$k0">
                          <node concept="37vLTw" id="2SU8oJdFFLa" role="2Oq$k0">
                            <ref role="3cqZAo" node="2SU8oJdFFJm" resolve="myNode" />
                          </node>
                          <node concept="3Tsc0h" id="2SU8oJdFOl3" role="2OqNvi">
                            <ref role="3TtcxE" to="xiqq:uLhTRR7MVq" resolve="applications" />
                          </node>
                        </node>
                        <node concept="3$u5V9" id="2SU8oJdFFLc" role="2OqNvi">
                          <node concept="1bVj0M" id="2SU8oJdFFLd" role="23t8la">
                            <node concept="3clFbS" id="2SU8oJdFFLe" role="1bW5cS">
                              <node concept="3clFbF" id="2SU8oJdFFLf" role="3cqZAp">
                                <node concept="10QFUN" id="2SU8oJdFFLg" role="3clFbG">
                                  <node concept="3uibUv" id="2SU8oJdFFLh" role="10QFUM">
                                    <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
                                  </node>
                                  <node concept="2ShNRf" id="2SU8oJdFFLi" role="10QFUP">
                                    <node concept="1pGfFk" id="2SU8oJdFFLj" role="2ShVmc">
                                      <ref role="37wK5l" to="de0p:7ii99HMlpha" resolve="ChooseProjectionAction" />
                                      <node concept="Xjq3P" id="2SU8oJdFFLk" role="37wK5m" />
                                      <node concept="2OqwBi" id="2SU8oJdFFLl" role="37wK5m">
                                        <node concept="37vLTw" id="2SU8oJdFFLm" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2SU8oJdFFLo" resolve="it" />
                                        </node>
                                        <node concept="3TrcHB" id="2SU8oJdFFLn" role="2OqNvi">
                                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="2SU8oJdFFLo" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="2SU8oJdFFLp" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="ANE8D" id="2SU8oJdFFLq" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="2SU8oJdFFLr" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdFFLs" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdFFLt" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdFFLu" role="jymVt">
      <property role="TrG5h" value="getCreateProjectionActions" />
      <node concept="3Tm1VV" id="2SU8oJdFFLv" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdFFLw" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2SU8oJdFFLx" role="11_B2D">
          <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
        </node>
      </node>
      <node concept="3clFbS" id="2SU8oJdFFLy" role="3clF47">
        <node concept="3clFbF" id="2SU8oJdFFLz" role="3cqZAp">
          <node concept="2YIFZM" id="2SU8oJdFFL$" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="2ShNRf" id="2SU8oJdFFL_" role="37wK5m">
              <node concept="YeOm9" id="2SU8oJdFFLA" role="2ShVmc">
                <node concept="1Y3b0j" id="2SU8oJdFFLB" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="qkt:~AnAction" resolve="AnAction" />
                  <ref role="37wK5l" to="qkt:~AnAction.&lt;init&gt;(java.lang.String)" resolve="AnAction" />
                  <node concept="2tJIrI" id="2SU8oJdFFLC" role="jymVt" />
                  <node concept="3clFb_" id="2SU8oJdFFLD" role="jymVt">
                    <property role="TrG5h" value="actionPerformed" />
                    <node concept="3Tm1VV" id="2SU8oJdFFLE" role="1B3o_S" />
                    <node concept="3cqZAl" id="2SU8oJdFFLF" role="3clF45" />
                    <node concept="37vLTG" id="2SU8oJdFFLG" role="3clF46">
                      <property role="TrG5h" value="event" />
                      <node concept="3uibUv" id="2SU8oJdFFLH" role="1tU5fm">
                        <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
                      </node>
                      <node concept="2AHcQZ" id="2SU8oJdFFLI" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="2SU8oJdFFLJ" role="3clF47">
                      <node concept="3cpWs8" id="2SU8oJdFFLK" role="3cqZAp">
                        <node concept="3cpWsn" id="2SU8oJdFFLL" role="3cpWs9">
                          <property role="TrG5h" value="project" />
                          <node concept="3uibUv" id="2SU8oJdFFLM" role="1tU5fm">
                            <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                          </node>
                          <node concept="2OqwBi" id="2SU8oJdFFLN" role="33vP2m">
                            <node concept="37vLTw" id="2SU8oJdFFLO" role="2Oq$k0">
                              <ref role="3cqZAo" node="2SU8oJdFFLG" resolve="event" />
                            </node>
                            <node concept="liA8E" id="2SU8oJdFFLP" role="2OqNvi">
                              <ref role="37wK5l" to="qkt:~AnActionEvent.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                              <node concept="10M0yZ" id="2SU8oJdFFLQ" role="37wK5m">
                                <ref role="1PxDUh" to="3s15:~MPSDataKeys" resolve="MPSDataKeys" />
                                <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="2SU8oJdFFLR" role="3cqZAp">
                        <node concept="3cpWsn" id="2SU8oJdFFLS" role="3cpWs9">
                          <property role="TrG5h" value="editor" />
                          <node concept="3uibUv" id="2SU8oJdFFLT" role="1tU5fm">
                            <ref role="3uigEE" to="de0p:7Y8B9wpd$4e" resolve="HeaderedNodeEditor" />
                          </node>
                          <node concept="2OqwBi" id="2SU8oJdFFLU" role="33vP2m">
                            <node concept="37vLTw" id="2SU8oJdFFLV" role="2Oq$k0">
                              <ref role="3cqZAo" node="2SU8oJdFFLG" resolve="event" />
                            </node>
                            <node concept="liA8E" id="2SU8oJdFFLW" role="2OqNvi">
                              <ref role="37wK5l" to="qkt:~AnActionEvent.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                              <node concept="10M0yZ" id="2SU8oJdFFLX" role="37wK5m">
                                <ref role="1PxDUh" to="de0p:7Y8B9wpne4m" resolve="HeaderedEditorDataKeys" />
                                <ref role="3cqZAo" to="de0p:7Y8B9wpnhj$" resolve="EDITOR" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="2SU8oJdFFLY" role="3cqZAp" />
                      <node concept="3clFbJ" id="2SU8oJdFFLZ" role="3cqZAp">
                        <node concept="3clFbS" id="2SU8oJdFFM0" role="3clFbx">
                          <node concept="3cpWs6" id="2SU8oJdFFM1" role="3cqZAp" />
                        </node>
                        <node concept="22lmx$" id="2SU8oJdFFM2" role="3clFbw">
                          <node concept="3clFbC" id="2SU8oJdFFM3" role="3uHU7B">
                            <node concept="37vLTw" id="2SU8oJdFFM4" role="3uHU7B">
                              <ref role="3cqZAo" node="2SU8oJdFFLL" resolve="project" />
                            </node>
                            <node concept="10Nm6u" id="2SU8oJdFFM5" role="3uHU7w" />
                          </node>
                          <node concept="3clFbC" id="2SU8oJdFFM6" role="3uHU7w">
                            <node concept="10Nm6u" id="2SU8oJdFFM7" role="3uHU7w" />
                            <node concept="37vLTw" id="2SU8oJdFFM8" role="3uHU7B">
                              <ref role="3cqZAo" node="2SU8oJdFFLS" resolve="editor" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2SU8oJdFFM9" role="3cqZAp">
                        <node concept="2OqwBi" id="2SU8oJdFFMa" role="3clFbG">
                          <node concept="2OqwBi" id="2SU8oJdFFMb" role="2Oq$k0">
                            <node concept="liA8E" id="2SU8oJdFFMc" role="2OqNvi">
                              <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                            </node>
                            <node concept="37vLTw" id="2SU8oJdFFMd" role="2Oq$k0">
                              <ref role="3cqZAo" node="2SU8oJdFFLL" resolve="project" />
                            </node>
                          </node>
                          <node concept="liA8E" id="2SU8oJdFFMe" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable)" resolve="executeCommand" />
                            <node concept="1bVj0M" id="2SU8oJdFFMf" role="37wK5m">
                              <node concept="3clFbS" id="2SU8oJdFFMg" role="1bW5cS">
                                <node concept="3cpWs8" id="2SU8oJdFFMh" role="3cqZAp">
                                  <node concept="3cpWsn" id="2SU8oJdFFMi" role="3cpWs9">
                                    <property role="TrG5h" value="application" />
                                    <node concept="3Tqbb2" id="2SU8oJdFFMj" role="1tU5fm">
                                      <ref role="ehGHo" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
                                    </node>
                                    <node concept="2ShNRf" id="2SU8oJdFFMk" role="33vP2m">
                                      <node concept="3zrR0B" id="2SU8oJdFFMl" role="2ShVmc">
                                        <node concept="3Tqbb2" id="2SU8oJdFFMm" role="3zrR0E">
                                          <ref role="ehGHo" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="2SU8oJdFFMn" role="3cqZAp">
                                  <node concept="2OqwBi" id="2SU8oJdFFMo" role="3clFbG">
                                    <node concept="2OqwBi" id="2SU8oJdFFMp" role="2Oq$k0">
                                      <node concept="37vLTw" id="2SU8oJdFFMq" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2SU8oJdFFJm" resolve="myNode" />
                                      </node>
                                      <node concept="3Tsc0h" id="2SU8oJdFNav" role="2OqNvi">
                                        <ref role="3TtcxE" to="xiqq:uLhTRR7MVq" resolve="applications" />
                                      </node>
                                    </node>
                                    <node concept="TSZUe" id="2SU8oJdFFMs" role="2OqNvi">
                                      <node concept="37vLTw" id="2SU8oJdFFMt" role="25WWJ7">
                                        <ref role="3cqZAo" node="2SU8oJdFFMi" resolve="application" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="2SU8oJdFFMu" role="3cqZAp">
                                  <node concept="2OqwBi" id="2SU8oJdFFMv" role="3clFbG">
                                    <node concept="37vLTw" id="2SU8oJdFFMw" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2SU8oJdFFLS" resolve="editor" />
                                    </node>
                                    <node concept="liA8E" id="2SU8oJdFFMx" role="2OqNvi">
                                      <ref role="37wK5l" to="de0p:7Y8B9wpn_eO" resolve="chooseProjection" />
                                      <node concept="2OqwBi" id="2SU8oJdFFMy" role="37wK5m">
                                        <node concept="Xjq3P" id="2SU8oJdFFMz" role="2Oq$k0">
                                          <ref role="1HBi2w" node="2SU8oJdFFJk" resolve="RichApplicationProjectionController" />
                                        </node>
                                        <node concept="liA8E" id="2SU8oJdFFM$" role="2OqNvi">
                                          <ref role="37wK5l" node="2SU8oJdFFJR" resolve="createProjection" />
                                          <node concept="Xl_RD" id="2SU8oJdFFM_" role="37wK5m">
                                            <property role="Xl_RC" value="" />
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
                    <node concept="2AHcQZ" id="2SU8oJdFFMP" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3Tm1VV" id="2SU8oJdFFMQ" role="1B3o_S" />
                  <node concept="Xl_RD" id="2SU8oJdFFMR" role="37wK5m">
                    <property role="Xl_RC" value="New Application" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="2SU8oJdFFMS" role="3PaCim">
              <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdFFMT" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdFFMU" role="jymVt" />
    <node concept="3Tm1VV" id="2SU8oJdFFMV" role="1B3o_S" />
    <node concept="3uibUv" id="2SU8oJdFFMW" role="EKbjA">
      <ref role="3uigEE" to="de0p:7Y8B9wpj6Z6" resolve="HeaderedEditorProjectionController" />
    </node>
  </node>
  <node concept="312cEu" id="2SU8oJdFQLo">
    <property role="TrG5h" value="RichApplicationProjection" />
    <node concept="2tJIrI" id="2SU8oJdFQLp" role="jymVt" />
    <node concept="312cEg" id="2SU8oJdHpg6" role="jymVt">
      <property role="TrG5h" value="myInstance" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2SU8oJdHoUL" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtSCsTj" role="1tU5fm">
        <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
    </node>
    <node concept="312cEg" id="2SU8oJdHrM_" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2SU8oJdHrbq" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdHu86" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMrP_V" role="jymVt" />
    <node concept="Wx3nA" id="4gibKcMrPZo" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="PERSISTENCE_KEY" />
      <node concept="3Tm1VV" id="4gibKcMrPZp" role="1B3o_S" />
      <node concept="17QB3L" id="4gibKcMrPZq" role="1tU5fm" />
      <node concept="Xl_RD" id="4gibKcMrPZr" role="33vP2m">
        <property role="Xl_RC" value="instance-ref" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdFQLt" role="jymVt" />
    <node concept="3Tm1VV" id="2SU8oJdFQLu" role="1B3o_S" />
    <node concept="3uibUv" id="2SU8oJdFQLv" role="1zkMxy">
      <ref role="3uigEE" to="de0p:7Y8B9wpmJ8m" resolve="SimpleHeaderedEditorProjection" />
    </node>
    <node concept="3clFbW" id="2SU8oJdFQLw" role="jymVt">
      <node concept="3cqZAl" id="2SU8oJdFQLx" role="3clF45" />
      <node concept="3Tm1VV" id="2SU8oJdFQLy" role="1B3o_S" />
      <node concept="3clFbS" id="2SU8oJdFQLz" role="3clF47">
        <node concept="XkiVB" id="2SU8oJdFQL$" role="3cqZAp">
          <ref role="37wK5l" to="de0p:7Y8B9wpmJqb" resolve="SimpleHeaderedEditorProjection" />
          <node concept="37vLTw" id="2SU8oJdFQL_" role="37wK5m">
            <ref role="3cqZAo" node="2SU8oJdFQLH" resolve="node" />
          </node>
          <node concept="37vLTw" id="2SU8oJdFQLA" role="37wK5m">
            <ref role="3cqZAo" node="2SU8oJdFQLJ" resolve="controller" />
          </node>
          <node concept="37vLTw" id="2SU8oJdFQLB" role="37wK5m">
            <ref role="3cqZAo" node="2SU8oJdFQLL" resolve="name" />
          </node>
          <node concept="37vLTw" id="2SU8oJdFQLC" role="37wK5m">
            <ref role="3cqZAo" node="2SU8oJdFQLN" resolve="hints" />
          </node>
        </node>
        <node concept="3clFbF" id="2SU8oJdHq4n" role="3cqZAp">
          <node concept="37vLTI" id="2SU8oJdHqi_" role="3clFbG">
            <node concept="37vLTw" id="2SU8oJdHqyX" role="37vLTx">
              <ref role="3cqZAo" node="2SU8oJdHpCm" resolve="instance" />
            </node>
            <node concept="37vLTw" id="2SU8oJdHq4l" role="37vLTJ">
              <ref role="3cqZAo" node="2SU8oJdHpg6" resolve="myInstance" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2SU8oJdHtYG" role="3cqZAp">
          <node concept="37vLTI" id="2SU8oJdHtYH" role="3clFbG">
            <node concept="37vLTw" id="2SU8oJdHv6x" role="37vLTx">
              <ref role="3cqZAo" node="2SU8oJdHuoA" resolve="project" />
            </node>
            <node concept="37vLTw" id="2SU8oJdHuV_" role="37vLTJ">
              <ref role="3cqZAo" node="2SU8oJdHrM_" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2SU8oJdFQLH" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2SU8oJdFQLI" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="2SU8oJdFQLJ" role="3clF46">
        <property role="TrG5h" value="controller" />
        <node concept="3uibUv" id="2SU8oJdFQLK" role="1tU5fm">
          <ref role="3uigEE" to="de0p:7Y8B9wpj6Z6" resolve="HeaderedEditorProjectionController" />
        </node>
      </node>
      <node concept="37vLTG" id="2SU8oJdFQLL" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="2SU8oJdFQLM" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="2SU8oJdFQLN" role="3clF46">
        <property role="TrG5h" value="hints" />
        <node concept="10Q1$e" id="2SU8oJdFQLO" role="1tU5fm">
          <node concept="17QB3L" id="2SU8oJdFQLP" role="10Q1$1" />
        </node>
      </node>
      <node concept="37vLTG" id="2SU8oJdHpCm" role="3clF46">
        <property role="TrG5h" value="instance" />
        <node concept="3uibUv" id="4kSwwtSCtdz" role="1tU5fm">
          <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="2SU8oJdHuoA" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2SU8oJdHuoB" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdHqLd" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdHqLf" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3uibUv" id="4kSwwtSCtoh" role="3clF45">
        <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
      <node concept="3Tm1VV" id="2SU8oJdHqLh" role="1B3o_S" />
      <node concept="3clFbS" id="2SU8oJdHqLi" role="3clF47">
        <node concept="3clFbF" id="2SU8oJdHqLj" role="3cqZAp">
          <node concept="37vLTw" id="2SU8oJdHqLk" role="3clFbG">
            <ref role="3cqZAo" node="2SU8oJdHpg6" resolve="myInstance" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdHqLl" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdHqLm" role="jymVt">
      <property role="TrG5h" value="createHeaderComponent" />
      <node concept="3Tm1VV" id="2SU8oJdHqLn" role="1B3o_S" />
      <node concept="3uibUv" id="2SU8oJdHqLo" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2AHcQZ" id="2SU8oJdHqLp" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="2AHcQZ" id="2SU8oJdHqLq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="2SU8oJdHqLr" role="3clF47">
        <node concept="3clFbF" id="2SU8oJdHqLs" role="3cqZAp">
          <node concept="2OqwBi" id="2SU8oJdHqLt" role="3clFbG">
            <node concept="2ShNRf" id="2SU8oJdHqLu" role="2Oq$k0">
              <node concept="1pGfFk" id="2SU8oJdHqLv" role="2ShVmc">
                <ref role="37wK5l" node="1QSEqLh$ahC" resolve="NetworkInstanceHeaderComponentProvider" />
                <node concept="37vLTw" id="2SU8oJdHqLw" role="37wK5m">
                  <ref role="3cqZAo" to="de0p:1QSEqLhAhx5" resolve="myNode" />
                </node>
                <node concept="37vLTw" id="2SU8oJdHqLx" role="37wK5m">
                  <ref role="3cqZAo" node="2SU8oJdHpg6" resolve="myInstance" />
                </node>
                <node concept="37vLTw" id="2SU8oJdHvf0" role="37wK5m">
                  <ref role="3cqZAo" node="2SU8oJdHrM_" resolve="myProject" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2SU8oJdHqLz" role="2OqNvi">
              <ref role="37wK5l" node="1QSEqLh_WCu" resolve="getComponent" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SU8oJdFQLS" role="jymVt" />
    <node concept="3clFb_" id="2SU8oJdFQLT" role="jymVt">
      <property role="TrG5h" value="getData" />
      <node concept="3Tm1VV" id="2SU8oJdFQLU" role="1B3o_S" />
      <node concept="2AHcQZ" id="2SU8oJdFQLV" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="2SU8oJdFQLW" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="2SU8oJdFQLX" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="2SU8oJdFQLY" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="2SU8oJdFQLZ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="2AHcQZ" id="2SU8oJdFQM0" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2SU8oJdFQM1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="2SU8oJdFQM2" role="3clF47">
        <node concept="3clFbJ" id="2SU8oJdFQM3" role="3cqZAp">
          <node concept="3clFbS" id="2SU8oJdFQM4" role="3clFbx">
            <node concept="3cpWs6" id="4kSwwtS$wK2" role="3cqZAp">
              <node concept="2OqwBi" id="4kSwwtS$wK3" role="3cqZAk">
                <node concept="2OqwBi" id="4kSwwtSCtU0" role="2Oq$k0">
                  <node concept="37vLTw" id="4kSwwtSCumN" role="2Oq$k0">
                    <ref role="3cqZAo" node="2SU8oJdHpg6" resolve="myInstance" />
                  </node>
                  <node concept="liA8E" id="4kSwwtSCtU3" role="2OqNvi">
                    <ref role="37wK5l" to="rk1n:4kSwwtS$t0Y" resolve="getRootInstance" />
                  </node>
                </node>
                <node concept="liA8E" id="4kSwwtSCuDY" role="2OqNvi">
                  <ref role="37wK5l" to="rk1n:4kSwwtS$sVt" resolve="getDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="2SU8oJdFQM7" role="3clFbw">
            <node concept="37vLTw" id="2SU8oJdFQM8" role="3uHU7w">
              <ref role="3cqZAo" node="2SU8oJdFQLX" resolve="string" />
            </node>
            <node concept="2OqwBi" id="2SU8oJdFQM9" role="3uHU7B">
              <node concept="10M0yZ" id="2SU8oJdFRhX" role="2Oq$k0">
                <ref role="3cqZAo" node="2SU8oJdEKlf" resolve="APPLICATION" />
                <ref role="1PxDUh" node="3vwudsmYiwt" resolve="RichEditorDataKeys" />
              </node>
              <node concept="liA8E" id="2SU8oJdFQMb" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2SU8oJdHoBZ" role="3cqZAp">
          <node concept="3clFbS" id="2SU8oJdHoC0" role="3clFbx">
            <node concept="3cpWs6" id="2SU8oJdHoC1" role="3cqZAp">
              <node concept="37vLTw" id="2SU8oJdHvwV" role="3cqZAk">
                <ref role="3cqZAo" node="2SU8oJdHpg6" resolve="myInstance" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="2SU8oJdHoC3" role="3clFbw">
            <node concept="2OqwBi" id="2SU8oJdHpp4" role="3uHU7B">
              <node concept="10M0yZ" id="2SU8oJdHpp5" role="2Oq$k0">
                <ref role="3cqZAo" node="1QSEqLhW3tU" resolve="NETWORK_INSTANCE" />
                <ref role="1PxDUh" node="3vwudsmYiwt" resolve="RichEditorDataKeys" />
              </node>
              <node concept="liA8E" id="2SU8oJdHpp6" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="37vLTw" id="2SU8oJdHpyO" role="3uHU7w">
              <ref role="3cqZAo" node="2SU8oJdFQLX" resolve="string" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2SU8oJdFQMc" role="3cqZAp">
          <node concept="10Nm6u" id="2SU8oJdFQMd" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4gibKcMrP54" role="jymVt" />
    <node concept="3clFb_" id="4gibKcMrP56" role="jymVt">
      <property role="TrG5h" value="saveState" />
      <node concept="3Tm1VV" id="4gibKcMrP57" role="1B3o_S" />
      <node concept="3cqZAl" id="4gibKcMrP58" role="3clF45" />
      <node concept="37vLTG" id="4gibKcMrP59" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="3uibUv" id="4gibKcMrP5a" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
        </node>
        <node concept="2AHcQZ" id="4gibKcMrP5b" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="4gibKcMrP5c" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="4gibKcMrP5d" role="3clF47">
        <node concept="3clFbF" id="4gibKcMrP5e" role="3cqZAp">
          <node concept="2OqwBi" id="4gibKcMrP5f" role="3clFbG">
            <node concept="37vLTw" id="4gibKcMrP5g" role="2Oq$k0">
              <ref role="3cqZAo" node="4gibKcMrP59" resolve="element" />
            </node>
            <node concept="liA8E" id="4gibKcMrP5h" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
              <node concept="37vLTw" id="4gibKcMrQRr" role="37wK5m">
                <ref role="3cqZAo" node="4gibKcMrPZo" resolve="PERSISTENCE_KEY" />
              </node>
              <node concept="2OqwBi" id="4gibKcMrP5j" role="37wK5m">
                <node concept="2YIFZM" id="4gibKcMrP5k" role="2Oq$k0">
                  <ref role="37wK5l" to="rwq3:1QSEqLhXrjF" resolve="create" />
                  <ref role="1Pybhc" to="rwq3:1QSEqLhWl9W" resolve="MPSNetworkInstanceReference" />
                  <node concept="37vLTw" id="4gibKcMrP5l" role="37wK5m">
                    <ref role="3cqZAo" node="2SU8oJdHpg6" resolve="myInstance" />
                  </node>
                </node>
                <node concept="liA8E" id="4gibKcMrP5m" role="2OqNvi">
                  <ref role="37wK5l" to="rwq3:1QSEqLhWZMH" resolve="serialize" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2SP6YJBU5l7">
    <property role="TrG5h" value="RichResourceProjectionController" />
    <node concept="2tJIrI" id="2SP6YJBU5l8" role="jymVt" />
    <node concept="312cEg" id="2SP6YJBU5l9" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2SP6YJBU5la" role="1B3o_S" />
      <node concept="3Tqbb2" id="2SP6YJBU5lb" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="2SP6YJBU5lc" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2SP6YJBU5ld" role="1B3o_S" />
      <node concept="3uibUv" id="2SP6YJBU5le" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SP6YJBU5lf" role="jymVt" />
    <node concept="3clFbW" id="2SP6YJBU5lg" role="jymVt">
      <node concept="3cqZAl" id="2SP6YJBU5lh" role="3clF45" />
      <node concept="3Tm1VV" id="2SP6YJBU5li" role="1B3o_S" />
      <node concept="3clFbS" id="2SP6YJBU5lj" role="3clF47">
        <node concept="3clFbF" id="2SP6YJBU5lk" role="3cqZAp">
          <node concept="37vLTI" id="2SP6YJBU5ll" role="3clFbG">
            <node concept="37vLTw" id="2SP6YJBU5lm" role="37vLTx">
              <ref role="3cqZAo" node="2SP6YJBU5ls" resolve="node" />
            </node>
            <node concept="37vLTw" id="2SP6YJBU5ln" role="37vLTJ">
              <ref role="3cqZAo" node="2SP6YJBU5l9" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2SP6YJBU5lo" role="3cqZAp">
          <node concept="37vLTI" id="2SP6YJBU5lp" role="3clFbG">
            <node concept="37vLTw" id="2SP6YJBU5lq" role="37vLTx">
              <ref role="3cqZAo" node="2SP6YJBU5lu" resolve="project" />
            </node>
            <node concept="37vLTw" id="2SP6YJBU5lr" role="37vLTJ">
              <ref role="3cqZAo" node="2SP6YJBU5lc" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2SP6YJBU5ls" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="2SP6YJBU5lt" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="2SP6YJBU5lu" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2SP6YJBU5lv" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SP6YJBU5lw" role="jymVt" />
    <node concept="3clFb_" id="2SP6YJBU5lx" role="jymVt">
      <property role="TrG5h" value="getId" />
      <node concept="3Tm1VV" id="2SP6YJBU5ly" role="1B3o_S" />
      <node concept="3uibUv" id="2SP6YJBU5lz" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="2SP6YJBU5l$" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2SP6YJBU5l_" role="3clF47">
        <node concept="3clFbF" id="2SP6YJBU5lA" role="3cqZAp">
          <node concept="Xl_RD" id="2SP6YJBU5lB" role="3clFbG">
            <property role="Xl_RC" value="Resource" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2SP6YJBU5lC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SP6YJBU5lD" role="jymVt" />
    <node concept="3clFb_" id="2SP6YJBU5lE" role="jymVt">
      <property role="TrG5h" value="createProjection" />
      <node concept="3Tm1VV" id="2SP6YJBU5lF" role="1B3o_S" />
      <node concept="3uibUv" id="2SP6YJBU5lG" role="3clF45">
        <ref role="3uigEE" to="de0p:7Y8B9wpl75t" resolve="HeaderedEditorProjection" />
      </node>
      <node concept="37vLTG" id="2SP6YJBU5lH" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="2SP6YJBU5lI" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="2SP6YJBU5lJ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2SP6YJBU5lK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2SP6YJBU5lL" role="3clF47">
        <node concept="3cpWs8" id="2SP6YJBUskT" role="3cqZAp">
          <node concept="3cpWsn" id="2SP6YJBUskW" role="3cpWs9">
            <property role="TrG5h" value="names" />
            <node concept="10Q1$e" id="2SP6YJBUt8G" role="1tU5fm">
              <node concept="17QB3L" id="2SP6YJBUskR" role="10Q1$1" />
            </node>
            <node concept="2OqwBi" id="2SP6YJBUtB$" role="33vP2m">
              <node concept="37vLTw" id="2SP6YJBUtp9" role="2Oq$k0">
                <ref role="3cqZAo" node="2SP6YJBU5lH" resolve="name" />
              </node>
              <node concept="liA8E" id="2SP6YJBUu7f" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.split(java.lang.String)" resolve="split" />
                <node concept="Xl_RD" id="2SP6YJBUxaT" role="37wK5m">
                  <property role="Xl_RC" value="\\." />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2SP6YJBU_em" role="3cqZAp">
          <node concept="3cpWsn" id="2SP6YJBU_ep" role="3cpWs9">
            <property role="TrG5h" value="deviceName" />
            <node concept="17QB3L" id="2SP6YJBU_ek" role="1tU5fm" />
            <node concept="AH0OO" id="2SP6YJBUBG6" role="33vP2m">
              <node concept="3cmrfG" id="2SP6YJBUBOm" role="AHEQo">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="37vLTw" id="2SP6YJBUBqe" role="AHHXb">
                <ref role="3cqZAo" node="2SP6YJBUskW" resolve="names" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2SP6YJBUBP7" role="3cqZAp">
          <node concept="3cpWsn" id="2SP6YJBUBP8" role="3cpWs9">
            <property role="TrG5h" value="resoruceName" />
            <node concept="17QB3L" id="2SP6YJBUBP9" role="1tU5fm" />
            <node concept="AH0OO" id="2SP6YJBUDoP" role="33vP2m">
              <node concept="3cmrfG" id="2SP6YJBUDx7" role="AHEQo">
                <property role="3cmrfH" value="1" />
              </node>
              <node concept="37vLTw" id="2SP6YJBUDfS" role="AHHXb">
                <ref role="3cqZAo" node="2SP6YJBUskW" resolve="names" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2SP6YJBU5lM" role="3cqZAp">
          <node concept="3cpWsn" id="2SP6YJBU5lN" role="3cpWs9">
            <property role="TrG5h" value="resourceNode" />
            <node concept="3Tqbb2" id="2SP6YJBU5lO" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
            </node>
            <node concept="10Nm6u" id="2SP6YJBU5lP" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbF" id="2SP6YJBU5lQ" role="3cqZAp">
          <node concept="2OqwBi" id="2SP6YJBU5lR" role="3clFbG">
            <node concept="2OqwBi" id="2SP6YJBU5lS" role="2Oq$k0">
              <node concept="37vLTw" id="2SP6YJBU5lT" role="2Oq$k0">
                <ref role="3cqZAo" node="2SP6YJBU5lc" resolve="myProject" />
              </node>
              <node concept="liA8E" id="2SP6YJBU5lU" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="2SP6YJBU5lV" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="2SP6YJBU5lW" role="37wK5m">
                <node concept="3clFbS" id="2SP6YJBU5lX" role="1bW5cS">
                  <node concept="3clFbF" id="2SP6YJBU5lY" role="3cqZAp">
                    <node concept="37vLTI" id="2SP6YJBU5lZ" role="3clFbG">
                      <node concept="37vLTw" id="2SP6YJBU5m0" role="37vLTJ">
                        <ref role="3cqZAo" node="2SP6YJBU5lN" resolve="resourceNode" />
                      </node>
                      <node concept="2OqwBi" id="2SP6YJBUNiR" role="37vLTx">
                        <node concept="2OqwBi" id="2SP6YJBUKs9" role="2Oq$k0">
                          <node concept="2OqwBi" id="2SP6YJBU5m1" role="2Oq$k0">
                            <node concept="2OqwBi" id="2SP6YJBU5m2" role="2Oq$k0">
                              <node concept="37vLTw" id="2SP6YJBU5m3" role="2Oq$k0">
                                <ref role="3cqZAo" node="2SP6YJBU5l9" resolve="myNode" />
                              </node>
                              <node concept="3Tsc0h" id="2SP6YJBUgpl" role="2OqNvi">
                                <ref role="3TtcxE" to="xiqq:uLhTRR7MVs" resolve="devices" />
                              </node>
                            </node>
                            <node concept="1z4cxt" id="2SP6YJBU5m5" role="2OqNvi">
                              <node concept="1bVj0M" id="2SP6YJBU5m6" role="23t8la">
                                <node concept="3clFbS" id="2SP6YJBU5m7" role="1bW5cS">
                                  <node concept="3clFbJ" id="2SP6YJBU5m8" role="3cqZAp">
                                    <node concept="3clFbS" id="2SP6YJBU5m9" role="3clFbx">
                                      <node concept="3cpWs6" id="2SP6YJBU5ma" role="3cqZAp">
                                        <node concept="2OqwBi" id="2SP6YJBU5mb" role="3cqZAk">
                                          <node concept="2OqwBi" id="2SP6YJBU5mc" role="2Oq$k0">
                                            <node concept="37vLTw" id="2SP6YJBU5md" role="2Oq$k0">
                                              <ref role="3cqZAo" node="2SP6YJBU5mr" resolve="it" />
                                            </node>
                                            <node concept="3TrcHB" id="2SP6YJBU5me" role="2OqNvi">
                                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                            </node>
                                          </node>
                                          <node concept="17RlXB" id="2SP6YJBU5mf" role="2OqNvi" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="2SP6YJBU5mg" role="3clFbw">
                                      <node concept="37vLTw" id="2SP6YJBUQQO" role="2Oq$k0">
                                        <ref role="3cqZAo" node="2SP6YJBU_ep" resolve="deviceName" />
                                      </node>
                                      <node concept="17RlXB" id="2SP6YJBU5mi" role="2OqNvi" />
                                    </node>
                                    <node concept="9aQIb" id="2SP6YJBU5mj" role="9aQIa">
                                      <node concept="3clFbS" id="2SP6YJBU5mk" role="9aQI4">
                                        <node concept="3clFbF" id="2SP6YJBU5ml" role="3cqZAp">
                                          <node concept="17R0WA" id="2SP6YJBU5mm" role="3clFbG">
                                            <node concept="37vLTw" id="2SP6YJBURkT" role="3uHU7w">
                                              <ref role="3cqZAo" node="2SP6YJBU_ep" resolve="deviceName" />
                                            </node>
                                            <node concept="2OqwBi" id="2SP6YJBU5mo" role="3uHU7B">
                                              <node concept="37vLTw" id="2SP6YJBU5mp" role="2Oq$k0">
                                                <ref role="3cqZAo" node="2SP6YJBU5mr" resolve="it" />
                                              </node>
                                              <node concept="3TrcHB" id="2SP6YJBU5mq" role="2OqNvi">
                                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Rh6nW" id="2SP6YJBU5mr" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="2SP6YJBU5ms" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3Tsc0h" id="2SP6YJBUKXc" role="2OqNvi">
                            <ref role="3TtcxE" to="xiqq:1WTKUmKKVPK" resolve="resources" />
                          </node>
                        </node>
                        <node concept="1z4cxt" id="2SP6YJBUQz4" role="2OqNvi">
                          <node concept="1bVj0M" id="2SP6YJBUQz6" role="23t8la">
                            <node concept="3clFbS" id="2SP6YJBUQz7" role="1bW5cS">
                              <node concept="3clFbJ" id="2SP6YJBURxJ" role="3cqZAp">
                                <node concept="3clFbS" id="2SP6YJBURxK" role="3clFbx">
                                  <node concept="3cpWs6" id="2SP6YJBURxL" role="3cqZAp">
                                    <node concept="2OqwBi" id="2SP6YJBURxM" role="3cqZAk">
                                      <node concept="2OqwBi" id="2SP6YJBURxN" role="2Oq$k0">
                                        <node concept="37vLTw" id="2SP6YJBURxO" role="2Oq$k0">
                                          <ref role="3cqZAo" node="2SP6YJBUQz8" resolve="it" />
                                        </node>
                                        <node concept="3TrcHB" id="2SP6YJBURxP" role="2OqNvi">
                                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                        </node>
                                      </node>
                                      <node concept="17RlXB" id="2SP6YJBURxQ" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="2SP6YJBURxR" role="3clFbw">
                                  <node concept="37vLTw" id="2SP6YJBURZ8" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2SP6YJBUBP8" resolve="resoruceName" />
                                  </node>
                                  <node concept="17RlXB" id="2SP6YJBURxT" role="2OqNvi" />
                                </node>
                                <node concept="9aQIb" id="2SP6YJBURxU" role="9aQIa">
                                  <node concept="3clFbS" id="2SP6YJBURxV" role="9aQI4">
                                    <node concept="3clFbF" id="2SP6YJBURxW" role="3cqZAp">
                                      <node concept="17R0WA" id="2SP6YJBURxX" role="3clFbG">
                                        <node concept="37vLTw" id="2SP6YJBUSmA" role="3uHU7w">
                                          <ref role="3cqZAo" node="2SP6YJBUBP8" resolve="resoruceName" />
                                        </node>
                                        <node concept="2OqwBi" id="2SP6YJBURxZ" role="3uHU7B">
                                          <node concept="37vLTw" id="2SP6YJBURy0" role="2Oq$k0">
                                            <ref role="3cqZAo" node="2SP6YJBUQz8" resolve="it" />
                                          </node>
                                          <node concept="3TrcHB" id="2SP6YJBURy1" role="2OqNvi">
                                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="2SP6YJBUQz8" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="2SP6YJBUQz9" role="1tU5fm" />
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
        <node concept="3cpWs8" id="2SP6YJBU5mt" role="3cqZAp">
          <node concept="3cpWsn" id="2SP6YJBU5mu" role="3cpWs9">
            <property role="TrG5h" value="resource" />
            <node concept="3uibUv" id="2SP6YJBUSSY" role="1tU5fm">
              <ref role="3uigEE" to="go3h:3MncU7wPlNy" resolve="ResourceDeclarationByNode" />
            </node>
            <node concept="2ShNRf" id="2SP6YJBU5mw" role="33vP2m">
              <node concept="1pGfFk" id="2SP6YJBU5mx" role="2ShVmc">
                <ref role="37wK5l" to="go3h:3MncU7wPyCn" resolve="ResourceDeclarationByNode" />
                <node concept="37vLTw" id="2SP6YJBU5my" role="37wK5m">
                  <ref role="3cqZAo" node="2SP6YJBU5lN" resolve="resourceNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2SP6YJBU5mz" role="3cqZAp">
          <node concept="3cpWsn" id="2SP6YJBU5m$" role="3cpWs9">
            <property role="TrG5h" value="instance" />
            <node concept="3uibUv" id="4kSwwtSCYjt" role="1tU5fm">
              <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
            </node>
            <node concept="2YIFZM" id="4kSwwtSCWKI" role="33vP2m">
              <ref role="37wK5l" to="rk1n:4kSwwtS_o6x" resolve="createForResource" />
              <ref role="1Pybhc" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
              <node concept="37vLTw" id="4kSwwtSCXqZ" role="37wK5m">
                <ref role="3cqZAo" node="2SP6YJBU5mu" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2SP6YJBU5mG" role="3cqZAp">
          <node concept="1rXfSq" id="2SP6YJBU5mH" role="3cqZAk">
            <ref role="37wK5l" node="2SP6YJBU5nA" resolve="createProjection0" />
            <node concept="37vLTw" id="2SP6YJBU5mI" role="37wK5m">
              <ref role="3cqZAo" node="2SP6YJBU5lH" resolve="name" />
            </node>
            <node concept="37vLTw" id="2SP6YJBU5mJ" role="37wK5m">
              <ref role="3cqZAo" node="2SP6YJBU5m$" resolve="instance" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2SP6YJBU5mK" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SP6YJBU5mM" role="jymVt" />
    <node concept="3clFb_" id="2SP6YJBU5mN" role="jymVt">
      <property role="TrG5h" value="restoreProjection" />
      <node concept="3Tm1VV" id="2SP6YJBU5mO" role="1B3o_S" />
      <node concept="3uibUv" id="2SP6YJBU5mP" role="3clF45">
        <ref role="3uigEE" to="de0p:7Y8B9wpl75t" resolve="HeaderedEditorProjection" />
      </node>
      <node concept="37vLTG" id="2SP6YJBU5mQ" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="2SP6YJBU5mR" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="2SP6YJBU5mS" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="2SP6YJBU5mT" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="2SP6YJBU5mU" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
        </node>
        <node concept="2AHcQZ" id="2SP6YJBU5mV" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="2SP6YJBU5mW" role="3clF47">
        <node concept="3cpWs8" id="2SP6YJBU5mX" role="3cqZAp">
          <node concept="3cpWsn" id="2SP6YJBU5mY" role="3cpWs9">
            <property role="TrG5h" value="ref" />
            <node concept="3uibUv" id="2SP6YJBU5mZ" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="2SP6YJBU5n0" role="33vP2m">
              <node concept="37vLTw" id="2SP6YJBU5n1" role="2Oq$k0">
                <ref role="3cqZAo" node="2SP6YJBU5mT" resolve="e" />
              </node>
              <node concept="liA8E" id="2SP6YJBU5n2" role="2OqNvi">
                <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String)" resolve="getAttributeValue" />
                <node concept="10M0yZ" id="2SP6YJBU5n3" role="37wK5m">
                  <ref role="1PxDUh" node="2SU8oJdFQLo" resolve="RichApplicationProjection" />
                  <ref role="3cqZAo" node="4gibKcMrPZo" resolve="PERSISTENCE_KEY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2SP6YJBU5n4" role="3cqZAp">
          <node concept="3cpWsn" id="2SP6YJBU5n5" role="3cpWs9">
            <property role="TrG5h" value="instance" />
            <node concept="3uibUv" id="4kSwwtSCSlr" role="1tU5fm">
              <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
            </node>
            <node concept="3K4zz7" id="2SP6YJBU5n7" role="33vP2m">
              <node concept="3y3z36" id="2SP6YJBU5n8" role="3K4Cdx">
                <node concept="10Nm6u" id="2SP6YJBU5n9" role="3uHU7w" />
                <node concept="37vLTw" id="2SP6YJBU5na" role="3uHU7B">
                  <ref role="3cqZAo" node="2SP6YJBU5mY" resolve="ref" />
                </node>
              </node>
              <node concept="2OqwBi" id="2SP6YJBU5nb" role="3K4E3e">
                <node concept="2YIFZM" id="2SP6YJBU5nc" role="2Oq$k0">
                  <ref role="37wK5l" to="rwq3:1QSEqLhZdF9" resolve="deserialize" />
                  <ref role="1Pybhc" to="rwq3:1QSEqLhWl9W" resolve="MPSNetworkInstanceReference" />
                  <node concept="37vLTw" id="2SP6YJBU5nd" role="37wK5m">
                    <ref role="3cqZAo" node="2SP6YJBU5mY" resolve="ref" />
                  </node>
                </node>
                <node concept="liA8E" id="2SP6YJBU5ne" role="2OqNvi">
                  <ref role="37wK5l" to="rwq3:1QSEqLhWlfG" resolve="resolve" />
                  <node concept="2OqwBi" id="2SP6YJBU5nf" role="37wK5m">
                    <node concept="liA8E" id="2SP6YJBU5ng" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getRepository()" resolve="getRepository" />
                    </node>
                    <node concept="2JrnkZ" id="2SP6YJBU5nh" role="2Oq$k0">
                      <node concept="2OqwBi" id="2SP6YJBU5ni" role="2JrQYb">
                        <node concept="37vLTw" id="2SP6YJBU5nj" role="2Oq$k0">
                          <ref role="3cqZAo" node="2SP6YJBU5l9" resolve="myNode" />
                        </node>
                        <node concept="I4A8Y" id="2SP6YJBU5nk" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="10Nm6u" id="2SP6YJBU5nl" role="3K4GZi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2SP6YJBU5nm" role="3cqZAp">
          <node concept="3clFbS" id="2SP6YJBU5nn" role="3clFbx">
            <node concept="3cpWs6" id="2SP6YJBU5no" role="3cqZAp">
              <node concept="1rXfSq" id="2SP6YJBU5np" role="3cqZAk">
                <ref role="37wK5l" node="2SP6YJBU5nA" resolve="createProjection0" />
                <node concept="37vLTw" id="2SP6YJBU5nq" role="37wK5m">
                  <ref role="3cqZAo" node="2SP6YJBU5mQ" resolve="name" />
                </node>
                <node concept="37vLTw" id="2SP6YJBU5nr" role="37wK5m">
                  <ref role="3cqZAo" node="2SP6YJBU5n5" resolve="instance" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="2SP6YJBU5ns" role="3clFbw">
            <node concept="37vLTw" id="2SP6YJBU5nt" role="3uHU7B">
              <ref role="3cqZAo" node="2SP6YJBU5n5" resolve="instance" />
            </node>
            <node concept="10Nm6u" id="2SP6YJBU5nu" role="3uHU7w" />
          </node>
          <node concept="9aQIb" id="2SP6YJBU5nv" role="9aQIa">
            <node concept="3clFbS" id="2SP6YJBU5nw" role="9aQI4">
              <node concept="3cpWs6" id="2SP6YJBU5nx" role="3cqZAp">
                <node concept="1rXfSq" id="2SP6YJBU5ny" role="3cqZAk">
                  <ref role="37wK5l" node="2SP6YJBU5lE" resolve="createProjection" />
                  <node concept="37vLTw" id="2SP6YJBU5nz" role="37wK5m">
                    <ref role="3cqZAo" node="2SP6YJBU5mQ" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2SP6YJBU5n$" role="3cqZAp" />
      </node>
      <node concept="2AHcQZ" id="2SP6YJBU5n_" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="2SP6YJBU5nA" role="jymVt">
      <property role="TrG5h" value="createProjection0" />
      <node concept="3Tm6S6" id="2SP6YJBU5nB" role="1B3o_S" />
      <node concept="3uibUv" id="2SP6YJBU5nC" role="3clF45">
        <ref role="3uigEE" to="de0p:7Y8B9wpl75t" resolve="HeaderedEditorProjection" />
      </node>
      <node concept="37vLTG" id="2SP6YJBU5nD" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="2SP6YJBU5nE" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="2SP6YJBU5nF" role="3clF46">
        <property role="TrG5h" value="instance" />
        <node concept="3uibUv" id="4kSwwtSCTIu" role="1tU5fm">
          <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
        </node>
      </node>
      <node concept="3clFbS" id="2SP6YJBU5nH" role="3clF47">
        <node concept="3clFbF" id="2SP6YJBU5nI" role="3cqZAp">
          <node concept="2ShNRf" id="2SP6YJBU5nJ" role="3clFbG">
            <node concept="1pGfFk" id="2SP6YJBU5nK" role="2ShVmc">
              <ref role="37wK5l" node="2SP6YJBVLKw" resolve="RichResourceProjection" />
              <node concept="37vLTw" id="2SP6YJBU5nL" role="37wK5m">
                <ref role="3cqZAo" node="2SP6YJBU5l9" resolve="myNode" />
              </node>
              <node concept="Xjq3P" id="2SP6YJBU5nM" role="37wK5m" />
              <node concept="37vLTw" id="2SP6YJBU5nN" role="37wK5m">
                <ref role="3cqZAo" node="2SP6YJBU5nD" resolve="name" />
              </node>
              <node concept="2ShNRf" id="2SP6YJBU5nO" role="37wK5m">
                <node concept="3g6Rrh" id="2SP6YJBU5nP" role="2ShVmc">
                  <node concept="17QB3L" id="2SP6YJBU5nQ" role="3g7fb8" />
                  <node concept="2pYGij" id="2SP6YJBU5nR" role="3g7hyw">
                    <ref role="2pYH_C" to="78d5:2SU8oJdEKXw" resolve="system_res" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="2SP6YJBU5nS" role="37wK5m">
                <ref role="3cqZAo" node="2SP6YJBU5nF" resolve="instance" />
              </node>
              <node concept="37vLTw" id="2SP6YJBU5nT" role="37wK5m">
                <ref role="3cqZAo" node="2SP6YJBU5lc" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SP6YJBU5nU" role="jymVt" />
    <node concept="3clFb_" id="2SP6YJBU5nV" role="jymVt">
      <property role="TrG5h" value="getChooseProjectionActions" />
      <node concept="3Tm1VV" id="2SP6YJBU5nW" role="1B3o_S" />
      <node concept="3uibUv" id="2SP6YJBU5nX" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2SP6YJBU5nY" role="11_B2D">
          <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
        </node>
      </node>
      <node concept="3clFbS" id="2SP6YJBU5nZ" role="3clF47">
        <node concept="3clFbF" id="2SP6YJBU5o0" role="3cqZAp">
          <node concept="2OqwBi" id="2SP6YJBU5o1" role="3clFbG">
            <node concept="2ShNRf" id="2SP6YJBU5o2" role="2Oq$k0">
              <node concept="1pGfFk" id="2SP6YJBU5o3" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.ModelAccess)" resolve="ModelAccessHelper" />
                <node concept="2OqwBi" id="2SP6YJBU5o4" role="37wK5m">
                  <node concept="37vLTw" id="2SP6YJBU5o5" role="2Oq$k0">
                    <ref role="3cqZAo" node="2SP6YJBU5lc" resolve="myProject" />
                  </node>
                  <node concept="liA8E" id="2SP6YJBU5o6" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2SP6YJBU5o7" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="2SP6YJBU5o8" role="37wK5m">
                <node concept="3clFbS" id="2SP6YJBU5o9" role="1bW5cS">
                  <node concept="3clFbF" id="2SP6YJBU5oa" role="3cqZAp">
                    <node concept="2OqwBi" id="2SP6YJBU5ob" role="3clFbG">
                      <node concept="2OqwBi" id="2SP6YJBU5oc" role="2Oq$k0">
                        <node concept="2OqwBi" id="2SP6YJBV$zP" role="2Oq$k0">
                          <node concept="2OqwBi" id="2SP6YJBU5od" role="2Oq$k0">
                            <node concept="37vLTw" id="2SP6YJBU5oe" role="2Oq$k0">
                              <ref role="3cqZAo" node="2SP6YJBU5l9" resolve="myNode" />
                            </node>
                            <node concept="3Tsc0h" id="2SP6YJBUijs" role="2OqNvi">
                              <ref role="3TtcxE" to="xiqq:uLhTRR7MVs" resolve="devices" />
                            </node>
                          </node>
                          <node concept="13MTOL" id="2SP6YJBVBnM" role="2OqNvi">
                            <ref role="13MTZf" to="xiqq:1WTKUmKKVPK" resolve="resources" />
                          </node>
                        </node>
                        <node concept="3$u5V9" id="2SP6YJBU5og" role="2OqNvi">
                          <node concept="1bVj0M" id="2SP6YJBU5oh" role="23t8la">
                            <node concept="3clFbS" id="2SP6YJBU5oi" role="1bW5cS">
                              <node concept="3clFbF" id="2SP6YJBU5oj" role="3cqZAp">
                                <node concept="10QFUN" id="2SP6YJBU5ok" role="3clFbG">
                                  <node concept="3uibUv" id="2SP6YJBU5ol" role="10QFUM">
                                    <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
                                  </node>
                                  <node concept="2ShNRf" id="2SP6YJBU5om" role="10QFUP">
                                    <node concept="1pGfFk" id="2SP6YJBU5on" role="2ShVmc">
                                      <ref role="37wK5l" to="de0p:7ii99HMlpha" resolve="ChooseProjectionAction" />
                                      <node concept="Xjq3P" id="2SP6YJBU5oo" role="37wK5m" />
                                      <node concept="3cpWs3" id="2SP6YJBVBNW" role="37wK5m">
                                        <node concept="2OqwBi" id="2SP6YJBU5op" role="3uHU7w">
                                          <node concept="37vLTw" id="2SP6YJBU5oq" role="2Oq$k0">
                                            <ref role="3cqZAo" node="2SP6YJBU5os" resolve="it" />
                                          </node>
                                          <node concept="3TrcHB" id="2SP6YJBU5or" role="2OqNvi">
                                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                          </node>
                                        </node>
                                        <node concept="3cpWs3" id="2SP6YJBVCSh" role="3uHU7B">
                                          <node concept="2OqwBi" id="2SP6YJBVFxh" role="3uHU7B">
                                            <node concept="1PxgMI" id="2SP6YJBVEUY" role="2Oq$k0">
                                              <node concept="chp4Y" id="2SP6YJBVF9z" role="3oSUPX">
                                                <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
                                              </node>
                                              <node concept="2OqwBi" id="2SP6YJBVDGb" role="1m5AlR">
                                                <node concept="37vLTw" id="2SP6YJBVDdM" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="2SP6YJBU5os" resolve="it" />
                                                </node>
                                                <node concept="1mfA1w" id="2SP6YJBVE4i" role="2OqNvi" />
                                              </node>
                                            </node>
                                            <node concept="3TrcHB" id="2SP6YJBVFRK" role="2OqNvi">
                                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                            </node>
                                          </node>
                                          <node concept="Xl_RD" id="2SP6YJBVCE9" role="3uHU7w">
                                            <property role="Xl_RC" value="." />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Rh6nW" id="2SP6YJBU5os" role="1bW2Oz">
                              <property role="TrG5h" value="it" />
                              <node concept="2jxLKc" id="2SP6YJBU5ot" role="1tU5fm" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="ANE8D" id="2SP6YJBU5ou" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3clFbH" id="2SP6YJBU5ov" role="3cqZAp" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2SP6YJBU5ow" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SP6YJBU5ox" role="jymVt" />
    <node concept="3clFb_" id="2SP6YJBU5oy" role="jymVt">
      <property role="TrG5h" value="getCreateProjectionActions" />
      <node concept="3Tm1VV" id="2SP6YJBU5oz" role="1B3o_S" />
      <node concept="3uibUv" id="2SP6YJBU5o$" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="2SP6YJBU5o_" role="11_B2D">
          <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
        </node>
      </node>
      <node concept="3clFbS" id="2SP6YJBU5oA" role="3clF47">
        <node concept="3clFbF" id="2SP6YJBU5oB" role="3cqZAp">
          <node concept="2YIFZM" id="2SP6YJBVItc" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="2SP6YJBVJPo" role="3PaCim">
              <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2SP6YJBU5pI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2SP6YJBU5pK" role="1B3o_S" />
    <node concept="3uibUv" id="2SP6YJBU5pL" role="EKbjA">
      <ref role="3uigEE" to="de0p:7Y8B9wpj6Z6" resolve="HeaderedEditorProjectionController" />
    </node>
  </node>
  <node concept="312cEu" id="2SP6YJBVLKg">
    <property role="TrG5h" value="RichResourceProjection" />
    <node concept="2tJIrI" id="2SP6YJBVLKh" role="jymVt" />
    <node concept="312cEg" id="2SP6YJBVLKi" role="jymVt">
      <property role="TrG5h" value="myInstance" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2SP6YJBVLKj" role="1B3o_S" />
      <node concept="3uibUv" id="4kSwwtSCLSV" role="1tU5fm">
        <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
    </node>
    <node concept="312cEg" id="2SP6YJBVLKl" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2SP6YJBVLKm" role="1B3o_S" />
      <node concept="3uibUv" id="2SP6YJBVLKn" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SP6YJBVLKo" role="jymVt" />
    <node concept="Wx3nA" id="2SP6YJBVLKp" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="PERSISTENCE_KEY" />
      <node concept="3Tm1VV" id="2SP6YJBVLKq" role="1B3o_S" />
      <node concept="17QB3L" id="2SP6YJBVLKr" role="1tU5fm" />
      <node concept="Xl_RD" id="2SP6YJBVLKs" role="33vP2m">
        <property role="Xl_RC" value="instance-ref" />
      </node>
    </node>
    <node concept="2tJIrI" id="2SP6YJBVLKt" role="jymVt" />
    <node concept="3Tm1VV" id="2SP6YJBVLKu" role="1B3o_S" />
    <node concept="3uibUv" id="2SP6YJBVLKv" role="1zkMxy">
      <ref role="3uigEE" to="de0p:7Y8B9wpmJ8m" resolve="SimpleHeaderedEditorProjection" />
    </node>
    <node concept="3clFbW" id="2SP6YJBVLKw" role="jymVt">
      <node concept="3cqZAl" id="2SP6YJBVLKx" role="3clF45" />
      <node concept="3Tm1VV" id="2SP6YJBVLKy" role="1B3o_S" />
      <node concept="3clFbS" id="2SP6YJBVLKz" role="3clF47">
        <node concept="XkiVB" id="2SP6YJBVLK$" role="3cqZAp">
          <ref role="37wK5l" to="de0p:7Y8B9wpmJqb" resolve="SimpleHeaderedEditorProjection" />
          <node concept="37vLTw" id="2SP6YJBVLK_" role="37wK5m">
            <ref role="3cqZAo" node="2SP6YJBVLKL" resolve="node" />
          </node>
          <node concept="37vLTw" id="2SP6YJBVLKA" role="37wK5m">
            <ref role="3cqZAo" node="2SP6YJBVLKN" resolve="controller" />
          </node>
          <node concept="37vLTw" id="2SP6YJBVLKB" role="37wK5m">
            <ref role="3cqZAo" node="2SP6YJBVLKP" resolve="name" />
          </node>
          <node concept="37vLTw" id="2SP6YJBVLKC" role="37wK5m">
            <ref role="3cqZAo" node="2SP6YJBVLKR" resolve="hints" />
          </node>
        </node>
        <node concept="3clFbF" id="2SP6YJBVLKD" role="3cqZAp">
          <node concept="37vLTI" id="2SP6YJBVLKE" role="3clFbG">
            <node concept="37vLTw" id="2SP6YJBVLKF" role="37vLTx">
              <ref role="3cqZAo" node="2SP6YJBVLKU" resolve="instance" />
            </node>
            <node concept="37vLTw" id="2SP6YJBVLKG" role="37vLTJ">
              <ref role="3cqZAo" node="2SP6YJBVLKi" resolve="myInstance" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2SP6YJBVLKH" role="3cqZAp">
          <node concept="37vLTI" id="2SP6YJBVLKI" role="3clFbG">
            <node concept="37vLTw" id="2SP6YJBVLKJ" role="37vLTx">
              <ref role="3cqZAo" node="2SP6YJBVLKW" resolve="project" />
            </node>
            <node concept="37vLTw" id="2SP6YJBVLKK" role="37vLTJ">
              <ref role="3cqZAo" node="2SP6YJBVLKl" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2SP6YJBVLKL" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="2SP6YJBVLKM" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="2SP6YJBVLKN" role="3clF46">
        <property role="TrG5h" value="controller" />
        <node concept="3uibUv" id="2SP6YJBVLKO" role="1tU5fm">
          <ref role="3uigEE" to="de0p:7Y8B9wpj6Z6" resolve="HeaderedEditorProjectionController" />
        </node>
      </node>
      <node concept="37vLTG" id="2SP6YJBVLKP" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="2SP6YJBVLKQ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="2SP6YJBVLKR" role="3clF46">
        <property role="TrG5h" value="hints" />
        <node concept="10Q1$e" id="2SP6YJBVLKS" role="1tU5fm">
          <node concept="17QB3L" id="2SP6YJBVLKT" role="10Q1$1" />
        </node>
      </node>
      <node concept="37vLTG" id="2SP6YJBVLKU" role="3clF46">
        <property role="TrG5h" value="instance" />
        <node concept="3uibUv" id="4kSwwtSCNkP" role="1tU5fm">
          <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="2SP6YJBVLKW" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2SP6YJBVLKX" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SP6YJBVLKY" role="jymVt" />
    <node concept="3clFb_" id="2SP6YJBVLKZ" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3uibUv" id="4kSwwtSCNsZ" role="3clF45">
        <ref role="3uigEE" to="rk1n:4kSwwtS_6XE" resolve="NetworkInstance" />
      </node>
      <node concept="3Tm1VV" id="2SP6YJBVLL1" role="1B3o_S" />
      <node concept="3clFbS" id="2SP6YJBVLL2" role="3clF47">
        <node concept="3clFbF" id="2SP6YJBVLL3" role="3cqZAp">
          <node concept="37vLTw" id="2SP6YJBVLL4" role="3clFbG">
            <ref role="3cqZAo" node="2SP6YJBVLKi" resolve="myInstance" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SP6YJBVLL5" role="jymVt" />
    <node concept="3clFb_" id="2SP6YJBVLL6" role="jymVt">
      <property role="TrG5h" value="createHeaderComponent" />
      <node concept="3Tm1VV" id="2SP6YJBVLL7" role="1B3o_S" />
      <node concept="3uibUv" id="2SP6YJBVLL8" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2AHcQZ" id="2SP6YJBVLL9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="2AHcQZ" id="2SP6YJBVLLa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="2SP6YJBVLLb" role="3clF47">
        <node concept="3clFbF" id="2SP6YJBVLLc" role="3cqZAp">
          <node concept="2OqwBi" id="2SP6YJBVLLd" role="3clFbG">
            <node concept="2ShNRf" id="2SP6YJBVLLe" role="2Oq$k0">
              <node concept="1pGfFk" id="2SP6YJBVLLf" role="2ShVmc">
                <ref role="37wK5l" node="1QSEqLh$ahC" resolve="NetworkInstanceHeaderComponentProvider" />
                <node concept="37vLTw" id="2SP6YJBVLLg" role="37wK5m">
                  <ref role="3cqZAo" to="de0p:1QSEqLhAhx5" resolve="myNode" />
                </node>
                <node concept="37vLTw" id="2SP6YJBVLLh" role="37wK5m">
                  <ref role="3cqZAo" node="2SP6YJBVLKi" resolve="myInstance" />
                </node>
                <node concept="37vLTw" id="2SP6YJBVLLi" role="37wK5m">
                  <ref role="3cqZAo" node="2SP6YJBVLKl" resolve="myProject" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="2SP6YJBVLLj" role="2OqNvi">
              <ref role="37wK5l" node="1QSEqLh_WCu" resolve="getComponent" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SP6YJBVLLk" role="jymVt" />
    <node concept="3clFb_" id="2SP6YJBVLLl" role="jymVt">
      <property role="TrG5h" value="getData" />
      <node concept="3Tm1VV" id="2SP6YJBVLLm" role="1B3o_S" />
      <node concept="2AHcQZ" id="2SP6YJBVLLn" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="2SP6YJBVLLo" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="2SP6YJBVLLp" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="2SP6YJBVLLq" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="2SP6YJBVLLr" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="2AHcQZ" id="2SP6YJBVLLs" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2SP6YJBVLLt" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="2SP6YJBVLLu" role="3clF47">
        <node concept="3clFbJ" id="2SP6YJBVLLv" role="3cqZAp">
          <node concept="3clFbS" id="2SP6YJBVLLw" role="3clFbx">
            <node concept="3cpWs6" id="4kSwwtS$wKi" role="3cqZAp">
              <node concept="2OqwBi" id="4kSwwtS$wKj" role="3cqZAk">
                <node concept="2OqwBi" id="4kSwwtSCOKO" role="2Oq$k0">
                  <node concept="37vLTw" id="4kSwwtSCPcx" role="2Oq$k0">
                    <ref role="3cqZAo" node="2SP6YJBVLKi" resolve="myInstance" />
                  </node>
                  <node concept="liA8E" id="4kSwwtSCOKR" role="2OqNvi">
                    <ref role="37wK5l" to="rk1n:4kSwwtS$t0Y" resolve="getRootInstance" />
                  </node>
                </node>
                <node concept="liA8E" id="4kSwwtSCP_j" role="2OqNvi">
                  <ref role="37wK5l" to="rk1n:4kSwwtS$sVt" resolve="getDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="2SP6YJBVLL_" role="3clFbw">
            <node concept="37vLTw" id="2SP6YJBVLLA" role="3uHU7w">
              <ref role="3cqZAo" node="2SP6YJBVLLp" resolve="string" />
            </node>
            <node concept="2OqwBi" id="2SP6YJBVLLB" role="3uHU7B">
              <node concept="10M0yZ" id="2SP6YJBWmXm" role="2Oq$k0">
                <ref role="3cqZAo" node="2SU8oJdEK$1" resolve="RESOURCE" />
                <ref role="1PxDUh" node="3vwudsmYiwt" resolve="RichEditorDataKeys" />
              </node>
              <node concept="liA8E" id="2SP6YJBVLLD" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2SP6YJBX58Q" role="3cqZAp">
          <node concept="3clFbS" id="2SP6YJBX58R" role="3clFbx">
            <node concept="3cpWs6" id="4kSwwtS$wKy" role="3cqZAp">
              <node concept="2OqwBi" id="4kSwwtS$wKz" role="3cqZAk">
                <node concept="0kSF2" id="4kSwwtS$wK$" role="2Oq$k0">
                  <node concept="3uibUv" id="4kSwwtS$wK_" role="0kSFW">
                    <ref role="3uigEE" to="2xsi:2SU8oJdIdeb" resolve="ResourceDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="4kSwwtS$wKA" role="0kSFX">
                    <node concept="2OqwBi" id="4kSwwtSCPUl" role="2Oq$k0">
                      <node concept="37vLTw" id="4kSwwtSCQ9H" role="2Oq$k0">
                        <ref role="3cqZAo" node="2SP6YJBVLKi" resolve="myInstance" />
                      </node>
                      <node concept="liA8E" id="4kSwwtSCPUo" role="2OqNvi">
                        <ref role="37wK5l" to="rk1n:4kSwwtS$t0Y" resolve="getRootInstance" />
                      </node>
                    </node>
                    <node concept="liA8E" id="4kSwwtSCQn0" role="2OqNvi">
                      <ref role="37wK5l" to="rk1n:4kSwwtS$sVt" resolve="getDeclaration" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4kSwwtS$wKD" role="2OqNvi">
                  <ref role="37wK5l" to="2xsi:3MncU7wPy7U" resolve="getContainer" />
                </node>
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="2SP6YJBX58W" role="3clFbw">
            <node concept="37vLTw" id="2SP6YJBX58X" role="3uHU7w">
              <ref role="3cqZAo" node="2SP6YJBVLLp" resolve="string" />
            </node>
            <node concept="2OqwBi" id="2SP6YJBX58Y" role="3uHU7B">
              <node concept="10M0yZ" id="2SP6YJBX5pv" role="2Oq$k0">
                <ref role="3cqZAo" node="2SU8oJdEKta" resolve="DEVICE" />
                <ref role="1PxDUh" node="3vwudsmYiwt" resolve="RichEditorDataKeys" />
              </node>
              <node concept="liA8E" id="2SP6YJBX590" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2SP6YJBVLLE" role="3cqZAp">
          <node concept="3clFbS" id="2SP6YJBVLLF" role="3clFbx">
            <node concept="3cpWs6" id="2SP6YJBVLLG" role="3cqZAp">
              <node concept="37vLTw" id="2SP6YJBVLLH" role="3cqZAk">
                <ref role="3cqZAo" node="2SP6YJBVLKi" resolve="myInstance" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="2SP6YJBVLLI" role="3clFbw">
            <node concept="2OqwBi" id="2SP6YJBVLLJ" role="3uHU7B">
              <node concept="10M0yZ" id="2SP6YJBVLLK" role="2Oq$k0">
                <ref role="1PxDUh" node="3vwudsmYiwt" resolve="RichEditorDataKeys" />
                <ref role="3cqZAo" node="1QSEqLhW3tU" resolve="NETWORK_INSTANCE" />
              </node>
              <node concept="liA8E" id="2SP6YJBVLLL" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataKey.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="37vLTw" id="2SP6YJBVLLM" role="3uHU7w">
              <ref role="3cqZAo" node="2SP6YJBVLLp" resolve="string" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2SP6YJBVLLN" role="3cqZAp">
          <node concept="10Nm6u" id="2SP6YJBVLLO" role="3cqZAk" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2SP6YJBVLLP" role="jymVt" />
    <node concept="3clFb_" id="2SP6YJBVLLQ" role="jymVt">
      <property role="TrG5h" value="saveState" />
      <node concept="3Tm1VV" id="2SP6YJBVLLR" role="1B3o_S" />
      <node concept="3cqZAl" id="2SP6YJBVLLS" role="3clF45" />
      <node concept="37vLTG" id="2SP6YJBVLLT" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="3uibUv" id="2SP6YJBVLLU" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
        </node>
        <node concept="2AHcQZ" id="2SP6YJBVLLV" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2SP6YJBVLLW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="2SP6YJBVLLX" role="3clF47">
        <node concept="3clFbF" id="2SP6YJBVLLY" role="3cqZAp">
          <node concept="2OqwBi" id="2SP6YJBVLLZ" role="3clFbG">
            <node concept="37vLTw" id="2SP6YJBVLM0" role="2Oq$k0">
              <ref role="3cqZAo" node="2SP6YJBVLLT" resolve="element" />
            </node>
            <node concept="liA8E" id="2SP6YJBVLM1" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
              <node concept="37vLTw" id="2SP6YJBVLM2" role="37wK5m">
                <ref role="3cqZAo" node="2SP6YJBVLKp" resolve="PERSISTENCE_KEY" />
              </node>
              <node concept="2OqwBi" id="2SP6YJBVLM3" role="37wK5m">
                <node concept="2YIFZM" id="2SP6YJBVLM4" role="2Oq$k0">
                  <ref role="1Pybhc" to="rwq3:1QSEqLhWl9W" resolve="MPSNetworkInstanceReference" />
                  <ref role="37wK5l" to="rwq3:1QSEqLhXrjF" resolve="create" />
                  <node concept="37vLTw" id="2SP6YJBVLM5" role="37wK5m">
                    <ref role="3cqZAo" node="2SP6YJBVLKi" resolve="myInstance" />
                  </node>
                </node>
                <node concept="liA8E" id="2SP6YJBVLM6" role="2OqNvi">
                  <ref role="37wK5l" to="rwq3:1QSEqLhWZMH" resolve="serialize" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

