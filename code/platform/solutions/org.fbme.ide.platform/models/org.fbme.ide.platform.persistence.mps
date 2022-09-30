<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:61dddea3-21a4-4a11-920c-747c8c1e4777(org.fbme.ide.platform.persistence)">
  <persistence version="9" />
  <attribute name="doNotGenerate" value="false" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
  </languages>
  <imports>
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="mmaq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.jdom(MPS.Core/)" />
    <import index="ends" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="bxo2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence.datasource(MPS.OpenAPI/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="3a50" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide(MPS.Platform/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" />
    <import index="q7tw" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.apache.log4j(MPS.Core/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="iyvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence.datasource(MPS.Core/)" />
    <import index="pa15" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.persistence(MPS.Core/)" />
    <import index="3qmy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.classloading(MPS.Core/)" />
    <import index="epky" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.parser(org.fbme.lib/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="7adg" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.common(org.fbme.lib/)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="7nyy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs.refresh(MPS.Core/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="snbe" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util.io(MPS.IDEA/)" />
    <import index="w827" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs.openapi(MPS.Core/)" />
    <import index="4it6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.loading(MPS.Core/)" />
    <import index="6phk" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.stringify(org.fbme.lib/)" />
    <import index="25ix" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.platform.converter(org.fbme.platform.lib/)" />
    <import index="uvki" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.iec61499.repository(org.fbme.platform.lib/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1219920932475" name="jetbrains.mps.baseLanguage.structure.VariableArityType" flags="in" index="8X2XB">
        <child id="1219921048460" name="componentType" index="8Xvag" />
      </concept>
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1215695189714" name="jetbrains.mps.baseLanguage.structure.PlusAssignmentExpression" flags="nn" index="d57v9" />
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
      </concept>
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534604311" name="jetbrains.mps.baseLanguage.structure.ByteType" flags="in" index="10PrrI" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534760951" name="jetbrains.mps.baseLanguage.structure.ArrayType" flags="in" index="10Q1$e">
        <child id="1070534760952" name="componentType" index="10Q1$1" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
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
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271369338" name="jetbrains.mps.baseLanguage.structure.IsEmptyOperation" flags="nn" index="17RlXB" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="4269842503726207156" name="jetbrains.mps.baseLanguage.structure.LongLiteral" flags="nn" index="1adDum">
        <property id="4269842503726207157" name="value" index="1adDun" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
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
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
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
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
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
      <concept id="8276990574909231788" name="jetbrains.mps.baseLanguage.structure.FinallyClause" flags="ng" index="1wplmZ">
        <child id="8276990574909234106" name="finallyBody" index="1wplMD" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1081855346303" name="jetbrains.mps.baseLanguage.structure.BreakStatement" flags="nn" index="3zACq4" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1170075670744" name="jetbrains.mps.baseLanguage.structure.SynchronizedStatement" flags="nn" index="1HWtB8">
        <child id="1170075728144" name="expression" index="1HWFw0" />
        <child id="1170075736412" name="block" index="1HWHxc" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
      </concept>
      <concept id="1163670490218" name="jetbrains.mps.baseLanguage.structure.SwitchStatement" flags="nn" index="3KaCP$">
        <child id="1163670592366" name="defaultBlock" index="3Kb1Dw" />
        <child id="1163670766145" name="expression" index="3KbGdf" />
        <child id="1163670772911" name="case" index="3KbHQx" />
      </concept>
      <concept id="1163670641947" name="jetbrains.mps.baseLanguage.structure.SwitchCase" flags="ng" index="3KbdKl">
        <child id="1163670677455" name="expression" index="3Kbmr1" />
        <child id="1163670683720" name="body" index="3Kbo56" />
      </concept>
      <concept id="1221737317277" name="jetbrains.mps.baseLanguage.structure.StaticInitializer" flags="lg" index="1Pe0a1">
        <child id="1221737317278" name="statementList" index="1Pe0a2" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1178893518978" name="jetbrains.mps.baseLanguage.structure.ThisConstructorInvocation" flags="nn" index="1VxSAg" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
        <child id="1201186121363" name="typeParameter" index="2Ghqu4" />
      </concept>
      <concept id="8064396509828172209" name="jetbrains.mps.baseLanguage.structure.UnaryMinus" flags="nn" index="1ZRNhn" />
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
      <concept id="4497478346159780083" name="jetbrains.mps.lang.smodel.structure.LanguageRefExpression" flags="ng" index="pHN19">
        <child id="3542851458883491298" name="languageId" index="2V$M_3" />
      </concept>
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="8758390115028452779" name="jetbrains.mps.lang.smodel.structure.Node_GetReferencesOperation" flags="nn" index="2z74zc" />
      <concept id="2926695023085807517" name="jetbrains.mps.lang.smodel.structure.Reference_ContainingLinkOperation" flags="nn" index="CsP83" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7" />
      <concept id="3542851458883438784" name="jetbrains.mps.lang.smodel.structure.LanguageId" flags="nn" index="2V$Bhx">
        <property id="3542851458883439831" name="namespace" index="2V$B1Q" />
        <property id="3542851458883439832" name="languageId" index="2V$B1T" />
      </concept>
      <concept id="1180031783296" name="jetbrains.mps.lang.smodel.structure.Concept_IsSubConceptOfOperation" flags="nn" index="2Zo12i">
        <child id="1180031783297" name="conceptArgument" index="2Zo12j" />
      </concept>
      <concept id="4124388153790980106" name="jetbrains.mps.lang.smodel.structure.Reference_GetTargetOperation" flags="nn" index="2ZHEkA" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
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
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
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
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
        <child id="1237731803878" name="copyFrom" index="I$8f6" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="312cEu" id="537nKv8IlHE">
    <property role="TrG5h" value="IEC61499ModelFactory" />
    <node concept="2tJIrI" id="43K6Fb_YaCt" role="jymVt" />
    <node concept="3uibUv" id="537nKv8JjDh" role="EKbjA">
      <ref role="3uigEE" to="dush:~ModelFactory" resolve="ModelFactory" />
    </node>
    <node concept="3uibUv" id="43K6Fb_YeBF" role="EKbjA">
      <ref role="3uigEE" to="pa15:~DataLocationAwareModelFactory" resolve="DataLocationAwareModelFactory" />
    </node>
    <node concept="Wx3nA" id="5fVAPfKzmlu" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="LOG" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5fVAPfKzkFK" role="1B3o_S" />
      <node concept="3uibUv" id="5fVAPfKznqn" role="1tU5fm">
        <ref role="3uigEE" to="q7tw:~Logger" resolve="Logger" />
      </node>
      <node concept="2YIFZM" id="5fVAPfKzoiU" role="33vP2m">
        <ref role="37wK5l" to="q7tw:~LogManager.getLogger(java.lang.Class)" resolve="getLogger" />
        <ref role="1Pybhc" to="q7tw:~LogManager" resolve="LogManager" />
        <node concept="3VsKOn" id="5fVAPfKzplj" role="37wK5m">
          <ref role="3VsUkX" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5fVAPfKzimq" role="jymVt" />
    <node concept="1Pe0a1" id="3yl9huPYeE0" role="jymVt">
      <node concept="3clFbS" id="3yl9huPYeE1" role="1Pe0a2">
        <node concept="3SKdUt" id="3yl9huPYjsv" role="3cqZAp">
          <node concept="1PaTwC" id="3yl9huPYjsw" role="1aUNEU">
            <node concept="3oM_SD" id="3yl9huPYjsy" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="3yl9huPYjs_" role="1PaTwD">
              <property role="3oM_SC" value="not" />
            </node>
            <node concept="3oM_SD" id="3yl9huPYjsA" role="1PaTwD">
              <property role="3oM_SC" value="interrupt" />
            </node>
            <node concept="3oM_SD" id="3yl9huPYjsB" role="1PaTwD">
              <property role="3oM_SC" value="logging" />
            </node>
            <node concept="3oM_SD" id="3yl9huPYjsC" role="1PaTwD">
              <property role="3oM_SC" value="with" />
            </node>
            <node concept="3oM_SD" id="3yl9huPYjsD" role="1PaTwD">
              <property role="3oM_SC" value="classloaderIsDisposed" />
            </node>
            <node concept="3oM_SD" id="3yl9huPYjsE" role="1PaTwD">
              <property role="3oM_SC" value="exception" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3yl9huPYiSo" role="3cqZAp">
          <node concept="2OqwBi" id="3yl9huPYjPO" role="3clFbG">
            <node concept="3VsKOn" id="3yl9huPYjaM" role="2Oq$k0">
              <ref role="3VsUkX" to="q7tw:~Logger" resolve="Logger" />
            </node>
            <node concept="liA8E" id="3yl9huPYkzr" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Class.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3yl9huPY7eJ" role="jymVt" />
    <node concept="Wx3nA" id="537nKv8Jv8F" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="TYPE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="537nKv8JtKz" role="1B3o_S" />
      <node concept="3uibUv" id="537nKv8JvIs" role="1tU5fm">
        <ref role="3uigEE" to="dush:~ModelFactoryType" resolve="ModelFactoryType" />
      </node>
      <node concept="2ShNRf" id="537nKv8JwrA" role="33vP2m">
        <node concept="YeOm9" id="537nKv8Jx5h" role="2ShVmc">
          <node concept="1Y3b0j" id="537nKv8Jx5k" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="dush:~ModelFactoryType" resolve="ModelFactoryType" />
            <node concept="3Tm1VV" id="537nKv8Jx5l" role="1B3o_S" />
            <node concept="3clFb_" id="537nKv8Jx5m" role="jymVt">
              <property role="1EzhhJ" value="false" />
              <property role="TrG5h" value="getFormatTitle" />
              <property role="DiZV1" value="false" />
              <property role="od$2w" value="false" />
              <node concept="3Tm1VV" id="537nKv8Jx5n" role="1B3o_S" />
              <node concept="2AHcQZ" id="537nKv8Jx5p" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="537nKv8Jx5q" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="537nKv8Jx5r" role="3clF47">
                <node concept="3clFbF" id="537nKv8JxJ2" role="3cqZAp">
                  <node concept="Xl_RD" id="537nKv8JxJ1" role="3clFbG">
                    <property role="Xl_RC" value="IEC61499 Model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="23XkovVq5EI" role="jymVt" />
    <node concept="Wx3nA" id="49FXEugGn3U" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="FBT_FILE_EXT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="49FXEugGmGU" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="49FXEugGnFy" role="33vP2m">
        <property role="Xl_RC" value="fbt" />
      </node>
      <node concept="3Tm1VV" id="13uTNv4nnRy" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="2ByE74k$OOc" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="ADP_FILE_EXT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="2ByE74k$OOd" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="2ByE74k$OOe" role="33vP2m">
        <property role="Xl_RC" value="adp" />
      </node>
      <node concept="3Tm1VV" id="13uTNv4nt$C" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="23XkovVqfsb" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="SUB_FILE_EXT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="23XkovVqfsc" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="23XkovVqfsd" role="33vP2m">
        <property role="Xl_RC" value="app" />
      </node>
      <node concept="3Tm1VV" id="13uTNv4nwQ_" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="23XkovVpUVE" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="RES_FILE_EXT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="23XkovVpUVF" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="23XkovVpUVG" role="33vP2m">
        <property role="Xl_RC" value="res" />
      </node>
      <node concept="3Tm1VV" id="13uTNv4n$Pl" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="23XkovVpZ6d" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="DEV_FILE_EXT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="23XkovVpZ6e" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="23XkovVpZ6f" role="33vP2m">
        <property role="Xl_RC" value="dev" />
      </node>
      <node concept="3Tm1VV" id="13uTNv4nC$g" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="23XkovVqbY6" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="SEG_FILE_EXT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="23XkovVqbY7" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="23XkovVqbY8" role="33vP2m">
        <property role="Xl_RC" value="seg" />
      </node>
      <node concept="3Tm1VV" id="13uTNv4nGYI" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="23XkovVpQv5" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="SYS_FILE_EXT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="23XkovVpQv6" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="23XkovVpQv7" role="33vP2m">
        <property role="Xl_RC" value="sys" />
      </node>
      <node concept="3Tm1VV" id="13uTNv4nHGZ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="23XkovVq348" role="jymVt" />
    <node concept="Wx3nA" id="49FXEugFwPm" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="HEADER_FILE_EXT" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="49FXEugFwuO" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="49FXEugFqxD" role="33vP2m">
        <property role="Xl_RC" value="iec61499" />
      </node>
      <node concept="3Tm1VV" id="7OBD32IcLyJ" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="6ZZUlxDy3iw" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="HEADER_FILE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6ZZUlxDy3ix" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="Xl_RD" id="6ZZUlxDy3iy" role="33vP2m">
        <property role="Xl_RC" value="header.iec61499" />
      </node>
      <node concept="3Tm1VV" id="6ZZUlxDy3iz" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="49FXEugFoZS" role="jymVt">
      <property role="2dlcS1" value="false" />
      <property role="2dld4O" value="false" />
      <property role="TrG5h" value="DST" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="7OBD32Ict0b" role="1B3o_S" />
      <node concept="2YIFZM" id="49FXEugFqdp" role="33vP2m">
        <ref role="37wK5l" to="bxo2:~FileExtensionDataSourceType.of(java.lang.String)" resolve="of" />
        <ref role="1Pybhc" to="bxo2:~FileExtensionDataSourceType" resolve="FileExtensionDataSourceType" />
        <node concept="37vLTw" id="49FXEugFxZO" role="37wK5m">
          <ref role="3cqZAo" node="49FXEugFwPm" resolve="HEADER_FILE_EXT" />
        </node>
      </node>
      <node concept="3uibUv" id="49FXEugFpAE" role="1tU5fm">
        <ref role="3uigEE" to="bxo2:~DataSourceType" resolve="DataSourceType" />
      </node>
    </node>
    <node concept="2tJIrI" id="2ByE74krrQx" role="jymVt" />
    <node concept="3clFb_" id="2ByE74kxB9J" role="jymVt">
      <property role="TrG5h" value="supportedFileExtension" />
      <node concept="3clFbS" id="2ByE74kxB9M" role="3clF47">
        <node concept="3clFbF" id="2ByE74kxETY" role="3cqZAp">
          <node concept="22lmx$" id="1y1FD3r5CaQ" role="3clFbG">
            <node concept="17R0WA" id="1y1FD3r5Daw" role="3uHU7w">
              <node concept="37vLTw" id="1y1FD3r5Dxm" role="3uHU7w">
                <ref role="3cqZAo" node="23XkovVqbY6" resolve="SEG_FILE_EXT" />
              </node>
              <node concept="37vLTw" id="1y1FD3r5CHR" role="3uHU7B">
                <ref role="3cqZAo" node="2ByE74kxCXX" resolve="fileExt" />
              </node>
            </node>
            <node concept="22lmx$" id="23XkovVqXwg" role="3uHU7B">
              <node concept="22lmx$" id="23XkovVqVd8" role="3uHU7B">
                <node concept="22lmx$" id="23XkovVqTsj" role="3uHU7B">
                  <node concept="22lmx$" id="23XkovVqMvK" role="3uHU7B">
                    <node concept="22lmx$" id="2ByE74kxGnx" role="3uHU7B">
                      <node concept="17R0WA" id="2ByE74kxF_F" role="3uHU7B">
                        <node concept="37vLTw" id="2ByE74kxETX" role="3uHU7B">
                          <ref role="3cqZAo" node="2ByE74kxCXX" resolve="fileExt" />
                        </node>
                        <node concept="37vLTw" id="2ByE74k$EAJ" role="3uHU7w">
                          <ref role="3cqZAo" node="49FXEugGn3U" resolve="FBT_FILE_EXT" />
                        </node>
                      </node>
                      <node concept="17R0WA" id="2ByE74kxGxO" role="3uHU7w">
                        <node concept="37vLTw" id="2ByE74kxGxP" role="3uHU7B">
                          <ref role="3cqZAo" node="2ByE74kxCXX" resolve="fileExt" />
                        </node>
                        <node concept="37vLTw" id="2ByE74k$EAM" role="3uHU7w">
                          <ref role="3cqZAo" node="2ByE74k$OOc" resolve="ADP_FILE_EXT" />
                        </node>
                      </node>
                    </node>
                    <node concept="17R0WA" id="23XkovVqNsf" role="3uHU7w">
                      <node concept="37vLTw" id="23XkovVqMYg" role="3uHU7B">
                        <ref role="3cqZAo" node="2ByE74kxCXX" resolve="fileExt" />
                      </node>
                      <node concept="37vLTw" id="23XkovVqS_P" role="3uHU7w">
                        <ref role="3cqZAo" node="23XkovVqfsb" resolve="SUB_FILE_EXT" />
                      </node>
                    </node>
                  </node>
                  <node concept="17R0WA" id="23XkovVqUjr" role="3uHU7w">
                    <node concept="37vLTw" id="23XkovVqTVn" role="3uHU7B">
                      <ref role="3cqZAo" node="2ByE74kxCXX" resolve="fileExt" />
                    </node>
                    <node concept="37vLTw" id="23XkovVqUyC" role="3uHU7w">
                      <ref role="3cqZAo" node="23XkovVpUVE" resolve="RES_FILE_EXT" />
                    </node>
                  </node>
                </node>
                <node concept="17R0WA" id="23XkovVqVGu" role="3uHU7w">
                  <node concept="37vLTw" id="23XkovVqVGv" role="3uHU7B">
                    <ref role="3cqZAo" node="2ByE74kxCXX" resolve="fileExt" />
                  </node>
                  <node concept="37vLTw" id="23XkovVqWvD" role="3uHU7w">
                    <ref role="3cqZAo" node="23XkovVpZ6d" resolve="DEV_FILE_EXT" />
                  </node>
                </node>
              </node>
              <node concept="17R0WA" id="23XkovVqXZu" role="3uHU7w">
                <node concept="37vLTw" id="23XkovVqXZv" role="3uHU7B">
                  <ref role="3cqZAo" node="2ByE74kxCXX" resolve="fileExt" />
                </node>
                <node concept="37vLTw" id="23XkovVqYN0" role="3uHU7w">
                  <ref role="3cqZAo" node="23XkovVpQv5" resolve="SYS_FILE_EXT" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2ByE74kx$Af" role="1B3o_S" />
      <node concept="10P_77" id="2ByE74kxAJm" role="3clF45" />
      <node concept="37vLTG" id="2ByE74kxCXX" role="3clF46">
        <property role="TrG5h" value="fileExt" />
        <node concept="17QB3L" id="2ByE74kxCXW" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2ByE74kxx1d" role="jymVt" />
    <node concept="3clFb_" id="537nKv8JjP1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="supports" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="537nKv8JjP2" role="1B3o_S" />
      <node concept="10P_77" id="537nKv8JjP4" role="3clF45" />
      <node concept="37vLTG" id="537nKv8JjP5" role="3clF46">
        <property role="TrG5h" value="dataSource" />
        <node concept="3uibUv" id="537nKv8JjP6" role="1tU5fm">
          <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
        </node>
        <node concept="2AHcQZ" id="537nKv8JjP7" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="537nKv8JjP8" role="3clF47">
        <node concept="3cpWs6" id="7OBD32HJ9zD" role="3cqZAp">
          <node concept="1Wc70l" id="7OBD32HXzvr" role="3cqZAk">
            <node concept="17R0WA" id="7OBD32HXXe2" role="3uHU7w">
              <node concept="2OqwBi" id="7OBD32HXO36" role="3uHU7B">
                <node concept="liA8E" id="7OBD32HXT4y" role="2OqNvi">
                  <ref role="37wK5l" to="3ju5:~IFile.getName()" resolve="getName" />
                </node>
                <node concept="2OqwBi" id="7OBD32HYisa" role="2Oq$k0">
                  <node concept="1eOMI4" id="7OBD32HYisb" role="2Oq$k0">
                    <node concept="10QFUN" id="7OBD32HYisc" role="1eOMHV">
                      <node concept="3uibUv" id="7OBD32HYisd" role="10QFUM">
                        <ref role="3uigEE" to="ends:~FileDataSource" resolve="FileDataSource" />
                      </node>
                      <node concept="37vLTw" id="7OBD32HYlXp" role="10QFUP">
                        <ref role="3cqZAo" node="537nKv8JjP5" resolve="dataSource" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7OBD32HYisf" role="2OqNvi">
                    <ref role="37wK5l" to="ends:~FileDataSource.getFile()" resolve="getFile" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6ZZUlxDykxO" role="3uHU7w">
                <ref role="3cqZAo" node="6ZZUlxDy3iw" resolve="HEADER_FILE" />
              </node>
            </node>
            <node concept="2ZW3vV" id="7OBD32HXqYu" role="3uHU7B">
              <node concept="3uibUv" id="3Tw7RYam8D9" role="2ZW6by">
                <ref role="3uigEE" to="ends:~FileDataSource" resolve="FileDataSource" />
              </node>
              <node concept="37vLTw" id="7OBD32HXnpz" role="2ZW6bz">
                <ref role="3cqZAo" node="537nKv8JjP5" resolve="dataSource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Tw7RYam2qx" role="3cqZAp" />
      </node>
      <node concept="2AHcQZ" id="537nKv8JjP9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="537nKv8K6bl" role="jymVt" />
    <node concept="3clFb_" id="537nKv8JjQ9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="save" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="537nKv8JjQa" role="1B3o_S" />
      <node concept="3cqZAl" id="537nKv8JjQc" role="3clF45" />
      <node concept="37vLTG" id="537nKv8JjQd" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="537nKv8JjQe" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
        <node concept="2AHcQZ" id="537nKv8JjQf" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="537nKv8JjQg" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="537nKv8JjQh" role="1tU5fm">
          <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
        </node>
        <node concept="2AHcQZ" id="537nKv8JjQi" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="537nKv8JjQj" role="Sfmx6">
        <ref role="3uigEE" to="dush:~UnsupportedDataSourceException" resolve="UnsupportedDataSourceException" />
      </node>
      <node concept="3uibUv" id="537nKv8JjQk" role="Sfmx6">
        <ref role="3uigEE" to="dush:~ModelSaveException" resolve="ModelSaveException" />
      </node>
      <node concept="3uibUv" id="537nKv8JjQl" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3clFbS" id="537nKv8JjQm" role="3clF47">
        <node concept="3clFbF" id="6gadshXPksn" role="3cqZAp">
          <node concept="2OqwBi" id="6gadshXPmiu" role="3clFbG">
            <node concept="2ShNRf" id="6gadshXPksj" role="2Oq$k0">
              <node concept="1pGfFk" id="6gadshXPlHK" role="2ShVmc">
                <ref role="37wK5l" node="6gadshXDKXw" resolve="IEC61499ModelFactory.IEC61499LoadFacitlity" />
                <node concept="Xjq3P" id="6gadshXPlON" role="37wK5m" />
                <node concept="10QFUN" id="6gadshXPwlZ" role="37wK5m">
                  <node concept="3uibUv" id="6gadshXPwIh" role="10QFUM">
                    <ref role="3uigEE" to="dush:~MultiStreamDataSource" resolve="MultiStreamDataSource" />
                  </node>
                  <node concept="37vLTw" id="6gadshXPlWg" role="10QFUP">
                    <ref role="3cqZAo" node="537nKv8JjQg" resolve="source" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6gadshXPmHq" role="2OqNvi">
              <ref role="37wK5l" node="6gadshXDJnS" resolve="writeModel" />
              <node concept="2ShNRf" id="6gadshXPu39" role="37wK5m">
                <node concept="1pGfFk" id="6gadshXPvid" role="2ShVmc">
                  <ref role="37wK5l" to="g3l6:~SModelSimpleHeader.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference)" resolve="SModelSimpleHeader" />
                  <node concept="2OqwBi" id="6gadshXPvJ6" role="37wK5m">
                    <node concept="37vLTw" id="6gadshXPvvQ" role="2Oq$k0">
                      <ref role="3cqZAo" node="537nKv8JjQd" resolve="model" />
                    </node>
                    <node concept="liA8E" id="6gadshXPwbX" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SModel.getReference()" resolve="getReference" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="6gadshXPsz0" role="37wK5m">
                <node concept="1eOMI4" id="6gadshXPsz1" role="2Oq$k0">
                  <node concept="10QFUN" id="6gadshXPsz2" role="1eOMHV">
                    <node concept="37vLTw" id="6gadshXPsz3" role="10QFUP">
                      <ref role="3cqZAo" node="537nKv8JjQd" resolve="model" />
                    </node>
                    <node concept="3uibUv" id="3uYXhT8l58s" role="10QFUM">
                      <ref role="3uigEE" node="6gadshXBR2S" resolve="CustomPersistenceModelWithHeader0" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6gadshXPsz5" role="2OqNvi">
                  <ref role="37wK5l" to="g3l6:~SModelBase.getModelData()" resolve="getModelData" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="537nKv8JjQn" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="537nKv8Jqi5" role="jymVt" />
    <node concept="3clFb_" id="537nKv8JjR0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getType" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="537nKv8JjR1" role="1B3o_S" />
      <node concept="2AHcQZ" id="537nKv8JjR3" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="537nKv8JjR4" role="3clF45">
        <ref role="3uigEE" to="dush:~ModelFactoryType" resolve="ModelFactoryType" />
      </node>
      <node concept="3clFbS" id="537nKv8JjR5" role="3clF47">
        <node concept="3clFbF" id="537nKv8JjR8" role="3cqZAp">
          <node concept="37vLTw" id="537nKv8JxVK" role="3clFbG">
            <ref role="3cqZAo" node="537nKv8Jv8F" resolve="TYPE" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="537nKv8JjR6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="537nKv8JqLJ" role="jymVt" />
    <node concept="3clFb_" id="537nKv8JjR9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPreferredDataSourceTypes" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="537nKv8JjRa" role="1B3o_S" />
      <node concept="2AHcQZ" id="537nKv8JjRc" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="537nKv8JjRd" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="537nKv8JjRe" role="11_B2D">
          <ref role="3uigEE" to="bxo2:~DataSourceType" resolve="DataSourceType" />
        </node>
      </node>
      <node concept="3clFbS" id="537nKv8JjRf" role="3clF47">
        <node concept="3cpWs6" id="537nKv8JMBE" role="3cqZAp">
          <node concept="2YIFZM" id="1iLWb34bJX4" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Arrays.asList(java.lang.Object...)" resolve="asList" />
            <ref role="1Pybhc" to="33ny:~Arrays" resolve="Arrays" />
            <node concept="37vLTw" id="1iLWb34bJX5" role="37wK5m">
              <ref role="3cqZAo" node="49FXEugFoZS" resolve="DST" />
            </node>
            <node concept="3uibUv" id="1iLWb34bJX6" role="3PaCim">
              <ref role="3uigEE" to="bxo2:~DataSourceType" resolve="DataSourceType" />
            </node>
            <node concept="10M0yZ" id="1iLWb34bMJw" role="37wK5m">
              <ref role="3cqZAo" node="6gadshXAvB6" resolve="TYPE" />
              <ref role="1PxDUh" node="6gadshXrOh5" resolve="RecursiveFolderDataSource" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="537nKv8JjRg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="537nKv8J$W8" role="jymVt" />
    <node concept="3clFb_" id="537nKv8JjOh" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="create" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="537nKv8JjOi" role="1B3o_S" />
      <node concept="2AHcQZ" id="537nKv8JjOo" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="537nKv8JjOs" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
      <node concept="37vLTG" id="537nKv8JjOt" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="537nKv8JjOu" role="1tU5fm">
          <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
        </node>
        <node concept="2AHcQZ" id="537nKv8JjOv" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4A2f9iln_kI" role="3clF46">
        <property role="TrG5h" value="modelName" />
        <node concept="3uibUv" id="4A2f9iln_kH" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelName" resolve="SModelName" />
        </node>
        <node concept="2AHcQZ" id="4A2f9iln_kJ" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="537nKv8JjOw" role="3clF46">
        <property role="TrG5h" value="options" />
        <node concept="8X2XB" id="4A2f9ilokZZ" role="1tU5fm">
          <node concept="3uibUv" id="537nKv8JjOx" role="8Xvag">
            <ref role="3uigEE" to="dush:~ModelLoadingOption" resolve="ModelLoadingOption" />
          </node>
        </node>
        <node concept="2AHcQZ" id="537nKv8JjO$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="4A2f9iln_kO" role="Sfmx6">
        <ref role="3uigEE" to="dush:~UnsupportedDataSourceException" resolve="UnsupportedDataSourceException" />
      </node>
      <node concept="3uibUv" id="4A2f9iln_kP" role="Sfmx6">
        <ref role="3uigEE" to="dush:~ModelCreationException" resolve="ModelCreationException" />
      </node>
      <node concept="3clFbS" id="537nKv8JjOA" role="3clF47">
        <node concept="3cpWs8" id="49FXEugGV0u" role="3cqZAp">
          <node concept="3cpWsn" id="49FXEugGV0v" role="3cpWs9">
            <property role="TrG5h" value="headerFile" />
            <node concept="3uibUv" id="49FXEugGV0w" role="1tU5fm">
              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
            </node>
            <node concept="1rXfSq" id="49FXEugGVlu" role="33vP2m">
              <ref role="37wK5l" node="7OBD32HJZ0F" resolve="extractFile" />
              <node concept="37vLTw" id="49FXEugGVIP" role="37wK5m">
                <ref role="3cqZAo" node="537nKv8JjOt" resolve="source" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gadshXQ03Q" role="3cqZAp">
          <node concept="37vLTI" id="6gadshXQ03R" role="3clFbG">
            <node concept="2ShNRf" id="6gadshXQ03S" role="37vLTx">
              <node concept="1pGfFk" id="6gadshXQ03T" role="2ShVmc">
                <ref role="37wK5l" node="6gadshXrO_Q" resolve="RecursiveFolderDataSource" />
                <node concept="2OqwBi" id="6gadshXQ03U" role="37wK5m">
                  <node concept="37vLTw" id="6gadshXQ03V" role="2Oq$k0">
                    <ref role="3cqZAo" node="49FXEugGV0v" resolve="headerFile" />
                  </node>
                  <node concept="liA8E" id="6gadshXQ03W" role="2OqNvi">
                    <ref role="37wK5l" to="3ju5:~IFile.getParent()" resolve="getParent" />
                  </node>
                </node>
                <node concept="1bVj0M" id="6gadshXQ03X" role="37wK5m">
                  <node concept="3clFbS" id="6gadshXQ03Y" role="1bW5cS">
                    <node concept="3clFbF" id="6gadshXQ03Z" role="3cqZAp">
                      <node concept="22lmx$" id="25SV04QfNRA" role="3clFbG">
                        <node concept="17R0WA" id="25SV04QfPRS" role="3uHU7B">
                          <node concept="10M0yZ" id="25SV04QfR05" role="3uHU7w">
                            <ref role="3cqZAo" node="6ZZUlxDy3iw" resolve="HEADER_FILE" />
                            <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
                          </node>
                          <node concept="2OqwBi" id="25SV04QfOIe" role="3uHU7B">
                            <node concept="37vLTw" id="25SV04QfOm1" role="2Oq$k0">
                              <ref role="3cqZAo" node="6gadshXQ045" resolve="file" />
                            </node>
                            <node concept="liA8E" id="25SV04QfOXM" role="2OqNvi">
                              <ref role="37wK5l" to="3ju5:~IFile.getName()" resolve="getName" />
                            </node>
                          </node>
                        </node>
                        <node concept="1rXfSq" id="6gadshXQ040" role="3uHU7w">
                          <ref role="37wK5l" node="2ByE74kxB9J" resolve="supportedFileExtension" />
                          <node concept="2YIFZM" id="6gadshXQ041" role="37wK5m">
                            <ref role="37wK5l" to="snbe:~FileUtilRt.getExtension(java.lang.String)" resolve="getExtension" />
                            <ref role="1Pybhc" to="snbe:~FileUtilRt" resolve="FileUtilRt" />
                            <node concept="2OqwBi" id="6gadshXQ042" role="37wK5m">
                              <node concept="37vLTw" id="6gadshXQ043" role="2Oq$k0">
                                <ref role="3cqZAo" node="6gadshXQ045" resolve="file" />
                              </node>
                              <node concept="liA8E" id="6gadshXQ044" role="2OqNvi">
                                <ref role="37wK5l" to="3ju5:~IFile.getName()" resolve="getName" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="6gadshXQ045" role="1bW2Oz">
                    <property role="TrG5h" value="file" />
                    <node concept="3uibUv" id="6gadshXQ046" role="1tU5fm">
                      <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6gadshXQ047" role="37vLTJ">
              <ref role="3cqZAo" node="537nKv8JjOt" resolve="source" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7OBD32HIxzE" role="3cqZAp" />
        <node concept="3cpWs8" id="7OBD32HIpGd" role="3cqZAp">
          <node concept="3cpWsn" id="7OBD32HIpGe" role="3cpWs9">
            <property role="TrG5h" value="modelId" />
            <node concept="3uibUv" id="7OBD32HIpGf" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~SModelId" resolve="SModelId" />
            </node>
            <node concept="2YIFZM" id="7OBD32HIu5Z" role="33vP2m">
              <ref role="37wK5l" to="w1kc:~SModelId.generate()" resolve="generate" />
              <ref role="1Pybhc" to="w1kc:~SModelId" resolve="SModelId" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="49FXEugH4J5" role="3cqZAp">
          <node concept="3clFbS" id="49FXEugH4J7" role="3clFbx">
            <node concept="YS8fn" id="49FXEugH7cR" role="3cqZAp">
              <node concept="2ShNRf" id="49FXEugH7g8" role="YScLw">
                <node concept="1pGfFk" id="49FXEugH7H_" role="2ShVmc">
                  <ref role="37wK5l" to="dush:~ModelCreationException.&lt;init&gt;(java.lang.String,java.util.List)" resolve="ModelCreationException" />
                  <node concept="3cpWs3" id="49FXEugHa1W" role="37wK5m">
                    <node concept="Xl_RD" id="49FXEugHauh" role="3uHU7w">
                      <property role="Xl_RC" value=" with empty name" />
                    </node>
                    <node concept="3cpWs3" id="49FXEugH8Yx" role="3uHU7B">
                      <node concept="Xl_RD" id="49FXEugH7Ru" role="3uHU7B">
                        <property role="Xl_RC" value="Can not create model from " />
                      </node>
                      <node concept="2OqwBi" id="49FXEugH9en" role="3uHU7w">
                        <node concept="37vLTw" id="49FXEugH92D" role="2Oq$k0">
                          <ref role="3cqZAo" node="49FXEugGV0v" resolve="headerFile" />
                        </node>
                        <node concept="liA8E" id="49FXEugH9v6" role="2OqNvi">
                          <ref role="37wK5l" to="3ju5:~IFile.getParent()" resolve="getParent" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2YIFZM" id="4A2f9iloAxG" role="37wK5m">
                    <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <node concept="3uibUv" id="4A2f9iloCuN" role="3PaCim">
                      <ref role="3uigEE" to="mhbf:~SModel$Problem" resolve="SModel.Problem" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="49FXEugH6fY" role="3clFbw">
            <node concept="2OqwBi" id="4A2f9iloHSp" role="2Oq$k0">
              <node concept="37vLTw" id="4A2f9iloH86" role="2Oq$k0">
                <ref role="3cqZAo" node="4A2f9iln_kI" resolve="modelName" />
              </node>
              <node concept="liA8E" id="4A2f9iloI__" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SModelName.getValue()" resolve="getValue" />
              </node>
            </node>
            <node concept="17RlXB" id="49FXEugH71R" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbH" id="7OBD32HIGwX" role="3cqZAp" />
        <node concept="3cpWs8" id="49FXEugGWJj" role="3cqZAp">
          <node concept="3cpWsn" id="49FXEugGWJk" role="3cpWs9">
            <property role="TrG5h" value="ref" />
            <node concept="3uibUv" id="49FXEugGWJl" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
            </node>
            <node concept="2OqwBi" id="49FXEugGXpr" role="33vP2m">
              <node concept="2YIFZM" id="6gadshXIs_D" role="2Oq$k0">
                <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
              </node>
              <node concept="liA8E" id="49FXEugGXS0" role="2OqNvi">
                <ref role="37wK5l" to="dush:~PersistenceFacade.createModelReference(org.jetbrains.mps.openapi.module.SModuleReference,org.jetbrains.mps.openapi.model.SModelId,org.jetbrains.mps.openapi.model.SModelName)" resolve="createModelReference" />
                <node concept="10Nm6u" id="49FXEugGYhr" role="37wK5m" />
                <node concept="37vLTw" id="7OBD32HIDjX" role="37wK5m">
                  <ref role="3cqZAo" node="7OBD32HIpGe" resolve="modelId" />
                </node>
                <node concept="37vLTw" id="4A2f9iloJhO" role="37wK5m">
                  <ref role="3cqZAo" node="4A2f9iln_kI" resolve="modelName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6kvdbYucdJ8" role="3cqZAp">
          <node concept="2ShNRf" id="6gadshXIFdC" role="3cqZAk">
            <node concept="1pGfFk" id="6gadshXL1bN" role="2ShVmc">
              <ref role="37wK5l" node="6gadshXBR48" resolve="CustomPersistenceModelWithHeader0" />
              <node concept="2ShNRf" id="6gadshXLdcs" role="37wK5m">
                <node concept="1pGfFk" id="6gadshXLh$Z" role="2ShVmc">
                  <ref role="37wK5l" node="7OBD32HKFSn" resolve="IEC61499ModelHeader" />
                  <node concept="37vLTw" id="6gadshXLiyn" role="37wK5m">
                    <ref role="3cqZAo" node="49FXEugGWJk" resolve="ref" />
                  </node>
                  <node concept="2YIFZM" id="6gadshXLlhl" role="37wK5m">
                    <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                    <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                    <node concept="3uibUv" id="6gadshXLqAI" role="3PaCim">
                      <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="6gadshXL4Zn" role="37wK5m">
                <ref role="3cqZAo" node="537nKv8JjOt" resolve="source" />
              </node>
              <node concept="2ShNRf" id="6gadshXL4Zo" role="37wK5m">
                <node concept="1pGfFk" id="6gadshXL4Zp" role="2ShVmc">
                  <ref role="37wK5l" node="6gadshXDKXw" resolve="IEC61499ModelFactory.IEC61499LoadFacitlity" />
                  <node concept="Xjq3P" id="6gadshXL4Zq" role="37wK5m" />
                  <node concept="10QFUN" id="6gadshXL4Zr" role="37wK5m">
                    <node concept="3uibUv" id="6gadshXL4Zs" role="10QFUM">
                      <ref role="3uigEE" to="dush:~MultiStreamDataSource" resolve="MultiStreamDataSource" />
                    </node>
                    <node concept="37vLTw" id="6gadshXL4Zt" role="10QFUP">
                      <ref role="3cqZAo" node="537nKv8JjOt" resolve="source" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="537nKv8JjOB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4A2f9ilpgEF" role="jymVt" />
    <node concept="3clFb_" id="49FXEugHkVD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="load" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="49FXEugHkVE" role="1B3o_S" />
      <node concept="2AHcQZ" id="49FXEugHkVK" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="49FXEugHkVO" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
      </node>
      <node concept="37vLTG" id="49FXEugHkVP" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="49FXEugHkVQ" role="1tU5fm">
          <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
        </node>
        <node concept="2AHcQZ" id="49FXEugHkVR" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="4A2f9ilplnZ" role="3clF46">
        <property role="TrG5h" value="options" />
        <node concept="8X2XB" id="4A2f9ilplo0" role="1tU5fm">
          <node concept="3uibUv" id="4A2f9ilplo1" role="8Xvag">
            <ref role="3uigEE" to="dush:~ModelLoadingOption" resolve="ModelLoadingOption" />
          </node>
        </node>
        <node concept="2AHcQZ" id="4A2f9ilplo2" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="4A2f9iln_l3" role="Sfmx6">
        <ref role="3uigEE" to="dush:~UnsupportedDataSourceException" resolve="UnsupportedDataSourceException" />
      </node>
      <node concept="3uibUv" id="4A2f9iln_l4" role="Sfmx6">
        <ref role="3uigEE" to="dush:~ModelLoadException" resolve="ModelLoadException" />
      </node>
      <node concept="3clFbS" id="49FXEugHkVY" role="3clF47">
        <node concept="3clFbJ" id="6gadshXGL0P" role="3cqZAp">
          <node concept="3clFbS" id="6gadshXGL0R" role="3clFbx">
            <node concept="3cpWs8" id="6gadshXGYjg" role="3cqZAp">
              <node concept="3cpWsn" id="6gadshXGYjh" role="3cpWs9">
                <property role="TrG5h" value="headerFile" />
                <node concept="3uibUv" id="6gadshXGXJ_" role="1tU5fm">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
                <node concept="1rXfSq" id="6gadshXGYji" role="33vP2m">
                  <ref role="37wK5l" node="7OBD32HJZ0F" resolve="extractFile" />
                  <node concept="37vLTw" id="6gadshXGYjj" role="37wK5m">
                    <ref role="3cqZAo" node="49FXEugHkVP" resolve="source" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gadshXGRcW" role="3cqZAp">
              <node concept="37vLTI" id="6gadshXGSNj" role="3clFbG">
                <node concept="2ShNRf" id="6gadshXH1tz" role="37vLTx">
                  <node concept="1pGfFk" id="6gadshXH32r" role="2ShVmc">
                    <ref role="37wK5l" node="6gadshXrO_Q" resolve="RecursiveFolderDataSource" />
                    <node concept="2OqwBi" id="6gadshXH015" role="37wK5m">
                      <node concept="37vLTw" id="6gadshXGYjk" role="2Oq$k0">
                        <ref role="3cqZAo" node="6gadshXGYjh" resolve="headerFile" />
                      </node>
                      <node concept="liA8E" id="6gadshXH0$$" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.getParent()" resolve="getParent" />
                      </node>
                    </node>
                    <node concept="1bVj0M" id="6gadshXHc1l" role="37wK5m">
                      <node concept="3clFbS" id="6gadshXHc1n" role="1bW5cS">
                        <node concept="3clFbF" id="6gadshXHqO9" role="3cqZAp">
                          <node concept="22lmx$" id="25SV04QfRA4" role="3clFbG">
                            <node concept="1rXfSq" id="6gadshXHqO6" role="3uHU7w">
                              <ref role="37wK5l" node="2ByE74kxB9J" resolve="supportedFileExtension" />
                              <node concept="2YIFZM" id="6gadshXHrIJ" role="37wK5m">
                                <ref role="1Pybhc" to="snbe:~FileUtilRt" resolve="FileUtilRt" />
                                <ref role="37wK5l" to="snbe:~FileUtilRt.getExtension(java.lang.String)" resolve="getExtension" />
                                <node concept="2OqwBi" id="6gadshXHrIK" role="37wK5m">
                                  <node concept="37vLTw" id="6gadshXHrIL" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6gadshXHcwN" resolve="file" />
                                  </node>
                                  <node concept="liA8E" id="6gadshXHrIM" role="2OqNvi">
                                    <ref role="37wK5l" to="3ju5:~IFile.getName()" resolve="getName" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="17R0WA" id="25SV04QfRZB" role="3uHU7B">
                              <node concept="37vLTw" id="25SV04QfRZJ" role="3uHU7w">
                                <ref role="3cqZAo" node="6ZZUlxDy3iw" resolve="HEADER_FILE" />
                              </node>
                              <node concept="2OqwBi" id="25SV04QfRZD" role="3uHU7B">
                                <node concept="37vLTw" id="25SV04QfRZE" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6gadshXHcwN" resolve="file" />
                                </node>
                                <node concept="liA8E" id="25SV04QfRZF" role="2OqNvi">
                                  <ref role="37wK5l" to="3ju5:~IFile.getName()" resolve="getName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="6gadshXHcwN" role="1bW2Oz">
                        <property role="TrG5h" value="file" />
                        <node concept="3uibUv" id="6gadshXHcwM" role="1tU5fm">
                          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="6gadshXGRcU" role="37vLTJ">
                  <ref role="3cqZAo" node="49FXEugHkVP" resolve="source" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6gadshXGTHv" role="3clFbw">
            <node concept="2ZW3vV" id="6gadshXGVlu" role="3uHU7w">
              <node concept="3uibUv" id="6gadshXHsML" role="2ZW6by">
                <ref role="3uigEE" to="ends:~FileDataSource" resolve="FileDataSource" />
              </node>
              <node concept="37vLTw" id="6gadshXGUw4" role="2ZW6bz">
                <ref role="3cqZAo" node="49FXEugHkVP" resolve="source" />
              </node>
            </node>
            <node concept="17R0WA" id="6gadshXGPDX" role="3uHU7B">
              <node concept="2OqwBi" id="6gadshXGOqO" role="3uHU7B">
                <node concept="37vLTw" id="6gadshXGO4R" role="2Oq$k0">
                  <ref role="3cqZAo" node="49FXEugHkVP" resolve="source" />
                </node>
                <node concept="liA8E" id="6gadshXGPab" role="2OqNvi">
                  <ref role="37wK5l" to="dush:~DataSource.getType()" resolve="getType" />
                </node>
              </node>
              <node concept="37vLTw" id="6gadshXGQvD" role="3uHU7w">
                <ref role="3cqZAo" node="49FXEugFoZS" resolve="DST" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Kgmn0bBSDJ" role="3cqZAp">
          <node concept="2YIFZM" id="6gadshXHGV9" role="3cqZAk">
            <ref role="1Pybhc" node="6gadshXBR2S" resolve="CustomPersistenceModelWithHeader0" />
            <ref role="37wK5l" node="6gadshXBR4w" resolve="readHeaderAndCreate" />
            <node concept="37vLTw" id="6gadshXHWFz" role="37wK5m">
              <ref role="3cqZAo" node="49FXEugHkVP" resolve="source" />
            </node>
            <node concept="2ShNRf" id="6gadshXI3d3" role="37wK5m">
              <node concept="1pGfFk" id="6gadshXI76n" role="2ShVmc">
                <ref role="37wK5l" node="6gadshXDKXw" resolve="IEC61499ModelFactory.IEC61499LoadFacitlity" />
                <node concept="Xjq3P" id="6gadshXIasl" role="37wK5m" />
                <node concept="10QFUN" id="6gadshXIfGf" role="37wK5m">
                  <node concept="3uibUv" id="6gadshXIinq" role="10QFUM">
                    <ref role="3uigEE" to="dush:~MultiStreamDataSource" resolve="MultiStreamDataSource" />
                  </node>
                  <node concept="37vLTw" id="6gadshXIcNU" role="10QFUP">
                    <ref role="3cqZAo" node="49FXEugHkVP" resolve="source" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="49FXEugHkVZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="537nKv8J$Z1" role="jymVt" />
    <node concept="3clFb_" id="7OBD32HJZ0F" role="jymVt">
      <property role="TrG5h" value="extractFile" />
      <node concept="3clFbS" id="7OBD32HJZ0H" role="3clF47">
        <node concept="3clFbF" id="7OBD32HK44b" role="3cqZAp">
          <node concept="1rXfSq" id="7OBD32HK449" role="3clFbG">
            <ref role="37wK5l" node="7OBD32HJvZa" resolve="assertSupports" />
            <node concept="37vLTw" id="7OBD32HK8l9" role="37wK5m">
              <ref role="3cqZAo" node="7OBD32HJZ15" resolve="source" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7OBD32HK8RN" role="3cqZAp" />
        <node concept="3cpWs6" id="7OBD32HJZ0Y" role="3cqZAp">
          <node concept="2OqwBi" id="7OBD32HJZ0Z" role="3cqZAk">
            <node concept="1eOMI4" id="7OBD32HKw0c" role="2Oq$k0">
              <node concept="10QFUN" id="7OBD32HKzGG" role="1eOMHV">
                <node concept="3uibUv" id="7OBD32HKBEB" role="10QFUM">
                  <ref role="3uigEE" to="ends:~FileDataSource" resolve="FileDataSource" />
                </node>
                <node concept="37vLTw" id="7OBD32HJZ12" role="10QFUP">
                  <ref role="3cqZAo" node="7OBD32HJZ15" resolve="source" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7OBD32HJZ13" role="2OqNvi">
              <ref role="37wK5l" to="ends:~FileDataSource.getFile()" resolve="getFile" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7OBD32HJZ17" role="3clF45">
        <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
      </node>
      <node concept="2AHcQZ" id="7OBD32HJZ18" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="7OBD32HJZ15" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="7OBD32HJZ16" role="1tU5fm">
          <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7OBD32HJZ14" role="1B3o_S" />
      <node concept="3uibUv" id="7OBD32HKhv9" role="Sfmx6">
        <ref role="3uigEE" to="dush:~UnsupportedDataSourceException" resolve="UnsupportedDataSourceException" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32HJGk4" role="jymVt" />
    <node concept="2YIFZL" id="6gadshXMmff" role="jymVt">
      <property role="TrG5h" value="saveFailed" />
      <node concept="3clFbS" id="6gadshXMmfh" role="3clF47">
        <node concept="YS8fn" id="6gadshXMmfi" role="3cqZAp">
          <node concept="2ShNRf" id="6gadshXMmfj" role="YScLw">
            <node concept="1pGfFk" id="6gadshXMmfk" role="2ShVmc">
              <ref role="37wK5l" to="dush:~ModelSaveException.&lt;init&gt;(java.lang.String,java.lang.Iterable)" resolve="ModelSaveException" />
              <node concept="3cpWs3" id="6gadshXMmfl" role="37wK5m">
                <node concept="37vLTw" id="6gadshXMmfm" role="3uHU7w">
                  <ref role="3cqZAo" node="6gadshXMmfx" resolve="errorMessage" />
                </node>
                <node concept="Xl_RD" id="6gadshXMmfn" role="3uHU7B">
                  <property role="Xl_RC" value="Failed to save model: " />
                </node>
              </node>
              <node concept="2YIFZM" id="6gadshXMmfo" role="37wK5m">
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
                <node concept="2ShNRf" id="6gadshXMmfp" role="37wK5m">
                  <node concept="1pGfFk" id="6gadshXMmfq" role="2ShVmc">
                    <ref role="37wK5l" to="g3l6:~PersistenceProblem.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel$Problem$Kind,java.lang.String,java.lang.String,boolean)" resolve="PersistenceProblem" />
                    <node concept="Rm8GO" id="6gadshXMmfr" role="37wK5m">
                      <ref role="1Px2BO" to="mhbf:~SModel$Problem$Kind" resolve="SModel.Problem.Kind" />
                      <ref role="Rm8GQ" to="mhbf:~SModel$Problem$Kind.Save" resolve="Save" />
                    </node>
                    <node concept="37vLTw" id="6gadshXMmfs" role="37wK5m">
                      <ref role="3cqZAo" node="6gadshXMmfx" resolve="errorMessage" />
                    </node>
                    <node concept="10Nm6u" id="6gadshXMmft" role="37wK5m" />
                    <node concept="3clFbT" id="6gadshXMmfu" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6gadshXMmfv" role="3clF45" />
      <node concept="3uibUv" id="6gadshXMmfw" role="Sfmx6">
        <ref role="3uigEE" to="dush:~ModelSaveException" resolve="ModelSaveException" />
      </node>
      <node concept="37vLTG" id="6gadshXMmfx" role="3clF46">
        <property role="TrG5h" value="errorMessage" />
        <node concept="3uibUv" id="6gadshXMmfy" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32HJJOo" role="jymVt" />
    <node concept="3clFb_" id="7OBD32HJvZa" role="jymVt">
      <property role="TrG5h" value="assertSupports" />
      <node concept="3clFbS" id="7OBD32HJvZc" role="3clF47">
        <node concept="3clFbJ" id="7OBD32HJvZd" role="3cqZAp">
          <node concept="3clFbS" id="7OBD32HJvZe" role="3clFbx">
            <node concept="YS8fn" id="7OBD32HJvZf" role="3cqZAp">
              <node concept="2ShNRf" id="7OBD32HJvZg" role="YScLw">
                <node concept="1pGfFk" id="7OBD32HJvZh" role="2ShVmc">
                  <ref role="37wK5l" to="dush:~UnsupportedDataSourceException.&lt;init&gt;(org.jetbrains.mps.openapi.persistence.DataSource)" resolve="UnsupportedDataSourceException" />
                  <node concept="37vLTw" id="7OBD32HJvZi" role="37wK5m">
                    <ref role="3cqZAo" node="7OBD32HJvZo" resolve="source" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3fqX7Q" id="7OBD32HJvZj" role="3clFbw">
            <node concept="1rXfSq" id="7OBD32HJvZk" role="3fr31v">
              <ref role="37wK5l" node="537nKv8JjP1" resolve="supports" />
              <node concept="37vLTw" id="7OBD32HJvZl" role="37wK5m">
                <ref role="3cqZAo" node="7OBD32HJvZo" resolve="source" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7OBD32HJvZm" role="3clF45" />
      <node concept="3uibUv" id="7OBD32HJvZn" role="Sfmx6">
        <ref role="3uigEE" to="dush:~UnsupportedDataSourceException" resolve="UnsupportedDataSourceException" />
      </node>
      <node concept="37vLTG" id="7OBD32HJvZo" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="7OBD32HJvZp" role="1tU5fm">
          <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
        </node>
        <node concept="2AHcQZ" id="7OBD32HJvZq" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7OBD32HJvZr" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="49FXEugFAqD" role="jymVt" />
    <node concept="3clFb_" id="537nKv8JjPN" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="needsUpgrade" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="537nKv8JjPO" role="1B3o_S" />
      <node concept="10P_77" id="537nKv8JjPQ" role="3clF45" />
      <node concept="37vLTG" id="537nKv8JjPR" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="537nKv8JjPS" role="1tU5fm">
          <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
        </node>
        <node concept="2AHcQZ" id="537nKv8JjPT" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="537nKv8JjPU" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3clFbS" id="537nKv8JjPV" role="3clF47">
        <node concept="3clFbF" id="537nKv8JjPY" role="3cqZAp">
          <node concept="3clFbT" id="537nKv8JjPX" role="3clFbG" />
        </node>
      </node>
      <node concept="2AHcQZ" id="537nKv8JjPW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="43K6Fb_YfJv" role="jymVt" />
    <node concept="3Tm1VV" id="537nKv8IlHF" role="1B3o_S" />
    <node concept="3clFb_" id="43K6Fb_YgVL" role="jymVt">
      <property role="TrG5h" value="getNodeLocation" />
      <node concept="3Tm1VV" id="43K6Fb_YgVM" role="1B3o_S" />
      <node concept="2AHcQZ" id="43K6Fb_YgVO" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="43K6Fb_YgVP" role="3clF45">
        <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
      </node>
      <node concept="37vLTG" id="43K6Fb_YgVQ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3uibUv" id="43K6FbA0w$e" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
        </node>
        <node concept="2AHcQZ" id="43K6Fb_YgVS" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="43K6Fb_YgVY" role="3clF47">
        <node concept="3cpWs8" id="43K6Fb_YjrH" role="3cqZAp">
          <node concept="3cpWsn" id="43K6Fb_YjrI" role="3cpWs9">
            <property role="TrG5h" value="source" />
            <node concept="3uibUv" id="43K6Fb_Ynu4" role="1tU5fm">
              <ref role="3uigEE" node="6gadshXrOh5" resolve="RecursiveFolderDataSource" />
            </node>
            <node concept="1eOMI4" id="43K6Fb_YmDX" role="33vP2m">
              <node concept="10QFUN" id="43K6Fb_Yn0e" role="1eOMHV">
                <node concept="3uibUv" id="43K6Fb_YnnK" role="10QFUM">
                  <ref role="3uigEE" node="6gadshXrOh5" resolve="RecursiveFolderDataSource" />
                </node>
                <node concept="2OqwBi" id="43K6Fb_Ym2K" role="10QFUP">
                  <node concept="2OqwBi" id="43K6Fb_YjrJ" role="2Oq$k0">
                    <node concept="37vLTw" id="43K6Fb_YjrK" role="2Oq$k0">
                      <ref role="3cqZAo" node="43K6Fb_YgVQ" resolve="node" />
                    </node>
                    <node concept="liA8E" id="43K6Fb_YjrL" role="2OqNvi">
                      <ref role="37wK5l" to="mhbf:~SNode.getModel()" resolve="getModel" />
                    </node>
                  </node>
                  <node concept="liA8E" id="43K6Fb_Ymp3" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getSource()" resolve="getSource" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6xavLpnCIHC" role="3cqZAp">
          <node concept="3cpWsn" id="6xavLpnCIHD" role="3cpWs9">
            <property role="TrG5h" value="packageName" />
            <node concept="17QB3L" id="6xavLpnCIeX" role="1tU5fm" />
            <node concept="2OqwBi" id="6xavLpnCIHE" role="33vP2m">
              <node concept="1eOMI4" id="6xavLpnCIHF" role="2Oq$k0">
                <node concept="10QFUN" id="6xavLpnCIHG" role="1eOMHV">
                  <node concept="3Tqbb2" id="6xavLpnCIHH" role="10QFUM" />
                  <node concept="37vLTw" id="6xavLpnCIHI" role="10QFUP">
                    <ref role="3cqZAo" node="43K6Fb_YgVQ" resolve="node" />
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="6xavLpnCIHJ" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6xavLpnCJvz" role="3cqZAp">
          <node concept="3clFbS" id="6xavLpnCJv_" role="3clFbx">
            <node concept="3clFbF" id="6xavLpnCKbq" role="3cqZAp">
              <node concept="37vLTI" id="6xavLpnCKhq" role="3clFbG">
                <node concept="Xl_RD" id="6xavLpnCKn3" role="37vLTx">
                  <property role="Xl_RC" value="" />
                </node>
                <node concept="37vLTw" id="6xavLpnCKbo" role="37vLTJ">
                  <ref role="3cqZAo" node="6xavLpnCIHD" resolve="packageName" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="6xavLpnCJSR" role="3clFbw">
            <node concept="10Nm6u" id="6xavLpnCJY7" role="3uHU7w" />
            <node concept="37vLTw" id="6xavLpnCJG_" role="3uHU7B">
              <ref role="3cqZAo" node="6xavLpnCIHD" resolve="packageName" />
            </node>
          </node>
          <node concept="9aQIb" id="6xavLpnCKsl" role="9aQIa">
            <node concept="3clFbS" id="6xavLpnCKsm" role="9aQI4">
              <node concept="3clFbF" id="6xavLpnCKD6" role="3cqZAp">
                <node concept="d57v9" id="6xavLpnCKNz" role="3clFbG">
                  <node concept="Xl_RD" id="6xavLpnCKTL" role="37vLTx">
                    <property role="Xl_RC" value="." />
                  </node>
                  <node concept="37vLTw" id="6xavLpnCKD5" role="37vLTJ">
                    <ref role="3cqZAo" node="6xavLpnCIHD" resolve="packageName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="43K6Fb_YnP_" role="3cqZAp">
          <node concept="2OqwBi" id="43K6Fb_Yohr" role="3clFbG">
            <node concept="37vLTw" id="43K6Fb_YnPz" role="2Oq$k0">
              <ref role="3cqZAo" node="43K6Fb_YjrI" resolve="source" />
            </node>
            <node concept="liA8E" id="43K6Fb_Yp3i" role="2OqNvi">
              <ref role="37wK5l" to="dush:~MultiStreamDataSource.getStreamByName(java.lang.String)" resolve="getStreamByName" />
              <node concept="3cpWs3" id="43K6Fb_YTTt" role="37wK5m">
                <node concept="1rXfSq" id="43K6FbA1cjh" role="3uHU7w">
                  <ref role="37wK5l" node="43K6Fb_ZIIO" resolve="getExtensionOfSource" />
                  <node concept="37vLTw" id="43K6FbA1dmJ" role="37wK5m">
                    <ref role="3cqZAo" node="43K6Fb_YgVQ" resolve="node" />
                  </node>
                </node>
                <node concept="3cpWs3" id="43K6FbA1fw0" role="3uHU7B">
                  <node concept="Xl_RD" id="43K6FbA1g$F" role="3uHU7w">
                    <property role="Xl_RC" value="." />
                  </node>
                  <node concept="3cpWs3" id="6xavLpnCLFM" role="3uHU7B">
                    <node concept="2OqwBi" id="6xavLpnCM8d" role="3uHU7w">
                      <node concept="37vLTw" id="6xavLpnCLPG" role="2Oq$k0">
                        <ref role="3cqZAo" node="43K6Fb_YgVQ" resolve="node" />
                      </node>
                      <node concept="liA8E" id="6xavLpnCMGD" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SNode.getName()" resolve="getName" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="6xavLpnCLln" role="3uHU7B">
                      <ref role="3cqZAo" node="6xavLpnCIHD" resolve="packageName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="43K6Fb_YgVZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="43K6FbA0HY3" role="jymVt" />
    <node concept="3clFb_" id="43K6FbA0NCt" role="jymVt">
      <property role="TrG5h" value="getMetaInfoLocation" />
      <node concept="3Tm1VV" id="43K6FbA0NCu" role="1B3o_S" />
      <node concept="2AHcQZ" id="43K6FbA0NCw" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="43K6FbA0NCx" role="3clF45">
        <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
      </node>
      <node concept="37vLTG" id="43K6FbA0NCy" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="43K6FbA0NCz" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
        <node concept="2AHcQZ" id="43K6FbA0NC$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="43K6FbA0NCG" role="3clF47">
        <node concept="3cpWs8" id="43K6FbA145L" role="3cqZAp">
          <node concept="3cpWsn" id="43K6FbA145M" role="3cpWs9">
            <property role="TrG5h" value="source" />
            <node concept="3uibUv" id="43K6FbA145N" role="1tU5fm">
              <ref role="3uigEE" node="6gadshXrOh5" resolve="RecursiveFolderDataSource" />
            </node>
            <node concept="1eOMI4" id="43K6FbA145O" role="33vP2m">
              <node concept="10QFUN" id="43K6FbA145P" role="1eOMHV">
                <node concept="3uibUv" id="43K6FbA145Q" role="10QFUM">
                  <ref role="3uigEE" node="6gadshXrOh5" resolve="RecursiveFolderDataSource" />
                </node>
                <node concept="2OqwBi" id="43K6FbA145R" role="10QFUP">
                  <node concept="liA8E" id="43K6FbA145V" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModel.getSource()" resolve="getSource" />
                  </node>
                  <node concept="37vLTw" id="43K6FbA17lo" role="2Oq$k0">
                    <ref role="3cqZAo" node="43K6FbA0NCy" resolve="model" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="43K6FbA14El" role="3cqZAp">
          <node concept="2OqwBi" id="43K6FbA159N" role="3clFbG">
            <node concept="37vLTw" id="43K6FbA14Ej" role="2Oq$k0">
              <ref role="3cqZAo" node="43K6FbA145M" resolve="source" />
            </node>
            <node concept="liA8E" id="43K6FbA15_H" role="2OqNvi">
              <ref role="37wK5l" node="6gadshXrOCd" resolve="getStreamByNameOrCreate" />
              <node concept="37vLTw" id="43K6FbA15Lq" role="37wK5m">
                <ref role="3cqZAo" node="6ZZUlxDy3iw" resolve="HEADER_FILE" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="43K6FbA0NCH" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="43K6FbA0Zc0" role="jymVt" />
    <node concept="3clFb_" id="43K6FbA0NCK" role="jymVt">
      <property role="TrG5h" value="getDataLocation" />
      <node concept="3Tm1VV" id="43K6FbA0NCL" role="1B3o_S" />
      <node concept="2AHcQZ" id="43K6FbA0NCN" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="43K6FbA0NCO" role="3clF45">
        <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
      </node>
      <node concept="37vLTG" id="43K6FbA0NCP" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="43K6FbA0NCQ" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
        <node concept="2AHcQZ" id="43K6FbA0NCR" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="43K6FbA0NCV" role="3clF47">
        <node concept="3clFbF" id="43K6FbA17Yh" role="3cqZAp">
          <node concept="2OqwBi" id="43K6FbA18yq" role="3clFbG">
            <node concept="37vLTw" id="43K6FbA17Ye" role="2Oq$k0">
              <ref role="3cqZAo" node="43K6FbA0NCP" resolve="model" />
            </node>
            <node concept="liA8E" id="43K6FbA1939" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SModel.getSource()" resolve="getSource" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="43K6FbA0NCW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="43K6Fb_YWU8" role="jymVt" />
    <node concept="312cEu" id="6gadshXDJkv" role="jymVt">
      <property role="TrG5h" value="IEC61499LoadFacitlity" />
      <node concept="2tJIrI" id="6gadshXDJmt" role="jymVt" />
      <node concept="312cEg" id="6gadshXDK67" role="jymVt">
        <property role="TrG5h" value="myFactory" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="6gadshXDJGe" role="1B3o_S" />
        <node concept="3uibUv" id="6gadshXDK0X" role="1tU5fm">
          <ref role="3uigEE" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
        </node>
      </node>
      <node concept="312cEg" id="6gadshXDKG5" role="jymVt">
        <property role="TrG5h" value="myDataSource" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="6gadshXDKnx" role="1B3o_S" />
        <node concept="3uibUv" id="6gadshXDKAV" role="1tU5fm">
          <ref role="3uigEE" to="dush:~MultiStreamDataSource" resolve="MultiStreamDataSource" />
        </node>
      </node>
      <node concept="2tJIrI" id="6gadshXDJmI" role="jymVt" />
      <node concept="3Tm1VV" id="6gadshXDJkw" role="1B3o_S" />
      <node concept="3uibUv" id="6gadshXDJmc" role="EKbjA">
        <ref role="3uigEE" to="g3l6:~CustomPersistenceLoadFacility" resolve="CustomPersistenceLoadFacility" />
      </node>
      <node concept="3clFbW" id="6gadshXDKXw" role="jymVt">
        <node concept="3cqZAl" id="6gadshXDKXx" role="3clF45" />
        <node concept="3Tm1VV" id="6gadshXDKXy" role="1B3o_S" />
        <node concept="3clFbS" id="6gadshXDKX$" role="3clF47">
          <node concept="3clFbF" id="6gadshXDKXC" role="3cqZAp">
            <node concept="37vLTI" id="6gadshXDKXE" role="3clFbG">
              <node concept="2OqwBi" id="6gadshXDKXI" role="37vLTJ">
                <node concept="Xjq3P" id="6gadshXDKXJ" role="2Oq$k0" />
                <node concept="2OwXpG" id="6gadshXDKXK" role="2OqNvi">
                  <ref role="2Oxat5" node="6gadshXDK67" resolve="myFactory" />
                </node>
              </node>
              <node concept="37vLTw" id="6gadshXDKXL" role="37vLTx">
                <ref role="3cqZAo" node="6gadshXDKXB" resolve="factory" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6gadshXDKXO" role="3cqZAp">
            <node concept="37vLTI" id="6gadshXDKXQ" role="3clFbG">
              <node concept="2OqwBi" id="6gadshXDKXU" role="37vLTJ">
                <node concept="Xjq3P" id="6gadshXDKXV" role="2Oq$k0" />
                <node concept="2OwXpG" id="6gadshXDKXW" role="2OqNvi">
                  <ref role="2Oxat5" node="6gadshXDKG5" resolve="myDataSource" />
                </node>
              </node>
              <node concept="37vLTw" id="6gadshXDKXX" role="37vLTx">
                <ref role="3cqZAo" node="6gadshXDKXN" resolve="dataSource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6gadshXDKXB" role="3clF46">
          <property role="TrG5h" value="factory" />
          <node concept="3uibUv" id="6gadshXDKXA" role="1tU5fm">
            <ref role="3uigEE" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
          </node>
        </node>
        <node concept="37vLTG" id="6gadshXDKXN" role="3clF46">
          <property role="TrG5h" value="dataSource" />
          <node concept="3uibUv" id="6gadshXDKXM" role="1tU5fm">
            <ref role="3uigEE" to="dush:~MultiStreamDataSource" resolve="MultiStreamDataSource" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6gadshXDLnh" role="jymVt" />
      <node concept="3clFb_" id="6gadshXDJn9" role="jymVt">
        <property role="TrG5h" value="getModelFactory" />
        <node concept="3Tm1VV" id="6gadshXDJna" role="1B3o_S" />
        <node concept="2AHcQZ" id="6gadshXDJnc" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXDJnd" role="3clF45">
          <ref role="3uigEE" to="dush:~ModelFactory" resolve="ModelFactory" />
        </node>
        <node concept="3clFbS" id="6gadshXDJnh" role="3clF47">
          <node concept="3clFbF" id="6gadshXDLDi" role="3cqZAp">
            <node concept="37vLTw" id="6gadshXDLDf" role="3clFbG">
              <ref role="3cqZAo" node="6gadshXDK67" resolve="myFactory" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6gadshXDJni" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6gadshXDLKO" role="jymVt" />
      <node concept="3clFb_" id="6gadshXDJnl" role="jymVt">
        <property role="TrG5h" value="getSource" />
        <node concept="3Tm1VV" id="6gadshXDJnm" role="1B3o_S" />
        <node concept="2AHcQZ" id="6gadshXDJno" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXDJnp" role="3clF45">
          <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
        </node>
        <node concept="3clFbS" id="6gadshXDJnt" role="3clF47">
          <node concept="3clFbF" id="6gadshXDMdM" role="3cqZAp">
            <node concept="37vLTw" id="6gadshXDMdL" role="3clFbG">
              <ref role="3cqZAo" node="6gadshXDKG5" resolve="myDataSource" />
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6gadshXDJnu" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6gadshXEVtL" role="jymVt" />
      <node concept="3clFb_" id="6gadshXEV$q" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="createEmptyModel" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="6gadshXEV$r" role="3clF47">
          <node concept="3cpWs8" id="6gadshXEV$D" role="3cqZAp">
            <node concept="3cpWsn" id="6gadshXEV$E" role="3cpWs9">
              <property role="TrG5h" value="modelData" />
              <node concept="3uibUv" id="6gadshXEV$F" role="1tU5fm">
                <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
              </node>
              <node concept="2ShNRf" id="6gadshXEV$G" role="33vP2m">
                <node concept="1pGfFk" id="6gadshXEV$H" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~SModel.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference)" resolve="SModel" />
                  <node concept="2OqwBi" id="6gadshXEV$z" role="37wK5m">
                    <node concept="37vLTw" id="6gadshXEV$$" role="2Oq$k0">
                      <ref role="3cqZAo" node="6gadshXEV_l" resolve="header" />
                    </node>
                    <node concept="liA8E" id="6gadshXEW$F" role="2OqNvi">
                      <ref role="37wK5l" to="g3l6:~SModelSimpleHeader.getModelReference()" resolve="getModelReference" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6gadshXEV$J" role="3cqZAp" />
          <node concept="3clFbF" id="6gadshXEV$K" role="3cqZAp">
            <node concept="2OqwBi" id="6gadshXEV$L" role="3clFbG">
              <node concept="37vLTw" id="6gadshXEV$M" role="2Oq$k0">
                <ref role="3cqZAo" node="6gadshXEV$E" resolve="modelData" />
              </node>
              <node concept="liA8E" id="6gadshXEV$N" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~SModel.addLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="addLanguage" />
                <node concept="pHN19" id="6gadshXEV$O" role="37wK5m">
                  <node concept="2V$Bhx" id="6gadshXEV$P" role="2V$M_3">
                    <property role="2V$B1T" value="2046780a-246e-4cb0-90fe-56a2b7d92c54" />
                    <property role="2V$B1Q" value="mps.lang.ST" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6gadshXEV$Q" role="3cqZAp">
            <node concept="2OqwBi" id="6gadshXEV$R" role="3clFbG">
              <node concept="37vLTw" id="6gadshXEV$S" role="2Oq$k0">
                <ref role="3cqZAo" node="6gadshXEV$E" resolve="modelData" />
              </node>
              <node concept="liA8E" id="6gadshXEV$T" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~SModel.addLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="addLanguage" />
                <node concept="pHN19" id="6gadshXEV$U" role="37wK5m">
                  <node concept="2V$Bhx" id="6gadshXEV$V" role="2V$M_3">
                    <property role="2V$B1T" value="6594f340-4d73-4027-b7d3-c6ca2e70a53b" />
                    <property role="2V$B1Q" value="mps.lang.iec61499" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6gadshXEV$W" role="3cqZAp">
            <node concept="2OqwBi" id="6gadshXEV$X" role="3clFbG">
              <node concept="37vLTw" id="6gadshXEV$Y" role="2Oq$k0">
                <ref role="3cqZAo" node="6gadshXEV$E" resolve="modelData" />
              </node>
              <node concept="liA8E" id="6gadshXEV$Z" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~SModel.addLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="addLanguage" />
                <node concept="pHN19" id="6gadshXEV_0" role="37wK5m">
                  <node concept="2V$Bhx" id="6gadshXEV_1" role="2V$M_3">
                    <property role="2V$B1T" value="111cc10b-fa1e-4e11-8e9c-37e957c4043f" />
                    <property role="2V$B1Q" value="richediting.lang" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6gadshXEV_2" role="3cqZAp" />
          <node concept="2Gpval" id="6gadshXEV_3" role="3cqZAp">
            <node concept="2GrKxI" id="6gadshXEV_4" role="2Gsz3X">
              <property role="TrG5h" value="imp" />
            </node>
            <node concept="2OqwBi" id="6gadshXEV_5" role="2GsD0m">
              <node concept="37vLTw" id="6gadshXEV_6" role="2Oq$k0">
                <ref role="3cqZAo" node="6gadshXEV_l" resolve="header" />
              </node>
              <node concept="liA8E" id="6gadshXEV_7" role="2OqNvi">
                <ref role="37wK5l" node="7OBD32HKGnS" resolve="getImports" />
              </node>
            </node>
            <node concept="3clFbS" id="6gadshXEV_8" role="2LFqv$">
              <node concept="3clFbF" id="6gadshXEV_9" role="3cqZAp">
                <node concept="2OqwBi" id="6gadshXEV_a" role="3clFbG">
                  <node concept="37vLTw" id="6gadshXEV_b" role="2Oq$k0">
                    <ref role="3cqZAo" node="6gadshXEV$E" resolve="modelData" />
                  </node>
                  <node concept="liA8E" id="6gadshXEV_c" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~SModel.addModelImport(jetbrains.mps.smodel.SModel$ImportElement)" resolve="addModelImport" />
                    <node concept="2ShNRf" id="6gadshXEV_d" role="37wK5m">
                      <node concept="1pGfFk" id="6gadshXEV_e" role="2ShVmc">
                        <ref role="37wK5l" to="w1kc:~SModel$ImportElement.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference)" resolve="SModel.ImportElement" />
                        <node concept="2GrUjf" id="6gadshXEV_f" role="37wK5m">
                          <ref role="2Gs0qQ" node="6gadshXEV_4" resolve="imp" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6gadshXEV_g" role="3cqZAp" />
          <node concept="3cpWs6" id="6gadshXEV_h" role="3cqZAp">
            <node concept="37vLTw" id="6gadshXEV_i" role="3cqZAk">
              <ref role="3cqZAo" node="6gadshXEV$E" resolve="modelData" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="6gadshXEV_j" role="1B3o_S" />
        <node concept="3uibUv" id="6gadshXEV_k" role="3clF45">
          <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
        </node>
        <node concept="37vLTG" id="6gadshXEV_l" role="3clF46">
          <property role="TrG5h" value="header" />
          <node concept="3uibUv" id="6gadshXEV_m" role="1tU5fm">
            <ref role="3uigEE" node="7OBD32HKFLJ" resolve="IEC61499ModelHeader" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="6gadshXEVx5" role="jymVt" />
      <node concept="2tJIrI" id="6gadshXDLV_" role="jymVt" />
      <node concept="3clFb_" id="6gadshXDJnx" role="jymVt">
        <property role="TrG5h" value="readHeader" />
        <node concept="3Tm1VV" id="6gadshXDJny" role="1B3o_S" />
        <node concept="2AHcQZ" id="6gadshXDJn$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXDJn_" role="3clF45">
          <ref role="3uigEE" to="g3l6:~SModelSimpleHeader" resolve="SModelSimpleHeader" />
        </node>
        <node concept="3uibUv" id="6gadshXDJnA" role="Sfmx6">
          <ref role="3uigEE" to="dush:~ModelLoadException" resolve="ModelLoadException" />
        </node>
        <node concept="3clFbS" id="6gadshXDJnB" role="3clF47">
          <node concept="3J1_TO" id="6gadshXEzMT" role="3cqZAp">
            <node concept="3clFbS" id="6gadshXEzMU" role="1zxBo7">
              <node concept="3cpWs6" id="6gadshXEyOS" role="3cqZAp">
                <node concept="2YIFZM" id="6gadshXEtUA" role="3cqZAk">
                  <ref role="1Pybhc" node="7OBD32HKFLJ" resolve="IEC61499ModelHeader" />
                  <ref role="37wK5l" node="7OBD32HLIqK" resolve="load" />
                  <node concept="2OqwBi" id="6gadshXECm9" role="37wK5m">
                    <node concept="2OqwBi" id="6gadshXEuyQ" role="2Oq$k0">
                      <node concept="37vLTw" id="6gadshXEuhp" role="2Oq$k0">
                        <ref role="3cqZAo" node="6gadshXDKG5" resolve="myDataSource" />
                      </node>
                      <node concept="liA8E" id="6gadshXEuID" role="2OqNvi">
                        <ref role="37wK5l" to="dush:~MultiStreamDataSource.getStreamByName(java.lang.String)" resolve="getStreamByName" />
                        <node concept="10M0yZ" id="6gadshXEyyf" role="37wK5m">
                          <ref role="3cqZAo" node="6ZZUlxDy3iw" resolve="HEADER_FILE" />
                          <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="6gadshXECHV" role="2OqNvi">
                      <ref role="37wK5l" to="dush:~StreamDataSource.openInputStream()" resolve="openInputStream" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="6gadshXEzMW" role="1zxBo5">
              <node concept="3clFbS" id="6gadshXEzMZ" role="1zc67A">
                <node concept="YS8fn" id="6gadshXEDfg" role="3cqZAp">
                  <node concept="2ShNRf" id="6gadshXE$7y" role="YScLw">
                    <node concept="1pGfFk" id="6gadshXE_j8" role="2ShVmc">
                      <ref role="37wK5l" to="dush:~ModelLoadException.&lt;init&gt;(java.lang.String,java.util.List,java.lang.Throwable)" resolve="ModelLoadException" />
                      <node concept="Xl_RD" id="6gadshXEBXF" role="37wK5m">
                        <property role="Xl_RC" value="Can't load model" />
                      </node>
                      <node concept="2YIFZM" id="6gadshXEAvC" role="37wK5m">
                        <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                        <node concept="3uibUv" id="6gadshXEBcX" role="3PaCim">
                          <ref role="3uigEE" to="mhbf:~SModel$Problem" resolve="SModel.Problem" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6gadshXECcK" role="37wK5m">
                        <ref role="3cqZAo" node="6gadshXEzN0" resolve="e" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="XOnhg" id="6gadshXEzN0" role="1zc67B">
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="6gadshXEzN1" role="1tU5fm">
                  <node concept="3uibUv" id="6gadshXEzMV" role="nSUat">
                    <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6gadshXDJnC" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6gadshXDMlk" role="jymVt" />
      <node concept="3clFb_" id="6gadshXDJnF" role="jymVt">
        <property role="TrG5h" value="readModel" />
        <node concept="3Tm1VV" id="6gadshXDJnG" role="1B3o_S" />
        <node concept="2AHcQZ" id="6gadshXDJnI" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXDJnJ" role="3clF45">
          <ref role="3uigEE" to="g3l6:~SModelData" resolve="SModelData" />
        </node>
        <node concept="37vLTG" id="6gadshXDJnK" role="3clF46">
          <property role="TrG5h" value="header" />
          <node concept="3uibUv" id="6gadshXDJnL" role="1tU5fm">
            <ref role="3uigEE" to="g3l6:~SModelSimpleHeader" resolve="SModelSimpleHeader" />
          </node>
          <node concept="2AHcQZ" id="6gadshXDJnM" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3uibUv" id="6gadshXDJnN" role="Sfmx6">
          <ref role="3uigEE" to="dush:~ModelLoadException" resolve="ModelLoadException" />
        </node>
        <node concept="3clFbS" id="6gadshXDJnO" role="3clF47">
          <node concept="3J1_TO" id="6gadshXEKRE" role="3cqZAp">
            <node concept="3clFbS" id="6gadshXEKRF" role="1zxBo7">
              <node concept="3clFbH" id="6gadshXEKS8" role="3cqZAp" />
              <node concept="3cpWs8" id="6gadshXEKS9" role="3cqZAp">
                <node concept="3cpWsn" id="6gadshXEKSa" role="3cpWs9">
                  <property role="TrG5h" value="modelData" />
                  <node concept="3uibUv" id="6gadshXEKSb" role="1tU5fm">
                    <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
                  </node>
                  <node concept="1rXfSq" id="6gadshXF10Q" role="33vP2m">
                    <ref role="37wK5l" node="6gadshXEV$q" resolve="createEmptyModel" />
                    <node concept="0kSF2" id="6gadshXF2uC" role="37wK5m">
                      <node concept="3uibUv" id="6gadshXF2uF" role="0kSFW">
                        <ref role="3uigEE" node="7OBD32HKFLJ" resolve="IEC61499ModelHeader" />
                      </node>
                      <node concept="37vLTw" id="6gadshXF1Aw" role="0kSFX">
                        <ref role="3cqZAo" node="6gadshXDJnK" resolve="header" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="6gadshXEKSe" role="3cqZAp" />
              <node concept="2Gpval" id="6gadshXRqy5" role="3cqZAp">
                <node concept="3clFbS" id="6gadshXRqyg" role="2LFqv$">
                  <node concept="3J1_TO" id="6gadshXRqyh" role="3cqZAp">
                    <node concept="3clFbS" id="6gadshXRqyi" role="1zxBo7">
                      <node concept="3cpWs8" id="6gadshXRqyj" role="3cqZAp">
                        <node concept="3cpWsn" id="6gadshXRqyk" role="3cpWs9">
                          <property role="TrG5h" value="fileExt" />
                          <node concept="3uibUv" id="6gadshXRqyl" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                          <node concept="2YIFZM" id="6gadshXRqym" role="33vP2m">
                            <ref role="37wK5l" to="18ew:~FileUtil.getExtension(java.lang.String)" resolve="getExtension" />
                            <ref role="1Pybhc" to="18ew:~FileUtil" resolve="FileUtil" />
                            <node concept="2OqwBi" id="6gadshXRqyn" role="37wK5m">
                              <node concept="2GrUjf" id="6gadshXRqzE" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="6gadshXRqzD" resolve="source" />
                              </node>
                              <node concept="liA8E" id="6gadshXRqyp" role="2OqNvi">
                                <ref role="37wK5l" to="dush:~StreamDataSource.getStreamName()" resolve="getStreamName" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="6gadshXRqyq" role="3cqZAp">
                        <node concept="3cpWsn" id="6gadshXRqyr" role="3cpWs9">
                          <property role="TrG5h" value="fqName" />
                          <node concept="3uibUv" id="6gadshXRqys" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                          <node concept="2OqwBi" id="6gadshXRqyt" role="33vP2m">
                            <node concept="2YIFZM" id="6gadshXRqyu" role="2Oq$k0">
                              <ref role="1Pybhc" to="snbe:~FileUtil" resolve="FileUtil" />
                              <ref role="37wK5l" to="snbe:~FileUtil.getNameWithoutExtension(java.lang.String)" resolve="getNameWithoutExtension" />
                              <node concept="2OqwBi" id="6gadshXRqyv" role="37wK5m">
                                <node concept="2GrUjf" id="6gadshXRqzF" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="6gadshXRqzD" resolve="source" />
                                </node>
                                <node concept="liA8E" id="6gadshXRqyx" role="2OqNvi">
                                  <ref role="37wK5l" to="dush:~StreamDataSource.getStreamName()" resolve="getStreamName" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="6gadshXRqyy" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~String.replace(char,char)" resolve="replace" />
                              <node concept="1Xhbcc" id="6gadshXRqyz" role="37wK5m">
                                <property role="1XhdNS" value="/" />
                              </node>
                              <node concept="1Xhbcc" id="6gadshXRqy$" role="37wK5m">
                                <property role="1XhdNS" value="." />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbH" id="6gadshXRqy_" role="3cqZAp" />
                      <node concept="3cpWs8" id="6gadshXRqyA" role="3cqZAp">
                        <node concept="3cpWsn" id="6gadshXRqyB" role="3cpWs9">
                          <property role="TrG5h" value="reader" />
                          <node concept="3uibUv" id="6gadshXRqyC" role="1tU5fm">
                            <ref role="3uigEE" to="guwi:~BufferedReader" resolve="BufferedReader" />
                          </node>
                          <node concept="2ShNRf" id="6gadshXRqyD" role="33vP2m">
                            <node concept="1pGfFk" id="6gadshXRqyE" role="2ShVmc">
                              <ref role="37wK5l" to="guwi:~BufferedReader.&lt;init&gt;(java.io.Reader)" resolve="BufferedReader" />
                              <node concept="2ShNRf" id="6gadshXRqyF" role="37wK5m">
                                <node concept="1pGfFk" id="6gadshXRqyG" role="2ShVmc">
                                  <ref role="37wK5l" to="guwi:~InputStreamReader.&lt;init&gt;(java.io.InputStream)" resolve="InputStreamReader" />
                                  <node concept="2OqwBi" id="6gadshXRqyH" role="37wK5m">
                                    <node concept="liA8E" id="6gadshXRqyI" role="2OqNvi">
                                      <ref role="37wK5l" to="dush:~StreamDataSource.openInputStream()" resolve="openInputStream" />
                                    </node>
                                    <node concept="2GrUjf" id="6gadshXRqzG" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="6gadshXRqzD" resolve="source" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3J1_TO" id="6gadshXRqyK" role="3cqZAp">
                        <node concept="3clFbS" id="6gadshXRqyL" role="1zxBo7">
                          <node concept="3cpWs8" id="6gadshXRqyM" role="3cqZAp">
                            <node concept="3cpWsn" id="6gadshXRqyN" role="3cpWs9">
                              <property role="TrG5h" value="doc" />
                              <node concept="3uibUv" id="6gadshXRqyO" role="1tU5fm">
                                <ref role="3uigEE" to="mmaq:~Document" resolve="Document" />
                              </node>
                              <node concept="2YIFZM" id="6gadshXRqyP" role="33vP2m">
                                <ref role="1Pybhc" to="18ew:~JDOMUtil" resolve="JDOMUtil" />
                                <ref role="37wK5l" to="18ew:~JDOMUtil.loadDocument(java.io.Reader)" resolve="loadDocument" />
                                <node concept="37vLTw" id="6gadshXRqyQ" role="37wK5m">
                                  <ref role="3cqZAo" node="6gadshXRqyB" resolve="reader" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs8" id="6gadshXRqyR" role="3cqZAp">
                            <node concept="3cpWsn" id="6gadshXRqyS" role="3cpWs9">
                              <property role="TrG5h" value="node" />
                              <node concept="3Tqbb2" id="6gadshXRqyT" role="1tU5fm" />
                              <node concept="1rXfSq" id="6gadshXRqyU" role="33vP2m">
                                <ref role="37wK5l" node="43K6Fb_ZB45" resolve="convertRootNode" />
                                <node concept="2OqwBi" id="6gadshXRqyV" role="37wK5m">
                                  <node concept="37vLTw" id="6gadshXRqyW" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6gadshXDJnK" resolve="header" />
                                  </node>
                                  <node concept="liA8E" id="6gadshXRqyX" role="2OqNvi">
                                    <ref role="37wK5l" to="g3l6:~SModelSimpleHeader.getModelReference()" resolve="getModelReference" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="6gadshXRqyY" role="37wK5m">
                                  <ref role="3cqZAo" node="6gadshXRqyN" resolve="doc" />
                                </node>
                                <node concept="37vLTw" id="6gadshXRqyZ" role="37wK5m">
                                  <ref role="3cqZAo" node="6gadshXRqyk" resolve="fileExt" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="tq6dR5yJ6J" role="3cqZAp">
                            <node concept="3clFbS" id="tq6dR5yJ6L" role="3clFbx">
                              <node concept="3cpWs8" id="6gadshXRqz0" role="3cqZAp">
                                <node concept="3cpWsn" id="6gadshXRqz1" role="3cpWs9">
                                  <property role="TrG5h" value="virtualPackage" />
                                  <node concept="3uibUv" id="6gadshXRqz2" role="1tU5fm">
                                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                  </node>
                                  <node concept="2YIFZM" id="6gadshXRqz3" role="33vP2m">
                                    <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                                    <ref role="37wK5l" to="18ew:~NameUtil.namespaceFromLongName(java.lang.String)" resolve="namespaceFromLongName" />
                                    <node concept="37vLTw" id="6gadshXRqz4" role="37wK5m">
                                      <ref role="3cqZAo" node="6gadshXRqyr" resolve="fqName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbJ" id="6gadshXRqz5" role="3cqZAp">
                                <node concept="3clFbS" id="6gadshXRqz6" role="3clFbx">
                                  <node concept="3clFbF" id="6gadshXRqz7" role="3cqZAp">
                                    <node concept="37vLTI" id="6gadshXRqz8" role="3clFbG">
                                      <node concept="2OqwBi" id="6gadshXRqz9" role="37vLTJ">
                                        <node concept="37vLTw" id="6gadshXRqza" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6gadshXRqyS" resolve="node" />
                                        </node>
                                        <node concept="3TrcHB" id="6gadshXRqzb" role="2OqNvi">
                                          <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="6gadshXRqzc" role="37vLTx">
                                        <ref role="3cqZAo" node="6gadshXRqz1" resolve="virtualPackage" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="2OqwBi" id="6gadshXRqzd" role="3clFbw">
                                  <node concept="37vLTw" id="6gadshXRqze" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6gadshXRqz1" resolve="virtualPackage" />
                                  </node>
                                  <node concept="17RvpY" id="6gadshXRqzf" role="2OqNvi" />
                                </node>
                              </node>
                              <node concept="3clFbF" id="6gadshXRqzg" role="3cqZAp">
                                <node concept="2OqwBi" id="6gadshXRqzh" role="3clFbG">
                                  <node concept="37vLTw" id="6gadshXRqzi" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6gadshXEKSa" resolve="modelData" />
                                  </node>
                                  <node concept="liA8E" id="6gadshXRqzj" role="2OqNvi">
                                    <ref role="37wK5l" to="w1kc:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
                                    <node concept="37vLTw" id="6gadshXRqzk" role="37wK5m">
                                      <ref role="3cqZAo" node="6gadshXRqyS" resolve="node" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3y3z36" id="tq6dR5yKG7" role="3clFbw">
                              <node concept="10Nm6u" id="tq6dR5yL0O" role="3uHU7w" />
                              <node concept="37vLTw" id="tq6dR5yKj7" role="3uHU7B">
                                <ref role="3cqZAo" node="6gadshXRqyS" resolve="node" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1wplmZ" id="6gadshXRqzl" role="1zxBo6">
                          <node concept="3clFbS" id="6gadshXRqzm" role="1wplMD">
                            <node concept="3clFbF" id="6gadshXRqzn" role="3cqZAp">
                              <node concept="2OqwBi" id="6gadshXRqzo" role="3clFbG">
                                <node concept="37vLTw" id="6gadshXRqzp" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6gadshXRqyB" resolve="reader" />
                                </node>
                                <node concept="liA8E" id="6gadshXRqzq" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~BufferedReader.close()" resolve="close" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3uVAMA" id="6gadshXRqzr" role="1zxBo5">
                      <node concept="XOnhg" id="6gadshXRqzs" role="1zc67B">
                        <property role="3TUv4t" value="false" />
                        <property role="TrG5h" value="e" />
                        <node concept="nSUau" id="6gadshXRqzt" role="1tU5fm">
                          <node concept="3uibUv" id="6gadshXRqzu" role="nSUat">
                            <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="6gadshXRqzv" role="1zc67A">
                        <node concept="YS8fn" id="6gadshXRqzw" role="3cqZAp">
                          <node concept="2ShNRf" id="6gadshXRqzx" role="YScLw">
                            <node concept="1pGfFk" id="6gadshXRqzy" role="2ShVmc">
                              <ref role="37wK5l" to="guwi:~IOException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="IOException" />
                              <node concept="3cpWs3" id="6gadshXRqzz" role="37wK5m">
                                <node concept="2OqwBi" id="6gadshXRqz$" role="3uHU7w">
                                  <node concept="37vLTw" id="6gadshXRqz_" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6gadshXDKG5" resolve="myDataSource" />
                                  </node>
                                  <node concept="liA8E" id="6gadshXRqzA" role="2OqNvi">
                                    <ref role="37wK5l" to="dush:~DataSource.getLocation()" resolve="getLocation" />
                                  </node>
                                </node>
                                <node concept="Xl_RD" id="6gadshXRqzB" role="3uHU7B">
                                  <property role="Xl_RC" value="cannot read model" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="6gadshXRqzC" role="37wK5m">
                                <ref role="3cqZAo" node="6gadshXRqzs" resolve="e" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6gadshXRqy9" role="2GsD0m">
                  <node concept="2OqwBi" id="6gadshXRqya" role="2Oq$k0">
                    <node concept="37vLTw" id="6gadshXRqyb" role="2Oq$k0">
                      <ref role="3cqZAo" node="6gadshXDKG5" resolve="myDataSource" />
                    </node>
                    <node concept="liA8E" id="6gadshXRqyc" role="2OqNvi">
                      <ref role="37wK5l" to="dush:~MultiStreamDataSource.getSubStreams()" resolve="getSubStreams" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6gadshXRqyd" role="2OqNvi">
                    <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                    <node concept="2YIFZM" id="6gadshXRqye" role="37wK5m">
                      <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                      <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                      <node concept="3uibUv" id="6gadshXRqyf" role="3PaCim">
                        <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2GrKxI" id="6gadshXRqzD" role="2Gsz3X">
                  <property role="TrG5h" value="source" />
                </node>
              </node>
              <node concept="3clFbH" id="6gadshXEKT$" role="3cqZAp" />
              <node concept="3cpWs6" id="6gadshXEKT_" role="3cqZAp">
                <node concept="37vLTw" id="6gadshXEKTA" role="3cqZAk">
                  <ref role="3cqZAo" node="6gadshXEKSa" resolve="modelData" />
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="6gadshXEKTB" role="1zxBo5">
              <node concept="XOnhg" id="6gadshXEKTC" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="6gadshXEKTD" role="1tU5fm">
                  <node concept="3uibUv" id="6gadshXEKTE" role="nSUat">
                    <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6gadshXEKTF" role="1zc67A">
                <node concept="3clFbF" id="6gadshXQIs7" role="3cqZAp">
                  <node concept="2OqwBi" id="6gadshXQJhn" role="3clFbG">
                    <node concept="37vLTw" id="43K6Fb_Zt8h" role="2Oq$k0">
                      <ref role="3cqZAo" node="5fVAPfKzmlu" resolve="LOG" />
                    </node>
                    <node concept="liA8E" id="6gadshXQK1E" role="2OqNvi">
                      <ref role="37wK5l" to="q7tw:~Category.error(java.lang.Object,java.lang.Throwable)" resolve="error" />
                      <node concept="Xl_RD" id="6gadshXEKTH" role="37wK5m">
                        <property role="Xl_RC" value="Exception raised during load" />
                      </node>
                      <node concept="37vLTw" id="6gadshXQLm_" role="37wK5m">
                        <ref role="3cqZAo" node="6gadshXEKTC" resolve="e" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="YS8fn" id="6gadshXEKTJ" role="3cqZAp">
                  <node concept="2ShNRf" id="6gadshXLPZp" role="YScLw">
                    <node concept="1pGfFk" id="6gadshXLRbR" role="2ShVmc">
                      <ref role="37wK5l" to="dush:~ModelLoadException.&lt;init&gt;(java.lang.String,java.util.List,java.lang.Throwable)" resolve="ModelLoadException" />
                      <node concept="Xl_RD" id="6gadshXLRQD" role="37wK5m">
                        <property role="Xl_RC" value="Exception during load" />
                      </node>
                      <node concept="2YIFZM" id="6gadshXLSwn" role="37wK5m">
                        <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                        <node concept="3uibUv" id="6gadshXLSH6" role="3PaCim">
                          <ref role="3uigEE" to="mhbf:~SModel$Problem" resolve="SModel.Problem" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6gadshXLRlR" role="37wK5m">
                        <ref role="3cqZAo" node="6gadshXEKTC" resolve="e" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6gadshXDJnP" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6gadshXDMwZ" role="jymVt" />
      <node concept="3clFb_" id="6gadshXDJnS" role="jymVt">
        <property role="TrG5h" value="writeModel" />
        <node concept="3Tm1VV" id="6gadshXDJnT" role="1B3o_S" />
        <node concept="3cqZAl" id="6gadshXDJnV" role="3clF45" />
        <node concept="37vLTG" id="6gadshXDJnW" role="3clF46">
          <property role="TrG5h" value="header" />
          <node concept="3uibUv" id="6gadshXDJnX" role="1tU5fm">
            <ref role="3uigEE" to="g3l6:~SModelSimpleHeader" resolve="SModelSimpleHeader" />
          </node>
          <node concept="2AHcQZ" id="6gadshXDJnY" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="6gadshXDJnZ" role="3clF46">
          <property role="TrG5h" value="data" />
          <node concept="3uibUv" id="6gadshXDJo0" role="1tU5fm">
            <ref role="3uigEE" to="g3l6:~SModelData" resolve="SModelData" />
          </node>
          <node concept="2AHcQZ" id="6gadshXDJo1" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3uibUv" id="6gadshXDJo2" role="Sfmx6">
          <ref role="3uigEE" to="dush:~ModelSaveException" resolve="ModelSaveException" />
        </node>
        <node concept="3clFbS" id="6gadshXDJo3" role="3clF47">
          <node concept="3clFbJ" id="7OBD32HSqET" role="3cqZAp">
            <node concept="3clFbS" id="7OBD32HSqEV" role="3clFbx">
              <node concept="3clFbF" id="7OBD32HW4bI" role="3cqZAp">
                <node concept="2YIFZM" id="6gadshXMwwT" role="3clFbG">
                  <ref role="37wK5l" node="6gadshXMmff" resolve="saveFailed" />
                  <ref role="1Pybhc" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
                  <node concept="3cpWs3" id="7OBD32HVON7" role="37wK5m">
                    <node concept="Xl_RD" id="7OBD32HVON8" role="3uHU7B">
                      <property role="Xl_RC" value="Malformed internal format of model data for model: " />
                    </node>
                    <node concept="2OqwBi" id="7OBD32HVON9" role="3uHU7w">
                      <node concept="2OqwBi" id="7OBD32HVONa" role="2Oq$k0">
                        <node concept="37vLTw" id="7OBD32HYMlc" role="2Oq$k0">
                          <ref role="3cqZAo" node="6gadshXDJnZ" resolve="data" />
                        </node>
                        <node concept="liA8E" id="7OBD32HVONc" role="2OqNvi">
                          <ref role="37wK5l" to="g3l6:~SModelData.getModelName()" resolve="getModelName" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OBD32HVONd" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModelName.getLongName()" resolve="getLongName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="7OBD32HSELD" role="3clFbw">
              <node concept="1eOMI4" id="7OBD32HSELF" role="3fr31v">
                <node concept="2ZW3vV" id="7OBD32HSELG" role="1eOMHV">
                  <node concept="3uibUv" id="7OBD32HSIBL" role="2ZW6by">
                    <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
                  </node>
                  <node concept="37vLTw" id="7OBD32HSELI" role="2ZW6bz">
                    <ref role="3cqZAo" node="6gadshXDJnZ" resolve="data" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7OBD32HWdgk" role="3cqZAp">
            <node concept="3cpWsn" id="7OBD32HWdgl" role="3cpWs9">
              <property role="TrG5h" value="model" />
              <node concept="3uibUv" id="7OBD32HWdgm" role="1tU5fm">
                <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
              </node>
              <node concept="10QFUN" id="7OBD32HWgh6" role="33vP2m">
                <node concept="3uibUv" id="7OBD32HWhM6" role="10QFUM">
                  <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
                </node>
                <node concept="37vLTw" id="7OBD32HWfi3" role="10QFUP">
                  <ref role="3cqZAo" node="6gadshXDJnZ" resolve="data" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="7OBD32HW6_o" role="3cqZAp" />
          <node concept="3J1_TO" id="23XkovVRGsv" role="3cqZAp">
            <node concept="3clFbS" id="23XkovVRGsw" role="1zxBo7">
              <node concept="3cpWs8" id="49FXEugJpd1" role="3cqZAp">
                <node concept="3cpWsn" id="49FXEugJpd2" role="3cpWs9">
                  <property role="TrG5h" value="headerFile" />
                  <node concept="3uibUv" id="6gadshXMC6o" role="1tU5fm">
                    <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                  </node>
                  <node concept="2OqwBi" id="6gadshXMMIN" role="33vP2m">
                    <node concept="37vLTw" id="6gadshXMMmz" role="2Oq$k0">
                      <ref role="3cqZAo" node="6gadshXDKG5" resolve="myDataSource" />
                    </node>
                    <node concept="liA8E" id="6gadshXMOgp" role="2OqNvi">
                      <ref role="37wK5l" to="dush:~MultiStreamDataSource.getStreamByNameOrCreate(java.lang.String)" resolve="getStreamByNameOrCreate" />
                      <node concept="10M0yZ" id="6gadshXMZs9" role="37wK5m">
                        <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
                        <ref role="3cqZAo" node="6ZZUlxDy3iw" resolve="HEADER_FILE" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="49FXEugJK_G" role="3cqZAp" />
              <node concept="3cpWs8" id="3HdbmyVtjiS" role="3cqZAp">
                <node concept="3cpWsn" id="3HdbmyVtjiT" role="3cpWs9">
                  <property role="TrG5h" value="backup" />
                  <node concept="10Q1$e" id="3HdbmyVttf0" role="1tU5fm">
                    <node concept="10PrrI" id="3HdbmyVtrKD" role="10Q1$1" />
                  </node>
                  <node concept="10Nm6u" id="3HdbmyVtnU1" role="33vP2m" />
                </node>
              </node>
              <node concept="3clFbJ" id="3HdbmyVt8Zt" role="3cqZAp">
                <node concept="3clFbS" id="3HdbmyVt8Zv" role="3clFbx">
                  <node concept="3cpWs8" id="3HdbmyVt$jU" role="3cqZAp">
                    <node concept="3cpWsn" id="3HdbmyVt$jV" role="3cpWs9">
                      <property role="TrG5h" value="headerIS" />
                      <node concept="3uibUv" id="3HdbmyVtzI3" role="1tU5fm">
                        <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
                      </node>
                      <node concept="2OqwBi" id="3HdbmyVt$jW" role="33vP2m">
                        <node concept="37vLTw" id="3HdbmyVt$jX" role="2Oq$k0">
                          <ref role="3cqZAo" node="49FXEugJpd2" resolve="headerFile" />
                        </node>
                        <node concept="liA8E" id="3HdbmyVt$jY" role="2OqNvi">
                          <ref role="37wK5l" to="dush:~StreamDataSource.openInputStream()" resolve="openInputStream" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3J1_TO" id="3HdbmyVtzGR" role="3cqZAp">
                    <node concept="3clFbS" id="3HdbmyVtzGT" role="1zxBo7">
                      <node concept="3clFbF" id="3HdbmyVtoyt" role="3cqZAp">
                        <node concept="37vLTI" id="3HdbmyVttUc" role="3clFbG">
                          <node concept="37vLTw" id="3HdbmyVtuFV" role="37vLTJ">
                            <ref role="3cqZAo" node="3HdbmyVtjiT" resolve="backup" />
                          </node>
                          <node concept="2OqwBi" id="3HdbmyVtqee" role="37vLTx">
                            <node concept="37vLTw" id="3HdbmyVt$jZ" role="2Oq$k0">
                              <ref role="3cqZAo" node="3HdbmyVt$jV" resolve="headerIS" />
                            </node>
                            <node concept="liA8E" id="3HdbmyVtr8G" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~InputStream.readAllBytes()" resolve="readAllBytes" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1wplmZ" id="3dKCZkq$6my" role="1zxBo6">
                      <node concept="3clFbS" id="3HdbmyVtzGU" role="1wplMD">
                        <node concept="3clFbF" id="3HdbmyVv$cA" role="3cqZAp">
                          <node concept="2OqwBi" id="3HdbmyVtJOh" role="3clFbG">
                            <node concept="37vLTw" id="3HdbmyVtJ1r" role="2Oq$k0">
                              <ref role="3cqZAo" node="3HdbmyVt$jV" resolve="headerIS" />
                            </node>
                            <node concept="liA8E" id="3HdbmyVtKLj" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~InputStream.close()" resolve="close" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="3HdbmyVtcm8" role="3clFbw">
                  <node concept="37vLTw" id="3HdbmyVtbAZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="49FXEugJpd2" resolve="headerFile" />
                  </node>
                  <node concept="liA8E" id="6gadshXN44j" role="2OqNvi">
                    <ref role="37wK5l" to="dush:~StreamDataSource.exists()" resolve="exists" />
                  </node>
                </node>
              </node>
              <node concept="3J1_TO" id="3HdbmyVtNK7" role="3cqZAp">
                <node concept="3clFbS" id="3HdbmyVtNK9" role="1zxBo7">
                  <node concept="3cpWs8" id="7OBD32HRIn0" role="3cqZAp">
                    <node concept="3cpWsn" id="7OBD32HRIn1" role="3cpWs9">
                      <property role="TrG5h" value="headerOS" />
                      <node concept="3uibUv" id="7OBD32HRIn2" role="1tU5fm">
                        <ref role="3uigEE" to="guwi:~OutputStream" resolve="OutputStream" />
                      </node>
                      <node concept="10Nm6u" id="7OBD32HZaQf" role="33vP2m" />
                    </node>
                  </node>
                  <node concept="3J1_TO" id="7OBD32HRVVi" role="3cqZAp">
                    <node concept="3clFbS" id="7OBD32HRoo4" role="1zxBo7">
                      <node concept="3clFbF" id="7OBD32HROkc" role="3cqZAp">
                        <node concept="37vLTI" id="7OBD32HROIz" role="3clFbG">
                          <node concept="2OqwBi" id="7OBD32HRQ6p" role="37vLTx">
                            <node concept="37vLTw" id="7OBD32HRPrL" role="2Oq$k0">
                              <ref role="3cqZAo" node="49FXEugJpd2" resolve="headerFile" />
                            </node>
                            <node concept="liA8E" id="7OBD32HRQP6" role="2OqNvi">
                              <ref role="37wK5l" to="dush:~StreamDataSource.openOutputStream()" resolve="openOutputStream" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="7OBD32HROka" role="37vLTJ">
                            <ref role="3cqZAo" node="7OBD32HRIn1" resolve="headerOS" />
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="7OBD32HWEXq" role="3cqZAp">
                        <node concept="3cpWsn" id="7OBD32HWEXr" role="3cpWs9">
                          <property role="TrG5h" value="importedModels" />
                          <node concept="_YKpA" id="7OBD32HWGcH" role="1tU5fm">
                            <node concept="3uibUv" id="7OBD32HWGcJ" role="_ZDj9">
                              <ref role="3uigEE" to="w1kc:~SModel$ImportElement" resolve="SModel.ImportElement" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7OBD32HWEXs" role="33vP2m">
                            <node concept="37vLTw" id="7OBD32HWEXt" role="2Oq$k0">
                              <ref role="3cqZAo" node="7OBD32HWdgl" resolve="model" />
                            </node>
                            <node concept="liA8E" id="7OBD32HWEXu" role="2OqNvi">
                              <ref role="37wK5l" to="w1kc:~SModel.importedModels()" resolve="importedModels" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3cpWs8" id="7OBD32HX9S1" role="3cqZAp">
                        <node concept="3cpWsn" id="7OBD32HX9S2" role="3cpWs9">
                          <property role="TrG5h" value="richHeader" />
                          <node concept="3uibUv" id="7OBD32HX9Rb" role="1tU5fm">
                            <ref role="3uigEE" node="7OBD32HKFLJ" resolve="IEC61499ModelHeader" />
                          </node>
                          <node concept="2ShNRf" id="7OBD32HX9S3" role="33vP2m">
                            <node concept="1pGfFk" id="7OBD32HX9S4" role="2ShVmc">
                              <ref role="37wK5l" node="7OBD32HKFSn" resolve="IEC61499ModelHeader" />
                              <node concept="2OqwBi" id="6gadshXNPfQ" role="37wK5m">
                                <node concept="37vLTw" id="6gadshXNP3K" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6gadshXDJnW" resolve="header" />
                                </node>
                                <node concept="liA8E" id="6gadshXNQlg" role="2OqNvi">
                                  <ref role="37wK5l" to="g3l6:~SModelSimpleHeader.getModelReference()" resolve="getModelReference" />
                                </node>
                              </node>
                              <node concept="2OqwBi" id="7OBD32HX9Sd" role="37wK5m">
                                <node concept="2OqwBi" id="7OBD32HX9Se" role="2Oq$k0">
                                  <node concept="37vLTw" id="7OBD32HX9Sf" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7OBD32HWEXr" resolve="importedModels" />
                                  </node>
                                  <node concept="3$u5V9" id="7OBD32HX9Sg" role="2OqNvi">
                                    <node concept="1bVj0M" id="7OBD32HX9Sh" role="23t8la">
                                      <node concept="3clFbS" id="7OBD32HX9Si" role="1bW5cS">
                                        <node concept="3clFbF" id="7OBD32HX9Sj" role="3cqZAp">
                                          <node concept="2OqwBi" id="7OBD32HX9Sk" role="3clFbG">
                                            <node concept="37vLTw" id="7OBD32HX9Sl" role="2Oq$k0">
                                              <ref role="3cqZAo" node="7OBD32HX9Sn" resolve="it" />
                                            </node>
                                            <node concept="liA8E" id="7OBD32HX9Sm" role="2OqNvi">
                                              <ref role="37wK5l" to="w1kc:~SModel$ImportElement.getModelReference()" resolve="getModelReference" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="Rh6nW" id="7OBD32HX9Sn" role="1bW2Oz">
                                        <property role="TrG5h" value="it" />
                                        <node concept="2jxLKc" id="7OBD32HX9So" role="1tU5fm" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="ANE8D" id="7OBD32HX9Sp" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7OBD32HS4MN" role="3cqZAp">
                        <node concept="2OqwBi" id="7OBD32HXaUR" role="3clFbG">
                          <node concept="37vLTw" id="7OBD32HX9Sq" role="2Oq$k0">
                            <ref role="3cqZAo" node="7OBD32HX9S2" resolve="richHeader" />
                          </node>
                          <node concept="liA8E" id="7OBD32HXbBk" role="2OqNvi">
                            <ref role="37wK5l" node="7OBD32HKVos" resolve="save" />
                            <node concept="37vLTw" id="7OBD32HXcfi" role="37wK5m">
                              <ref role="3cqZAo" node="7OBD32HRIn1" resolve="headerOS" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1wplmZ" id="bY_GkkRKQTD" role="1zxBo6">
                      <node concept="3clFbS" id="7OBD32HRVVl" role="1wplMD">
                        <node concept="3clFbJ" id="7OBD32HRRtB" role="3cqZAp">
                          <node concept="3y3z36" id="7OBD32HRSUx" role="3clFbw">
                            <node concept="10Nm6u" id="7OBD32HRTyF" role="3uHU7w" />
                            <node concept="37vLTw" id="7OBD32HRS4w" role="3uHU7B">
                              <ref role="3cqZAo" node="7OBD32HRIn1" resolve="headerOS" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="7OBD32HRRtD" role="3clFbx">
                            <node concept="3clFbF" id="7OBD32HRZqF" role="3cqZAp">
                              <node concept="2OqwBi" id="7OBD32HS01H" role="3clFbG">
                                <node concept="37vLTw" id="7OBD32HRZqE" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7OBD32HRIn1" resolve="headerOS" />
                                </node>
                                <node concept="liA8E" id="7OBD32HS0yp" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~OutputStream.close()" resolve="close" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uVAMA" id="3HdbmyVtNKa" role="1zxBo5">
                  <node concept="XOnhg" id="3HdbmyVtNKc" role="1zc67B">
                    <property role="3TUv4t" value="false" />
                    <property role="TrG5h" value="exception" />
                    <node concept="nSUau" id="b4YQvXv2jTv" role="1tU5fm">
                      <node concept="3uibUv" id="3HdbmyVv5O_" role="nSUat">
                        <ref role="3uigEE" to="3qmy:~ModuleClassLoader$ModuleClassLoaderIsDisposedException" resolve="ModuleClassLoader.ModuleClassLoaderIsDisposedException" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="3HdbmyVtNKg" role="1zc67A">
                    <node concept="3clFbJ" id="3HdbmyVvi6J" role="3cqZAp">
                      <node concept="3clFbS" id="3HdbmyVvi6L" role="3clFbx">
                        <node concept="3cpWs8" id="3HdbmyVvu1k" role="3cqZAp">
                          <node concept="3cpWsn" id="3HdbmyVvu1l" role="3cpWs9">
                            <property role="TrG5h" value="os" />
                            <node concept="3uibUv" id="3HdbmyVvtc4" role="1tU5fm">
                              <ref role="3uigEE" to="guwi:~OutputStream" resolve="OutputStream" />
                            </node>
                            <node concept="2OqwBi" id="3HdbmyVvu1m" role="33vP2m">
                              <node concept="37vLTw" id="3HdbmyVvu1n" role="2Oq$k0">
                                <ref role="3cqZAo" node="49FXEugJpd2" resolve="headerFile" />
                              </node>
                              <node concept="liA8E" id="3HdbmyVvu1o" role="2OqNvi">
                                <ref role="37wK5l" to="dush:~StreamDataSource.openOutputStream()" resolve="openOutputStream" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="3HdbmyVvnbN" role="3cqZAp">
                          <node concept="2OqwBi" id="3HdbmyVvpeG" role="3clFbG">
                            <node concept="37vLTw" id="3HdbmyVvu1p" role="2Oq$k0">
                              <ref role="3cqZAo" node="3HdbmyVvu1l" resolve="os" />
                            </node>
                            <node concept="liA8E" id="3HdbmyVvrV7" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~OutputStream.write(byte[])" resolve="write" />
                              <node concept="37vLTw" id="3HdbmyVvt8H" role="37wK5m">
                                <ref role="3cqZAo" node="3HdbmyVtjiT" resolve="backup" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="3HdbmyVvwUO" role="3cqZAp">
                          <node concept="2OqwBi" id="3HdbmyVvxY4" role="3clFbG">
                            <node concept="37vLTw" id="3HdbmyVvwUM" role="2Oq$k0">
                              <ref role="3cqZAo" node="3HdbmyVvu1l" resolve="os" />
                            </node>
                            <node concept="liA8E" id="3HdbmyVvyes" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~OutputStream.close()" resolve="close" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3y3z36" id="3HdbmyVvk_5" role="3clFbw">
                        <node concept="10Nm6u" id="3HdbmyVvmmE" role="3uHU7w" />
                        <node concept="37vLTw" id="3HdbmyVvkab" role="3uHU7B">
                          <ref role="3cqZAo" node="3HdbmyVtjiT" resolve="backup" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="61tRYRiYFG" role="3cqZAp">
                      <node concept="2OqwBi" id="61tRYRiYSo" role="3clFbG">
                        <node concept="37vLTw" id="43K6Fb_Zu06" role="2Oq$k0">
                          <ref role="3cqZAo" node="5fVAPfKzmlu" resolve="LOG" />
                        </node>
                        <node concept="liA8E" id="61tRYRj0iT" role="2OqNvi">
                          <ref role="37wK5l" to="q7tw:~Category.error(java.lang.Object,java.lang.Throwable)" resolve="error" />
                          <node concept="Xl_RD" id="56HxxWx0Ixo" role="37wK5m">
                            <property role="Xl_RC" value="Can't save IEC 61499 model. Loader is disposed. Please, restart MPS" />
                          </node>
                          <node concept="37vLTw" id="61tRYRj3Gd" role="37wK5m">
                            <ref role="3cqZAo" node="3HdbmyVtNKc" resolve="exception" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="2t3th$64cNM" role="3cqZAp" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="49FXEugKL0h" role="3cqZAp" />
              <node concept="3SKdUt" id="2oFSEiUayux" role="3cqZAp">
                <node concept="1PaTwC" id="3D$ZgG8vrAf" role="1aUNEU">
                  <node concept="3oM_SD" id="3D$ZgG8vrAg" role="1PaTwD">
                    <property role="3oM_SC" value="Collect" />
                  </node>
                  <node concept="3oM_SD" id="3D$ZgG8vrAh" role="1PaTwD">
                    <property role="3oM_SC" value="tracked" />
                  </node>
                  <node concept="3oM_SD" id="3D$ZgG8vrAi" role="1PaTwD">
                    <property role="3oM_SC" value="files" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="23XkovVtRph" role="3cqZAp" />
              <node concept="3cpWs8" id="2oFSEiUa$b4" role="3cqZAp">
                <node concept="3cpWsn" id="2oFSEiUa$b7" role="3cpWs9">
                  <property role="TrG5h" value="trackedSources" />
                  <node concept="2hMVRd" id="2oFSEiUa$b0" role="1tU5fm">
                    <node concept="3uibUv" id="6gadshXO1zz" role="2hN53Y">
                      <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                    </node>
                  </node>
                  <node concept="2ShNRf" id="2oFSEiUa_zp" role="33vP2m">
                    <node concept="2i4dXS" id="2oFSEiUaC5z" role="2ShVmc">
                      <node concept="3uibUv" id="6gadshXOlcI" role="HW$YZ">
                        <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                      </node>
                      <node concept="2OqwBi" id="6gadshXOqvm" role="I$8f6">
                        <node concept="2OqwBi" id="6gadshXOgu8" role="2Oq$k0">
                          <node concept="37vLTw" id="6gadshXOehg" role="2Oq$k0">
                            <ref role="3cqZAo" node="6gadshXDKG5" resolve="myDataSource" />
                          </node>
                          <node concept="liA8E" id="6gadshXOi9_" role="2OqNvi">
                            <ref role="37wK5l" to="dush:~MultiStreamDataSource.getSubStreams()" resolve="getSubStreams" />
                          </node>
                        </node>
                        <node concept="liA8E" id="6gadshXOti_" role="2OqNvi">
                          <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
                          <node concept="2YIFZM" id="6gadshXOwPb" role="37wK5m">
                            <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                            <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                            <node concept="3uibUv" id="6gadshXOzWq" role="3PaCim">
                              <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="IxFk7YP3cZ" role="3cqZAp">
                <node concept="2OqwBi" id="IxFk7YP5o3" role="3clFbG">
                  <node concept="37vLTw" id="IxFk7YP3cX" role="2Oq$k0">
                    <ref role="3cqZAo" node="2oFSEiUa$b7" resolve="trackedSources" />
                  </node>
                  <node concept="3dhRuq" id="IxFk7YP7zD" role="2OqNvi">
                    <node concept="2OqwBi" id="IxFk7YPb6U" role="25WWJ7">
                      <node concept="37vLTw" id="IxFk7YP8Tf" role="2Oq$k0">
                        <ref role="3cqZAo" node="6gadshXDKG5" resolve="myDataSource" />
                      </node>
                      <node concept="liA8E" id="IxFk7YPcH1" role="2OqNvi">
                        <ref role="37wK5l" to="dush:~MultiStreamDataSource.getStreamByName(java.lang.String)" resolve="getStreamByName" />
                        <node concept="37vLTw" id="IxFk7YPmEJ" role="37wK5m">
                          <ref role="3cqZAo" node="6ZZUlxDy3iw" resolve="HEADER_FILE" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="49FXEugK7bh" role="3cqZAp" />
              <node concept="3cpWs8" id="49FXEugIg1K" role="3cqZAp">
                <node concept="3cpWsn" id="49FXEugIg1L" role="3cpWs9">
                  <property role="TrG5h" value="repository" />
                  <node concept="3uibUv" id="49FXEugIgje" role="1tU5fm">
                    <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                  </node>
                  <node concept="2OqwBi" id="49FXEugIg1M" role="33vP2m">
                    <node concept="2OqwBi" id="49FXEugIg1N" role="2Oq$k0">
                      <node concept="2YIFZM" id="49FXEugIg1O" role="2Oq$k0">
                        <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
                        <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                      </node>
                      <node concept="liA8E" id="49FXEugIg1P" role="2OqNvi">
                        <ref role="37wK5l" to="1m72:~ComponentManager.getComponent(java.lang.Class)" resolve="getComponent" />
                        <node concept="3VsKOn" id="49FXEugIg1Q" role="37wK5m">
                          <ref role="3VsUkX" to="3a50:~MPSCoreComponents" resolve="MPSCoreComponents" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="49FXEugIg1R" role="2OqNvi">
                      <ref role="37wK5l" to="3a50:~MPSCoreComponents.getModuleRepository()" resolve="getModuleRepository" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="7Z9MekwcEqL" role="3cqZAp">
                <node concept="3cpWsn" id="7Z9MekwcEqM" role="3cpWs9">
                  <property role="TrG5h" value="platformRepository" />
                  <node concept="3uibUv" id="7Z9MekwcDUP" role="1tU5fm">
                    <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
                  </node>
                  <node concept="2ShNRf" id="7Z9MekwcEqN" role="33vP2m">
                    <node concept="1pGfFk" id="7Z9MekwcEqO" role="2ShVmc">
                      <ref role="37wK5l" to="uvki:~PlatformRepository.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="PlatformRepository" />
                      <node concept="37vLTw" id="7Z9MekwcEqP" role="37wK5m">
                        <ref role="3cqZAo" node="49FXEugIg1L" resolve="repository" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="49FXEugK8MP" role="3cqZAp" />
              <node concept="3SKdUt" id="54aNzRMBuOE" role="3cqZAp">
                <node concept="1PaTwC" id="54aNzRMBuOF" role="1aUNEU">
                  <node concept="3oM_SD" id="54aNzRMBuOG" role="1PaTwD">
                    <property role="3oM_SC" value="" />
                  </node>
                  <node concept="3oM_SD" id="54aNzRMByf3" role="1PaTwD">
                    <property role="3oM_SC" value="Write" />
                  </node>
                  <node concept="3oM_SD" id="54aNzRMBz4q" role="1PaTwD">
                    <property role="3oM_SC" value="nodes" />
                  </node>
                  <node concept="3oM_SD" id="54aNzRMB$6M" role="1PaTwD">
                    <property role="3oM_SC" value="to" />
                  </node>
                  <node concept="3oM_SD" id="54aNzRMB$6R" role="1PaTwD">
                    <property role="3oM_SC" value="xml" />
                  </node>
                  <node concept="3oM_SD" id="54aNzRMB$jX" role="1PaTwD">
                    <property role="3oM_SC" value="files" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="54aNzRMBnUh" role="3cqZAp" />
              <node concept="1DcWWT" id="7Z9Mekwdwxq" role="3cqZAp">
                <node concept="15s5l7" id="7Z9MekwdAjq" role="lGtFl">
                  <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: type org.jetbrains.mps.openapi.model.SNode is not a subtype of node&lt;INamedConcept&gt;&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/1183457358399]&quot;;" />
                  <property role="huDt6" value="Error: type org.jetbrains.mps.openapi.model.SNode is not a subtype of node&lt;INamedConcept&gt;" />
                </node>
                <node concept="3clFbS" id="49FXEugI_p7" role="2LFqv$">
                  <node concept="3cpWs8" id="7Z9MekwcQzZ" role="3cqZAp">
                    <node concept="3cpWsn" id="7Z9MekwcQ$0" role="3cpWs9">
                      <property role="TrG5h" value="declaration" />
                      <node concept="3uibUv" id="7Z9MekwcQ$1" role="1tU5fm">
                        <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
                      </node>
                      <node concept="2OqwBi" id="7Z9MekwcSnU" role="33vP2m">
                        <node concept="37vLTw" id="7Z9MekwcSfs" role="2Oq$k0">
                          <ref role="3cqZAo" node="7Z9MekwcEqM" resolve="platformRepository" />
                        </node>
                        <node concept="liA8E" id="7Z9MekwcSZx" role="2OqNvi">
                          <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                          <node concept="37vLTw" id="7Z9Mekwdwz7" role="37wK5m">
                            <ref role="3cqZAo" node="7Z9Mekwdwz3" resolve="rootNode" />
                          </node>
                          <node concept="3VsKOn" id="7Z9MekwcWVB" role="37wK5m">
                            <ref role="3VsUkX" to="7adg:~Declaration" resolve="Declaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="7Z9Mekwd5oj" role="3cqZAp">
                    <node concept="3cpWsn" id="7Z9Mekwd5ok" role="3cpWs9">
                      <property role="TrG5h" value="document" />
                      <node concept="3uibUv" id="7Z9Mekwd4Uv" role="1tU5fm">
                        <ref role="3uigEE" to="mmaq:~Document" resolve="Document" />
                      </node>
                      <node concept="2OqwBi" id="7Z9Mekwd5ol" role="33vP2m">
                        <node concept="2ShNRf" id="7Z9Mekwd5om" role="2Oq$k0">
                          <node concept="1pGfFk" id="7Z9Mekwd5on" role="2ShVmc">
                            <ref role="37wK5l" to="6phk:~RootDeclarationPrinter.&lt;init&gt;(org.fbme.lib.common.Declaration)" resolve="RootDeclarationPrinter" />
                            <node concept="37vLTw" id="7Z9Mekwd5oo" role="37wK5m">
                              <ref role="3cqZAo" node="7Z9MekwcQ$0" resolve="declaration" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7Z9Mekwd5op" role="2OqNvi">
                          <ref role="37wK5l" to="6phk:~RootDeclarationPrinter.print()" resolve="print" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="5PfdjEXdDZ7" role="3cqZAp">
                    <node concept="3cpWsn" id="5PfdjEXdDZ8" role="3cpWs9">
                      <property role="TrG5h" value="folderName" />
                      <node concept="17QB3L" id="5PfdjEXeliF" role="1tU5fm" />
                      <node concept="2OqwBi" id="5PfdjEXdDZ9" role="33vP2m">
                        <node concept="liA8E" id="5PfdjEXdDZa" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                          <node concept="Xl_RD" id="5PfdjEXdDZb" role="37wK5m">
                            <property role="Xl_RC" value="." />
                          </node>
                          <node concept="Xl_RD" id="5PfdjEXdDZc" role="37wK5m">
                            <property role="Xl_RC" value="/" />
                          </node>
                        </node>
                        <node concept="2YIFZM" id="5PfdjEXdDZd" role="2Oq$k0">
                          <ref role="1Pybhc" to="18ew:~StringUtil" resolve="StringUtil" />
                          <ref role="37wK5l" to="18ew:~StringUtil.emptyIfNull(java.lang.String)" resolve="emptyIfNull" />
                          <node concept="2OqwBi" id="5PfdjEXdDZe" role="37wK5m">
                            <node concept="37vLTw" id="7Z9Mekwdwz9" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Z9Mekwdwz3" resolve="rootNode" />
                            </node>
                            <node concept="3TrcHB" id="5PfdjEXdDZg" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="5PfdjEXe6SL" role="3cqZAp">
                    <node concept="3cpWsn" id="5PfdjEXe6SM" role="3cpWs9">
                      <property role="TrG5h" value="fileLocalName" />
                      <node concept="17QB3L" id="5PfdjEXenFW" role="1tU5fm" />
                      <node concept="3cpWs3" id="5PfdjEXebbR" role="33vP2m">
                        <node concept="3cpWs3" id="5PfdjEXebbS" role="3uHU7B">
                          <node concept="Xl_RD" id="5PfdjEXebbT" role="3uHU7w">
                            <property role="Xl_RC" value="." />
                          </node>
                          <node concept="2OqwBi" id="5PfdjEXebbV" role="3uHU7B">
                            <node concept="37vLTw" id="7Z9MekwdC7x" role="2Oq$k0">
                              <ref role="3cqZAo" node="7Z9Mekwdwz3" resolve="rootNode" />
                            </node>
                            <node concept="3TrcHB" id="5PfdjEXebbX" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                        </node>
                        <node concept="1rXfSq" id="5PfdjEXebc1" role="3uHU7w">
                          <ref role="37wK5l" node="43K6Fb_ZIIO" resolve="getExtensionOfSource" />
                          <node concept="37vLTw" id="7Z9MekwdEoa" role="37wK5m">
                            <ref role="3cqZAo" node="7Z9Mekwdwz3" resolve="rootNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="2oFSEiUav8r" role="3cqZAp">
                    <node concept="3cpWsn" id="2oFSEiUav8s" role="3cpWs9">
                      <property role="TrG5h" value="fileName" />
                      <node concept="17QB3L" id="2oFSEiUav7I" role="1tU5fm" />
                      <node concept="3K4zz7" id="5PfdjEXe0dr" role="33vP2m">
                        <node concept="37vLTw" id="5PfdjEXef0k" role="3K4E3e">
                          <ref role="3cqZAo" node="5PfdjEXe6SM" resolve="fileLocalName" />
                        </node>
                        <node concept="2OqwBi" id="5PfdjEXdWTu" role="3K4Cdx">
                          <node concept="37vLTw" id="5PfdjEXdUXJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="5PfdjEXdDZ8" resolve="folderName" />
                          </node>
                          <node concept="liA8E" id="5PfdjEXdY95" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.isEmpty()" resolve="isEmpty" />
                          </node>
                        </node>
                        <node concept="3cpWs3" id="23XkovWmcr7" role="3K4GZi">
                          <node concept="37vLTw" id="5PfdjEXehnp" role="3uHU7w">
                            <ref role="3cqZAo" node="5PfdjEXe6SM" resolve="fileLocalName" />
                          </node>
                          <node concept="3cpWs3" id="23XkovWjhdg" role="3uHU7B">
                            <node concept="37vLTw" id="5PfdjEXdDZh" role="3uHU7B">
                              <ref role="3cqZAo" node="5PfdjEXdDZ8" resolve="folderName" />
                            </node>
                            <node concept="Xl_RD" id="23XkovWme2$" role="3uHU7w">
                              <property role="Xl_RC" value="/" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="6gadshXOQkM" role="3cqZAp">
                    <node concept="3cpWsn" id="6gadshXOQkN" role="3cpWs9">
                      <property role="TrG5h" value="source" />
                      <node concept="3uibUv" id="6gadshXOPwW" role="1tU5fm">
                        <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                      </node>
                      <node concept="2OqwBi" id="6gadshXOQkO" role="33vP2m">
                        <node concept="37vLTw" id="6gadshXOQkP" role="2Oq$k0">
                          <ref role="3cqZAo" node="6gadshXDKG5" resolve="myDataSource" />
                        </node>
                        <node concept="liA8E" id="6gadshXOQkQ" role="2OqNvi">
                          <ref role="37wK5l" to="dush:~MultiStreamDataSource.getStreamByNameOrCreate(java.lang.String)" resolve="getStreamByNameOrCreate" />
                          <node concept="37vLTw" id="6gadshXOQkR" role="37wK5m">
                            <ref role="3cqZAo" node="2oFSEiUav8s" resolve="fileName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="2oFSEiUbV_7" role="3cqZAp">
                    <node concept="2OqwBi" id="2oFSEiUbWOz" role="3clFbG">
                      <node concept="37vLTw" id="2oFSEiUbV_5" role="2Oq$k0">
                        <ref role="3cqZAo" node="2oFSEiUa$b7" resolve="trackedSources" />
                      </node>
                      <node concept="3dhRuq" id="2oFSEiUbZlX" role="2OqNvi">
                        <node concept="37vLTw" id="6gadshXOQkS" role="25WWJ7">
                          <ref role="3cqZAo" node="6gadshXOQkN" resolve="source" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs8" id="49FXEugJlUl" role="3cqZAp">
                    <node concept="3cpWsn" id="49FXEugJlUm" role="3cpWs9">
                      <property role="TrG5h" value="stream" />
                      <node concept="3uibUv" id="49FXEugJlUn" role="1tU5fm">
                        <ref role="3uigEE" to="guwi:~OutputStream" resolve="OutputStream" />
                      </node>
                      <node concept="2OqwBi" id="6gadshXP8Wo" role="33vP2m">
                        <node concept="37vLTw" id="6gadshXP8Fq" role="2Oq$k0">
                          <ref role="3cqZAo" node="6gadshXOQkN" resolve="source" />
                        </node>
                        <node concept="liA8E" id="6gadshXP9RR" role="2OqNvi">
                          <ref role="37wK5l" to="dush:~StreamDataSource.openOutputStream()" resolve="openOutputStream" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3J1_TO" id="49FXEugK5lz" role="3cqZAp">
                    <node concept="3clFbS" id="49FXEugK1Mc" role="1zxBo7">
                      <node concept="3clFbF" id="7Z9MekwddXX" role="3cqZAp">
                        <node concept="2YIFZM" id="7Z9MekwdgPn" role="3clFbG">
                          <ref role="1Pybhc" to="18ew:~JDOMUtil" resolve="JDOMUtil" />
                          <ref role="37wK5l" to="18ew:~JDOMUtil.writeDocument(org.jdom.Document,java.io.OutputStream)" resolve="writeDocument" />
                          <node concept="37vLTw" id="7Z9Mekwdhms" role="37wK5m">
                            <ref role="3cqZAo" node="7Z9Mekwd5ok" resolve="document" />
                          </node>
                          <node concept="37vLTw" id="7Z9MekwdH_$" role="37wK5m">
                            <ref role="3cqZAo" node="49FXEugJlUm" resolve="stream" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="1wplmZ" id="c4X56HdZb$b" role="1zxBo6">
                      <node concept="3clFbS" id="49FXEugK5lA" role="1wplMD">
                        <node concept="3clFbF" id="49FXEugK6XB" role="3cqZAp">
                          <node concept="2YIFZM" id="49FXEugK726" role="3clFbG">
                            <ref role="37wK5l" to="18ew:~FileUtil.closeFileSafe(java.io.Closeable)" resolve="closeFileSafe" />
                            <ref role="1Pybhc" to="18ew:~FileUtil" resolve="FileUtil" />
                            <node concept="37vLTw" id="49FXEugK76R" role="37wK5m">
                              <ref role="3cqZAo" node="49FXEugJlUm" resolve="stream" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="49FXEugIACY" role="1DdaDG">
                  <node concept="37vLTw" id="7Z9MekwbwDA" role="2Oq$k0">
                    <ref role="3cqZAo" node="7OBD32HWdgl" resolve="model" />
                  </node>
                  <node concept="liA8E" id="7Z9Mekwb$L6" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~SModel.getRootNodes()" resolve="getRootNodes" />
                  </node>
                </node>
                <node concept="3cpWsn" id="7Z9Mekwdwz3" role="1Duv9x">
                  <property role="TrG5h" value="rootNode" />
                  <node concept="3Tqbb2" id="7Z9MekwdzU4" role="1tU5fm">
                    <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2oFSEiUc0ml" role="3cqZAp" />
              <node concept="3SKdUt" id="2oFSEiUc1Hc" role="3cqZAp">
                <node concept="1PaTwC" id="3D$ZgG8vrAy" role="1aUNEU">
                  <node concept="3oM_SD" id="3D$ZgG8vrAz" role="1PaTwD">
                    <property role="3oM_SC" value="Remove" />
                  </node>
                  <node concept="3oM_SD" id="3D$ZgG8vrA$" role="1PaTwD">
                    <property role="3oM_SC" value="deleted/renamed" />
                  </node>
                  <node concept="3oM_SD" id="3D$ZgG8vrA_" role="1PaTwD">
                    <property role="3oM_SC" value="files" />
                  </node>
                </node>
              </node>
              <node concept="3clFbH" id="2oFSEiUc45V" role="3cqZAp" />
              <node concept="2Gpval" id="2oFSEiUc5Gf" role="3cqZAp">
                <node concept="2GrKxI" id="2oFSEiUc5Gh" role="2Gsz3X">
                  <property role="TrG5h" value="file" />
                </node>
                <node concept="3clFbS" id="2oFSEiUc5Gl" role="2LFqv$">
                  <node concept="3clFbF" id="2oFSEiUci0K" role="3cqZAp">
                    <node concept="2OqwBi" id="2oFSEiUciwW" role="3clFbG">
                      <node concept="2GrUjf" id="23XkovVI2Dl" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="2oFSEiUc5Gh" resolve="file" />
                      </node>
                      <node concept="liA8E" id="2oFSEiUcrtG" role="2OqNvi">
                        <ref role="37wK5l" to="dush:~StreamDataSource.delete()" resolve="delete" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="2oFSEiUcgOW" role="2GsD0m">
                  <ref role="3cqZAo" node="2oFSEiUa$b7" resolve="trackedSources" />
                </node>
              </node>
            </node>
            <node concept="3uVAMA" id="23XkovVRGsx" role="1zxBo5">
              <node concept="XOnhg" id="23XkovVRGsy" role="1zc67B">
                <property role="3TUv4t" value="false" />
                <property role="TrG5h" value="e" />
                <node concept="nSUau" id="8pu827umGw3" role="1tU5fm">
                  <node concept="3uibUv" id="23XkovVRNQv" role="nSUat">
                    <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="23XkovVRGs$" role="1zc67A">
                <node concept="3clFbF" id="6gadshXQ$B6" role="3cqZAp">
                  <node concept="2OqwBi" id="6gadshXQ_Z7" role="3clFbG">
                    <node concept="37vLTw" id="43K6Fb_Z$FV" role="2Oq$k0">
                      <ref role="3cqZAo" node="5fVAPfKzmlu" resolve="LOG" />
                    </node>
                    <node concept="liA8E" id="6gadshXQB7k" role="2OqNvi">
                      <ref role="37wK5l" to="q7tw:~Category.error(java.lang.Object,java.lang.Throwable)" resolve="error" />
                      <node concept="Xl_RD" id="7H$5i_Y5CWD" role="37wK5m">
                        <property role="Xl_RC" value="Exception raised during save" />
                      </node>
                      <node concept="37vLTw" id="6gadshXQDJm" role="37wK5m">
                        <ref role="3cqZAo" node="23XkovVRGsy" resolve="e" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="YS8fn" id="23XkovVRQ9O" role="3cqZAp">
                  <node concept="2ShNRf" id="6gadshXM1Ue" role="YScLw">
                    <node concept="1pGfFk" id="6gadshXM3D6" role="2ShVmc">
                      <ref role="37wK5l" to="dush:~ModelSaveException.&lt;init&gt;(java.lang.String,java.lang.Iterable,java.lang.Throwable)" resolve="ModelSaveException" />
                      <node concept="Xl_RD" id="6gadshXM52i" role="37wK5m">
                        <property role="Xl_RC" value="Exception raised during save" />
                      </node>
                      <node concept="2YIFZM" id="6gadshXM7nS" role="37wK5m">
                        <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                        <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                        <node concept="3uibUv" id="6gadshXM94U" role="3PaCim">
                          <ref role="3uigEE" to="mhbf:~SModel$Problem" resolve="SModel.Problem" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="6gadshXM9Xz" role="37wK5m">
                        <ref role="3cqZAo" node="23XkovVRGsy" resolve="e" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6gadshXDJo4" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="43K6Fb_YX1r" role="jymVt" />
    <node concept="2YIFZL" id="43K6Fb_ZB45" role="jymVt">
      <property role="TrG5h" value="convertRootNode" />
      <node concept="3clFbS" id="43K6Fb_ZB47" role="3clF47">
        <node concept="3cpWs8" id="43K6Fb_ZB48" role="3cqZAp">
          <node concept="3cpWsn" id="43K6Fb_ZB49" role="3cpWs9">
            <property role="TrG5h" value="owner" />
            <node concept="3uibUv" id="QE5Kxys2aD" role="1tU5fm">
              <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
            </node>
            <node concept="2ShNRf" id="43K6Fb_ZB4b" role="33vP2m">
              <node concept="1pGfFk" id="QE5Kxys4yx" role="2ShVmc">
                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.&lt;init&gt;()" resolve="PlatformElementsOwner" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="43K6Fb_ZB4d" role="3cqZAp">
          <node concept="3cpWsn" id="43K6Fb_ZB4e" role="3cpWs9">
            <property role="TrG5h" value="converter" />
            <node concept="3uibUv" id="43K6Fb_ZB4f" role="1tU5fm">
              <ref role="3uigEE" to="epky:~RootConverter" resolve="RootConverter" />
            </node>
            <node concept="2YIFZM" id="7i2nuYeoFNF" role="33vP2m">
              <ref role="1Pybhc" to="25ix:~PlatformConverter" resolve="PlatformConverter" />
              <ref role="37wK5l" to="25ix:~PlatformConverter.create(org.fbme.ide.iec61499.repository.PlatformElementsOwner,org.jetbrains.mps.openapi.model.SModelReference,org.jdom.Document)" resolve="create" />
              <node concept="37vLTw" id="7i2nuYeoGxj" role="37wK5m">
                <ref role="3cqZAo" node="43K6Fb_ZB49" resolve="owner" />
              </node>
              <node concept="37vLTw" id="7i2nuYeoGzj" role="37wK5m">
                <ref role="3cqZAo" node="43K6Fb_ZB5R" resolve="reference" />
              </node>
              <node concept="37vLTw" id="7i2nuYeoGW0" role="37wK5m">
                <ref role="3cqZAo" node="43K6Fb_ZB5T" resolve="doc" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="43K6Fb_ZB4s" role="3cqZAp">
          <node concept="37vLTw" id="43K6Fb_ZB4t" role="3KbGdf">
            <ref role="3cqZAo" node="43K6Fb_ZB5V" resolve="fileExtension" />
          </node>
          <node concept="3KbdKl" id="43K6Fb_ZB4u" role="3KbHQx">
            <node concept="10M0yZ" id="43K6Fb_ZB4v" role="3Kbmr1">
              <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
              <ref role="3cqZAo" node="49FXEugGn3U" resolve="FBT_FILE_EXT" />
            </node>
            <node concept="3clFbS" id="43K6Fb_ZB4w" role="3Kbo56">
              <node concept="3cpWs6" id="43K6Fb_ZB4x" role="3cqZAp">
                <node concept="2OqwBi" id="43K6Fb_ZB4y" role="3cqZAk">
                  <node concept="1eOMI4" id="43K6Fb_ZB4z" role="2Oq$k0">
                    <node concept="10QFUN" id="43K6Fb_ZB4$" role="1eOMHV">
                      <node concept="3uibUv" id="3WC2DnYwfLQ" role="10QFUM">
                        <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                      </node>
                      <node concept="2OqwBi" id="43K6Fb_ZB4A" role="10QFUP">
                        <node concept="37vLTw" id="43K6Fb_ZB4B" role="2Oq$k0">
                          <ref role="3cqZAo" node="43K6Fb_ZB4e" resolve="converter" />
                        </node>
                        <node concept="liA8E" id="43K6Fb_ZB4C" role="2OqNvi">
                          <ref role="37wK5l" to="epky:~RootConverter.convertFBType()" resolve="convertFBType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="43K6Fb_ZB4D" role="2OqNvi">
                    <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="43K6Fb_ZB4E" role="3KbHQx">
            <node concept="10M0yZ" id="43K6Fb_ZB4F" role="3Kbmr1">
              <ref role="3cqZAo" node="2ByE74k$OOc" resolve="ADP_FILE_EXT" />
              <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
            </node>
            <node concept="3clFbS" id="43K6Fb_ZB4G" role="3Kbo56">
              <node concept="3cpWs6" id="43K6Fb_ZB4H" role="3cqZAp">
                <node concept="2OqwBi" id="43K6Fb_ZB4I" role="3cqZAk">
                  <node concept="1eOMI4" id="43K6Fb_ZB4J" role="2Oq$k0">
                    <node concept="10QFUN" id="43K6Fb_ZB4K" role="1eOMHV">
                      <node concept="3uibUv" id="3WC2DnYwgQX" role="10QFUM">
                        <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                      </node>
                      <node concept="2OqwBi" id="43K6Fb_ZB4M" role="10QFUP">
                        <node concept="37vLTw" id="43K6Fb_ZB4N" role="2Oq$k0">
                          <ref role="3cqZAo" node="43K6Fb_ZB4e" resolve="converter" />
                        </node>
                        <node concept="liA8E" id="43K6Fb_ZB4O" role="2OqNvi">
                          <ref role="37wK5l" to="epky:~RootConverter.convertAdapterType()" resolve="convertAdapterType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="43K6Fb_ZB4P" role="2OqNvi">
                    <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="43K6Fb_ZB4Q" role="3KbHQx">
            <node concept="10M0yZ" id="43K6Fb_ZB4R" role="3Kbmr1">
              <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
              <ref role="3cqZAo" node="23XkovVqfsb" resolve="SUB_FILE_EXT" />
            </node>
            <node concept="3clFbS" id="43K6Fb_ZB4S" role="3Kbo56">
              <node concept="3cpWs6" id="43K6Fb_ZB4T" role="3cqZAp">
                <node concept="2OqwBi" id="43K6Fb_ZB4U" role="3cqZAk">
                  <node concept="1eOMI4" id="43K6Fb_ZB4V" role="2Oq$k0">
                    <node concept="10QFUN" id="43K6Fb_ZB4W" role="1eOMHV">
                      <node concept="3uibUv" id="3WC2DnYwhCl" role="10QFUM">
                        <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                      </node>
                      <node concept="2OqwBi" id="43K6Fb_ZB4Y" role="10QFUP">
                        <node concept="37vLTw" id="43K6Fb_ZB4Z" role="2Oq$k0">
                          <ref role="3cqZAo" node="43K6Fb_ZB4e" resolve="converter" />
                        </node>
                        <node concept="liA8E" id="43K6Fb_ZB50" role="2OqNvi">
                          <ref role="37wK5l" to="epky:~RootConverter.convertSubapplicationType()" resolve="convertSubapplicationType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="43K6Fb_ZB51" role="2OqNvi">
                    <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="43K6Fb_ZB52" role="3KbHQx">
            <node concept="10M0yZ" id="43K6Fb_ZB53" role="3Kbmr1">
              <ref role="3cqZAo" node="23XkovVpUVE" resolve="RES_FILE_EXT" />
              <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
            </node>
            <node concept="3clFbS" id="43K6Fb_ZB54" role="3Kbo56">
              <node concept="3cpWs6" id="43K6Fb_ZB55" role="3cqZAp">
                <node concept="2OqwBi" id="43K6Fb_ZB56" role="3cqZAk">
                  <node concept="1eOMI4" id="43K6Fb_ZB57" role="2Oq$k0">
                    <node concept="10QFUN" id="43K6Fb_ZB58" role="1eOMHV">
                      <node concept="3uibUv" id="3WC2DnYwims" role="10QFUM">
                        <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                      </node>
                      <node concept="2OqwBi" id="43K6Fb_ZB5a" role="10QFUP">
                        <node concept="37vLTw" id="43K6Fb_ZB5b" role="2Oq$k0">
                          <ref role="3cqZAo" node="43K6Fb_ZB4e" resolve="converter" />
                        </node>
                        <node concept="liA8E" id="43K6Fb_ZB5c" role="2OqNvi">
                          <ref role="37wK5l" to="epky:~RootConverter.convertResourceType()" resolve="convertResourceType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="43K6Fb_ZB5d" role="2OqNvi">
                    <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="43K6Fb_ZB5e" role="3KbHQx">
            <node concept="10M0yZ" id="43K6Fb_ZB5f" role="3Kbmr1">
              <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
              <ref role="3cqZAo" node="23XkovVpZ6d" resolve="DEV_FILE_EXT" />
            </node>
            <node concept="3clFbS" id="43K6Fb_ZB5g" role="3Kbo56">
              <node concept="3cpWs6" id="43K6Fb_ZB5h" role="3cqZAp">
                <node concept="2OqwBi" id="43K6Fb_ZB5i" role="3cqZAk">
                  <node concept="1eOMI4" id="43K6Fb_ZB5j" role="2Oq$k0">
                    <node concept="10QFUN" id="43K6Fb_ZB5k" role="1eOMHV">
                      <node concept="3uibUv" id="3WC2DnYwjSZ" role="10QFUM">
                        <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                      </node>
                      <node concept="2OqwBi" id="43K6Fb_ZB5m" role="10QFUP">
                        <node concept="37vLTw" id="43K6Fb_ZB5n" role="2Oq$k0">
                          <ref role="3cqZAo" node="43K6Fb_ZB4e" resolve="converter" />
                        </node>
                        <node concept="liA8E" id="43K6Fb_ZB5o" role="2OqNvi">
                          <ref role="37wK5l" to="epky:~RootConverter.convertDeviceType()" resolve="convertDeviceType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="43K6Fb_ZB5p" role="2OqNvi">
                    <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="43K6Fb_ZB5q" role="3KbHQx">
            <node concept="10M0yZ" id="43K6Fb_ZB5r" role="3Kbmr1">
              <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
              <ref role="3cqZAo" node="23XkovVqbY6" resolve="SEG_FILE_EXT" />
            </node>
            <node concept="3clFbS" id="43K6Fb_ZB5s" role="3Kbo56">
              <node concept="3cpWs6" id="43K6Fb_ZB5t" role="3cqZAp">
                <node concept="2OqwBi" id="43K6Fb_ZB5u" role="3cqZAk">
                  <node concept="1eOMI4" id="43K6Fb_ZB5v" role="2Oq$k0">
                    <node concept="10QFUN" id="43K6Fb_ZB5w" role="1eOMHV">
                      <node concept="3uibUv" id="3WC2DnYwkBC" role="10QFUM">
                        <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                      </node>
                      <node concept="2OqwBi" id="43K6Fb_ZB5y" role="10QFUP">
                        <node concept="37vLTw" id="43K6Fb_ZB5z" role="2Oq$k0">
                          <ref role="3cqZAo" node="43K6Fb_ZB4e" resolve="converter" />
                        </node>
                        <node concept="liA8E" id="43K6Fb_ZB5$" role="2OqNvi">
                          <ref role="37wK5l" to="epky:~RootConverter.convertSegmentType()" resolve="convertSegmentType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="43K6Fb_ZB5_" role="2OqNvi">
                    <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="43K6Fb_ZB5A" role="3KbHQx">
            <node concept="10M0yZ" id="43K6Fb_ZB5B" role="3Kbmr1">
              <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
              <ref role="3cqZAo" node="23XkovVpQv5" resolve="SYS_FILE_EXT" />
            </node>
            <node concept="3clFbS" id="43K6Fb_ZB5C" role="3Kbo56">
              <node concept="3cpWs6" id="43K6Fb_ZB5D" role="3cqZAp">
                <node concept="2OqwBi" id="43K6Fb_ZB5E" role="3cqZAk">
                  <node concept="1eOMI4" id="43K6Fb_ZB5F" role="2Oq$k0">
                    <node concept="10QFUN" id="43K6Fb_ZB5G" role="1eOMHV">
                      <node concept="3uibUv" id="3WC2DnYwlq4" role="10QFUM">
                        <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                      </node>
                      <node concept="2OqwBi" id="43K6Fb_ZB5I" role="10QFUP">
                        <node concept="37vLTw" id="43K6Fb_ZB5J" role="2Oq$k0">
                          <ref role="3cqZAo" node="43K6Fb_ZB4e" resolve="converter" />
                        </node>
                        <node concept="liA8E" id="43K6Fb_ZB5K" role="2OqNvi">
                          <ref role="37wK5l" to="epky:~RootConverter.convertSystemConfiguration()" resolve="convertSystemConfiguration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="43K6Fb_ZB5L" role="2OqNvi">
                    <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="43K6Fb_ZB5M" role="3Kb1Dw">
            <node concept="3cpWs6" id="43K6Fb_ZB5N" role="3cqZAp">
              <node concept="10Nm6u" id="43K6Fb_ZB5O" role="3cqZAk" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tqbb2" id="43K6Fb_ZB5Q" role="3clF45" />
      <node concept="37vLTG" id="43K6Fb_ZB5R" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="43K6Fb_ZB5S" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="37vLTG" id="43K6Fb_ZB5T" role="3clF46">
        <property role="TrG5h" value="doc" />
        <node concept="3uibUv" id="43K6Fb_ZB5U" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Document" resolve="Document" />
        </node>
      </node>
      <node concept="37vLTG" id="43K6Fb_ZB5V" role="3clF46">
        <property role="TrG5h" value="fileExtension" />
        <node concept="17QB3L" id="43K6Fb_ZB5W" role="1tU5fm" />
      </node>
      <node concept="3Tm6S6" id="43K6Fb_ZB5P" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="43K6Fb_ZHYN" role="jymVt" />
    <node concept="2YIFZL" id="43K6Fb_ZIIO" role="jymVt">
      <property role="TrG5h" value="getExtensionOfSource" />
      <node concept="3clFbS" id="43K6Fb_ZIIP" role="3clF47">
        <node concept="3cpWs8" id="43K6Fb_ZIIQ" role="3cqZAp">
          <node concept="3cpWsn" id="43K6Fb_ZIIR" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3bZ5Sz" id="43K6FbA01f5" role="1tU5fm" />
            <node concept="2OqwBi" id="43K6Fb_ZIIX" role="33vP2m">
              <node concept="37vLTw" id="43K6Fb_ZIIY" role="2Oq$k0">
                <ref role="3cqZAo" node="43K6Fb_ZIJQ" resolve="node" />
              </node>
              <node concept="2yIwOk" id="43K6FbA01u8" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="43K6Fb_ZIJ2" role="3cqZAp">
          <node concept="3clFbS" id="43K6Fb_ZIJ3" role="3clFbx">
            <node concept="3cpWs6" id="43K6Fb_ZIJ4" role="3cqZAp">
              <node concept="37vLTw" id="43K6Fb_ZIK0" role="3cqZAk">
                <ref role="3cqZAo" node="49FXEugGn3U" resolve="FBT_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="43K6FbA03V6" role="3clFbw">
            <node concept="37vLTw" id="43K6Fb_ZIJ7" role="2Oq$k0">
              <ref role="3cqZAo" node="43K6Fb_ZIIR" resolve="concept" />
            </node>
            <node concept="2Zo12i" id="43K6FbA04gT" role="2OqNvi">
              <node concept="chp4Y" id="43K6FbA04sm" role="2Zo12j">
                <ref role="cht4Q" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="43K6Fb_ZIJ9" role="3cqZAp">
          <node concept="3clFbS" id="43K6Fb_ZIJa" role="3clFbx">
            <node concept="3cpWs6" id="43K6Fb_ZIJb" role="3cqZAp">
              <node concept="37vLTw" id="43K6Fb_ZIK9" role="3cqZAk">
                <ref role="3cqZAo" node="2ByE74k$OOc" resolve="ADP_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="43K6FbA05M3" role="3clFbw">
            <node concept="37vLTw" id="43K6FbA05M4" role="2Oq$k0">
              <ref role="3cqZAo" node="43K6Fb_ZIIR" resolve="concept" />
            </node>
            <node concept="2Zo12i" id="43K6FbA05M5" role="2OqNvi">
              <node concept="chp4Y" id="43K6FbA07Uo" role="2Zo12j">
                <ref role="cht4Q" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="43K6Fb_ZIJg" role="3cqZAp">
          <node concept="3clFbS" id="43K6Fb_ZIJh" role="3clFbx">
            <node concept="3cpWs6" id="43K6Fb_ZIJi" role="3cqZAp">
              <node concept="37vLTw" id="43K6Fb_ZIKi" role="3cqZAk">
                <ref role="3cqZAo" node="23XkovVqfsb" resolve="SUB_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="43K6FbA07Wg" role="3clFbw">
            <node concept="37vLTw" id="43K6FbA07Wh" role="2Oq$k0">
              <ref role="3cqZAo" node="43K6Fb_ZIIR" resolve="concept" />
            </node>
            <node concept="2Zo12i" id="43K6FbA07Wi" role="2OqNvi">
              <node concept="chp4Y" id="43K6FbA09qF" role="2Zo12j">
                <ref role="cht4Q" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="43K6Fb_ZIJn" role="3cqZAp">
          <node concept="3clFbS" id="43K6Fb_ZIJo" role="3clFbx">
            <node concept="3cpWs6" id="43K6Fb_ZIJp" role="3cqZAp">
              <node concept="37vLTw" id="43K6Fb_ZIKr" role="3cqZAk">
                <ref role="3cqZAo" node="23XkovVpUVE" resolve="RES_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="43K6FbA09vs" role="3clFbw">
            <node concept="37vLTw" id="43K6FbA09vt" role="2Oq$k0">
              <ref role="3cqZAo" node="43K6Fb_ZIIR" resolve="concept" />
            </node>
            <node concept="2Zo12i" id="43K6FbA09vu" role="2OqNvi">
              <node concept="chp4Y" id="43K6FbA0bhw" role="2Zo12j">
                <ref role="cht4Q" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="43K6Fb_ZIJu" role="3cqZAp">
          <node concept="3clFbS" id="43K6Fb_ZIJv" role="3clFbx">
            <node concept="3cpWs6" id="43K6Fb_ZIJw" role="3cqZAp">
              <node concept="37vLTw" id="43K6Fb_ZIK$" role="3cqZAk">
                <ref role="3cqZAo" node="23XkovVpZ6d" resolve="DEV_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="43K6FbA0bjs" role="3clFbw">
            <node concept="37vLTw" id="43K6FbA0bjt" role="2Oq$k0">
              <ref role="3cqZAo" node="43K6Fb_ZIIR" resolve="concept" />
            </node>
            <node concept="2Zo12i" id="43K6FbA0bju" role="2OqNvi">
              <node concept="chp4Y" id="43K6FbA0cys" role="2Zo12j">
                <ref role="cht4Q" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="43K6Fb_ZIJ_" role="3cqZAp">
          <node concept="3clFbS" id="43K6Fb_ZIJA" role="3clFbx">
            <node concept="3cpWs6" id="43K6Fb_ZIJB" role="3cqZAp">
              <node concept="37vLTw" id="43K6Fb_ZIKH" role="3cqZAk">
                <ref role="3cqZAo" node="23XkovVqbY6" resolve="SEG_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="43K6FbA0cBf" role="3clFbw">
            <node concept="37vLTw" id="43K6FbA0cBg" role="2Oq$k0">
              <ref role="3cqZAo" node="43K6Fb_ZIIR" resolve="concept" />
            </node>
            <node concept="2Zo12i" id="43K6FbA0cBh" role="2OqNvi">
              <node concept="chp4Y" id="43K6FbA0ell" role="2Zo12j">
                <ref role="cht4Q" to="xiqq:5s_pyghtjox" resolve="SegmentTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="43K6Fb_ZIJG" role="3cqZAp">
          <node concept="3clFbS" id="43K6Fb_ZIJH" role="3clFbx">
            <node concept="3cpWs6" id="43K6Fb_ZIJI" role="3cqZAp">
              <node concept="37vLTw" id="43K6Fb_ZIKQ" role="3cqZAk">
                <ref role="3cqZAo" node="23XkovVpQv5" resolve="SYS_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="43K6FbA0epX" role="3clFbw">
            <node concept="37vLTw" id="43K6FbA0epY" role="2Oq$k0">
              <ref role="3cqZAo" node="43K6Fb_ZIIR" resolve="concept" />
            </node>
            <node concept="2Zo12i" id="43K6FbA0epZ" role="2OqNvi">
              <node concept="chp4Y" id="43K6FbA0g8K" role="2Zo12j">
                <ref role="cht4Q" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="43K6Fb_ZIJN" role="3cqZAp">
          <node concept="10Nm6u" id="43K6Fb_ZIJO" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="43K6Fb_ZIJP" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="43K6Fb_ZIJQ" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="43K6Fb_ZIJR" role="1tU5fm" />
      </node>
      <node concept="3Tm6S6" id="43K6Fb_ZIJS" role="1B3o_S" />
    </node>
  </node>
  <node concept="312cEu" id="7OBD32HKFLJ">
    <property role="TrG5h" value="IEC61499ModelHeader" />
    <node concept="Wx3nA" id="7OBD32HL4ip" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="MODEL_TAG" />
      <node concept="3Tm6S6" id="7OBD32HL4im" role="1B3o_S" />
      <node concept="17QB3L" id="7OBD32HL4in" role="1tU5fm" />
      <node concept="Xl_RD" id="7OBD32HL4io" role="33vP2m">
        <property role="Xl_RC" value="iec61499-model" />
      </node>
    </node>
    <node concept="Wx3nA" id="7OBD32HLevG" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="IMPORT_TAG" />
      <node concept="3Tm6S6" id="7OBD32HLevD" role="1B3o_S" />
      <node concept="17QB3L" id="7OBD32HLevE" role="1tU5fm" />
      <node concept="Xl_RD" id="7OBD32HLevF" role="33vP2m">
        <property role="Xl_RC" value="import" />
      </node>
    </node>
    <node concept="Wx3nA" id="7OBD32HLhK2" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="REF_ATTR" />
      <node concept="3Tm6S6" id="7OBD32HLhJZ" role="1B3o_S" />
      <node concept="17QB3L" id="7OBD32HLhK0" role="1tU5fm" />
      <node concept="Xl_RD" id="7OBD32HLhK1" role="33vP2m">
        <property role="Xl_RC" value="ref" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32HKFN5" role="jymVt" />
    <node concept="312cEg" id="7OBD32HKFQS" role="jymVt">
      <property role="TrG5h" value="myImports" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7OBD32HKFQ2" role="1B3o_S" />
      <node concept="3uibUv" id="7OBD32HKFQv" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7OBD32HKRTp" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32HKFRE" role="jymVt" />
    <node concept="3Tm1VV" id="7OBD32HKFLK" role="1B3o_S" />
    <node concept="3clFbW" id="7OBD32HKFSn" role="jymVt">
      <node concept="3cqZAl" id="7OBD32HKFSo" role="3clF45" />
      <node concept="3Tm1VV" id="7OBD32HKFSp" role="1B3o_S" />
      <node concept="3clFbS" id="7OBD32HKFSr" role="3clF47">
        <node concept="XkiVB" id="6gadshXE1bU" role="3cqZAp">
          <ref role="37wK5l" to="g3l6:~SModelSimpleHeader.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference)" resolve="SModelSimpleHeader" />
          <node concept="37vLTw" id="6gadshXE1kk" role="37wK5m">
            <ref role="3cqZAo" node="7OBD32HKFSE" resolve="reference" />
          </node>
        </node>
        <node concept="3clFbF" id="7OBD32HKFSS" role="3cqZAp">
          <node concept="37vLTI" id="7OBD32HKFSU" role="3clFbG">
            <node concept="37vLTw" id="7OBD32HKIGg" role="37vLTJ">
              <ref role="3cqZAo" node="7OBD32HKFQS" resolve="myImports" />
            </node>
            <node concept="2YIFZM" id="7OBD32HKMQL" role="37vLTx">
              <ref role="37wK5l" to="33ny:~Collections.unmodifiableList(java.util.List)" resolve="unmodifiableList" />
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <node concept="2ShNRf" id="7OBD32HKMY8" role="37wK5m">
                <node concept="1pGfFk" id="7OBD32HKO8V" role="2ShVmc">
                  <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                  <node concept="37vLTw" id="7OBD32HKOpo" role="37wK5m">
                    <ref role="3cqZAo" node="7OBD32HKFSR" resolve="imports" />
                  </node>
                  <node concept="3uibUv" id="7OBD32HKSlj" role="1pMfVU">
                    <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7OBD32HKFSE" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="6gadshXEjlT" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="37vLTG" id="7OBD32HKFSR" role="3clF46">
        <property role="TrG5h" value="imports" />
        <node concept="3uibUv" id="7OBD32HKFSP" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="7OBD32HKRtW" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32HKGSf" role="jymVt" />
    <node concept="3clFb_" id="7OBD32HKGnS" role="jymVt">
      <property role="TrG5h" value="getImports" />
      <node concept="3uibUv" id="7OBD32HKGnT" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="7OBD32HKGnU" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7OBD32HKGnV" role="1B3o_S" />
      <node concept="3clFbS" id="7OBD32HKGnW" role="3clF47">
        <node concept="3clFbF" id="7OBD32HKGnX" role="3cqZAp">
          <node concept="37vLTw" id="7OBD32HKGnR" role="3clFbG">
            <ref role="3cqZAo" node="7OBD32HKFQS" resolve="myImports" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32HKU$a" role="jymVt" />
    <node concept="3clFb_" id="7OBD32HKVos" role="jymVt">
      <property role="TrG5h" value="save" />
      <node concept="3clFbS" id="7OBD32HKVov" role="3clF47">
        <node concept="3cpWs8" id="7OBD32HL0UD" role="3cqZAp">
          <node concept="3cpWsn" id="7OBD32HL0UE" role="3cpWs9">
            <property role="TrG5h" value="modelElement" />
            <node concept="3uibUv" id="7OBD32HL0UF" role="1tU5fm">
              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
            </node>
            <node concept="2ShNRf" id="7OBD32HL0We" role="33vP2m">
              <node concept="1pGfFk" id="7OBD32HL1_g" role="2ShVmc">
                <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                <node concept="37vLTw" id="7OBD32HL4is" role="37wK5m">
                  <ref role="3cqZAo" node="7OBD32HL4ip" resolve="MODEL_TAG" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7OBD32HL8Ed" role="3cqZAp">
          <node concept="2OqwBi" id="7OBD32HL8Xc" role="3clFbG">
            <node concept="37vLTw" id="7OBD32HL8Eb" role="2Oq$k0">
              <ref role="3cqZAo" node="7OBD32HL0UE" resolve="modelElement" />
            </node>
            <node concept="liA8E" id="7OBD32HLav3" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
              <node concept="37vLTw" id="6gadshXEf8t" role="37wK5m">
                <ref role="3cqZAo" node="7OBD32HLhK2" resolve="REF_ATTR" />
              </node>
              <node concept="2OqwBi" id="7OBD32HLj_9" role="37wK5m">
                <node concept="1rXfSq" id="6gadshXE4jJ" role="2Oq$k0">
                  <ref role="37wK5l" to="g3l6:~SModelSimpleHeader.getModelReference()" resolve="getModelReference" />
                </node>
                <node concept="liA8E" id="7OBD32HLlzZ" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7OBD32HLbLh" role="3cqZAp" />
        <node concept="1DcWWT" id="7OBD32HLbPv" role="3cqZAp">
          <node concept="3clFbS" id="7OBD32HLbPx" role="2LFqv$">
            <node concept="3cpWs8" id="7OBD32HLdi9" role="3cqZAp">
              <node concept="3cpWsn" id="7OBD32HLdia" role="3cpWs9">
                <property role="TrG5h" value="importElement" />
                <node concept="3uibUv" id="7OBD32HLdib" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                </node>
                <node concept="2ShNRf" id="7OBD32HLdjq" role="33vP2m">
                  <node concept="1pGfFk" id="7OBD32HLdWs" role="2ShVmc">
                    <ref role="37wK5l" to="mmaq:~Element.&lt;init&gt;(java.lang.String)" resolve="Element" />
                    <node concept="37vLTw" id="7OBD32HLevJ" role="37wK5m">
                      <ref role="3cqZAo" node="7OBD32HLevG" resolve="IMPORT_TAG" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7OBD32HLfmf" role="3cqZAp">
              <node concept="2OqwBi" id="7OBD32HLfBt" role="3clFbG">
                <node concept="37vLTw" id="7OBD32HLfmd" role="2Oq$k0">
                  <ref role="3cqZAo" node="7OBD32HLdia" resolve="importElement" />
                </node>
                <node concept="liA8E" id="7OBD32HLh7O" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
                  <node concept="37vLTw" id="7OBD32HLhK5" role="37wK5m">
                    <ref role="3cqZAo" node="7OBD32HLhK2" resolve="REF_ATTR" />
                  </node>
                  <node concept="2OqwBi" id="7OBD32HLiZZ" role="37wK5m">
                    <node concept="37vLTw" id="7OBD32HLiLB" role="2Oq$k0">
                      <ref role="3cqZAo" node="7OBD32HLbPy" resolve="impord" />
                    </node>
                    <node concept="liA8E" id="7OBD32HLjeO" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7OBD32HLmaD" role="3cqZAp" />
            <node concept="3clFbF" id="7OBD32HLmdq" role="3cqZAp">
              <node concept="2OqwBi" id="7OBD32HLmvb" role="3clFbG">
                <node concept="37vLTw" id="7OBD32HLmdo" role="2Oq$k0">
                  <ref role="3cqZAo" node="7OBD32HL0UE" resolve="modelElement" />
                </node>
                <node concept="liA8E" id="7OBD32HLnZO" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.addContent(org.jdom.Element)" resolve="addContent" />
                  <node concept="37vLTw" id="7OBD32HLo0S" role="37wK5m">
                    <ref role="3cqZAo" node="7OBD32HLdia" resolve="importElement" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="7OBD32HLbPy" role="1Duv9x">
            <property role="TrG5h" value="impord" />
            <node concept="3uibUv" id="7OBD32HLc1v" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
            </node>
          </node>
          <node concept="37vLTw" id="7OBD32HLcJa" role="1DdaDG">
            <ref role="3cqZAo" node="7OBD32HKFQS" resolve="myImports" />
          </node>
        </node>
        <node concept="3clFbH" id="7OBD32HLZQr" role="3cqZAp" />
        <node concept="3clFbF" id="7OBD32HLZcU" role="3cqZAp">
          <node concept="2YIFZM" id="7OBD32HLZcV" role="3clFbG">
            <ref role="1Pybhc" to="18ew:~JDOMUtil" resolve="JDOMUtil" />
            <ref role="37wK5l" to="18ew:~JDOMUtil.writeDocument(org.jdom.Document,java.io.OutputStream)" resolve="writeDocument" />
            <node concept="2OqwBi" id="7OBD32HLZcW" role="37wK5m">
              <node concept="2ShNRf" id="7OBD32HLZcX" role="2Oq$k0">
                <node concept="1pGfFk" id="7OBD32HLZcY" role="2ShVmc">
                  <ref role="37wK5l" to="mmaq:~Document.&lt;init&gt;()" resolve="Document" />
                </node>
              </node>
              <node concept="liA8E" id="7OBD32HLZcZ" role="2OqNvi">
                <ref role="37wK5l" to="mmaq:~Document.setContent(org.jdom.Content)" resolve="setContent" />
                <node concept="37vLTw" id="7OBD32HLZd0" role="37wK5m">
                  <ref role="3cqZAo" node="7OBD32HL0UE" resolve="modelElement" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7OBD32HLZd1" role="37wK5m">
              <ref role="3cqZAo" node="7OBD32HKW5N" resolve="os" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7OBD32HKUYJ" role="1B3o_S" />
      <node concept="3cqZAl" id="7OBD32HKVon" role="3clF45" />
      <node concept="37vLTG" id="7OBD32HKW5N" role="3clF46">
        <property role="TrG5h" value="os" />
        <node concept="3uibUv" id="7OBD32HKW5M" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~OutputStream" resolve="OutputStream" />
        </node>
      </node>
      <node concept="3uibUv" id="7OBD32HLG7j" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32HNnRl" role="jymVt" />
    <node concept="2YIFZL" id="7OBD32HLIqK" role="jymVt">
      <property role="TrG5h" value="load" />
      <node concept="3clFbS" id="7OBD32HLIqM" role="3clF47">
        <node concept="3cpWs8" id="7OBD32HMBtC" role="3cqZAp">
          <node concept="3cpWsn" id="7OBD32HMBtD" role="3cpWs9">
            <property role="TrG5h" value="pf" />
            <node concept="3uibUv" id="7OBD32HMBtB" role="1tU5fm">
              <ref role="3uigEE" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
            </node>
            <node concept="2YIFZM" id="7OBD32HMBtE" role="33vP2m">
              <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7OBD32HM8ij" role="3cqZAp">
          <node concept="3clFbS" id="7OBD32HM8il" role="1zxBo7">
            <node concept="3cpWs8" id="7OBD32HM3lg" role="3cqZAp">
              <node concept="3cpWsn" id="7OBD32HM3lh" role="3cpWs9">
                <property role="TrG5h" value="document" />
                <node concept="3uibUv" id="7OBD32HM3ld" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Document" resolve="Document" />
                </node>
                <node concept="2YIFZM" id="7OBD32HM3li" role="33vP2m">
                  <ref role="37wK5l" to="18ew:~JDOMUtil.loadDocument(java.io.InputStream)" resolve="loadDocument" />
                  <ref role="1Pybhc" to="18ew:~JDOMUtil" resolve="JDOMUtil" />
                  <node concept="37vLTw" id="7OBD32HM3lj" role="37wK5m">
                    <ref role="3cqZAo" node="7OBD32HLIrP" resolve="is" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7OBD32HM8ik" role="3cqZAp" />
            <node concept="3cpWs8" id="7OBD32HLIqN" role="3cqZAp">
              <node concept="3cpWsn" id="7OBD32HLIqO" role="3cpWs9">
                <property role="TrG5h" value="modelElement" />
                <node concept="3uibUv" id="7OBD32HLIqP" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                </node>
                <node concept="2OqwBi" id="7OBD32HM57w" role="33vP2m">
                  <node concept="37vLTw" id="7OBD32HM4Nm" role="2Oq$k0">
                    <ref role="3cqZAo" node="7OBD32HM3lh" resolve="document" />
                  </node>
                  <node concept="liA8E" id="7OBD32HM6oh" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Document.getRootElement()" resolve="getRootElement" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="7OBD32HMs3s" role="3cqZAp">
              <node concept="3clFbS" id="7OBD32HMs3u" role="3clFbx">
                <node concept="YS8fn" id="7OBD32HMuDB" role="3cqZAp">
                  <node concept="2ShNRf" id="7OBD32HMuIt" role="YScLw">
                    <node concept="1pGfFk" id="7OBD32HMw6Q" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~IOException.&lt;init&gt;(java.lang.String)" resolve="IOException" />
                      <node concept="Xl_RD" id="7OBD32HMwfW" role="37wK5m">
                        <property role="Xl_RC" value="Malformed xml" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17QLQc" id="7OBD32HMusr" role="3clFbw">
                <node concept="37vLTw" id="7OBD32HMuyY" role="3uHU7w">
                  <ref role="3cqZAo" node="7OBD32HL4ip" resolve="MODEL_TAG" />
                </node>
                <node concept="2OqwBi" id="7OBD32HMsRv" role="3uHU7B">
                  <node concept="37vLTw" id="7OBD32HMso8" role="2Oq$k0">
                    <ref role="3cqZAo" node="7OBD32HLIqO" resolve="modelElement" />
                  </node>
                  <node concept="liA8E" id="7OBD32HMtiv" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Element.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7OBD32HMrJo" role="3cqZAp" />
            <node concept="3cpWs8" id="7OBD32HMerz" role="3cqZAp">
              <node concept="3cpWsn" id="7OBD32HMer$" role="3cpWs9">
                <property role="TrG5h" value="ref" />
                <node concept="3uibUv" id="6gadshXEj3p" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                </node>
                <node concept="2OqwBi" id="6gadshXEikM" role="33vP2m">
                  <node concept="37vLTw" id="6gadshXEi59" role="2Oq$k0">
                    <ref role="3cqZAo" node="7OBD32HMBtD" resolve="pf" />
                  </node>
                  <node concept="liA8E" id="6gadshXEiB3" role="2OqNvi">
                    <ref role="37wK5l" to="dush:~PersistenceFacade.createModelReference(java.lang.String)" resolve="createModelReference" />
                    <node concept="2OqwBi" id="7OBD32HLIqU" role="37wK5m">
                      <node concept="37vLTw" id="7OBD32HLIqV" role="2Oq$k0">
                        <ref role="3cqZAo" node="7OBD32HLIqO" resolve="modelElement" />
                      </node>
                      <node concept="liA8E" id="7OBD32HLIqW" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String)" resolve="getAttributeValue" />
                        <node concept="37vLTw" id="6gadshXEiNE" role="37wK5m">
                          <ref role="3cqZAo" node="7OBD32HLhK2" resolve="REF_ATTR" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7OBD32HMm$O" role="3cqZAp" />
            <node concept="3cpWs8" id="7OBD32HMQNC" role="3cqZAp">
              <node concept="3cpWsn" id="7OBD32HMQND" role="3cpWs9">
                <property role="TrG5h" value="importElements" />
                <node concept="_YKpA" id="7OBD32HMS21" role="1tU5fm">
                  <node concept="3uibUv" id="7OBD32HMS23" role="_ZDj9">
                    <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7OBD32HMQNE" role="33vP2m">
                  <node concept="37vLTw" id="7OBD32HMQNF" role="2Oq$k0">
                    <ref role="3cqZAo" node="7OBD32HLIqO" resolve="modelElement" />
                  </node>
                  <node concept="liA8E" id="7OBD32HMQNG" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Element.getChildren(java.lang.String)" resolve="getChildren" />
                    <node concept="37vLTw" id="7OBD32HMQNH" role="37wK5m">
                      <ref role="3cqZAo" node="7OBD32HLevG" resolve="IMPORT_TAG" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7OBD32HM_da" role="3cqZAp">
              <node concept="3cpWsn" id="7OBD32HM_db" role="3cpWs9">
                <property role="TrG5h" value="imports" />
                <node concept="_YKpA" id="7OBD32HM_d2" role="1tU5fm">
                  <node concept="3uibUv" id="7OBD32HM_d5" role="_ZDj9">
                    <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7OBD32HN1WU" role="33vP2m">
                  <node concept="2OqwBi" id="7OBD32HMTsC" role="2Oq$k0">
                    <node concept="37vLTw" id="7OBD32HMSLf" role="2Oq$k0">
                      <ref role="3cqZAo" node="7OBD32HMQND" resolve="importElements" />
                    </node>
                    <node concept="3$u5V9" id="7OBD32HN13p" role="2OqNvi">
                      <node concept="1bVj0M" id="7OBD32HN13r" role="23t8la">
                        <node concept="3clFbS" id="7OBD32HN13s" role="1bW5cS">
                          <node concept="3clFbF" id="7OBD32HN1n3" role="3cqZAp">
                            <node concept="2OqwBi" id="7OBD32HMDFm" role="3clFbG">
                              <node concept="37vLTw" id="7OBD32HMD$Q" role="2Oq$k0">
                                <ref role="3cqZAo" node="7OBD32HMBtD" resolve="pf" />
                              </node>
                              <node concept="liA8E" id="7OBD32HMEi8" role="2OqNvi">
                                <ref role="37wK5l" to="dush:~PersistenceFacade.createModelReference(java.lang.String)" resolve="createModelReference" />
                                <node concept="2OqwBi" id="7OBD32HLIrh" role="37wK5m">
                                  <node concept="37vLTw" id="7OBD32HN1Bs" role="2Oq$k0">
                                    <ref role="3cqZAo" node="7OBD32HN13t" resolve="it" />
                                  </node>
                                  <node concept="liA8E" id="7OBD32HLIrj" role="2OqNvi">
                                    <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String)" resolve="getAttributeValue" />
                                    <node concept="37vLTw" id="7OBD32HN1n7" role="37wK5m">
                                      <ref role="3cqZAo" node="7OBD32HLhK2" resolve="REF_ATTR" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="7OBD32HN13t" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="7OBD32HN13u" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="ANE8D" id="7OBD32HNiwB" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7OBD32HNiQt" role="3cqZAp" />
            <node concept="3cpWs6" id="7OBD32HNj5u" role="3cqZAp">
              <node concept="2ShNRf" id="7OBD32HNj6U" role="3cqZAk">
                <node concept="1pGfFk" id="7OBD32HNkpH" role="2ShVmc">
                  <ref role="37wK5l" node="7OBD32HKFSn" resolve="IEC61499ModelHeader" />
                  <node concept="37vLTw" id="7OBD32HNkB9" role="37wK5m">
                    <ref role="3cqZAo" node="7OBD32HMer$" resolve="ref" />
                  </node>
                  <node concept="37vLTw" id="7OBD32HNlYW" role="37wK5m">
                    <ref role="3cqZAo" node="7OBD32HM_db" resolve="imports" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="7OBD32HM8im" role="1zxBo5">
            <node concept="XOnhg" id="7OBD32HM8io" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="3RFMOXMt$XQ" role="1tU5fm">
                <node concept="3uibUv" id="7OBD32HM8To" role="nSUat">
                  <ref role="3uigEE" to="mmaq:~JDOMException" resolve="JDOMException" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="7OBD32HM8is" role="1zc67A">
              <node concept="YS8fn" id="7OBD32HM923" role="3cqZAp">
                <node concept="2ShNRf" id="7OBD32HM93U" role="YScLw">
                  <node concept="1pGfFk" id="7OBD32HM9IH" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~IOException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="IOException" />
                    <node concept="Xl_RD" id="7OBD32HM9Mf" role="37wK5m">
                      <property role="Xl_RC" value="Can not parse xml" />
                    </node>
                    <node concept="37vLTw" id="7OBD32HMag9" role="37wK5m">
                      <ref role="3cqZAo" node="7OBD32HM8io" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7OBD32HNnBA" role="3clF45">
        <ref role="3uigEE" node="7OBD32HKFLJ" resolve="IEC61499ModelHeader" />
      </node>
      <node concept="3uibUv" id="7OBD32HLIrR" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="37vLTG" id="7OBD32HLIrP" role="3clF46">
        <property role="TrG5h" value="is" />
        <node concept="3uibUv" id="7OBD32HM0uo" role="1tU5fm">
          <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7OBD32HLIrN" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7OBD32IajO$" role="jymVt" />
    <node concept="3clFb_" id="7OBD32Iamdo" role="jymVt">
      <property role="TrG5h" value="save" />
      <node concept="3clFbS" id="7OBD32Iamdr" role="3clF47">
        <node concept="3cpWs8" id="7OBD32Iao_b" role="3cqZAp">
          <node concept="3cpWsn" id="7OBD32Iao_c" role="3cpWs9">
            <property role="TrG5h" value="os" />
            <node concept="3uibUv" id="7OBD32Iao_d" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~OutputStream" resolve="OutputStream" />
            </node>
            <node concept="2OqwBi" id="7OBD32IaoGl" role="33vP2m">
              <node concept="37vLTw" id="7OBD32IaoBS" role="2Oq$k0">
                <ref role="3cqZAo" node="7OBD32IannK" resolve="file" />
              </node>
              <node concept="liA8E" id="7OBD32Iap0u" role="2OqNvi">
                <ref role="37wK5l" to="3ju5:~IFile.openOutputStream()" resolve="openOutputStream" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7OBD32IaqD5" role="3cqZAp">
          <node concept="3clFbS" id="7OBD32Iaoya" role="1zxBo7">
            <node concept="3clFbF" id="7OBD32Iat0K" role="3cqZAp">
              <node concept="1rXfSq" id="7OBD32Iat0J" role="3clFbG">
                <ref role="37wK5l" node="7OBD32HKVos" resolve="save" />
                <node concept="37vLTw" id="7OBD32Iat6w" role="37wK5m">
                  <ref role="3cqZAo" node="7OBD32Iao_c" resolve="os" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="bY_GkkKbOt7" role="1zxBo6">
            <node concept="3clFbS" id="7OBD32IaqD8" role="1wplMD">
              <node concept="3clFbJ" id="7OBD32Iap1s" role="3cqZAp">
                <node concept="3y3z36" id="7OBD32IaprS" role="3clFbw">
                  <node concept="10Nm6u" id="7OBD32IapsC" role="3uHU7w" />
                  <node concept="37vLTw" id="7OBD32Iap1Y" role="3uHU7B">
                    <ref role="3cqZAo" node="7OBD32Iao_c" resolve="os" />
                  </node>
                </node>
                <node concept="3clFbS" id="7OBD32Iap1u" role="3clFbx">
                  <node concept="3clFbF" id="7OBD32Iaptf" role="3cqZAp">
                    <node concept="2OqwBi" id="7OBD32IapCa" role="3clFbG">
                      <node concept="37vLTw" id="7OBD32Iapte" role="2Oq$k0">
                        <ref role="3cqZAo" node="7OBD32Iao_c" resolve="os" />
                      </node>
                      <node concept="liA8E" id="7OBD32IaqB_" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~OutputStream.close()" resolve="close" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7OBD32Ial2x" role="1B3o_S" />
      <node concept="3cqZAl" id="7OBD32IamcD" role="3clF45" />
      <node concept="37vLTG" id="7OBD32IannK" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="7OBD32Iaov5" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="3uibUv" id="7OBD32IarSL" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32Iawjh" role="jymVt" />
    <node concept="2YIFZL" id="7OBD32Iaunt" role="jymVt">
      <property role="TrG5h" value="load" />
      <node concept="3clFbS" id="7OBD32Iaunv" role="3clF47">
        <node concept="3cpWs8" id="7OBD32Iaunw" role="3cqZAp">
          <node concept="3cpWsn" id="7OBD32Iaunx" role="3cpWs9">
            <property role="TrG5h" value="is" />
            <node concept="3uibUv" id="7OBD32IavPI" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
            </node>
            <node concept="2OqwBi" id="7OBD32Iaunz" role="33vP2m">
              <node concept="37vLTw" id="7OBD32Iaun$" role="2Oq$k0">
                <ref role="3cqZAo" node="7OBD32IaunR" resolve="file" />
              </node>
              <node concept="liA8E" id="7OBD32Iaun_" role="2OqNvi">
                <ref role="37wK5l" to="3ju5:~IFile.openInputStream()" resolve="openInputStream" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="7OBD32IaunA" role="3cqZAp">
          <node concept="3clFbS" id="7OBD32IaunB" role="1zxBo7">
            <node concept="3cpWs6" id="7OBD32IawcB" role="3cqZAp">
              <node concept="1rXfSq" id="7OBD32IaunD" role="3cqZAk">
                <ref role="37wK5l" node="7OBD32HLIqK" resolve="load" />
                <node concept="37vLTw" id="7OBD32IaunE" role="37wK5m">
                  <ref role="3cqZAo" node="7OBD32Iaunx" resolve="is" />
                </node>
              </node>
            </node>
          </node>
          <node concept="1wplmZ" id="bY_GkkKbXw1" role="1zxBo6">
            <node concept="3clFbS" id="7OBD32IaunF" role="1wplMD">
              <node concept="3clFbJ" id="7OBD32IaunG" role="3cqZAp">
                <node concept="3y3z36" id="7OBD32IaunH" role="3clFbw">
                  <node concept="10Nm6u" id="7OBD32IaunI" role="3uHU7w" />
                  <node concept="37vLTw" id="7OBD32IaunJ" role="3uHU7B">
                    <ref role="3cqZAo" node="7OBD32Iaunx" resolve="is" />
                  </node>
                </node>
                <node concept="3clFbS" id="7OBD32IaunK" role="3clFbx">
                  <node concept="3clFbF" id="7OBD32IaunL" role="3cqZAp">
                    <node concept="2OqwBi" id="7OBD32IaunM" role="3clFbG">
                      <node concept="37vLTw" id="7OBD32IaunN" role="2Oq$k0">
                        <ref role="3cqZAo" node="7OBD32Iaunx" resolve="is" />
                      </node>
                      <node concept="liA8E" id="7OBD32IaunO" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~InputStream.close()" resolve="close" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7OBD32IavCP" role="3clF45">
        <ref role="3uigEE" node="7OBD32HKFLJ" resolve="IEC61499ModelHeader" />
      </node>
      <node concept="3uibUv" id="7OBD32IaunT" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="37vLTG" id="7OBD32IaunR" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="7OBD32IaunS" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7OBD32IaunP" role="1B3o_S" />
    </node>
    <node concept="3uibUv" id="6gadshXDWgX" role="1zkMxy">
      <ref role="3uigEE" to="g3l6:~SModelSimpleHeader" resolve="SModelSimpleHeader" />
    </node>
  </node>
  <node concept="312cEu" id="1_Zi$Xmm_zm">
    <property role="TrG5h" value="IEC61499Persistence" />
    <node concept="Wx3nA" id="1_Zi$XmmA7o" role="jymVt">
      <property role="TrG5h" value="MODEL_FACTORY" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6kvdbYu8w6p" role="1tU5fm">
        <ref role="3uigEE" to="dush:~ModelFactory" resolve="ModelFactory" />
      </node>
      <node concept="2ShNRf" id="1_Zi$XmmA7s" role="33vP2m">
        <node concept="HV5vD" id="1_Zi$XmmA7t" role="2ShVmc">
          <ref role="HV5vE" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7OBD32IcaPF" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="7OBD32IcaQ$" role="jymVt">
      <property role="TrG5h" value="DATASOURCE_FROM_NAME_FACTORY" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7OBD32Idaof" role="1tU5fm">
        <ref role="3uigEE" to="iyvn:~DataSourceFactoryFromName" resolve="DataSourceFactoryFromName" />
      </node>
      <node concept="2ShNRf" id="7OBD32IcaQA" role="33vP2m">
        <node concept="YeOm9" id="7OBD32Icp88" role="2ShVmc">
          <node concept="1Y3b0j" id="7OBD32Icp8b" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="iyvn:~DataSourceFactoryFromName" resolve="DataSourceFactoryFromName" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="7OBD32Icp8c" role="1B3o_S" />
            <node concept="3clFb_" id="7OBD32Icp8e" role="jymVt">
              <property role="TrG5h" value="getType" />
              <node concept="3Tm1VV" id="7OBD32Icp8f" role="1B3o_S" />
              <node concept="2AHcQZ" id="7OBD32Icp8h" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="7OBD32Icp8i" role="3clF45">
                <ref role="3uigEE" to="bxo2:~DataSourceType" resolve="DataSourceType" />
              </node>
              <node concept="3clFbS" id="7OBD32Icp8j" role="3clF47">
                <node concept="3clFbF" id="7OBD32IcqxD" role="3cqZAp">
                  <node concept="10M0yZ" id="7OBD32IcxSy" role="3clFbG">
                    <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
                    <ref role="3cqZAo" node="49FXEugFoZS" resolve="DST" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFb_" id="7OBD32Icp8l" role="jymVt">
              <property role="TrG5h" value="create" />
              <node concept="3Tm1VV" id="7OBD32Icp8m" role="1B3o_S" />
              <node concept="2AHcQZ" id="7OBD32Icp8o" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="7OBD32Icp8p" role="3clF45">
                <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
              </node>
              <node concept="37vLTG" id="7OBD32Icp8q" role="3clF46">
                <property role="TrG5h" value="name" />
                <node concept="3uibUv" id="7OBD32Icp8r" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModelName" resolve="SModelName" />
                </node>
                <node concept="2AHcQZ" id="7OBD32Icp8s" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="37vLTG" id="7OBD32Icp8t" role="3clF46">
                <property role="TrG5h" value="sourceRoot" />
                <node concept="3uibUv" id="7OBD32Icp8u" role="1tU5fm">
                  <ref role="3uigEE" to="ends:~SourceRoot" resolve="SourceRoot" />
                </node>
                <node concept="2AHcQZ" id="7OBD32Icp8v" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="3clFbS" id="7OBD32Icp8A" role="3clF47">
                <node concept="3cpWs8" id="7OBD32IcF41" role="3cqZAp">
                  <node concept="3cpWsn" id="7OBD32IcF42" role="3cpWs9">
                    <property role="TrG5h" value="descendant" />
                    <node concept="3uibUv" id="7OBD32IcF3Z" role="1tU5fm">
                      <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                    </node>
                    <node concept="2OqwBi" id="7OBD32IcF44" role="33vP2m">
                      <node concept="2OqwBi" id="7OBD32IcF45" role="2Oq$k0">
                        <node concept="37vLTw" id="7OBD32IcF46" role="2Oq$k0">
                          <ref role="3cqZAo" node="7OBD32Icp8t" resolve="sourceRoot" />
                        </node>
                        <node concept="liA8E" id="7OBD32IcF47" role="2OqNvi">
                          <ref role="37wK5l" to="ends:~SourceRoot.getAbsolutePath()" resolve="getAbsolutePath" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OBD32IcF48" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.getDescendant(java.lang.String)" resolve="getDescendant" />
                        <node concept="3cpWs3" id="7OBD32IcIJ7" role="37wK5m">
                          <node concept="10M0yZ" id="6ZZUlxDyqoU" role="3uHU7w">
                            <ref role="3cqZAo" node="6ZZUlxDy3iw" resolve="HEADER_FILE" />
                            <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
                          </node>
                          <node concept="3cpWs3" id="7OBD32IcG2z" role="3uHU7B">
                            <node concept="2OqwBi" id="7OBD32IcF49" role="3uHU7B">
                              <node concept="37vLTw" id="7OBD32IcF4a" role="2Oq$k0">
                                <ref role="3cqZAo" node="7OBD32Icp8q" resolve="name" />
                              </node>
                              <node concept="liA8E" id="7OBD32IcF4b" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModelName.getLongName()" resolve="getLongName" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="7OBD32IcGpy" role="3uHU7w">
                              <property role="Xl_RC" value="/" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="7OBD32Id5D3" role="3cqZAp">
                  <node concept="2ShNRf" id="7OBD32Id64s" role="3cqZAk">
                    <node concept="1pGfFk" id="3uYXhT8ksxA" role="2ShVmc">
                      <ref role="37wK5l" to="ends:~FileDataSource.&lt;init&gt;(jetbrains.mps.vfs.IFile)" resolve="FileDataSource" />
                      <node concept="37vLTw" id="3uYXhT8kq81" role="37wK5m">
                        <ref role="3cqZAo" node="7OBD32IcF42" resolve="descendant" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7OBD32IcaQC" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1_Zi$Xmm_Cw" role="jymVt" />
    <node concept="2YIFZL" id="3inNSRVvx8C" role="jymVt">
      <property role="TrG5h" value="reloadAll" />
      <node concept="3clFbS" id="3inNSRVvx8F" role="3clF47">
        <node concept="3clFbF" id="3inNSRVvzqn" role="3cqZAp">
          <node concept="1rXfSq" id="3inNSRVvzqm" role="3clFbG">
            <ref role="37wK5l" node="3inNSRVvxUI" resolve="reloadLibraries" />
          </node>
        </node>
        <node concept="2Gpval" id="3inNSRVvzvT" role="3cqZAp">
          <node concept="2GrKxI" id="3inNSRVvzvV" role="2Gsz3X">
            <property role="TrG5h" value="project" />
          </node>
          <node concept="2OqwBi" id="3inNSRVvzDd" role="2GsD0m">
            <node concept="2YIFZM" id="3inNSRVvzyU" role="2Oq$k0">
              <ref role="37wK5l" to="z1c3:~ProjectManager.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="z1c3:~ProjectManager" resolve="ProjectManager" />
            </node>
            <node concept="liA8E" id="3inNSRVvzJ9" role="2OqNvi">
              <ref role="37wK5l" to="z1c3:~ProjectManager.getOpenedProjects()" resolve="getOpenedProjects" />
            </node>
          </node>
          <node concept="3clFbS" id="3inNSRVvzvZ" role="2LFqv$">
            <node concept="3clFbF" id="3inNSRVvzsB" role="3cqZAp">
              <node concept="1rXfSq" id="3inNSRVvzs_" role="3clFbG">
                <ref role="37wK5l" node="6kvdbYu7uFn" resolve="reloadModelsInProject" />
                <node concept="2GrUjf" id="3inNSRVvzPl" role="37wK5m">
                  <ref role="2Gs0qQ" node="3inNSRVvzvV" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3inNSRVvwVS" role="1B3o_S" />
      <node concept="3cqZAl" id="3inNSRVvx8c" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3inNSRVvxqh" role="jymVt" />
    <node concept="2YIFZL" id="3inNSRVvxUI" role="jymVt">
      <property role="TrG5h" value="reloadLibraries" />
      <node concept="3clFbS" id="3inNSRVvxUL" role="3clF47">
        <node concept="3SKdUt" id="3inNSRVvyct" role="3cqZAp">
          <node concept="1PaTwC" id="3inNSRVvycu" role="1aUNEU">
            <node concept="3oM_SD" id="3inNSRVvycw" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="3inNSRVvycH" role="1PaTwD">
              <property role="3oM_SC" value="provider" />
            </node>
            <node concept="3oM_SD" id="3inNSRVvycS" role="1PaTwD">
              <property role="3oM_SC" value="ext" />
            </node>
            <node concept="3oM_SD" id="3inNSRVvycW" role="1PaTwD">
              <property role="3oM_SC" value="point" />
            </node>
            <node concept="3oM_SD" id="3inNSRVvydh" role="1PaTwD">
              <property role="3oM_SC" value="here" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3inNSRVvyDC" role="3cqZAp">
          <node concept="3cpWsn" id="3inNSRVvyDD" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <node concept="3uibUv" id="3inNSRVvyDE" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
            </node>
            <node concept="2YIFZM" id="3inNSRVvyDF" role="33vP2m">
              <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7H$5i_XCAUq" role="3cqZAp">
          <node concept="2OqwBi" id="7H$5i_XCBEw" role="3clFbG">
            <node concept="2OqwBi" id="7H$5i_XCBgf" role="2Oq$k0">
              <node concept="37vLTw" id="7H$5i_XCAUo" role="2Oq$k0">
                <ref role="3cqZAo" node="3inNSRVvyDD" resolve="repo" />
              </node>
              <node concept="liA8E" id="7H$5i_XCB_t" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="7H$5i_XCBMO" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runWriteInEDT(java.lang.Runnable)" resolve="runWriteInEDT" />
              <node concept="1bVj0M" id="7H$5i_XCBOn" role="37wK5m">
                <node concept="3clFbS" id="7H$5i_XCBOo" role="1bW5cS">
                  <node concept="3cpWs8" id="7ER5dKXh6Ww" role="3cqZAp">
                    <node concept="3cpWsn" id="7ER5dKXh6Wx" role="3cpWs9">
                      <property role="TrG5h" value="moduleImpl" />
                      <node concept="3uibUv" id="7ER5dKXh6Rn" role="1tU5fm">
                        <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                      </node>
                      <node concept="0kSF2" id="7ER5dKXh6Wy" role="33vP2m">
                        <node concept="3uibUv" id="7ER5dKXh6Wz" role="0kSFW">
                          <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                        </node>
                        <node concept="2OqwBi" id="7ER5dKXh6W$" role="0kSFX">
                          <node concept="37vLTw" id="7ER5dKXh6W_" role="2Oq$k0">
                            <ref role="3cqZAo" node="3inNSRVvyDD" resolve="repo" />
                          </node>
                          <node concept="liA8E" id="7ER5dKXh6WA" role="2OqNvi">
                            <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getModule(org.jetbrains.mps.openapi.module.SModuleId)" resolve="getModule" />
                            <node concept="2OqwBi" id="7ER5dKXh6WB" role="37wK5m">
                              <node concept="2YIFZM" id="7ER5dKXh6WC" role="2Oq$k0">
                                <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                                <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                              </node>
                              <node concept="liA8E" id="7ER5dKXh6WD" role="2OqNvi">
                                <ref role="37wK5l" to="dush:~PersistenceFacade.createModuleId(java.lang.String)" resolve="createModuleId" />
                                <node concept="Xl_RD" id="7ER5dKXh6WE" role="37wK5m">
                                  <property role="Xl_RC" value="b8a7e14f-52ea-4ee2-b17e-26c27da8084c" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="3inNSRVvyeq" role="3cqZAp">
                    <node concept="3clFbS" id="3inNSRVvyer" role="3clFbx">
                      <node concept="3clFbF" id="7H$5i_Y3Rnd" role="3cqZAp">
                        <node concept="2OqwBi" id="7H$5i_Y3R$n" role="3clFbG">
                          <node concept="37vLTw" id="7ER5dKXh7wz" role="2Oq$k0">
                            <ref role="3cqZAo" node="7ER5dKXh6Wx" resolve="moduleImpl" />
                          </node>
                          <node concept="liA8E" id="7H$5i_Y3ROX" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~AbstractModule.updateModelsSet()" resolve="updateModelsSet" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="3inNSRVvyeD" role="3clFbw">
                      <node concept="10Nm6u" id="3inNSRVvyeE" role="3uHU7w" />
                      <node concept="37vLTw" id="7ER5dKXh7tP" role="3uHU7B">
                        <ref role="3cqZAo" node="7ER5dKXh6Wx" resolve="moduleImpl" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3inNSRVvye3" role="3cqZAp" />
      </node>
      <node concept="3Tm1VV" id="3inNSRVvxHT" role="1B3o_S" />
      <node concept="3cqZAl" id="3inNSRVvxUi" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3inNSRVvwEC" role="jymVt" />
    <node concept="2YIFZL" id="6kvdbYu7uFn" role="jymVt">
      <property role="TrG5h" value="reloadModelsInProject" />
      <node concept="3clFbS" id="6kvdbYu7uFp" role="3clF47">
        <node concept="3clFbF" id="6kvdbYu9nPu" role="3cqZAp">
          <node concept="2OqwBi" id="6kvdbYu9p8p" role="3clFbG">
            <node concept="2OqwBi" id="3inNSRVv$Rd" role="2Oq$k0">
              <node concept="2OqwBi" id="6kvdbYu9olr" role="2Oq$k0">
                <node concept="37vLTw" id="3inNSRVv$iW" role="2Oq$k0">
                  <ref role="3cqZAo" node="3inNSRVvwwY" resolve="project" />
                </node>
                <node concept="liA8E" id="3inNSRVv$GX" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
              </node>
              <node concept="liA8E" id="3inNSRVv_3V" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="6kvdbYu9pp8" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runWriteInEDT(java.lang.Runnable)" resolve="runWriteInEDT" />
              <node concept="1bVj0M" id="6kvdbYu9puU" role="37wK5m">
                <node concept="3clFbS" id="6kvdbYu9puV" role="1bW5cS">
                  <node concept="2Gpval" id="3inNSRVc301" role="3cqZAp">
                    <node concept="2GrKxI" id="3inNSRVc303" role="2Gsz3X">
                      <property role="TrG5h" value="module" />
                    </node>
                    <node concept="3clFbS" id="3inNSRVc307" role="2LFqv$">
                      <node concept="3cpWs8" id="6kvdbYu7uFq" role="3cqZAp">
                        <node concept="3cpWsn" id="6kvdbYu7uFr" role="3cpWs9">
                          <property role="TrG5h" value="moduleImpl" />
                          <node concept="3uibUv" id="6kvdbYu7uFs" role="1tU5fm">
                            <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                          </node>
                          <node concept="0kSF2" id="6kvdbYu7uFt" role="33vP2m">
                            <node concept="3uibUv" id="6kvdbYu7uFu" role="0kSFW">
                              <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                            </node>
                            <node concept="2GrUjf" id="3inNSRVc3Yz" role="0kSFX">
                              <ref role="2Gs0qQ" node="3inNSRVc303" resolve="module" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="6kvdbYu7uFz" role="3cqZAp">
                        <node concept="3clFbS" id="6kvdbYu7uF$" role="3clFbx">
                          <node concept="3cpWs8" id="3inNSRVvBXC" role="3cqZAp">
                            <node concept="3cpWsn" id="3inNSRVvBXD" role="3cpWs9">
                              <property role="TrG5h" value="dir" />
                              <node concept="3uibUv" id="3inNSRVvAWO" role="1tU5fm">
                                <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                              </node>
                              <node concept="2OqwBi" id="3inNSRVvBXE" role="33vP2m">
                                <node concept="37vLTw" id="3inNSRVvBXF" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6kvdbYu7uFr" resolve="moduleImpl" />
                                </node>
                                <node concept="liA8E" id="3inNSRVvBXG" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleSourceDir()" resolve="getModuleSourceDir" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbJ" id="3inNSRVc4lX" role="3cqZAp">
                            <node concept="3clFbS" id="3inNSRVc4lZ" role="3clFbx">
                              <node concept="3clFbF" id="7H$5i_Y3RY2" role="3cqZAp">
                                <node concept="2OqwBi" id="7H$5i_Y3RY3" role="3clFbG">
                                  <node concept="37vLTw" id="7H$5i_Y3RY4" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6kvdbYu7uFr" resolve="moduleImpl" />
                                  </node>
                                  <node concept="liA8E" id="7H$5i_Y3RY5" role="2OqNvi">
                                    <ref role="37wK5l" to="z1c3:~AbstractModule.updateModelsSet()" resolve="updateModelsSet" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1Wc70l" id="3inNSRVvChl" role="3clFbw">
                              <node concept="3y3z36" id="3inNSRVvCIC" role="3uHU7B">
                                <node concept="10Nm6u" id="3inNSRVvCUK" role="3uHU7w" />
                                <node concept="37vLTw" id="3inNSRVvCvU" role="3uHU7B">
                                  <ref role="3cqZAo" node="3inNSRVvBXD" resolve="dir" />
                                </node>
                              </node>
                              <node concept="1rXfSq" id="3inNSRVckYq" role="3uHU7w">
                                <ref role="37wK5l" node="3inNSRVckrb" resolve="hasIec61499Model" />
                                <node concept="37vLTw" id="3inNSRVvBXH" role="37wK5m">
                                  <ref role="3cqZAo" node="3inNSRVvBXD" resolve="dir" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="6kvdbYu7uFG" role="3clFbw">
                          <node concept="10Nm6u" id="6kvdbYu7uFH" role="3uHU7w" />
                          <node concept="37vLTw" id="6kvdbYu7uFI" role="3uHU7B">
                            <ref role="3cqZAo" node="6kvdbYu7uFr" resolve="moduleImpl" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3inNSRVc2tY" role="2GsD0m">
                      <node concept="37vLTw" id="3inNSRVv__e" role="2Oq$k0">
                        <ref role="3cqZAo" node="3inNSRVvwwY" resolve="project" />
                      </node>
                      <node concept="liA8E" id="3inNSRVvA0c" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~IProject.getProjectModules()" resolve="getProjectModules" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="6kvdbYu7uFJ" role="3clF45" />
      <node concept="3Tm1VV" id="7pEplJku$3e" role="1B3o_S" />
      <node concept="37vLTG" id="3inNSRVvwwY" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3inNSRVvwwX" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="13uTNv4m8xh" role="jymVt" />
    <node concept="2YIFZL" id="13uTNv4mi$Q" role="jymVt">
      <property role="TrG5h" value="getPathToElement" />
      <node concept="3clFbS" id="13uTNv4mi$T" role="3clF47">
        <node concept="3cpWs8" id="4Bo2W45lRAd" role="3cqZAp">
          <node concept="3cpWsn" id="4Bo2W45lRAe" role="3cpWs9">
            <property role="TrG5h" value="fileName" />
            <node concept="17QB3L" id="4Bo2W45lQxn" role="1tU5fm" />
            <node concept="3cpWs3" id="4Bo2W45lRAf" role="33vP2m">
              <node concept="2OqwBi" id="4Bo2W45lRAg" role="3uHU7w">
                <node concept="3TrcHB" id="4Bo2W45lRAh" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
                <node concept="37vLTw" id="4Bo2W45lRAi" role="2Oq$k0">
                  <ref role="3cqZAo" node="13uTNv4mj3R" resolve="rootNode" />
                </node>
              </node>
              <node concept="3cpWs3" id="4Bo2W45lRAj" role="3uHU7B">
                <node concept="2OqwBi" id="4Bo2W45lRAk" role="3uHU7B">
                  <node concept="liA8E" id="4Bo2W45lRAl" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                    <node concept="Xl_RD" id="4Bo2W45lRAm" role="37wK5m">
                      <property role="Xl_RC" value="." />
                    </node>
                    <node concept="Xl_RD" id="4Bo2W45lRAn" role="37wK5m">
                      <property role="Xl_RC" value="/" />
                    </node>
                  </node>
                  <node concept="2YIFZM" id="4Bo2W45lRAo" role="2Oq$k0">
                    <ref role="37wK5l" to="18ew:~StringUtil.emptyIfNull(java.lang.String)" resolve="emptyIfNull" />
                    <ref role="1Pybhc" to="18ew:~StringUtil" resolve="StringUtil" />
                    <node concept="2OqwBi" id="4Bo2W45lRAp" role="37wK5m">
                      <node concept="37vLTw" id="4Bo2W45lRAq" role="2Oq$k0">
                        <ref role="3cqZAo" node="13uTNv4mj3R" resolve="rootNode" />
                      </node>
                      <node concept="3TrcHB" id="4Bo2W45lRAr" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="4Bo2W45lRAs" role="3uHU7w">
                  <property role="Xl_RC" value="/" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="13uTNv4mTO3" role="3cqZAp">
          <node concept="3cpWsn" id="13uTNv4mTO4" role="3cpWs9">
            <property role="TrG5h" value="model" />
            <node concept="3uibUv" id="13uTNv4mTRk" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
            </node>
            <node concept="2OqwBi" id="13uTNv4mTO5" role="33vP2m">
              <node concept="37vLTw" id="13uTNv4mTO6" role="2Oq$k0">
                <ref role="3cqZAo" node="13uTNv4mj3R" resolve="rootNode" />
              </node>
              <node concept="I4A8Y" id="13uTNv4mTO7" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="13uTNv4mZnw" role="3cqZAp">
          <node concept="3clFbS" id="13uTNv4mZny" role="3clFbx">
            <node concept="3cpWs8" id="13uTNv4n28E" role="3cqZAp">
              <node concept="3cpWsn" id="13uTNv4n28F" role="3cpWs9">
                <property role="TrG5h" value="source" />
                <node concept="3uibUv" id="3uYXhT8ktK3" role="1tU5fm">
                  <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
                </node>
                <node concept="2OqwBi" id="13uTNv4n28G" role="33vP2m">
                  <node concept="1eOMI4" id="13uTNv4n28H" role="2Oq$k0">
                    <node concept="10QFUN" id="13uTNv4n28I" role="1eOMHV">
                      <node concept="3uibUv" id="3uYXhT8ksIW" role="10QFUM">
                        <ref role="3uigEE" node="6gadshXBR2S" resolve="CustomPersistenceModelWithHeader0" />
                      </node>
                      <node concept="37vLTw" id="13uTNv4n28K" role="10QFUP">
                        <ref role="3cqZAo" node="13uTNv4mTO4" resolve="model" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="13uTNv4n28L" role="2OqNvi">
                    <ref role="37wK5l" to="g3l6:~SModelBase.getSource()" resolve="getSource" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="13uTNv4n2dT" role="3cqZAp">
              <node concept="3clFbS" id="13uTNv4n2dV" role="3clFbx">
                <node concept="3cpWs8" id="13uTNv4nasn" role="3cqZAp">
                  <node concept="3cpWsn" id="13uTNv4naso" role="3cpWs9">
                    <property role="TrG5h" value="root" />
                    <node concept="3uibUv" id="13uTNv4na2b" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="2OqwBi" id="13uTNv4nasp" role="33vP2m">
                      <node concept="2OqwBi" id="13uTNv4nasq" role="2Oq$k0">
                        <node concept="1eOMI4" id="13uTNv4nasr" role="2Oq$k0">
                          <node concept="10QFUN" id="13uTNv4nass" role="1eOMHV">
                            <node concept="3uibUv" id="3uYXhT8kt1U" role="10QFUM">
                              <ref role="3uigEE" node="6gadshXrOh5" resolve="RecursiveFolderDataSource" />
                            </node>
                            <node concept="37vLTw" id="13uTNv4nasu" role="10QFUP">
                              <ref role="3cqZAo" node="13uTNv4n28F" resolve="source" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="3uYXhT8kt_x" role="2OqNvi">
                          <ref role="37wK5l" node="4NrFWh6BoOI" resolve="getRootFolder" />
                        </node>
                      </node>
                      <node concept="liA8E" id="13uTNv4oGb8" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="13uTNv4nche" role="3cqZAp">
                  <node concept="3cpWs3" id="3uYXhT8k_nj" role="3cqZAk">
                    <node concept="1rXfSq" id="13uTNv4mRCp" role="3uHU7w">
                      <ref role="37wK5l" node="13uTNv4o966" resolve="getExtension" />
                      <node concept="37vLTw" id="13uTNv4oay8" role="37wK5m">
                        <ref role="3cqZAo" node="13uTNv4mj3R" resolve="rootNode" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="3uYXhT8k_Um" role="3uHU7B">
                      <node concept="Xl_RD" id="3uYXhT8kA2Y" role="3uHU7w">
                        <property role="Xl_RC" value="." />
                      </node>
                      <node concept="3cpWs3" id="13uTNv4ne2g" role="3uHU7B">
                        <node concept="3cpWs3" id="13uTNv4nd0P" role="3uHU7B">
                          <node concept="37vLTw" id="13uTNv4ncx8" role="3uHU7B">
                            <ref role="3cqZAo" node="13uTNv4naso" resolve="root" />
                          </node>
                          <node concept="Xl_RD" id="13uTNv4ndjb" role="3uHU7w">
                            <property role="Xl_RC" value="/" />
                          </node>
                        </node>
                        <node concept="37vLTw" id="3uYXhT8k_yM" role="3uHU7w">
                          <ref role="3cqZAo" node="4Bo2W45lRAe" resolve="fileName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17R0WA" id="13uTNv4n7IH" role="3clFbw">
                <node concept="10M0yZ" id="3uYXhT8kzKo" role="3uHU7w">
                  <ref role="3cqZAo" node="6gadshXAvB6" resolve="TYPE" />
                  <ref role="1PxDUh" node="6gadshXrOh5" resolve="RecursiveFolderDataSource" />
                </node>
                <node concept="2OqwBi" id="13uTNv4n7j_" role="3uHU7B">
                  <node concept="37vLTw" id="13uTNv4n7d3" role="2Oq$k0">
                    <ref role="3cqZAo" node="13uTNv4n28F" resolve="source" />
                  </node>
                  <node concept="liA8E" id="13uTNv4n7qs" role="2OqNvi">
                    <ref role="37wK5l" to="dush:~DataSource.getType()" resolve="getType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="13uTNv4mZWA" role="3clFbw">
            <node concept="3uibUv" id="3uYXhT8ksI7" role="2ZW6by">
              <ref role="3uigEE" node="6gadshXBR2S" resolve="CustomPersistenceModelWithHeader0" />
            </node>
            <node concept="37vLTw" id="13uTNv4mZBU" role="2ZW6bz">
              <ref role="3cqZAo" node="13uTNv4mTO4" resolve="model" />
            </node>
          </node>
          <node concept="9aQIb" id="4Bo2W45lnwV" role="9aQIa">
            <node concept="3clFbS" id="4Bo2W45lnwW" role="9aQI4">
              <node concept="3cpWs8" id="4Bo2W45lo13" role="3cqZAp">
                <node concept="3cpWsn" id="4Bo2W45lo14" role="3cpWs9">
                  <property role="TrG5h" value="module" />
                  <node concept="3uibUv" id="4Bo2W45lomC" role="1tU5fm">
                    <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                  </node>
                  <node concept="10QFUN" id="4Bo2W45lofr" role="33vP2m">
                    <node concept="3uibUv" id="4Bo2W45loim" role="10QFUM">
                      <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                    </node>
                    <node concept="2OqwBi" id="4Bo2W45lo15" role="10QFUP">
                      <node concept="37vLTw" id="4Bo2W45lo16" role="2Oq$k0">
                        <ref role="3cqZAo" node="13uTNv4mTO4" resolve="model" />
                      </node>
                      <node concept="liA8E" id="4Bo2W45lo17" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="4Bo2W45lw6M" role="3cqZAp">
                <node concept="3cpWsn" id="4Bo2W45lw6N" role="3cpWs9">
                  <property role="TrG5h" value="generatorOutputPath" />
                  <node concept="3uibUv" id="4Bo2W45lw57" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                  <node concept="2YIFZM" id="4Bo2W45lw6O" role="33vP2m">
                    <ref role="37wK5l" to="z1c3:~ProjectPathUtil.getGeneratorOutputPath(jetbrains.mps.project.structure.modules.ModuleDescriptor)" resolve="getGeneratorOutputPath" />
                    <ref role="1Pybhc" to="z1c3:~ProjectPathUtil" resolve="ProjectPathUtil" />
                    <node concept="2OqwBi" id="4Bo2W45lw6P" role="37wK5m">
                      <node concept="37vLTw" id="4Bo2W45lw6Q" role="2Oq$k0">
                        <ref role="3cqZAo" node="4Bo2W45lo14" resolve="module" />
                      </node>
                      <node concept="liA8E" id="4Bo2W45lw6R" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleDescriptor()" resolve="getModuleDescriptor" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="4Bo2W45lx9I" role="3cqZAp">
                <node concept="3cpWs3" id="4Bo2W45lT_a" role="3cqZAk">
                  <node concept="Xl_RD" id="4Bo2W45lTVg" role="3uHU7w">
                    <property role="Xl_RC" value=".xml" />
                  </node>
                  <node concept="3cpWs3" id="4Bo2W45lyEu" role="3uHU7B">
                    <node concept="3cpWs3" id="4Bo2W45ly62" role="3uHU7B">
                      <node concept="3cpWs3" id="4Bo2W45mbyD" role="3uHU7B">
                        <node concept="Xl_RD" id="4Bo2W45mbSe" role="3uHU7w">
                          <property role="Xl_RC" value="/" />
                        </node>
                        <node concept="37vLTw" id="4Bo2W45lxwS" role="3uHU7B">
                          <ref role="3cqZAo" node="4Bo2W45lw6N" resolve="generatorOutputPath" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="4Bo2W45lUw9" role="3uHU7w">
                        <node concept="2OqwBi" id="4Bo2W45lQ41" role="2Oq$k0">
                          <node concept="2OqwBi" id="4Bo2W45lPty" role="2Oq$k0">
                            <node concept="37vLTw" id="4Bo2W45lPhw" role="2Oq$k0">
                              <ref role="3cqZAo" node="13uTNv4mTO4" resolve="model" />
                            </node>
                            <node concept="liA8E" id="4Bo2W45lPRK" role="2OqNvi">
                              <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                            </node>
                          </node>
                          <node concept="liA8E" id="4Bo2W45lQhn" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModelName.getLongName()" resolve="getLongName" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4Bo2W45lVbj" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                          <node concept="Xl_RD" id="4Bo2W45lVk$" role="37wK5m">
                            <property role="Xl_RC" value="." />
                          </node>
                          <node concept="Xl_RD" id="4Bo2W45lVZ1" role="37wK5m">
                            <property role="Xl_RC" value="/" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="4Bo2W45lTfO" role="3uHU7w">
                      <ref role="3cqZAo" node="4Bo2W45lRAe" resolve="fileName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="13uTNv4nbz0" role="3cqZAp">
          <node concept="10Nm6u" id="13uTNv4nbTZ" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm1VV" id="13uTNv4mgiy" role="1B3o_S" />
      <node concept="17QB3L" id="13uTNv4mi$k" role="3clF45" />
      <node concept="37vLTG" id="13uTNv4mj3R" role="3clF46">
        <property role="TrG5h" value="rootNode" />
        <node concept="3Tqbb2" id="13uTNv4mEd6" role="1tU5fm">
          <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
        </node>
        <node concept="2AHcQZ" id="13uTNv4mj67" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="13uTNv4nis3" role="jymVt" />
    <node concept="2YIFZL" id="13uTNv4o966" role="jymVt">
      <property role="TrG5h" value="getExtension" />
      <node concept="3clFbS" id="13uTNv4o968" role="3clF47">
        <node concept="3cpWs8" id="13uTNv4o969" role="3cqZAp">
          <node concept="3cpWsn" id="13uTNv4o96a" role="3cpWs9">
            <property role="TrG5h" value="concept" />
            <node concept="3bZ5Sz" id="13uTNv4o96b" role="1tU5fm" />
            <node concept="2OqwBi" id="13uTNv4o96c" role="33vP2m">
              <node concept="37vLTw" id="13uTNv4o96d" role="2Oq$k0">
                <ref role="3cqZAo" node="13uTNv4o974" resolve="node" />
              </node>
              <node concept="2yIwOk" id="13uTNv4o96e" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="13uTNv4o96f" role="3cqZAp">
          <node concept="3clFbS" id="13uTNv4o96g" role="3clFbx">
            <node concept="3cpWs6" id="13uTNv4o96h" role="3cqZAp">
              <node concept="10M0yZ" id="13uTNv4o96i" role="3cqZAk">
                <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
                <ref role="3cqZAo" node="49FXEugGn3U" resolve="FBT_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="13uTNv4oEyU" role="3clFbw">
            <node concept="37vLTw" id="13uTNv4o96k" role="2Oq$k0">
              <ref role="3cqZAo" node="13uTNv4o96a" resolve="concept" />
            </node>
            <node concept="2Zo12i" id="13uTNv4oEJm" role="2OqNvi">
              <node concept="chp4Y" id="13uTNv4oEU9" role="2Zo12j">
                <ref role="cht4Q" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="13uTNv4o96m" role="3cqZAp">
          <node concept="3clFbS" id="13uTNv4o96n" role="3clFbx">
            <node concept="3cpWs6" id="13uTNv4o96o" role="3cqZAp">
              <node concept="10M0yZ" id="13uTNv4o96p" role="3cqZAk">
                <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
                <ref role="3cqZAo" node="2ByE74k$OOc" resolve="ADP_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="13uTNv4o96q" role="3clFbw">
            <node concept="37vLTw" id="13uTNv4o96r" role="3uHU7B">
              <ref role="3cqZAo" node="13uTNv4o96a" resolve="concept" />
            </node>
            <node concept="35c_gC" id="13uTNv4o96s" role="3uHU7w">
              <ref role="35c_gD" to="xiqq:2ByE74knc65" resolve="AdapterTypeDeclaration" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="13uTNv4o96t" role="3cqZAp">
          <node concept="3clFbS" id="13uTNv4o96u" role="3clFbx">
            <node concept="3cpWs6" id="13uTNv4o96v" role="3cqZAp">
              <node concept="10M0yZ" id="13uTNv4o96w" role="3cqZAk">
                <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
                <ref role="3cqZAo" node="23XkovVqfsb" resolve="SUB_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="13uTNv4o96x" role="3clFbw">
            <node concept="37vLTw" id="13uTNv4o96y" role="3uHU7B">
              <ref role="3cqZAo" node="13uTNv4o96a" resolve="concept" />
            </node>
            <node concept="35c_gC" id="13uTNv4o96z" role="3uHU7w">
              <ref role="35c_gD" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="13uTNv4o96$" role="3cqZAp">
          <node concept="3clFbS" id="13uTNv4o96_" role="3clFbx">
            <node concept="3cpWs6" id="13uTNv4o96A" role="3cqZAp">
              <node concept="10M0yZ" id="13uTNv4o96B" role="3cqZAk">
                <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
                <ref role="3cqZAo" node="23XkovVpUVE" resolve="RES_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="13uTNv4o96C" role="3clFbw">
            <node concept="37vLTw" id="13uTNv4o96D" role="3uHU7B">
              <ref role="3cqZAo" node="13uTNv4o96a" resolve="concept" />
            </node>
            <node concept="35c_gC" id="13uTNv4o96E" role="3uHU7w">
              <ref role="35c_gD" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="13uTNv4o96F" role="3cqZAp">
          <node concept="3clFbS" id="13uTNv4o96G" role="3clFbx">
            <node concept="3cpWs6" id="13uTNv4o96H" role="3cqZAp">
              <node concept="10M0yZ" id="13uTNv4o96I" role="3cqZAk">
                <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
                <ref role="3cqZAo" node="23XkovVpZ6d" resolve="DEV_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="13uTNv4o96J" role="3clFbw">
            <node concept="37vLTw" id="13uTNv4o96K" role="3uHU7B">
              <ref role="3cqZAo" node="13uTNv4o96a" resolve="concept" />
            </node>
            <node concept="35c_gC" id="13uTNv4o96L" role="3uHU7w">
              <ref role="35c_gD" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="13uTNv4o96M" role="3cqZAp">
          <node concept="3clFbS" id="13uTNv4o96N" role="3clFbx">
            <node concept="3cpWs6" id="13uTNv4o96O" role="3cqZAp">
              <node concept="10M0yZ" id="13uTNv4o96P" role="3cqZAk">
                <ref role="3cqZAo" node="23XkovVqbY6" resolve="SEG_FILE_EXT" />
                <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="13uTNv4o96Q" role="3clFbw">
            <node concept="37vLTw" id="13uTNv4o96R" role="3uHU7B">
              <ref role="3cqZAo" node="13uTNv4o96a" resolve="concept" />
            </node>
            <node concept="35c_gC" id="13uTNv4o96S" role="3uHU7w">
              <ref role="35c_gD" to="xiqq:5s_pyghtjox" resolve="SegmentTypeDeclaration" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="13uTNv4o96T" role="3cqZAp">
          <node concept="3clFbS" id="13uTNv4o96U" role="3clFbx">
            <node concept="3cpWs6" id="13uTNv4o96V" role="3cqZAp">
              <node concept="10M0yZ" id="13uTNv4o96W" role="3cqZAk">
                <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
                <ref role="3cqZAo" node="23XkovVpQv5" resolve="SYS_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="13uTNv4o96X" role="3clFbw">
            <node concept="37vLTw" id="13uTNv4o96Y" role="3uHU7B">
              <ref role="3cqZAo" node="13uTNv4o96a" resolve="concept" />
            </node>
            <node concept="35c_gC" id="13uTNv4o96Z" role="3uHU7w">
              <ref role="35c_gD" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="13uTNv4o970" role="3cqZAp">
          <node concept="10Nm6u" id="13uTNv4o971" role="3cqZAk" />
        </node>
      </node>
      <node concept="3uibUv" id="13uTNv4o973" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="13uTNv4o974" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="13uTNv4o975" role="1tU5fm">
          <ref role="ehGHo" to="tpck:h0TrEE$" resolve="INamedConcept" />
        </node>
      </node>
      <node concept="3Tm6S6" id="13uTNv4o972" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="13uTNv4nis4" role="jymVt" />
    <node concept="2tJIrI" id="3inNSRVc5r1" role="jymVt" />
    <node concept="2YIFZL" id="3inNSRVckrb" role="jymVt">
      <property role="TrG5h" value="hasIec61499Model" />
      <node concept="3clFbS" id="3inNSRVckrd" role="3clF47">
        <node concept="3clFbJ" id="3inNSRVckre" role="3cqZAp">
          <node concept="2OqwBi" id="3inNSRVckrf" role="3clFbw">
            <node concept="37vLTw" id="3inNSRVckrg" role="2Oq$k0">
              <ref role="3cqZAo" node="3inNSRVckrH" resolve="file1" />
            </node>
            <node concept="liA8E" id="3inNSRVckrh" role="2OqNvi">
              <ref role="37wK5l" to="3ju5:~IFile.isDirectory()" resolve="isDirectory" />
            </node>
          </node>
          <node concept="3clFbS" id="3inNSRVckri" role="3clFbx">
            <node concept="3cpWs6" id="3inNSRVckrj" role="3cqZAp">
              <node concept="2OqwBi" id="3inNSRVckrk" role="3cqZAk">
                <node concept="2OqwBi" id="3inNSRVckrl" role="2Oq$k0">
                  <node concept="2OqwBi" id="3inNSRVckrm" role="2Oq$k0">
                    <node concept="37vLTw" id="3inNSRVckrn" role="2Oq$k0">
                      <ref role="3cqZAo" node="3inNSRVckrH" resolve="file1" />
                    </node>
                    <node concept="liA8E" id="3inNSRVckro" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~IFile.getChildren()" resolve="getChildren" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3inNSRVckrp" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                  </node>
                </node>
                <node concept="liA8E" id="3inNSRVckrq" role="2OqNvi">
                  <ref role="37wK5l" to="1ctc:~Stream.anyMatch(java.util.function.Predicate)" resolve="anyMatch" />
                  <node concept="1bVj0M" id="3inNSRVckrr" role="37wK5m">
                    <node concept="3clFbS" id="3inNSRVckrs" role="1bW5cS">
                      <node concept="3clFbF" id="3inNSRVckrt" role="3cqZAp">
                        <node concept="1rXfSq" id="3inNSRVckru" role="3clFbG">
                          <ref role="37wK5l" node="3inNSRVckrb" resolve="hasIec61499Model" />
                          <node concept="37vLTw" id="3inNSRVckrv" role="37wK5m">
                            <ref role="3cqZAo" node="3inNSRVckrw" resolve="f" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTG" id="3inNSRVckrw" role="1bW2Oz">
                      <property role="TrG5h" value="f" />
                      <node concept="3uibUv" id="3inNSRVckrx" role="1tU5fm">
                        <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3inNSRVckry" role="9aQIa">
            <node concept="3clFbS" id="3inNSRVckrz" role="9aQI4">
              <node concept="3cpWs6" id="3inNSRVckr$" role="3cqZAp">
                <node concept="17R0WA" id="3inNSRVckr_" role="3cqZAk">
                  <node concept="10M0yZ" id="6ZZUlxDypRs" role="3uHU7w">
                    <ref role="3cqZAo" node="6ZZUlxDy3iw" resolve="HEADER_FILE" />
                    <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
                  </node>
                  <node concept="2OqwBi" id="3inNSRVckrB" role="3uHU7B">
                    <node concept="37vLTw" id="3inNSRVckrC" role="2Oq$k0">
                      <ref role="3cqZAo" node="3inNSRVckrH" resolve="file1" />
                    </node>
                    <node concept="liA8E" id="3inNSRVckrD" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~IFile.getName()" resolve="getName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="3inNSRVckrG" role="3clF45" />
      <node concept="37vLTG" id="3inNSRVckrH" role="3clF46">
        <property role="TrG5h" value="file1" />
        <node concept="3uibUv" id="3inNSRVckrI" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="3Tm1VV" id="3inNSRVckrF" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="7OBD32IcaOu" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1eL5bn4QprR">
    <property role="TrG5h" value="PersistenceReferencesFixer" />
    <node concept="2tJIrI" id="1eL5bn4QptL" role="jymVt" />
    <node concept="2tJIrI" id="7CvQYsXKo2A" role="jymVt" />
    <node concept="312cEg" id="1eL5bn4Qpv3" role="jymVt">
      <property role="TrG5h" value="myListeners" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7CvQYsXKqoy" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~HashMap" resolve="HashMap" />
        <node concept="3uibUv" id="7CvQYsXKH5r" role="11_B2D">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
        <node concept="3uibUv" id="7CvQYsXKqMV" role="11_B2D">
          <ref role="3uigEE" to="lui2:~SRepositoryContentAdapter" resolve="SRepositoryContentAdapter" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1eL5bn4Qpvp" role="1B3o_S" />
      <node concept="2ShNRf" id="7CvQYsXKs9b" role="33vP2m">
        <node concept="1pGfFk" id="7CvQYsXKyxP" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
          <node concept="3uibUv" id="7CvQYsXKH_k" role="1pMfVU">
            <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
          </node>
          <node concept="3uibUv" id="7CvQYsXKz3Y" role="1pMfVU">
            <ref role="3uigEE" to="lui2:~SRepositoryContentAdapter" resolve="SRepositoryContentAdapter" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1eL5bn4Q_1W" role="jymVt" />
    <node concept="3clFb_" id="1eL5bn4Q_rf" role="jymVt">
      <property role="TrG5h" value="isOurModel" />
      <node concept="37vLTG" id="1eL5bn4Q_Dx" role="3clF46">
        <property role="TrG5h" value="model" />
        <node concept="3uibUv" id="1eL5bn4Q_Dy" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="1eL5bn4Q_ri" role="3clF47">
        <node concept="3clFbJ" id="1eL5bn4QvFR" role="3cqZAp">
          <node concept="3fqX7Q" id="1eL5bn4Qw49" role="3clFbw">
            <node concept="1eOMI4" id="1eL5bn4Qwk3" role="3fr31v">
              <node concept="2ZW3vV" id="1eL5bn4Qw4b" role="1eOMHV">
                <node concept="3uibUv" id="4anZxuv0eqC" role="2ZW6by">
                  <ref role="3uigEE" node="6gadshXBR2S" resolve="CustomPersistenceModelWithHeader0" />
                </node>
                <node concept="37vLTw" id="1eL5bn4Qw4d" role="2ZW6bz">
                  <ref role="3cqZAo" node="1eL5bn4Q_Dx" resolve="model" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1eL5bn4QvFT" role="3clFbx">
            <node concept="3cpWs6" id="1eL5bn4Qwlb" role="3cqZAp">
              <node concept="3clFbT" id="1eL5bn4QApQ" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1eL5bn4Qwmh" role="3cqZAp">
          <node concept="3cpWsn" id="1eL5bn4Qwmi" role="3cpWs9">
            <property role="TrG5h" value="cpModel" />
            <node concept="3uibUv" id="4anZxuv0esj" role="1tU5fm">
              <ref role="3uigEE" node="6gadshXBR2S" resolve="CustomPersistenceModelWithHeader0" />
            </node>
            <node concept="10QFUN" id="1eL5bn4QwoQ" role="33vP2m">
              <node concept="3uibUv" id="4anZxuv0fwJ" role="10QFUM">
                <ref role="3uigEE" node="6gadshXBR2S" resolve="CustomPersistenceModelWithHeader0" />
              </node>
              <node concept="37vLTw" id="1eL5bn4Qwnv" role="10QFUP">
                <ref role="3cqZAo" node="1eL5bn4Q_Dx" resolve="model" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1eL5bn4Qycn" role="3cqZAp">
          <node concept="3cpWsn" id="1eL5bn4Qyco" role="3cpWs9">
            <property role="TrG5h" value="source" />
            <node concept="3uibUv" id="4anZxuv0fYn" role="1tU5fm">
              <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
            </node>
            <node concept="2OqwBi" id="1eL5bn4Qycp" role="33vP2m">
              <node concept="37vLTw" id="1eL5bn4Qycq" role="2Oq$k0">
                <ref role="3cqZAo" node="1eL5bn4Qwmi" resolve="cpModel" />
              </node>
              <node concept="liA8E" id="1eL5bn4Qycr" role="2OqNvi">
                <ref role="37wK5l" to="g3l6:~SModelBase.getSource()" resolve="getSource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4anZxuv0iGM" role="3cqZAp">
          <node concept="2ZW3vV" id="4anZxuv0iGQ" role="3clFbG">
            <node concept="3uibUv" id="4anZxuv0iGR" role="2ZW6by">
              <ref role="3uigEE" node="6gadshXrOh5" resolve="RecursiveFolderDataSource" />
            </node>
            <node concept="37vLTw" id="4anZxuv0iGS" role="2ZW6bz">
              <ref role="3cqZAo" node="1eL5bn4Qyco" resolve="source" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1eL5bn4Q_gR" role="1B3o_S" />
      <node concept="10P_77" id="1eL5bn4QA2L" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1eL5bn4QuHn" role="jymVt" />
    <node concept="3clFb_" id="1eL5bn4QuYe" role="jymVt">
      <property role="TrG5h" value="fixReferences" />
      <node concept="37vLTG" id="7CvQYsXK$TT" role="3clF46">
        <property role="3TUv4t" value="true" />
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="7CvQYsXK_Ao" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="37vLTG" id="1eL5bn4Qva$" role="3clF46">
        <property role="TrG5h" value="model" />
        <property role="3TUv4t" value="true" />
        <node concept="H_c77" id="4ETVaObPLSV" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="1eL5bn4QuYh" role="3clF47">
        <node concept="3clFbJ" id="1eL5bn4QBFF" role="3cqZAp">
          <node concept="3fqX7Q" id="1eL5bn4QBGd" role="3clFbw">
            <node concept="1rXfSq" id="1eL5bn4QBH1" role="3fr31v">
              <ref role="37wK5l" node="1eL5bn4Q_rf" resolve="isOurModel" />
              <node concept="37vLTw" id="1eL5bn4QBJ2" role="37wK5m">
                <ref role="3cqZAo" node="1eL5bn4Qva$" resolve="model" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="1eL5bn4QBFH" role="3clFbx">
            <node concept="3cpWs6" id="1eL5bn4QBKm" role="3cqZAp" />
          </node>
        </node>
        <node concept="3cpWs8" id="6NFL89TtI6P" role="3cqZAp">
          <node concept="3cpWsn" id="6NFL89TtI6Q" role="3cpWs9">
            <property role="TrG5h" value="cpModel" />
            <node concept="3uibUv" id="4anZxuv0kFX" role="1tU5fm">
              <ref role="3uigEE" node="6gadshXBR2S" resolve="CustomPersistenceModelWithHeader0" />
            </node>
            <node concept="1eOMI4" id="6NFL89TtI6R" role="33vP2m">
              <node concept="10QFUN" id="6NFL89TtI6S" role="1eOMHV">
                <node concept="3uibUv" id="4anZxuv0kNt" role="10QFUM">
                  <ref role="3uigEE" node="6gadshXBR2S" resolve="CustomPersistenceModelWithHeader0" />
                </node>
                <node concept="37vLTw" id="6NFL89TtI6U" role="10QFUP">
                  <ref role="3cqZAo" node="1eL5bn4Qva$" resolve="model" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1eL5bn4QBKy" role="3cqZAp" />
        <node concept="3cpWs8" id="333MEi_yj5n" role="3cqZAp">
          <node concept="3cpWsn" id="333MEi_yj5o" role="3cpWs9">
            <property role="TrG5h" value="ma" />
            <node concept="3uibUv" id="333MEi_yj2d" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~ModelAccess" resolve="ModelAccess" />
            </node>
            <node concept="2OqwBi" id="333MEi_yj5p" role="33vP2m">
              <node concept="37vLTw" id="333MEi_yj5q" role="2Oq$k0">
                <ref role="3cqZAo" node="7CvQYsXK$TT" resolve="project" />
              </node>
              <node concept="liA8E" id="333MEi_yj5r" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~Project.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4ETVaObMEpf" role="3cqZAp">
          <node concept="2OqwBi" id="4ETVaObMF6p" role="3clFbG">
            <node concept="37vLTw" id="333MEi_yj5s" role="2Oq$k0">
              <ref role="3cqZAo" node="333MEi_yj5o" resolve="ma" />
            </node>
            <node concept="liA8E" id="333MEi_yhiT" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runWriteInEDT(java.lang.Runnable)" resolve="runWriteInEDT" />
              <node concept="1bVj0M" id="333MEi_yiOS" role="37wK5m">
                <node concept="3clFbS" id="333MEi_yiOT" role="1bW5cS">
                  <node concept="3clFbF" id="6oBscP0gDWV" role="3cqZAp">
                    <node concept="2OqwBi" id="6oBscP0gEX5" role="3clFbG">
                      <node concept="37vLTw" id="333MEi_yj5t" role="2Oq$k0">
                        <ref role="3cqZAo" node="333MEi_yj5o" resolve="ma" />
                      </node>
                      <node concept="liA8E" id="6oBscP0gFgU" role="2OqNvi">
                        <ref role="37wK5l" to="lui2:~ModelAccess.executeUndoTransparentCommand(java.lang.Runnable)" resolve="executeUndoTransparentCommand" />
                        <node concept="1bVj0M" id="6oBscP0gFir" role="37wK5m">
                          <node concept="3clFbS" id="6oBscP0gFis" role="1bW5cS">
                            <node concept="3cpWs8" id="6NFL89TtJSR" role="3cqZAp">
                              <node concept="3cpWsn" id="6NFL89TtJSS" role="3cpWs9">
                                <property role="TrG5h" value="changed" />
                                <node concept="10P_77" id="6NFL89TtJMv" role="1tU5fm" />
                                <node concept="2OqwBi" id="6NFL89TtJST" role="33vP2m">
                                  <node concept="37vLTw" id="6NFL89TtJSU" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6NFL89TtI6Q" resolve="cpModel" />
                                  </node>
                                  <node concept="liA8E" id="6NFL89TtJSV" role="2OqNvi">
                                    <ref role="37wK5l" to="g3l6:~EditableSModelBase.isChanged()" resolve="isChanged" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="2Gpval" id="4ETVaObPL_2" role="3cqZAp">
                              <node concept="2GrKxI" id="4ETVaObPL_4" role="2Gsz3X">
                                <property role="TrG5h" value="node" />
                              </node>
                              <node concept="2OqwBi" id="4ETVaObPLLx" role="2GsD0m">
                                <node concept="37vLTw" id="6NFL89TtKib" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1eL5bn4Qva$" resolve="model" />
                                </node>
                                <node concept="2SmgA7" id="4ETVaObPMgB" role="2OqNvi" />
                              </node>
                              <node concept="3clFbS" id="4ETVaObPL_8" role="2LFqv$">
                                <node concept="2Gpval" id="4ETVaObPMxz" role="3cqZAp">
                                  <node concept="2GrKxI" id="4ETVaObPMx$" role="2Gsz3X">
                                    <property role="TrG5h" value="ref" />
                                  </node>
                                  <node concept="3clFbS" id="4ETVaObPMxA" role="2LFqv$">
                                    <node concept="3clFbJ" id="6NFL89TtKtJ" role="3cqZAp">
                                      <node concept="15s5l7" id="6NFL89TtNZT" role="lGtFl">
                                        <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;FLAVOUR_MESSAGE=&quot;Error: type reference is not comparable with jetbrains.mps.smodel.DynamicReference&quot;;FLAVOUR_RULE_ID=&quot;[r:00000000-0000-4000-0000-011c895902c5(jetbrains.mps.baseLanguage.typesystem)/1176907635591]&quot;;" />
                                        <property role="huDt6" value="Error: type reference is not comparable with jetbrains.mps.smodel.DynamicReference" />
                                      </node>
                                      <node concept="3clFbS" id="6NFL89TtKtL" role="3clFbx">
                                        <node concept="3clFbF" id="4ETVaObPNeB" role="3cqZAp">
                                          <node concept="2OqwBi" id="4ETVaObPO4A" role="3clFbG">
                                            <node concept="2JrnkZ" id="4ETVaObPNRj" role="2Oq$k0">
                                              <node concept="2GrUjf" id="4ETVaObPNxT" role="2JrQYb">
                                                <ref role="2Gs0qQ" node="4ETVaObPL_4" resolve="node" />
                                              </node>
                                            </node>
                                            <node concept="liA8E" id="4ETVaObPOe0" role="2OqNvi">
                                              <ref role="37wK5l" to="mhbf:~SNode.setReferenceTarget(org.jetbrains.mps.openapi.language.SReferenceLink,org.jetbrains.mps.openapi.model.SNode)" resolve="setReferenceTarget" />
                                              <node concept="2OqwBi" id="4ETVaObPOpj" role="37wK5m">
                                                <node concept="2GrUjf" id="4ETVaObPOgV" role="2Oq$k0">
                                                  <ref role="2Gs0qQ" node="4ETVaObPMx$" resolve="ref" />
                                                </node>
                                                <node concept="CsP83" id="4ETVaObPO$n" role="2OqNvi" />
                                              </node>
                                              <node concept="2OqwBi" id="4ETVaObPORq" role="37wK5m">
                                                <node concept="2GrUjf" id="4ETVaObPOGy" role="2Oq$k0">
                                                  <ref role="2Gs0qQ" node="4ETVaObPMx$" resolve="ref" />
                                                </node>
                                                <node concept="2ZHEkA" id="4ETVaObPP0w" role="2OqNvi" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="1Wc70l" id="7bV8hH5u6wr" role="3clFbw">
                                        <node concept="3y3z36" id="7bV8hH5u7ac" role="3uHU7w">
                                          <node concept="10Nm6u" id="7bV8hH5u7kj" role="3uHU7w" />
                                          <node concept="2OqwBi" id="7bV8hH5u6LI" role="3uHU7B">
                                            <node concept="2GrUjf" id="7bV8hH5u6_F" role="2Oq$k0">
                                              <ref role="2Gs0qQ" node="4ETVaObPMx$" resolve="ref" />
                                            </node>
                                            <node concept="2ZHEkA" id="7bV8hH5u6YY" role="2OqNvi" />
                                          </node>
                                        </node>
                                        <node concept="2ZW3vV" id="6NFL89TtKIt" role="3uHU7B">
                                          <node concept="3uibUv" id="6NFL89TtMls" role="2ZW6by">
                                            <ref role="3uigEE" to="w1kc:~DynamicReference" resolve="DynamicReference" />
                                          </node>
                                          <node concept="2GrUjf" id="6NFL89TtKzw" role="2ZW6bz">
                                            <ref role="2Gs0qQ" node="4ETVaObPMx$" resolve="ref" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="4ETVaObPMmd" role="2GsD0m">
                                    <node concept="2GrUjf" id="4ETVaObPMle" role="2Oq$k0">
                                      <ref role="2Gs0qQ" node="4ETVaObPL_4" resolve="node" />
                                    </node>
                                    <node concept="2z74zc" id="4ETVaObPMu2" role="2OqNvi" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="ocmTymc0MZ" role="3cqZAp">
                              <node concept="2OqwBi" id="ocmTymc1pR" role="3clFbG">
                                <node concept="37vLTw" id="6NFL89TtI6V" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6NFL89TtI6Q" resolve="cpModel" />
                                </node>
                                <node concept="liA8E" id="ocmTymc1X8" role="2OqNvi">
                                  <ref role="37wK5l" to="g3l6:~EditableSModelBase.setChanged(boolean)" resolve="setChanged" />
                                  <node concept="37vLTw" id="6NFL89TtK5l" role="37wK5m">
                                    <ref role="3cqZAo" node="6NFL89TtJSS" resolve="changed" />
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
        <node concept="3clFbH" id="4ETVaObMElM" role="3cqZAp" />
      </node>
      <node concept="3Tm6S6" id="1eL5bn4QuQ5" role="1B3o_S" />
      <node concept="3cqZAl" id="1eL5bn4QuY3" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1eL5bn4Qpue" role="jymVt" />
    <node concept="3clFb_" id="1eL5bn4Rb4V" role="jymVt">
      <property role="TrG5h" value="attach" />
      <node concept="3clFbS" id="1eL5bn4Rb4Y" role="3clF47">
        <node concept="3cpWs8" id="7CvQYsXKBV1" role="3cqZAp">
          <node concept="3cpWsn" id="7CvQYsXKBV2" role="3cpWs9">
            <property role="TrG5h" value="listener" />
            <node concept="3uibUv" id="7CvQYsXKBV0" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepositoryContentAdapter" resolve="SRepositoryContentAdapter" />
            </node>
            <node concept="2ShNRf" id="7CvQYsXKBV3" role="33vP2m">
              <node concept="YeOm9" id="7CvQYsXKBV4" role="2ShVmc">
                <node concept="1Y3b0j" id="7CvQYsXKBV5" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="lui2:~SRepositoryContentAdapter" resolve="SRepositoryContentAdapter" />
                  <ref role="37wK5l" to="lui2:~SRepositoryContentAdapter.&lt;init&gt;()" resolve="SRepositoryContentAdapter" />
                  <node concept="3Tm1VV" id="7CvQYsXKBV6" role="1B3o_S" />
                  <node concept="2tJIrI" id="7CvQYsXKBV7" role="jymVt" />
                  <node concept="3clFb_" id="7CvQYsXKBV8" role="jymVt">
                    <property role="TrG5h" value="startListening" />
                    <node concept="3Tmbuc" id="7CvQYsXKBV9" role="1B3o_S" />
                    <node concept="3cqZAl" id="7CvQYsXKBVa" role="3clF45" />
                    <node concept="37vLTG" id="7CvQYsXKBVb" role="3clF46">
                      <property role="TrG5h" value="model" />
                      <node concept="3uibUv" id="7CvQYsXKBVc" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7CvQYsXKBVd" role="3clF47">
                      <node concept="3clFbF" id="4stnWW9KLNV" role="3cqZAp">
                        <node concept="1rXfSq" id="4stnWW9KLNT" role="3clFbG">
                          <ref role="37wK5l" node="1eL5bn4QuYe" resolve="fixReferences" />
                          <node concept="37vLTw" id="4stnWW9KLX3" role="37wK5m">
                            <ref role="3cqZAo" node="1eL5bn4Rblh" resolve="project" />
                          </node>
                          <node concept="37vLTw" id="4stnWW9KM1o" role="37wK5m">
                            <ref role="3cqZAo" node="7CvQYsXKBVb" resolve="model" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="7CvQYsXKBVe" role="3cqZAp">
                        <node concept="2OqwBi" id="7CvQYsXKBVf" role="3clFbG">
                          <node concept="37vLTw" id="7CvQYsXKBVg" role="2Oq$k0">
                            <ref role="3cqZAo" node="7CvQYsXKBVb" resolve="model" />
                          </node>
                          <node concept="liA8E" id="7CvQYsXKBVh" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.addModelListener(org.jetbrains.mps.openapi.model.SModelListener)" resolve="addModelListener" />
                            <node concept="Xjq3P" id="7CvQYsXKBVi" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="7CvQYsXKBVj" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="3clFb_" id="7CvQYsXKBVk" role="jymVt">
                    <property role="TrG5h" value="stopListening" />
                    <node concept="3Tmbuc" id="7CvQYsXKBVl" role="1B3o_S" />
                    <node concept="3cqZAl" id="7CvQYsXKBVm" role="3clF45" />
                    <node concept="37vLTG" id="7CvQYsXKBVn" role="3clF46">
                      <property role="TrG5h" value="model" />
                      <node concept="3uibUv" id="7CvQYsXKBVo" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7CvQYsXKBVp" role="3clF47">
                      <node concept="3clFbF" id="7CvQYsXKBVq" role="3cqZAp">
                        <node concept="2OqwBi" id="7CvQYsXKBVr" role="3clFbG">
                          <node concept="37vLTw" id="7CvQYsXKBVs" role="2Oq$k0">
                            <ref role="3cqZAo" node="7CvQYsXKBVn" resolve="model" />
                          </node>
                          <node concept="liA8E" id="7CvQYsXKBVt" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.removeModelListener(org.jetbrains.mps.openapi.model.SModelListener)" resolve="removeModelListener" />
                            <node concept="Xjq3P" id="7CvQYsXKBVu" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="7CvQYsXKBVv" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="2tJIrI" id="21XoJ1sp5zb" role="jymVt" />
                  <node concept="3clFb_" id="7CvQYsXKBVx" role="jymVt">
                    <property role="TrG5h" value="modelReplaced" />
                    <node concept="3Tm1VV" id="7CvQYsXKBVy" role="1B3o_S" />
                    <node concept="3cqZAl" id="7CvQYsXKBVz" role="3clF45" />
                    <node concept="37vLTG" id="7CvQYsXKBV$" role="3clF46">
                      <property role="TrG5h" value="model" />
                      <node concept="3uibUv" id="7CvQYsXKBV_" role="1tU5fm">
                        <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7CvQYsXKBVC" role="3clF47">
                      <node concept="3clFbF" id="7CvQYsXKBVH" role="3cqZAp">
                        <node concept="1rXfSq" id="7CvQYsXKBVI" role="3clFbG">
                          <ref role="37wK5l" node="1eL5bn4QuYe" resolve="fixReferences" />
                          <node concept="37vLTw" id="7CvQYsXKCTb" role="37wK5m">
                            <ref role="3cqZAo" node="1eL5bn4Rblh" resolve="project" />
                          </node>
                          <node concept="37vLTw" id="7CvQYsXKBVJ" role="37wK5m">
                            <ref role="3cqZAo" node="7CvQYsXKBV$" resolve="model" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="7CvQYsXKBVK" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7CvQYsXKDHL" role="3cqZAp">
          <node concept="2OqwBi" id="7CvQYsXKEr7" role="3clFbG">
            <node concept="37vLTw" id="7CvQYsXKDHJ" role="2Oq$k0">
              <ref role="3cqZAo" node="1eL5bn4Qpv3" resolve="myListeners" />
            </node>
            <node concept="liA8E" id="7CvQYsXKFKr" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~HashMap.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="7CvQYsXKGbf" role="37wK5m">
                <ref role="3cqZAo" node="1eL5bn4Rblh" resolve="project" />
              </node>
              <node concept="37vLTw" id="7CvQYsXKGMw" role="37wK5m">
                <ref role="3cqZAo" node="7CvQYsXKBV2" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7CvQYsXKID9" role="3cqZAp">
          <node concept="2OqwBi" id="7CvQYsXKJaj" role="3clFbG">
            <node concept="37vLTw" id="7CvQYsXKID7" role="2Oq$k0">
              <ref role="3cqZAo" node="7CvQYsXKBV2" resolve="listener" />
            </node>
            <node concept="liA8E" id="7CvQYsXKJRL" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SRepositoryContentAdapter.subscribeTo(org.jetbrains.mps.openapi.module.SRepository)" resolve="subscribeTo" />
              <node concept="2OqwBi" id="7CvQYsXKKf6" role="37wK5m">
                <node concept="37vLTw" id="7CvQYsXKK2F" role="2Oq$k0">
                  <ref role="3cqZAo" node="1eL5bn4Rblh" resolve="project" />
                </node>
                <node concept="liA8E" id="7CvQYsXKKva" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1eL5bn4RaSu" role="1B3o_S" />
      <node concept="3cqZAl" id="1eL5bn4Rb4l" role="3clF45" />
      <node concept="37vLTG" id="1eL5bn4Rblh" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1eL5bn4Rbwu" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1eL5bn4Rdpp" role="jymVt" />
    <node concept="3clFb_" id="1eL5bn4Re2W" role="jymVt">
      <property role="TrG5h" value="detach" />
      <node concept="3clFbS" id="1eL5bn4Re2Z" role="3clF47">
        <node concept="3cpWs8" id="7CvQYsXKLHd" role="3cqZAp">
          <node concept="3cpWsn" id="7CvQYsXKLHe" role="3cpWs9">
            <property role="TrG5h" value="listener" />
            <node concept="3uibUv" id="7CvQYsXKLur" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepositoryContentAdapter" resolve="SRepositoryContentAdapter" />
            </node>
            <node concept="2OqwBi" id="7CvQYsXKLHf" role="33vP2m">
              <node concept="37vLTw" id="7CvQYsXKLHg" role="2Oq$k0">
                <ref role="3cqZAo" node="1eL5bn4Qpv3" resolve="myListeners" />
              </node>
              <node concept="liA8E" id="7CvQYsXKLHh" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~HashMap.remove(java.lang.Object)" resolve="remove" />
                <node concept="37vLTw" id="7CvQYsXKLHi" role="37wK5m">
                  <ref role="3cqZAo" node="1eL5bn4RegR" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7CvQYsXKKwt" role="3cqZAp">
          <node concept="2OqwBi" id="7CvQYsXKKwu" role="3clFbG">
            <node concept="37vLTw" id="7CvQYsXKMv1" role="2Oq$k0">
              <ref role="3cqZAo" node="7CvQYsXKLHe" resolve="listener" />
            </node>
            <node concept="liA8E" id="7CvQYsXKKww" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~SRepositoryContentAdapter.unsubscribeFrom(org.jetbrains.mps.openapi.module.SRepository)" resolve="unsubscribeFrom" />
              <node concept="2OqwBi" id="7CvQYsXKKwx" role="37wK5m">
                <node concept="37vLTw" id="7CvQYsXKKwy" role="2Oq$k0">
                  <ref role="3cqZAo" node="1eL5bn4RegR" resolve="project" />
                </node>
                <node concept="liA8E" id="7CvQYsXKKwz" role="2OqNvi">
                  <ref role="37wK5l" to="z1c3:~Project.getRepository()" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1eL5bn4RdI8" role="1B3o_S" />
      <node concept="3cqZAl" id="1eL5bn4RdVu" role="3clF45" />
      <node concept="37vLTG" id="1eL5bn4RegR" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="1eL5bn4RegQ" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1eL5bn4QprS" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6gadshXrOh5">
    <property role="TrG5h" value="RecursiveFolderDataSource" />
    <node concept="2tJIrI" id="6gadshXAl6$" role="jymVt" />
    <node concept="Wx3nA" id="6gadshXAvB6" role="jymVt">
      <property role="TrG5h" value="TYPE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="6gadshXArIA" role="1B3o_S" />
      <node concept="3uibUv" id="6gadshXAySD" role="1tU5fm">
        <ref role="3uigEE" to="bxo2:~DataSourceType" resolve="DataSourceType" />
      </node>
      <node concept="2ShNRf" id="6gadshXAAir" role="33vP2m">
        <node concept="YeOm9" id="6gadshXABS_" role="2ShVmc">
          <node concept="1Y3b0j" id="6gadshXABSC" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="bxo2:~DataSourceType" resolve="DataSourceType" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="6gadshXABSD" role="1B3o_S" />
            <node concept="3clFb_" id="6gadshXABSI" role="jymVt">
              <property role="TrG5h" value="getName" />
              <node concept="3Tm1VV" id="6gadshXABSJ" role="1B3o_S" />
              <node concept="2AHcQZ" id="6gadshXABSL" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="6gadshXABSM" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="6gadshXABSN" role="3clF47">
                <node concept="3clFbF" id="6gadshXADuV" role="3cqZAp">
                  <node concept="Xl_RD" id="6gadshXADuU" role="3clFbG">
                    <property role="Xl_RC" value="Recursive Folder Data Source Type" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="6gadshXABSP" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6gadshXAovx" role="jymVt" />
    <node concept="312cEg" id="6gadshXrO_m" role="jymVt">
      <property role="TrG5h" value="LOCK" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6gadshXrO_o" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="3Tm6S6" id="6gadshXrO_p" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6gadshXrO_q" role="jymVt">
      <property role="TrG5h" value="myListeners" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6gadshXrO_s" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6gadshXrO_t" role="11_B2D">
          <ref role="3uigEE" to="dush:~DataSourceListener" resolve="DataSourceListener" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6gadshXrO_u" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6gadshXrO_v" role="jymVt">
      <property role="TrG5h" value="myChildFilter" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6gadshXrO_x" role="1tU5fm">
        <ref role="3uigEE" to="82uw:~Predicate" resolve="Predicate" />
        <node concept="3uibUv" id="6gadshXrO_y" role="11_B2D">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6gadshXrO_z" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6gadshXrO_$" role="jymVt">
      <property role="TrG5h" value="myFolder" />
      <property role="3TUv4t" value="true" />
      <node concept="2AHcQZ" id="6gadshXrO_A" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="6gadshXrO_B" role="1tU5fm">
        <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
      </node>
      <node concept="3Tm6S6" id="6gadshXrO_C" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6gadshXrO_D" role="jymVt">
      <property role="34CwA1" value="true" />
      <property role="TrG5h" value="myLastAddRemove" />
      <node concept="3cpWsb" id="6gadshXrO_F" role="1tU5fm" />
      <node concept="3Tm6S6" id="6gadshXrO_G" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6gadshXxrye" role="jymVt" />
    <node concept="3clFbW" id="6gadshXrO_H" role="jymVt">
      <node concept="3cqZAl" id="6gadshXrO_I" role="3clF45" />
      <node concept="37vLTG" id="6gadshXrO_J" role="3clF46">
        <property role="TrG5h" value="folder" />
        <node concept="2AHcQZ" id="6gadshXrO_K" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXrO_L" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="3clFbS" id="6gadshXrO_M" role="3clF47">
        <node concept="1VxSAg" id="6gadshXrUh4" role="3cqZAp">
          <ref role="37wK5l" node="6gadshXrO_Q" resolve="RecursiveFolderDataSource" />
          <node concept="37vLTw" id="6gadshXrUh5" role="37wK5m">
            <ref role="3cqZAo" node="6gadshXrO_J" resolve="folder" />
          </node>
          <node concept="2ShNRf" id="6gadshXQjs0" role="37wK5m">
            <node concept="YeOm9" id="6gadshXQl3l" role="2ShVmc">
              <node concept="1Y3b0j" id="6gadshXQl3o" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="82uw:~Predicate" resolve="Predicate" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="6gadshXQl3p" role="1B3o_S" />
                <node concept="3clFb_" id="6gadshXQl3v" role="jymVt">
                  <property role="TrG5h" value="test" />
                  <node concept="3Tm1VV" id="6gadshXQl3w" role="1B3o_S" />
                  <node concept="10P_77" id="6gadshXQl3y" role="3clF45" />
                  <node concept="37vLTG" id="6gadshXQl3z" role="3clF46">
                    <property role="TrG5h" value="file" />
                    <node concept="3uibUv" id="6gadshXQl3I" role="1tU5fm">
                      <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="6gadshXQl3_" role="3clF47">
                    <node concept="3clFbF" id="6gadshXQmE$" role="3cqZAp">
                      <node concept="3clFbT" id="6gadshXQmEz" role="3clFbG">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                  <node concept="2AHcQZ" id="6gadshXQl3B" role="2AJF6D">
                    <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                  </node>
                </node>
                <node concept="3uibUv" id="6gadshXQl3H" role="2Ghqu4">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXrO_P" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6gadshXxo_M" role="jymVt" />
    <node concept="3clFbW" id="6gadshXrO_Q" role="jymVt">
      <node concept="3cqZAl" id="6gadshXrO_R" role="3clF45" />
      <node concept="37vLTG" id="6gadshXrO_S" role="3clF46">
        <property role="TrG5h" value="folder" />
        <node concept="2AHcQZ" id="6gadshXrO_T" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXrO_U" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="37vLTG" id="6gadshXrO_V" role="3clF46">
        <property role="TrG5h" value="filterOnChildren" />
        <node concept="2AHcQZ" id="6gadshXrO_W" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXrO_X" role="1tU5fm">
          <ref role="3uigEE" to="82uw:~Predicate" resolve="Predicate" />
          <node concept="3uibUv" id="6gadshXrO_Y" role="11_B2D">
            <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6gadshXrO_Z" role="3clF47">
        <node concept="3clFbF" id="6gadshXrOA0" role="3cqZAp">
          <node concept="37vLTI" id="6gadshXrOA1" role="3clFbG">
            <node concept="2OqwBi" id="6gadshXrOA2" role="37vLTJ">
              <node concept="Xjq3P" id="6gadshXrOA3" role="2Oq$k0" />
              <node concept="2OwXpG" id="6gadshXrOA4" role="2OqNvi">
                <ref role="2Oxat5" node="6gadshXrO_m" resolve="LOCK" />
              </node>
            </node>
            <node concept="2ShNRf" id="6gadshXrTBc" role="37vLTx">
              <node concept="1pGfFk" id="6gadshXrTBd" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gadshXrOA6" role="3cqZAp">
          <node concept="37vLTI" id="6gadshXrOA7" role="3clFbG">
            <node concept="2OqwBi" id="6gadshXrOA8" role="37vLTJ">
              <node concept="Xjq3P" id="6gadshXrOA9" role="2Oq$k0" />
              <node concept="2OwXpG" id="6gadshXrOAa" role="2OqNvi">
                <ref role="2Oxat5" node="6gadshXrO_q" resolve="myListeners" />
              </node>
            </node>
            <node concept="2ShNRf" id="6gadshXrUe6" role="37vLTx">
              <node concept="1pGfFk" id="6gadshXrUeb" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="6gadshXsbqI" role="1pMfVU">
                  <ref role="3uigEE" to="dush:~DataSourceListener" resolve="DataSourceListener" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gadshXrOAc" role="3cqZAp">
          <node concept="37vLTI" id="6gadshXrOAd" role="3clFbG">
            <node concept="2OqwBi" id="6gadshXrOAe" role="37vLTJ">
              <node concept="Xjq3P" id="6gadshXrOAf" role="2Oq$k0" />
              <node concept="2OwXpG" id="6gadshXrOAg" role="2OqNvi">
                <ref role="2Oxat5" node="6gadshXrO_D" resolve="myLastAddRemove" />
              </node>
            </node>
            <node concept="1ZRNhn" id="6gadshXrOAh" role="37vLTx">
              <node concept="1adDum" id="6gadshXrOAi" role="2$L3a6">
                <property role="1adDun" value="1L" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gadshXrOAj" role="3cqZAp">
          <node concept="2OqwBi" id="6gadshXrOAk" role="3clFbG">
            <node concept="Xjq3P" id="6gadshXrOAl" role="2Oq$k0" />
            <node concept="liA8E" id="6gadshXrOAm" role="2OqNvi">
              <ref role="37wK5l" node="6gadshXrOA_" resolve="checkFolderExistsAndItIsFolder" />
              <node concept="37vLTw" id="6gadshXrOAn" role="37wK5m">
                <ref role="3cqZAo" node="6gadshXrO_S" resolve="folder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gadshXrOAo" role="3cqZAp">
          <node concept="37vLTI" id="6gadshXrOAp" role="3clFbG">
            <node concept="2OqwBi" id="6gadshXrOAq" role="37vLTJ">
              <node concept="Xjq3P" id="6gadshXrOAr" role="2Oq$k0" />
              <node concept="2OwXpG" id="6gadshXrOAs" role="2OqNvi">
                <ref role="2Oxat5" node="6gadshXrO_$" resolve="myFolder" />
              </node>
            </node>
            <node concept="37vLTw" id="6gadshXrOAt" role="37vLTx">
              <ref role="3cqZAo" node="6gadshXrO_S" resolve="folder" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gadshXrOAu" role="3cqZAp">
          <node concept="37vLTI" id="6gadshXrOAv" role="3clFbG">
            <node concept="2OqwBi" id="6gadshXrOAw" role="37vLTJ">
              <node concept="Xjq3P" id="6gadshXrOAx" role="2Oq$k0" />
              <node concept="2OwXpG" id="6gadshXrOAy" role="2OqNvi">
                <ref role="2Oxat5" node="6gadshXrO_v" resolve="myChildFilter" />
              </node>
            </node>
            <node concept="37vLTw" id="6gadshXrOAz" role="37vLTx">
              <ref role="3cqZAo" node="6gadshXrO_V" resolve="filterOnChildren" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXrOA$" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4NrFWh6Bfk2" role="jymVt" />
    <node concept="3clFb_" id="4NrFWh6BoOI" role="jymVt">
      <property role="TrG5h" value="getRootFolder" />
      <node concept="3clFbS" id="4NrFWh6BoOL" role="3clF47">
        <node concept="3cpWs6" id="4NrFWh6BteZ" role="3cqZAp">
          <node concept="37vLTw" id="4NrFWh6BtfR" role="3cqZAk">
            <ref role="3cqZAo" node="6gadshXrO_$" resolve="myFolder" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4NrFWh6Bk9y" role="1B3o_S" />
      <node concept="3uibUv" id="4NrFWh6Bob0" role="3clF45">
        <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
      </node>
    </node>
    <node concept="2tJIrI" id="6gadshXxu7z" role="jymVt" />
    <node concept="3clFb_" id="6gadshXrOA_" role="jymVt">
      <property role="TrG5h" value="checkFolderExistsAndItIsFolder" />
      <node concept="37vLTG" id="6gadshXrOAA" role="3clF46">
        <property role="TrG5h" value="folder" />
        <node concept="2AHcQZ" id="6gadshXrOAB" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXrOAC" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="3clFbS" id="6gadshXrOAD" role="3clF47">
        <node concept="3clFbJ" id="6gadshXrOAE" role="3cqZAp">
          <node concept="1Wc70l" id="6gadshXrOAF" role="3clFbw">
            <node concept="2OqwBi" id="6gadshXrVJQ" role="3uHU7B">
              <node concept="37vLTw" id="6gadshXrVJP" role="2Oq$k0">
                <ref role="3cqZAo" node="6gadshXrOAA" resolve="folder" />
              </node>
              <node concept="liA8E" id="6gadshXrVJR" role="2OqNvi">
                <ref role="37wK5l" to="3ju5:~IFile.exists()" resolve="exists" />
              </node>
            </node>
            <node concept="3fqX7Q" id="6gadshXrOAH" role="3uHU7w">
              <node concept="2OqwBi" id="6gadshXrSNV" role="3fr31v">
                <node concept="37vLTw" id="6gadshXrSNU" role="2Oq$k0">
                  <ref role="3cqZAo" node="6gadshXrOAA" resolve="folder" />
                </node>
                <node concept="liA8E" id="6gadshXrSNW" role="2OqNvi">
                  <ref role="37wK5l" to="3ju5:~IFile.isDirectory()" resolve="isDirectory" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6gadshXrOAK" role="3clFbx">
            <node concept="YS8fn" id="6gadshXrOAP" role="3cqZAp">
              <node concept="2ShNRf" id="6gadshXrStq" role="YScLw">
                <node concept="1pGfFk" id="6gadshXrSAc" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;(java.lang.String)" resolve="IllegalArgumentException" />
                  <node concept="3cpWs3" id="6gadshXrSAd" role="37wK5m">
                    <node concept="Xl_RD" id="6gadshXrSAe" role="3uHU7B">
                      <property role="Xl_RC" value="Could not create FolderDataSource with regular file: " />
                    </node>
                    <node concept="37vLTw" id="6gadshXrSAf" role="3uHU7w">
                      <ref role="3cqZAo" node="6gadshXrOAA" resolve="folder" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6gadshXrOAQ" role="1B3o_S" />
      <node concept="3cqZAl" id="6gadshXrOAR" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6gadshXxxf_" role="jymVt" />
    <node concept="3clFb_" id="6gadshXrOAS" role="jymVt">
      <property role="TrG5h" value="isIncluded" />
      <node concept="37vLTG" id="6gadshXrOAT" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="2AHcQZ" id="6gadshXrOAU" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXrOAV" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="3clFbS" id="6gadshXrOAW" role="3clF47">
        <node concept="3cpWs6" id="6gadshXrOAX" role="3cqZAp">
          <node concept="2OqwBi" id="6gadshXrOAY" role="3cqZAk">
            <node concept="2OqwBi" id="6gadshXrOAZ" role="2Oq$k0">
              <node concept="Xjq3P" id="6gadshXrOB0" role="2Oq$k0" />
              <node concept="2OwXpG" id="6gadshXrOB1" role="2OqNvi">
                <ref role="2Oxat5" node="6gadshXrO_v" resolve="myChildFilter" />
              </node>
            </node>
            <node concept="liA8E" id="6gadshXrOB2" role="2OqNvi">
              <ref role="37wK5l" to="82uw:~Predicate.test(java.lang.Object)" resolve="test" />
              <node concept="37vLTw" id="6gadshXrOB3" role="37wK5m">
                <ref role="3cqZAo" node="6gadshXrOAT" resolve="file" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6gadshXrOB4" role="1B3o_S" />
      <node concept="10P_77" id="6gadshXrOB5" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6gadshXvpKl" role="jymVt" />
    <node concept="3clFb_" id="6gadshXtIsn" role="jymVt">
      <property role="TrG5h" value="getDescendantFiles" />
      <node concept="3clFbS" id="6gadshXtIsq" role="3clF47">
        <node concept="3cpWs6" id="6gadshXtNBQ" role="3cqZAp">
          <node concept="1rXfSq" id="YAluuqHZpp" role="3cqZAk">
            <ref role="37wK5l" node="YAluuqHuDG" resolve="getDescendantFiles" />
            <node concept="37vLTw" id="YAluuqI64l" role="37wK5m">
              <ref role="3cqZAo" node="6gadshXrO_$" resolve="myFolder" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6gadshXt_JQ" role="1B3o_S" />
      <node concept="3uibUv" id="6gadshXtExS" role="3clF45">
        <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
        <node concept="3uibUv" id="6gadshXtG4S" role="11_B2D">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="YAluuqIvoN" role="jymVt" />
    <node concept="3clFb_" id="YAluuqHuDG" role="jymVt">
      <property role="TrG5h" value="getDescendantFiles" />
      <node concept="3clFbS" id="YAluuqHuDH" role="3clF47">
        <node concept="3cpWs6" id="YAluuqHuDI" role="3cqZAp">
          <node concept="2OqwBi" id="YAluuqHuDJ" role="3cqZAk">
            <node concept="2OqwBi" id="YAluuqHuDK" role="2Oq$k0">
              <node concept="2OqwBi" id="YAluuqHuDL" role="2Oq$k0">
                <node concept="37vLTw" id="YAluuqHCH3" role="2Oq$k0">
                  <ref role="3cqZAo" node="YAluuqHzAn" resolve="file" />
                </node>
                <node concept="liA8E" id="YAluuqHuDN" role="2OqNvi">
                  <ref role="37wK5l" to="3ju5:~IFile.getChildren()" resolve="getChildren" />
                </node>
              </node>
              <node concept="liA8E" id="YAluuqHuDO" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
              </node>
            </node>
            <node concept="liA8E" id="YAluuqHuDP" role="2OqNvi">
              <ref role="37wK5l" to="1ctc:~Stream.flatMap(java.util.function.Function)" resolve="flatMap" />
              <node concept="1bVj0M" id="YAluuqHuDQ" role="37wK5m">
                <node concept="3clFbS" id="YAluuqHuDR" role="1bW5cS">
                  <node concept="3clFbJ" id="YAluuqHuDS" role="3cqZAp">
                    <node concept="2OqwBi" id="YAluuqHuDT" role="3clFbw">
                      <node concept="37vLTw" id="YAluuqHuDU" role="2Oq$k0">
                        <ref role="3cqZAo" node="YAluuqHuE8" resolve="child" />
                      </node>
                      <node concept="liA8E" id="YAluuqHuDV" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.isDirectory()" resolve="isDirectory" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="YAluuqHuDW" role="3clFbx">
                      <node concept="3cpWs6" id="YAluuqHuDX" role="3cqZAp">
                        <node concept="1rXfSq" id="YAluuqHKLB" role="3cqZAk">
                          <ref role="37wK5l" node="YAluuqHuDG" resolve="getDescendantFiles" />
                          <node concept="37vLTw" id="YAluuqHP9v" role="37wK5m">
                            <ref role="3cqZAo" node="YAluuqHuE8" resolve="child" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="9aQIb" id="YAluuqHuE3" role="9aQIa">
                      <node concept="3clFbS" id="YAluuqHuE4" role="9aQI4">
                        <node concept="3clFbF" id="YAluuqHuE5" role="3cqZAp">
                          <node concept="2YIFZM" id="YAluuqHuE6" role="3clFbG">
                            <ref role="1Pybhc" to="1ctc:~Stream" resolve="Stream" />
                            <ref role="37wK5l" to="1ctc:~Stream.of(java.lang.Object...)" resolve="of" />
                            <node concept="37vLTw" id="YAluuqHuE7" role="37wK5m">
                              <ref role="3cqZAo" node="YAluuqHuE8" resolve="child" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="YAluuqHuE8" role="1bW2Oz">
                  <property role="TrG5h" value="child" />
                  <node concept="3uibUv" id="YAluuqHuE9" role="1tU5fm">
                    <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="YAluuqHuEa" role="1B3o_S" />
      <node concept="3uibUv" id="YAluuqHuEb" role="3clF45">
        <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
        <node concept="3uibUv" id="YAluuqHuEc" role="11_B2D">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="37vLTG" id="YAluuqHzAn" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="3uibUv" id="YAluuqHBW3" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6gadshXAag3" role="jymVt" />
    <node concept="3clFb_" id="6gadshXrOBE" role="jymVt">
      <property role="TrG5h" value="isReadOnly" />
      <node concept="3clFbS" id="6gadshXrOBF" role="3clF47">
        <node concept="3cpWs6" id="6gadshXrOBG" role="3cqZAp">
          <node concept="2OqwBi" id="6gadshXrOBH" role="3cqZAk">
            <node concept="2OqwBi" id="6gadshXrOBI" role="2Oq$k0">
              <node concept="Xjq3P" id="6gadshXrOBJ" role="2Oq$k0" />
              <node concept="2OwXpG" id="6gadshXrOBK" role="2OqNvi">
                <ref role="2Oxat5" node="6gadshXrO_$" resolve="myFolder" />
              </node>
            </node>
            <node concept="liA8E" id="6gadshXrOBL" role="2OqNvi">
              <ref role="37wK5l" to="3ju5:~IFile.isPackaged()" resolve="isPackaged" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXrOBM" role="1B3o_S" />
      <node concept="10P_77" id="6gadshXrOBN" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6gadshXAcmV" role="jymVt" />
    <node concept="3clFb_" id="6gadshXrOBO" role="jymVt">
      <property role="TrG5h" value="getLocation" />
      <node concept="2AHcQZ" id="6gadshXrOBP" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="6gadshXrOBQ" role="3clF47">
        <node concept="3cpWs6" id="6gadshXrOBR" role="3cqZAp">
          <node concept="2OqwBi" id="6gadshXrOBS" role="3cqZAk">
            <node concept="2OqwBi" id="6gadshXrOBT" role="2Oq$k0">
              <node concept="Xjq3P" id="6gadshXrOBU" role="2Oq$k0" />
              <node concept="2OwXpG" id="6gadshXrOBV" role="2OqNvi">
                <ref role="2Oxat5" node="6gadshXrO_$" resolve="myFolder" />
              </node>
            </node>
            <node concept="liA8E" id="6gadshXrOBW" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~Object.toString()" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXrOBX" role="1B3o_S" />
      <node concept="3uibUv" id="6gadshXrOBY" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
    </node>
    <node concept="2tJIrI" id="6gadshXAfaf" role="jymVt" />
    <node concept="3clFb_" id="6gadshXrOBZ" role="jymVt">
      <property role="TrG5h" value="getSubStreams" />
      <node concept="2AHcQZ" id="6gadshXrOC0" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="6gadshXrOC1" role="3clF47">
        <node concept="3cpWs6" id="6gadshXrOC2" role="3cqZAp">
          <node concept="2OqwBi" id="6gadshXrOC3" role="3cqZAk">
            <node concept="2OqwBi" id="6gadshXrOC4" role="2Oq$k0">
              <node concept="2OqwBi" id="6gadshXrOC5" role="2Oq$k0">
                <node concept="Xjq3P" id="6gadshXrOC6" role="2Oq$k0" />
                <node concept="liA8E" id="6gadshXx$Cd" role="2OqNvi">
                  <ref role="37wK5l" node="6gadshXtIsn" resolve="getDescendantFiles" />
                </node>
              </node>
              <node concept="liA8E" id="6gadshXrOC8" role="2OqNvi">
                <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                <node concept="1bVj0M" id="6gadshXyZcM" role="37wK5m">
                  <node concept="3clFbS" id="6gadshXyZcN" role="1bW5cS">
                    <node concept="3clFbF" id="6gadshXz6Lq" role="3cqZAp">
                      <node concept="1rXfSq" id="6gadshXz6Lp" role="3clFbG">
                        <ref role="37wK5l" node="6gadshXrOAS" resolve="isIncluded" />
                        <node concept="37vLTw" id="6gadshXz97U" role="37wK5m">
                          <ref role="3cqZAo" node="6gadshXz2Ax" resolve="file" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="6gadshXz2Ax" role="1bW2Oz">
                    <property role="TrG5h" value="file" />
                    <node concept="3uibUv" id="6gadshXz2Aw" role="1tU5fm">
                      <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6gadshXrOC9" role="2OqNvi">
              <ref role="37wK5l" to="1ctc:~Stream.map(java.util.function.Function)" resolve="map" />
              <node concept="1bVj0M" id="6gadshXzch5" role="37wK5m">
                <node concept="3clFbS" id="6gadshXzch6" role="1bW5cS">
                  <node concept="3clFbF" id="6gadshXzch7" role="3cqZAp">
                    <node concept="2ShNRf" id="6gadshXzfSg" role="3clFbG">
                      <node concept="1pGfFk" id="6gadshXzhCW" role="2ShVmc">
                        <ref role="37wK5l" node="1MMhnIwM8m4" resolve="RecursiveFolderDataSource.DescendantFileDataSource" />
                        <node concept="37vLTw" id="6gadshXzkWs" role="37wK5m">
                          <ref role="3cqZAo" node="6gadshXzcha" resolve="file" />
                        </node>
                        <node concept="37vLTw" id="1MMhnIwNqCC" role="37wK5m">
                          <ref role="3cqZAo" node="6gadshXrO_$" resolve="myFolder" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="6gadshXzcha" role="1bW2Oz">
                  <property role="TrG5h" value="file" />
                  <node concept="3uibUv" id="6gadshXzchb" role="1tU5fm">
                    <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="6gadshXzv1x" role="3PaCim">
                <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXrOCa" role="1B3o_S" />
      <node concept="3uibUv" id="6gadshXrOCb" role="3clF45">
        <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
        <node concept="3uibUv" id="6gadshXrOCc" role="11_B2D">
          <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6gadshXAhYZ" role="jymVt" />
    <node concept="3clFb_" id="6gadshXrOCd" role="jymVt">
      <property role="TrG5h" value="getStreamByNameOrCreate" />
      <node concept="2AHcQZ" id="6gadshXrOCe" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="6gadshXrOCf" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="2AHcQZ" id="6gadshXrOCg" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXrOCh" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="6gadshXrOCi" role="3clF47">
        <node concept="3cpWs6" id="6gadshXrOCj" role="3cqZAp">
          <node concept="10QFUN" id="6gadshXrOCk" role="3cqZAk">
            <node concept="1eOMI4" id="6gadshXrOCB" role="10QFUP">
              <node concept="3K4zz7" id="6gadshXrOCA" role="1eOMHV">
                <node concept="3y3z36" id="6gadshXrOCl" role="3K4Cdx">
                  <node concept="2OqwBi" id="6gadshXrOCm" role="3uHU7B">
                    <node concept="Xjq3P" id="6gadshXrOCn" role="2Oq$k0" />
                    <node concept="liA8E" id="6gadshXrOCo" role="2OqNvi">
                      <ref role="37wK5l" to="dush:~MultiStreamDataSource.getStreamByName(java.lang.String)" resolve="getStreamByName" />
                      <node concept="37vLTw" id="6gadshXrOCp" role="37wK5m">
                        <ref role="3cqZAo" node="6gadshXrOCf" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="10Nm6u" id="6gadshXrOCq" role="3uHU7w" />
                </node>
                <node concept="2OqwBi" id="6gadshXrOCr" role="3K4E3e">
                  <node concept="Xjq3P" id="6gadshXrOCs" role="2Oq$k0" />
                  <node concept="liA8E" id="6gadshXrOCt" role="2OqNvi">
                    <ref role="37wK5l" to="dush:~MultiStreamDataSource.getStreamByName(java.lang.String)" resolve="getStreamByName" />
                    <node concept="37vLTw" id="6gadshXrOCu" role="37wK5m">
                      <ref role="3cqZAo" node="6gadshXrOCf" resolve="name" />
                    </node>
                  </node>
                </node>
                <node concept="2ShNRf" id="6gadshXrUvW" role="3K4GZi">
                  <node concept="1pGfFk" id="6gadshXrUwn" role="2ShVmc">
                    <ref role="37wK5l" node="1MMhnIwM8m4" resolve="RecursiveFolderDataSource.DescendantFileDataSource" />
                    <node concept="2OqwBi" id="6gadshXrUwo" role="37wK5m">
                      <node concept="liA8E" id="6gadshXrUws" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.getDescendant(java.lang.String)" resolve="getDescendant" />
                        <node concept="37vLTw" id="6gadshXrUwt" role="37wK5m">
                          <ref role="3cqZAo" node="6gadshXrOCf" resolve="name" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="1MMhnIwN6qW" role="2Oq$k0">
                        <ref role="3cqZAo" node="6gadshXrO_$" resolve="myFolder" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1MMhnIwN5qD" role="37wK5m">
                      <ref role="3cqZAo" node="6gadshXrO_$" resolve="myFolder" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="6gadshXrOCC" role="10QFUM">
              <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXrOCD" role="1B3o_S" />
      <node concept="3uibUv" id="6gadshXrOCE" role="3clF45">
        <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
      </node>
    </node>
    <node concept="2tJIrI" id="6gadshXwHnU" role="jymVt" />
    <node concept="3clFb_" id="6gadshXrOCF" role="jymVt">
      <property role="TrG5h" value="getTimestamp" />
      <node concept="3clFbS" id="6gadshXrOCG" role="3clF47">
        <node concept="3cpWs8" id="6gadshXrOCI" role="3cqZAp">
          <node concept="3cpWsn" id="6gadshXrOCH" role="3cpWs9">
            <property role="TrG5h" value="max" />
            <node concept="3cpWsb" id="6gadshXrOCJ" role="1tU5fm" />
            <node concept="2OqwBi" id="6gadshXrOCK" role="33vP2m">
              <node concept="Xjq3P" id="6gadshXrOCL" role="2Oq$k0" />
              <node concept="2OwXpG" id="6gadshXrOCM" role="2OqNvi">
                <ref role="2Oxat5" node="6gadshXrO_D" resolve="myLastAddRemove" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6gadshXrOCO" role="3cqZAp">
          <node concept="3cpWsn" id="6gadshXrOCN" role="3cpWs9">
            <property role="TrG5h" value="any" />
            <node concept="10P_77" id="6gadshXrOCP" role="1tU5fm" />
            <node concept="3clFbT" id="6gadshXrOCQ" role="33vP2m" />
          </node>
        </node>
        <node concept="2Gpval" id="6gadshXwfU2" role="3cqZAp">
          <node concept="2GrKxI" id="6gadshXwfU4" role="2Gsz3X">
            <property role="TrG5h" value="file" />
          </node>
          <node concept="3clFbS" id="6gadshXwfU8" role="2LFqv$">
            <node concept="3clFbJ" id="6gadshXrODe" role="3cqZAp">
              <node concept="2OqwBi" id="6gadshXrODf" role="3clFbw">
                <node concept="Xjq3P" id="6gadshXrODg" role="2Oq$k0" />
                <node concept="liA8E" id="6gadshXrODh" role="2OqNvi">
                  <ref role="37wK5l" node="6gadshXrOAS" resolve="isIncluded" />
                  <node concept="2GrUjf" id="6gadshXwAsy" role="37wK5m">
                    <ref role="2Gs0qQ" node="6gadshXwfU4" resolve="file" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6gadshXrODk" role="3clFbx">
                <node concept="3clFbF" id="6gadshXrODl" role="3cqZAp">
                  <node concept="37vLTI" id="6gadshXrODm" role="3clFbG">
                    <node concept="37vLTw" id="6gadshXrODn" role="37vLTJ">
                      <ref role="3cqZAo" node="6gadshXrOCN" resolve="any" />
                    </node>
                    <node concept="3clFbT" id="6gadshXrODo" role="37vLTx">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6gadshXrODq" role="3cqZAp">
                  <node concept="3cpWsn" id="6gadshXrODp" role="3cpWs9">
                    <property role="TrG5h" value="timestamp" />
                    <node concept="3cpWsb" id="6gadshXrODr" role="1tU5fm" />
                    <node concept="2OqwBi" id="6gadshXrSAn" role="33vP2m">
                      <node concept="2GrUjf" id="6gadshXwAye" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="6gadshXwfU4" resolve="file" />
                      </node>
                      <node concept="liA8E" id="6gadshXrSAo" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.lastModified()" resolve="lastModified" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6gadshXrODt" role="3cqZAp">
                  <node concept="3eOSWO" id="6gadshXrODu" role="3clFbw">
                    <node concept="37vLTw" id="6gadshXrODv" role="3uHU7B">
                      <ref role="3cqZAo" node="6gadshXrODp" resolve="timestamp" />
                    </node>
                    <node concept="37vLTw" id="6gadshXrODw" role="3uHU7w">
                      <ref role="3cqZAo" node="6gadshXrOCH" resolve="max" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="6gadshXrODy" role="3clFbx">
                    <node concept="3clFbF" id="6gadshXrODz" role="3cqZAp">
                      <node concept="37vLTI" id="6gadshXrOD$" role="3clFbG">
                        <node concept="37vLTw" id="6gadshXrOD_" role="37vLTJ">
                          <ref role="3cqZAo" node="6gadshXrOCH" resolve="max" />
                        </node>
                        <node concept="37vLTw" id="6gadshXrODA" role="37vLTx">
                          <ref role="3cqZAo" node="6gadshXrODp" resolve="timestamp" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6gadshXwrm5" role="2GsD0m">
            <node concept="1rXfSq" id="6gadshXwiUQ" role="2Oq$k0">
              <ref role="37wK5l" node="6gadshXtIsn" resolve="getDescendantFiles" />
            </node>
            <node concept="liA8E" id="6gadshXwsS7" role="2OqNvi">
              <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
              <node concept="2YIFZM" id="6gadshXwsS8" role="37wK5m">
                <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                <node concept="3uibUv" id="6gadshXwBnO" role="3PaCim">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6gadshXrODC" role="3cqZAp">
          <node concept="3K4zz7" id="6gadshXrODH" role="3cqZAk">
            <node concept="37vLTw" id="6gadshXrODD" role="3K4Cdx">
              <ref role="3cqZAo" node="6gadshXrOCN" resolve="any" />
            </node>
            <node concept="37vLTw" id="6gadshXrODE" role="3K4E3e">
              <ref role="3cqZAo" node="6gadshXrOCH" resolve="max" />
            </node>
            <node concept="1ZRNhn" id="6gadshXrODF" role="3K4GZi">
              <node concept="1adDum" id="6gadshXrODG" role="2$L3a6">
                <property role="1adDun" value="1L" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXrODI" role="1B3o_S" />
      <node concept="3cpWsb" id="6gadshXrODJ" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6gadshXwDJT" role="jymVt" />
    <node concept="3clFb_" id="6gadshXrODK" role="jymVt">
      <property role="TrG5h" value="addListener" />
      <node concept="37vLTG" id="6gadshXrODL" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="2AHcQZ" id="6gadshXrODM" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXrODN" role="1tU5fm">
          <ref role="3uigEE" to="dush:~DataSourceListener" resolve="DataSourceListener" />
        </node>
      </node>
      <node concept="3clFbS" id="6gadshXrODO" role="3clF47">
        <node concept="1HWtB8" id="6gadshXrODP" role="3cqZAp">
          <node concept="2OqwBi" id="6gadshXrOEt" role="1HWFw0">
            <node concept="Xjq3P" id="6gadshXrOEu" role="2Oq$k0" />
            <node concept="2OwXpG" id="6gadshXrOEv" role="2OqNvi">
              <ref role="2Oxat5" node="6gadshXrO_m" resolve="LOCK" />
            </node>
          </node>
          <node concept="3clFbS" id="6gadshXrODR" role="1HWHxc">
            <node concept="3clFbJ" id="6gadshXrODS" role="3cqZAp">
              <node concept="2OqwBi" id="6gadshXrODT" role="3clFbw">
                <node concept="2OqwBi" id="6gadshXrODU" role="2Oq$k0">
                  <node concept="Xjq3P" id="6gadshXrODV" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gadshXrODW" role="2OqNvi">
                    <ref role="2Oxat5" node="6gadshXrO_q" resolve="myListeners" />
                  </node>
                </node>
                <node concept="liA8E" id="6gadshXrODX" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
              <node concept="3clFbS" id="6gadshXrODZ" role="3clFbx">
                <node concept="3cpWs8" id="6gadshXrOE1" role="3cqZAp">
                  <node concept="3cpWsn" id="6gadshXrOE0" role="3cpWs9">
                    <property role="TrG5h" value="fs" />
                    <node concept="3uibUv" id="6gadshXA3Pv" role="1tU5fm">
                      <ref role="3uigEE" to="w827:~FileSystem" resolve="FileSystem" />
                    </node>
                    <node concept="2OqwBi" id="6gadshXrOE3" role="33vP2m">
                      <node concept="2OqwBi" id="6gadshXrOE4" role="2Oq$k0">
                        <node concept="Xjq3P" id="6gadshXrOE5" role="2Oq$k0" />
                        <node concept="2OwXpG" id="6gadshXrOE6" role="2OqNvi">
                          <ref role="2Oxat5" node="6gadshXrO_$" resolve="myFolder" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6gadshXrOE7" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.getFileSystem()" resolve="getFileSystem" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6gadshXrOE8" role="3cqZAp">
                  <node concept="2ZW3vV" id="6gadshXrOEb" role="3clFbw">
                    <node concept="37vLTw" id="6gadshXrOE9" role="2ZW6bz">
                      <ref role="3cqZAo" node="6gadshXrOE0" resolve="fs" />
                    </node>
                    <node concept="3uibUv" id="6gadshXrOEa" role="2ZW6by">
                      <ref role="3uigEE" to="7nyy:~CachingFileSystem" resolve="CachingFileSystem" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="6gadshXrOEd" role="3clFbx">
                    <node concept="3clFbF" id="6gadshXrOEe" role="3cqZAp">
                      <node concept="2OqwBi" id="6gadshXrOEf" role="3clFbG">
                        <node concept="1eOMI4" id="6gadshXrOEj" role="2Oq$k0">
                          <node concept="10QFUN" id="6gadshXrOEg" role="1eOMHV">
                            <node concept="37vLTw" id="6gadshXrOEh" role="10QFUP">
                              <ref role="3cqZAo" node="6gadshXrOE0" resolve="fs" />
                            </node>
                            <node concept="3uibUv" id="6gadshXrOEi" role="10QFUM">
                              <ref role="3uigEE" to="7nyy:~CachingFileSystem" resolve="CachingFileSystem" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6gadshXrOEk" role="2OqNvi">
                          <ref role="37wK5l" to="7nyy:~CachingFileSystem.addListener(jetbrains.mps.vfs.refresh.FileSystemListener)" resolve="addListener" />
                          <node concept="Xjq3P" id="6gadshXrOEl" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gadshXrOEm" role="3cqZAp">
              <node concept="2OqwBi" id="6gadshXrOEn" role="3clFbG">
                <node concept="2OqwBi" id="6gadshXrOEo" role="2Oq$k0">
                  <node concept="Xjq3P" id="6gadshXrOEp" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gadshXrOEq" role="2OqNvi">
                    <ref role="2Oxat5" node="6gadshXrO_q" resolve="myListeners" />
                  </node>
                </node>
                <node concept="liA8E" id="6gadshXrOEr" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="37vLTw" id="6gadshXrOEs" role="37wK5m">
                    <ref role="3cqZAo" node="6gadshXrODL" resolve="listener" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXrOEw" role="1B3o_S" />
      <node concept="3cqZAl" id="6gadshXrOEx" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6gadshXxlAb" role="jymVt" />
    <node concept="3clFb_" id="6gadshXrOEy" role="jymVt">
      <property role="TrG5h" value="removeListener" />
      <node concept="37vLTG" id="6gadshXrOEz" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="2AHcQZ" id="6gadshXrOE$" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXrOE_" role="1tU5fm">
          <ref role="3uigEE" to="dush:~DataSourceListener" resolve="DataSourceListener" />
        </node>
      </node>
      <node concept="3clFbS" id="6gadshXrOEA" role="3clF47">
        <node concept="1HWtB8" id="6gadshXrOEB" role="3cqZAp">
          <node concept="2OqwBi" id="6gadshXrOFf" role="1HWFw0">
            <node concept="Xjq3P" id="6gadshXrOFg" role="2Oq$k0" />
            <node concept="2OwXpG" id="6gadshXrOFh" role="2OqNvi">
              <ref role="2Oxat5" node="6gadshXrO_m" resolve="LOCK" />
            </node>
          </node>
          <node concept="3clFbS" id="6gadshXrOED" role="1HWHxc">
            <node concept="3clFbF" id="6gadshXrOEE" role="3cqZAp">
              <node concept="2OqwBi" id="6gadshXrOEF" role="3clFbG">
                <node concept="2OqwBi" id="6gadshXrOEG" role="2Oq$k0">
                  <node concept="Xjq3P" id="6gadshXrOEH" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gadshXrOEI" role="2OqNvi">
                    <ref role="2Oxat5" node="6gadshXrO_q" resolve="myListeners" />
                  </node>
                </node>
                <node concept="liA8E" id="6gadshXrOEJ" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.remove(java.lang.Object)" resolve="remove" />
                  <node concept="37vLTw" id="6gadshXrOEK" role="37wK5m">
                    <ref role="3cqZAo" node="6gadshXrOEz" resolve="listener" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="6gadshXrOEL" role="3cqZAp">
              <node concept="2OqwBi" id="6gadshXrOEM" role="3clFbw">
                <node concept="2OqwBi" id="6gadshXrOEN" role="2Oq$k0">
                  <node concept="Xjq3P" id="6gadshXrOEO" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6gadshXrOEP" role="2OqNvi">
                    <ref role="2Oxat5" node="6gadshXrO_q" resolve="myListeners" />
                  </node>
                </node>
                <node concept="liA8E" id="6gadshXrOEQ" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.isEmpty()" resolve="isEmpty" />
                </node>
              </node>
              <node concept="3clFbS" id="6gadshXrOES" role="3clFbx">
                <node concept="3cpWs8" id="6gadshXrOEU" role="3cqZAp">
                  <node concept="3cpWsn" id="6gadshXrOET" role="3cpWs9">
                    <property role="TrG5h" value="fs" />
                    <node concept="3uibUv" id="6gadshXA3KZ" role="1tU5fm">
                      <ref role="3uigEE" to="w827:~FileSystem" resolve="FileSystem" />
                    </node>
                    <node concept="2OqwBi" id="6gadshXrOEW" role="33vP2m">
                      <node concept="2OqwBi" id="6gadshXrOEX" role="2Oq$k0">
                        <node concept="Xjq3P" id="6gadshXrOEY" role="2Oq$k0" />
                        <node concept="2OwXpG" id="6gadshXrOEZ" role="2OqNvi">
                          <ref role="2Oxat5" node="6gadshXrO_$" resolve="myFolder" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6gadshXrOF0" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.getFileSystem()" resolve="getFileSystem" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6gadshXrOF1" role="3cqZAp">
                  <node concept="2ZW3vV" id="6gadshXrOF4" role="3clFbw">
                    <node concept="37vLTw" id="6gadshXrOF2" role="2ZW6bz">
                      <ref role="3cqZAo" node="6gadshXrOET" resolve="fs" />
                    </node>
                    <node concept="3uibUv" id="6gadshXrOF3" role="2ZW6by">
                      <ref role="3uigEE" to="7nyy:~CachingFileSystem" resolve="CachingFileSystem" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="6gadshXrOF6" role="3clFbx">
                    <node concept="3clFbF" id="6gadshXrOF7" role="3cqZAp">
                      <node concept="2OqwBi" id="6gadshXrOF8" role="3clFbG">
                        <node concept="1eOMI4" id="6gadshXrOFc" role="2Oq$k0">
                          <node concept="10QFUN" id="6gadshXrOF9" role="1eOMHV">
                            <node concept="37vLTw" id="6gadshXrOFa" role="10QFUP">
                              <ref role="3cqZAo" node="6gadshXrOET" resolve="fs" />
                            </node>
                            <node concept="3uibUv" id="6gadshXrOFb" role="10QFUM">
                              <ref role="3uigEE" to="7nyy:~CachingFileSystem" resolve="CachingFileSystem" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6gadshXrOFd" role="2OqNvi">
                          <ref role="37wK5l" to="7nyy:~CachingFileSystem.removeListener(jetbrains.mps.vfs.refresh.FileSystemListener)" resolve="removeListener" />
                          <node concept="Xjq3P" id="6gadshXrOFe" role="37wK5m" />
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
      <node concept="3Tm1VV" id="6gadshXrOFi" role="1B3o_S" />
      <node concept="3cqZAl" id="6gadshXrOFj" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6gadshXxiud" role="jymVt" />
    <node concept="3clFb_" id="6gadshXrOFk" role="jymVt">
      <property role="TrG5h" value="getFileToListen" />
      <node concept="2AHcQZ" id="6gadshXrOFl" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="6gadshXrOFm" role="3clF47">
        <node concept="3cpWs6" id="6gadshXrOFn" role="3cqZAp">
          <node concept="37vLTw" id="4NrFWh6B7ew" role="3cqZAk">
            <ref role="3cqZAo" node="6gadshXrO_$" resolve="myFolder" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXrOFr" role="1B3o_S" />
      <node concept="3uibUv" id="6gadshXrOFs" role="3clF45">
        <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
      </node>
    </node>
    <node concept="2tJIrI" id="6gadshXxfSW" role="jymVt" />
    <node concept="3clFb_" id="6gadshXrOFt" role="jymVt">
      <property role="TrG5h" value="listeningPreferences" />
      <node concept="2AHcQZ" id="6gadshXrOFu" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="6gadshXrOFv" role="3clF47">
        <node concept="3cpWs6" id="6gadshXrOFw" role="3cqZAp">
          <node concept="2OqwBi" id="6gadshXrOFx" role="3cqZAk">
            <node concept="2OqwBi" id="6gadshXrOFy" role="2Oq$k0">
              <node concept="2OqwBi" id="6gadshXrOFz" role="2Oq$k0">
                <node concept="2OqwBi" id="6gadshXrOF$" role="2Oq$k0">
                  <node concept="2OqwBi" id="6gadshXrOF_" role="2Oq$k0">
                    <node concept="2YIFZM" id="6gadshXsnGY" role="2Oq$k0">
                      <ref role="1Pybhc" to="7nyy:~FileListeningPreferences" resolve="FileListeningPreferences" />
                      <ref role="37wK5l" to="7nyy:~FileListeningPreferences.construct()" resolve="construct" />
                    </node>
                    <node concept="liA8E" id="6gadshXrOFB" role="2OqNvi">
                      <ref role="37wK5l" to="7nyy:~FileListeningPreferences$PreferencesBuilder.notifyOnDescendantRemoval()" resolve="notifyOnDescendantRemoval" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6gadshXrOFC" role="2OqNvi">
                    <ref role="37wK5l" to="7nyy:~FileListeningPreferences$PreferencesBuilder.notifyOnDescendantCreation()" resolve="notifyOnDescendantCreation" />
                  </node>
                </node>
                <node concept="liA8E" id="6gadshXrOFD" role="2OqNvi">
                  <ref role="37wK5l" to="7nyy:~FileListeningPreferences$PreferencesBuilder.notifyOnDescendantChange()" resolve="notifyOnDescendantChange" />
                </node>
              </node>
              <node concept="liA8E" id="6gadshXrOFE" role="2OqNvi">
                <ref role="37wK5l" to="7nyy:~FileListeningPreferences$PreferencesBuilder.notifyOnAncestorChange()" resolve="notifyOnAncestorChange" />
              </node>
            </node>
            <node concept="liA8E" id="6gadshXrOFF" role="2OqNvi">
              <ref role="37wK5l" to="7nyy:~FileListeningPreferences$PreferencesBuilder.build()" resolve="build" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXrOFG" role="1B3o_S" />
      <node concept="3uibUv" id="6gadshXrOFH" role="3clF45">
        <ref role="3uigEE" to="7nyy:~FileListeningPreferences" resolve="FileListeningPreferences" />
      </node>
    </node>
    <node concept="2tJIrI" id="6gadshXxcvS" role="jymVt" />
    <node concept="3clFb_" id="6gadshXrOFI" role="jymVt">
      <property role="TrG5h" value="delete" />
      <node concept="3clFbS" id="6gadshXrOFJ" role="3clF47">
        <node concept="3clFbJ" id="6gadshXrOFK" role="3cqZAp">
          <node concept="2OqwBi" id="6gadshXrOFL" role="3clFbw">
            <node concept="Xjq3P" id="6gadshXrOFM" role="2Oq$k0" />
            <node concept="liA8E" id="6gadshXrOFN" role="2OqNvi">
              <ref role="37wK5l" node="6gadshXrOBE" resolve="isReadOnly" />
            </node>
          </node>
          <node concept="9aQIb" id="6gadshXrOFS" role="9aQIa">
            <node concept="3clFbS" id="6gadshXrOFT" role="9aQI4">
              <node concept="3clFbF" id="6gadshXrOFU" role="3cqZAp">
                <node concept="2OqwBi" id="6gadshXrOFV" role="3clFbG">
                  <node concept="2OqwBi" id="6gadshXrOFW" role="2Oq$k0">
                    <node concept="2OqwBi" id="6gadshXrOFX" role="2Oq$k0">
                      <node concept="Xjq3P" id="6gadshXrOFY" role="2Oq$k0" />
                      <node concept="liA8E" id="6gadshXxMEU" role="2OqNvi">
                        <ref role="37wK5l" node="6gadshXtIsn" resolve="getDescendantFiles" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6gadshXrOG0" role="2OqNvi">
                      <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                      <node concept="37vLTw" id="6gadshXxNug" role="37wK5m">
                        <ref role="3cqZAo" node="6gadshXrO_v" resolve="myChildFilter" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="6gadshXrOG1" role="2OqNvi">
                    <ref role="37wK5l" to="1ctc:~Stream.forEach(java.util.function.Consumer)" resolve="forEach" />
                    <node concept="1bVj0M" id="6gadshXxOkl" role="37wK5m">
                      <node concept="3clFbS" id="6gadshXxOkm" role="1bW5cS">
                        <node concept="3clFbF" id="6gadshXxPMW" role="3cqZAp">
                          <node concept="2OqwBi" id="6gadshXxQ0D" role="3clFbG">
                            <node concept="37vLTw" id="6gadshXxPMV" role="2Oq$k0">
                              <ref role="3cqZAo" node="6gadshXxOGK" resolve="file" />
                            </node>
                            <node concept="liA8E" id="6gadshXy0GK" role="2OqNvi">
                              <ref role="37wK5l" to="3ju5:~IFile.deleteIfExists()" resolve="deleteIfExists" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="6gadshXxOGK" role="1bW2Oz">
                        <property role="TrG5h" value="file" />
                        <node concept="3uibUv" id="6gadshXxOGJ" role="1tU5fm">
                          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6gadshXrOG2" role="3cqZAp">
                <node concept="37vLTI" id="6gadshXrOG3" role="3clFbG">
                  <node concept="2OqwBi" id="6gadshXrOG4" role="37vLTJ">
                    <node concept="Xjq3P" id="6gadshXrOG5" role="2Oq$k0" />
                    <node concept="2OwXpG" id="6gadshXrOG6" role="2OqNvi">
                      <ref role="2Oxat5" node="6gadshXrO_D" resolve="myLastAddRemove" />
                    </node>
                  </node>
                  <node concept="1ZRNhn" id="6gadshXrOG7" role="37vLTx">
                    <node concept="1adDum" id="6gadshXrOG8" role="2$L3a6">
                      <property role="1adDun" value="1L" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="6gadshXrOG9" role="3cqZAp">
                <node concept="3clFbT" id="6gadshXrOGa" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6gadshXrOFP" role="3clFbx">
            <node concept="3cpWs6" id="6gadshXrOFQ" role="3cqZAp">
              <node concept="3clFbT" id="6gadshXrOFR" role="3cqZAk" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXrOGb" role="1B3o_S" />
      <node concept="10P_77" id="6gadshXrOGc" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6gadshXx9yG" role="jymVt" />
    <node concept="3clFb_" id="6gadshXzJ5m" role="jymVt">
      <property role="TrG5h" value="getStreamName" />
      <node concept="3clFbS" id="6gadshXzJ5s" role="3clF47">
        <node concept="3clFbF" id="6gadshX$DSV" role="3cqZAp">
          <node concept="2YIFZM" id="6gadshX$mrT" role="3clFbG">
            <ref role="37wK5l" to="snbe:~FileUtilRt.getRelativePath(java.lang.String,java.lang.String,char)" resolve="getRelativePath" />
            <ref role="1Pybhc" to="snbe:~FileUtilRt" resolve="FileUtilRt" />
            <node concept="2OqwBi" id="6gadshX$AAI" role="37wK5m">
              <node concept="37vLTw" id="6gadshX$Av6" role="2Oq$k0">
                <ref role="3cqZAo" node="6gadshXrO_$" resolve="myFolder" />
              </node>
              <node concept="liA8E" id="6gadshX$B76" role="2OqNvi">
                <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
              </node>
            </node>
            <node concept="2OqwBi" id="6gadshX$mHT" role="37wK5m">
              <node concept="37vLTw" id="6gadshX$mxv" role="2Oq$k0">
                <ref role="3cqZAo" node="6gadshXzJ5p" resolve="file" />
              </node>
              <node concept="liA8E" id="6gadshX$mL7" role="2OqNvi">
                <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
              </node>
            </node>
            <node concept="10M0yZ" id="6gadshX$KFW" role="37wK5m">
              <ref role="3cqZAo" to="guwi:~File.separatorChar" resolve="separatorChar" />
              <ref role="1PxDUh" to="guwi:~File" resolve="File" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6gadshXzJ5v" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="2AHcQZ" id="6gadshXzJ5o" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="6gadshXzJ5p" role="3clF46">
        <property role="TrG5h" value="file" />
        <node concept="2AHcQZ" id="6gadshXzJ5q" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXzJ5r" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6gadshXzJ5u" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6gadshXx63z" role="jymVt" />
    <node concept="3clFb_" id="6gadshXrOGn" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="37vLTG" id="6gadshXrOGo" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="2AHcQZ" id="6gadshXrOGp" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXsObv" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="37vLTG" id="6gadshXrOGr" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="2AHcQZ" id="6gadshXrOGs" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXrOGt" role="1tU5fm">
          <ref role="3uigEE" to="7nyy:~FileSystemEvent" resolve="FileSystemEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="6gadshXrOGu" role="3clF47">
        <node concept="3cpWs8" id="6gadshXrOGw" role="3cqZAp">
          <node concept="3cpWsn" id="6gadshXrOGv" role="3cpWs9">
            <property role="TrG5h" value="affectedStreams" />
            <node concept="3uibUv" id="6gadshXrOGx" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
              <node concept="3uibUv" id="6gadshXrOGy" role="11_B2D">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
            </node>
            <node concept="2ShNRf" id="6gadshXrUxC" role="33vP2m">
              <node concept="1pGfFk" id="6gadshXrUxG" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                <node concept="3uibUv" id="6gadshXy9lJ" role="1pMfVU">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6gadshXy1QD" role="3cqZAp">
          <node concept="2GrKxI" id="6gadshXy1QF" role="2Gsz3X">
            <property role="TrG5h" value="file" />
          </node>
          <node concept="3clFbS" id="6gadshXy1QJ" role="2LFqv$">
            <node concept="3clFbJ" id="6gadshXrOGQ" role="3cqZAp">
              <node concept="2OqwBi" id="6gadshXrOGR" role="3clFbw">
                <node concept="Xjq3P" id="6gadshXrOGS" role="2Oq$k0" />
                <node concept="liA8E" id="6gadshXrOGT" role="2OqNvi">
                  <ref role="37wK5l" node="6gadshXrOAS" resolve="isIncluded" />
                  <node concept="2GrUjf" id="6gadshXym0C" role="37wK5m">
                    <ref role="2Gs0qQ" node="6gadshXy1QF" resolve="file" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6gadshXrOGW" role="3clFbx">
                <node concept="3clFbF" id="6gadshXrOGX" role="3cqZAp">
                  <node concept="2OqwBi" id="6gadshXrTrt" role="3clFbG">
                    <node concept="37vLTw" id="6gadshXrTrs" role="2Oq$k0">
                      <ref role="3cqZAo" node="6gadshXrOGv" resolve="affectedStreams" />
                    </node>
                    <node concept="liA8E" id="6gadshXrTru" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                      <node concept="1rXfSq" id="6gadshXrTrv" role="37wK5m">
                        <ref role="37wK5l" node="6gadshXzJ5m" resolve="getStreamName" />
                        <node concept="2GrUjf" id="6gadshXylK5" role="37wK5m">
                          <ref role="2Gs0qQ" node="6gadshXy1QF" resolve="file" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="6gadshXrOH1" role="3cqZAp" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6gadshXrSQ6" role="2GsD0m">
            <node concept="37vLTw" id="6gadshXrSQ5" role="2Oq$k0">
              <ref role="3cqZAo" node="6gadshXrOGr" resolve="event" />
            </node>
            <node concept="liA8E" id="6gadshXrSQ7" role="2OqNvi">
              <ref role="37wK5l" to="7nyy:~FileSystemEvent.getChanged()" resolve="getChanged" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6gadshXyaUc" role="3cqZAp">
          <node concept="2GrKxI" id="6gadshXyaUe" role="2Gsz3X">
            <property role="TrG5h" value="file" />
          </node>
          <node concept="3clFbS" id="6gadshXyaUi" role="2LFqv$">
            <node concept="3clFbJ" id="6gadshXrOHi" role="3cqZAp">
              <node concept="2OqwBi" id="6gadshXrOHj" role="3clFbw">
                <node concept="Xjq3P" id="6gadshXrOHk" role="2Oq$k0" />
                <node concept="liA8E" id="6gadshXrOHl" role="2OqNvi">
                  <ref role="37wK5l" node="6gadshXrOAS" resolve="isIncluded" />
                  <node concept="2GrUjf" id="6gadshXylVl" role="37wK5m">
                    <ref role="2Gs0qQ" node="6gadshXyaUe" resolve="file" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6gadshXrOHo" role="3clFbx">
                <node concept="3clFbF" id="6gadshXrOHp" role="3cqZAp">
                  <node concept="2OqwBi" id="6gadshXrTBi" role="3clFbG">
                    <node concept="37vLTw" id="6gadshXrTBh" role="2Oq$k0">
                      <ref role="3cqZAo" node="6gadshXrOGv" resolve="affectedStreams" />
                    </node>
                    <node concept="liA8E" id="6gadshXrTBj" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                      <node concept="1rXfSq" id="6gadshXrTBk" role="37wK5m">
                        <ref role="37wK5l" node="6gadshXzJ5m" resolve="getStreamName" />
                        <node concept="2GrUjf" id="6gadshXylFb" role="37wK5m">
                          <ref role="2Gs0qQ" node="6gadshXyaUe" resolve="file" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6gadshXrOHt" role="3cqZAp">
                  <node concept="37vLTI" id="6gadshXrOHu" role="3clFbG">
                    <node concept="2OqwBi" id="6gadshXrOHv" role="37vLTJ">
                      <node concept="Xjq3P" id="6gadshXrOHw" role="2Oq$k0" />
                      <node concept="2OwXpG" id="6gadshXrOHx" role="2OqNvi">
                        <ref role="2Oxat5" node="6gadshXrO_D" resolve="myLastAddRemove" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6gadshXrOHy" role="37vLTx">
                      <node concept="1eOMI4" id="6gadshXrOH$" role="2Oq$k0">
                        <node concept="2ShNRf" id="6gadshXrTkI" role="1eOMHV">
                          <node concept="1pGfFk" id="6gadshXrTkM" role="2ShVmc">
                            <ref role="37wK5l" to="33ny:~Date.&lt;init&gt;()" resolve="Date" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="6gadshXrOH_" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Date.getTime()" resolve="getTime" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="6gadshXrOHA" role="3cqZAp" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6gadshXrSOY" role="2GsD0m">
            <node concept="37vLTw" id="6gadshXrSOX" role="2Oq$k0">
              <ref role="3cqZAo" node="6gadshXrOGr" resolve="event" />
            </node>
            <node concept="liA8E" id="6gadshXrSOZ" role="2OqNvi">
              <ref role="37wK5l" to="7nyy:~FileSystemEvent.getCreated()" resolve="getCreated" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6gadshXyo_c" role="3cqZAp">
          <node concept="2GrKxI" id="6gadshXyo_e" role="2Gsz3X">
            <property role="TrG5h" value="file" />
          </node>
          <node concept="3clFbS" id="6gadshXyo_i" role="2LFqv$">
            <node concept="3clFbJ" id="6gadshXrOHR" role="3cqZAp">
              <node concept="2OqwBi" id="6gadshXrOHS" role="3clFbw">
                <node concept="Xjq3P" id="6gadshXrOHT" role="2Oq$k0" />
                <node concept="liA8E" id="6gadshXrOHU" role="2OqNvi">
                  <ref role="37wK5l" node="6gadshXrOAS" resolve="isIncluded" />
                  <node concept="2GrUjf" id="6gadshXytnY" role="37wK5m">
                    <ref role="2Gs0qQ" node="6gadshXyo_e" resolve="file" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6gadshXrOHX" role="3clFbx">
                <node concept="3clFbF" id="6gadshXrOHY" role="3cqZAp">
                  <node concept="2OqwBi" id="6gadshXrSBq" role="3clFbG">
                    <node concept="37vLTw" id="6gadshXrSBp" role="2Oq$k0">
                      <ref role="3cqZAo" node="6gadshXrOGv" resolve="affectedStreams" />
                    </node>
                    <node concept="liA8E" id="6gadshXrSBr" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                      <node concept="1rXfSq" id="6gadshXrSBs" role="37wK5m">
                        <ref role="37wK5l" node="6gadshXzJ5m" resolve="getStreamName" />
                        <node concept="2GrUjf" id="6gadshXyuiu" role="37wK5m">
                          <ref role="2Gs0qQ" node="6gadshXyo_e" resolve="file" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="6gadshXrOI2" role="3cqZAp">
                  <node concept="37vLTI" id="6gadshXrOI3" role="3clFbG">
                    <node concept="2OqwBi" id="6gadshXrOI4" role="37vLTJ">
                      <node concept="Xjq3P" id="6gadshXrOI5" role="2Oq$k0" />
                      <node concept="2OwXpG" id="6gadshXrOI6" role="2OqNvi">
                        <ref role="2Oxat5" node="6gadshXrO_D" resolve="myLastAddRemove" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6gadshXrOI7" role="37vLTx">
                      <node concept="1eOMI4" id="6gadshXrOI9" role="2Oq$k0">
                        <node concept="2ShNRf" id="6gadshXrTlL" role="1eOMHV">
                          <node concept="1pGfFk" id="6gadshXrTlP" role="2ShVmc">
                            <ref role="37wK5l" to="33ny:~Date.&lt;init&gt;()" resolve="Date" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="6gadshXrOIa" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Date.getTime()" resolve="getTime" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="6gadshXrOIb" role="3cqZAp" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6gadshXrTpg" role="2GsD0m">
            <node concept="37vLTw" id="6gadshXrTpf" role="2Oq$k0">
              <ref role="3cqZAo" node="6gadshXrOGr" resolve="event" />
            </node>
            <node concept="liA8E" id="6gadshXrTph" role="2OqNvi">
              <ref role="37wK5l" to="7nyy:~FileSystemEvent.getRemoved()" resolve="getRemoved" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gadshXrOId" role="3cqZAp">
          <node concept="2OqwBi" id="6gadshXrOIe" role="3clFbG">
            <node concept="Xjq3P" id="6gadshXrOIf" role="2Oq$k0" />
            <node concept="liA8E" id="6gadshXrOIg" role="2OqNvi">
              <ref role="37wK5l" node="6gadshXrOIl" resolve="fireChanged" />
              <node concept="37vLTw" id="6gadshXrOIh" role="37wK5m">
                <ref role="3cqZAo" node="6gadshXrOGo" resolve="monitor" />
              </node>
              <node concept="37vLTw" id="6gadshXrOIi" role="37wK5m">
                <ref role="3cqZAo" node="6gadshXrOGv" resolve="affectedStreams" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXrOIj" role="1B3o_S" />
      <node concept="3cqZAl" id="6gadshXrOIk" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6gadshXx3q2" role="jymVt" />
    <node concept="3clFb_" id="6gadshXrOIl" role="jymVt">
      <property role="TrG5h" value="fireChanged" />
      <node concept="37vLTG" id="6gadshXrOIm" role="3clF46">
        <property role="TrG5h" value="monitor" />
        <node concept="3uibUv" id="6gadshXsN5W" role="1tU5fm">
          <ref role="3uigEE" to="yyf4:~ProgressMonitor" resolve="ProgressMonitor" />
        </node>
      </node>
      <node concept="37vLTG" id="6gadshXrOIo" role="3clF46">
        <property role="TrG5h" value="streams" />
        <node concept="3uibUv" id="6gadshXrOIp" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="6gadshXrOIq" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
      </node>
      <node concept="3clFbS" id="6gadshXrOIr" role="3clF47">
        <node concept="3cpWs8" id="6gadshXrOIt" role="3cqZAp">
          <node concept="3cpWsn" id="6gadshXrOIs" role="3cpWs9">
            <property role="TrG5h" value="listeners" />
            <node concept="3uibUv" id="6gadshXrOIu" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~ArrayList" resolve="ArrayList" />
              <node concept="3uibUv" id="6gadshXyMeW" role="11_B2D">
                <ref role="3uigEE" to="dush:~DataSourceListener" resolve="DataSourceListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1HWtB8" id="6gadshXrOIv" role="3cqZAp">
          <node concept="2OqwBi" id="6gadshXrOID" role="1HWFw0">
            <node concept="Xjq3P" id="6gadshXrOIE" role="2Oq$k0" />
            <node concept="2OwXpG" id="6gadshXrOIF" role="2OqNvi">
              <ref role="2Oxat5" node="6gadshXrO_m" resolve="LOCK" />
            </node>
          </node>
          <node concept="3clFbS" id="6gadshXrOIx" role="1HWHxc">
            <node concept="3clFbF" id="6gadshXrOIy" role="3cqZAp">
              <node concept="37vLTI" id="6gadshXrOIz" role="3clFbG">
                <node concept="37vLTw" id="6gadshXrOI$" role="37vLTJ">
                  <ref role="3cqZAo" node="6gadshXrOIs" resolve="listeners" />
                </node>
                <node concept="2ShNRf" id="6gadshXrT65" role="37vLTx">
                  <node concept="1pGfFk" id="6gadshXrTk_" role="2ShVmc">
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;(java.util.Collection)" resolve="ArrayList" />
                    <node concept="2OqwBi" id="6gadshXrTkA" role="37wK5m">
                      <node concept="Xjq3P" id="6gadshXrTkB" role="2Oq$k0" />
                      <node concept="2OwXpG" id="6gadshXrTkC" role="2OqNvi">
                        <ref role="2Oxat5" node="6gadshXrO_q" resolve="myListeners" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="6gadshXywHK" role="1pMfVU">
                      <ref role="3uigEE" to="dush:~DataSourceListener" resolve="DataSourceListener" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gadshXrOIG" role="3cqZAp">
          <node concept="2OqwBi" id="6gadshXrV1w" role="3clFbG">
            <node concept="37vLTw" id="6gadshXrV1v" role="2Oq$k0">
              <ref role="3cqZAo" node="6gadshXrOIm" resolve="monitor" />
            </node>
            <node concept="liA8E" id="6gadshXrV1x" role="2OqNvi">
              <ref role="37wK5l" to="yyf4:~ProgressMonitor.start(java.lang.String,int)" resolve="start" />
              <node concept="Xl_RD" id="6gadshXrV1y" role="37wK5m">
                <property role="Xl_RC" value="Reloading" />
              </node>
              <node concept="2OqwBi" id="6gadshXrV1z" role="37wK5m">
                <node concept="37vLTw" id="6gadshXrV1$" role="2Oq$k0">
                  <ref role="3cqZAo" node="6gadshXrOIs" resolve="listeners" />
                </node>
                <node concept="liA8E" id="6gadshXrV1_" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~ArrayList.size()" resolve="size" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="6gadshXrOJr" role="3cqZAp">
          <node concept="1wplmZ" id="6gadshXrOJs" role="1zxBo6">
            <node concept="3clFbS" id="6gadshXrOJo" role="1wplMD">
              <node concept="3clFbF" id="6gadshXrOJp" role="3cqZAp">
                <node concept="2OqwBi" id="6gadshXrTM0" role="3clFbG">
                  <node concept="37vLTw" id="6gadshXrTLZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="6gadshXrOIm" resolve="monitor" />
                  </node>
                  <node concept="liA8E" id="6gadshXrTM1" role="2OqNvi">
                    <ref role="37wK5l" to="yyf4:~ProgressMonitor.done()" resolve="done" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6gadshXrOIL" role="1zxBo7">
            <node concept="2Gpval" id="6gadshXy$kC" role="3cqZAp">
              <node concept="2GrKxI" id="6gadshXy$kE" role="2Gsz3X">
                <property role="TrG5h" value="l" />
              </node>
              <node concept="37vLTw" id="6gadshXy$xD" role="2GsD0m">
                <ref role="3cqZAo" node="6gadshXrOIs" resolve="listeners" />
              </node>
              <node concept="3clFbS" id="6gadshXy$kI" role="2LFqv$">
                <node concept="3clFbF" id="6gadshXy_LC" role="3cqZAp">
                  <node concept="2OqwBi" id="6gadshXy_ZC" role="3clFbG">
                    <node concept="37vLTw" id="6gadshXy_LA" role="2Oq$k0">
                      <ref role="3cqZAo" node="6gadshXrOIm" resolve="monitor" />
                    </node>
                    <node concept="liA8E" id="6gadshXyAaM" role="2OqNvi">
                      <ref role="37wK5l" to="yyf4:~ProgressMonitor.advance(int)" resolve="advance" />
                      <node concept="3cmrfG" id="6gadshXyAgs" role="37wK5m">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6gadshXrOJ3" role="3cqZAp">
                  <node concept="2ZW3vV" id="6gadshXrOJ6" role="3clFbw">
                    <node concept="2GrUjf" id="6gadshXyApG" role="2ZW6bz">
                      <ref role="2Gs0qQ" node="6gadshXy$kE" resolve="l" />
                    </node>
                    <node concept="3uibUv" id="6gadshXrOJ5" role="2ZW6by">
                      <ref role="3uigEE" to="dush:~MultiStreamDataSourceListener" resolve="MultiStreamDataSourceListener" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="6gadshXrOJi" role="9aQIa">
                    <node concept="3clFbS" id="6gadshXrOJj" role="9aQI4">
                      <node concept="3clFbF" id="6gadshXrOJk" role="3cqZAp">
                        <node concept="2OqwBi" id="6gadshXrTqo" role="3clFbG">
                          <node concept="2GrUjf" id="6gadshXyAKl" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="6gadshXy$kE" resolve="l" />
                          </node>
                          <node concept="liA8E" id="6gadshXrTqp" role="2OqNvi">
                            <ref role="37wK5l" to="dush:~DataSourceListener.changed(org.jetbrains.mps.openapi.persistence.DataSource)" resolve="changed" />
                            <node concept="Xjq3P" id="6gadshXrTqq" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="6gadshXrOJ8" role="3clFbx">
                    <node concept="3clFbF" id="6gadshXrOJ9" role="3cqZAp">
                      <node concept="2OqwBi" id="6gadshXrOJa" role="3clFbG">
                        <node concept="1eOMI4" id="6gadshXrOJe" role="2Oq$k0">
                          <node concept="10QFUN" id="6gadshXrOJb" role="1eOMHV">
                            <node concept="2GrUjf" id="6gadshXyAAy" role="10QFUP">
                              <ref role="2Gs0qQ" node="6gadshXy$kE" resolve="l" />
                            </node>
                            <node concept="3uibUv" id="6gadshXrOJd" role="10QFUM">
                              <ref role="3uigEE" to="dush:~MultiStreamDataSourceListener" resolve="MultiStreamDataSourceListener" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6gadshXrOJf" role="2OqNvi">
                          <ref role="37wK5l" to="dush:~MultiStreamDataSourceListener.changed(org.jetbrains.mps.openapi.persistence.DataSource,java.lang.Iterable)" resolve="changed" />
                          <node concept="Xjq3P" id="6gadshXrOJg" role="37wK5m" />
                          <node concept="37vLTw" id="6gadshXrOJh" role="37wK5m">
                            <ref role="3cqZAo" node="6gadshXrOIo" resolve="streams" />
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
      <node concept="3Tm6S6" id="6gadshXrOJt" role="1B3o_S" />
      <node concept="3cqZAl" id="6gadshXrOJu" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6gadshXx012" role="jymVt" />
    <node concept="3clFb_" id="6gadshXrOJv" role="jymVt">
      <property role="TrG5h" value="exists" />
      <node concept="3clFbS" id="6gadshXrOJw" role="3clF47">
        <node concept="3cpWs6" id="6gadshXrOJx" role="3cqZAp">
          <node concept="2OqwBi" id="6gadshXrOJy" role="3cqZAk">
            <node concept="2OqwBi" id="6gadshXrOJ_" role="2Oq$k0">
              <node concept="Xjq3P" id="6gadshXrOJA" role="2Oq$k0" />
              <node concept="liA8E" id="6gadshXrOJB" role="2OqNvi">
                <ref role="37wK5l" node="6gadshXrOBZ" resolve="getSubStreams" />
              </node>
            </node>
            <node concept="liA8E" id="6gadshXrOJE" role="2OqNvi">
              <ref role="37wK5l" to="1ctc:~Stream.anyMatch(java.util.function.Predicate)" resolve="anyMatch" />
              <node concept="1bVj0M" id="6gadshX_3Vb" role="37wK5m">
                <node concept="3clFbS" id="6gadshX_3Vc" role="1bW5cS">
                  <node concept="3clFbF" id="6gadshX_d8K" role="3cqZAp">
                    <node concept="2OqwBi" id="6gadshX_syh" role="3clFbG">
                      <node concept="0kSF2" id="6gadshX_fKq" role="2Oq$k0">
                        <node concept="3uibUv" id="6gadshX_iQC" role="0kSFW">
                          <ref role="3uigEE" to="ends:~FileSystemBasedDataSource" resolve="FileSystemBasedDataSource" />
                        </node>
                        <node concept="37vLTw" id="6gadshX_d8J" role="0kSFX">
                          <ref role="3cqZAo" node="6gadshX_7g5" resolve="source" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6gadshX_vHr" role="2OqNvi">
                        <ref role="37wK5l" to="ends:~FileSystemBasedDataSource.exists()" resolve="exists" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTG" id="6gadshX_7g5" role="1bW2Oz">
                  <property role="TrG5h" value="source" />
                  <node concept="3uibUv" id="6gadshX_7g4" role="1tU5fm">
                    <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXrOJF" role="1B3o_S" />
      <node concept="10P_77" id="6gadshXrOJG" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6gadshXwXAd" role="jymVt" />
    <node concept="3clFb_" id="6gadshXrOJH" role="jymVt">
      <property role="TrG5h" value="physicalCopy" />
      <node concept="2AHcQZ" id="6gadshXrOJI" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="37vLTG" id="6gadshXrOJJ" role="3clF46">
        <property role="TrG5h" value="parentFolder" />
        <node concept="2AHcQZ" id="6gadshXrOJK" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXrOJL" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="3clFbS" id="6gadshXrOJM" role="3clF47">
        <node concept="3cpWs8" id="6gadshXrOJO" role="3cqZAp">
          <node concept="3cpWsn" id="6gadshXrOJN" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="3uibUv" id="6gadshXrOJP" role="1tU5fm">
              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
            </node>
            <node concept="2OqwBi" id="6gadshXrOJQ" role="33vP2m">
              <node concept="2OqwBi" id="6gadshXrOJR" role="2Oq$k0">
                <node concept="Xjq3P" id="6gadshXrOJS" role="2Oq$k0" />
                <node concept="2OwXpG" id="6gadshXrOJT" role="2OqNvi">
                  <ref role="2Oxat5" node="6gadshXrO_$" resolve="myFolder" />
                </node>
              </node>
              <node concept="liA8E" id="6gadshXrOJU" role="2OqNvi">
                <ref role="37wK5l" to="3ju5:~IFile.copy(jetbrains.mps.vfs.IFile)" resolve="copy" />
                <node concept="37vLTw" id="6gadshXrOJV" role="37wK5m">
                  <ref role="3cqZAo" node="6gadshXrOJJ" resolve="parentFolder" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6gadshXrOJW" role="3cqZAp">
          <node concept="3K4zz7" id="6gadshXrOK8" role="3cqZAk">
            <node concept="3y3z36" id="6gadshXrOJX" role="3K4Cdx">
              <node concept="37vLTw" id="6gadshXrOJY" role="3uHU7B">
                <ref role="3cqZAo" node="6gadshXrOJN" resolve="res" />
              </node>
              <node concept="10Nm6u" id="6gadshXrOJZ" role="3uHU7w" />
            </node>
            <node concept="2ShNRf" id="6gadshXrUib" role="3K4E3e">
              <node concept="1pGfFk" id="6gadshXrUiq" role="2ShVmc">
                <ref role="37wK5l" to="ends:~FileDataSource.&lt;init&gt;(jetbrains.mps.vfs.IFile)" resolve="FileDataSource" />
                <node concept="2OqwBi" id="6gadshXrYY4" role="37wK5m">
                  <node concept="37vLTw" id="6gadshXrYY3" role="2Oq$k0">
                    <ref role="3cqZAo" node="6gadshXrOJJ" resolve="parentFolder" />
                  </node>
                  <node concept="liA8E" id="6gadshXrYY5" role="2OqNvi">
                    <ref role="37wK5l" to="3ju5:~IFile.findChild(java.lang.String)" resolve="findChild" />
                    <node concept="2OqwBi" id="6gadshXrYY6" role="37wK5m">
                      <node concept="2OqwBi" id="6gadshXrYY7" role="2Oq$k0">
                        <node concept="Xjq3P" id="6gadshXrYY8" role="2Oq$k0" />
                        <node concept="2OwXpG" id="6gadshXrYY9" role="2OqNvi">
                          <ref role="2Oxat5" node="6gadshXrO_$" resolve="myFolder" />
                        </node>
                      </node>
                      <node concept="liA8E" id="6gadshXrYYa" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="10Nm6u" id="6gadshXrOK7" role="3K4GZi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXrOK9" role="1B3o_S" />
      <node concept="3uibUv" id="6gadshXrOKa" role="3clF45">
        <ref role="3uigEE" to="ends:~FileSystemBasedDataSource" resolve="FileSystemBasedDataSource" />
      </node>
    </node>
    <node concept="2tJIrI" id="6gadshXwUk1" role="jymVt" />
    <node concept="3clFb_" id="6gadshXrOKb" role="jymVt">
      <property role="TrG5h" value="getAffectedFiles" />
      <node concept="2AHcQZ" id="6gadshXrOKc" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="6gadshXrOKd" role="3clF47">
        <node concept="3cpWs6" id="6gadshXrOKe" role="3cqZAp">
          <node concept="2YIFZM" id="6gadshXrTmP" role="3cqZAk">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
            <node concept="2OqwBi" id="6gadshXrTmQ" role="37wK5m">
              <node concept="Xjq3P" id="6gadshXrTmR" role="2Oq$k0" />
              <node concept="2OwXpG" id="6gadshXrTmS" role="2OqNvi">
                <ref role="2Oxat5" node="6gadshXrO_$" resolve="myFolder" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXrOKj" role="1B3o_S" />
      <node concept="3uibUv" id="6gadshXrOKk" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="6gadshXrOKl" role="11_B2D">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6gadshXwQV4" role="jymVt" />
    <node concept="3clFb_" id="6gadshXrOKm" role="jymVt">
      <property role="TrG5h" value="getType" />
      <node concept="2AHcQZ" id="6gadshXrOKn" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="6gadshXrOKo" role="3clF47">
        <node concept="3cpWs6" id="6gadshXrOKp" role="3cqZAp">
          <node concept="37vLTw" id="1i2Kke0QA0K" role="3cqZAk">
            <ref role="3cqZAo" node="6gadshXAvB6" resolve="TYPE" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXrOKr" role="1B3o_S" />
      <node concept="3uibUv" id="6gadshXrOKs" role="3clF45">
        <ref role="3uigEE" to="bxo2:~DataSourceType" resolve="DataSourceType" />
      </node>
    </node>
    <node concept="2tJIrI" id="1MMhnIwLTOu" role="jymVt" />
    <node concept="312cEu" id="1MMhnIwM16s" role="jymVt">
      <property role="1EXbeo" value="true" />
      <property role="TrG5h" value="DescendantFileDataSource" />
      <node concept="2tJIrI" id="1MMhnIwM7Un" role="jymVt" />
      <node concept="312cEg" id="1MMhnIwMdF3" role="jymVt">
        <property role="TrG5h" value="myBaseFolder" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="1MMhnIwMcA6" role="1B3o_S" />
        <node concept="3uibUv" id="1MMhnIwMd1g" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="2tJIrI" id="1MMhnIwMc8G" role="jymVt" />
      <node concept="3Tm6S6" id="1MMhnIwLXjR" role="1B3o_S" />
      <node concept="3uibUv" id="1MMhnIwM7rC" role="1zkMxy">
        <ref role="3uigEE" to="ends:~FileDataSource" resolve="FileDataSource" />
      </node>
      <node concept="3clFbW" id="1MMhnIwM8m4" role="jymVt">
        <node concept="3cqZAl" id="1MMhnIwM8m5" role="3clF45" />
        <node concept="3Tm1VV" id="1MMhnIwM8m6" role="1B3o_S" />
        <node concept="3clFbS" id="1MMhnIwM8m8" role="3clF47">
          <node concept="XkiVB" id="1MMhnIwM8ma" role="3cqZAp">
            <ref role="37wK5l" to="ends:~FileDataSource.&lt;init&gt;(jetbrains.mps.vfs.IFile)" resolve="FileDataSource" />
            <node concept="37vLTw" id="1MMhnIwM8mf" role="37wK5m">
              <ref role="3cqZAo" node="1MMhnIwM8mb" resolve="file" />
            </node>
          </node>
          <node concept="3clFbF" id="1MMhnIwMemR" role="3cqZAp">
            <node concept="37vLTI" id="1MMhnIwMetK" role="3clFbG">
              <node concept="37vLTw" id="1MMhnIwMewU" role="37vLTx">
                <ref role="3cqZAo" node="1MMhnIwM99h" resolve="baseFolder" />
              </node>
              <node concept="37vLTw" id="1MMhnIwMemP" role="37vLTJ">
                <ref role="3cqZAo" node="1MMhnIwMdF3" resolve="myBaseFolder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1MMhnIwM8mb" role="3clF46">
          <property role="TrG5h" value="file" />
          <node concept="3uibUv" id="1MMhnIwM8md" role="1tU5fm">
            <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
          </node>
          <node concept="2AHcQZ" id="1MMhnIwM8me" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="37vLTG" id="1MMhnIwM99h" role="3clF46">
          <property role="TrG5h" value="baseFolder" />
          <node concept="3uibUv" id="1MMhnIwM9du" role="1tU5fm">
            <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
          </node>
          <node concept="2AHcQZ" id="1MMhnIwM9U_" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1MMhnIwMaRJ" role="jymVt" />
      <node concept="3clFb_" id="1MMhnIwMbjZ" role="jymVt">
        <property role="TrG5h" value="getStreamName" />
        <node concept="3Tm1VV" id="1MMhnIwMbk0" role="1B3o_S" />
        <node concept="2AHcQZ" id="1MMhnIwMbk2" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="1MMhnIwMbk3" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="3clFbS" id="1MMhnIwMbk4" role="3clF47">
          <node concept="3clFbF" id="1MMhnIwMP10" role="3cqZAp">
            <node concept="2YIFZM" id="1MMhnIwMNB8" role="3clFbG">
              <ref role="1Pybhc" to="snbe:~FileUtil" resolve="FileUtil" />
              <ref role="37wK5l" to="snbe:~FileUtil.getRelativePath(java.lang.String,java.lang.String,char)" resolve="getRelativePath" />
              <node concept="2OqwBi" id="1MMhnIwMNB9" role="37wK5m">
                <node concept="37vLTw" id="1MMhnIwMNBa" role="2Oq$k0">
                  <ref role="3cqZAo" node="1MMhnIwMdF3" resolve="myBaseFolder" />
                </node>
                <node concept="liA8E" id="1MMhnIwMNBb" role="2OqNvi">
                  <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                </node>
              </node>
              <node concept="2OqwBi" id="1MMhnIwMNBc" role="37wK5m">
                <node concept="1rXfSq" id="1MMhnIwMNBd" role="2Oq$k0">
                  <ref role="37wK5l" to="ends:~FileDataSource.getFile()" resolve="getFile" />
                </node>
                <node concept="liA8E" id="1MMhnIwMNBe" role="2OqNvi">
                  <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                </node>
              </node>
              <node concept="1Xhbcc" id="1MMhnIwMNBf" role="37wK5m">
                <property role="1XhdNS" value="/" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1MMhnIwMbk5" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6QINgo4RfpD" role="jymVt" />
      <node concept="3clFb_" id="6QINgo4RtSS" role="jymVt">
        <property role="TrG5h" value="equals" />
        <node concept="10P_77" id="6QINgo4RtST" role="3clF45" />
        <node concept="3Tm1VV" id="6QINgo4RtSU" role="1B3o_S" />
        <node concept="3clFbS" id="6QINgo4RtSV" role="3clF47">
          <node concept="3clFbJ" id="6QINgo4RtSW" role="3cqZAp">
            <node concept="3clFbS" id="6QINgo4RtSX" role="3clFbx">
              <node concept="3cpWs6" id="6QINgo4RtSY" role="3cqZAp">
                <node concept="3clFbT" id="6QINgo4RtSZ" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="6QINgo4RtT0" role="3clFbw">
              <node concept="Xjq3P" id="6QINgo4RtSR" role="3uHU7B" />
              <node concept="37vLTw" id="6QINgo4RtT1" role="3uHU7w">
                <ref role="3cqZAo" node="6QINgo4RtTo" resolve="o" />
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6QINgo4RtT2" role="3cqZAp">
            <node concept="3clFbS" id="6QINgo4RtT3" role="3clFbx">
              <node concept="3cpWs6" id="6QINgo4RtT4" role="3cqZAp">
                <node concept="3clFbT" id="6QINgo4RtT5" role="3cqZAk">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
            <node concept="22lmx$" id="6QINgo4RtT6" role="3clFbw">
              <node concept="3clFbC" id="6QINgo4RtT7" role="3uHU7B">
                <node concept="37vLTw" id="6QINgo4RtT8" role="3uHU7B">
                  <ref role="3cqZAo" node="6QINgo4RtTo" resolve="o" />
                </node>
                <node concept="10Nm6u" id="6QINgo4RtT9" role="3uHU7w" />
              </node>
              <node concept="3y3z36" id="6QINgo4RtTa" role="3uHU7w">
                <node concept="2OqwBi" id="6QINgo4RtTb" role="3uHU7B">
                  <node concept="Xjq3P" id="6QINgo4RtTc" role="2Oq$k0" />
                  <node concept="liA8E" id="6QINgo4RtTd" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6QINgo4RtTe" role="3uHU7w">
                  <node concept="37vLTw" id="6QINgo4RtTf" role="2Oq$k0">
                    <ref role="3cqZAo" node="6QINgo4RtTo" resolve="o" />
                  </node>
                  <node concept="liA8E" id="6QINgo4RtTg" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Object.getClass()" resolve="getClass" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6QINgo4RtTh" role="3cqZAp" />
          <node concept="3cpWs8" id="6QINgo4RtTi" role="3cqZAp">
            <node concept="3cpWsn" id="6QINgo4RtTj" role="3cpWs9">
              <property role="TrG5h" value="that" />
              <node concept="3uibUv" id="6QINgo4RtTk" role="1tU5fm">
                <ref role="3uigEE" node="1MMhnIwM16s" resolve="RecursiveFolderDataSource.DescendantFileDataSource" />
              </node>
              <node concept="10QFUN" id="6QINgo4RtTl" role="33vP2m">
                <node concept="3uibUv" id="6QINgo4RtTm" role="10QFUM">
                  <ref role="3uigEE" node="1MMhnIwM16s" resolve="RecursiveFolderDataSource.DescendantFileDataSource" />
                </node>
                <node concept="37vLTw" id="6QINgo4RtTn" role="10QFUP">
                  <ref role="3cqZAo" node="6QINgo4RtTo" resolve="o" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6QINgo4RF4G" role="3cqZAp">
            <node concept="17R0WA" id="6QINgo4RHVS" role="3clFbG">
              <node concept="2OqwBi" id="6QINgo4RJ51" role="3uHU7w">
                <node concept="37vLTw" id="6QINgo4RICp" role="2Oq$k0">
                  <ref role="3cqZAo" node="6QINgo4RtTj" resolve="that" />
                </node>
                <node concept="liA8E" id="6QINgo4RJC_" role="2OqNvi">
                  <ref role="37wK5l" to="ends:~FileDataSource.getFile()" resolve="getFile" />
                </node>
              </node>
              <node concept="1rXfSq" id="6QINgo4RF4E" role="3uHU7B">
                <ref role="37wK5l" to="ends:~FileDataSource.getFile()" resolve="getFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="6QINgo4RtTo" role="3clF46">
          <property role="TrG5h" value="o" />
          <node concept="3uibUv" id="6QINgo4RtTp" role="1tU5fm">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="2AHcQZ" id="6QINgo4RtTq" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="6QINgo4S8e1" role="jymVt" />
      <node concept="3clFb_" id="6QINgo4RtTO" role="jymVt">
        <property role="TrG5h" value="hashCode" />
        <node concept="10Oyi0" id="6QINgo4RtTP" role="3clF45" />
        <node concept="3Tm1VV" id="6QINgo4RtTQ" role="1B3o_S" />
        <node concept="3clFbS" id="6QINgo4RtTR" role="3clF47">
          <node concept="3cpWs6" id="6QINgo4RK1E" role="3cqZAp">
            <node concept="2OqwBi" id="6QINgo4RMbx" role="3cqZAk">
              <node concept="1rXfSq" id="6QINgo4RK4s" role="2Oq$k0">
                <ref role="37wK5l" to="ends:~FileDataSource.getFile()" resolve="getFile" />
              </node>
              <node concept="liA8E" id="6QINgo4S0Oz" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~Object.hashCode()" resolve="hashCode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="6QINgo4RtTS" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="6gadshXrOh6" role="1B3o_S" />
    <node concept="3uibUv" id="6gadshXrOoq" role="1zkMxy">
      <ref role="3uigEE" to="ends:~DataSourceBase" resolve="DataSourceBase" />
    </node>
    <node concept="3uibUv" id="6gadshXsh1W" role="EKbjA">
      <ref role="3uigEE" to="dush:~MultiStreamDataSource" resolve="MultiStreamDataSource" />
    </node>
    <node concept="3uibUv" id="6gadshXsjCG" role="EKbjA">
      <ref role="3uigEE" to="7nyy:~FileSystemListener" resolve="FileSystemListener" />
    </node>
    <node concept="3uibUv" id="6gadshXsy$k" role="EKbjA">
      <ref role="3uigEE" to="ends:~FileSystemBasedDataSource" resolve="FileSystemBasedDataSource" />
    </node>
  </node>
  <node concept="312cEu" id="6gadshXBR2S">
    <property role="TrG5h" value="CustomPersistenceModelWithHeader0" />
    <property role="2bfB8j" value="true" />
    <node concept="2tJIrI" id="6gadshXDc8Q" role="jymVt" />
    <node concept="3Tm1VV" id="6gadshXBR2T" role="1B3o_S" />
    <node concept="3uibUv" id="6gadshXBR3I" role="1zkMxy">
      <ref role="3uigEE" to="g3l6:~EditableSModelBase" resolve="EditableSModelBase" />
    </node>
    <node concept="312cEg" id="6gadshXBR3J" role="jymVt">
      <property role="TrG5h" value="myLoadFacility" />
      <property role="3TUv4t" value="true" />
      <node concept="2AHcQZ" id="6gadshXBR3L" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="6gadshXBR3M" role="1tU5fm">
        <ref role="3uigEE" to="g3l6:~CustomPersistenceLoadFacility" resolve="CustomPersistenceLoadFacility" />
      </node>
      <node concept="3Tm6S6" id="6gadshXBR3N" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6gadshXBR3O" role="jymVt">
      <property role="34CwA1" value="true" />
      <property role="TrG5h" value="myInternalModelData" />
      <node concept="3uibUv" id="6gadshXC2ZD" role="1tU5fm">
        <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
      </node>
      <node concept="10Nm6u" id="6gadshXBR3R" role="33vP2m" />
      <node concept="3Tm6S6" id="6gadshXBR3S" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6gadshXBR3T" role="jymVt">
      <property role="TrG5h" value="myProblems" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6gadshXBR3V" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="6gadshXBR3W" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModel$Problem" resolve="SModel.Problem" />
        </node>
      </node>
      <node concept="2ShNRf" id="6gadshXBVH_" role="33vP2m">
        <node concept="1pGfFk" id="6gadshXBVHE" role="2ShVmc">
          <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
          <node concept="3uibUv" id="6gadshXCQEm" role="1pMfVU">
            <ref role="3uigEE" to="mhbf:~SModel$Problem" resolve="SModel.Problem" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6gadshXBR3Y" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6gadshXBR3Z" role="jymVt">
      <property role="TrG5h" value="myHeader" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6gadshXBR41" role="1tU5fm">
        <ref role="3uigEE" to="g3l6:~SModelSimpleHeader" resolve="SModelSimpleHeader" />
      </node>
      <node concept="3Tm6S6" id="6gadshXBR42" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="6gadshXBR43" role="jymVt">
      <property role="TrG5h" value="myLoadLock" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6gadshXBR45" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
      </node>
      <node concept="2ShNRf" id="6gadshXBV6c" role="33vP2m">
        <node concept="1pGfFk" id="6gadshXBV6d" role="2ShVmc">
          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
        </node>
      </node>
      <node concept="3Tmbuc" id="6gadshXBR47" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6gadshXCNFM" role="jymVt" />
    <node concept="3clFbW" id="6gadshXBR48" role="jymVt">
      <node concept="3cqZAl" id="6gadshXBR49" role="3clF45" />
      <node concept="37vLTG" id="6gadshXBR4a" role="3clF46">
        <property role="TrG5h" value="header" />
        <node concept="2AHcQZ" id="6gadshXBR4b" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXBR4c" role="1tU5fm">
          <ref role="3uigEE" to="g3l6:~SModelSimpleHeader" resolve="SModelSimpleHeader" />
        </node>
      </node>
      <node concept="37vLTG" id="6gadshXBR4d" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="2AHcQZ" id="6gadshXBR4e" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXD8nl" role="1tU5fm">
          <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
        </node>
      </node>
      <node concept="37vLTG" id="6gadshXBR4g" role="3clF46">
        <property role="TrG5h" value="loadFacility" />
        <node concept="2AHcQZ" id="6gadshXBR4h" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXBR4i" role="1tU5fm">
          <ref role="3uigEE" to="g3l6:~CustomPersistenceLoadFacility" resolve="CustomPersistenceLoadFacility" />
        </node>
      </node>
      <node concept="3clFbS" id="6gadshXBR4j" role="3clF47">
        <node concept="XkiVB" id="6gadshXBV3L" role="3cqZAp">
          <ref role="37wK5l" to="g3l6:~EditableSModelBase.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference,org.jetbrains.mps.openapi.persistence.DataSource)" resolve="EditableSModelBase" />
          <node concept="2OqwBi" id="6gadshXBZ7O" role="37wK5m">
            <node concept="37vLTw" id="6gadshXBZ7N" role="2Oq$k0">
              <ref role="3cqZAo" node="6gadshXBR4a" resolve="header" />
            </node>
            <node concept="liA8E" id="6gadshXBZ7P" role="2OqNvi">
              <ref role="37wK5l" to="g3l6:~SModelSimpleHeader.getModelReference()" resolve="getModelReference" />
            </node>
          </node>
          <node concept="37vLTw" id="6gadshXBV3N" role="37wK5m">
            <ref role="3cqZAo" node="6gadshXBR4d" resolve="source" />
          </node>
        </node>
        <node concept="3clFbF" id="6gadshXBR4k" role="3cqZAp">
          <node concept="37vLTI" id="6gadshXBR4l" role="3clFbG">
            <node concept="37vLTw" id="6gadshXBR4m" role="37vLTJ">
              <ref role="3cqZAo" node="6gadshXBR3Z" resolve="myHeader" />
            </node>
            <node concept="37vLTw" id="6gadshXBR4n" role="37vLTx">
              <ref role="3cqZAo" node="6gadshXBR4a" resolve="header" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gadshXBR4o" role="3cqZAp">
          <node concept="37vLTI" id="6gadshXBR4p" role="3clFbG">
            <node concept="37vLTw" id="6gadshXBR4q" role="37vLTJ">
              <ref role="3cqZAo" node="6gadshXBR3J" resolve="myLoadFacility" />
            </node>
            <node concept="37vLTw" id="6gadshXBR4r" role="37vLTx">
              <ref role="3cqZAo" node="6gadshXBR4g" resolve="loadFacility" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXLGrA" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6gadshXCMbR" role="jymVt" />
    <node concept="2YIFZL" id="6gadshXBR4w" role="jymVt">
      <property role="TrG5h" value="readHeaderAndCreate" />
      <node concept="2AHcQZ" id="6gadshXBR4x" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="37vLTG" id="6gadshXBR4y" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="2AHcQZ" id="6gadshXBR4z" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXDye7" role="1tU5fm">
          <ref role="3uigEE" to="dush:~DataSource" resolve="DataSource" />
        </node>
      </node>
      <node concept="37vLTG" id="6gadshXBR4_" role="3clF46">
        <property role="TrG5h" value="facility" />
        <node concept="2AHcQZ" id="6gadshXBR4A" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXBR4B" role="1tU5fm">
          <ref role="3uigEE" to="g3l6:~CustomPersistenceLoadFacility" resolve="CustomPersistenceLoadFacility" />
        </node>
      </node>
      <node concept="3uibUv" id="6gadshXBR4C" role="Sfmx6">
        <ref role="3uigEE" to="dush:~ModelLoadException" resolve="ModelLoadException" />
      </node>
      <node concept="3clFbS" id="6gadshXBR4D" role="3clF47">
        <node concept="3cpWs8" id="6gadshXBR4F" role="3cqZAp">
          <node concept="3cpWsn" id="6gadshXBR4E" role="3cpWs9">
            <property role="TrG5h" value="header" />
            <node concept="3uibUv" id="6gadshXBR4G" role="1tU5fm">
              <ref role="3uigEE" to="g3l6:~SModelSimpleHeader" resolve="SModelSimpleHeader" />
            </node>
            <node concept="2OqwBi" id="6gadshXBVzQ" role="33vP2m">
              <node concept="37vLTw" id="6gadshXBVzP" role="2Oq$k0">
                <ref role="3cqZAo" node="6gadshXBR4_" resolve="facility" />
              </node>
              <node concept="liA8E" id="6gadshXBVzR" role="2OqNvi">
                <ref role="37wK5l" to="g3l6:~CustomPersistenceLoadFacility.readHeader()" resolve="readHeader" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6gadshXBR4I" role="3cqZAp">
          <node concept="2ShNRf" id="6gadshXBUY8" role="3cqZAk">
            <node concept="1pGfFk" id="6gadshXBUYl" role="2ShVmc">
              <ref role="37wK5l" node="6gadshXBR48" resolve="CustomPersistenceModelWithHeader0" />
              <node concept="37vLTw" id="6gadshXBUYm" role="37wK5m">
                <ref role="3cqZAo" node="6gadshXBR4E" resolve="header" />
              </node>
              <node concept="37vLTw" id="6gadshXBUYn" role="37wK5m">
                <ref role="3cqZAo" node="6gadshXBR4y" resolve="source" />
              </node>
              <node concept="37vLTw" id="6gadshXBUYo" role="37wK5m">
                <ref role="3cqZAo" node="6gadshXBR4_" resolve="facility" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXBR4N" role="1B3o_S" />
      <node concept="3uibUv" id="6gadshXBR4O" role="3clF45">
        <ref role="3uigEE" node="6gadshXBR2S" resolve="CustomPersistenceModelWithHeader0" />
      </node>
    </node>
    <node concept="2tJIrI" id="6gadshXCKId" role="jymVt" />
    <node concept="3clFb_" id="6gadshXCIaI" role="jymVt">
      <property role="TrG5h" value="initializeWithModelData" />
      <node concept="37vLTG" id="6gadshXCIaJ" role="3clF46">
        <property role="TrG5h" value="modelData" />
        <node concept="2AHcQZ" id="6gadshXCIaK" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="6gadshXCKo7" role="1tU5fm">
          <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
        </node>
      </node>
      <node concept="3clFbS" id="6gadshXCIaM" role="3clF47">
        <node concept="3cpWs8" id="6gadshXCIaO" role="3cqZAp">
          <node concept="3cpWsn" id="6gadshXCIaN" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="oldState" />
            <node concept="3uibUv" id="6gadshXCIaP" role="1tU5fm">
              <ref role="3uigEE" to="4it6:~ModelLoadingState" resolve="ModelLoadingState" />
            </node>
          </node>
        </node>
        <node concept="1HWtB8" id="6gadshXCIaQ" role="3cqZAp">
          <node concept="37vLTw" id="6gadshXCIb8" role="1HWFw0">
            <ref role="3cqZAo" node="6gadshXBR43" resolve="myLoadLock" />
          </node>
          <node concept="3clFbS" id="6gadshXCIaS" role="1HWHxc">
            <node concept="3clFbF" id="6gadshXCIaT" role="3cqZAp">
              <node concept="37vLTI" id="6gadshXCIaU" role="3clFbG">
                <node concept="37vLTw" id="6gadshXCIaV" role="37vLTJ">
                  <ref role="3cqZAo" node="6gadshXCIaN" resolve="oldState" />
                </node>
                <node concept="1rXfSq" id="6gadshXCIaW" role="37vLTx">
                  <ref role="37wK5l" to="g3l6:~SModelBase.getLoadingState()" resolve="getLoadingState" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gadshXCIaX" role="3cqZAp">
              <node concept="37vLTI" id="6gadshXCIaY" role="3clFbG">
                <node concept="37vLTw" id="6gadshXCIaZ" role="37vLTJ">
                  <ref role="3cqZAo" node="6gadshXBR3O" resolve="myInternalModelData" />
                </node>
                <node concept="37vLTw" id="6gadshXCIb0" role="37vLTx">
                  <ref role="3cqZAo" node="6gadshXCIaJ" resolve="modelData" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gadshXCIb1" role="3cqZAp">
              <node concept="2OqwBi" id="6gadshXCJC4" role="3clFbG">
                <node concept="37vLTw" id="6gadshXCJC3" role="2Oq$k0">
                  <ref role="3cqZAo" node="6gadshXBR3O" resolve="myInternalModelData" />
                </node>
                <node concept="liA8E" id="6gadshXCJC5" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SModel.setModelDescriptor(org.jetbrains.mps.openapi.model.SModel,jetbrains.mps.smodel.event.ModelEventDispatch)" resolve="setModelDescriptor" />
                  <node concept="Xjq3P" id="6gadshXCJC6" role="37wK5m" />
                  <node concept="1rXfSq" id="6gadshXCJC7" role="37wK5m">
                    <ref role="37wK5l" to="g3l6:~SModelBase.getNodeEventDispatch()" resolve="getNodeEventDispatch" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gadshXCIb5" role="3cqZAp">
              <node concept="1rXfSq" id="6gadshXCIb6" role="3clFbG">
                <ref role="37wK5l" to="g3l6:~SModelBase.setLoadingState(jetbrains.mps.smodel.loading.ModelLoadingState)" resolve="setLoadingState" />
                <node concept="Rm8GO" id="6gadshXCJC0" role="37wK5m">
                  <ref role="1Px2BO" to="4it6:~ModelLoadingState" resolve="ModelLoadingState" />
                  <ref role="Rm8GQ" to="4it6:~ModelLoadingState.FULLY_LOADED" resolve="FULLY_LOADED" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6gadshXCIb9" role="3cqZAp">
          <node concept="1rXfSq" id="6gadshXCIba" role="3clFbG">
            <ref role="37wK5l" to="g3l6:~SModelBase.fireModelStateChanged(jetbrains.mps.smodel.loading.ModelLoadingState,jetbrains.mps.smodel.loading.ModelLoadingState)" resolve="fireModelStateChanged" />
            <node concept="37vLTw" id="6gadshXCIbb" role="37wK5m">
              <ref role="3cqZAo" node="6gadshXCIaN" resolve="oldState" />
            </node>
            <node concept="1rXfSq" id="6gadshXCIbc" role="37wK5m">
              <ref role="37wK5l" to="g3l6:~SModelBase.getLoadingState()" resolve="getLoadingState" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6gadshXCIbd" role="1B3o_S" />
      <node concept="3cqZAl" id="6gadshXCIbe" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6gadshXCUPV" role="jymVt" />
    <node concept="3clFb_" id="6gadshXBR5Z" role="jymVt">
      <property role="TrG5h" value="getCurrentModelInternal" />
      <node concept="2AHcQZ" id="6gadshXBR60" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="6gadshXBR61" role="3clF47">
        <node concept="3cpWs6" id="6gadshXBR62" role="3cqZAp">
          <node concept="37vLTw" id="6gadshXBR63" role="3cqZAk">
            <ref role="3cqZAo" node="6gadshXBR3O" resolve="myInternalModelData" />
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="6gadshXBR64" role="1B3o_S" />
      <node concept="3uibUv" id="6gadshXC7Jh" role="3clF45">
        <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="6gadshXCW7d" role="jymVt" />
    <node concept="3clFb_" id="6gadshXBR66" role="jymVt">
      <property role="TrG5h" value="getSModelInternal" />
      <node concept="2AHcQZ" id="6gadshXBR67" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="6gadshXBR68" role="3clF47">
        <node concept="3clFbJ" id="6gadshXBR69" role="3cqZAp">
          <node concept="1rXfSq" id="6gadshXBR6a" role="3clFbw">
            <ref role="37wK5l" node="6gadshXBR6r" resolve="myDataIsNotYetLoadedFromSource" />
          </node>
          <node concept="3clFbS" id="6gadshXBR6c" role="3clFbx">
            <node concept="1HWtB8" id="6gadshXBR6d" role="3cqZAp">
              <node concept="37vLTw" id="6gadshXBR6m" role="1HWFw0">
                <ref role="3cqZAo" node="6gadshXBR43" resolve="myLoadLock" />
              </node>
              <node concept="3clFbS" id="6gadshXBR6f" role="1HWHxc">
                <node concept="3clFbJ" id="6gadshXBR6g" role="3cqZAp">
                  <node concept="1rXfSq" id="6gadshXBR6h" role="3clFbw">
                    <ref role="37wK5l" node="6gadshXBR6r" resolve="myDataIsNotYetLoadedFromSource" />
                  </node>
                  <node concept="3clFbS" id="6gadshXBR6j" role="3clFbx">
                    <node concept="3clFbF" id="6gadshXBR6k" role="3cqZAp">
                      <node concept="1rXfSq" id="6gadshXBR6l" role="3clFbG">
                        <ref role="37wK5l" node="6gadshXBR6z" resolve="readModelData" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6gadshXBR6n" role="3cqZAp">
          <node concept="37vLTw" id="6gadshXBR6o" role="3cqZAk">
            <ref role="3cqZAo" node="6gadshXBR3O" resolve="myInternalModelData" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXBR6p" role="1B3o_S" />
      <node concept="3uibUv" id="6gadshXC93J" role="3clF45">
        <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="6gadshXCXyr" role="jymVt" />
    <node concept="3clFb_" id="6gadshXBR6r" role="jymVt">
      <property role="TrG5h" value="myDataIsNotYetLoadedFromSource" />
      <node concept="3clFbS" id="6gadshXBR6s" role="3clF47">
        <node concept="3cpWs6" id="6gadshXBR6t" role="3cqZAp">
          <node concept="3clFbC" id="6gadshXBR6u" role="3cqZAk">
            <node concept="37vLTw" id="6gadshXBR6v" role="3uHU7B">
              <ref role="3cqZAo" node="6gadshXBR3O" resolve="myInternalModelData" />
            </node>
            <node concept="10Nm6u" id="6gadshXBR6w" role="3uHU7w" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6gadshXBR6x" role="1B3o_S" />
      <node concept="10P_77" id="6gadshXBR6y" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6gadshXCYKx" role="jymVt" />
    <node concept="3clFb_" id="6gadshXBR6z" role="jymVt">
      <property role="TrG5h" value="readModelData" />
      <node concept="3clFbS" id="6gadshXBR6$" role="3clF47">
        <node concept="3clFbF" id="6gadshXBR6_" role="3cqZAp">
          <node concept="1rXfSq" id="6gadshXBR6A" role="3clFbG">
            <ref role="37wK5l" node="6gadshXCIaI" resolve="initializeWithModelData" />
            <node concept="1rXfSq" id="6gadshXBR6B" role="37wK5m">
              <ref role="37wK5l" node="6gadshXBR6E" resolve="readModelData0" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6gadshXBR6C" role="1B3o_S" />
      <node concept="3cqZAl" id="6gadshXBR6D" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6gadshXD0eZ" role="jymVt" />
    <node concept="3clFb_" id="6gadshXBR6E" role="jymVt">
      <property role="TrG5h" value="readModelData0" />
      <node concept="2AHcQZ" id="6gadshXBR6F" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="6gadshXBR6G" role="3clF47">
        <node concept="3J1_TO" id="6gadshXBR6X" role="3cqZAp">
          <node concept="3uVAMA" id="6gadshXBR6Y" role="1zxBo5">
            <node concept="3clFbS" id="6gadshXBR6S" role="1zc67A">
              <node concept="3cpWs6" id="6gadshXBR6T" role="3cqZAp">
                <node concept="2ShNRf" id="6gadshXBVHd" role="3cqZAk">
                  <node concept="1pGfFk" id="6gadshXBVHu" role="2ShVmc">
                    <ref role="37wK5l" node="6gadshXBR33" resolve="CustomPersistenceModelWithHeader0.StubModel" />
                    <node concept="1rXfSq" id="6gadshXBVHv" role="37wK5m">
                      <ref role="37wK5l" to="g3l6:~SModelBase.getReference()" resolve="getReference" />
                    </node>
                    <node concept="37vLTw" id="6gadshXBVHw" role="37wK5m">
                      <ref role="3cqZAo" node="6gadshXBR6O" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="6gadshXBR6O" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="6gadshXBR6Q" role="1tU5fm">
                <node concept="3uibUv" id="6gadshXBR6P" role="nSUat">
                  <ref role="3uigEE" to="dush:~ModelLoadException" resolve="ModelLoadException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6gadshXBR6I" role="1zxBo7">
            <node concept="3cpWs6" id="6gadshXBR6J" role="3cqZAp">
              <node concept="10QFUN" id="6gadshXBR6K" role="3cqZAk">
                <node concept="2OqwBi" id="6gadshXBV41" role="10QFUP">
                  <node concept="37vLTw" id="6gadshXBV40" role="2Oq$k0">
                    <ref role="3cqZAo" node="6gadshXBR3J" resolve="myLoadFacility" />
                  </node>
                  <node concept="liA8E" id="6gadshXBV42" role="2OqNvi">
                    <ref role="37wK5l" to="g3l6:~CustomPersistenceLoadFacility.readModel(jetbrains.mps.extapi.model.SModelSimpleHeader)" resolve="readModel" />
                    <node concept="37vLTw" id="6gadshXBV43" role="37wK5m">
                      <ref role="3cqZAo" node="6gadshXBR3Z" resolve="myHeader" />
                    </node>
                  </node>
                </node>
                <node concept="3uibUv" id="6gadshXCbNf" role="10QFUM">
                  <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="6gadshXBR6Z" role="1B3o_S" />
      <node concept="3uibUv" id="6gadshXCauG" role="3clF45">
        <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
      </node>
    </node>
    <node concept="2tJIrI" id="2BCUoJTN9yq" role="jymVt" />
    <node concept="3clFb_" id="2BCUoJTNb7b" role="jymVt">
      <property role="TrG5h" value="doUnload" />
      <node concept="3Tmbuc" id="2BCUoJTNb7c" role="1B3o_S" />
      <node concept="3cqZAl" id="2BCUoJTNb7e" role="3clF45" />
      <node concept="3clFbS" id="2BCUoJTNb7o" role="3clF47">
        <node concept="3clFbF" id="2BCUoJTNeg4" role="3cqZAp">
          <node concept="37vLTI" id="2BCUoJTNeIi" role="3clFbG">
            <node concept="10Nm6u" id="2BCUoJTNf3q" role="37vLTx" />
            <node concept="37vLTw" id="2BCUoJTNeg1" role="37vLTJ">
              <ref role="3cqZAo" node="6gadshXBR3O" resolve="myInternalModelData" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2BCUoJTNb7p" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6gadshXD1pE" role="jymVt" />
    <node concept="3clFb_" id="6gadshXBR71" role="jymVt">
      <property role="TrG5h" value="reloadContents" />
      <node concept="2AHcQZ" id="6gadshXBR72" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="6gadshXBR73" role="3clF47">
        <node concept="3clFbJ" id="6gadshXBR74" role="3cqZAp">
          <node concept="3fqX7Q" id="6gadshXBR75" role="3clFbw">
            <node concept="1rXfSq" id="6gadshXBR76" role="3fr31v">
              <ref role="37wK5l" to="g3l6:~SModelBase.isLoaded()" resolve="isLoaded" />
            </node>
          </node>
          <node concept="3clFbS" id="6gadshXBR78" role="3clFbx">
            <node concept="3cpWs6" id="6gadshXBR79" role="3cqZAp" />
          </node>
        </node>
        <node concept="1HWtB8" id="6gadshXBR7a" role="3cqZAp">
          <node concept="37vLTw" id="6gadshXBR7m" role="1HWFw0">
            <ref role="3cqZAo" node="6gadshXBR43" resolve="myLoadLock" />
          </node>
          <node concept="3clFbS" id="6gadshXBR7c" role="1HWHxc">
            <node concept="3clFbF" id="6gadshXBR7d" role="3cqZAp">
              <node concept="2OqwBi" id="6gadshXBVGq" role="3clFbG">
                <node concept="37vLTw" id="6gadshXBVGp" role="2Oq$k0">
                  <ref role="3cqZAo" node="6gadshXBR3O" resolve="myInternalModelData" />
                </node>
                <node concept="liA8E" id="6gadshXBVGr" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SModel.dispose()" resolve="dispose" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gadshXBR7f" role="3cqZAp">
              <node concept="1rXfSq" id="6gadshXBR7g" role="3clFbG">
                <ref role="37wK5l" node="6gadshXBR6z" resolve="readModelData" />
              </node>
            </node>
            <node concept="1gVbGN" id="6gadshXBR7j" role="3cqZAp">
              <node concept="3fqX7Q" id="6gadshXBR7h" role="1gVkn0">
                <node concept="1rXfSq" id="6gadshXBR7i" role="3fr31v">
                  <ref role="37wK5l" to="g3l6:~EditableSModelBase.isChanged()" resolve="isChanged" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="6gadshXBR7k" role="3cqZAp">
              <node concept="1rXfSq" id="6gadshXBR7l" role="3clFbG">
                <ref role="37wK5l" to="g3l6:~SModelBase.fireModelReplaced()" resolve="fireModelReplaced" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="6gadshXBR7n" role="1B3o_S" />
      <node concept="3cqZAl" id="6gadshXBR7o" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6gadshXD77l" role="jymVt" />
    <node concept="3clFb_" id="6gadshXBR7p" role="jymVt">
      <property role="TrG5h" value="saveModel" />
      <node concept="2AHcQZ" id="6gadshXBR7q" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3uibUv" id="6gadshXBR7r" role="Sfmx6">
        <ref role="3uigEE" to="dush:~ModelSaveException" resolve="ModelSaveException" />
      </node>
      <node concept="3clFbS" id="6gadshXBR7s" role="3clF47">
        <node concept="3cpWs8" id="6gadshXBR7u" role="3cqZAp">
          <node concept="3cpWsn" id="6gadshXBR7t" role="3cpWs9">
            <property role="TrG5h" value="modelData" />
            <node concept="3uibUv" id="6gadshXBR7v" role="1tU5fm">
              <ref role="3uigEE" to="g3l6:~SModelData" resolve="SModelData" />
            </node>
            <node concept="1rXfSq" id="6gadshXBR7w" role="33vP2m">
              <ref role="37wK5l" to="g3l6:~SModelBase.getModelData()" resolve="getModelData" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6gadshXBR7x" role="3cqZAp">
          <node concept="2ZW3vV" id="6gadshXBR7$" role="3clFbw">
            <node concept="37vLTw" id="6gadshXBR7y" role="2ZW6bz">
              <ref role="3cqZAo" node="6gadshXBR7t" resolve="modelData" />
            </node>
            <node concept="3uibUv" id="6gadshXBR7z" role="2ZW6by">
              <ref role="3uigEE" to="w1kc:~InvalidSModel" resolve="InvalidSModel" />
            </node>
          </node>
          <node concept="3clFbS" id="6gadshXBR7A" role="3clFbx">
            <node concept="3SKdUt" id="6gadshXBR8t" role="3cqZAp">
              <node concept="1PaTwC" id="6gadshXBR8u" role="1aUNEU">
                <node concept="3oM_SD" id="6gadshXBR8w" role="1PaTwD">
                  <property role="3oM_SC" value="we" />
                </node>
                <node concept="3oM_SD" id="6gadshXBR8x" role="1PaTwD">
                  <property role="3oM_SC" value="do" />
                </node>
                <node concept="3oM_SD" id="6gadshXBR8y" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="6gadshXBR8z" role="1PaTwD">
                  <property role="3oM_SC" value="save" />
                </node>
                <node concept="3oM_SD" id="6gadshXBR8$" role="1PaTwD">
                  <property role="3oM_SC" value="stub" />
                </node>
                <node concept="3oM_SD" id="6gadshXBR8_" role="1PaTwD">
                  <property role="3oM_SC" value="model" />
                </node>
                <node concept="3oM_SD" id="6gadshXBR8A" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="6gadshXBR8B" role="1PaTwD">
                  <property role="3oM_SC" value="not" />
                </node>
                <node concept="3oM_SD" id="6gadshXBR8C" role="1PaTwD">
                  <property role="3oM_SC" value="overwrite" />
                </node>
                <node concept="3oM_SD" id="6gadshXBR8D" role="1PaTwD">
                  <property role="3oM_SC" value="the" />
                </node>
                <node concept="3oM_SD" id="6gadshXBR8E" role="1PaTwD">
                  <property role="3oM_SC" value="real" />
                </node>
                <node concept="3oM_SD" id="6gadshXBR8F" role="1PaTwD">
                  <property role="3oM_SC" value="model" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6gadshXBR7B" role="3cqZAp">
              <node concept="3clFbT" id="6gadshXBR7C" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="6gadshXBR7W" role="3cqZAp">
          <node concept="3uVAMA" id="6gadshXBR7X" role="1zxBo5">
            <node concept="3clFbS" id="6gadshXBR7N" role="1zc67A">
              <node concept="3clFbF" id="6gadshXBR7O" role="3cqZAp">
                <node concept="2OqwBi" id="6gadshXBUK9" role="3clFbG">
                  <node concept="37vLTw" id="6gadshXBUK8" role="2Oq$k0">
                    <ref role="3cqZAo" node="6gadshXBR3T" resolve="myProblems" />
                  </node>
                  <node concept="liA8E" id="6gadshXBUKa" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.clear()" resolve="clear" />
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="6gadshXBR7Q" role="3cqZAp">
                <node concept="2OqwBi" id="6gadshXBWpl" role="3clFbG">
                  <node concept="37vLTw" id="6gadshXBWpk" role="2Oq$k0">
                    <ref role="3cqZAo" node="6gadshXBR3T" resolve="myProblems" />
                  </node>
                  <node concept="liA8E" id="6gadshXBWpm" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
                    <node concept="2YIFZM" id="6gadshXBWpn" role="37wK5m">
                      <ref role="1Pybhc" to="18ew:~IterableUtil" resolve="IterableUtil" />
                      <ref role="37wK5l" to="18ew:~IterableUtil.asList(java.lang.Iterable)" resolve="asList" />
                      <node concept="2OqwBi" id="6gadshXBWpo" role="37wK5m">
                        <node concept="37vLTw" id="6gadshXBWpp" role="2Oq$k0">
                          <ref role="3cqZAo" node="6gadshXBR7J" resolve="e" />
                        </node>
                        <node concept="liA8E" id="6gadshXBWpq" role="2OqNvi">
                          <ref role="37wK5l" to="dush:~ModelSaveException.getProblems()" resolve="getProblems" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="YS8fn" id="6gadshXBR7V" role="3cqZAp">
                <node concept="37vLTw" id="6gadshXBR7U" role="YScLw">
                  <ref role="3cqZAo" node="6gadshXBR7J" resolve="e" />
                </node>
              </node>
            </node>
            <node concept="XOnhg" id="6gadshXBR7J" role="1zc67B">
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="6gadshXBR7L" role="1tU5fm">
                <node concept="3uibUv" id="6gadshXBR7K" role="nSUat">
                  <ref role="3uigEE" to="dush:~ModelSaveException" resolve="ModelSaveException" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="6gadshXBR7E" role="1zxBo7">
            <node concept="3clFbF" id="6gadshXBR7F" role="3cqZAp">
              <node concept="2OqwBi" id="6gadshXBVya" role="3clFbG">
                <node concept="37vLTw" id="6gadshXBVy9" role="2Oq$k0">
                  <ref role="3cqZAo" node="6gadshXBR3J" resolve="myLoadFacility" />
                </node>
                <node concept="liA8E" id="6gadshXBVyb" role="2OqNvi">
                  <ref role="37wK5l" to="g3l6:~CustomPersistenceLoadFacility.writeModel(jetbrains.mps.extapi.model.SModelSimpleHeader,jetbrains.mps.extapi.model.SModelData)" resolve="writeModel" />
                  <node concept="37vLTw" id="6gadshXBVyc" role="37wK5m">
                    <ref role="3cqZAo" node="6gadshXBR3Z" resolve="myHeader" />
                  </node>
                  <node concept="37vLTw" id="6gadshXBVyd" role="37wK5m">
                    <ref role="3cqZAo" node="6gadshXBR3O" resolve="myInternalModelData" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6gadshXBR7Y" role="3cqZAp">
          <node concept="3clFbT" id="6gadshXBR7Z" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tmbuc" id="6gadshXBR80" role="1B3o_S" />
      <node concept="10P_77" id="6gadshXBR81" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6gadshXD5CZ" role="jymVt" />
    <node concept="3clFb_" id="6gadshXBR82" role="jymVt">
      <property role="TrG5h" value="getProblems" />
      <node concept="2AHcQZ" id="6gadshXBR83" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="2AHcQZ" id="6gadshXBR84" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="6gadshXBR85" role="3clF47">
        <node concept="3cpWs8" id="6gadshXBR87" role="3cqZAp">
          <node concept="3cpWsn" id="6gadshXBR86" role="3cpWs9">
            <property role="TrG5h" value="streamFromIterable" />
            <node concept="3uibUv" id="6gadshXBR88" role="1tU5fm">
              <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
              <node concept="3uibUv" id="6gadshXBR89" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SModel$Problem" resolve="SModel.Problem" />
              </node>
            </node>
            <node concept="2YIFZM" id="6gadshXBUXT" role="33vP2m">
              <ref role="1Pybhc" to="1ctc:~StreamSupport" resolve="StreamSupport" />
              <ref role="37wK5l" to="1ctc:~StreamSupport.stream(java.util.Spliterator,boolean)" resolve="stream" />
              <node concept="2OqwBi" id="6gadshXBUXU" role="37wK5m">
                <node concept="3nyPlj" id="6gadshXBUXV" role="2Oq$k0">
                  <ref role="37wK5l" to="g3l6:~SModelBase.getProblems()" resolve="getProblems" />
                </node>
                <node concept="liA8E" id="6gadshXBUXW" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Iterable.spliterator()" resolve="spliterator" />
                </node>
              </node>
              <node concept="3clFbT" id="6gadshXBUXX" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6gadshXBR8g" role="3cqZAp">
          <node concept="3cpWsn" id="6gadshXBR8f" role="3cpWs9">
            <property role="TrG5h" value="concat" />
            <node concept="3uibUv" id="6gadshXBR8h" role="1tU5fm">
              <ref role="3uigEE" to="1ctc:~Stream" resolve="Stream" />
              <node concept="3uibUv" id="6gadshXBR8i" role="11_B2D">
                <ref role="3uigEE" to="mhbf:~SModel$Problem" resolve="SModel.Problem" />
              </node>
            </node>
            <node concept="2YIFZM" id="6gadshXCkGI" role="33vP2m">
              <ref role="37wK5l" to="1ctc:~Stream.concat(java.util.stream.Stream,java.util.stream.Stream)" resolve="concat" />
              <ref role="1Pybhc" to="1ctc:~Stream" resolve="Stream" />
              <node concept="2OqwBi" id="6gadshXBW1c" role="37wK5m">
                <node concept="37vLTw" id="6gadshXBW1b" role="2Oq$k0">
                  <ref role="3cqZAo" node="6gadshXBR3T" resolve="myProblems" />
                </node>
                <node concept="liA8E" id="6gadshXBW1d" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                </node>
              </node>
              <node concept="37vLTw" id="6gadshXBR8l" role="37wK5m">
                <ref role="3cqZAo" node="6gadshXBR86" resolve="streamFromIterable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6gadshXBR8m" role="3cqZAp">
          <node concept="2OqwBi" id="6gadshXBVj$" role="3cqZAk">
            <node concept="37vLTw" id="6gadshXBVjz" role="2Oq$k0">
              <ref role="3cqZAo" node="6gadshXBR8f" resolve="concat" />
            </node>
            <node concept="liA8E" id="6gadshXBVj_" role="2OqNvi">
              <ref role="37wK5l" to="1ctc:~Stream.collect(java.util.stream.Collector)" resolve="collect" />
              <node concept="2YIFZM" id="6gadshXBZcW" role="37wK5m">
                <ref role="1Pybhc" to="1ctc:~Collectors" resolve="Collectors" />
                <ref role="37wK5l" to="1ctc:~Collectors.toList()" resolve="toList" />
                <node concept="3uibUv" id="6gadshXCok7" role="3PaCim">
                  <ref role="3uigEE" to="mhbf:~SModel$Problem" resolve="SModel.Problem" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6gadshXBR8p" role="1B3o_S" />
      <node concept="3uibUv" id="6gadshXBR8q" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
        <node concept="3uibUv" id="6gadshXBR8r" role="11_B2D">
          <ref role="3uigEE" to="mhbf:~SModel$Problem" resolve="SModel.Problem" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6gadshXD4rj" role="jymVt" />
    <node concept="312cEu" id="6gadshXBR2U" role="jymVt">
      <property role="TrG5h" value="StubModel" />
      <node concept="3Tm6S6" id="6gadshXBR2V" role="1B3o_S" />
      <node concept="3uibUv" id="6gadshXCpI6" role="1zkMxy">
        <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
      </node>
      <node concept="3uibUv" id="6gadshXBR2X" role="EKbjA">
        <ref role="3uigEE" to="w1kc:~InvalidSModel" resolve="InvalidSModel" />
      </node>
      <node concept="312cEg" id="6gadshXBR2Y" role="jymVt">
        <property role="TrG5h" value="myCause" />
        <property role="3TUv4t" value="true" />
        <node concept="2AHcQZ" id="6gadshXBR30" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="6gadshXBR31" role="1tU5fm">
          <ref role="3uigEE" to="dush:~ModelLoadException" resolve="ModelLoadException" />
        </node>
        <node concept="3Tm6S6" id="6gadshXBR32" role="1B3o_S" />
      </node>
      <node concept="3clFbW" id="6gadshXBR33" role="jymVt">
        <node concept="3cqZAl" id="6gadshXBR34" role="3clF45" />
        <node concept="37vLTG" id="6gadshXBR35" role="3clF46">
          <property role="TrG5h" value="modelReference" />
          <node concept="2AHcQZ" id="6gadshXBR36" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
          <node concept="3uibUv" id="6gadshXD32P" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
          </node>
        </node>
        <node concept="37vLTG" id="6gadshXBR38" role="3clF46">
          <property role="TrG5h" value="cause" />
          <node concept="2AHcQZ" id="6gadshXBR39" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
          </node>
          <node concept="3uibUv" id="6gadshXBR3a" role="1tU5fm">
            <ref role="3uigEE" to="dush:~ModelLoadException" resolve="ModelLoadException" />
          </node>
        </node>
        <node concept="3clFbS" id="6gadshXBR3b" role="3clF47">
          <node concept="XkiVB" id="6gadshXBUJZ" role="3cqZAp">
            <ref role="37wK5l" to="w1kc:~SModel.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference)" resolve="SModel" />
            <node concept="37vLTw" id="6gadshXBUK0" role="37wK5m">
              <ref role="3cqZAo" node="6gadshXBR35" resolve="modelReference" />
            </node>
          </node>
          <node concept="3clFbF" id="6gadshXBR3c" role="3cqZAp">
            <node concept="37vLTI" id="6gadshXBR3d" role="3clFbG">
              <node concept="37vLTw" id="6gadshXBR3e" role="37vLTJ">
                <ref role="3cqZAo" node="6gadshXBR2Y" resolve="myCause" />
              </node>
              <node concept="37vLTw" id="6gadshXBR3f" role="37vLTx">
                <ref role="3cqZAo" node="6gadshXBR38" resolve="cause" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3clFb_" id="6gadshXBR3i" role="jymVt">
        <property role="TrG5h" value="getMsg" />
        <node concept="2AHcQZ" id="6gadshXBR3j" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3clFbS" id="6gadshXBR3k" role="3clF47">
          <node concept="3cpWs6" id="6gadshXBR3l" role="3cqZAp">
            <node concept="3K4zz7" id="6gadshXBR3t" role="3cqZAk">
              <node concept="3clFbC" id="6gadshXBR3m" role="3K4Cdx">
                <node concept="37vLTw" id="6gadshXBR3n" role="3uHU7B">
                  <ref role="3cqZAo" node="6gadshXBR2Y" resolve="myCause" />
                </node>
                <node concept="10Nm6u" id="6gadshXBR3o" role="3uHU7w" />
              </node>
              <node concept="Xl_RD" id="6gadshXBR3p" role="3K4E3e">
                <property role="Xl_RC" value="Couldn't read model." />
              </node>
              <node concept="3cpWs3" id="6gadshXBR3q" role="3K4GZi">
                <node concept="Xl_RD" id="6gadshXBR3r" role="3uHU7B">
                  <property role="Xl_RC" value="Cannot load. I/O problem: " />
                </node>
                <node concept="2OqwBi" id="6gadshXBV1F" role="3uHU7w">
                  <node concept="37vLTw" id="6gadshXBV1E" role="2Oq$k0">
                    <ref role="3cqZAo" node="6gadshXBR2Y" resolve="myCause" />
                  </node>
                  <node concept="liA8E" id="6gadshXBV1G" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="6gadshXBR3u" role="1B3o_S" />
        <node concept="3uibUv" id="6gadshXBR3v" role="3clF45">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFb_" id="6gadshXBR3w" role="jymVt">
        <property role="TrG5h" value="getProblems" />
        <node concept="2AHcQZ" id="6gadshXBR3x" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="2AHcQZ" id="6gadshXBR3y" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
        <node concept="3clFbS" id="6gadshXBR3z" role="3clF47">
          <node concept="3cpWs6" id="6gadshXBR3$" role="3cqZAp">
            <node concept="2YIFZM" id="6gadshXBV_$" role="3cqZAk">
              <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
              <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
              <node concept="2ShNRf" id="6gadshXBZRn" role="37wK5m">
                <node concept="1pGfFk" id="6gadshXBZRD" role="2ShVmc">
                  <ref role="37wK5l" to="g3l6:~PersistenceProblem.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel$Problem$Kind,java.lang.String,java.lang.String,boolean)" resolve="PersistenceProblem" />
                  <node concept="Rm8GO" id="6gadshXCCDI" role="37wK5m">
                    <ref role="Rm8GQ" to="mhbf:~SModel$Problem$Kind.Load" resolve="Load" />
                    <ref role="1Px2BO" to="mhbf:~SModel$Problem$Kind" resolve="SModel.Problem.Kind" />
                  </node>
                  <node concept="1rXfSq" id="6gadshXBZRF" role="37wK5m">
                    <ref role="37wK5l" node="6gadshXBR3i" resolve="getMsg" />
                  </node>
                  <node concept="10Nm6u" id="6gadshXBZRG" role="37wK5m" />
                  <node concept="3clFbT" id="6gadshXBZRH" role="37wK5m">
                    <property role="3clFbU" value="true" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="6gadshXCFmi" role="3PaCim">
                <ref role="3uigEE" to="mhbf:~SModel$Problem" resolve="SModel.Problem" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="6gadshXBR3F" role="1B3o_S" />
        <node concept="3uibUv" id="6gadshXBR3G" role="3clF45">
          <ref role="3uigEE" to="wyt6:~Iterable" resolve="Iterable" />
          <node concept="3uibUv" id="6gadshXBR3H" role="11_B2D">
            <ref role="3uigEE" to="mhbf:~SModel$Problem" resolve="SModel.Problem" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="43K6Fb_XCw_" role="jymVt" />
    <node concept="3uibUv" id="43K6Fb_X$kY" role="EKbjA">
      <ref role="3uigEE" to="pa15:~LoadedStrategyAware" resolve="LoadedStrategyAware" />
    </node>
    <node concept="3clFb_" id="43K6Fb_XEcw" role="jymVt">
      <property role="TrG5h" value="getModelFactory" />
      <node concept="3Tm1VV" id="43K6Fb_XEcx" role="1B3o_S" />
      <node concept="2AHcQZ" id="43K6Fb_XEcz" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="43K6Fb_XEc$" role="3clF45">
        <ref role="3uigEE" to="dush:~ModelFactory" resolve="ModelFactory" />
      </node>
      <node concept="3clFbS" id="43K6Fb_XEcK" role="3clF47">
        <node concept="3clFbF" id="43K6Fb_XFHt" role="3cqZAp">
          <node concept="2OqwBi" id="43K6Fb_XFTO" role="3clFbG">
            <node concept="37vLTw" id="43K6Fb_XFHq" role="2Oq$k0">
              <ref role="3cqZAo" node="6gadshXBR3J" resolve="myLoadFacility" />
            </node>
            <node concept="liA8E" id="43K6Fb_XGiN" role="2OqNvi">
              <ref role="37wK5l" to="g3l6:~CustomPersistenceLoadFacility.getModelFactory()" resolve="getModelFactory" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="43K6Fb_XEcL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
</model>

