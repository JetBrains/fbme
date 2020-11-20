<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d7cab6e9-7043-4e10-b77e-569e7736ba5e(org.fbme.ide.platform.editor)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="4" />
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="2" />
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="kip1" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.nodefs(MPS.Platform/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="s9o5" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.editor(MPS.IDEA/)" />
    <import index="j532" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.undo(MPS.Platform/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="lwvz" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.selection(MPS.Editor/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="8rsk" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem.ex(MPS.IDEA/)" />
    <import index="v900" ref="r:ff24162f-099d-43d8-a0b8-3a06f2c9c0a1(org.fbme.ide.platform)" />
    <import index="mmaq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.jdom(MPS.Core/)" />
    <import index="qvjh" ref="r:d7ebf872-1ce9-4246-93f2-9bff5c1173e6(org.fbme.ide.platform.plugin)" />
    <import index="ddhc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide(MPS.IDEA/)" />
    <import index="jlff" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.vfs(MPS.IDEA/)" />
    <import index="3s15" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.workbench(MPS.Workbench/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="22ra" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.update(MPS.Editor/)" />
    <import index="cmfw" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.event(MPS.OpenAPI/)" />
    <import index="ewej" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt.font(JDK/)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="9ywi" ref="r:b27d9d9b-1904-40b8-bdb1-cf26b125baf7(org.fbme.ide.util.lang.structure)" />
    <import index="mmar" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:org.jdom(MPS.IDEA/)" />
    <import index="r9z2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:org.jdom.input(MPS.IDEA/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="tqvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.tempmodel(MPS.Core/)" />
    <import index="4it6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.loading(MPS.Core/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="31cb" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.module(MPS.Core/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="z8iw" ref="r:dfdf3542-dbcf-43df-870a-3c3504b3c840(jetbrains.mps.baseLanguage.collections.custom)" implicit="true" />
  </imports>
  <registry>
    <language id="a247e09e-2435-45ba-b8d2-07e93feba96a" name="jetbrains.mps.baseLanguage.tuples">
      <concept id="1238852151516" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleType" flags="in" index="1LlUBW">
        <child id="1238852204892" name="componentType" index="1Lm7xW" />
      </concept>
      <concept id="1238853782547" name="jetbrains.mps.baseLanguage.tuples.structure.IndexedTupleLiteral" flags="nn" index="1Ls8ON">
        <child id="1238853845806" name="component" index="1Lso8e" />
      </concept>
    </language>
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
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="4678410916365116210" name="jetbrains.mps.baseLanguage.structure.DefaultModifier" flags="ng" index="2JFqV2" />
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
      <concept id="5205855332950442198" name="jetbrains.mps.baseLanguage.structure.ArrayCloneOperation" flags="nn" index="2SEQ$1" />
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="4952749571008284462" name="jetbrains.mps.baseLanguage.structure.CatchVariable" flags="ng" index="XOnhg" />
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
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
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
      <concept id="3093926081414150598" name="jetbrains.mps.baseLanguage.structure.MultipleCatchClause" flags="ng" index="3uVAMA">
        <child id="8276990574895933173" name="catchBody" index="1zc67A" />
        <child id="8276990574895933172" name="throwable" index="1zc67B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1184950988562" name="jetbrains.mps.baseLanguage.structure.ArrayCreator" flags="nn" index="3$_iS1">
        <child id="1184951007469" name="componentType" index="3$_nBY" />
        <child id="1184952969026" name="dimensionExpression" index="3$GQph" />
      </concept>
      <concept id="1184952934362" name="jetbrains.mps.baseLanguage.structure.DimensionExpression" flags="nn" index="3$GHV9">
        <child id="1184953288404" name="expression" index="3$I4v7" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615">
        <child id="1107797138135" name="extendedInterface" index="3HQHJm" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1206629501431" name="jetbrains.mps.baseLanguage.structure.InstanceInitializer" flags="lg" index="3KIgzJ">
        <child id="1206629521979" name="statementList" index="3KIlGz" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension">
      <concept id="6626851894249711936" name="jetbrains.mps.lang.extension.structure.ExtensionPointExpression" flags="nn" index="2O5UvJ">
        <reference id="6626851894249712469" name="extensionPoint" index="2O5UnU" />
      </concept>
      <concept id="3175313036448560967" name="jetbrains.mps.lang.extension.structure.GetExtensionObjectsOperation" flags="nn" index="SfwO_" />
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
      <concept id="2644386474302386080" name="jetbrains.mps.lang.smodel.structure.PropertyIdRefExpression" flags="nn" index="355D3s">
        <reference id="2644386474302386081" name="conceptDeclaration" index="355D3t" />
        <reference id="2644386474302386082" name="propertyDeclaration" index="355D3u" />
      </concept>
      <concept id="1154546950173" name="jetbrains.mps.lang.smodel.structure.ConceptReference" flags="ng" index="3gn64h">
        <reference id="1154546997487" name="concept" index="3gnhBz" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
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
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text">
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="nn" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="nn" index="1PaTwC">
        <child id="2535923850359271783" name="elements" index="1PaTwD" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1207233427108" name="jetbrains.mps.baseLanguage.collections.structure.MapRemoveOperation" flags="nn" index="kI3uX">
        <child id="1207233489861" name="key" index="kIiFs" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1201306600024" name="jetbrains.mps.baseLanguage.collections.structure.ContainsKeyOperation" flags="nn" index="2Nt0df">
        <child id="1201654602639" name="key" index="38cxEo" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1576845966386891367" name="jetbrains.mps.baseLanguage.collections.structure.CustomMapCreator" flags="nn" index="1u7pXE">
        <reference id="1576845966386891370" name="containerDeclaration" index="1u7pXB" />
      </concept>
      <concept id="1208542034276" name="jetbrains.mps.baseLanguage.collections.structure.MapClearOperation" flags="nn" index="1yHZxX" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="7Y8B9wpdlUb">
    <property role="TrG5h" value="PlatformEditorFactory" />
    <node concept="2tJIrI" id="7Y8B9wpds6L" role="jymVt" />
    <node concept="312cEg" id="7Y8B9wpdun0" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Y8B9wpdugn" role="1tU5fm">
        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
      </node>
      <node concept="3Tm6S6" id="7Y8B9wpduyT" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7Y8B9wpduHr" role="jymVt" />
    <node concept="3Tm1VV" id="7Y8B9wpdlUc" role="1B3o_S" />
    <node concept="3uibUv" id="7Y8B9wpds6D" role="1zkMxy">
      <ref role="3uigEE" to="k3nr:~NodeEditorFactoryBase" resolve="NodeEditorFactoryBase" />
    </node>
    <node concept="3clFbW" id="7Y8B9wpduOV" role="jymVt">
      <node concept="3cqZAl" id="7Y8B9wpduOW" role="3clF45" />
      <node concept="3Tm1VV" id="7Y8B9wpduOX" role="1B3o_S" />
      <node concept="3clFbS" id="7Y8B9wpduOZ" role="3clF47">
        <node concept="3clFbF" id="7Y8B9wpduP3" role="3cqZAp">
          <node concept="37vLTI" id="7Y8B9wpduP5" role="3clFbG">
            <node concept="37vLTw" id="7Y8B9wpduPc" role="37vLTx">
              <ref role="3cqZAo" node="7Y8B9wpduP2" resolve="project" />
            </node>
            <node concept="37vLTw" id="7Y8B9wpdviu" role="37vLTJ">
              <ref role="3cqZAo" node="7Y8B9wpdun0" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Y8B9wpduP2" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7Y8B9wpduP1" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpdvo5" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wpds7u" role="jymVt">
      <property role="TrG5h" value="canCreate" />
      <node concept="3Tm1VV" id="7Y8B9wpds7v" role="1B3o_S" />
      <node concept="10P_77" id="7Y8B9wpds7x" role="3clF45" />
      <node concept="37vLTG" id="7Y8B9wpds7y" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="7Y8B9wpds7z" role="1tU5fm">
          <ref role="3uigEE" to="k3nr:~NodeEditorFactory$Context" resolve="NodeEditorFactory.Context" />
        </node>
        <node concept="2AHcQZ" id="7Y8B9wpds7$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="7Y8B9wpds7B" role="3clF47">
        <node concept="3cpWs8" id="7Y8B9wpdt3O" role="3cqZAp">
          <node concept="3cpWsn" id="7Y8B9wpdt3R" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="7Y8B9wpdt3N" role="1tU5fm" />
            <node concept="2OqwBi" id="7Y8B9wpdtbM" role="33vP2m">
              <node concept="37vLTw" id="7Y8B9wpdt4v" role="2Oq$k0">
                <ref role="3cqZAo" node="7Y8B9wpds7y" resolve="context" />
              </node>
              <node concept="liA8E" id="7Y8B9wpdtn_" role="2OqNvi">
                <ref role="37wK5l" to="k3nr:~NodeEditorFactory$Context.getNode()" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1kUX9T6kz6f" role="3cqZAp">
          <node concept="2OqwBi" id="1kUX9T6kxxX" role="3cqZAk">
            <node concept="2OqwBi" id="1kUX9T6kxaS" role="2Oq$k0">
              <node concept="2O5UvJ" id="1kUX9T6kwCs" role="2Oq$k0">
                <ref role="2O5UnU" to="qvjh:7Y8B9wpjmV_" resolve="EditorProjectionControllerRegistry" />
              </node>
              <node concept="SfwO_" id="1kUX9T6kxlP" role="2OqNvi" />
            </node>
            <node concept="2HwmR7" id="1kUX9T6kxOv" role="2OqNvi">
              <node concept="1bVj0M" id="1kUX9T6kxOx" role="23t8la">
                <node concept="3clFbS" id="1kUX9T6kxOy" role="1bW5cS">
                  <node concept="3clFbF" id="1kUX9T6ky49" role="3cqZAp">
                    <node concept="2OqwBi" id="1kUX9T6kycO" role="3clFbG">
                      <node concept="37vLTw" id="1kUX9T6ky48" role="2Oq$k0">
                        <ref role="3cqZAo" node="1kUX9T6kxOz" resolve="it" />
                      </node>
                      <node concept="liA8E" id="1kUX9T6kyor" role="2OqNvi">
                        <ref role="37wK5l" node="1kUX9T6krQz" resolve="isApplicable" />
                        <node concept="37vLTw" id="1kUX9T6kyx4" role="37wK5m">
                          <ref role="3cqZAo" node="7Y8B9wpdt3R" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="1kUX9T6kxOz" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="1kUX9T6kxO$" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7Y8B9wpds7C" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpdsDG" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wpds7F" role="jymVt">
      <property role="TrG5h" value="create" />
      <node concept="3Tm1VV" id="7Y8B9wpds7G" role="1B3o_S" />
      <node concept="2AHcQZ" id="7Y8B9wpds7I" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="7Y8B9wpds7J" role="3clF45">
        <ref role="3uigEE" to="cj4x:~Editor" resolve="Editor" />
      </node>
      <node concept="37vLTG" id="7Y8B9wpds7K" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="7Y8B9wpds7L" role="1tU5fm">
          <ref role="3uigEE" to="k3nr:~NodeEditorFactory$Context" resolve="NodeEditorFactory.Context" />
        </node>
        <node concept="2AHcQZ" id="7Y8B9wpds7M" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="7Y8B9wpds7P" role="3clF47">
        <node concept="3clFbF" id="7Y8B9wpdw5g" role="3cqZAp">
          <node concept="2ShNRf" id="7Y8B9wpdw5a" role="3clFbG">
            <node concept="1pGfFk" id="7Y8B9wpdxnS" role="2ShVmc">
              <ref role="37wK5l" node="7Y8B9wpdDa$" resolve="HeaderedNodeEditor" />
              <node concept="2OqwBi" id="7Y8B9wpdxS0" role="37wK5m">
                <node concept="37vLTw" id="7Y8B9wpdxCi" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Y8B9wpds7K" resolve="context" />
                </node>
                <node concept="liA8E" id="7Y8B9wpdy2K" role="2OqNvi">
                  <ref role="37wK5l" to="k3nr:~NodeEditorFactory$Context.getNode()" resolve="getNode" />
                </node>
              </node>
              <node concept="37vLTw" id="7Y8B9wpdxqk" role="37wK5m">
                <ref role="3cqZAo" node="7Y8B9wpdun0" resolve="myProject" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7Y8B9wpds7Q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpdszo" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wpds7T" role="jymVt">
      <property role="TrG5h" value="getBaseNode" />
      <node concept="3Tm1VV" id="7Y8B9wpds7U" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wpds7W" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
      <node concept="37vLTG" id="7Y8B9wpds7X" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6YAH_gOz5LH" role="1tU5fm" />
        <node concept="2AHcQZ" id="7Y8B9wpds7Z" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="7Y8B9wpds82" role="3clF47">
        <node concept="3clFbJ" id="6YAH_gOz4Yv" role="3cqZAp">
          <node concept="3clFbS" id="6YAH_gOz4Yx" role="3clFbx">
            <node concept="3cpWs6" id="6YAH_gOz6VA" role="3cqZAp">
              <node concept="2OqwBi" id="6YAH_gOz8v6" role="3cqZAk">
                <node concept="1PxgMI" id="6YAH_gOz7XX" role="2Oq$k0">
                  <node concept="chp4Y" id="6YAH_gOz8fo" role="3oSUPX">
                    <ref role="cht4Q" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
                  </node>
                  <node concept="37vLTw" id="6YAH_gOz6VC" role="1m5AlR">
                    <ref role="3cqZAo" node="7Y8B9wpds7X" resolve="node" />
                  </node>
                </node>
                <node concept="3TrEf2" id="6YAH_gOz8N9" role="2OqNvi">
                  <ref role="3Tt5mk" to="9ywi:6YAH_gOxzgw" resolve="nodeToShow" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6YAH_gOz6to" role="3clFbw">
            <node concept="37vLTw" id="6YAH_gOz6li" role="2Oq$k0">
              <ref role="3cqZAo" node="7Y8B9wpds7X" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="6YAH_gOz6Ha" role="2OqNvi">
              <node concept="chp4Y" id="6YAH_gOz6J9" role="cj9EA">
                <ref role="cht4Q" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6YAH_gOz95V" role="3cqZAp">
          <node concept="37vLTw" id="6YAH_gOz9Aq" role="3cqZAk">
            <ref role="3cqZAo" node="7Y8B9wpds7X" resolve="node" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7Y8B9wpds83" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7Y8B9wpd$4e">
    <property role="TrG5h" value="HeaderedNodeEditor" />
    <node concept="2tJIrI" id="7Y8B9wpd_21" role="jymVt" />
    <node concept="312cEg" id="7Y8B9wpdDvl" role="jymVt">
      <property role="TrG5h" value="myVirtualFile" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7Y8B9wpdDlh" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wpdDru" role="1tU5fm">
        <ref role="3uigEE" to="kip1:~MPSNodeVirtualFile" resolve="MPSNodeVirtualFile" />
      </node>
    </node>
    <node concept="312cEg" id="7Y8B9wpdF4J" role="jymVt">
      <property role="TrG5h" value="myBaseNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7Y8B9wpdEWP" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wpdF1Y" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="312cEg" id="7Y8B9wpeF8t" role="jymVt">
      <property role="TrG5h" value="myHeaderPanel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7Y8B9wpeDYY" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wpeF4G" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpmu_m" role="jymVt" />
    <node concept="312cEg" id="7Y8B9wpkITA" role="jymVt">
      <property role="TrG5h" value="myCurrentProjection" />
      <node concept="3Tm6S6" id="7Y8B9wpkHYb" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wpl9nx" role="1tU5fm">
        <ref role="3uigEE" node="7Y8B9wpl75t" resolve="EditorProjection" />
      </node>
    </node>
    <node concept="312cEg" id="7Y8B9wpoBOl" role="jymVt">
      <property role="TrG5h" value="myProjectionComponent" />
      <node concept="3Tm6S6" id="7Y8B9wpoxZi" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wpoA13" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wppix_" role="jymVt" />
    <node concept="312cEg" id="4DPb1mRS9fN" role="jymVt">
      <property role="TrG5h" value="myToolbarActionGroup" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4DPb1mRS2Qn" role="1B3o_S" />
      <node concept="3uibUv" id="4DPb1mRSb8A" role="1tU5fm">
        <ref role="3uigEE" to="qkt:~ActionGroup" resolve="ActionGroup" />
      </node>
    </node>
    <node concept="3KIgzJ" id="4DPb1mRScKP" role="jymVt">
      <node concept="3clFbS" id="4DPb1mRScKR" role="3KIlGz">
        <node concept="3cpWs8" id="4DPb1mRT1Ma" role="3cqZAp">
          <node concept="3cpWsn" id="4DPb1mRT1Mb" role="3cpWs9">
            <property role="TrG5h" value="action" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="4DPb1mRT1KG" role="1tU5fm">
              <ref role="3uigEE" node="7Y8B9wphSI6" resolve="ProjectionChooserComboBoxAction" />
            </node>
            <node concept="2ShNRf" id="4DPb1mRT1Mc" role="33vP2m">
              <node concept="1pGfFk" id="6uj73Ere3j4" role="2ShVmc">
                <ref role="37wK5l" node="6uj73ErdO3P" resolve="ProjectionChooserComboBoxAction" />
                <node concept="Xjq3P" id="6uj73Ere3j3" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4DPb1mRShEE" role="3cqZAp">
          <node concept="37vLTI" id="4DPb1mRSiac" role="3clFbG">
            <node concept="2ShNRf" id="4DPb1mRSirE" role="37vLTx">
              <node concept="YeOm9" id="4DPb1mRT04i" role="2ShVmc">
                <node concept="1Y3b0j" id="4DPb1mRT04l" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="qkt:~ActionGroup" resolve="ActionGroup" />
                  <ref role="37wK5l" to="qkt:~ActionGroup.&lt;init&gt;()" resolve="ActionGroup" />
                  <node concept="3Tm1VV" id="4DPb1mRT04m" role="1B3o_S" />
                  <node concept="3clFb_" id="4DPb1mRT04r" role="jymVt">
                    <property role="TrG5h" value="getChildren" />
                    <node concept="3Tm1VV" id="4DPb1mRT04s" role="1B3o_S" />
                    <node concept="2AHcQZ" id="4DPb1mRT04u" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                    </node>
                    <node concept="10Q1$e" id="4DPb1mRT04v" role="3clF45">
                      <node concept="3uibUv" id="4DPb1mRT04w" role="10Q1$1">
                        <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
                      </node>
                    </node>
                    <node concept="37vLTG" id="4DPb1mRT04x" role="3clF46">
                      <property role="TrG5h" value="event" />
                      <node concept="3uibUv" id="4DPb1mRT04y" role="1tU5fm">
                        <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
                      </node>
                      <node concept="2AHcQZ" id="4DPb1mRT04z" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="4DPb1mRT04$" role="3clF47">
                      <node concept="3clFbF" id="4DPb1mRT2d_" role="3cqZAp">
                        <node concept="2ShNRf" id="4DPb1mRT2dz" role="3clFbG">
                          <node concept="3g6Rrh" id="4DPb1mRT544" role="2ShVmc">
                            <node concept="3uibUv" id="4DPb1mRT3z5" role="3g7fb8">
                              <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
                            </node>
                            <node concept="37vLTw" id="4DPb1mRT5nF" role="3g7hyw">
                              <ref role="3cqZAo" node="4DPb1mRT1Mb" resolve="action" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="4DPb1mRT04A" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="4DPb1mRShED" role="37vLTJ">
              <ref role="3cqZAo" node="4DPb1mRS9fN" resolve="myToolbarActionGroup" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4DPb1mRS1jm" role="jymVt" />
    <node concept="312cEg" id="7Y8B9wpplsj" role="jymVt">
      <property role="TrG5h" value="myChooserToolbar" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7Y8B9wppk0f" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wppmSp" role="1tU5fm">
        <ref role="3uigEE" to="qkt:~ActionToolbar" resolve="ActionToolbar" />
      </node>
      <node concept="2OqwBi" id="7Y8B9wpihW$" role="33vP2m">
        <node concept="2YIFZM" id="7Y8B9wpihW_" role="2Oq$k0">
          <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
          <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
        </node>
        <node concept="liA8E" id="7Y8B9wpihWA" role="2OqNvi">
          <ref role="37wK5l" to="qkt:~ActionManager.createActionToolbar(java.lang.String,com.intellij.openapi.actionSystem.ActionGroup,boolean)" resolve="createActionToolbar" />
          <node concept="10M0yZ" id="7Y8B9wpihWB" role="37wK5m">
            <ref role="3cqZAo" to="qkt:~ActionPlaces.TOOLBAR" resolve="TOOLBAR" />
            <ref role="1PxDUh" to="qkt:~ActionPlaces" resolve="ActionPlaces" />
          </node>
          <node concept="37vLTw" id="4DPb1mRT6Sl" role="37wK5m">
            <ref role="3cqZAo" node="4DPb1mRS9fN" resolve="myToolbarActionGroup" />
          </node>
          <node concept="3clFbT" id="7Y8B9wpihWF" role="37wK5m">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wphpgd" role="jymVt" />
    <node concept="3clFbW" id="7Y8B9wpdDa$" role="jymVt">
      <node concept="3cqZAl" id="7Y8B9wpdDa_" role="3clF45" />
      <node concept="3Tm1VV" id="7Y8B9wpdDaA" role="1B3o_S" />
      <node concept="3clFbS" id="7Y8B9wpdDaC" role="3clF47">
        <node concept="XkiVB" id="7Y8B9wpdDaE" role="3cqZAp">
          <ref role="37wK5l" to="k3nr:~BaseNodeEditor.&lt;init&gt;(jetbrains.mps.project.Project)" resolve="BaseNodeEditor" />
          <node concept="37vLTw" id="7Y8B9wpdDaJ" role="37wK5m">
            <ref role="3cqZAo" node="7Y8B9wpdDaF" resolve="mpsProject" />
          </node>
        </node>
        <node concept="3clFbF" id="7Y8B9wpdFmg" role="3cqZAp">
          <node concept="37vLTI" id="7Y8B9wpdFAk" role="3clFbG">
            <node concept="37vLTw" id="7Y8B9wpdFGO" role="37vLTx">
              <ref role="3cqZAo" node="7Y8B9wpdEC6" resolve="baseNode" />
            </node>
            <node concept="37vLTw" id="7Y8B9wpdFme" role="37vLTJ">
              <ref role="3cqZAo" node="7Y8B9wpdF4J" resolve="myBaseNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Y8B9wpdDFE" role="3cqZAp">
          <node concept="37vLTI" id="7Y8B9wpdDFF" role="3clFbG">
            <node concept="37vLTw" id="7Y8B9wpdDFG" role="37vLTJ">
              <ref role="3cqZAo" node="7Y8B9wpdDvl" resolve="myVirtualFile" />
            </node>
            <node concept="2OqwBi" id="7Y8B9wpdDFH" role="37vLTx">
              <node concept="2YIFZM" id="7Y8B9wpdDIT" role="2Oq$k0">
                <ref role="1Pybhc" to="kip1:~NodeVirtualFileSystem" resolve="NodeVirtualFileSystem" />
                <ref role="37wK5l" to="kip1:~NodeVirtualFileSystem.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="7Y8B9wpdDFJ" role="2OqNvi">
                <ref role="37wK5l" to="kip1:~NodeVirtualFileSystem.getFileFor(org.jetbrains.mps.openapi.module.SRepository,org.jetbrains.mps.openapi.model.SNode)" resolve="getFileFor" />
                <node concept="2OqwBi" id="7Y8B9wpdDKV" role="37wK5m">
                  <node concept="37vLTw" id="7Y8B9wpdDKU" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Y8B9wpdDaF" resolve="mpsProject" />
                  </node>
                  <node concept="liA8E" id="7Y8B9wpdDKW" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
                  </node>
                </node>
                <node concept="37vLTw" id="7Y8B9wpdDFL" role="37wK5m">
                  <ref role="3cqZAo" node="7Y8B9wpdF4J" resolve="myBaseNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Y8B9wpeKDk" role="3cqZAp" />
        <node concept="3clFbF" id="7Y8B9wpeKoZ" role="3cqZAp">
          <node concept="37vLTI" id="7Y8B9wpeLiL" role="3clFbG">
            <node concept="2ShNRf" id="7Y8B9wpeLB4" role="37vLTx">
              <node concept="1pGfFk" id="7Y8B9wpeLzw" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JPanel" />
                <node concept="2ShNRf" id="7Y8B9wphaql" role="37wK5m">
                  <node concept="1pGfFk" id="7Y8B9wphbew" role="2ShVmc">
                    <ref role="37wK5l" to="z60i:~BorderLayout.&lt;init&gt;()" resolve="BorderLayout" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7Y8B9wpeKoX" role="37vLTJ">
              <ref role="3cqZAo" node="7Y8B9wpeF8t" resolve="myHeaderPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Y8B9wphc2P" role="3cqZAp" />
        <node concept="3cpWs8" id="7Y8B9wpphc8" role="3cqZAp">
          <node concept="3cpWsn" id="7Y8B9wpphc9" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="7Y8B9wpoLBj" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
            </node>
            <node concept="2OqwBi" id="7Y8B9wpphca" role="33vP2m">
              <node concept="37vLTw" id="7Y8B9wppqsu" role="2Oq$k0">
                <ref role="3cqZAo" node="7Y8B9wpplsj" resolve="myChooserToolbar" />
              </node>
              <node concept="liA8E" id="7Y8B9wpphcc" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~ActionToolbar.getComponent()" resolve="getComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Y8B9wpf60S" role="3cqZAp">
          <node concept="2OqwBi" id="7Y8B9wpf6CB" role="3clFbG">
            <node concept="37vLTw" id="7Y8B9wpf60Q" role="2Oq$k0">
              <ref role="3cqZAo" node="7Y8B9wpeF8t" resolve="myHeaderPanel" />
            </node>
            <node concept="liA8E" id="7Y8B9wpf7uF" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="7Y8B9wpphcd" role="37wK5m">
                <ref role="3cqZAo" node="7Y8B9wpphc9" resolve="component" />
              </node>
              <node concept="10M0yZ" id="7Y8B9wpik7t" role="37wK5m">
                <ref role="3cqZAo" to="z60i:~BorderLayout.EAST" resolve="EAST" />
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Y8B9wpf86i" role="3cqZAp">
          <node concept="2OqwBi" id="7Y8B9wpf8SD" role="3clFbG">
            <node concept="1rXfSq" id="7Y8B9wpf86g" role="2Oq$k0">
              <ref role="37wK5l" to="k3nr:~BaseNodeEditor.getComponent()" resolve="getComponent" />
            </node>
            <node concept="liA8E" id="7Y8B9wpf9JM" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
              <node concept="37vLTw" id="7Y8B9wpf9Vf" role="37wK5m">
                <ref role="3cqZAo" node="7Y8B9wpeF8t" resolve="myHeaderPanel" />
              </node>
              <node concept="10M0yZ" id="7Y8B9wpgtuA" role="37wK5m">
                <ref role="3cqZAo" to="z60i:~BorderLayout.NORTH" resolve="NORTH" />
                <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Y8B9wpgXvO" role="3cqZAp">
          <node concept="1rXfSq" id="7Y8B9wpgXvM" role="3clFbG">
            <ref role="37wK5l" to="k3nr:~BaseNodeEditor.editNode(org.jetbrains.mps.openapi.model.SNodeReference,org.jetbrains.mps.openapi.model.SNodeReference)" resolve="editNode" />
            <node concept="2OqwBi" id="7Y8B9wpgYAa" role="37wK5m">
              <node concept="37vLTw" id="7Y8B9wpgYdp" role="2Oq$k0">
                <ref role="3cqZAo" node="7Y8B9wpdF4J" resolve="myBaseNode" />
              </node>
              <node concept="liA8E" id="7Y8B9wpgYLL" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getReference()" resolve="getReference" />
              </node>
            </node>
            <node concept="10Nm6u" id="7Y8B9wpgYSv" role="37wK5m" />
          </node>
        </node>
        <node concept="3clFbH" id="7Y8B9wpkJYj" role="3cqZAp" />
        <node concept="3clFbF" id="7Y8B9wpmvJu" role="3cqZAp">
          <node concept="1rXfSq" id="7Y8B9wpmvJt" role="3clFbG">
            <ref role="37wK5l" node="7Y8B9wpmvJp" resolve="initializeFirstAvailableProjection" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7Y8B9wpdEC6" role="3clF46">
        <property role="TrG5h" value="baseNode" />
        <node concept="3uibUv" id="7Y8B9wpdEHD" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="7Y8B9wpdDaF" role="3clF46">
        <property role="TrG5h" value="mpsProject" />
        <node concept="3uibUv" id="7Y8B9wpdDaH" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="7Y8B9wpdDaI" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3vwudsmZnZE" role="jymVt" />
    <node concept="3clFb_" id="3vwudsmZtmH" role="jymVt">
      <property role="TrG5h" value="getProjectionComponent" />
      <node concept="3clFbS" id="3vwudsmZtmK" role="3clF47">
        <node concept="3cpWs6" id="3vwudsmZv1z" role="3cqZAp">
          <node concept="37vLTw" id="3vwudsmZzII" role="3cqZAk">
            <ref role="3cqZAo" node="7Y8B9wpoBOl" resolve="myProjectionComponent" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3vwudsmZpMn" role="1B3o_S" />
      <node concept="3uibUv" id="3vwudsmZsY9" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLi42au" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLi43$E" role="jymVt">
      <property role="TrG5h" value="isTabbed" />
      <node concept="3Tm1VV" id="1QSEqLi43$F" role="1B3o_S" />
      <node concept="10P_77" id="1QSEqLi43$H" role="3clF45" />
      <node concept="3clFbS" id="1QSEqLi43$I" role="3clF47">
        <node concept="3clFbF" id="1QSEqLi44R2" role="3cqZAp">
          <node concept="3clFbT" id="1QSEqLi44R1" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="1QSEqLi43$J" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4DPb1mRS696" role="jymVt" />
    <node concept="3clFb_" id="4DPb1mRS7H8" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3Tm1VV" id="4DPb1mRS7H9" role="1B3o_S" />
      <node concept="3cqZAl" id="4DPb1mRS7Hb" role="3clF45" />
      <node concept="3clFbS" id="4DPb1mRS7Hc" role="3clF47">
        <node concept="3clFbF" id="4DPb1mRS7Hf" role="3cqZAp">
          <node concept="3nyPlj" id="4DPb1mRS7He" role="3clFbG">
            <ref role="37wK5l" to="k3nr:~BaseNodeEditor.dispose()" resolve="dispose" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4DPb1mRS7Hd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wperHu" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wperX9" role="jymVt">
      <property role="TrG5h" value="showNode" />
      <node concept="3Tm1VV" id="7Y8B9wperXa" role="1B3o_S" />
      <node concept="3cqZAl" id="7Y8B9wperXc" role="3clF45" />
      <node concept="37vLTG" id="7Y8B9wperXd" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="6YAH_gOxIHN" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7Y8B9wperXf" role="3clF46">
        <property role="TrG5h" value="select" />
        <node concept="10P_77" id="7Y8B9wperXg" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="7Y8B9wperXj" role="3clF47">
        <node concept="3cpWs8" id="7Y8B9wpgGSC" role="3cqZAp">
          <node concept="3cpWsn" id="7Y8B9wpgGSD" role="3cpWs9">
            <property role="TrG5h" value="ec" />
            <node concept="3uibUv" id="7Y8B9wpgGKl" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~NodeEditorComponent" resolve="NodeEditorComponent" />
            </node>
            <node concept="1rXfSq" id="7Y8B9wpgGSE" role="33vP2m">
              <ref role="37wK5l" to="k3nr:~BaseNodeEditor.getCurrentEditorComponent()" resolve="getCurrentEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6YAH_gOxFQg" role="3cqZAp">
          <node concept="3clFbS" id="6YAH_gOxFQi" role="3clFbx">
            <node concept="3cpWs8" id="6YAH_gOyNrQ" role="3cqZAp">
              <node concept="3cpWsn" id="6YAH_gOyNrT" role="3cpWs9">
                <property role="TrG5h" value="spec" />
                <node concept="3Tqbb2" id="6YAH_gOyNrO" role="1tU5fm">
                  <ref role="ehGHo" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
                </node>
                <node concept="1PxgMI" id="6YAH_gOyNOL" role="33vP2m">
                  <node concept="chp4Y" id="6YAH_gOyNYi" role="3oSUPX">
                    <ref role="cht4Q" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
                  </node>
                  <node concept="37vLTw" id="6YAH_gOyNzv" role="1m5AlR">
                    <ref role="3cqZAo" node="7Y8B9wperXd" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6YAH_gOyReF" role="3cqZAp">
              <node concept="37vLTI" id="6YAH_gOyRrA" role="3clFbG">
                <node concept="2OqwBi" id="6YAH_gOyRSY" role="37vLTx">
                  <node concept="37vLTw" id="6YAH_gOyRF1" role="2Oq$k0">
                    <ref role="3cqZAo" node="6YAH_gOyNrT" resolve="spec" />
                  </node>
                  <node concept="3TrEf2" id="6YAH_gOyS6G" role="2OqNvi">
                    <ref role="3Tt5mk" to="9ywi:6YAH_gOxzgw" resolve="nodeToShow" />
                  </node>
                </node>
                <node concept="37vLTw" id="6YAH_gOyReD" role="37vLTJ">
                  <ref role="3cqZAo" node="7Y8B9wperXd" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6YAH_gOyJwk" role="3cqZAp">
              <node concept="3cpWsn" id="6YAH_gOyJwl" role="3cpWs9">
                <property role="TrG5h" value="builder" />
                <node concept="3uibUv" id="6YAH_gOyJwa" role="1tU5fm">
                  <ref role="3uigEE" to="r9z2:~SAXBuilder" resolve="SAXBuilder" />
                </node>
                <node concept="2ShNRf" id="6YAH_gOyJwm" role="33vP2m">
                  <node concept="1pGfFk" id="6YAH_gOyJwn" role="2ShVmc">
                    <ref role="37wK5l" to="r9z2:~SAXBuilder.&lt;init&gt;()" resolve="SAXBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3J1_TO" id="6YAH_gOyWy_" role="3cqZAp">
              <node concept="3clFbS" id="6YAH_gOyWyA" role="1zxBo7">
                <node concept="3cpWs8" id="6YAH_gOyUrj" role="3cqZAp">
                  <node concept="3cpWsn" id="6YAH_gOyUrk" role="3cpWs9">
                    <property role="TrG5h" value="state" />
                    <node concept="3uibUv" id="6YAH_gOyUqh" role="1tU5fm">
                      <ref role="3uigEE" to="mmar:~Element" resolve="Element" />
                    </node>
                    <node concept="2OqwBi" id="6YAH_gOyUrl" role="33vP2m">
                      <node concept="2OqwBi" id="6YAH_gOyUrm" role="2Oq$k0">
                        <node concept="37vLTw" id="6YAH_gOyUrn" role="2Oq$k0">
                          <ref role="3cqZAo" node="6YAH_gOyJwl" resolve="builder" />
                        </node>
                        <node concept="liA8E" id="6YAH_gOyUro" role="2OqNvi">
                          <ref role="37wK5l" to="r9z2:~SAXBuilder.build(java.io.Reader)" resolve="build" />
                          <node concept="2ShNRf" id="1vJkp1TQN7s" role="37wK5m">
                            <node concept="1pGfFk" id="1vJkp1TQOzK" role="2ShVmc">
                              <ref role="37wK5l" to="guwi:~StringReader.&lt;init&gt;(java.lang.String)" resolve="StringReader" />
                              <node concept="2OqwBi" id="6YAH_gOyUrp" role="37wK5m">
                                <node concept="37vLTw" id="6YAH_gOyUrq" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6YAH_gOyNrT" resolve="spec" />
                                </node>
                                <node concept="3TrcHB" id="6YAH_gOyUrr" role="2OqNvi">
                                  <ref role="3TsBF5" to="9ywi:6YAH_gOxzgu" resolve="projectionState" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="6YAH_gOyUrs" role="2OqNvi">
                        <ref role="37wK5l" to="mmar:~Document.getRootElement()" resolve="getRootElement" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="1QSEqLi46uL" role="3cqZAp">
                  <node concept="3clFbS" id="1QSEqLi46uN" role="3clFbx">
                    <node concept="3clFbF" id="1QSEqLi4mcq" role="3cqZAp">
                      <node concept="1rXfSq" id="1QSEqLi4lE8" role="3clFbG">
                        <ref role="37wK5l" node="1QSEqLi4fFG" resolve="restoreState" />
                        <node concept="37vLTw" id="6YAH_gOz3sN" role="37wK5m">
                          <ref role="3cqZAo" node="6YAH_gOyUrk" resolve="state" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="1QSEqLi49TV" role="3clFbw">
                    <node concept="10Nm6u" id="1QSEqLi49ZM" role="3uHU7w" />
                    <node concept="37vLTw" id="6YAH_gOz3kp" role="3uHU7B">
                      <ref role="3cqZAo" node="6YAH_gOyUrk" resolve="state" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="6YAH_gOyWyt" role="1zxBo5">
                <node concept="XOnhg" id="6YAH_gOyWyv" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="1zDVSp0WdtS" role="1tU5fm">
                    <node concept="3uibUv" id="6YAH_gOyWyw" role="nSUat">
                      <ref role="3uigEE" to="mmar:~JDOMException" resolve="JDOMException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="6YAH_gOyWyu" role="1zc67A">
                  <node concept="YS8fn" id="6YAH_gOyWM_" role="3cqZAp">
                    <node concept="2ShNRf" id="6YAH_gOyWSs" role="YScLw">
                      <node concept="1pGfFk" id="6YAH_gOyY8k" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                        <node concept="37vLTw" id="6YAH_gOyYuo" role="37wK5m">
                          <ref role="3cqZAo" node="6YAH_gOyWyv" resolve="e" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uVAMA" id="6YAH_gOyWyx" role="1zxBo5">
                <node concept="XOnhg" id="6YAH_gOyWyz" role="1zc67B">
                  <property role="3TUv4t" value="false" />
                  <property role="TrG5h" value="e" />
                  <node concept="nSUau" id="1zDVSp0Wds0" role="1tU5fm">
                    <node concept="3uibUv" id="6YAH_gOyWy$" role="nSUat">
                      <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbS" id="6YAH_gOyWyy" role="1zc67A">
                  <node concept="YS8fn" id="6YAH_gOyY$9" role="3cqZAp">
                    <node concept="2ShNRf" id="6YAH_gOyY$a" role="YScLw">
                      <node concept="1pGfFk" id="6YAH_gOyY$b" role="2ShVmc">
                        <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.Throwable)" resolve="RuntimeException" />
                        <node concept="37vLTw" id="6YAH_gOyY$c" role="37wK5m">
                          <ref role="3cqZAo" node="6YAH_gOyWyz" resolve="e" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6YAH_gOxJq4" role="3clFbw">
            <node concept="1mIQ4w" id="6YAH_gOxJX1" role="2OqNvi">
              <node concept="chp4Y" id="6YAH_gOxJZ0" role="cj9EA">
                <ref role="cht4Q" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
              </node>
            </node>
            <node concept="37vLTw" id="6YAH_gOxFWL" role="2Oq$k0">
              <ref role="3cqZAo" node="7Y8B9wperXd" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6YAH_gOz3SK" role="3cqZAp" />
        <node concept="3clFbJ" id="7Y8B9wpgDGB" role="3cqZAp">
          <node concept="3clFbS" id="7Y8B9wpgDGD" role="3clFbx">
            <node concept="3clFbF" id="7Y8B9wpgEnC" role="3cqZAp">
              <node concept="2OqwBi" id="7Y8B9wpgFan" role="3clFbG">
                <node concept="37vLTw" id="7Y8B9wpgGSF" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Y8B9wpgGSD" resolve="ec" />
                </node>
                <node concept="liA8E" id="7Y8B9wpgGAP" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~EditorComponent.selectNode(org.jetbrains.mps.openapi.model.SNode)" resolve="selectNode" />
                  <node concept="37vLTw" id="7Y8B9wpgGJV" role="37wK5m">
                    <ref role="3cqZAo" node="7Y8B9wperXd" resolve="node" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="7Y8B9wpgDSu" role="3clFbw">
            <ref role="3cqZAo" node="7Y8B9wperXf" resolve="select" />
          </node>
          <node concept="9aQIb" id="7Y8B9wpgE39" role="9aQIa">
            <node concept="3clFbS" id="7Y8B9wpgE3a" role="9aQI4">
              <node concept="3clFbF" id="7Y8B9wpgu3t" role="3cqZAp">
                <node concept="2OqwBi" id="7Y8B9wpgu3u" role="3clFbG">
                  <node concept="2OqwBi" id="7Y8B9wpgu3v" role="2Oq$k0">
                    <node concept="37vLTw" id="7Y8B9wpgGSG" role="2Oq$k0">
                      <ref role="3cqZAo" node="7Y8B9wpgGSD" resolve="ec" />
                    </node>
                    <node concept="liA8E" id="7Y8B9wpgu3x" role="2OqNvi">
                      <ref role="37wK5l" to="exr9:~EditorComponent.getSelectionManager()" resolve="getSelectionManager" />
                    </node>
                  </node>
                  <node concept="liA8E" id="7Y8B9wpgu3y" role="2OqNvi">
                    <ref role="37wK5l" to="lwvz:~SelectionManager.setSelection(org.jetbrains.mps.openapi.model.SNode,java.lang.String,int)" resolve="setSelection" />
                    <node concept="37vLTw" id="7Y8B9wpgu3z" role="37wK5m">
                      <ref role="3cqZAo" node="7Y8B9wperXd" resolve="node" />
                    </node>
                    <node concept="10M0yZ" id="7Y8B9wpgucm" role="37wK5m">
                      <ref role="1PxDUh" to="lwvz:~SelectionManager" resolve="SelectionManager" />
                      <ref role="3cqZAo" to="lwvz:~SelectionManager.FOCUS_POLICY_CELL" resolve="FOCUS_POLICY_CELL" />
                    </node>
                    <node concept="3cmrfG" id="7Y8B9wpgu3_" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7Y8B9wperXk" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpnyt2" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wpn_eO" role="jymVt">
      <property role="TrG5h" value="chooseProjection" />
      <node concept="3clFbS" id="7Y8B9wpn_eR" role="3clF47">
        <node concept="3clFbF" id="7Y8B9wpnCwe" role="3cqZAp">
          <node concept="37vLTI" id="7Y8B9wpnCNL" role="3clFbG">
            <node concept="37vLTw" id="7Y8B9wpnD21" role="37vLTx">
              <ref role="3cqZAo" node="7Y8B9wpnAtK" resolve="projection" />
            </node>
            <node concept="37vLTw" id="7Y8B9wpnCwd" role="37vLTJ">
              <ref role="3cqZAo" node="7Y8B9wpkITA" resolve="myCurrentProjection" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Y8B9wpp$Br" role="3cqZAp">
          <node concept="1rXfSq" id="7Y8B9wpp$Bp" role="3clFbG">
            <ref role="37wK5l" node="7Y8B9wpnWwD" resolve="updateProjectionState" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Y8B9wpnzPR" role="1B3o_S" />
      <node concept="3cqZAl" id="7Y8B9wpn_7T" role="3clF45" />
      <node concept="37vLTG" id="7Y8B9wpnAtK" role="3clF46">
        <property role="TrG5h" value="projection" />
        <node concept="3uibUv" id="7Y8B9wpnAtJ" role="1tU5fm">
          <ref role="3uigEE" node="7Y8B9wpl75t" resolve="EditorProjection" />
        </node>
        <node concept="2AHcQZ" id="7Y8B9wpnB_U" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wppyI0" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wppAu_" role="jymVt">
      <property role="TrG5h" value="getCurrentProjection" />
      <node concept="3clFbS" id="7Y8B9wppAuC" role="3clF47">
        <node concept="3cpWs6" id="7Y8B9wppBYz" role="3cqZAp">
          <node concept="37vLTw" id="7Y8B9wppDmi" role="3cqZAk">
            <ref role="3cqZAo" node="7Y8B9wpkITA" resolve="myCurrentProjection" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Y8B9wpp$VY" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wppAnr" role="3clF45">
        <ref role="3uigEE" node="7Y8B9wpl75t" resolve="EditorProjection" />
      </node>
      <node concept="2AHcQZ" id="7Y8B9wppEzh" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpdFNE" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wpnWwD" role="jymVt">
      <property role="TrG5h" value="updateProjectionState" />
      <node concept="3clFbS" id="7Y8B9wpnWwG" role="3clF47">
        <node concept="3cpWs8" id="1kUX9T6k5VI" role="3cqZAp">
          <node concept="3cpWsn" id="1kUX9T6k5VJ" role="3cpWs9">
            <property role="TrG5h" value="component" />
            <node concept="3uibUv" id="1kUX9T6k4V7" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~NodeEditorComponent" resolve="NodeEditorComponent" />
            </node>
            <node concept="1rXfSq" id="1kUX9T6k5VK" role="33vP2m">
              <ref role="37wK5l" to="k3nr:~BaseNodeEditor.getCurrentEditorComponent()" resolve="getCurrentEditorComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Y8B9wpo9_p" role="3cqZAp">
          <node concept="2OqwBi" id="7Y8B9wpo49E" role="3clFbG">
            <node concept="2OqwBi" id="7Y8B9wpo49F" role="2Oq$k0">
              <node concept="37vLTw" id="1kUX9T6k5VL" role="2Oq$k0">
                <ref role="3cqZAo" node="1kUX9T6k5VJ" resolve="component" />
              </node>
              <node concept="liA8E" id="7Y8B9wpo49H" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getUpdater()" resolve="getUpdater" />
              </node>
            </node>
            <node concept="liA8E" id="7Y8B9wpo5x2" role="2OqNvi">
              <ref role="37wK5l" to="22ra:~Updater.setInitialEditorHints(java.lang.String[])" resolve="setInitialEditorHints" />
              <node concept="2OqwBi" id="7Y8B9wpo93G" role="37wK5m">
                <node concept="37vLTw" id="7Y8B9wpo5Ml" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Y8B9wpkITA" resolve="myCurrentProjection" />
                </node>
                <node concept="liA8E" id="7Y8B9wpo9md" role="2OqNvi">
                  <ref role="37wK5l" node="7Y8B9wpo69t" resolve="getInitialEditorHints" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1kUX9T6koQE" role="3cqZAp">
          <node concept="2OqwBi" id="1kUX9T6kqew" role="3clFbG">
            <node concept="2OqwBi" id="1kUX9T6kp_j" role="2Oq$k0">
              <node concept="37vLTw" id="1kUX9T6koQC" role="2Oq$k0">
                <ref role="3cqZAo" to="k3nr:~BaseNodeEditor.myProject" resolve="myProject" />
              </node>
              <node concept="liA8E" id="1kUX9T6kq80" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="1kUX9T6kqOF" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="1kUX9T6kr1w" role="37wK5m">
                <node concept="3clFbS" id="1kUX9T6kr1x" role="1bW5cS">
                  <node concept="3clFbF" id="1kUX9T6k6Oe" role="3cqZAp">
                    <node concept="2OqwBi" id="1kUX9T6k7Tk" role="3clFbG">
                      <node concept="37vLTw" id="1kUX9T6k6Oc" role="2Oq$k0">
                        <ref role="3cqZAo" node="1kUX9T6k5VJ" resolve="component" />
                      </node>
                      <node concept="liA8E" id="1kUX9T6k9sv" role="2OqNvi">
                        <ref role="37wK5l" to="exr9:~NodeEditorComponent.rebuildEditorContent()" resolve="rebuildEditorContent" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Y8B9wpoDmH" role="3cqZAp">
          <node concept="3clFbS" id="7Y8B9wpoDmJ" role="3clFbx">
            <node concept="3clFbF" id="7Y8B9wpouXK" role="3cqZAp">
              <node concept="2OqwBi" id="7Y8B9wpovPL" role="3clFbG">
                <node concept="37vLTw" id="7Y8B9wpouXI" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Y8B9wpeF8t" resolve="myHeaderPanel" />
                </node>
                <node concept="liA8E" id="7Y8B9wpoFXA" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.remove(java.awt.Component)" resolve="remove" />
                  <node concept="37vLTw" id="7Y8B9wpoGo$" role="37wK5m">
                    <ref role="3cqZAo" node="7Y8B9wpoBOl" resolve="myProjectionComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7Y8B9wpoEko" role="3clFbw">
            <node concept="10Nm6u" id="7Y8B9wpoENQ" role="3uHU7w" />
            <node concept="37vLTw" id="7Y8B9wpoD_8" role="3uHU7B">
              <ref role="3cqZAo" node="7Y8B9wpoBOl" resolve="myProjectionComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Y8B9wpoHbr" role="3cqZAp">
          <node concept="37vLTI" id="7Y8B9wpoHLF" role="3clFbG">
            <node concept="2OqwBi" id="7Y8B9wpoIyn" role="37vLTx">
              <node concept="37vLTw" id="7Y8B9wpoIgr" role="2Oq$k0">
                <ref role="3cqZAo" node="7Y8B9wpkITA" resolve="myCurrentProjection" />
              </node>
              <node concept="liA8E" id="7Y8B9wpoJ12" role="2OqNvi">
                <ref role="37wK5l" node="7Y8B9wpoafk" resolve="createHeaderComponent" />
              </node>
            </node>
            <node concept="37vLTw" id="7Y8B9wpoHbp" role="37vLTJ">
              <ref role="3cqZAo" node="7Y8B9wpoBOl" resolve="myProjectionComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Y8B9wpoLXA" role="3cqZAp">
          <node concept="3clFbS" id="7Y8B9wpoLXB" role="3clFbx">
            <node concept="3clFbF" id="7Y8B9wpoLXC" role="3cqZAp">
              <node concept="2OqwBi" id="7Y8B9wpoLXD" role="3clFbG">
                <node concept="37vLTw" id="7Y8B9wpoLXE" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Y8B9wpeF8t" resolve="myHeaderPanel" />
                </node>
                <node concept="liA8E" id="7Y8B9wpoLXF" role="2OqNvi">
                  <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="7Y8B9wpoLXG" role="37wK5m">
                    <ref role="3cqZAo" node="7Y8B9wpoBOl" resolve="myProjectionComponent" />
                  </node>
                  <node concept="10M0yZ" id="1QSEqLhCA2a" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~BorderLayout.WEST" resolve="WEST" />
                    <ref role="1PxDUh" to="z60i:~BorderLayout" resolve="BorderLayout" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="7Y8B9wpoLXH" role="3clFbw">
            <node concept="10Nm6u" id="7Y8B9wpoLXI" role="3uHU7w" />
            <node concept="37vLTw" id="7Y8B9wpoLXJ" role="3uHU7B">
              <ref role="3cqZAo" node="7Y8B9wpoBOl" resolve="myProjectionComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Y8B9wpprcn" role="3cqZAp">
          <node concept="2OqwBi" id="7Y8B9wppr$7" role="3clFbG">
            <node concept="37vLTw" id="7Y8B9wpprcl" role="2Oq$k0">
              <ref role="3cqZAo" node="7Y8B9wpplsj" resolve="myChooserToolbar" />
            </node>
            <node concept="liA8E" id="7Y8B9wpps61" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~ActionToolbar.updateActionsImmediately()" resolve="updateActionsImmediately" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Y8B9wpnVb1" role="1B3o_S" />
      <node concept="3cqZAl" id="7Y8B9wpnWpF" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7Y8B9wpnTSk" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wpdG5v" role="jymVt">
      <property role="TrG5h" value="getAllEditedDocuments" />
      <node concept="2AHcQZ" id="7Y8B9wpdG5w" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="7Y8B9wpdG5x" role="3clF47">
        <node concept="3cpWs8" id="7Y8B9wpdG5z" role="3cqZAp">
          <node concept="3cpWsn" id="7Y8B9wpdG5y" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="virtualFile" />
            <node concept="3uibUv" id="7Y8B9wpdG5$" role="1tU5fm">
              <ref role="3uigEE" to="kip1:~MPSNodeVirtualFile" resolve="MPSNodeVirtualFile" />
            </node>
            <node concept="2OqwBi" id="7Y8B9wpdG5_" role="33vP2m">
              <node concept="1rXfSq" id="7Y8B9wpdG5A" role="2Oq$k0">
                <ref role="37wK5l" to="k3nr:~BaseNodeEditor.getCurrentEditorComponent()" resolve="getCurrentEditorComponent" />
              </node>
              <node concept="liA8E" id="7Y8B9wpdG5B" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~NodeEditorComponent.getVirtualFile()" resolve="getVirtualFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Y8B9wpdG5C" role="3cqZAp">
          <node concept="3K4zz7" id="7Y8B9wpdG5K" role="3cqZAk">
            <node concept="3y3z36" id="7Y8B9wpdG5D" role="3K4Cdx">
              <node concept="37vLTw" id="7Y8B9wpdG5E" role="3uHU7B">
                <ref role="3cqZAo" node="7Y8B9wpdG5y" resolve="virtualFile" />
              </node>
              <node concept="10Nm6u" id="7Y8B9wpdG5F" role="3uHU7w" />
            </node>
            <node concept="2YIFZM" id="7Y8B9wpdWWV" role="3K4E3e">
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
              <node concept="2YIFZM" id="7Y8B9wpe25F" role="37wK5m">
                <ref role="1Pybhc" to="j532:~MPSUndoUtil" resolve="MPSUndoUtil" />
                <ref role="37wK5l" to="j532:~MPSUndoUtil.getDoc(jetbrains.mps.nodefs.MPSNodeVirtualFile)" resolve="getDoc" />
                <node concept="37vLTw" id="7Y8B9wpe25G" role="37wK5m">
                  <ref role="3cqZAo" node="7Y8B9wpdG5y" resolve="virtualFile" />
                </node>
              </node>
              <node concept="3uibUv" id="7Y8B9wpeanA" role="3PaCim">
                <ref role="3uigEE" to="s9o5:~Document" resolve="Document" />
              </node>
            </node>
            <node concept="2YIFZM" id="7Y8B9wpdWVW" role="3K4GZi">
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
              <node concept="3uibUv" id="7Y8B9wpe7VL" role="3PaCim">
                <ref role="3uigEE" to="s9o5:~Document" resolve="Document" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Y8B9wpdG5L" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wpdG5M" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7Y8B9wpdZqR" role="11_B2D">
          <ref role="3uigEE" to="s9o5:~Document" resolve="Document" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpdDgR" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wpd_4i" role="jymVt">
      <property role="TrG5h" value="getData" />
      <node concept="2AHcQZ" id="7Y8B9wpd_4j" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="7Y8B9wpd_4k" role="3clF46">
        <property role="TrG5h" value="dataId" />
        <node concept="2AHcQZ" id="7Y8B9wpd_4l" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
        <node concept="3uibUv" id="7Y8B9wpd_4m" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="7Y8B9wpd_4n" role="3clF47">
        <node concept="3clFbJ" id="7Y8B9wpd_4x" role="3cqZAp">
          <node concept="2OqwBi" id="7Y8B9wpd_8S" role="3clFbw">
            <node concept="37vLTw" id="7Y8B9wpd_8R" role="2Oq$k0">
              <ref role="3cqZAo" node="7Y8B9wpd_4k" resolve="dataId" />
            </node>
            <node concept="liA8E" id="7Y8B9wpd_8T" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="7Y8B9wpdBGU" role="37wK5m">
                <node concept="10M0yZ" id="7Y8B9wpdBGT" role="2Oq$k0">
                  <ref role="1PxDUh" to="qkt:~LangDataKeys" resolve="LangDataKeys" />
                  <ref role="3cqZAo" to="qkt:~CommonDataKeys.VIRTUAL_FILE" resolve="VIRTUAL_FILE" />
                </node>
                <node concept="liA8E" id="7Y8B9wpdBGV" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~DataKey.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Y8B9wpd_4_" role="3clFbx">
            <node concept="3cpWs6" id="7Y8B9wpd_4A" role="3cqZAp">
              <node concept="37vLTw" id="7Y8B9wpd_4B" role="3cqZAk">
                <ref role="3cqZAo" node="7Y8B9wpdDvl" resolve="myVirtualFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Y8B9wpnvXz" role="3cqZAp">
          <node concept="2OqwBi" id="7Y8B9wpnvX$" role="3clFbw">
            <node concept="37vLTw" id="7Y8B9wpnvX_" role="2Oq$k0">
              <ref role="3cqZAo" node="7Y8B9wpd_4k" resolve="dataId" />
            </node>
            <node concept="liA8E" id="7Y8B9wpnvXA" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object)" resolve="equals" />
              <node concept="2OqwBi" id="7Y8B9wpnvXB" role="37wK5m">
                <node concept="10M0yZ" id="7Y8B9wpnxdQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Y8B9wpnhj$" resolve="EDITOR" />
                  <ref role="1PxDUh" node="7Y8B9wpne4m" resolve="HeaderedEditorDataKeys" />
                </node>
                <node concept="liA8E" id="7Y8B9wpnvXD" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~DataKey.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Y8B9wpnvXE" role="3clFbx">
            <node concept="3cpWs6" id="7Y8B9wpnvXF" role="3cqZAp">
              <node concept="Xjq3P" id="7Y8B9wpnxqY" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4iADw$6wWK1" role="3cqZAp">
          <node concept="3clFbS" id="4iADw$6wWK3" role="3clFbx">
            <node concept="3cpWs6" id="3d8NNNVmKfc" role="3cqZAp">
              <node concept="2OqwBi" id="3d8NNNVlhSM" role="3cqZAk">
                <node concept="37vLTw" id="3d8NNNVlhSN" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Y8B9wpkITA" resolve="myCurrentProjection" />
                </node>
                <node concept="liA8E" id="3d8NNNVlhSO" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~DataProvider.getData(java.lang.String)" resolve="getData" />
                  <node concept="37vLTw" id="3d8NNNVlhSP" role="37wK5m">
                    <ref role="3cqZAo" node="7Y8B9wpd_4k" resolve="dataId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4iADw$6wYNd" role="3clFbw">
            <node concept="10Nm6u" id="4iADw$6wZ9L" role="3uHU7w" />
            <node concept="37vLTw" id="4iADw$6wYfO" role="3uHU7B">
              <ref role="3cqZAo" node="7Y8B9wpkITA" resolve="myCurrentProjection" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4iADw$6x2Au" role="3cqZAp">
          <node concept="10Nm6u" id="4iADw$6x4pL" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7Y8B9wpd_4E" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wpd_4F" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpkY8F" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wplEXy" role="jymVt">
      <property role="TrG5h" value="saveState" />
      <node concept="2AHcQZ" id="7Y8B9wplEXz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="7Y8B9wplEX$" role="3clF47">
        <node concept="3cpWs8" id="7Y8B9wplEXA" role="3cqZAp">
          <node concept="3cpWsn" id="7Y8B9wplEX_" role="3cpWs9">
            <property role="TrG5h" value="state" />
            <node concept="3uibUv" id="7Y8B9wplGxV" role="1tU5fm">
              <ref role="3uigEE" node="7Y8B9wpiWJm" resolve="HeaderedNodeEditor.HeaderedEditorState" />
            </node>
            <node concept="2ShNRf" id="7Y8B9wplIq0" role="33vP2m">
              <node concept="HV5vD" id="7Y8B9wplIq2" role="2ShVmc">
                <ref role="HV5vE" node="7Y8B9wpiWJm" resolve="HeaderedNodeEditor.HeaderedEditorState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Y8B9wplEXD" role="3cqZAp">
          <node concept="1rXfSq" id="7Y8B9wplEXE" role="3clFbG">
            <ref role="37wK5l" node="7Y8B9wplEXK" resolve="saveState" />
            <node concept="37vLTw" id="7Y8B9wplEXF" role="37wK5m">
              <ref role="3cqZAo" node="7Y8B9wplEX_" resolve="state" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Y8B9wplEXG" role="3cqZAp">
          <node concept="37vLTw" id="7Y8B9wplEXH" role="3cqZAk">
            <ref role="3cqZAo" node="7Y8B9wplEX_" resolve="state" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Y8B9wplEXI" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wplEXJ" role="3clF45">
        <ref role="3uigEE" to="cj4x:~EditorState" resolve="EditorState" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wplNE8" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wplEXK" role="jymVt">
      <property role="TrG5h" value="saveState" />
      <node concept="2AHcQZ" id="7Y8B9wplEXL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="7Y8B9wplEXM" role="3clF46">
        <property role="TrG5h" value="state" />
        <node concept="3uibUv" id="7Y8B9wplEXN" role="1tU5fm">
          <ref role="3uigEE" to="k3nr:~BaseNodeEditor$BaseEditorState" resolve="BaseNodeEditor.BaseEditorState" />
        </node>
      </node>
      <node concept="3clFbS" id="7Y8B9wplEXO" role="3clF47">
        <node concept="3clFbF" id="7Y8B9wplEXP" role="3cqZAp">
          <node concept="3nyPlj" id="7Y8B9wplEXQ" role="3clFbG">
            <ref role="37wK5l" to="k3nr:~BaseNodeEditor.saveState(jetbrains.mps.ide.editor.BaseNodeEditor$BaseEditorState)" resolve="saveState" />
            <node concept="37vLTw" id="7Y8B9wplEXR" role="37wK5m">
              <ref role="3cqZAo" node="7Y8B9wplEXM" resolve="state" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7Y8B9wplEXS" role="3cqZAp">
          <node concept="1Wc70l" id="1G7REQTSqxN" role="3clFbw">
            <node concept="3y3z36" id="1G7REQTSrvP" role="3uHU7w">
              <node concept="10Nm6u" id="1G7REQTSrWj" role="3uHU7w" />
              <node concept="37vLTw" id="1G7REQTSr29" role="3uHU7B">
                <ref role="3cqZAo" node="7Y8B9wpkITA" resolve="myCurrentProjection" />
              </node>
            </node>
            <node concept="2ZW3vV" id="7Y8B9wplEXV" role="3uHU7B">
              <node concept="37vLTw" id="7Y8B9wplEXT" role="2ZW6bz">
                <ref role="3cqZAo" node="7Y8B9wplEXM" resolve="state" />
              </node>
              <node concept="3uibUv" id="7Y8B9wplJ02" role="2ZW6by">
                <ref role="3uigEE" node="7Y8B9wpiWJm" resolve="HeaderedNodeEditor.HeaderedEditorState" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7Y8B9wplEXX" role="3clFbx">
            <node concept="3cpWs8" id="7Y8B9wpm9sq" role="3cqZAp">
              <node concept="3cpWsn" id="7Y8B9wpm9sr" role="3cpWs9">
                <property role="TrG5h" value="projectionState" />
                <node concept="3uibUv" id="7Y8B9wpm9ix" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                </node>
                <node concept="1rXfSq" id="6YAH_gOxETD" role="33vP2m">
                  <ref role="37wK5l" node="7Y8B9wplqGP" resolve="createDefaultState" />
                  <node concept="37vLTw" id="7Y8B9wpm9st" role="37wK5m">
                    <ref role="3cqZAo" node="7Y8B9wpkITA" resolve="myCurrentProjection" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Y8B9wplP9o" role="3cqZAp">
              <node concept="2OqwBi" id="7Y8B9wplPve" role="3clFbG">
                <node concept="37vLTw" id="7Y8B9wplP9m" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Y8B9wpkITA" resolve="myCurrentProjection" />
                </node>
                <node concept="liA8E" id="7Y8B9wplPLy" role="2OqNvi">
                  <ref role="37wK5l" node="7Y8B9wpldCL" resolve="saveState" />
                  <node concept="37vLTw" id="7Y8B9wpm9Pn" role="37wK5m">
                    <ref role="3cqZAo" node="7Y8B9wpm9sr" resolve="projectionState" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Y8B9wplEXY" role="3cqZAp">
              <node concept="37vLTI" id="7Y8B9wpmbL4" role="3clFbG">
                <node concept="37vLTw" id="7Y8B9wpmcfc" role="37vLTx">
                  <ref role="3cqZAo" node="7Y8B9wpm9sr" resolve="projectionState" />
                </node>
                <node concept="2OqwBi" id="7Y8B9wplEXZ" role="37vLTJ">
                  <node concept="1eOMI4" id="7Y8B9wplEY3" role="2Oq$k0">
                    <node concept="10QFUN" id="7Y8B9wplEY0" role="1eOMHV">
                      <node concept="37vLTw" id="7Y8B9wplEY1" role="10QFUP">
                        <ref role="3cqZAo" node="7Y8B9wplEXM" resolve="state" />
                      </node>
                      <node concept="3uibUv" id="7Y8B9wplJgW" role="10QFUM">
                        <ref role="3uigEE" node="7Y8B9wpiWJm" resolve="HeaderedNodeEditor.HeaderedEditorState" />
                      </node>
                    </node>
                  </node>
                  <node concept="2OwXpG" id="7Y8B9wpmb_Y" role="2OqNvi">
                    <ref role="2Oxat5" node="7Y8B9wpkOsy" resolve="myProjectionState" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="7Y8B9wplEY6" role="1B3o_S" />
      <node concept="3cqZAl" id="7Y8B9wplEY7" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="7Y8B9wplM_y" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wplEY8" role="jymVt">
      <property role="TrG5h" value="loadState" />
      <node concept="2AHcQZ" id="7Y8B9wplEY9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="37vLTG" id="7Y8B9wplEYa" role="3clF46">
        <property role="TrG5h" value="state" />
        <property role="3TUv4t" value="true" />
        <node concept="2AHcQZ" id="7Y8B9wplEYb" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="7Y8B9wplEYc" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorState" resolve="EditorState" />
        </node>
      </node>
      <node concept="3clFbS" id="7Y8B9wplEYd" role="3clF47">
        <node concept="3clFbJ" id="2t7NPq_CaWI" role="3cqZAp">
          <node concept="3clFbS" id="2t7NPq_CaWK" role="3clFbx">
            <node concept="3cpWs8" id="2t7NPq_Cdv$" role="3cqZAp">
              <node concept="3cpWsn" id="2t7NPq_Cdv_" role="3cpWs9">
                <property role="TrG5h" value="realState" />
                <node concept="3uibUv" id="2t7NPq_CdvA" role="1tU5fm">
                  <ref role="3uigEE" to="k3nr:~BaseNodeEditor$BaseEditorState" resolve="BaseNodeEditor.BaseEditorState" />
                </node>
                <node concept="1eOMI4" id="2t7NPq_Ceia" role="33vP2m">
                  <node concept="10QFUN" id="2t7NPq_Cei7" role="1eOMHV">
                    <node concept="3uibUv" id="2t7NPq_Ceic" role="10QFUM">
                      <ref role="3uigEE" to="k3nr:~BaseNodeEditor$BaseEditorState" resolve="BaseNodeEditor.BaseEditorState" />
                    </node>
                    <node concept="37vLTw" id="2t7NPq_Ceid" role="10QFUP">
                      <ref role="3cqZAo" node="7Y8B9wplEYa" resolve="state" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Y8B9wplEYe" role="3cqZAp">
              <node concept="2OqwBi" id="7Y8B9wplEYf" role="3clFbG">
                <node concept="2OqwBi" id="7Y8B9wplG3I" role="2Oq$k0">
                  <node concept="37vLTw" id="7Y8B9wplG3H" role="2Oq$k0">
                    <ref role="3cqZAo" to="k3nr:~BaseNodeEditor.myProject" resolve="myProject" />
                  </node>
                  <node concept="liA8E" id="7Y8B9wplG3J" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="liA8E" id="7Y8B9wplEYh" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                  <node concept="1bVj0M" id="7Y8B9wplJHO" role="37wK5m">
                    <node concept="3clFbS" id="7Y8B9wplJHP" role="1bW5cS">
                      <node concept="3clFbJ" id="7Y8B9wplJXg" role="3cqZAp">
                        <node concept="2ZW3vV" id="7Y8B9wplJXj" role="3clFbw">
                          <node concept="37vLTw" id="2t7NPq_Cflr" role="2ZW6bz">
                            <ref role="3cqZAo" node="2t7NPq_Cdv_" resolve="realState" />
                          </node>
                          <node concept="3uibUv" id="7Y8B9wplLas" role="2ZW6by">
                            <ref role="3uigEE" node="7Y8B9wpiWJm" resolve="HeaderedNodeEditor.HeaderedEditorState" />
                          </node>
                        </node>
                        <node concept="9aQIb" id="7Y8B9wplJXN" role="9aQIa">
                          <node concept="3clFbS" id="7Y8B9wplJXO" role="9aQI4">
                            <node concept="3SKdUt" id="7Y8B9wplJXU" role="3cqZAp">
                              <node concept="1PaTwC" id="7Y8B9wplJXV" role="1aUNEU">
                                <node concept="3oM_SD" id="7Y8B9wplJXY" role="1PaTwD">
                                  <property role="3oM_SC" value="regular" />
                                </node>
                                <node concept="3oM_SD" id="7Y8B9wplJXZ" role="1PaTwD">
                                  <property role="3oM_SC" value="editor" />
                                </node>
                                <node concept="3oM_SD" id="7Y8B9wplJY0" role="1PaTwD">
                                  <property role="3oM_SC" value="was" />
                                </node>
                                <node concept="3oM_SD" id="7Y8B9wplJY1" role="1PaTwD">
                                  <property role="3oM_SC" value="shown" />
                                </node>
                                <node concept="3oM_SD" id="7Y8B9wplJY2" role="1PaTwD">
                                  <property role="3oM_SC" value="for" />
                                </node>
                                <node concept="3oM_SD" id="7Y8B9wplJY3" role="1PaTwD">
                                  <property role="3oM_SC" value="that" />
                                </node>
                                <node concept="3oM_SD" id="7Y8B9wplJY4" role="1PaTwD">
                                  <property role="3oM_SC" value="node" />
                                </node>
                                <node concept="3oM_SD" id="7Y8B9wplJY5" role="1PaTwD">
                                  <property role="3oM_SC" value="last" />
                                </node>
                                <node concept="3oM_SD" id="7Y8B9wplJY6" role="1PaTwD">
                                  <property role="3oM_SC" value="time" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="7Y8B9wpm_Mv" role="3cqZAp">
                              <node concept="1rXfSq" id="7Y8B9wpm_Mt" role="3clFbG">
                                <ref role="37wK5l" node="7Y8B9wpmvJp" resolve="initializeFirstAvailableProjection" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="7Y8B9wplJXl" role="3clFbx">
                          <node concept="3cpWs8" id="7Y8B9wplJXn" role="3cqZAp">
                            <node concept="3cpWsn" id="7Y8B9wplJXm" role="3cpWs9">
                              <property role="TrG5h" value="projectionState" />
                              <node concept="3uibUv" id="7Y8B9wpmdBh" role="1tU5fm">
                                <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                              </node>
                              <node concept="2OqwBi" id="7Y8B9wplJXp" role="33vP2m">
                                <node concept="1eOMI4" id="7Y8B9wplJXt" role="2Oq$k0">
                                  <node concept="10QFUN" id="7Y8B9wplJXq" role="1eOMHV">
                                    <node concept="37vLTw" id="2t7NPq_CfBQ" role="10QFUP">
                                      <ref role="3cqZAo" node="2t7NPq_Cdv_" resolve="realState" />
                                    </node>
                                    <node concept="3uibUv" id="7Y8B9wplLwy" role="10QFUM">
                                      <ref role="3uigEE" node="7Y8B9wpiWJm" resolve="HeaderedNodeEditor.HeaderedEditorState" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OwXpG" id="7Y8B9wpmcOj" role="2OqNvi">
                                  <ref role="2Oxat5" node="7Y8B9wpkOsy" resolve="myProjectionState" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="1QSEqLi4fFQ" role="3cqZAp">
                            <node concept="1rXfSq" id="1QSEqLi4fFP" role="3clFbG">
                              <ref role="37wK5l" node="1QSEqLi4fFG" resolve="restoreState" />
                              <node concept="37vLTw" id="1QSEqLi4hvv" role="37wK5m">
                                <ref role="3cqZAo" node="7Y8B9wplJXm" resolve="projectionState" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="2t7NPq_Cj4R" role="3cqZAp">
                        <node concept="3cpWsn" id="2t7NPq_Cj4S" role="3cpWs9">
                          <property role="TrG5h" value="componentState" />
                          <node concept="3uibUv" id="2t7NPq_Cj4T" role="1tU5fm">
                            <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                          </node>
                          <node concept="2ShNRf" id="2t7NPq_Clb9" role="33vP2m">
                            <node concept="1pGfFk" id="2t7NPq_CVfW" role="2ShVmc">
                              <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                              <node concept="Xl_RD" id="2t7NPq_CVqc" role="37wK5m">
                                <property role="Xl_RC" value="container" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2t7NPq_Cgc4" role="3cqZAp">
                        <node concept="2OqwBi" id="2t7NPq_CgsS" role="3clFbG">
                          <node concept="37vLTw" id="2t7NPq_Cgc2" role="2Oq$k0">
                            <ref role="3cqZAo" node="2t7NPq_Cdv_" resolve="realState" />
                          </node>
                          <node concept="liA8E" id="2t7NPq_CV$v" role="2OqNvi">
                            <ref role="37wK5l" to="k3nr:~BaseNodeEditor$BaseEditorState.save(org.jdom.Element)" resolve="save" />
                            <node concept="37vLTw" id="2t7NPq_CVOJ" role="37wK5m">
                              <ref role="3cqZAo" node="2t7NPq_Cj4S" resolve="componentState" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="2t7NPq_CZvQ" role="3cqZAp">
                        <node concept="3cpWsn" id="2t7NPq_CZvR" role="3cpWs9">
                          <property role="TrG5h" value="memento" />
                          <node concept="3uibUv" id="2t7NPq_CZpB" role="1tU5fm">
                            <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                          </node>
                          <node concept="2OqwBi" id="2t7NPq_CZvS" role="33vP2m">
                            <node concept="37vLTw" id="2t7NPq_CZvT" role="2Oq$k0">
                              <ref role="3cqZAo" node="2t7NPq_Cj4S" resolve="componentState" />
                            </node>
                            <node concept="liA8E" id="2t7NPq_CZvU" role="2OqNvi">
                              <ref role="37wK5l" to="mmaq:~Element.getChild(java.lang.String)" resolve="getChild" />
                              <node concept="Xl_RD" id="2t7NPq_CZvV" role="37wK5m">
                                <property role="Xl_RC" value="memento" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="2t7NPq_CZmf" role="3cqZAp">
                        <node concept="3clFbS" id="2t7NPq_CZmh" role="3clFbx">
                          <node concept="3clFbF" id="2t7NPq_D11f" role="3cqZAp">
                            <node concept="2OqwBi" id="2t7NPq_D1x8" role="3clFbG">
                              <node concept="37vLTw" id="2t7NPq_D11d" role="2Oq$k0">
                                <ref role="3cqZAo" node="2t7NPq_CZvR" resolve="memento" />
                              </node>
                              <node concept="liA8E" id="2t7NPq_D2yF" role="2OqNvi">
                                <ref role="37wK5l" to="mmaq:~Element.removeChildren(java.lang.String)" resolve="removeChildren" />
                                <node concept="Xl_RD" id="2t7NPq_D2HR" role="37wK5m">
                                  <property role="Xl_RC" value="enabledHints" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="2t7NPq_D7BA" role="3cqZAp">
                            <node concept="3cpWsn" id="2t7NPq_D7B_" role="3cpWs9">
                              <property role="TrG5h" value="hintsElement" />
                              <node concept="3uibUv" id="2t7NPq_D8Kp" role="1tU5fm">
                                <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                              </node>
                              <node concept="2ShNRf" id="2t7NPq_DaxV" role="33vP2m">
                                <node concept="1pGfFk" id="2t7NPq_DboQ" role="2ShVmc">
                                  <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                                  <node concept="Xl_RD" id="2t7NPq_Dc9u" role="37wK5m">
                                    <property role="Xl_RC" value="enabledHints" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1DcWWT" id="2t7NPq_D7BE" role="3cqZAp">
                            <node concept="3cpWsn" id="2t7NPq_D7BT" role="1Duv9x">
                              <property role="TrG5h" value="hint" />
                              <node concept="3uibUv" id="2t7NPq_D7BV" role="1tU5fm">
                                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="2t7NPq_D7BG" role="2LFqv$">
                              <node concept="3cpWs8" id="2t7NPq_D7BI" role="3cqZAp">
                                <node concept="3cpWsn" id="2t7NPq_D7BH" role="3cpWs9">
                                  <property role="TrG5h" value="hintElement" />
                                  <node concept="3uibUv" id="2t7NPq_DdN5" role="1tU5fm">
                                    <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                                  </node>
                                  <node concept="2ShNRf" id="2t7NPq_DeUm" role="33vP2m">
                                    <node concept="1pGfFk" id="2t7NPq_Dgwp" role="2ShVmc">
                                      <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                                      <node concept="Xl_RD" id="2t7NPq_DgO8" role="37wK5m">
                                        <property role="Xl_RC" value="enabledHintsElement" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2t7NPq_D7BM" role="3cqZAp">
                                <node concept="2OqwBi" id="2t7NPq_D8fA" role="3clFbG">
                                  <node concept="37vLTw" id="2t7NPq_D8f_" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2t7NPq_D7BH" resolve="hintElement" />
                                  </node>
                                  <node concept="liA8E" id="2t7NPq_D8fB" role="2OqNvi">
                                    <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                                    <node concept="Xl_RD" id="2t7NPq_DhgP" role="37wK5m">
                                      <property role="Xl_RC" value="enabledHintsAttribute" />
                                    </node>
                                    <node concept="37vLTw" id="2t7NPq_D8fF" role="37wK5m">
                                      <ref role="3cqZAo" node="2t7NPq_D7BT" resolve="hint" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="2t7NPq_D7BQ" role="3cqZAp">
                                <node concept="2OqwBi" id="2t7NPq_D8gk" role="3clFbG">
                                  <node concept="37vLTw" id="2t7NPq_D8gj" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2t7NPq_D7B_" resolve="hintsElement" />
                                  </node>
                                  <node concept="liA8E" id="2t7NPq_D8gl" role="2OqNvi">
                                    <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element)" resolve="addContent" />
                                    <node concept="37vLTw" id="2t7NPq_D8gm" role="37wK5m">
                                      <ref role="3cqZAo" node="2t7NPq_D7BH" resolve="hintElement" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2t7NPq_D6LV" role="1DdaDG">
                              <node concept="37vLTw" id="2t7NPq_D6iT" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Y8B9wpkITA" resolve="myCurrentProjection" />
                              </node>
                              <node concept="liA8E" id="2t7NPq_D7d0" role="2OqNvi">
                                <ref role="37wK5l" node="7Y8B9wpo69t" resolve="getInitialEditorHints" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="2t7NPq_Dirf" role="3cqZAp">
                            <node concept="2OqwBi" id="2t7NPq_Dj2q" role="3clFbG">
                              <node concept="37vLTw" id="2t7NPq_Dird" role="2Oq$k0">
                                <ref role="3cqZAo" node="2t7NPq_CZvR" resolve="memento" />
                              </node>
                              <node concept="liA8E" id="2t7NPq_DjIy" role="2OqNvi">
                                <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element)" resolve="addContent" />
                                <node concept="37vLTw" id="2t7NPq_Dk6Z" role="37wK5m">
                                  <ref role="3cqZAo" node="2t7NPq_D7B_" resolve="hintsElement" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="2t7NPq_D0qr" role="3clFbw">
                          <node concept="10Nm6u" id="2t7NPq_D0IK" role="3uHU7w" />
                          <node concept="37vLTw" id="2t7NPq_CZQ2" role="3uHU7B">
                            <ref role="3cqZAo" node="2t7NPq_CZvR" resolve="memento" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="2t7NPq_DkKh" role="3cqZAp">
                        <node concept="2OqwBi" id="2t7NPq_DmSN" role="3clFbG">
                          <node concept="37vLTw" id="2t7NPq_DmzZ" role="2Oq$k0">
                            <ref role="3cqZAo" node="2t7NPq_Cdv_" resolve="realState" />
                          </node>
                          <node concept="liA8E" id="2t7NPq_Dn5m" role="2OqNvi">
                            <ref role="37wK5l" to="k3nr:~BaseNodeEditor$BaseEditorState.load(org.jdom.Element)" resolve="load" />
                            <node concept="37vLTw" id="2t7NPq_Dn_H" role="37wK5m">
                              <ref role="3cqZAo" node="2t7NPq_Cj4S" resolve="componentState" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7Y8B9wplEYi" role="3cqZAp">
              <node concept="3nyPlj" id="7Y8B9wplEYj" role="3clFbG">
                <ref role="37wK5l" to="k3nr:~BaseNodeEditor.loadState(jetbrains.mps.openapi.editor.EditorState)" resolve="loadState" />
                <node concept="37vLTw" id="2t7NPq_Dmc8" role="37wK5m">
                  <ref role="3cqZAo" node="2t7NPq_Cdv_" resolve="realState" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="2t7NPq_Cbw6" role="3clFbw">
            <node concept="3uibUv" id="2t7NPq_CcmP" role="2ZW6by">
              <ref role="3uigEE" to="k3nr:~BaseNodeEditor$BaseEditorState" resolve="BaseNodeEditor.BaseEditorState" />
            </node>
            <node concept="37vLTw" id="2t7NPq_Cb5G" role="2ZW6bz">
              <ref role="3cqZAo" node="7Y8B9wplEYa" resolve="state" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Y8B9wplEYl" role="1B3o_S" />
      <node concept="3cqZAl" id="7Y8B9wplEYm" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1QSEqLi4jmQ" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLi4fFG" role="jymVt">
      <property role="TrG5h" value="restoreState" />
      <node concept="3Tm6S6" id="1QSEqLi4fFH" role="1B3o_S" />
      <node concept="3cqZAl" id="1QSEqLi4fFI" role="3clF45" />
      <node concept="3clFbS" id="1QSEqLi4fEY" role="3clF47">
        <node concept="3cpWs8" id="1QSEqLi4fEZ" role="3cqZAp">
          <node concept="3cpWsn" id="1QSEqLi4fF0" role="3cpWs9">
            <property role="TrG5h" value="controllerId" />
            <node concept="3uibUv" id="1QSEqLi4fF1" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="1QSEqLi4fF2" role="33vP2m">
              <node concept="37vLTw" id="1QSEqLi4kUB" role="2Oq$k0">
                <ref role="3cqZAo" node="1QSEqLi4hGc" resolve="projectionState" />
              </node>
              <node concept="liA8E" id="1QSEqLi4fF4" role="2OqNvi">
                <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String)" resolve="getAttributeValue" />
                <node concept="37vLTw" id="6YAH_gOxD$W" role="37wK5m">
                  <ref role="3cqZAo" node="7Y8B9wpj48Z" resolve="CONTROLLER_ID_KEY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1QSEqLi4fF6" role="3cqZAp">
          <node concept="3cpWsn" id="1QSEqLi4fF7" role="3cpWs9">
            <property role="TrG5h" value="projectionName" />
            <node concept="3uibUv" id="1QSEqLi4fF8" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="1QSEqLi4fF9" role="33vP2m">
              <node concept="37vLTw" id="1QSEqLi4l6B" role="2Oq$k0">
                <ref role="3cqZAo" node="1QSEqLi4hGc" resolve="projectionState" />
              </node>
              <node concept="liA8E" id="1QSEqLi4fFb" role="2OqNvi">
                <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String)" resolve="getAttributeValue" />
                <node concept="37vLTw" id="6YAH_gOxE4I" role="37wK5m">
                  <ref role="3cqZAo" node="7Y8B9wpllVQ" resolve="PROJECTION_NAME_KEY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1G7REQTSscC" role="3cqZAp">
          <node concept="3clFbS" id="1G7REQTSscE" role="3clFbx">
            <node concept="3cpWs8" id="1QSEqLi4fFd" role="3cqZAp">
              <node concept="3cpWsn" id="1QSEqLi4fFe" role="3cpWs9">
                <property role="TrG5h" value="controller" />
                <node concept="3uibUv" id="1QSEqLi4fFf" role="1tU5fm">
                  <ref role="3uigEE" node="7Y8B9wpj6Z6" resolve="EditorProjectionController" />
                </node>
                <node concept="2OqwBi" id="1QSEqLi4fFg" role="33vP2m">
                  <node concept="2OqwBi" id="1QSEqLi4fFh" role="2Oq$k0">
                    <node concept="2OqwBi" id="1QSEqLi4fFi" role="2Oq$k0">
                      <node concept="2O5UvJ" id="1QSEqLi4fFj" role="2Oq$k0">
                        <ref role="2O5UnU" to="qvjh:7Y8B9wpjmV_" resolve="EditorProjectionControllerRegistry" />
                      </node>
                      <node concept="SfwO_" id="1QSEqLi4fFk" role="2OqNvi" />
                    </node>
                    <node concept="1z4cxt" id="1QSEqLi4fFl" role="2OqNvi">
                      <node concept="1bVj0M" id="1QSEqLi4fFm" role="23t8la">
                        <node concept="3clFbS" id="1QSEqLi4fFn" role="1bW5cS">
                          <node concept="3clFbF" id="1QSEqLi4fFo" role="3cqZAp">
                            <node concept="17R0WA" id="1QSEqLi4fFp" role="3clFbG">
                              <node concept="37vLTw" id="1QSEqLi4fFq" role="3uHU7w">
                                <ref role="3cqZAo" node="1QSEqLi4fF0" resolve="controllerId" />
                              </node>
                              <node concept="2OqwBi" id="1QSEqLi4fFr" role="3uHU7B">
                                <node concept="37vLTw" id="1QSEqLi4fFs" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1QSEqLi4fFu" resolve="it" />
                                </node>
                                <node concept="liA8E" id="1QSEqLi4fFt" role="2OqNvi">
                                  <ref role="37wK5l" node="7Y8B9wpl1Ab" resolve="getId" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="1QSEqLi4fFu" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="1QSEqLi4fFv" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1QSEqLi4fFw" role="2OqNvi">
                    <ref role="37wK5l" node="7Y8B9wpl1Qt" resolve="create" />
                    <node concept="37vLTw" id="1QSEqLi4fFx" role="37wK5m">
                      <ref role="3cqZAo" node="7Y8B9wpdF4J" resolve="myBaseNode" />
                    </node>
                    <node concept="37vLTw" id="1vJkp1TW6DG" role="37wK5m">
                      <ref role="3cqZAo" to="k3nr:~BaseNodeEditor.myProject" resolve="myProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="30N5LJabHn3" role="3cqZAp">
              <node concept="1rXfSq" id="30N5LJabHn1" role="3clFbG">
                <ref role="37wK5l" node="7Y8B9wpn_eO" resolve="chooseProjection" />
                <node concept="2OqwBi" id="1QSEqLi4fF$" role="37wK5m">
                  <node concept="37vLTw" id="1QSEqLi4fF_" role="2Oq$k0">
                    <ref role="3cqZAo" node="1QSEqLi4fFe" resolve="controller" />
                  </node>
                  <node concept="liA8E" id="1QSEqLi4fFA" role="2OqNvi">
                    <ref role="37wK5l" node="7Y8B9wpl7i_" resolve="restoreProjection" />
                    <node concept="37vLTw" id="1QSEqLi4fFB" role="37wK5m">
                      <ref role="3cqZAo" node="1QSEqLi4fF7" resolve="projectionName" />
                    </node>
                    <node concept="37vLTw" id="1QSEqLi4lfX" role="37wK5m">
                      <ref role="3cqZAo" node="1QSEqLi4hGc" resolve="projectionState" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="1G7REQTStkX" role="3clFbw">
            <node concept="3y3z36" id="1G7REQTStVl" role="3uHU7w">
              <node concept="10Nm6u" id="1G7REQTSuaz" role="3uHU7w" />
              <node concept="37vLTw" id="1G7REQTStyn" role="3uHU7B">
                <ref role="3cqZAo" node="1QSEqLi4fF7" resolve="projectionName" />
              </node>
            </node>
            <node concept="3y3z36" id="1G7REQTSsYQ" role="3uHU7B">
              <node concept="37vLTw" id="1G7REQTSsvr" role="3uHU7B">
                <ref role="3cqZAo" node="1QSEqLi4fF0" resolve="controllerId" />
              </node>
              <node concept="10Nm6u" id="1G7REQTStez" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLi4hGc" role="3clF46">
        <property role="TrG5h" value="projectionState" />
        <node concept="3uibUv" id="1QSEqLi4hGb" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpmzzz" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wpmvJp" role="jymVt">
      <property role="TrG5h" value="initializeFirstAvailableProjection" />
      <node concept="3Tm6S6" id="7Y8B9wpmvJq" role="1B3o_S" />
      <node concept="3cqZAl" id="7Y8B9wpmvJr" role="3clF45" />
      <node concept="3clFbS" id="7Y8B9wpmvIV" role="3clF47">
        <node concept="2Gpval" id="7ii99HMoIdn" role="3cqZAp">
          <node concept="2GrKxI" id="7ii99HMoIdp" role="2Gsz3X">
            <property role="TrG5h" value="factory" />
          </node>
          <node concept="3clFbS" id="7ii99HMoIdt" role="2LFqv$">
            <node concept="3cpWs8" id="7ii99HMoKbk" role="3cqZAp">
              <node concept="3cpWsn" id="7ii99HMoKbl" role="3cpWs9">
                <property role="TrG5h" value="controller" />
                <node concept="3uibUv" id="7ii99HMoJYy" role="1tU5fm">
                  <ref role="3uigEE" node="7Y8B9wpj6Z6" resolve="EditorProjectionController" />
                </node>
                <node concept="2OqwBi" id="7ii99HMoKbm" role="33vP2m">
                  <node concept="2GrUjf" id="7ii99HMoKbn" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="7ii99HMoIdp" resolve="factory" />
                  </node>
                  <node concept="liA8E" id="7ii99HMoKbo" role="2OqNvi">
                    <ref role="37wK5l" node="7Y8B9wpl1Qt" resolve="create" />
                    <node concept="37vLTw" id="7ii99HMoKbp" role="37wK5m">
                      <ref role="3cqZAo" node="7Y8B9wpdF4J" resolve="myBaseNode" />
                    </node>
                    <node concept="37vLTw" id="7ii99HMoKbq" role="37wK5m">
                      <ref role="3cqZAo" to="k3nr:~BaseNodeEditor.myProject" resolve="myProject" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7ii99HMoKR5" role="3cqZAp">
              <node concept="3cpWsn" id="7ii99HMoKR6" role="3cpWs9">
                <property role="TrG5h" value="defaultProjection" />
                <node concept="3uibUv" id="7ii99HMoKOt" role="1tU5fm">
                  <ref role="3uigEE" node="7Y8B9wpl75t" resolve="EditorProjection" />
                </node>
                <node concept="2OqwBi" id="7ii99HMoKR7" role="33vP2m">
                  <node concept="37vLTw" id="7ii99HMoKR8" role="2Oq$k0">
                    <ref role="3cqZAo" node="7ii99HMoKbl" resolve="controller" />
                  </node>
                  <node concept="liA8E" id="7ii99HMoKR9" role="2OqNvi">
                    <ref role="37wK5l" node="7ii99HMoimL" resolve="createDefaultProjection" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7ii99HMoLdW" role="3cqZAp">
              <node concept="3clFbS" id="7ii99HMoLdY" role="3clFbx">
                <node concept="3clFbF" id="7ii99HMoMhP" role="3cqZAp">
                  <node concept="1rXfSq" id="7ii99HMoMhN" role="3clFbG">
                    <ref role="37wK5l" node="7Y8B9wpn_eO" resolve="chooseProjection" />
                    <node concept="37vLTw" id="7ii99HMoMDw" role="37wK5m">
                      <ref role="3cqZAo" node="7ii99HMoKR6" resolve="defaultProjection" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="1G7REQTSwwQ" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="7ii99HMoLFT" role="3clFbw">
                <node concept="10Nm6u" id="7ii99HMoLQo" role="3uHU7w" />
                <node concept="37vLTw" id="7ii99HMoLri" role="3uHU7B">
                  <ref role="3cqZAo" node="7ii99HMoKR6" resolve="defaultProjection" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="7Y8B9wpmvJ0" role="2GsD0m">
            <node concept="2OqwBi" id="7Y8B9wpmvJ1" role="2Oq$k0">
              <node concept="2O5UvJ" id="7Y8B9wpmvJ2" role="2Oq$k0">
                <ref role="2O5UnU" to="qvjh:7Y8B9wpjmV_" resolve="EditorProjectionControllerRegistry" />
              </node>
              <node concept="SfwO_" id="7Y8B9wpmvJ3" role="2OqNvi" />
            </node>
            <node concept="3zZkjj" id="7ii99HMoGgc" role="2OqNvi">
              <node concept="1bVj0M" id="7ii99HMoGge" role="23t8la">
                <node concept="3clFbS" id="7ii99HMoGgf" role="1bW5cS">
                  <node concept="3clFbF" id="7ii99HMoGgg" role="3cqZAp">
                    <node concept="2OqwBi" id="7ii99HMoGgh" role="3clFbG">
                      <node concept="37vLTw" id="7ii99HMoGgi" role="2Oq$k0">
                        <ref role="3cqZAo" node="7ii99HMoGgl" resolve="it" />
                      </node>
                      <node concept="liA8E" id="7ii99HMoGgj" role="2OqNvi">
                        <ref role="37wK5l" node="1kUX9T6krQz" resolve="isApplicable" />
                        <node concept="37vLTw" id="7ii99HMoGgk" role="37wK5m">
                          <ref role="3cqZAo" node="7Y8B9wpdF4J" resolve="myBaseNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="7ii99HMoGgl" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="7ii99HMoGgm" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpiR0G" role="jymVt" />
    <node concept="Wx3nA" id="7Y8B9wpj48Z" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="CONTROLLER_ID_KEY" />
      <node concept="3Tm1VV" id="6YAH_gObgOX" role="1B3o_S" />
      <node concept="17QB3L" id="7Y8B9wpj48X" role="1tU5fm" />
      <node concept="Xl_RD" id="7Y8B9wpj48Y" role="33vP2m">
        <property role="Xl_RC" value="id" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Y8B9wpllVQ" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="PROJECTION_NAME_KEY" />
      <node concept="3Tm1VV" id="6YAH_gObgrT" role="1B3o_S" />
      <node concept="17QB3L" id="7Y8B9wpllVS" role="1tU5fm" />
      <node concept="Xl_RD" id="7Y8B9wpllVT" role="33vP2m">
        <property role="Xl_RC" value="name" />
      </node>
    </node>
    <node concept="Wx3nA" id="7Y8B9wpkNGr" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="PROJECTION_DATA_KEY" />
      <node concept="3Tm1VV" id="6YAH_gObgx2" role="1B3o_S" />
      <node concept="17QB3L" id="7Y8B9wpkNGt" role="1tU5fm" />
      <node concept="Xl_RD" id="7Y8B9wpkNGu" role="33vP2m">
        <property role="Xl_RC" value="projection_data" />
      </node>
    </node>
    <node concept="2tJIrI" id="6YAH_gObmkr" role="jymVt" />
    <node concept="312cEu" id="7Y8B9wpiWJm" role="jymVt">
      <property role="TrG5h" value="HeaderedEditorState" />
      <node concept="2tJIrI" id="7Y8B9wpiXHa" role="jymVt" />
      <node concept="312cEg" id="7Y8B9wpkOsy" role="jymVt">
        <property role="TrG5h" value="myProjectionState" />
        <node concept="3Tm6S6" id="7Y8B9wpkOas" role="1B3o_S" />
        <node concept="3uibUv" id="7Y8B9wpkOqe" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
        </node>
      </node>
      <node concept="2tJIrI" id="7Y8B9wpiZ83" role="jymVt" />
      <node concept="3Tm6S6" id="7Y8B9wpiW0f" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wpiXCs" role="1zkMxy">
        <ref role="3uigEE" to="k3nr:~BaseNodeEditor$BaseEditorState" resolve="BaseNodeEditor.BaseEditorState" />
      </node>
      <node concept="3clFb_" id="7Y8B9wpiZck" role="jymVt">
        <property role="TrG5h" value="save" />
        <node concept="3Tm1VV" id="7Y8B9wpiZcl" role="1B3o_S" />
        <node concept="3cqZAl" id="7Y8B9wpiZcn" role="3clF45" />
        <node concept="37vLTG" id="7Y8B9wpiZco" role="3clF46">
          <property role="TrG5h" value="e" />
          <node concept="3uibUv" id="7Y8B9wpiZcp" role="1tU5fm">
            <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
          </node>
        </node>
        <node concept="3clFbS" id="7Y8B9wpiZcq" role="3clF47">
          <node concept="3clFbF" id="7Y8B9wpkTSp" role="3cqZAp">
            <node concept="2OqwBi" id="7Y8B9wpkUgb" role="3clFbG">
              <node concept="37vLTw" id="7Y8B9wpkTSo" role="2Oq$k0">
                <ref role="3cqZAo" node="7Y8B9wpiZco" resolve="e" />
              </node>
              <node concept="liA8E" id="7Y8B9wpkUP1" role="2OqNvi">
                <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element)" resolve="addContent" />
                <node concept="37vLTw" id="7Y8B9wpkVcH" role="37wK5m">
                  <ref role="3cqZAo" node="7Y8B9wpkOsy" resolve="myProjectionState" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7Y8B9wpiZcr" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="7Y8B9wpj6M9" role="jymVt" />
      <node concept="3clFb_" id="7Y8B9wpiZcv" role="jymVt">
        <property role="TrG5h" value="load" />
        <node concept="3Tm1VV" id="7Y8B9wpiZcw" role="1B3o_S" />
        <node concept="3cqZAl" id="7Y8B9wpiZcy" role="3clF45" />
        <node concept="37vLTG" id="7Y8B9wpiZcz" role="3clF46">
          <property role="TrG5h" value="e" />
          <node concept="3uibUv" id="7Y8B9wpiZc$" role="1tU5fm">
            <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
          </node>
        </node>
        <node concept="3clFbS" id="7Y8B9wpiZc_" role="3clF47">
          <node concept="3clFbF" id="7Y8B9wpkWcF" role="3cqZAp">
            <node concept="37vLTI" id="7Y8B9wpkW_O" role="3clFbG">
              <node concept="2OqwBi" id="7Y8B9wpkXOf" role="37vLTx">
                <node concept="2OqwBi" id="7Y8B9wpkWYN" role="2Oq$k0">
                  <node concept="37vLTw" id="7Y8B9wpkWYq" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Y8B9wpiZcz" resolve="e" />
                  </node>
                  <node concept="liA8E" id="7Y8B9wpkXdT" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Element.getChild(java.lang.String)" resolve="getChild" />
                    <node concept="37vLTw" id="7Y8B9wpkXAQ" role="37wK5m">
                      <ref role="3cqZAo" node="7Y8B9wpkNGr" resolve="PROJECTION_DATA_KEY" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="7Y8B9wpkY1o" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.clone()" resolve="clone" />
                </node>
              </node>
              <node concept="37vLTw" id="7Y8B9wpkWcE" role="37vLTJ">
                <ref role="3cqZAo" node="7Y8B9wpkOsy" resolve="myProjectionState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="7Y8B9wpiZcA" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6YAH_gOaEQ2" role="jymVt" />
    <node concept="2YIFZL" id="7Y8B9wplqGP" role="jymVt">
      <property role="TrG5h" value="createDefaultState" />
      <node concept="3clFbS" id="7Y8B9wplqGR" role="3clF47">
        <node concept="3cpWs8" id="7Y8B9wpm1Jj" role="3cqZAp">
          <node concept="3cpWsn" id="7Y8B9wpm1Jm" role="3cpWs9">
            <property role="TrG5h" value="controllerId" />
            <node concept="17QB3L" id="7Y8B9wplqGY" role="1tU5fm" />
            <node concept="2OqwBi" id="7Y8B9wpm57c" role="33vP2m">
              <node concept="2OqwBi" id="7Y8B9wpm4Uk" role="2Oq$k0">
                <node concept="37vLTw" id="7Y8B9wpm4OF" role="2Oq$k0">
                  <ref role="3cqZAo" node="7Y8B9wpm2L5" resolve="projection" />
                </node>
                <node concept="liA8E" id="7Y8B9wpm53N" role="2OqNvi">
                  <ref role="37wK5l" node="7Y8B9wplRkB" resolve="getController" />
                </node>
              </node>
              <node concept="liA8E" id="7Y8B9wpm5bO" role="2OqNvi">
                <ref role="37wK5l" node="7Y8B9wplQVu" resolve="getId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Y8B9wpm1Jo" role="3cqZAp">
          <node concept="3cpWsn" id="7Y8B9wpm1Jr" role="3cpWs9">
            <property role="TrG5h" value="projectionName" />
            <node concept="17QB3L" id="7Y8B9wplqH0" role="1tU5fm" />
            <node concept="2OqwBi" id="7Y8B9wpm4mo" role="33vP2m">
              <node concept="37vLTw" id="7Y8B9wpm44Q" role="2Oq$k0">
                <ref role="3cqZAo" node="7Y8B9wpm2L5" resolve="projection" />
              </node>
              <node concept="liA8E" id="7Y8B9wpm4xA" role="2OqNvi">
                <ref role="37wK5l" node="7Y8B9wplZF3" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Y8B9wpm1IX" role="3cqZAp" />
        <node concept="3cpWs8" id="7Y8B9wplt$e" role="3cqZAp">
          <node concept="3cpWsn" id="7Y8B9wplt$f" role="3cpWs9">
            <property role="TrG5h" value="element" />
            <node concept="3uibUv" id="7Y8B9wpltwx" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
            </node>
            <node concept="2ShNRf" id="7Y8B9wplt$g" role="33vP2m">
              <node concept="1pGfFk" id="7Y8B9wplt$h" role="2ShVmc">
                <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                <node concept="37vLTw" id="6YAH_gObo_t" role="37wK5m">
                  <ref role="3cqZAo" node="7Y8B9wpkNGr" resolve="PROJECTION_DATA_KEY" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Y8B9wplqGS" role="3cqZAp">
          <node concept="2OqwBi" id="7Y8B9wpluiw" role="3clFbG">
            <node concept="37vLTw" id="7Y8B9wplt$j" role="2Oq$k0">
              <ref role="3cqZAo" node="7Y8B9wplt$f" resolve="element" />
            </node>
            <node concept="liA8E" id="7Y8B9wplulm" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
              <node concept="37vLTw" id="6YAH_gObqgv" role="37wK5m">
                <ref role="3cqZAo" node="7Y8B9wpj48Z" resolve="CONTROLLER_ID_KEY" />
              </node>
              <node concept="37vLTw" id="7Y8B9wplvkL" role="37wK5m">
                <ref role="3cqZAo" node="7Y8B9wpm1Jm" resolve="controllerId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Y8B9wplvmc" role="3cqZAp">
          <node concept="2OqwBi" id="7Y8B9wplvmd" role="3clFbG">
            <node concept="37vLTw" id="7Y8B9wplvme" role="2Oq$k0">
              <ref role="3cqZAo" node="7Y8B9wplt$f" resolve="element" />
            </node>
            <node concept="liA8E" id="7Y8B9wplvmf" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
              <node concept="37vLTw" id="6YAH_gObqND" role="37wK5m">
                <ref role="3cqZAo" node="7Y8B9wpllVQ" resolve="PROJECTION_NAME_KEY" />
              </node>
              <node concept="37vLTw" id="7Y8B9wpm5tR" role="37wK5m">
                <ref role="3cqZAo" node="7Y8B9wpm1Jr" resolve="projectionName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7Y8B9wplwqg" role="3cqZAp">
          <node concept="37vLTw" id="7Y8B9wplwBw" role="3cqZAk">
            <ref role="3cqZAo" node="7Y8B9wplt$f" resolve="element" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7Y8B9wplwRm" role="3clF45">
        <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
      </node>
      <node concept="3Tm1VV" id="6YAH_gOaExQ" role="1B3o_S" />
      <node concept="37vLTG" id="7Y8B9wpm2L5" role="3clF46">
        <property role="TrG5h" value="projection" />
        <node concept="3uibUv" id="7Y8B9wpm2L4" role="1tU5fm">
          <ref role="3uigEE" node="7Y8B9wpl75t" resolve="EditorProjection" />
        </node>
        <node concept="2AHcQZ" id="7Y8B9wpm3jt" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7Y8B9wpd$4f" role="1B3o_S" />
    <node concept="3uibUv" id="7Y8B9wpd_1T" role="1zkMxy">
      <ref role="3uigEE" to="k3nr:~BaseNodeEditor" resolve="BaseNodeEditor" />
    </node>
  </node>
  <node concept="312cEu" id="7Y8B9wphSI6">
    <property role="TrG5h" value="ProjectionChooserComboBoxAction" />
    <node concept="2tJIrI" id="7Y8B9wphVhy" role="jymVt" />
    <node concept="312cEg" id="6uj73ErdN9O" role="jymVt">
      <property role="TrG5h" value="myEditor" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6uj73ErdKZg" role="1B3o_S" />
      <node concept="3uibUv" id="6uj73ErdNCW" role="1tU5fm">
        <ref role="3uigEE" node="7Y8B9wpd$4e" resolve="HeaderedNodeEditor" />
      </node>
    </node>
    <node concept="2tJIrI" id="6uj73ErdI0z" role="jymVt" />
    <node concept="3clFbW" id="6uj73ErdO3P" role="jymVt">
      <node concept="3cqZAl" id="6uj73ErdO3Q" role="3clF45" />
      <node concept="3Tm1VV" id="6uj73ErdO3R" role="1B3o_S" />
      <node concept="3clFbS" id="6uj73ErdO3T" role="3clF47">
        <node concept="3clFbF" id="6uj73ErdO3X" role="3cqZAp">
          <node concept="37vLTI" id="6uj73ErdO3Z" role="3clFbG">
            <node concept="37vLTw" id="6uj73ErdO46" role="37vLTx">
              <ref role="3cqZAo" node="6uj73ErdO3W" resolve="editor" />
            </node>
            <node concept="37vLTw" id="6uj73ErdPdu" role="37vLTJ">
              <ref role="3cqZAo" node="6uj73ErdN9O" resolve="myEditor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6uj73ErdO3W" role="3clF46">
        <property role="TrG5h" value="editor" />
        <node concept="3uibUv" id="6uj73ErdO3V" role="1tU5fm">
          <ref role="3uigEE" node="7Y8B9wpd$4e" resolve="HeaderedNodeEditor" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6uj73ErdOCu" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wppsZ6" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3Tm1VV" id="7Y8B9wppsZ7" role="1B3o_S" />
      <node concept="3cqZAl" id="7Y8B9wppsZ9" role="3clF45" />
      <node concept="37vLTG" id="7Y8B9wppsZa" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="7Y8B9wppsZb" role="1tU5fm">
          <ref role="3uigEE" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
        </node>
        <node concept="2AHcQZ" id="7Y8B9wppsZc" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="7Y8B9wppsZf" role="3clF47">
        <node concept="3cpWs8" id="6uj73ErdTUL" role="3cqZAp">
          <node concept="3cpWsn" id="6uj73ErdTUM" role="3cpWs9">
            <property role="TrG5h" value="presentation" />
            <node concept="3uibUv" id="6uj73ErdTK7" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~Presentation" resolve="Presentation" />
            </node>
            <node concept="2OqwBi" id="6uj73ErdTUN" role="33vP2m">
              <node concept="37vLTw" id="6uj73ErdTUO" role="2Oq$k0">
                <ref role="3cqZAo" node="7Y8B9wppsZa" resolve="e" />
              </node>
              <node concept="liA8E" id="6uj73ErdTUP" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Y8B9wppv$Q" role="3cqZAp">
          <node concept="2OqwBi" id="7Y8B9wppwAT" role="3clFbG">
            <node concept="37vLTw" id="6uj73ErdTUQ" role="2Oq$k0">
              <ref role="3cqZAo" node="6uj73ErdTUM" resolve="presentation" />
            </node>
            <node concept="liA8E" id="7Y8B9wppwSo" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
              <node concept="2OqwBi" id="7Y8B9wppI5R" role="37wK5m">
                <node concept="2OqwBi" id="7Y8B9wppHSe" role="2Oq$k0">
                  <node concept="37vLTw" id="6uj73ErdT$y" role="2Oq$k0">
                    <ref role="3cqZAo" node="6uj73ErdN9O" resolve="myEditor" />
                  </node>
                  <node concept="liA8E" id="7Y8B9wppHVR" role="2OqNvi">
                    <ref role="37wK5l" node="7Y8B9wppAu_" resolve="getCurrentProjection" />
                  </node>
                </node>
                <node concept="liA8E" id="7Y8B9wppIm7" role="2OqNvi">
                  <ref role="37wK5l" node="7Y8B9wplZF3" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7Y8B9wppsZg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpps_r" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wphVi6" role="jymVt">
      <property role="TrG5h" value="createPopupActionGroup" />
      <node concept="3Tmbuc" id="7Y8B9wphVi7" role="1B3o_S" />
      <node concept="2AHcQZ" id="7Y8B9wphVi9" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="7Y8B9wphVia" role="3clF45">
        <ref role="3uigEE" to="qkt:~DefaultActionGroup" resolve="DefaultActionGroup" />
      </node>
      <node concept="37vLTG" id="7Y8B9wphVib" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="7Y8B9wphVic" role="1tU5fm">
          <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="7Y8B9wphVid" role="3clF47">
        <node concept="3cpWs8" id="7Y8B9wpjz52" role="3cqZAp">
          <node concept="3cpWsn" id="7Y8B9wpjz53" role="3cpWs9">
            <property role="TrG5h" value="context" />
            <node concept="3uibUv" id="7Y8B9wpjz54" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~DataContext" resolve="DataContext" />
            </node>
            <node concept="2OqwBi" id="7Y8B9wpjzy9" role="33vP2m">
              <node concept="2YIFZM" id="7Y8B9wpjzKU" role="2Oq$k0">
                <ref role="1Pybhc" to="ddhc:~DataManager" resolve="DataManager" />
                <ref role="37wK5l" to="ddhc:~DataManager.getInstance()" resolve="getInstance" />
              </node>
              <node concept="liA8E" id="7Y8B9wpjzyb" role="2OqNvi">
                <ref role="37wK5l" to="ddhc:~DataManager.getDataContext(java.awt.Component)" resolve="getDataContext" />
                <node concept="37vLTw" id="7Y8B9wpj$mU" role="37wK5m">
                  <ref role="3cqZAo" node="7Y8B9wphVib" resolve="component" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Y8B9wpjpCH" role="3cqZAp">
          <node concept="3cpWsn" id="7Y8B9wpjpCI" role="3cpWs9">
            <property role="TrG5h" value="group" />
            <node concept="3uibUv" id="7Y8B9wpjpBe" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~DefaultActionGroup" resolve="DefaultActionGroup" />
            </node>
            <node concept="2ShNRf" id="7Y8B9wpjpCJ" role="33vP2m">
              <node concept="1pGfFk" id="7Y8B9wpjpCK" role="2ShVmc">
                <ref role="37wK5l" to="qkt:~DefaultActionGroup.&lt;init&gt;(com.intellij.openapi.actionSystem.AnAction...)" resolve="DefaultActionGroup" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Y8B9wpjAVR" role="3cqZAp">
          <node concept="3cpWsn" id="7Y8B9wpjAVS" role="3cpWs9">
            <property role="TrG5h" value="vf" />
            <node concept="3uibUv" id="7Y8B9wpjAUU" role="1tU5fm">
              <ref role="3uigEE" to="jlff:~VirtualFile" resolve="VirtualFile" />
            </node>
            <node concept="2OqwBi" id="7Y8B9wpjAVT" role="33vP2m">
              <node concept="37vLTw" id="7Y8B9wpjAVU" role="2Oq$k0">
                <ref role="3cqZAo" node="7Y8B9wpjz53" resolve="context" />
              </node>
              <node concept="liA8E" id="7Y8B9wpjAVV" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataContext.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                <node concept="10M0yZ" id="7Y8B9wpjAVW" role="37wK5m">
                  <ref role="1PxDUh" to="qkt:~LangDataKeys" resolve="LangDataKeys" />
                  <ref role="3cqZAo" to="qkt:~CommonDataKeys.VIRTUAL_FILE" resolve="VIRTUAL_FILE" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7Y8B9wpk0lv" role="3cqZAp">
          <node concept="3cpWsn" id="7Y8B9wpk0lw" role="3cpWs9">
            <property role="TrG5h" value="project" />
            <node concept="3uibUv" id="7Y8B9wpk5nO" role="1tU5fm">
              <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
            </node>
            <node concept="2OqwBi" id="7Y8B9wpk0ly" role="33vP2m">
              <node concept="37vLTw" id="7Y8B9wpk0lz" role="2Oq$k0">
                <ref role="3cqZAo" node="7Y8B9wpjz53" resolve="context" />
              </node>
              <node concept="liA8E" id="7Y8B9wpk0l$" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataContext.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                <node concept="10M0yZ" id="7Y8B9wpk54W" role="37wK5m">
                  <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
                  <ref role="1PxDUh" to="3s15:~MPSDataKeys" resolve="MPSDataKeys" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7Y8B9wpj_xN" role="3cqZAp" />
        <node concept="3clFbJ" id="7Y8B9wpjCg9" role="3cqZAp">
          <node concept="3clFbS" id="7Y8B9wpjCgb" role="3clFbx">
            <node concept="3clFbF" id="7Y8B9wpk1_D" role="3cqZAp">
              <node concept="2OqwBi" id="7Y8B9wpk2$E" role="3clFbG">
                <node concept="2OqwBi" id="7Y8B9wpk29g" role="2Oq$k0">
                  <node concept="37vLTw" id="7Y8B9wpk1_B" role="2Oq$k0">
                    <ref role="3cqZAo" node="7Y8B9wpk0lw" resolve="project" />
                  </node>
                  <node concept="liA8E" id="7Y8B9wpk2us" role="2OqNvi">
                    <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                  </node>
                </node>
                <node concept="liA8E" id="7Y8B9wpk2Jr" role="2OqNvi">
                  <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                  <node concept="1bVj0M" id="7Y8B9wpk2W2" role="37wK5m">
                    <node concept="3clFbS" id="7Y8B9wpk2W3" role="1bW5cS">
                      <node concept="3cpWs8" id="7Y8B9wpjFaO" role="3cqZAp">
                        <node concept="3cpWsn" id="7Y8B9wpjFaP" role="3cpWs9">
                          <property role="TrG5h" value="node" />
                          <property role="3TUv4t" value="true" />
                          <node concept="3uibUv" id="7Y8B9wpjFaQ" role="1tU5fm">
                            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                          </node>
                          <node concept="2OqwBi" id="7Y8B9wpjN1C" role="33vP2m">
                            <node concept="liA8E" id="7Y8B9wpjNHn" role="2OqNvi">
                              <ref role="37wK5l" to="kip1:~MPSNodeVirtualFile.getNode()" resolve="getNode" />
                            </node>
                            <node concept="1eOMI4" id="7Y8B9wpjNeY" role="2Oq$k0">
                              <node concept="10QFUN" id="7Y8B9wpjMic" role="1eOMHV">
                                <node concept="3uibUv" id="7Y8B9wpjM_a" role="10QFUM">
                                  <ref role="3uigEE" to="kip1:~MPSNodeVirtualFile" resolve="MPSNodeVirtualFile" />
                                </node>
                                <node concept="37vLTw" id="7Y8B9wpjFpn" role="10QFUP">
                                  <ref role="3cqZAo" node="7Y8B9wpjAVS" resolve="vf" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7Y8B9wpjNJ4" role="3cqZAp" />
                      <node concept="3cpWs8" id="7ii99HMlXmg" role="3cqZAp">
                        <node concept="3cpWsn" id="7ii99HMlXmh" role="3cpWs9">
                          <property role="TrG5h" value="controllers" />
                          <node concept="A3Dl8" id="7ii99HMlm1V" role="1tU5fm">
                            <node concept="3uibUv" id="7ii99HMm9cp" role="A3Ik2">
                              <ref role="3uigEE" node="7Y8B9wpj6Z6" resolve="EditorProjectionController" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7ii99HMm6Eq" role="33vP2m">
                            <node concept="2OqwBi" id="7ii99HMlZBu" role="2Oq$k0">
                              <node concept="2OqwBi" id="7ii99HMlXmi" role="2Oq$k0">
                                <node concept="2O5UvJ" id="7ii99HMlXmj" role="2Oq$k0">
                                  <ref role="2O5UnU" to="qvjh:7Y8B9wpjmV_" resolve="EditorProjectionControllerRegistry" />
                                </node>
                                <node concept="SfwO_" id="7ii99HMlXmk" role="2OqNvi" />
                              </node>
                              <node concept="3zZkjj" id="7ii99HMm0GA" role="2OqNvi">
                                <node concept="1bVj0M" id="7ii99HMm0GC" role="23t8la">
                                  <node concept="3clFbS" id="7ii99HMm0GD" role="1bW5cS">
                                    <node concept="3clFbF" id="7ii99HMm1gZ" role="3cqZAp">
                                      <node concept="2OqwBi" id="7ii99HMm1_T" role="3clFbG">
                                        <node concept="37vLTw" id="7ii99HMm1gY" role="2Oq$k0">
                                          <ref role="3cqZAo" node="7ii99HMm0GE" resolve="it" />
                                        </node>
                                        <node concept="liA8E" id="7ii99HMm25y" role="2OqNvi">
                                          <ref role="37wK5l" node="1kUX9T6krQz" resolve="isApplicable" />
                                          <node concept="37vLTw" id="7ii99HMm2BA" role="37wK5m">
                                            <ref role="3cqZAo" node="7Y8B9wpjFaP" resolve="node" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="Rh6nW" id="7ii99HMm0GE" role="1bW2Oz">
                                    <property role="TrG5h" value="it" />
                                    <node concept="2jxLKc" id="7ii99HMm0GF" role="1tU5fm" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3$u5V9" id="7ii99HMm76p" role="2OqNvi">
                              <node concept="1bVj0M" id="7ii99HMm76r" role="23t8la">
                                <node concept="3clFbS" id="7ii99HMm76s" role="1bW5cS">
                                  <node concept="3clFbF" id="7ii99HMm7ux" role="3cqZAp">
                                    <node concept="2OqwBi" id="7ii99HMm7E8" role="3clFbG">
                                      <node concept="37vLTw" id="7ii99HMm7uw" role="2Oq$k0">
                                        <ref role="3cqZAo" node="7ii99HMm76t" resolve="it" />
                                      </node>
                                      <node concept="liA8E" id="7ii99HMm7WT" role="2OqNvi">
                                        <ref role="37wK5l" node="7Y8B9wpl1Qt" resolve="create" />
                                        <node concept="37vLTw" id="7ii99HMm8tn" role="37wK5m">
                                          <ref role="3cqZAo" node="7Y8B9wpjFaP" resolve="node" />
                                        </node>
                                        <node concept="37vLTw" id="7ii99HMm8Vx" role="37wK5m">
                                          <ref role="3cqZAo" node="7Y8B9wpk0lw" resolve="project" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="Rh6nW" id="7ii99HMm76t" role="1bW2Oz">
                                  <property role="TrG5h" value="it" />
                                  <node concept="2jxLKc" id="7ii99HMm76u" role="1tU5fm" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7ii99HMlYUM" role="3cqZAp" />
                      <node concept="2Gpval" id="7Y8B9wpjpe6" role="3cqZAp">
                        <node concept="2GrKxI" id="7Y8B9wpjpe8" role="2Gsz3X">
                          <property role="TrG5h" value="controller" />
                        </node>
                        <node concept="37vLTw" id="7ii99HMlXml" role="2GsD0m">
                          <ref role="3cqZAo" node="7ii99HMlXmh" resolve="controllers" />
                        </node>
                        <node concept="3clFbS" id="7Y8B9wpjpec" role="2LFqv$">
                          <node concept="3clFbF" id="7ii99HMm4vD" role="3cqZAp">
                            <node concept="2OqwBi" id="7ii99HMm4XD" role="3clFbG">
                              <node concept="37vLTw" id="7ii99HMm4vC" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Y8B9wpjpCI" resolve="group" />
                              </node>
                              <node concept="liA8E" id="7ii99HMm5nw" role="2OqNvi">
                                <ref role="37wK5l" to="qkt:~DefaultActionGroup.addAll(java.util.Collection)" resolve="addAll" />
                                <node concept="2OqwBi" id="7ii99HMm6et" role="37wK5m">
                                  <node concept="2GrUjf" id="7ii99HMm5OO" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="7Y8B9wpjpe8" resolve="controller" />
                                  </node>
                                  <node concept="liA8E" id="7ii99HMma07" role="2OqNvi">
                                    <ref role="37wK5l" node="7ii99HMll1d" resolve="getChooseProjectionActions" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7ii99HMmbcP" role="3cqZAp">
                        <node concept="2OqwBi" id="7ii99HMmbRn" role="3clFbG">
                          <node concept="37vLTw" id="7ii99HMmbcN" role="2Oq$k0">
                            <ref role="3cqZAo" node="7Y8B9wpjpCI" resolve="group" />
                          </node>
                          <node concept="liA8E" id="7ii99HMmcqs" role="2OqNvi">
                            <ref role="37wK5l" to="qkt:~DefaultActionGroup.addSeparator()" resolve="addSeparator" />
                          </node>
                        </node>
                      </node>
                      <node concept="2Gpval" id="7ii99HMmcNJ" role="3cqZAp">
                        <node concept="2GrKxI" id="7ii99HMmcNK" role="2Gsz3X">
                          <property role="TrG5h" value="controller" />
                        </node>
                        <node concept="37vLTw" id="7ii99HMmcNL" role="2GsD0m">
                          <ref role="3cqZAo" node="7ii99HMlXmh" resolve="controllers" />
                        </node>
                        <node concept="3clFbS" id="7ii99HMmcNM" role="2LFqv$">
                          <node concept="3clFbF" id="7ii99HMmcNN" role="3cqZAp">
                            <node concept="2OqwBi" id="7ii99HMmcNO" role="3clFbG">
                              <node concept="37vLTw" id="7ii99HMmcNP" role="2Oq$k0">
                                <ref role="3cqZAo" node="7Y8B9wpjpCI" resolve="group" />
                              </node>
                              <node concept="liA8E" id="7ii99HMmcNQ" role="2OqNvi">
                                <ref role="37wK5l" to="qkt:~DefaultActionGroup.addAll(java.util.Collection)" resolve="addAll" />
                                <node concept="2OqwBi" id="7ii99HMmcNR" role="37wK5m">
                                  <node concept="2GrUjf" id="7ii99HMmcNS" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="7ii99HMmcNK" resolve="controller" />
                                  </node>
                                  <node concept="liA8E" id="7ii99HMmdfv" role="2OqNvi">
                                    <ref role="37wK5l" node="7ii99HMllxC" resolve="getCreateProjectionActions" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="7ii99HMmcAP" role="3cqZAp" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="7Y8B9wpnH7n" role="3clFbw">
            <node concept="2ZW3vV" id="7Y8B9wpjDtA" role="3uHU7w">
              <node concept="3uibUv" id="7Y8B9wpjEgZ" role="2ZW6by">
                <ref role="3uigEE" to="kip1:~MPSNodeVirtualFile" resolve="MPSNodeVirtualFile" />
              </node>
              <node concept="37vLTw" id="7Y8B9wpjC_g" role="2ZW6bz">
                <ref role="3cqZAo" node="7Y8B9wpjAVS" resolve="vf" />
              </node>
            </node>
            <node concept="3y3z36" id="7Y8B9wplWUC" role="3uHU7B">
              <node concept="10Nm6u" id="7Y8B9wplXed" role="3uHU7w" />
              <node concept="37vLTw" id="7Y8B9wplWsI" role="3uHU7B">
                <ref role="3cqZAo" node="7Y8B9wpk0lw" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Y8B9wphVvP" role="3cqZAp">
          <node concept="37vLTw" id="7Y8B9wpjpCL" role="3clFbG">
            <ref role="3cqZAo" node="7Y8B9wpjpCI" resolve="group" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7Y8B9wphVie" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wphVh$" role="jymVt" />
    <node concept="3Tm1VV" id="7Y8B9wphSI7" role="1B3o_S" />
    <node concept="3uibUv" id="7Y8B9wphVhj" role="1zkMxy">
      <ref role="3uigEE" to="8rsk:~ComboBoxAction" resolve="ComboBoxAction" />
    </node>
  </node>
  <node concept="3HP615" id="7Y8B9wpj6Z6">
    <property role="TrG5h" value="EditorProjectionController" />
    <node concept="2tJIrI" id="7Y8B9wpl7bt" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wplQVu" role="jymVt">
      <property role="TrG5h" value="getId" />
      <node concept="3clFbS" id="7Y8B9wplQVv" role="3clF47" />
      <node concept="3Tm1VV" id="7Y8B9wplQVw" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wplQVx" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="7Y8B9wplRo0" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wplQU9" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wpliPR" role="jymVt">
      <property role="TrG5h" value="createProjection" />
      <node concept="3clFbS" id="7Y8B9wpliPU" role="3clF47" />
      <node concept="3Tm1VV" id="7Y8B9wpliPV" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wpliP6" role="3clF45">
        <ref role="3uigEE" node="7Y8B9wpl75t" resolve="EditorProjection" />
      </node>
      <node concept="37vLTG" id="7Y8B9wplj1o" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="7Y8B9wplj1n" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="7Y8B9wplj2D" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7Y8B9wpmPpL" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wplbJE" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wpl7i_" role="jymVt">
      <property role="TrG5h" value="restoreProjection" />
      <node concept="3clFbS" id="7Y8B9wpl7iC" role="3clF47">
        <node concept="3clFbF" id="7Y8B9wplz4h" role="3cqZAp">
          <node concept="1rXfSq" id="7Y8B9wplz4g" role="3clFbG">
            <ref role="37wK5l" node="7Y8B9wpliPR" resolve="createProjection" />
            <node concept="37vLTw" id="7Y8B9wplzcc" role="37wK5m">
              <ref role="3cqZAo" node="7Y8B9wplyzJ" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Y8B9wpl7iD" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wpl7G2" role="3clF45">
        <ref role="3uigEE" node="7Y8B9wpl75t" resolve="EditorProjection" />
      </node>
      <node concept="37vLTG" id="7Y8B9wplyzJ" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="7Y8B9wplyzK" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="7Y8B9wplyzL" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="7Y8B9wpl7oO" role="3clF46">
        <property role="TrG5h" value="e" />
        <node concept="3uibUv" id="7Y8B9wpl7oN" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
        </node>
        <node concept="2AHcQZ" id="7Y8B9wpl87S" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2JFqV2" id="7Y8B9wplyM4" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="7ii99HMoitU" role="jymVt" />
    <node concept="3clFb_" id="7ii99HMoimL" role="jymVt">
      <property role="TrG5h" value="createDefaultProjection" />
      <node concept="3clFbS" id="7ii99HMoimO" role="3clF47">
        <node concept="3clFbF" id="7ii99HMoiMs" role="3cqZAp">
          <node concept="10Nm6u" id="7ii99HMoiMr" role="3clFbG" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7ii99HMoimP" role="1B3o_S" />
      <node concept="3uibUv" id="7ii99HMoikX" role="3clF45">
        <ref role="3uigEE" node="7Y8B9wpl75t" resolve="EditorProjection" />
      </node>
      <node concept="2AHcQZ" id="7ii99HMoivK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="2JFqV2" id="7ii99HMoiCB" role="2frcjj" />
    </node>
    <node concept="2tJIrI" id="7ii99HMlabf" role="jymVt" />
    <node concept="3clFb_" id="7ii99HMll1d" role="jymVt">
      <property role="TrG5h" value="getChooseProjectionActions" />
      <node concept="3clFbS" id="7ii99HMll1g" role="3clF47" />
      <node concept="3Tm1VV" id="7ii99HMll1h" role="1B3o_S" />
      <node concept="3uibUv" id="7ii99HMlkO4" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7ii99HMll12" role="11_B2D">
          <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ii99HMll6k" role="jymVt" />
    <node concept="3clFb_" id="7ii99HMllxC" role="jymVt">
      <property role="TrG5h" value="getCreateProjectionActions" />
      <node concept="3clFbS" id="7ii99HMllxF" role="3clF47" />
      <node concept="3Tm1VV" id="7ii99HMllxG" role="1B3o_S" />
      <node concept="3uibUv" id="7ii99HMllku" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7ii99HMllx$" role="11_B2D">
          <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpl1bo" role="jymVt" />
    <node concept="3HP615" id="7Y8B9wpl1pB" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Factory" />
      <node concept="2tJIrI" id="7Y8B9wpl1uo" role="jymVt" />
      <node concept="3clFb_" id="7Y8B9wpl1Ab" role="jymVt">
        <property role="TrG5h" value="getId" />
        <node concept="3clFbS" id="7Y8B9wpl1Ae" role="3clF47" />
        <node concept="3Tm1VV" id="7Y8B9wpl1Af" role="1B3o_S" />
        <node concept="3uibUv" id="7Y8B9wpl1_I" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="7Y8B9wplRqj" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2tJIrI" id="7Y8B9wpl1Bt" role="jymVt" />
      <node concept="3clFb_" id="7Y8B9wpl1Qt" role="jymVt">
        <property role="TrG5h" value="create" />
        <node concept="3clFbS" id="7Y8B9wpl1Qw" role="3clF47" />
        <node concept="3Tm1VV" id="7Y8B9wpl1Qx" role="1B3o_S" />
        <node concept="3uibUv" id="7Y8B9wpl1PS" role="3clF45">
          <ref role="3uigEE" node="7Y8B9wpj6Z6" resolve="EditorProjectionController" />
        </node>
        <node concept="37vLTG" id="7Y8B9wpl207" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="7Y8B9wpl206" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="2AHcQZ" id="7Y8B9wpl216" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="1vJkp1TW6YK" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="1vJkp1TW77Z" role="1tU5fm">
            <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
          </node>
          <node concept="2AHcQZ" id="1vJkp1TW7ap" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1kUX9T6krI0" role="jymVt" />
      <node concept="3clFb_" id="1kUX9T6krQz" role="jymVt">
        <property role="TrG5h" value="isApplicable" />
        <node concept="37vLTG" id="1kUX9T6krS$" role="3clF46">
          <property role="TrG5h" value="node" />
          <node concept="3uibUv" id="1kUX9T6krS_" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
          </node>
          <node concept="2AHcQZ" id="1kUX9T6krSA" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="1kUX9T6krQA" role="3clF47" />
        <node concept="3Tm1VV" id="1kUX9T6krQB" role="1B3o_S" />
        <node concept="10P_77" id="1kUX9T6krPW" role="3clF45" />
      </node>
      <node concept="3Tm1VV" id="7Y8B9wpl1pC" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="7Y8B9wpj6Z7" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="7Y8B9wpl75t">
    <property role="TrG5h" value="EditorProjection" />
    <node concept="2tJIrI" id="7Y8B9wplda3" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wplZF3" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3clFbS" id="7Y8B9wplZF6" role="3clF47" />
      <node concept="3Tm1VV" id="7Y8B9wplZF7" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wplZE_" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="7Y8B9wplZFK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wplZ$J" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wpo69t" role="jymVt">
      <property role="TrG5h" value="getInitialEditorHints" />
      <node concept="3clFbS" id="7Y8B9wpo69w" role="3clF47">
        <node concept="3clFbF" id="7Y8B9wpo6yz" role="3cqZAp">
          <node concept="2ShNRf" id="7Y8B9wpo6yx" role="3clFbG">
            <node concept="3$_iS1" id="7Y8B9wpo7JW" role="2ShVmc">
              <node concept="3$GHV9" id="7Y8B9wpo7JY" role="3$GQph">
                <node concept="3cmrfG" id="7Y8B9wpo7Qm" role="3$I4v7">
                  <property role="3cmrfH" value="0" />
                </node>
              </node>
              <node concept="17QB3L" id="7Y8B9wpo7D5" role="3$_nBY" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7Y8B9wpo69x" role="1B3o_S" />
      <node concept="10Q1$e" id="7Y8B9wpo68N" role="3clF45">
        <node concept="3uibUv" id="7Y8B9wpo68J" role="10Q1$1">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7Y8B9wpo6az" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpoaZ$" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wpoafk" role="jymVt">
      <property role="TrG5h" value="createHeaderComponent" />
      <node concept="3clFbS" id="7Y8B9wpoafn" role="3clF47" />
      <node concept="3Tm1VV" id="7Y8B9wpoafo" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wpoael" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2AHcQZ" id="7Y8B9wpoahy" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpo63c" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wplRkB" role="jymVt">
      <property role="TrG5h" value="getController" />
      <node concept="3clFbS" id="7Y8B9wplRkE" role="3clF47" />
      <node concept="3Tm1VV" id="7Y8B9wplRkF" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wplRkf" role="3clF45">
        <ref role="3uigEE" node="7Y8B9wpj6Z6" resolve="EditorProjectionController" />
      </node>
      <node concept="2AHcQZ" id="7Y8B9wplRle" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wplQZh" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wpldCL" role="jymVt">
      <property role="TrG5h" value="saveState" />
      <node concept="3clFbS" id="7Y8B9wpldCO" role="3clF47" />
      <node concept="3Tm1VV" id="7Y8B9wpldCP" role="1B3o_S" />
      <node concept="3cqZAl" id="7Y8B9wpldCy" role="3clF45" />
      <node concept="37vLTG" id="7Y8B9wpldIt" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="3uibUv" id="7Y8B9wpldIs" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
        </node>
        <node concept="2AHcQZ" id="7Y8B9wpldJD" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7Y8B9wpl75u" role="1B3o_S" />
    <node concept="3uibUv" id="7Y8B9wpohsU" role="3HQHJm">
      <ref role="3uigEE" to="qkt:~DataProvider" resolve="DataProvider" />
    </node>
  </node>
  <node concept="312cEu" id="7Y8B9wpmJ8m">
    <property role="TrG5h" value="SimpleEditorProjection" />
    <node concept="2tJIrI" id="7Y8B9wpmJ90" role="jymVt" />
    <node concept="312cEg" id="7Y8B9wpmJpt" role="jymVt">
      <property role="TrG5h" value="myName" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Y8B9wpmJpi" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3Tmbuc" id="1vJkp1TX5Pm" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="7Y8B9wpmLja" role="jymVt">
      <property role="TrG5h" value="myController" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Y8B9wpmLge" role="1tU5fm">
        <ref role="3uigEE" node="7Y8B9wpj6Z6" resolve="EditorProjectionController" />
      </node>
      <node concept="3Tmbuc" id="1vJkp1TX5Hr" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="1QSEqLhAhx5" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="1vJkp1TX5$X" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhAhrm" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="312cEg" id="7ii99HMnhRO" role="jymVt">
      <property role="TrG5h" value="myHints" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="7ii99HMnh9$" role="1B3o_S" />
      <node concept="10Q1$e" id="7ii99HMnhLa" role="1tU5fm">
        <node concept="17QB3L" id="7ii99HMnhE_" role="10Q1$1" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpmJpJ" role="jymVt" />
    <node concept="3Tm1VV" id="7Y8B9wpmJ8n" role="1B3o_S" />
    <node concept="3clFbW" id="7Y8B9wpmJqb" role="jymVt">
      <node concept="3cqZAl" id="7Y8B9wpmJqc" role="3clF45" />
      <node concept="3Tm1VV" id="7Y8B9wpmJqd" role="1B3o_S" />
      <node concept="3clFbS" id="7Y8B9wpmJqf" role="3clF47">
        <node concept="3clFbF" id="7Y8B9wpmM1g" role="3cqZAp">
          <node concept="37vLTI" id="7Y8B9wpmMih" role="3clFbG">
            <node concept="37vLTw" id="7Y8B9wpmMHg" role="37vLTx">
              <ref role="3cqZAo" node="7Y8B9wpmKvU" resolve="controller" />
            </node>
            <node concept="37vLTw" id="7Y8B9wpmM1e" role="37vLTJ">
              <ref role="3cqZAo" node="7Y8B9wpmLja" resolve="myController" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7Y8B9wpmJqj" role="3cqZAp">
          <node concept="37vLTI" id="7Y8B9wpmJql" role="3clFbG">
            <node concept="37vLTw" id="7Y8B9wpmJqs" role="37vLTx">
              <ref role="3cqZAo" node="7Y8B9wpmJqi" resolve="name" />
            </node>
            <node concept="37vLTw" id="7Y8B9wpmJDS" role="37vLTJ">
              <ref role="3cqZAo" node="7Y8B9wpmJpt" resolve="myName" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QSEqLhAhTD" role="3cqZAp">
          <node concept="37vLTI" id="1QSEqLhAink" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLhAiP7" role="37vLTx">
              <ref role="3cqZAo" node="1QSEqLhAgim" resolve="node" />
            </node>
            <node concept="37vLTw" id="1QSEqLhAhTB" role="37vLTJ">
              <ref role="3cqZAo" node="1QSEqLhAhx5" resolve="myNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ii99HMniNF" role="3cqZAp">
          <node concept="37vLTI" id="7ii99HMnjey" role="3clFbG">
            <node concept="2OqwBi" id="7ii99HMnjN8" role="37vLTx">
              <node concept="37vLTw" id="7ii99HMnjqP" role="2Oq$k0">
                <ref role="3cqZAo" node="7ii99HMni4s" resolve="hints" />
              </node>
              <node concept="2SEQ$1" id="7ii99HMnk0N" role="2OqNvi" />
            </node>
            <node concept="37vLTw" id="7ii99HMniND" role="37vLTJ">
              <ref role="3cqZAo" node="7ii99HMnhRO" resolve="myHints" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="1QSEqLhAgim" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="1QSEqLhAgwH" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="7Y8B9wpmKvU" role="3clF46">
        <property role="TrG5h" value="controller" />
        <node concept="3uibUv" id="7Y8B9wpmLvf" role="1tU5fm">
          <ref role="3uigEE" node="7Y8B9wpj6Z6" resolve="EditorProjectionController" />
        </node>
      </node>
      <node concept="37vLTG" id="7Y8B9wpmJqi" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="7Y8B9wpmJqh" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="7ii99HMni4s" role="3clF46">
        <property role="TrG5h" value="hints" />
        <node concept="10Q1$e" id="7ii99HMnitL" role="1tU5fm">
          <node concept="17QB3L" id="7ii99HMnimJ" role="10Q1$1" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpmJJq" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wpmJOg" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="7Y8B9wpmJOi" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wpmJOj" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="7Y8B9wpmJOk" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="7Y8B9wpmJOl" role="3clF47">
        <node concept="3clFbF" id="7Y8B9wpmKnw" role="3cqZAp">
          <node concept="37vLTw" id="7Y8B9wpmKnt" role="3clFbG">
            <ref role="3cqZAo" node="7Y8B9wpmJpt" resolve="myName" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7Y8B9wpmJOm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpmKrC" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wpobW3" role="jymVt">
      <property role="TrG5h" value="createHeaderComponent" />
      <node concept="3Tm1VV" id="7Y8B9wpobW5" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wpobW6" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="2AHcQZ" id="7Y8B9wpobW7" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="7Y8B9wpobW8" role="3clF47">
        <node concept="3clFbF" id="1QSEqLhAjhH" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLhASdy" role="3clFbG">
            <node concept="2ShNRf" id="1QSEqLhAjhF" role="2Oq$k0">
              <node concept="1pGfFk" id="1QSEqLhAkME" role="2ShVmc">
                <ref role="37wK5l" node="1QSEqLh$ahC" resolve="DefaultHeaderComponentProvider" />
                <node concept="37vLTw" id="1QSEqLhAkYt" role="37wK5m">
                  <ref role="3cqZAo" node="1QSEqLhAhx5" resolve="myNode" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1QSEqLhASvr" role="2OqNvi">
              <ref role="37wK5l" node="1QSEqLh_WCu" resolve="getComponent" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7Y8B9wpobW9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpobD$" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wpmJOp" role="jymVt">
      <property role="TrG5h" value="getController" />
      <node concept="3Tm1VV" id="7Y8B9wpmJOr" role="1B3o_S" />
      <node concept="3uibUv" id="7Y8B9wpmJOs" role="3clF45">
        <ref role="3uigEE" node="7Y8B9wpj6Z6" resolve="EditorProjectionController" />
      </node>
      <node concept="2AHcQZ" id="7Y8B9wpmJOt" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="7Y8B9wpmJOu" role="3clF47">
        <node concept="3clFbF" id="7Y8B9wpmNg8" role="3cqZAp">
          <node concept="37vLTw" id="7Y8B9wpmNg5" role="3clFbG">
            <ref role="3cqZAo" node="7Y8B9wpmLja" resolve="myController" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7Y8B9wpmJOv" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpmNk8" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wpmJOy" role="jymVt">
      <property role="TrG5h" value="saveState" />
      <node concept="3Tm1VV" id="7Y8B9wpmJO$" role="1B3o_S" />
      <node concept="3cqZAl" id="7Y8B9wpmJO_" role="3clF45" />
      <node concept="37vLTG" id="7Y8B9wpmJOA" role="3clF46">
        <property role="TrG5h" value="element" />
        <node concept="3uibUv" id="7Y8B9wpmJOB" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
        </node>
        <node concept="2AHcQZ" id="7Y8B9wpmJOC" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="7Y8B9wpmJOD" role="3clF47" />
      <node concept="2AHcQZ" id="7Y8B9wpmJOE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpoggF" role="jymVt" />
    <node concept="3uibUv" id="7Y8B9wpmJMw" role="EKbjA">
      <ref role="3uigEE" node="7Y8B9wpl75t" resolve="EditorProjection" />
    </node>
    <node concept="3clFb_" id="7Y8B9wpoeir" role="jymVt">
      <property role="TrG5h" value="getInitialEditorHints" />
      <node concept="3Tm1VV" id="7Y8B9wpoeiz" role="1B3o_S" />
      <node concept="10Q1$e" id="7Y8B9wpoei$" role="3clF45">
        <node concept="3uibUv" id="7Y8B9wpoei_" role="10Q1$1">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7Y8B9wpoeiA" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="7Y8B9wpoeiB" role="3clF47">
        <node concept="3clFbF" id="7ii99HMnkAZ" role="3cqZAp">
          <node concept="37vLTw" id="7ii99HMnkAS" role="3clFbG">
            <ref role="3cqZAo" node="7ii99HMnhRO" resolve="myHints" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7Y8B9wpoeiC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7Y8B9wpogE0" role="jymVt" />
    <node concept="3clFb_" id="7Y8B9wpoeiD" role="jymVt">
      <property role="TrG5h" value="getData" />
      <node concept="3Tm1VV" id="7Y8B9wpoeiE" role="1B3o_S" />
      <node concept="2AHcQZ" id="7Y8B9wpoeiG" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="7Y8B9wpoeiH" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="37vLTG" id="7Y8B9wpoeiI" role="3clF46">
        <property role="TrG5h" value="string" />
        <node concept="3uibUv" id="7Y8B9wpoeiJ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="7Y8B9wpoeiK" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="2AHcQZ" id="7Y8B9wpoeiL" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
        </node>
      </node>
      <node concept="3clFbS" id="7Y8B9wpoeiN" role="3clF47">
        <node concept="3clFbF" id="7Y8B9wpoeiQ" role="3cqZAp">
          <node concept="10Nm6u" id="7Y8B9wpoeiP" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7Y8B9wpoeiO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7Y8B9wpne4m">
    <property role="TrG5h" value="HeaderedEditorDataKeys" />
    <node concept="2tJIrI" id="7Y8B9wpne5M" role="jymVt" />
    <node concept="Wx3nA" id="7Y8B9wpnhj$" role="jymVt">
      <property role="TrG5h" value="EDITOR" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7Y8B9wpnhjA" role="1tU5fm">
        <ref role="3uigEE" to="qkt:~DataKey" resolve="DataKey" />
        <node concept="3uibUv" id="7Y8B9wpnhjB" role="11_B2D">
          <ref role="3uigEE" node="7Y8B9wpd$4e" resolve="HeaderedNodeEditor" />
        </node>
      </node>
      <node concept="2YIFZM" id="7Y8B9wpnjks" role="33vP2m">
        <ref role="37wK5l" to="qkt:~DataKey.create(java.lang.String)" resolve="create" />
        <ref role="1Pybhc" to="qkt:~DataKey" resolve="DataKey" />
        <node concept="Xl_RD" id="7Y8B9wpnj1K" role="37wK5m">
          <property role="Xl_RC" value="headered-editor" />
        </node>
        <node concept="3uibUv" id="7Y8B9wpnjyg" role="3PaCim">
          <ref role="3uigEE" node="7Y8B9wpd$4e" resolve="HeaderedNodeEditor" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7Y8B9wpnhjD" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="7Y8B9wpne4n" role="1B3o_S" />
    <node concept="3uibUv" id="3vwudsmY8t3" role="1zkMxy">
      <ref role="3uigEE" to="qkt:~CommonDataKeys" resolve="CommonDataKeys" />
    </node>
  </node>
  <node concept="312cEu" id="1QSEqLhzVOM">
    <property role="TrG5h" value="DefaultHeaderComponentProvider" />
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
    <node concept="312cEg" id="1QSEqLh_zxs" role="jymVt">
      <property role="TrG5h" value="myNameLabel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1QSEqLh_yP2" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLh_zpj" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JLabel" resolve="JLabel" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLh$UZF" role="jymVt" />
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
                <ref role="37wK5l" to="exr9:~EditorSettings.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="exr9:~EditorSettings" resolve="EditorSettings" />
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
                <ref role="3cqZAo" to="ewej:~TextAttribute.POSTURE_OBLIQUE" resolve="POSTURE_OBLIQUE" />
                <ref role="1PxDUh" to="ewej:~TextAttribute" resolve="TextAttribute" />
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
                <ref role="3cqZAo" to="exr9:~MPSColors.DARK_GREEN" resolve="DARK_GREEN" />
                <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
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
        <node concept="3clFbF" id="1QSEqLh_$Mt" role="3cqZAp">
          <node concept="37vLTI" id="1QSEqLh__Dn" role="3clFbG">
            <node concept="2ShNRf" id="1QSEqLh_Apj" role="37vLTx">
              <node concept="1pGfFk" id="1QSEqLh_Ajv" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                <node concept="2OqwBi" id="1QSEqLh_B7m" role="37wK5m">
                  <node concept="37vLTw" id="1QSEqLh_ANw" role="2Oq$k0">
                    <ref role="3cqZAo" node="1QSEqLh$ahJ" resolve="baseNode" />
                  </node>
                  <node concept="liA8E" id="1QSEqLh_Cce" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="1QSEqLh_$Mr" role="37vLTJ">
              <ref role="3cqZAo" node="1QSEqLh_zxs" resolve="myNameLabel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QSEqLh_Cvp" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLh_Dnn" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLh_Cvn" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLh_zxs" resolve="myNameLabel" />
            </node>
            <node concept="liA8E" id="1QSEqLh_Eew" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JComponent.setFont(java.awt.Font)" resolve="setFont" />
              <node concept="37vLTw" id="1QSEqLhCnqx" role="37wK5m">
                <ref role="3cqZAo" node="1QSEqLh_lqE" resolve="defaultFont" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1QSEqLh_F1P" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLh_F1Q" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLh_F1R" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLh$gJY" resolve="myComponent" />
            </node>
            <node concept="liA8E" id="1QSEqLh_F1S" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component)" resolve="add" />
              <node concept="37vLTw" id="1QSEqLh_FZX" role="37wK5m">
                <ref role="3cqZAo" node="1QSEqLh_zxs" resolve="myNameLabel" />
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
    <node concept="2tJIrI" id="1QSEqLh$9XD" role="jymVt" />
    <node concept="312cEu" id="1QSEqLhzZlQ" role="jymVt">
      <property role="TrG5h" value="MyNameListener" />
      <property role="2bfB8j" value="true" />
      <node concept="3Tm6S6" id="1QSEqLhzZlR" role="1B3o_S" />
      <node concept="3uibUv" id="1QSEqLhzZlS" role="1zkMxy">
        <ref role="3uigEE" to="mhbf:~SNodeChangeListenerAdapter" resolve="SNodeChangeListenerAdapter" />
      </node>
      <node concept="312cEg" id="1QSEqLhzZlT" role="jymVt">
        <property role="TrG5h" value="myLastAttachModel" />
        <node concept="3uibUv" id="1QSEqLhzZlV" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
        <node concept="3Tm6S6" id="1QSEqLhzZlW" role="1B3o_S" />
      </node>
      <node concept="3clFb_" id="1QSEqLhzZlX" role="jymVt">
        <property role="TrG5h" value="attach" />
        <property role="od$2w" value="true" />
        <node concept="37vLTG" id="1QSEqLhzZlY" role="3clF46">
          <property role="TrG5h" value="model" />
          <node concept="2AHcQZ" id="1QSEqLhzZlZ" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
          <node concept="3uibUv" id="1QSEqLhzZm0" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
          </node>
        </node>
        <node concept="3clFbS" id="1QSEqLhzZm1" role="3clF47">
          <node concept="3clFbF" id="1QSEqLhzZm2" role="3cqZAp">
            <node concept="1rXfSq" id="1QSEqLhzZm3" role="3clFbG">
              <ref role="37wK5l" node="1QSEqLhzZmi" resolve="detach" />
            </node>
          </node>
          <node concept="3clFbF" id="1QSEqLhzZm4" role="3cqZAp">
            <node concept="37vLTI" id="1QSEqLhzZm5" role="3clFbG">
              <node concept="37vLTw" id="1QSEqLhzZm6" role="37vLTJ">
                <ref role="3cqZAo" node="1QSEqLhzZlT" resolve="myLastAttachModel" />
              </node>
              <node concept="37vLTw" id="1QSEqLhzZm7" role="37vLTx">
                <ref role="3cqZAo" node="1QSEqLhzZlY" resolve="model" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="1QSEqLhzZm8" role="3cqZAp">
            <node concept="3y3z36" id="1QSEqLhzZm9" role="3clFbw">
              <node concept="37vLTw" id="1QSEqLhzZma" role="3uHU7B">
                <ref role="3cqZAo" node="1QSEqLhzZlY" resolve="model" />
              </node>
              <node concept="10Nm6u" id="1QSEqLhzZmb" role="3uHU7w" />
            </node>
            <node concept="3clFbS" id="1QSEqLhzZmd" role="3clFbx">
              <node concept="3clFbF" id="1QSEqLhzZme" role="3cqZAp">
                <node concept="2OqwBi" id="1QSEqLhzZyR" role="3clFbG">
                  <node concept="37vLTw" id="1QSEqLhzZyQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="1QSEqLhzZlY" resolve="model" />
                  </node>
                  <node concept="liA8E" id="1QSEqLhzZyS" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.addChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="addChangeListener" />
                    <node concept="Xjq3P" id="1QSEqLhzZyT" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="1QSEqLhzZmh" role="3clF45" />
      </node>
      <node concept="3clFb_" id="1QSEqLhzZmi" role="jymVt">
        <property role="TrG5h" value="detach" />
        <property role="od$2w" value="true" />
        <node concept="3clFbS" id="1QSEqLhzZmj" role="3clF47">
          <node concept="3clFbJ" id="1QSEqLhzZmk" role="3cqZAp">
            <node concept="3y3z36" id="1QSEqLhzZml" role="3clFbw">
              <node concept="37vLTw" id="1QSEqLhzZmm" role="3uHU7B">
                <ref role="3cqZAo" node="1QSEqLhzZlT" resolve="myLastAttachModel" />
              </node>
              <node concept="10Nm6u" id="1QSEqLhzZmn" role="3uHU7w" />
            </node>
            <node concept="3clFbS" id="1QSEqLhzZmp" role="3clFbx">
              <node concept="3clFbF" id="1QSEqLhzZmq" role="3cqZAp">
                <node concept="2OqwBi" id="1QSEqLhzZwG" role="3clFbG">
                  <node concept="37vLTw" id="1QSEqLhzZwF" role="2Oq$k0">
                    <ref role="3cqZAo" node="1QSEqLhzZlT" resolve="myLastAttachModel" />
                  </node>
                  <node concept="liA8E" id="1QSEqLhzZwH" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.removeChangeListener(org.jetbrains.mps.openapi.model.SNodeChangeListener)" resolve="removeChangeListener" />
                    <node concept="Xjq3P" id="1QSEqLhzZwI" role="37wK5m" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1QSEqLhzZmt" role="3cqZAp">
                <node concept="37vLTI" id="1QSEqLhzZmu" role="3clFbG">
                  <node concept="37vLTw" id="1QSEqLhzZmv" role="37vLTJ">
                    <ref role="3cqZAo" node="1QSEqLhzZlT" resolve="myLastAttachModel" />
                  </node>
                  <node concept="10Nm6u" id="1QSEqLhzZmw" role="37vLTx" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cqZAl" id="1QSEqLhzZmx" role="3clF45" />
      </node>
      <node concept="3clFb_" id="1QSEqLhzZmy" role="jymVt">
        <property role="TrG5h" value="propertyChanged" />
        <node concept="2AHcQZ" id="1QSEqLhzZmz" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="37vLTG" id="1QSEqLhzZm$" role="3clF46">
          <property role="TrG5h" value="event" />
          <node concept="2AHcQZ" id="1QSEqLhzZm_" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
          <node concept="3uibUv" id="1QSEqLh$0cm" role="1tU5fm">
            <ref role="3uigEE" to="cmfw:~SPropertyChangeEvent" resolve="SPropertyChangeEvent" />
          </node>
        </node>
        <node concept="3clFbS" id="1QSEqLhzZmB" role="3clF47">
          <node concept="3clFbJ" id="1QSEqLhzZmC" role="3cqZAp">
            <node concept="1Wc70l" id="1QSEqLhzZmD" role="3clFbw">
              <node concept="17R0WA" id="1QSEqLh$3K1" role="3uHU7B">
                <node concept="355D3s" id="1QSEqLh$2dl" role="3uHU7B">
                  <ref role="355D3t" to="tpck:h0TrEE$" resolve="INamedConcept" />
                  <ref role="355D3u" to="tpck:h0TrG11" resolve="name" />
                </node>
                <node concept="2OqwBi" id="1QSEqLhzZ$a" role="3uHU7w">
                  <node concept="37vLTw" id="1QSEqLhzZ$b" role="2Oq$k0">
                    <ref role="3cqZAo" node="1QSEqLhzZm$" resolve="event" />
                  </node>
                  <node concept="liA8E" id="1QSEqLh$35e" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SPropertyChangeEvent.getProperty()" resolve="getProperty" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="1QSEqLh$d8Z" role="3uHU7w">
                <node concept="2OqwBi" id="1QSEqLhzZ_z" role="3uHU7B">
                  <node concept="37vLTw" id="1QSEqLhzZ_y" role="2Oq$k0">
                    <ref role="3cqZAo" node="1QSEqLhzZm$" resolve="event" />
                  </node>
                  <node concept="liA8E" id="1QSEqLhzZ_$" role="2OqNvi">
                    <ref role="37wK5l" to="cmfw:~SPropertyChangeEvent.getNode()" resolve="getNode" />
                  </node>
                </node>
                <node concept="37vLTw" id="1QSEqLh$cWc" role="3uHU7w">
                  <ref role="3cqZAo" node="1QSEqLh$8De" resolve="myBaseNode" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1QSEqLhzZmN" role="3clFbx">
              <node concept="3clFbF" id="1QSEqLhzZmO" role="3cqZAp">
                <node concept="1rXfSq" id="1QSEqLhzZmP" role="3clFbG">
                  <ref role="37wK5l" node="1QSEqLh$eOd" resolve="updateProperties" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="1QSEqLhzZmQ" role="1B3o_S" />
        <node concept="3cqZAl" id="1QSEqLhzZmR" role="3clF45" />
      </node>
    </node>
    <node concept="2tJIrI" id="1QSEqLh$dQd" role="jymVt" />
    <node concept="3clFb_" id="1QSEqLh$eOd" role="jymVt">
      <property role="TrG5h" value="updateProperties" />
      <node concept="3clFbS" id="1QSEqLh$eOg" role="3clF47">
        <node concept="3clFbF" id="1QSEqLh_H53" role="3cqZAp">
          <node concept="2OqwBi" id="1QSEqLh_Hk9" role="3clFbG">
            <node concept="37vLTw" id="1QSEqLh_H52" role="2Oq$k0">
              <ref role="3cqZAo" node="1QSEqLh_zxs" resolve="myNameLabel" />
            </node>
            <node concept="liA8E" id="1QSEqLh_H_Y" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~JLabel.setText(java.lang.String)" resolve="setText" />
              <node concept="2OqwBi" id="1QSEqLh_IeT" role="37wK5m">
                <node concept="37vLTw" id="1QSEqLh_HPB" role="2Oq$k0">
                  <ref role="3cqZAo" node="1QSEqLh$8De" resolve="myBaseNode" />
                </node>
                <node concept="liA8E" id="1QSEqLh_Iw7" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1QSEqLh$es5" role="1B3o_S" />
      <node concept="3cqZAl" id="1QSEqLh$f7r" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="1QSEqLhzVON" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2hWn4IdUWjD">
    <property role="TrG5h" value="ProjectEditorSpecs" />
    <node concept="2tJIrI" id="1vJkp1TOt_l" role="jymVt" />
    <node concept="312cEg" id="1vJkp1TO_h5" role="jymVt">
      <property role="TrG5h" value="myOptions" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="1vJkp1TO$nG" role="1B3o_S" />
      <node concept="3uibUv" id="1vJkp1TO_gf" role="1tU5fm">
        <ref role="3uigEE" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
      </node>
      <node concept="2YIFZM" id="1vJkp1TOCua" role="33vP2m">
        <ref role="37wK5l" to="tqvn:~TempModuleOptions.nonReloadableModule()" resolve="nonReloadableModule" />
        <ref role="1Pybhc" to="tqvn:~TempModuleOptions" resolve="TempModuleOptions" />
      </node>
    </node>
    <node concept="312cEg" id="2hWn4IdV1EG" role="jymVt">
      <property role="TrG5h" value="myProject" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2hWn4IdUZJX" role="1B3o_S" />
      <node concept="3uibUv" id="2hWn4IdV1JX" role="1tU5fm">
        <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
      </node>
    </node>
    <node concept="312cEg" id="2hWn4IdV2aU" role="jymVt">
      <property role="TrG5h" value="myModel" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2hWn4IdV1Z9" role="1B3o_S" />
      <node concept="3uibUv" id="5sOEwwEEcq5" role="1tU5fm">
        <ref role="3uigEE" to="g3l6:~SModelBase" resolve="SModelBase" />
      </node>
    </node>
    <node concept="2tJIrI" id="1vJkp1TOMZ7" role="jymVt" />
    <node concept="312cEg" id="2hWn4IdWf_S" role="jymVt">
      <property role="TrG5h" value="mySpecMap" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2hWn4IdW9Pt" role="1B3o_S" />
      <node concept="3rvAFt" id="2hWn4IdWaDn" role="1tU5fm">
        <node concept="1LlUBW" id="2hWn4IdWaIN" role="3rvQeY">
          <node concept="3Tqbb2" id="2hWn4IdWaY1" role="1Lm7xW" />
          <node concept="17QB3L" id="2hWn4IdWdDm" role="1Lm7xW" />
        </node>
        <node concept="3Tqbb2" id="2hWn4IdWg1D" role="3rvSg0">
          <ref role="ehGHo" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
        </node>
      </node>
      <node concept="2ShNRf" id="2hWn4IdWg9h" role="33vP2m">
        <node concept="1u7pXE" id="2hWn4IdWyu2" role="2ShVmc">
          <ref role="1u7pXB" to="z8iw:3TJnG96iD$S" resolve="weakHashMap" />
          <node concept="1LlUBW" id="2hWn4IdWyu4" role="3rHrn6">
            <node concept="3Tqbb2" id="2hWn4IdWyu5" role="1Lm7xW" />
            <node concept="17QB3L" id="2hWn4IdWyu6" role="1Lm7xW" />
          </node>
          <node concept="3Tqbb2" id="2hWn4IdWyu7" role="3rHtpV">
            <ref role="ehGHo" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2hWn4IdWzKD" role="jymVt" />
    <node concept="Wx3nA" id="2hWn4IdWDIx" role="jymVt">
      <property role="TrG5h" value="ourInstances" />
      <property role="3TUv4t" value="true" />
      <node concept="3rvAFt" id="2hWn4IdWDIC" role="1tU5fm">
        <node concept="3uibUv" id="2hWn4IdWDID" role="3rvQeY">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
        <node concept="3uibUv" id="2hWn4IdWDIE" role="3rvSg0">
          <ref role="3uigEE" node="2hWn4IdUWjD" resolve="ProjectEditorSpecs" />
        </node>
      </node>
      <node concept="2ShNRf" id="2hWn4IdWDI$" role="33vP2m">
        <node concept="3rGOSV" id="2hWn4IdWDI_" role="2ShVmc">
          <node concept="3uibUv" id="2hWn4IdWDIA" role="3rHrn6">
            <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
          </node>
          <node concept="3uibUv" id="2hWn4IdWDIB" role="3rHtpV">
            <ref role="3uigEE" node="2hWn4IdUWjD" resolve="ProjectEditorSpecs" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2hWn4IdWDIz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2hWn4IdWBGp" role="jymVt" />
    <node concept="2YIFZL" id="2hWn4IdWCPe" role="jymVt">
      <property role="TrG5h" value="install" />
      <node concept="37vLTG" id="2hWn4IdWDim" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2hWn4IdWDin" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="2hWn4IdWCPh" role="3clF47">
        <node concept="3clFbF" id="2hWn4IdWEmM" role="3cqZAp">
          <node concept="37vLTI" id="2hWn4IdWFb0" role="3clFbG">
            <node concept="2ShNRf" id="2hWn4IdWFpQ" role="37vLTx">
              <node concept="1pGfFk" id="2hWn4IdWFjQ" role="2ShVmc">
                <ref role="37wK5l" node="2hWn4IdV1KA" resolve="ProjectEditorSpecs" />
                <node concept="37vLTw" id="2hWn4IdWF_w" role="37wK5m">
                  <ref role="3cqZAo" node="2hWn4IdWDim" resolve="project" />
                </node>
              </node>
            </node>
            <node concept="3EllGN" id="2hWn4IdWEMr" role="37vLTJ">
              <node concept="37vLTw" id="2hWn4IdWEV5" role="3ElVtu">
                <ref role="3cqZAo" node="2hWn4IdWDim" resolve="project" />
              </node>
              <node concept="37vLTw" id="2hWn4IdWEmL" role="3ElQJh">
                <ref role="3cqZAo" node="2hWn4IdWDIx" resolve="ourInstances" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2hWn4IdWCh9" role="1B3o_S" />
      <node concept="3cqZAl" id="2hWn4IdWCOL" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2hWn4IdWFAH" role="jymVt">
      <property role="TrG5h" value="uninstall" />
      <node concept="37vLTG" id="2hWn4IdWFAI" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2hWn4IdWFAJ" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="2hWn4IdWFAK" role="3clF47">
        <node concept="3clFbF" id="2hWn4IdWFAL" role="3cqZAp">
          <node concept="2OqwBi" id="2hWn4IdWGLT" role="3clFbG">
            <node concept="37vLTw" id="2hWn4IdWFAS" role="2Oq$k0">
              <ref role="3cqZAo" node="2hWn4IdWDIx" resolve="ourInstances" />
            </node>
            <node concept="kI3uX" id="2hWn4IdWHpm" role="2OqNvi">
              <node concept="37vLTw" id="2hWn4IdWHxo" role="kIiFs">
                <ref role="3cqZAo" node="2hWn4IdWFAI" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2hWn4IdWFAT" role="1B3o_S" />
      <node concept="3cqZAl" id="2hWn4IdWFAU" role="3clF45" />
    </node>
    <node concept="2YIFZL" id="2hWn4IdWIEf" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="37vLTG" id="2hWn4IdWJkg" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2hWn4IdWJkh" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="3clFbS" id="2hWn4IdWIEi" role="3clF47">
        <node concept="3clFbF" id="2hWn4IdWJr1" role="3cqZAp">
          <node concept="3EllGN" id="2hWn4IdWJr3" role="3clFbG">
            <node concept="37vLTw" id="2hWn4IdWJr4" role="3ElVtu">
              <ref role="3cqZAo" node="2hWn4IdWJkg" resolve="project" />
            </node>
            <node concept="37vLTw" id="2hWn4IdWJr9" role="3ElQJh">
              <ref role="3cqZAo" node="2hWn4IdWDIx" resolve="ourInstances" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2hWn4IdWI6q" role="1B3o_S" />
      <node concept="3uibUv" id="2hWn4IdWJjt" role="3clF45">
        <ref role="3uigEE" node="2hWn4IdUWjD" resolve="ProjectEditorSpecs" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hWn4IdV1Kg" role="jymVt" />
    <node concept="3Tm1VV" id="2hWn4IdUWjE" role="1B3o_S" />
    <node concept="3clFbW" id="2hWn4IdV1KA" role="jymVt">
      <node concept="3cqZAl" id="2hWn4IdV1KB" role="3clF45" />
      <node concept="3Tm1VV" id="2hWn4IdV1KC" role="1B3o_S" />
      <node concept="3clFbS" id="2hWn4IdV1KE" role="3clF47">
        <node concept="3clFbF" id="2hWn4IdV1KI" role="3cqZAp">
          <node concept="37vLTI" id="2hWn4IdV1KK" role="3clFbG">
            <node concept="2OqwBi" id="2hWn4IdV1KO" role="37vLTJ">
              <node concept="Xjq3P" id="2hWn4IdV1KP" role="2Oq$k0" />
              <node concept="2OwXpG" id="2hWn4IdV1KQ" role="2OqNvi">
                <ref role="2Oxat5" node="2hWn4IdV1EG" resolve="myProject" />
              </node>
            </node>
            <node concept="37vLTw" id="2hWn4IdV1KR" role="37vLTx">
              <ref role="3cqZAo" node="2hWn4IdV1KH" resolve="project" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5sOEwwEDB_w" role="3cqZAp">
          <node concept="3cpWsn" id="5sOEwwEDB_x" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="5sOEwwEE6UV" role="1tU5fm">
              <ref role="3uigEE" to="31cb:~SModuleBase" resolve="SModuleBase" />
            </node>
            <node concept="10QFUN" id="5sOEwwEE7pS" role="33vP2m">
              <node concept="3uibUv" id="5sOEwwEE8dY" role="10QFUM">
                <ref role="3uigEE" to="31cb:~SModuleBase" resolve="SModuleBase" />
              </node>
              <node concept="2OqwBi" id="5sOEwwEDB_y" role="10QFUP">
                <node concept="37vLTw" id="5sOEwwEDB_z" role="2Oq$k0">
                  <ref role="3cqZAo" node="1vJkp1TO_h5" resolve="myOptions" />
                </node>
                <node concept="liA8E" id="5sOEwwEDB_$" role="2OqNvi">
                  <ref role="37wK5l" to="tqvn:~TempModuleOptions.createModule()" resolve="createModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5sOEwwEDIIN" role="3cqZAp">
          <node concept="3cpWsn" id="5sOEwwEDIIO" role="3cpWs9">
            <property role="TrG5h" value="mr" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5sOEwwEDIFI" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~SModelReference" resolve="SModelReference" />
            </node>
            <node concept="2ShNRf" id="5sOEwwEDIIP" role="33vP2m">
              <node concept="1pGfFk" id="5sOEwwEDIIQ" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~SModelReference.&lt;init&gt;(org.jetbrains.mps.openapi.module.SModuleReference,org.jetbrains.mps.openapi.model.SModelId,org.jetbrains.mps.openapi.model.SModelName)" resolve="SModelReference" />
                <node concept="2OqwBi" id="5sOEwwEDIIR" role="37wK5m">
                  <node concept="37vLTw" id="5sOEwwEDIIS" role="2Oq$k0">
                    <ref role="3cqZAo" node="5sOEwwEDB_x" resolve="module" />
                  </node>
                  <node concept="liA8E" id="5sOEwwEDIIT" role="2OqNvi">
                    <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
                  </node>
                </node>
                <node concept="2YIFZM" id="5sOEwwEDIIU" role="37wK5m">
                  <ref role="37wK5l" to="w1kc:~SModelId.generate()" resolve="generate" />
                  <ref role="1Pybhc" to="w1kc:~SModelId" resolve="SModelId" />
                </node>
                <node concept="2ShNRf" id="5sOEwwEDIIV" role="37wK5m">
                  <node concept="1pGfFk" id="5sOEwwEDIIW" role="2ShVmc">
                    <ref role="37wK5l" to="mhbf:~SModelName.&lt;init&gt;(java.lang.String)" resolve="SModelName" />
                    <node concept="Xl_RD" id="5sOEwwEDIIX" role="37wK5m">
                      <property role="Xl_RC" value="ProjectHeaderedEditorSpecs" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2hWn4IdV2m4" role="3cqZAp">
          <node concept="37vLTI" id="2hWn4IdV2J4" role="3clFbG">
            <node concept="37vLTw" id="2hWn4IdVVEq" role="37vLTJ">
              <ref role="3cqZAo" node="2hWn4IdV2aU" resolve="myModel" />
            </node>
            <node concept="2ShNRf" id="5sOEwwEDmj8" role="37vLTx">
              <node concept="YeOm9" id="5sOEwwEDzkj" role="2ShVmc">
                <node concept="1Y3b0j" id="5sOEwwEDzkm" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="w1kc:~RegularModelDescriptor.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference,org.jetbrains.mps.openapi.persistence.DataSource)" resolve="RegularModelDescriptor" />
                  <ref role="1Y3XeK" to="w1kc:~RegularModelDescriptor" resolve="RegularModelDescriptor" />
                  <node concept="3Tm1VV" id="5sOEwwEDzkn" role="1B3o_S" />
                  <node concept="3clFb_" id="5sOEwwEDzkw" role="jymVt">
                    <property role="TrG5h" value="createModel" />
                    <node concept="3Tmbuc" id="5sOEwwEDzkx" role="1B3o_S" />
                    <node concept="2AHcQZ" id="5sOEwwEDzkz" role="2AJF6D">
                      <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                    </node>
                    <node concept="3uibUv" id="5sOEwwEDzk$" role="3clF45">
                      <ref role="3uigEE" to="w1kc:~ModelLoadResult" resolve="ModelLoadResult" />
                      <node concept="3uibUv" id="5sOEwwEDzk_" role="11_B2D">
                        <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="5sOEwwEDzkA" role="3clF47">
                      <node concept="3clFbF" id="5sOEwwED$bU" role="3cqZAp">
                        <node concept="2ShNRf" id="5sOEwwEDO3g" role="3clFbG">
                          <node concept="1pGfFk" id="5sOEwwEDQzA" role="2ShVmc">
                            <ref role="37wK5l" to="w1kc:~ModelLoadResult.&lt;init&gt;(jetbrains.mps.extapi.model.SModelData,jetbrains.mps.smodel.loading.ModelLoadingState)" resolve="ModelLoadResult" />
                            <node concept="2ShNRf" id="5sOEwwED$bQ" role="37wK5m">
                              <node concept="YeOm9" id="5sOEwwEDLdc" role="2ShVmc">
                                <node concept="1Y3b0j" id="5sOEwwEDLdf" role="YeSDq">
                                  <property role="2bfB8j" value="true" />
                                  <ref role="37wK5l" to="w1kc:~DefaultSModel.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference)" resolve="DefaultSModel" />
                                  <ref role="1Y3XeK" to="w1kc:~DefaultSModel" resolve="DefaultSModel" />
                                  <node concept="3Tm1VV" id="5sOEwwEDLdg" role="1B3o_S" />
                                  <node concept="37vLTw" id="5sOEwwEDKlQ" role="37wK5m">
                                    <ref role="3cqZAo" node="5sOEwwEDIIO" resolve="mr" />
                                  </node>
                                  <node concept="3clFb_" id="5sOEwwEDLgE" role="jymVt">
                                    <property role="TrG5h" value="canFireEvent" />
                                    <node concept="3Tm1VV" id="5sOEwwEDLgF" role="1B3o_S" />
                                    <node concept="10P_77" id="5sOEwwEDLgH" role="3clF45" />
                                    <node concept="3clFbS" id="5sOEwwEDLgK" role="3clF47">
                                      <node concept="3clFbF" id="5sOEwwEDMbi" role="3cqZAp">
                                        <node concept="3clFbT" id="5sOEwwEDMbh" role="3clFbG" />
                                      </node>
                                    </node>
                                    <node concept="2AHcQZ" id="5sOEwwEDLgL" role="2AJF6D">
                                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                    </node>
                                  </node>
                                  <node concept="3clFb_" id="5sOEwwEDLgO" role="jymVt">
                                    <property role="TrG5h" value="canFireReadEvent" />
                                    <node concept="3Tm1VV" id="5sOEwwEDLgP" role="1B3o_S" />
                                    <node concept="10P_77" id="5sOEwwEDLgR" role="3clF45" />
                                    <node concept="3clFbS" id="5sOEwwEDLgU" role="3clF47">
                                      <node concept="3clFbF" id="5sOEwwEDN6e" role="3cqZAp">
                                        <node concept="3clFbT" id="5sOEwwEDN6d" role="3clFbG" />
                                      </node>
                                    </node>
                                    <node concept="2AHcQZ" id="5sOEwwEDLgV" role="2AJF6D">
                                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3uibUv" id="5sOEwwEDS8u" role="1pMfVU">
                              <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
                            </node>
                            <node concept="Rm8GO" id="5sOEwwEDUU1" role="37wK5m">
                              <ref role="Rm8GQ" to="4it6:~ModelLoadingState.FULLY_LOADED" resolve="FULLY_LOADED" />
                              <ref role="1Px2BO" to="4it6:~ModelLoadingState" resolve="ModelLoadingState" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5sOEwwEDzkC" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5sOEwwEDJnH" role="37wK5m">
                    <ref role="3cqZAo" node="5sOEwwEDIIO" resolve="mr" />
                  </node>
                  <node concept="2ShNRf" id="5sOEwwEDXRf" role="37wK5m">
                    <node concept="1pGfFk" id="5sOEwwEE3bZ" role="2ShVmc">
                      <ref role="37wK5l" to="dush:~NullDataSource.&lt;init&gt;()" resolve="NullDataSource" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5sOEwwEE5Qn" role="3cqZAp">
          <node concept="2OqwBi" id="5sOEwwEE6g6" role="3clFbG">
            <node concept="37vLTw" id="5sOEwwEE5Ql" role="2Oq$k0">
              <ref role="3cqZAo" node="5sOEwwEDB_x" resolve="module" />
            </node>
            <node concept="liA8E" id="5sOEwwEE8N8" role="2OqNvi">
              <ref role="37wK5l" to="31cb:~SModuleBase.registerModel(jetbrains.mps.extapi.model.SModelBase)" resolve="registerModel" />
              <node concept="37vLTw" id="5sOEwwEE9bR" role="37wK5m">
                <ref role="3cqZAo" node="2hWn4IdV2aU" resolve="myModel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2hWn4IdV1KH" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="2hWn4IdV1KG" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4BO4i0ZlME0" role="jymVt" />
    <node concept="3clFb_" id="4BO4i0ZlYd2" role="jymVt">
      <property role="TrG5h" value="dispose" />
      <node concept="3clFbS" id="4BO4i0ZlYd5" role="3clF47">
        <node concept="3clFbF" id="4BO4i0Zm196" role="3cqZAp">
          <node concept="2OqwBi" id="4BO4i0Zm1Jy" role="3clFbG">
            <node concept="37vLTw" id="4BO4i0Zm194" role="2Oq$k0">
              <ref role="3cqZAo" node="2hWn4IdWf_S" resolve="mySpecMap" />
            </node>
            <node concept="1yHZxX" id="4BO4i0Zm3$3" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="5sOEwwEEdkD" role="3cqZAp">
          <node concept="3cpWsn" id="5sOEwwEEdkE" role="3cpWs9">
            <property role="TrG5h" value="module" />
            <node concept="3uibUv" id="5sOEwwEEd_I" role="1tU5fm">
              <ref role="3uigEE" to="31cb:~SModuleBase" resolve="SModuleBase" />
            </node>
            <node concept="10QFUN" id="5sOEwwEEdJO" role="33vP2m">
              <node concept="3uibUv" id="5sOEwwEEdWD" role="10QFUM">
                <ref role="3uigEE" to="31cb:~SModuleBase" resolve="SModuleBase" />
              </node>
              <node concept="2OqwBi" id="5sOEwwEEdkF" role="10QFUP">
                <node concept="37vLTw" id="5sOEwwEEdkG" role="2Oq$k0">
                  <ref role="3cqZAo" node="2hWn4IdV2aU" resolve="myModel" />
                </node>
                <node concept="liA8E" id="5sOEwwEEdkH" role="2OqNvi">
                  <ref role="37wK5l" to="g3l6:~SModelBase.getModule()" resolve="getModule" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5sOEwwEEewb" role="3cqZAp">
          <node concept="2OqwBi" id="5sOEwwEEeRa" role="3clFbG">
            <node concept="37vLTw" id="5sOEwwEEew9" role="2Oq$k0">
              <ref role="3cqZAo" node="5sOEwwEEdkE" resolve="module" />
            </node>
            <node concept="liA8E" id="5sOEwwEEeUr" role="2OqNvi">
              <ref role="37wK5l" to="31cb:~SModuleBase.unregisterModel(jetbrains.mps.extapi.model.SModelBase)" resolve="unregisterModel" />
              <node concept="37vLTw" id="5sOEwwEEfwd" role="37wK5m">
                <ref role="3cqZAo" node="2hWn4IdV2aU" resolve="myModel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5sOEwwEEaq_" role="3cqZAp">
          <node concept="2OqwBi" id="5sOEwwEEaFz" role="3clFbG">
            <node concept="37vLTw" id="5sOEwwEEaqz" role="2Oq$k0">
              <ref role="3cqZAo" node="1vJkp1TO_h5" resolve="myOptions" />
            </node>
            <node concept="liA8E" id="5sOEwwEEaQC" role="2OqNvi">
              <ref role="37wK5l" to="tqvn:~TempModuleOptions.disposeModule()" resolve="disposeModule" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="4BO4i0ZlXKI" role="3clF45" />
      <node concept="3Tm1VV" id="4BO4i0ZlYRF" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="2hWn4IdW7IB" role="jymVt" />
    <node concept="3clFb_" id="2hWn4IdW8g3" role="jymVt">
      <property role="TrG5h" value="getSpec" />
      <property role="od$2w" value="true" />
      <node concept="3clFbS" id="2hWn4IdW8g6" role="3clF47">
        <node concept="3clFbF" id="2hWn4IdWc6B" role="3cqZAp">
          <node concept="2OqwBi" id="2hWn4IdWcWM" role="3clFbG">
            <node concept="2OqwBi" id="2hWn4IdWcuF" role="2Oq$k0">
              <node concept="37vLTw" id="2hWn4IdWc6A" role="2Oq$k0">
                <ref role="3cqZAo" node="2hWn4IdV1EG" resolve="myProject" />
              </node>
              <node concept="liA8E" id="2hWn4IdWcOr" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="2hWn4IdWd6z" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.checkReadAccess()" resolve="checkReadAccess" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2hWn4IdWdVE" role="3cqZAp">
          <node concept="3cpWsn" id="2hWn4IdWdVH" role="3cpWs9">
            <property role="TrG5h" value="key" />
            <node concept="1LlUBW" id="2hWn4IdWdXm" role="1tU5fm">
              <node concept="3Tqbb2" id="2hWn4IdWdXn" role="1Lm7xW" />
              <node concept="17QB3L" id="2hWn4IdWdXo" role="1Lm7xW" />
            </node>
            <node concept="1Ls8ON" id="2hWn4IdWeay" role="33vP2m">
              <node concept="37vLTw" id="2hWn4IdWehw" role="1Lso8e">
                <ref role="3cqZAo" node="2hWn4IdW93s" resolve="target" />
              </node>
              <node concept="37vLTw" id="2hWn4IdWev0" role="1Lso8e">
                <ref role="3cqZAo" node="2hWn4IdW99B" resolve="projectionState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2hWn4IdWeEU" role="3cqZAp">
          <node concept="3clFbS" id="2hWn4IdWeEW" role="3clFbx">
            <node concept="3cpWs6" id="2hWn4IdWkBR" role="3cqZAp">
              <node concept="3EllGN" id="2hWn4IdWlLO" role="3cqZAk">
                <node concept="37vLTw" id="2hWn4IdWmm1" role="3ElVtu">
                  <ref role="3cqZAo" node="2hWn4IdWdVH" resolve="key" />
                </node>
                <node concept="37vLTw" id="2hWn4IdWl8p" role="3ElQJh">
                  <ref role="3cqZAo" node="2hWn4IdWf_S" resolve="mySpecMap" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2hWn4IdWjlw" role="3clFbw">
            <node concept="37vLTw" id="2hWn4IdWiE_" role="2Oq$k0">
              <ref role="3cqZAo" node="2hWn4IdWf_S" resolve="mySpecMap" />
            </node>
            <node concept="2Nt0df" id="2hWn4IdWnqi" role="2OqNvi">
              <node concept="37vLTw" id="2hWn4IdWny1" role="38cxEo">
                <ref role="3cqZAo" node="2hWn4IdWdVH" resolve="key" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2hWn4IdWpMZ" role="3cqZAp">
          <node concept="3cpWsn" id="2hWn4IdWpN0" role="3cpWs9">
            <property role="TrG5h" value="spec" />
            <node concept="3Tqbb2" id="2hWn4IdWpML" role="1tU5fm">
              <ref role="ehGHo" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
            </node>
            <node concept="2ShNRf" id="2hWn4IdWpN1" role="33vP2m">
              <node concept="3zrR0B" id="2hWn4IdWpN2" role="2ShVmc">
                <node concept="3Tqbb2" id="2hWn4IdWpN3" role="3zrR0E">
                  <ref role="ehGHo" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2hWn4IdWo2X" role="3cqZAp">
          <node concept="37vLTI" id="2hWn4IdWqUq" role="3clFbG">
            <node concept="37vLTw" id="2hWn4IdWr9r" role="37vLTx">
              <ref role="3cqZAo" node="2hWn4IdW99B" resolve="projectionState" />
            </node>
            <node concept="2OqwBi" id="2hWn4IdWqmN" role="37vLTJ">
              <node concept="37vLTw" id="2hWn4IdWpN4" role="2Oq$k0">
                <ref role="3cqZAo" node="2hWn4IdWpN0" resolve="spec" />
              </node>
              <node concept="3TrcHB" id="2hWn4IdWq$8" role="2OqNvi">
                <ref role="3TsBF5" to="9ywi:6YAH_gOxzgu" resolve="projectionState" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2hWn4IdWs1e" role="3cqZAp">
          <node concept="37vLTI" id="2hWn4IdWsXy" role="3clFbG">
            <node concept="37vLTw" id="2hWn4IdWt6k" role="37vLTx">
              <ref role="3cqZAo" node="2hWn4IdW93s" resolve="target" />
            </node>
            <node concept="2OqwBi" id="2hWn4IdWsx4" role="37vLTJ">
              <node concept="37vLTw" id="2hWn4IdWs1c" role="2Oq$k0">
                <ref role="3cqZAo" node="2hWn4IdWpN0" resolve="spec" />
              </node>
              <node concept="3TrEf2" id="2hWn4IdWsOV" role="2OqNvi">
                <ref role="3Tt5mk" to="9ywi:6YAH_gOxzgw" resolve="nodeToShow" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2hWn4IdWtNC" role="3cqZAp">
          <node concept="37vLTI" id="2hWn4IdWv2t" role="3clFbG">
            <node concept="37vLTw" id="2hWn4IdWvbC" role="37vLTx">
              <ref role="3cqZAo" node="2hWn4IdWpN0" resolve="spec" />
            </node>
            <node concept="3EllGN" id="2hWn4IdWuHE" role="37vLTJ">
              <node concept="37vLTw" id="2hWn4IdWuTm" role="3ElVtu">
                <ref role="3cqZAo" node="2hWn4IdWdVH" resolve="key" />
              </node>
              <node concept="37vLTw" id="2hWn4IdWtNA" role="3ElQJh">
                <ref role="3cqZAo" node="2hWn4IdWf_S" resolve="mySpecMap" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="1vJkp1U0R$M" role="3cqZAp">
          <node concept="3clFbS" id="1vJkp1U0R$O" role="1zxBo7">
            <node concept="3clFbF" id="1vJkp1TPH4i" role="3cqZAp">
              <node concept="2OqwBi" id="1vJkp1TPJmM" role="3clFbG">
                <node concept="2OqwBi" id="1vJkp1TPIi2" role="2Oq$k0">
                  <node concept="1eOMI4" id="1vJkp1TPH4g" role="2Oq$k0">
                    <node concept="10QFUN" id="1vJkp1TPH4d" role="1eOMHV">
                      <node concept="3uibUv" id="1vJkp1TPHwV" role="10QFUM">
                        <ref role="3uigEE" to="w1kc:~RegularModelDescriptor" resolve="RegularModelDescriptor" />
                      </node>
                      <node concept="37vLTw" id="1vJkp1TPHMP" role="10QFUP">
                        <ref role="3cqZAo" node="2hWn4IdV2aU" resolve="myModel" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1vJkp1TPJ0z" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~RegularModelDescriptor.getSModelInternal()" resolve="getSModelInternal" />
                  </node>
                </node>
                <node concept="liA8E" id="1vJkp1TPJMz" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
                  <node concept="37vLTw" id="1vJkp1TPJUd" role="37wK5m">
                    <ref role="3cqZAo" node="2hWn4IdWpN0" resolve="spec" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="1vJkp1U0R$P" role="1zxBo5">
            <node concept="XOnhg" id="1vJkp1U0R$R" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="exU80VtSrgD" role="1tU5fm">
                <node concept="3uibUv" id="1vJkp1U0Syj" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~IllegalStateException" resolve="IllegalStateException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="1vJkp1U0R$V" role="1zc67A">
              <node concept="3SKdUt" id="1vJkp1U0SJk" role="3cqZAp">
                <node concept="1PaTwC" id="1vJkp1U0SJl" role="1aUNEU">
                  <node concept="3oM_SD" id="1vJkp1U0SJn" role="1PaTwD">
                    <property role="3oM_SC" value="hack" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2hWn4IdWxhD" role="3cqZAp">
          <node concept="37vLTw" id="2hWn4IdWzmK" role="3cqZAk">
            <ref role="3cqZAo" node="2hWn4IdWpN0" resolve="spec" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2hWn4IdW7X6" role="1B3o_S" />
      <node concept="3Tqbb2" id="2hWn4IdW8Eg" role="3clF45">
        <ref role="ehGHo" to="9ywi:6YAH_gOxzgt" resolve="HeaderedEditorSpec" />
      </node>
      <node concept="37vLTG" id="2hWn4IdW93s" role="3clF46">
        <property role="TrG5h" value="target" />
        <node concept="3Tqbb2" id="2hWn4IdW93r" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2hWn4IdW99B" role="3clF46">
        <property role="TrG5h" value="projectionState" />
        <node concept="17QB3L" id="2hWn4IdW9tU" role="1tU5fm" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7ii99HMlmZc">
    <property role="TrG5h" value="ChooseProjectionAction" />
    <node concept="2tJIrI" id="7ii99HMln4e" role="jymVt" />
    <node concept="312cEg" id="7ii99HMloZD" role="jymVt">
      <property role="TrG5h" value="myConroller" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7ii99HMln9y" role="1B3o_S" />
      <node concept="3uibUv" id="7ii99HMloZw" role="1tU5fm">
        <ref role="3uigEE" node="7Y8B9wpj6Z6" resolve="EditorProjectionController" />
      </node>
    </node>
    <node concept="312cEg" id="7ii99HMlpgu" role="jymVt">
      <property role="TrG5h" value="myProjectionName" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7ii99HMlp5h" role="1B3o_S" />
      <node concept="3uibUv" id="7ii99HMlpgm" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ii99HMlpgJ" role="jymVt" />
    <node concept="3Tm1VV" id="7ii99HMlmZd" role="1B3o_S" />
    <node concept="3uibUv" id="7ii99HMln46" role="1zkMxy">
      <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
    </node>
    <node concept="3clFbW" id="7ii99HMlpha" role="jymVt">
      <node concept="3cqZAl" id="7ii99HMlphb" role="3clF45" />
      <node concept="3Tm1VV" id="7ii99HMlphc" role="1B3o_S" />
      <node concept="3clFbS" id="7ii99HMlphe" role="3clF47">
        <node concept="3clFbF" id="7ii99HMlphi" role="3cqZAp">
          <node concept="37vLTI" id="7ii99HMlphk" role="3clFbG">
            <node concept="37vLTw" id="7ii99HMlphr" role="37vLTx">
              <ref role="3cqZAo" node="7ii99HMlphh" resolve="conroller" />
            </node>
            <node concept="37vLTw" id="7ii99HMlpxC" role="37vLTJ">
              <ref role="3cqZAo" node="7ii99HMloZD" resolve="myConroller" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ii99HMlphu" role="3cqZAp">
          <node concept="37vLTI" id="7ii99HMlphw" role="3clFbG">
            <node concept="37vLTw" id="7ii99HMlphB" role="37vLTx">
              <ref role="3cqZAo" node="7ii99HMlpht" resolve="projectionName" />
            </node>
            <node concept="37vLTw" id="7ii99HMlpH3" role="37vLTJ">
              <ref role="3cqZAo" node="7ii99HMlpgu" resolve="myProjectionName" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1_XvODPGe$U" role="3cqZAp">
          <node concept="2OqwBi" id="1_XvODPGeKO" role="3clFbG">
            <node concept="1rXfSq" id="1_XvODPGe$S" role="2Oq$k0">
              <ref role="37wK5l" to="qkt:~AnAction.getTemplatePresentation()" resolve="getTemplatePresentation" />
            </node>
            <node concept="liA8E" id="1_XvODPGeYT" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String,boolean)" resolve="setText" />
              <node concept="37vLTw" id="1_XvODPGfbp" role="37wK5m">
                <ref role="3cqZAo" node="7ii99HMlpht" resolve="projectionName" />
              </node>
              <node concept="3clFbT" id="14erg_Tkvdm" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ii99HMlphh" role="3clF46">
        <property role="TrG5h" value="conroller" />
        <node concept="3uibUv" id="7ii99HMlphg" role="1tU5fm">
          <ref role="3uigEE" node="7Y8B9wpj6Z6" resolve="EditorProjectionController" />
        </node>
      </node>
      <node concept="37vLTG" id="7ii99HMlpht" role="3clF46">
        <property role="TrG5h" value="projectionName" />
        <node concept="3uibUv" id="7ii99HMlphs" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ii99HMlpK4" role="jymVt" />
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
              <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
            </node>
            <node concept="2OqwBi" id="7ii99HMmtI$" role="33vP2m">
              <node concept="37vLTw" id="7ii99HMmtI_" role="2Oq$k0">
                <ref role="3cqZAo" node="7ii99HMlpLl" resolve="event" />
              </node>
              <node concept="liA8E" id="7ii99HMmtIA" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                <node concept="10M0yZ" id="7ii99HMmtIB" role="37wK5m">
                  <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
                  <ref role="1PxDUh" to="3s15:~MPSDataKeys" resolve="MPSDataKeys" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7ii99HMmtZ7" role="3cqZAp">
          <node concept="3cpWsn" id="7ii99HMmtZ8" role="3cpWs9">
            <property role="TrG5h" value="editor" />
            <node concept="3uibUv" id="7ii99HMmtYo" role="1tU5fm">
              <ref role="3uigEE" node="7Y8B9wpd$4e" resolve="HeaderedNodeEditor" />
            </node>
            <node concept="2OqwBi" id="7ii99HMmtZ9" role="33vP2m">
              <node concept="37vLTw" id="7ii99HMmtZa" role="2Oq$k0">
                <ref role="3cqZAo" node="7ii99HMlpLl" resolve="event" />
              </node>
              <node concept="liA8E" id="7ii99HMmtZb" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getData(com.intellij.openapi.actionSystem.DataKey)" resolve="getData" />
                <node concept="10M0yZ" id="7ii99HMmtZc" role="37wK5m">
                  <ref role="3cqZAo" node="7Y8B9wpnhj$" resolve="EDITOR" />
                  <ref role="1PxDUh" node="7Y8B9wpne4m" resolve="HeaderedEditorDataKeys" />
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
                <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
              <node concept="37vLTw" id="7ii99HMmvwk" role="2Oq$k0">
                <ref role="3cqZAo" node="7ii99HMmtIz" resolve="project" />
              </node>
            </node>
            <node concept="liA8E" id="7ii99HMmkW0" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="7ii99HMml8G" role="37wK5m">
                <node concept="3clFbS" id="7ii99HMml8H" role="1bW5cS">
                  <node concept="3clFbF" id="7ii99HMmunN" role="3cqZAp">
                    <node concept="2OqwBi" id="7ii99HMmuGj" role="3clFbG">
                      <node concept="37vLTw" id="7ii99HMmunL" role="2Oq$k0">
                        <ref role="3cqZAo" node="7ii99HMmtZ8" resolve="editor" />
                      </node>
                      <node concept="liA8E" id="7ii99HMmv0C" role="2OqNvi">
                        <ref role="37wK5l" node="7Y8B9wpn_eO" resolve="chooseProjection" />
                        <node concept="2OqwBi" id="7ii99HMmoOg" role="37wK5m">
                          <node concept="37vLTw" id="7ii99HMmo_Z" role="2Oq$k0">
                            <ref role="3cqZAo" node="7ii99HMloZD" resolve="myConroller" />
                          </node>
                          <node concept="liA8E" id="7ii99HMmp09" role="2OqNvi">
                            <ref role="37wK5l" node="7Y8B9wpliPR" resolve="createProjection" />
                            <node concept="37vLTw" id="7ii99HMmpes" role="37wK5m">
                              <ref role="3cqZAo" node="7ii99HMlpgu" resolve="myProjectionName" />
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
  </node>
  <node concept="312cEu" id="7ii99HMn_$f">
    <property role="TrG5h" value="SimpleEditorProjectionController" />
    <node concept="2tJIrI" id="7ii99HMn_EG" role="jymVt" />
    <node concept="312cEg" id="7ii99HMn_Ff" role="jymVt">
      <property role="TrG5h" value="myNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7ii99HMn_Fg" role="1B3o_S" />
      <node concept="3uibUv" id="7ii99HMn_Fh" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
      </node>
    </node>
    <node concept="312cEg" id="7ii99HMnAg8" role="jymVt">
      <property role="TrG5h" value="myId" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7ii99HMn_Xk" role="1B3o_S" />
      <node concept="3uibUv" id="7ii99HMnAea" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="312cEg" id="7ii99HMnAWC" role="jymVt">
      <property role="TrG5h" value="myHints" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7ii99HMnAwj" role="1B3o_S" />
      <node concept="10Q1$e" id="7ii99HMnBi4" role="1tU5fm">
        <node concept="17QB3L" id="7ii99HMnBea" role="10Q1$1" />
      </node>
    </node>
    <node concept="312cEg" id="7ii99HMokb1" role="jymVt">
      <property role="TrG5h" value="myDefault" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7ii99HMojFU" role="1B3o_S" />
      <node concept="10P_77" id="7ii99HMok71" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="7ii99HMn_Fi" role="jymVt" />
    <node concept="3clFbW" id="7ii99HMn_Fj" role="jymVt">
      <node concept="3cqZAl" id="7ii99HMn_Fk" role="3clF45" />
      <node concept="3Tm1VV" id="7ii99HMn_Fl" role="1B3o_S" />
      <node concept="3clFbS" id="7ii99HMn_Fm" role="3clF47">
        <node concept="3clFbF" id="7ii99HMn_Fn" role="3cqZAp">
          <node concept="37vLTI" id="7ii99HMnGNc" role="3clFbG">
            <node concept="37vLTw" id="7ii99HMnGDy" role="37vLTJ">
              <ref role="3cqZAo" node="7ii99HMn_Ff" resolve="myNode" />
            </node>
            <node concept="37vLTw" id="7ii99HMn_Fs" role="37vLTx">
              <ref role="3cqZAo" node="7ii99HMn_Ft" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ii99HMnH3K" role="3cqZAp">
          <node concept="37vLTI" id="7ii99HMnHvu" role="3clFbG">
            <node concept="37vLTw" id="7ii99HMnHB9" role="37vLTx">
              <ref role="3cqZAo" node="7ii99HMnEC6" resolve="id" />
            </node>
            <node concept="37vLTw" id="7ii99HMnH3I" role="37vLTJ">
              <ref role="3cqZAo" node="7ii99HMnAg8" resolve="myId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ii99HMnFpt" role="3cqZAp">
          <node concept="37vLTI" id="7ii99HMnFFD" role="3clFbG">
            <node concept="37vLTw" id="7ii99HMnFSF" role="37vLTx">
              <ref role="3cqZAo" node="7ii99HMnEU1" resolve="hints" />
            </node>
            <node concept="37vLTw" id="7ii99HMnFpr" role="37vLTJ">
              <ref role="3cqZAo" node="7ii99HMnAWC" resolve="myHints" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7ii99HMokWT" role="3cqZAp">
          <node concept="37vLTI" id="7ii99HMolud" role="3clFbG">
            <node concept="37vLTw" id="7ii99HMoxg0" role="37vLTx">
              <ref role="3cqZAo" node="7ii99HMoj81" resolve="isDefautl" />
            </node>
            <node concept="37vLTw" id="7ii99HMokWR" role="37vLTJ">
              <ref role="3cqZAo" node="7ii99HMokb1" resolve="myDefault" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ii99HMn_Ft" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="7ii99HMn_Fu" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
      </node>
      <node concept="37vLTG" id="7ii99HMnEC6" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="7ii99HMnEKQ" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="7ii99HMnEU1" role="3clF46">
        <property role="TrG5h" value="hints" />
        <node concept="10Q1$e" id="7ii99HMnF82" role="1tU5fm">
          <node concept="17QB3L" id="7ii99HMnF3A" role="10Q1$1" />
        </node>
      </node>
      <node concept="37vLTG" id="7ii99HMoj81" role="3clF46">
        <property role="TrG5h" value="isDefautl" />
        <node concept="10P_77" id="7ii99HMojmk" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ii99HMn_Fx" role="jymVt" />
    <node concept="3clFb_" id="7ii99HMn_Fy" role="jymVt">
      <property role="TrG5h" value="getId" />
      <node concept="3Tm1VV" id="7ii99HMn_Fz" role="1B3o_S" />
      <node concept="3uibUv" id="7ii99HMn_F$" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="7ii99HMn_F_" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="7ii99HMn_FA" role="3clF47">
        <node concept="3clFbF" id="7ii99HMnCNz" role="3cqZAp">
          <node concept="37vLTw" id="7ii99HMnCNw" role="3clFbG">
            <ref role="3cqZAo" node="7ii99HMnAg8" resolve="myId" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7ii99HMn_FD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ii99HMnC4Z" role="jymVt" />
    <node concept="3clFb_" id="7ii99HMmORN" role="jymVt">
      <property role="TrG5h" value="createProjection" />
      <node concept="3Tm1VV" id="7ii99HMmORP" role="1B3o_S" />
      <node concept="3uibUv" id="7ii99HMmORQ" role="3clF45">
        <ref role="3uigEE" node="7Y8B9wpl75t" resolve="EditorProjection" />
      </node>
      <node concept="37vLTG" id="7ii99HMmORR" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="3uibUv" id="7ii99HMmORS" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="2AHcQZ" id="7ii99HMmORT" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="2AHcQZ" id="7ii99HMmORU" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="7ii99HMmORV" role="3clF47">
        <node concept="3clFbJ" id="7ii99HMmPL5" role="3cqZAp">
          <node concept="17R0WA" id="7ii99HMmQlF" role="3clFbw">
            <node concept="1rXfSq" id="7ii99HMmQ$l" role="3uHU7w">
              <ref role="37wK5l" node="7ii99HMn_Fy" resolve="getId" />
            </node>
            <node concept="37vLTw" id="7ii99HMmPRi" role="3uHU7B">
              <ref role="3cqZAo" node="7ii99HMmORR" resolve="name" />
            </node>
          </node>
          <node concept="3clFbS" id="7ii99HMmPL7" role="3clFbx">
            <node concept="3cpWs6" id="7ii99HMneIE" role="3cqZAp">
              <node concept="1rXfSq" id="7ii99HMo$mx" role="3cqZAk">
                <ref role="37wK5l" node="7ii99HMo$mu" resolve="createProjection0" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7ii99HMmQKy" role="9aQIa">
            <node concept="3clFbS" id="7ii99HMmQKz" role="9aQI4">
              <node concept="YS8fn" id="7ii99HMmQU4" role="3cqZAp">
                <node concept="2ShNRf" id="7ii99HMmR01" role="YScLw">
                  <node concept="1pGfFk" id="7ii99HMmSsv" role="2ShVmc">
                    <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                    <node concept="Xl_RD" id="7ii99HMmS_m" role="37wK5m">
                      <property role="Xl_RC" value="Unknown projection" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ii99HMo$E1" role="jymVt" />
    <node concept="3clFb_" id="7ii99HMoxEM" role="jymVt">
      <property role="TrG5h" value="createDefaultProjection" />
      <node concept="3Tm1VV" id="7ii99HMoxEQ" role="1B3o_S" />
      <node concept="3uibUv" id="7ii99HMoxER" role="3clF45">
        <ref role="3uigEE" node="7Y8B9wpl75t" resolve="EditorProjection" />
      </node>
      <node concept="2AHcQZ" id="7ii99HMoxES" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="7ii99HMoxEU" role="3clF47">
        <node concept="3clFbJ" id="7ii99HMoybd" role="3cqZAp">
          <node concept="37vLTw" id="7ii99HMoyyR" role="3clFbw">
            <ref role="3cqZAo" node="7ii99HMokb1" resolve="myDefault" />
          </node>
          <node concept="3clFbS" id="7ii99HMoybf" role="3clFbx">
            <node concept="3cpWs6" id="7ii99HMoAN3" role="3cqZAp">
              <node concept="1rXfSq" id="7ii99HMo$$3" role="3cqZAk">
                <ref role="37wK5l" node="7ii99HMo$mu" resolve="createProjection0" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="7ii99HMozfA" role="9aQIa">
            <node concept="3clFbS" id="7ii99HMozfB" role="9aQI4">
              <node concept="3cpWs6" id="7ii99HMoBqb" role="3cqZAp">
                <node concept="10Nm6u" id="7ii99HMozwi" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7ii99HMoxEV" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ii99HMoxvN" role="jymVt" />
    <node concept="3clFb_" id="7ii99HMo$mu" role="jymVt">
      <property role="TrG5h" value="createProjection0" />
      <node concept="3Tm6S6" id="7ii99HMo$mv" role="1B3o_S" />
      <node concept="3uibUv" id="7ii99HMo$mw" role="3clF45">
        <ref role="3uigEE" node="7Y8B9wpmJ8m" resolve="SimpleEditorProjection" />
      </node>
      <node concept="3clFbS" id="7ii99HMo$mk" role="3clF47">
        <node concept="3cpWs6" id="7ii99HMo$ml" role="3cqZAp">
          <node concept="2ShNRf" id="7ii99HMo$mm" role="3cqZAk">
            <node concept="1pGfFk" id="7ii99HMo$mn" role="2ShVmc">
              <ref role="37wK5l" node="7Y8B9wpmJqb" resolve="SimpleEditorProjection" />
              <node concept="37vLTw" id="7ii99HMo$mo" role="37wK5m">
                <ref role="3cqZAo" node="7ii99HMn_Ff" resolve="myNode" />
              </node>
              <node concept="Xjq3P" id="7ii99HMo$mp" role="37wK5m" />
              <node concept="37vLTw" id="7ii99HMo$mq" role="37wK5m">
                <ref role="3cqZAo" node="7ii99HMnAg8" resolve="myId" />
              </node>
              <node concept="37vLTw" id="7ii99HMo$mr" role="37wK5m">
                <ref role="3cqZAo" node="7ii99HMnAWC" resolve="myHints" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ii99HMmP7y" role="jymVt" />
    <node concept="3clFb_" id="7ii99HMmOSb" role="jymVt">
      <property role="TrG5h" value="getChooseProjectionActions" />
      <node concept="3Tm1VV" id="7ii99HMmOSk" role="1B3o_S" />
      <node concept="3uibUv" id="7ii99HMmOSl" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7ii99HMmOSm" role="11_B2D">
          <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
        </node>
      </node>
      <node concept="3clFbS" id="7ii99HMmOSo" role="3clF47">
        <node concept="3clFbF" id="7ii99HMmTzC" role="3cqZAp">
          <node concept="2YIFZM" id="7ii99HMmTzE" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="7ii99HMmTzF" role="3PaCim">
              <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
            </node>
            <node concept="2ShNRf" id="7ii99HMmTzG" role="37wK5m">
              <node concept="1pGfFk" id="7ii99HMmTzH" role="2ShVmc">
                <ref role="37wK5l" node="7ii99HMlpha" resolve="ChooseProjectionAction" />
                <node concept="Xjq3P" id="7ii99HMmTzI" role="37wK5m" />
                <node concept="1rXfSq" id="7ii99HMmTzJ" role="37wK5m">
                  <ref role="37wK5l" node="7ii99HMn_Fy" resolve="getId" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7ii99HMmUzC" role="jymVt" />
    <node concept="3clFb_" id="7ii99HMmU4w" role="jymVt">
      <property role="TrG5h" value="getCreateProjectionActions" />
      <node concept="3Tm1VV" id="7ii99HMmU4x" role="1B3o_S" />
      <node concept="3uibUv" id="7ii99HMmU4y" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7ii99HMmU4z" role="11_B2D">
          <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
        </node>
      </node>
      <node concept="3clFbS" id="7ii99HMmU4$" role="3clF47">
        <node concept="3clFbF" id="7ii99HMlUYz" role="3cqZAp">
          <node concept="2YIFZM" id="7ii99HMlV0y" role="3clFbG">
            <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="7ii99HMlVfQ" role="3PaCim">
              <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7ii99HMn_$g" role="1B3o_S" />
    <node concept="3uibUv" id="7ii99HMn__r" role="EKbjA">
      <ref role="3uigEE" node="7Y8B9wpj6Z6" resolve="EditorProjectionController" />
    </node>
  </node>
</model>

