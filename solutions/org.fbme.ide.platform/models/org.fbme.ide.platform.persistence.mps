<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:61dddea3-21a4-4a11-920c-747c8c1e4777(org.fbme.ide.platform.persistence)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="4" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="fdcdc48f-bfd8-4831-aa76-5abac2ffa010" name="jetbrains.mps.baseLanguage.jdk8" version="0" />
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
    <import index="ap4t" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.generator(MPS.Core/)" />
    <import index="mk8z" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.progress(MPS.Core/)" />
    <import index="kpbf" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.text.impl(MPS.Core/)" />
    <import index="ao3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.text(MPS.Core/)" />
    <import index="q7tw" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.apache.log4j(MPS.Core/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="i30" ref="r:ab837574-aa54-4b18-9762-b783ef089263(jetbrains.mps.generator.impl)" />
    <import index="56jd" ref="r:abfa9288-4c12-468c-81b9-0554ef30be09(org.fbme.ide.iec61499.lang.gp)" />
    <import index="tft2" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.generator.impl.plan(MPS.Core/)" />
    <import index="vndm" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.language(MPS.Core/)" />
    <import index="r99j" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.generator.runtime(MPS.Core/)" />
    <import index="cgca" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.generator.plan(MPS.Core/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="iuxj" ref="r:64db3a92-5968-4a73-b456-34504a2d97a6(jetbrains.mps.core.xml.structure)" />
    <import index="gpgy" ref="r:70ba2090-1a36-4ca3-87ef-116d9af7b3ac(org.fbme.ide.st.lang.structure)" />
    <import index="p3ir" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.antlr.v4.runtime(org.fbme.lib/)" />
    <import index="i8bi" ref="r:c3548bac-30eb-4a2a-937c-0111d5697309(jetbrains.mps.lang.smodel.generator.smodelAdapter)" />
    <import index="et5u" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.messages(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="iyvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence.datasource(MPS.Core/)" />
    <import index="pa15" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.persistence(MPS.Core/)" />
    <import index="3qmy" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.classloading(MPS.Core/)" />
    <import index="ni5j" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.regex(JDK/)" />
    <import index="2hqr" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.st.parser(org.fbme.lib/)" />
    <import index="v4vf" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499(org.fbme.lib/)" />
    <import index="epky" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.parser(org.fbme.lib/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="gzsq" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.st(org.fbme.lib/)" />
    <import index="g27j" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork(org.fbme.lib/)" />
    <import index="g136" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.ecc(org.fbme.lib/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="7adg" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.common(org.fbme.lib/)" />
    <import index="h353" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.st.expressions(org.fbme.lib/)" />
    <import index="zj7m" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.sql(JDK/)" />
    <import index="a9j9" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.st.types(org.fbme.lib/)" />
    <import index="6iyo" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork.subapp(org.fbme.lib/)" />
    <import index="x2xk" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.st.statements(org.fbme.lib/)" />
    <import index="1u7h" ref="r:3c4663c2-1cde-45a1-97cb-9049b04f4007(org.fbme.ide.iec61499.repository)" />
    <import index="go3h" ref="r:c95c1d38-95d5-42ab-aead-d308fc2b6566(org.fbme.ide.iec61499.adapter.interfacepart)" />
    <import index="fcfa" ref="r:ee522dab-c61c-457c-91bc-e4dac8b7bbab(org.fbme.ide.iec61499.adapter.common)" />
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
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
        <child id="1164903700860" name="catchClause" index="TEXxN" />
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
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
        <child id="4972241301747169160" name="typeArgument" index="3PaCim" />
      </concept>
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
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
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
        <child id="1350122676458893092" name="text" index="3ndbpf" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1235746970280" name="jetbrains.mps.baseLanguage.closures.structure.CompactInvokeFunctionExpression" flags="nn" index="2Sg_IR">
        <child id="1235746996653" name="function" index="2SgG2M" />
        <child id="1235747002942" name="parameter" index="2SgHGx" />
      </concept>
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
        <child id="1214831762486" name="throwsType" index="3pBpOG" />
      </concept>
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="6332851714983831325" name="jetbrains.mps.baseLanguage.logging.structure.MsgStatement" flags="ng" index="2xdQw9">
        <property id="6332851714983843871" name="severity" index="2xdLsb" />
        <child id="5721587534047265374" name="message" index="9lYJi" />
        <child id="5721587534047265375" name="throwable" index="9lYJj" />
      </concept>
      <concept id="2034914114981261497" name="jetbrains.mps.baseLanguage.logging.structure.LogLowLevelStatement" flags="ng" index="RRSsy">
        <property id="2034914114981261751" name="severity" index="RRSoG" />
        <child id="2034914114981261755" name="throwable" index="RRSow" />
        <child id="2034914114981261753" name="message" index="RRSoy" />
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
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="2926695023085807517" name="jetbrains.mps.lang.smodel.structure.Reference_ContainingLinkOperation" flags="nn" index="CsP83" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG" />
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
      <concept id="4040588429969021681" name="jetbrains.mps.lang.smodel.structure.ModuleReferenceExpression" flags="nn" index="3rM5sP">
        <property id="4040588429969021683" name="moduleId" index="3rM5sR" />
      </concept>
      <concept id="1219352745532" name="jetbrains.mps.lang.smodel.structure.NodeRefExpression" flags="nn" index="3B5_sB">
        <reference id="1219352800908" name="referentNode" index="3B5MYn" />
      </concept>
      <concept id="1140137987495" name="jetbrains.mps.lang.smodel.structure.SNodeTypeCastExpression" flags="nn" index="1PxgMI">
        <property id="1238684351431" name="asCast" index="1BlNFB" />
      </concept>
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
      <concept id="155656958578482948" name="jetbrains.mps.lang.text.structure.Word" flags="ng" index="3oM_SD">
        <property id="155656958578482949" name="value" index="3oM_SC" />
      </concept>
      <concept id="2535923850359271782" name="jetbrains.mps.lang.text.structure.Line" flags="ng" index="1PaTwC">
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
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="312cEu" id="537nKv8IlHE">
    <property role="TrG5h" value="IEC61499ModelFactory" />
    <node concept="3uibUv" id="537nKv8JjDh" role="EKbjA">
      <ref role="3uigEE" to="dush:~ModelFactory" resolve="ModelFactory" />
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
          <node concept="1PaTwC" id="3yl9huPYjsw" role="3ndbpf">
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
    <node concept="2tJIrI" id="49FXEugFosa" role="jymVt" />
    <node concept="312cEg" id="537nKv8JWug" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="PF" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="537nKv8JV5Z" role="1B3o_S" />
      <node concept="3uibUv" id="537nKv8JW83" role="1tU5fm">
        <ref role="3uigEE" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
      </node>
      <node concept="2YIFZM" id="537nKv8JZKi" role="33vP2m">
        <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
        <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
      </node>
    </node>
    <node concept="2tJIrI" id="537nKv8JI_A" role="jymVt" />
    <node concept="3clFb_" id="1glcRxpMRxJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createEmptyModel" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="1glcRxpMRxM" role="3clF47">
        <node concept="3cpWs8" id="1glcRxpMUDw" role="3cqZAp">
          <node concept="3cpWsn" id="1glcRxpMUDx" role="3cpWs9">
            <property role="TrG5h" value="modelRef" />
            <node concept="3uibUv" id="7OBD32HPGE3" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
            </node>
            <node concept="2OqwBi" id="7OBD32HOJ0V" role="33vP2m">
              <node concept="37vLTw" id="7OBD32I0Xxy" role="2Oq$k0">
                <ref role="3cqZAo" node="537nKv8JWug" resolve="PF" />
              </node>
              <node concept="liA8E" id="7OBD32HOMOC" role="2OqNvi">
                <ref role="37wK5l" to="dush:~PersistenceFacade.createModelReference(org.jetbrains.mps.openapi.module.SModuleReference,org.jetbrains.mps.openapi.model.SModelId,java.lang.String)" resolve="createModelReference" />
                <node concept="10Nm6u" id="7OBD32HOQn1" role="37wK5m" />
                <node concept="2OqwBi" id="7OBD32HP1ih" role="37wK5m">
                  <node concept="37vLTw" id="7OBD32HOZ5J" role="2Oq$k0">
                    <ref role="3cqZAo" node="1glcRxpMTDz" resolve="header" />
                  </node>
                  <node concept="liA8E" id="7OBD32HP56A" role="2OqNvi">
                    <ref role="37wK5l" node="7OBD32HKGnM" resolve="getId" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7OBD32HPf0a" role="37wK5m">
                  <node concept="37vLTw" id="7OBD32HPcnv" role="2Oq$k0">
                    <ref role="3cqZAo" node="1glcRxpMTDz" resolve="header" />
                  </node>
                  <node concept="liA8E" id="7OBD32HPiqd" role="2OqNvi">
                    <ref role="37wK5l" node="7OBD32HKGnG" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7OBD32HPZVE" role="3cqZAp">
          <node concept="3cpWsn" id="7OBD32HPZVF" role="3cpWs9">
            <property role="TrG5h" value="modelData" />
            <node concept="3uibUv" id="7OBD32HQ6BN" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
            </node>
            <node concept="2ShNRf" id="7OBD32HQ47Y" role="33vP2m">
              <node concept="1pGfFk" id="7OBD32HQ7AE" role="2ShVmc">
                <ref role="37wK5l" to="w1kc:~SModel.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference)" resolve="SModel" />
                <node concept="37vLTw" id="7OBD32HQ7Mh" role="37wK5m">
                  <ref role="3cqZAo" node="1glcRxpMUDx" resolve="modelRef" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7OBD32HQ7Za" role="3cqZAp" />
        <node concept="3clFbF" id="23XkovVpKXr" role="3cqZAp">
          <node concept="2OqwBi" id="23XkovVpKXs" role="3clFbG">
            <node concept="37vLTw" id="7OBD32HQcqK" role="2Oq$k0">
              <ref role="3cqZAo" node="7OBD32HPZVF" resolve="modelData" />
            </node>
            <node concept="liA8E" id="23XkovVpKXu" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~SModel.addLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="addLanguage" />
              <node concept="pHN19" id="23XkovVpKXv" role="37wK5m">
                <node concept="2V$Bhx" id="3D$ZgG8vrCa" role="2V$M_3">
                  <property role="2V$B1T" value="2046780a-246e-4cb0-90fe-56a2b7d92c54" />
                  <property role="2V$B1Q" value="mps.lang.ST" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1glcRxpMUDA" role="3cqZAp">
          <node concept="2OqwBi" id="1glcRxpMUDB" role="3clFbG">
            <node concept="37vLTw" id="7OBD32HQceM" role="2Oq$k0">
              <ref role="3cqZAo" node="7OBD32HPZVF" resolve="modelData" />
            </node>
            <node concept="liA8E" id="1glcRxpMUDD" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~SModel.addLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="addLanguage" />
              <node concept="pHN19" id="1glcRxpMUDE" role="37wK5m">
                <node concept="2V$Bhx" id="3D$ZgG8vrCb" role="2V$M_3">
                  <property role="2V$B1T" value="6594f340-4d73-4027-b7d3-c6ca2e70a53b" />
                  <property role="2V$B1Q" value="mps.lang.iec61499" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4xJOZFygOoJ" role="3cqZAp">
          <node concept="2OqwBi" id="4xJOZFygOoK" role="3clFbG">
            <node concept="37vLTw" id="4xJOZFygOoL" role="2Oq$k0">
              <ref role="3cqZAo" node="7OBD32HPZVF" resolve="modelData" />
            </node>
            <node concept="liA8E" id="4xJOZFygOoM" role="2OqNvi">
              <ref role="37wK5l" to="w1kc:~SModel.addLanguage(org.jetbrains.mps.openapi.language.SLanguage)" resolve="addLanguage" />
              <node concept="pHN19" id="4xJOZFygOoN" role="37wK5m">
                <node concept="2V$Bhx" id="3D$ZgG8vrCc" role="2V$M_3">
                  <property role="2V$B1T" value="111cc10b-fa1e-4e11-8e9c-37e957c4043f" />
                  <property role="2V$B1Q" value="richediting.lang" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7OBD32HQh1s" role="3cqZAp" />
        <node concept="2Gpval" id="7OBD32HQoEc" role="3cqZAp">
          <node concept="2GrKxI" id="7OBD32HQoEe" role="2Gsz3X">
            <property role="TrG5h" value="imp" />
          </node>
          <node concept="2OqwBi" id="7OBD32HQUJp" role="2GsD0m">
            <node concept="37vLTw" id="7OBD32HQSik" role="2Oq$k0">
              <ref role="3cqZAo" node="1glcRxpMTDz" resolve="header" />
            </node>
            <node concept="liA8E" id="7OBD32HQZ2z" role="2OqNvi">
              <ref role="37wK5l" node="7OBD32HKGnS" resolve="getImports" />
            </node>
          </node>
          <node concept="3clFbS" id="7OBD32HQoEi" role="2LFqv$">
            <node concept="3clFbF" id="7OBD32HQHCc" role="3cqZAp">
              <node concept="2OqwBi" id="7OBD32HQJgA" role="3clFbG">
                <node concept="37vLTw" id="7OBD32HQHCa" role="2Oq$k0">
                  <ref role="3cqZAo" node="7OBD32HPZVF" resolve="modelData" />
                </node>
                <node concept="liA8E" id="7OBD32HQMKm" role="2OqNvi">
                  <ref role="37wK5l" to="w1kc:~SModel.addModelImport(jetbrains.mps.smodel.SModel$ImportElement)" resolve="addModelImport" />
                  <node concept="2ShNRf" id="7OBD32HQRbS" role="37wK5m">
                    <node concept="1pGfFk" id="7OBD32HQS6b" role="2ShVmc">
                      <ref role="37wK5l" to="w1kc:~SModel$ImportElement.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference)" resolve="SModel.ImportElement" />
                      <node concept="2GrUjf" id="7OBD32HQZht" role="37wK5m">
                        <ref role="2Gs0qQ" node="7OBD32HQoEe" resolve="imp" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7OBD32HQh2d" role="3cqZAp" />
        <node concept="3cpWs6" id="1glcRxpMUDH" role="3cqZAp">
          <node concept="37vLTw" id="7OBD32HQcNV" role="3cqZAk">
            <ref role="3cqZAo" node="7OBD32HPZVF" resolve="modelData" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="1glcRxpMQpY" role="1B3o_S" />
      <node concept="3uibUv" id="1glcRxpMSGp" role="3clF45">
        <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
      </node>
      <node concept="37vLTG" id="1glcRxpMTDz" role="3clF46">
        <property role="TrG5h" value="header" />
        <node concept="3uibUv" id="7OBD32HNWci" role="1tU5fm">
          <ref role="3uigEE" node="7OBD32HKFLJ" resolve="IEC61499ModelHeader" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1glcRxpMPig" role="jymVt" />
    <node concept="3clFb_" id="537nKv8IrmH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="createEmpty" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="537nKv8IrmI" role="1B3o_S" />
      <node concept="3uibUv" id="537nKv8IrmK" role="3clF45">
        <ref role="3uigEE" to="g3l6:~SModelData" resolve="SModelData" />
      </node>
      <node concept="37vLTG" id="537nKv8IrmL" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="537nKv8IrmM" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="37vLTG" id="537nKv8IrmN" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="537nKv8IrmO" role="1tU5fm">
          <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
        </node>
      </node>
      <node concept="3clFbS" id="537nKv8IrmP" role="3clF47">
        <node concept="3clFbF" id="1glcRxpMYRp" role="3cqZAp">
          <node concept="1rXfSq" id="1glcRxpMYRo" role="3clFbG">
            <ref role="37wK5l" node="1glcRxpMRxJ" resolve="createEmptyModel" />
            <node concept="2ShNRf" id="7OBD32HR06R" role="37wK5m">
              <node concept="1pGfFk" id="7OBD32HR10k" role="2ShVmc">
                <ref role="37wK5l" node="7OBD32HKFSn" resolve="IEC61499ModelHeader" />
                <node concept="2OqwBi" id="7OBD32HR1mI" role="37wK5m">
                  <node concept="37vLTw" id="7OBD32HR1dA" role="2Oq$k0">
                    <ref role="3cqZAo" node="537nKv8IrmL" resolve="reference" />
                  </node>
                  <node concept="liA8E" id="7OBD32HR26x" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModelReference.getModelName()" resolve="getModelName" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7OBD32HR2Gb" role="37wK5m">
                  <node concept="37vLTw" id="7OBD32HR2$A" role="2Oq$k0">
                    <ref role="3cqZAo" node="537nKv8IrmL" resolve="reference" />
                  </node>
                  <node concept="liA8E" id="7OBD32HR3tc" role="2OqNvi">
                    <ref role="37wK5l" to="mhbf:~SModelReference.getModelId()" resolve="getModelId" />
                  </node>
                </node>
                <node concept="2YIFZM" id="7OBD32HR4kt" role="37wK5m">
                  <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                  <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                  <node concept="3uibUv" id="7OBD32HR7du" role="3PaCim">
                    <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="537nKv8IrmQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="23XkovVOpcr" role="jymVt" />
    <node concept="2tJIrI" id="23XkovWhvpu" role="jymVt" />
    <node concept="3clFb_" id="23XkovVsuCn" role="jymVt">
      <property role="TrG5h" value="traverseModelDirectory" />
      <node concept="3clFbS" id="23XkovVsuCo" role="3clF47">
        <node concept="2Gpval" id="23XkovVsVGY" role="3cqZAp">
          <node concept="2GrKxI" id="23XkovVsVGZ" role="2Gsz3X">
            <property role="TrG5h" value="file" />
          </node>
          <node concept="2OqwBi" id="23XkovVsZWb" role="2GsD0m">
            <node concept="37vLTw" id="23XkovVsVIl" role="2Oq$k0">
              <ref role="3cqZAo" node="23XkovVsDq2" resolve="dir" />
            </node>
            <node concept="liA8E" id="23XkovVt0o7" role="2OqNvi">
              <ref role="37wK5l" to="3ju5:~IFile.getChildren()" resolve="getChildren" />
            </node>
          </node>
          <node concept="3clFbS" id="23XkovVsVH1" role="2LFqv$">
            <node concept="3cpWs8" id="23XkovVt6mx" role="3cqZAp">
              <node concept="3cpWsn" id="23XkovVt6my" role="3cpWs9">
                <property role="TrG5h" value="name" />
                <node concept="3uibUv" id="23XkovVt6lJ" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="23XkovVt6mz" role="33vP2m">
                  <node concept="2GrUjf" id="23XkovVt6m$" role="2Oq$k0">
                    <ref role="2Gs0qQ" node="23XkovVsVGZ" resolve="file" />
                  </node>
                  <node concept="liA8E" id="23XkovVt6m_" role="2OqNvi">
                    <ref role="37wK5l" to="3ju5:~IFile.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="23XkovVsVT1" role="3cqZAp">
              <node concept="3clFbS" id="23XkovVsVT3" role="3clFbx">
                <node concept="3clFbF" id="23XkovVt0Qn" role="3cqZAp">
                  <node concept="1rXfSq" id="23XkovVt0Ql" role="3clFbG">
                    <ref role="37wK5l" node="23XkovVsuCn" resolve="traverseModelDirectory" />
                    <node concept="2GrUjf" id="23XkovVt1jJ" role="37wK5m">
                      <ref role="2Gs0qQ" node="23XkovVsVGZ" resolve="file" />
                    </node>
                    <node concept="2YIFZM" id="23XkovWhHDV" role="37wK5m">
                      <ref role="37wK5l" to="18ew:~NameUtil.longNameFromNamespaceAndShortName(java.lang.String,java.lang.String)" resolve="longNameFromNamespaceAndShortName" />
                      <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                      <node concept="37vLTw" id="23XkovWhIiB" role="37wK5m">
                        <ref role="3cqZAo" node="23XkovVsGQ6" resolve="packageName" />
                      </node>
                      <node concept="37vLTw" id="23XkovWhJ8x" role="37wK5m">
                        <ref role="3cqZAo" node="23XkovVt6my" resolve="name" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="23XkovVt3id" role="37wK5m">
                      <ref role="3cqZAo" node="23XkovVsuCt" resolve="consumer" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="23XkovVsW8D" role="3clFbw">
                <node concept="2GrUjf" id="23XkovVsVTS" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="23XkovVsVGZ" resolve="file" />
                </node>
                <node concept="liA8E" id="23XkovVt0IF" role="2OqNvi">
                  <ref role="37wK5l" to="3ju5:~IFile.isDirectory()" resolve="isDirectory" />
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="23XkovVt8PL" role="3cqZAp">
              <node concept="3cpWsn" id="23XkovVt8PM" role="3cpWs9">
                <property role="TrG5h" value="extension" />
                <node concept="3uibUv" id="23XkovVt8Po" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2YIFZM" id="23XkovVt8PN" role="33vP2m">
                  <ref role="37wK5l" to="18ew:~FileUtil.getExtension(java.lang.String)" resolve="getExtension" />
                  <ref role="1Pybhc" to="18ew:~FileUtil" resolve="FileUtil" />
                  <node concept="37vLTw" id="23XkovVt8PO" role="37wK5m">
                    <ref role="3cqZAo" node="23XkovVt6my" resolve="name" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="23XkovVt3A1" role="3cqZAp">
              <node concept="3clFbS" id="23XkovVt3A3" role="3clFbx">
                <node concept="3clFbF" id="23XkovVtaXk" role="3cqZAp">
                  <node concept="2Sg_IR" id="23XkovVPg5C" role="3clFbG">
                    <node concept="37vLTw" id="23XkovVPg5D" role="2SgG2M">
                      <ref role="3cqZAo" node="23XkovVsuCt" resolve="consumer" />
                    </node>
                    <node concept="2GrUjf" id="23XkovVPggV" role="2SgHGx">
                      <ref role="2Gs0qQ" node="23XkovVsVGZ" resolve="file" />
                    </node>
                    <node concept="2YIFZM" id="23XkovWhKPz" role="2SgHGx">
                      <ref role="37wK5l" to="18ew:~NameUtil.longNameFromNamespaceAndShortName(java.lang.String,java.lang.String)" resolve="longNameFromNamespaceAndShortName" />
                      <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                      <node concept="37vLTw" id="23XkovWhiH$" role="37wK5m">
                        <ref role="3cqZAo" node="23XkovVsGQ6" resolve="packageName" />
                      </node>
                      <node concept="2YIFZM" id="23XkovVPgNO" role="37wK5m">
                        <ref role="1Pybhc" to="18ew:~FileUtil" resolve="FileUtil" />
                        <ref role="37wK5l" to="18ew:~FileUtil.getNameWithoutExtension(java.lang.String)" resolve="getNameWithoutExtension" />
                        <node concept="37vLTw" id="23XkovVPh34" role="37wK5m">
                          <ref role="3cqZAo" node="23XkovVt6my" resolve="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="15s5l7" id="42vv4xsDW7h" role="lGtFl">
                    <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;" />
                  </node>
                </node>
              </node>
              <node concept="1rXfSq" id="23XkovVt5am" role="3clFbw">
                <ref role="37wK5l" node="2ByE74kxB9J" resolve="supportedFileExtension" />
                <node concept="37vLTw" id="23XkovVt8PP" role="37wK5m">
                  <ref role="3cqZAo" node="23XkovVt8PM" resolve="extension" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="23XkovVsuCp" role="1B3o_S" />
      <node concept="3cqZAl" id="23XkovVsuCq" role="3clF45" />
      <node concept="37vLTG" id="23XkovVsDq2" role="3clF46">
        <property role="TrG5h" value="dir" />
        <node concept="3uibUv" id="23XkovVsUNt" role="1tU5fm">
          <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
        </node>
      </node>
      <node concept="37vLTG" id="23XkovVsGQ6" role="3clF46">
        <property role="TrG5h" value="packageName" />
        <node concept="3uibUv" id="23XkovVsJK8" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="23XkovVsuCt" role="3clF46">
        <property role="TrG5h" value="consumer" />
        <node concept="1ajhzC" id="23XkovVsuCu" role="1tU5fm">
          <node concept="3cqZAl" id="23XkovVsuCv" role="1ajl9A" />
          <node concept="3uibUv" id="23XkovVsVgv" role="1ajw0F">
            <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
          </node>
          <node concept="3uibUv" id="23XkovVsuCx" role="1ajw0F">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
          <node concept="3uibUv" id="23XkovVOt4p" role="3pBpOG">
            <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="23XkovVOJtN" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="23XkovVs$2L" role="jymVt" />
    <node concept="3clFb_" id="537nKv8IrmT" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="readModel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="537nKv8IrmU" role="1B3o_S" />
      <node concept="3uibUv" id="537nKv8IrmW" role="3clF45">
        <ref role="3uigEE" to="g3l6:~SModelData" resolve="SModelData" />
      </node>
      <node concept="37vLTG" id="537nKv8IrmX" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="537nKv8IrmY" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="37vLTG" id="537nKv8IrmZ" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="537nKv8Irn0" role="1tU5fm">
          <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
        </node>
      </node>
      <node concept="3uibUv" id="537nKv8Irn1" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3clFbS" id="537nKv8Irn2" role="3clF47">
        <node concept="SfApY" id="23XkovVRi0Y" role="3cqZAp">
          <node concept="3clFbS" id="23XkovVRi10" role="SfCbr">
            <node concept="3cpWs8" id="49FXEugF8TC" role="3cqZAp">
              <node concept="3cpWsn" id="49FXEugF8TD" role="3cpWs9">
                <property role="TrG5h" value="headerFile" />
                <node concept="3uibUv" id="49FXEugF8Yf" role="1tU5fm">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
                <node concept="1rXfSq" id="49FXEugFk65" role="33vP2m">
                  <ref role="37wK5l" node="7OBD32HJZ0F" resolve="extractFile" />
                  <node concept="37vLTw" id="49FXEugFkrA" role="37wK5m">
                    <ref role="3cqZAo" node="537nKv8IrmZ" resolve="source" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7OBD32HNz3$" role="3cqZAp">
              <node concept="3cpWsn" id="7OBD32HNz3_" role="3cpWs9">
                <property role="TrG5h" value="header" />
                <node concept="3uibUv" id="7OBD32HNz3A" role="1tU5fm">
                  <ref role="3uigEE" node="7OBD32HKFLJ" resolve="IEC61499ModelHeader" />
                </node>
                <node concept="2YIFZM" id="7OBD32HNC8O" role="33vP2m">
                  <ref role="37wK5l" node="7OBD32HLIqK" resolve="load" />
                  <ref role="1Pybhc" node="7OBD32HKFLJ" resolve="IEC61499ModelHeader" />
                  <node concept="2OqwBi" id="7OBD32HNHHg" role="37wK5m">
                    <node concept="37vLTw" id="7OBD32HNEZ4" role="2Oq$k0">
                      <ref role="3cqZAo" node="49FXEugF8TD" resolve="headerFile" />
                    </node>
                    <node concept="liA8E" id="7OBD32HNI4M" role="2OqNvi">
                      <ref role="37wK5l" to="3ju5:~IFile.openInputStream()" resolve="openInputStream" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7OBD32HNrpu" role="3cqZAp" />
            <node concept="3cpWs8" id="23XkovVNrMj" role="3cqZAp">
              <node concept="3cpWsn" id="23XkovVNrMk" role="3cpWs9">
                <property role="TrG5h" value="modelDirectory" />
                <node concept="3uibUv" id="23XkovVNrMf" role="1tU5fm">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
                <node concept="2OqwBi" id="23XkovVNrMl" role="33vP2m">
                  <node concept="37vLTw" id="23XkovVNrMm" role="2Oq$k0">
                    <ref role="3cqZAo" node="49FXEugF8TD" resolve="headerFile" />
                  </node>
                  <node concept="liA8E" id="23XkovVNrMn" role="2OqNvi">
                    <ref role="37wK5l" to="3ju5:~IFile.getParent()" resolve="getParent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="23XkovVNGr1" role="3cqZAp">
              <node concept="3clFbS" id="23XkovVNGr2" role="3clFbx">
                <node concept="YS8fn" id="23XkovVNLve" role="3cqZAp">
                  <node concept="2ShNRf" id="23XkovVNJ5O" role="YScLw">
                    <node concept="1pGfFk" id="23XkovVNKgl" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~IOException.&lt;init&gt;(java.lang.String)" resolve="IOException" />
                      <node concept="Xl_RD" id="23XkovVNGr5" role="37wK5m">
                        <property role="Xl_RC" value="Header file not in a model directory" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="23XkovVNGr6" role="3clFbw">
                <node concept="10Nm6u" id="23XkovVNGr7" role="3uHU7w" />
                <node concept="37vLTw" id="23XkovVNGr8" role="3uHU7B">
                  <ref role="3cqZAo" node="23XkovVNrMk" resolve="modelDirectory" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="49FXEugFHSr" role="3cqZAp" />
            <node concept="3cpWs8" id="49FXEugFXk8" role="3cqZAp">
              <node concept="3cpWsn" id="49FXEugFXk9" role="3cpWs9">
                <property role="TrG5h" value="modelData" />
                <node concept="3uibUv" id="49FXEugFXka" role="1tU5fm">
                  <ref role="3uigEE" to="w1kc:~SModel" resolve="SModel" />
                </node>
                <node concept="1rXfSq" id="1glcRxpN28K" role="33vP2m">
                  <ref role="37wK5l" node="1glcRxpMRxJ" resolve="createEmptyModel" />
                  <node concept="37vLTw" id="7OBD32HR7Y_" role="37wK5m">
                    <ref role="3cqZAo" node="7OBD32HNz3_" resolve="header" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="49FXEugFX8q" role="3cqZAp" />
            <node concept="3clFbF" id="23XkovVNSw7" role="3cqZAp">
              <node concept="1rXfSq" id="23XkovVNSw5" role="3clFbG">
                <ref role="37wK5l" node="23XkovVsuCn" resolve="traverseModelDirectory" />
                <node concept="37vLTw" id="23XkovVNTdp" role="37wK5m">
                  <ref role="3cqZAo" node="23XkovVNrMk" resolve="modelDirectory" />
                </node>
                <node concept="10Nm6u" id="23XkovWhu6S" role="37wK5m" />
                <node concept="1bVj0M" id="23XkovVNTI9" role="37wK5m">
                  <node concept="3clFbS" id="23XkovVNTIb" role="1bW5cS">
                    <node concept="SfApY" id="49FXEugGt_P" role="3cqZAp">
                      <node concept="3clFbS" id="49FXEugGt_R" role="SfCbr">
                        <node concept="3cpWs8" id="2ByE74kxvN6" role="3cqZAp">
                          <node concept="3cpWsn" id="2ByE74kxvN7" role="3cpWs9">
                            <property role="TrG5h" value="fileExt" />
                            <node concept="3uibUv" id="2ByE74kxvMH" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                            </node>
                            <node concept="2YIFZM" id="2ByE74kxvN8" role="33vP2m">
                              <ref role="1Pybhc" to="18ew:~FileUtil" resolve="FileUtil" />
                              <ref role="37wK5l" to="18ew:~FileUtil.getExtension(java.lang.String)" resolve="getExtension" />
                              <node concept="2OqwBi" id="2ByE74kxvN9" role="37wK5m">
                                <node concept="37vLTw" id="23XkovVNZtV" role="2Oq$k0">
                                  <ref role="3cqZAo" node="23XkovVNTPG" resolve="file" />
                                </node>
                                <node concept="liA8E" id="2ByE74kxvNb" role="2OqNvi">
                                  <ref role="37wK5l" to="3ju5:~IFile.getName()" resolve="getName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="23XkovVNVDM" role="3cqZAp" />
                        <node concept="3cpWs8" id="49FXEugFSHy" role="3cqZAp">
                          <node concept="3cpWsn" id="49FXEugFSHz" role="3cpWs9">
                            <property role="TrG5h" value="reader" />
                            <node concept="3uibUv" id="49FXEugFSH$" role="1tU5fm">
                              <ref role="3uigEE" to="guwi:~BufferedReader" resolve="BufferedReader" />
                            </node>
                            <node concept="2ShNRf" id="49FXEugFQe6" role="33vP2m">
                              <node concept="1pGfFk" id="49FXEugFQBG" role="2ShVmc">
                                <ref role="37wK5l" to="guwi:~BufferedReader.&lt;init&gt;(java.io.Reader)" resolve="BufferedReader" />
                                <node concept="2ShNRf" id="49FXEugFQDV" role="37wK5m">
                                  <node concept="1pGfFk" id="49FXEugFR3O" role="2ShVmc">
                                    <ref role="37wK5l" to="guwi:~InputStreamReader.&lt;init&gt;(java.io.InputStream)" resolve="InputStreamReader" />
                                    <node concept="2OqwBi" id="49FXEugFRe5" role="37wK5m">
                                      <node concept="liA8E" id="49FXEugFRos" role="2OqNvi">
                                        <ref role="37wK5l" to="3ju5:~IFile.openInputStream()" resolve="openInputStream" />
                                      </node>
                                      <node concept="37vLTw" id="23XkovVNZQ3" role="2Oq$k0">
                                        <ref role="3cqZAo" node="23XkovVNTPG" resolve="file" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2GUZhq" id="49FXEugFRMA" role="3cqZAp">
                          <node concept="3clFbS" id="49FXEugFITj" role="2GV8ay">
                            <node concept="3cpWs8" id="49FXEugGvVw" role="3cqZAp">
                              <node concept="3cpWsn" id="49FXEugGvVx" role="3cpWs9">
                                <property role="TrG5h" value="doc" />
                                <node concept="3uibUv" id="49FXEugGvVy" role="1tU5fm">
                                  <ref role="3uigEE" to="mmaq:~Document" resolve="Document" />
                                </node>
                                <node concept="2YIFZM" id="49FXEugGwEk" role="33vP2m">
                                  <ref role="1Pybhc" to="18ew:~JDOMUtil" resolve="JDOMUtil" />
                                  <ref role="37wK5l" to="18ew:~JDOMUtil.loadDocument(java.io.Reader)" resolve="loadDocument" />
                                  <node concept="37vLTw" id="49FXEugGwNO" role="37wK5m">
                                    <ref role="3cqZAo" node="49FXEugFSHz" resolve="reader" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="49FXEugGzdV" role="3cqZAp">
                              <node concept="3cpWsn" id="49FXEugGzdW" role="3cpWs9">
                                <property role="TrG5h" value="node" />
                                <node concept="3Tqbb2" id="23XkovVQ9i8" role="1tU5fm" />
                                <node concept="1rXfSq" id="2ByE74kyUHu" role="33vP2m">
                                  <ref role="37wK5l" node="2ByE74krpZi" resolve="convertRootNode" />
                                  <node concept="37vLTw" id="1KgvZpgko$J" role="37wK5m">
                                    <ref role="3cqZAo" node="537nKv8IrmX" resolve="reference" />
                                  </node>
                                  <node concept="37vLTw" id="2ByE74kyZ4j" role="37wK5m">
                                    <ref role="3cqZAo" node="49FXEugGvVx" resolve="doc" />
                                  </node>
                                  <node concept="37vLTw" id="23XkovVO07q" role="37wK5m">
                                    <ref role="3cqZAo" node="2ByE74kxvN7" resolve="fileExt" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="23XkovVQwoi" role="3cqZAp">
                              <node concept="3cpWsn" id="23XkovVQwoj" role="3cpWs9">
                                <property role="TrG5h" value="virtualPackage" />
                                <node concept="3uibUv" id="23XkovVQwok" role="1tU5fm">
                                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                </node>
                                <node concept="2YIFZM" id="23XkovVQuox" role="33vP2m">
                                  <ref role="37wK5l" to="18ew:~NameUtil.namespaceFromLongName(java.lang.String)" resolve="namespaceFromLongName" />
                                  <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                                  <node concept="37vLTw" id="23XkovVQCi9" role="37wK5m">
                                    <ref role="3cqZAo" node="23XkovVNUkk" resolve="fqname" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="23XkovVQ$MB" role="3cqZAp">
                              <node concept="3clFbS" id="23XkovVQ$MD" role="3clFbx">
                                <node concept="3clFbF" id="23XkovVQ9I9" role="3cqZAp">
                                  <node concept="37vLTI" id="23XkovVQsn8" role="3clFbG">
                                    <node concept="2OqwBi" id="23XkovVQa1a" role="37vLTJ">
                                      <node concept="37vLTw" id="23XkovVQ9I7" role="2Oq$k0">
                                        <ref role="3cqZAo" node="49FXEugGzdW" resolve="node" />
                                      </node>
                                      <node concept="3TrcHB" id="23XkovVQi3Z" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                                      </node>
                                    </node>
                                    <node concept="37vLTw" id="23XkovVQBWB" role="37vLTx">
                                      <ref role="3cqZAo" node="23XkovVQwoj" resolve="virtualPackage" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="23XkovVQ__3" role="3clFbw">
                                <node concept="37vLTw" id="23XkovVQ_8q" role="2Oq$k0">
                                  <ref role="3cqZAo" node="23XkovVQwoj" resolve="virtualPackage" />
                                </node>
                                <node concept="17RvpY" id="23XkovVQAP3" role="2OqNvi" />
                              </node>
                            </node>
                            <node concept="3clFbF" id="49FXEugG$sc" role="3cqZAp">
                              <node concept="2OqwBi" id="49FXEugG$Hs" role="3clFbG">
                                <node concept="37vLTw" id="49FXEugG$sa" role="2Oq$k0">
                                  <ref role="3cqZAo" node="49FXEugFXk9" resolve="modelData" />
                                </node>
                                <node concept="liA8E" id="49FXEugG_kn" role="2OqNvi">
                                  <ref role="37wK5l" to="w1kc:~SModel.addRootNode(org.jetbrains.mps.openapi.model.SNode)" resolve="addRootNode" />
                                  <node concept="37vLTw" id="49FXEugG_vZ" role="37wK5m">
                                    <ref role="3cqZAo" node="49FXEugGzdW" resolve="node" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="49FXEugFRMD" role="2GVbov">
                            <node concept="3clFbF" id="49FXEugFTb1" role="3cqZAp">
                              <node concept="2OqwBi" id="49FXEugFV3p" role="3clFbG">
                                <node concept="37vLTw" id="49FXEugFTb0" role="2Oq$k0">
                                  <ref role="3cqZAo" node="49FXEugFSHz" resolve="reader" />
                                </node>
                                <node concept="liA8E" id="49FXEugFVoQ" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~BufferedReader.close()" resolve="close" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="TDmWw" id="49FXEugFITk" role="TEbGg">
                        <node concept="3cpWsn" id="49FXEugFITm" role="TDEfY">
                          <property role="TrG5h" value="e" />
                          <node concept="3uibUv" id="jOwYqvKe8i" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="49FXEugFITq" role="TDEfX">
                          <node concept="YS8fn" id="49FXEugFJes" role="3cqZAp">
                            <node concept="2ShNRf" id="49FXEugFJgv" role="YScLw">
                              <node concept="1pGfFk" id="49FXEugFJDS" role="2ShVmc">
                                <ref role="37wK5l" to="guwi:~IOException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="IOException" />
                                <node concept="3cpWs3" id="49FXEugFKtP" role="37wK5m">
                                  <node concept="2OqwBi" id="49FXEugFN9s" role="3uHU7w">
                                    <node concept="37vLTw" id="23XkovVNrMp" role="2Oq$k0">
                                      <ref role="3cqZAo" node="23XkovVNrMk" resolve="modelDirectory" />
                                    </node>
                                    <node concept="liA8E" id="49FXEugFNsK" role="2OqNvi">
                                      <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                                    </node>
                                  </node>
                                  <node concept="Xl_RD" id="49FXEugFJFY" role="3uHU7B">
                                    <property role="Xl_RC" value="cannot read model" />
                                  </node>
                                </node>
                                <node concept="37vLTw" id="49FXEugFNWD" role="37wK5m">
                                  <ref role="3cqZAo" node="49FXEugFITm" resolve="e" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="23XkovVNTPG" role="1bW2Oz">
                    <property role="TrG5h" value="file" />
                    <node concept="3uibUv" id="23XkovVNTPF" role="1tU5fm">
                      <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="23XkovVNUkk" role="1bW2Oz">
                    <property role="TrG5h" value="fqname" />
                    <node concept="3uibUv" id="23XkovVNUz7" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="49FXEugGNsm" role="3cqZAp" />
            <node concept="3cpWs6" id="49FXEugGA6R" role="3cqZAp">
              <node concept="37vLTw" id="49FXEugGEqU" role="3cqZAk">
                <ref role="3cqZAo" node="49FXEugFXk9" resolve="modelData" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="23XkovVRi11" role="TEbGg">
            <node concept="3cpWsn" id="23XkovVRi13" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="23XkovVRyeV" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="23XkovVRi17" role="TDEfX">
              <node concept="RRSsy" id="7H$5i_Y6o9G" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="7H$5i_Y6o9H" role="RRSoy">
                  <property role="Xl_RC" value="Exception raised during load" />
                </node>
                <node concept="37vLTw" id="7H$5i_Y6o9I" role="RRSow">
                  <ref role="3cqZAo" node="23XkovVRi13" resolve="e" />
                </node>
              </node>
              <node concept="YS8fn" id="23XkovVRC_N" role="3cqZAp">
                <node concept="37vLTw" id="23XkovVREQe" role="YScLw">
                  <ref role="3cqZAo" node="23XkovVRi13" resolve="e" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="537nKv8Irn3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="23XkovVs73F" role="jymVt" />
    <node concept="3clFb_" id="537nKv8Irn6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="writeModel" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="537nKv8Irn7" role="1B3o_S" />
      <node concept="3cqZAl" id="537nKv8Irn9" role="3clF45" />
      <node concept="37vLTG" id="537nKv8Irna" role="3clF46">
        <property role="TrG5h" value="data" />
        <node concept="3uibUv" id="537nKv8Irnb" role="1tU5fm">
          <ref role="3uigEE" to="g3l6:~SModelData" resolve="SModelData" />
        </node>
      </node>
      <node concept="37vLTG" id="537nKv8Irnc" role="3clF46">
        <property role="TrG5h" value="source" />
        <node concept="3uibUv" id="537nKv8Irnd" role="1tU5fm">
          <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
        </node>
      </node>
      <node concept="3uibUv" id="537nKv8Irne" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3uibUv" id="537nKv8Irnf" role="Sfmx6">
        <ref role="3uigEE" to="dush:~ModelSaveException" resolve="ModelSaveException" />
      </node>
      <node concept="3clFbS" id="537nKv8Irng" role="3clF47">
        <node concept="3clFbJ" id="7OBD32HSqET" role="3cqZAp">
          <node concept="3clFbS" id="7OBD32HSqEV" role="3clFbx">
            <node concept="3clFbF" id="7OBD32HW4bI" role="3cqZAp">
              <node concept="1rXfSq" id="7OBD32HVON6" role="3clFbG">
                <ref role="37wK5l" node="7OBD32HJ$vU" resolve="saveFailed" />
                <node concept="3cpWs3" id="7OBD32HVON7" role="37wK5m">
                  <node concept="Xl_RD" id="7OBD32HVON8" role="3uHU7B">
                    <property role="Xl_RC" value="Malfromed internal format of model data for model: " />
                  </node>
                  <node concept="2OqwBi" id="7OBD32HVON9" role="3uHU7w">
                    <node concept="2OqwBi" id="7OBD32HVONa" role="2Oq$k0">
                      <node concept="37vLTw" id="7OBD32HYMlc" role="2Oq$k0">
                        <ref role="3cqZAo" node="537nKv8Irna" resolve="data" />
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
                  <ref role="3cqZAo" node="537nKv8Irna" resolve="data" />
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
                <ref role="3cqZAo" node="537nKv8Irna" resolve="data" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7OBD32HW6_o" role="3cqZAp" />
        <node concept="SfApY" id="23XkovVRGsv" role="3cqZAp">
          <node concept="3clFbS" id="23XkovVRGsw" role="SfCbr">
            <node concept="3cpWs8" id="49FXEugJpd1" role="3cqZAp">
              <node concept="3cpWsn" id="49FXEugJpd2" role="3cpWs9">
                <property role="TrG5h" value="headerFile" />
                <node concept="3uibUv" id="49FXEugJpd3" role="1tU5fm">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
                <node concept="1rXfSq" id="49FXEugJpd4" role="33vP2m">
                  <ref role="37wK5l" node="7OBD32HJZ0F" resolve="extractFile" />
                  <node concept="37vLTw" id="49FXEugJpd5" role="37wK5m">
                    <ref role="3cqZAo" node="537nKv8Irnc" resolve="source" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="49FXEugJrUB" role="3cqZAp">
              <node concept="3cpWsn" id="49FXEugJrUC" role="3cpWs9">
                <property role="TrG5h" value="modelDirectory" />
                <node concept="3uibUv" id="49FXEugJrUD" role="1tU5fm">
                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                </node>
                <node concept="2OqwBi" id="49FXEugJsYy" role="33vP2m">
                  <node concept="37vLTw" id="49FXEugJsPV" role="2Oq$k0">
                    <ref role="3cqZAo" node="49FXEugJpd2" resolve="headerFile" />
                  </node>
                  <node concept="liA8E" id="49FXEugJtgy" role="2OqNvi">
                    <ref role="37wK5l" to="3ju5:~IFile.getParent()" resolve="getParent" />
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
                        <ref role="37wK5l" to="3ju5:~IFile.openInputStream()" resolve="openInputStream" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2GUZhq" id="3HdbmyVtzGR" role="3cqZAp">
                  <node concept="3clFbS" id="3HdbmyVtzGT" role="2GV8ay">
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
                  <node concept="3clFbS" id="3HdbmyVtzGU" role="2GVbov">
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
              <node concept="2OqwBi" id="3HdbmyVtcm8" role="3clFbw">
                <node concept="37vLTw" id="3HdbmyVtbAZ" role="2Oq$k0">
                  <ref role="3cqZAo" node="49FXEugJpd2" resolve="headerFile" />
                </node>
                <node concept="liA8E" id="3HdbmyVtd8b" role="2OqNvi">
                  <ref role="37wK5l" to="3ju5:~IFile.exists()" resolve="exists" />
                </node>
              </node>
              <node concept="9aQIb" id="3HdbmyVtvmq" role="9aQIa">
                <node concept="3clFbS" id="3HdbmyVtvmr" role="9aQI4">
                  <node concept="3clFbF" id="49FXEugKLMF" role="3cqZAp">
                    <node concept="2OqwBi" id="49FXEugKMAt" role="3clFbG">
                      <node concept="37vLTw" id="49FXEugKLMD" role="2Oq$k0">
                        <ref role="3cqZAo" node="49FXEugJpd2" resolve="headerFile" />
                      </node>
                      <node concept="liA8E" id="49FXEugKNn9" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.createNewFile()" resolve="createNewFile" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="SfApY" id="3HdbmyVtNK7" role="3cqZAp">
              <node concept="3clFbS" id="3HdbmyVtNK9" role="SfCbr">
                <node concept="3cpWs8" id="7OBD32HRIn0" role="3cqZAp">
                  <node concept="3cpWsn" id="7OBD32HRIn1" role="3cpWs9">
                    <property role="TrG5h" value="headerOS" />
                    <node concept="3uibUv" id="7OBD32HRIn2" role="1tU5fm">
                      <ref role="3uigEE" to="guwi:~OutputStream" resolve="OutputStream" />
                    </node>
                    <node concept="10Nm6u" id="7OBD32HZaQf" role="33vP2m" />
                  </node>
                </node>
                <node concept="2GUZhq" id="7OBD32HRVVi" role="3cqZAp">
                  <node concept="3clFbS" id="7OBD32HRoo4" role="2GV8ay">
                    <node concept="3clFbF" id="7OBD32HROkc" role="3cqZAp">
                      <node concept="37vLTI" id="7OBD32HROIz" role="3clFbG">
                        <node concept="2OqwBi" id="7OBD32HRQ6p" role="37vLTx">
                          <node concept="37vLTw" id="7OBD32HRPrL" role="2Oq$k0">
                            <ref role="3cqZAo" node="49FXEugJpd2" resolve="headerFile" />
                          </node>
                          <node concept="liA8E" id="7OBD32HRQP6" role="2OqNvi">
                            <ref role="37wK5l" to="3ju5:~IFile.openOutputStream()" resolve="openOutputStream" />
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
                        <property role="TrG5h" value="header" />
                        <node concept="3uibUv" id="7OBD32HX9Rb" role="1tU5fm">
                          <ref role="3uigEE" node="7OBD32HKFLJ" resolve="IEC61499ModelHeader" />
                        </node>
                        <node concept="2ShNRf" id="7OBD32HX9S3" role="33vP2m">
                          <node concept="1pGfFk" id="7OBD32HX9S4" role="2ShVmc">
                            <ref role="37wK5l" node="7OBD32HKFSn" resolve="IEC61499ModelHeader" />
                            <node concept="2OqwBi" id="7OBD32HX9S5" role="37wK5m">
                              <node concept="2OqwBi" id="7OBD32HX9S6" role="2Oq$k0">
                                <node concept="37vLTw" id="7OBD32HX9S7" role="2Oq$k0">
                                  <ref role="3cqZAo" node="7OBD32HWdgl" resolve="model" />
                                </node>
                                <node concept="liA8E" id="7OBD32HX9S8" role="2OqNvi">
                                  <ref role="37wK5l" to="g3l6:~SModelData.getModelName()" resolve="getModelName" />
                                </node>
                              </node>
                              <node concept="liA8E" id="7OBD32HX9S9" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModelName.getValue()" resolve="getValue" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="7OBD32HX9Sa" role="37wK5m">
                              <node concept="37vLTw" id="7OBD32HX9Sb" role="2Oq$k0">
                                <ref role="3cqZAo" node="7OBD32HWdgl" resolve="model" />
                              </node>
                              <node concept="liA8E" id="7OBD32HX9Sc" role="2OqNvi">
                                <ref role="37wK5l" to="w1kc:~SModel.getModelId()" resolve="getModelId" />
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
                          <ref role="3cqZAo" node="7OBD32HX9S2" resolve="header" />
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
                  <node concept="3clFbS" id="7OBD32HRVVl" role="2GVbov">
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
              <node concept="TDmWw" id="3HdbmyVtNKa" role="TEbGg">
                <node concept="3cpWsn" id="3HdbmyVtNKc" role="TDEfY">
                  <property role="TrG5h" value="exception" />
                  <node concept="3uibUv" id="3HdbmyVv5O_" role="1tU5fm">
                    <ref role="3uigEE" to="3qmy:~ModuleClassLoader$ModuleClassLoaderIsDisposedException" resolve="ModuleClassLoader.ModuleClassLoaderIsDisposedException" />
                  </node>
                </node>
                <node concept="3clFbS" id="3HdbmyVtNKg" role="TDEfX">
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
                              <ref role="37wK5l" to="3ju5:~IFile.openOutputStream()" resolve="openOutputStream" />
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
                      <node concept="37vLTw" id="61tRYRiYFE" role="2Oq$k0">
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
            <node concept="3clFbJ" id="49FXEugJM5S" role="3cqZAp">
              <node concept="3clFbS" id="49FXEugJM5U" role="3clFbx">
                <node concept="3clFbF" id="49FXEugJOR1" role="3cqZAp">
                  <node concept="1rXfSq" id="49FXEugJOQZ" role="3clFbG">
                    <ref role="37wK5l" node="7OBD32HJ$vU" resolve="saveFailed" />
                    <node concept="Xl_RD" id="49FXEugJPTV" role="37wK5m">
                      <property role="Xl_RC" value="Header file not in a model directory" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="49FXEugJO1r" role="3clFbw">
                <node concept="10Nm6u" id="49FXEugJOGJ" role="3uHU7w" />
                <node concept="37vLTw" id="49FXEugJMNG" role="3uHU7B">
                  <ref role="3cqZAo" node="49FXEugJrUC" resolve="modelDirectory" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2oFSEiUaxAv" role="3cqZAp" />
            <node concept="3SKdUt" id="2oFSEiUayux" role="3cqZAp">
              <node concept="1PaTwC" id="3D$ZgG8vrAf" role="3ndbpf">
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
                <property role="TrG5h" value="trackedFiles" />
                <node concept="2hMVRd" id="2oFSEiUa$b0" role="1tU5fm">
                  <node concept="3uibUv" id="23XkovVtOnD" role="2hN53Y">
                    <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                  </node>
                </node>
                <node concept="2ShNRf" id="2oFSEiUa_zp" role="33vP2m">
                  <node concept="2i4dXS" id="2oFSEiUaC5z" role="2ShVmc">
                    <node concept="3uibUv" id="23XkovVtTFP" role="HW$YZ">
                      <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="23XkovVtBpk" role="3cqZAp">
              <node concept="1rXfSq" id="23XkovVtBpi" role="3clFbG">
                <ref role="37wK5l" node="23XkovVsuCn" resolve="traverseModelDirectory" />
                <node concept="37vLTw" id="23XkovVum$f" role="37wK5m">
                  <ref role="3cqZAo" node="49FXEugJrUC" resolve="modelDirectory" />
                </node>
                <node concept="10Nm6u" id="23XkovWhu_Y" role="37wK5m" />
                <node concept="1bVj0M" id="23XkovVtEkR" role="37wK5m">
                  <node concept="3clFbS" id="23XkovVtEkT" role="1bW5cS">
                    <node concept="3clFbF" id="23XkovVtG1C" role="3cqZAp">
                      <node concept="2OqwBi" id="23XkovVtG$_" role="3clFbG">
                        <node concept="37vLTw" id="23XkovVtG1B" role="2Oq$k0">
                          <ref role="3cqZAo" node="2oFSEiUa$b7" resolve="trackedFiles" />
                        </node>
                        <node concept="TSZUe" id="23XkovVtL1w" role="2OqNvi">
                          <node concept="37vLTw" id="23XkovVtLq1" role="25WWJ7">
                            <ref role="3cqZAo" node="23XkovVtEoX" resolve="file" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="23XkovVPX73" role="3cqZAp">
                      <node concept="3clFbS" id="23XkovVPX75" role="3clFbx">
                        <node concept="YS8fn" id="23XkovVPXLE" role="3cqZAp">
                          <node concept="2ShNRf" id="23XkovVPY86" role="YScLw">
                            <node concept="1pGfFk" id="23XkovVPYTF" role="2ShVmc">
                              <ref role="37wK5l" to="guwi:~IOException.&lt;init&gt;()" resolve="IOException" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbT" id="23XkovVPXrM" role="3clFbw" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="23XkovVtEoX" role="1bW2Oz">
                    <property role="TrG5h" value="file" />
                    <node concept="3uibUv" id="23XkovVtNEo" role="1tU5fm">
                      <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                    </node>
                  </node>
                  <node concept="37vLTG" id="23XkovVtEMn" role="1bW2Oz">
                    <property role="TrG5h" value="name" />
                    <node concept="3uibUv" id="23XkovVtEXI" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="49FXEugK7bh" role="3cqZAp" />
            <node concept="3SKdUt" id="4KS_gINlrfl" role="3cqZAp">
              <node concept="1PaTwC" id="3D$ZgG8vrAj" role="3ndbpf">
                <node concept="3oM_SD" id="3D$ZgG8vrAk" role="1PaTwD">
                  <property role="3oM_SC" value="Create" />
                </node>
                <node concept="3oM_SD" id="3D$ZgG8vrAl" role="1PaTwD">
                  <property role="3oM_SC" value="model" />
                </node>
                <node concept="3oM_SD" id="3D$ZgG8vrAm" role="1PaTwD">
                  <property role="3oM_SC" value="generation" />
                </node>
                <node concept="3oM_SD" id="3D$ZgG8vrAn" role="1PaTwD">
                  <property role="3oM_SC" value="plan" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4KS_gINlqtr" role="3cqZAp" />
            <node concept="3cpWs8" id="49FXEugIg1K" role="3cqZAp">
              <node concept="3cpWsn" id="49FXEugIg1L" role="3cpWs9">
                <property role="TrG5h" value="repository" />
                <node concept="3uibUv" id="49FXEugIgje" role="1tU5fm">
                  <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                </node>
                <node concept="2OqwBi" id="49FXEugIg1M" role="33vP2m">
                  <node concept="2OqwBi" id="49FXEugIg1N" role="2Oq$k0">
                    <node concept="2YIFZM" id="49FXEugIg1O" role="2Oq$k0">
                      <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                      <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication()" resolve="getApplication" />
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
            <node concept="3cpWs8" id="4KS_gINkXCY" role="3cqZAp">
              <node concept="3cpWsn" id="4KS_gINkXCZ" role="3cpWs9">
                <property role="TrG5h" value="planTranslator" />
                <node concept="3uibUv" id="4KS_gINkXD0" role="1tU5fm">
                  <ref role="3uigEE" to="i30:1UVrAZQmEH$" resolve="GenPlanTranslator" />
                </node>
                <node concept="2ShNRf" id="4KS_gINkYAs" role="33vP2m">
                  <node concept="1pGfFk" id="4KS_gINlcji" role="2ShVmc">
                    <ref role="37wK5l" to="i30:1UVrAZQmUpe" resolve="GenPlanTranslator" />
                    <node concept="3B5_sB" id="4KS_gINlcng" role="37wK5m">
                      <ref role="3B5MYn" to="56jd:3HGlqba9RmA" resolve="IEC61499 Generation Plan" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4KS_gINlhkv" role="3cqZAp">
              <node concept="3cpWsn" id="4KS_gINlhkw" role="3cpWs9">
                <property role="TrG5h" value="planBuilder" />
                <node concept="3uibUv" id="4KS_gINlhkx" role="1tU5fm">
                  <ref role="3uigEE" to="tft2:~RegularPlanBuilder" resolve="RegularPlanBuilder" />
                </node>
                <node concept="2ShNRf" id="4KS_gINliah" role="33vP2m">
                  <node concept="1pGfFk" id="4KS_gINliJX" role="2ShVmc">
                    <ref role="37wK5l" to="tft2:~RegularPlanBuilder.&lt;init&gt;(jetbrains.mps.smodel.language.LanguageRegistry,java.util.Collection)" resolve="RegularPlanBuilder" />
                    <node concept="2YIFZM" id="4KS_gINlkdv" role="37wK5m">
                      <ref role="37wK5l" to="vndm:~LanguageRegistry.getInstance(org.jetbrains.mps.openapi.module.SRepository)" resolve="getInstance" />
                      <ref role="1Pybhc" to="vndm:~LanguageRegistry" resolve="LanguageRegistry" />
                      <node concept="37vLTw" id="4KS_gINlkrN" role="37wK5m">
                        <ref role="3cqZAo" node="49FXEugIg1L" resolve="repository" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="4KS_gINlkBV" role="37wK5m">
                      <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                      <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                      <node concept="3uibUv" id="4KS_gINlkVe" role="3PaCim">
                        <ref role="3uigEE" to="r99j:~TemplateModule" resolve="TemplateModule" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4KS_gINllLy" role="3cqZAp">
              <node concept="2OqwBi" id="4KS_gINlm_Z" role="3clFbG">
                <node concept="37vLTw" id="4KS_gINllLw" role="2Oq$k0">
                  <ref role="3cqZAo" node="4KS_gINkXCZ" resolve="planTranslator" />
                </node>
                <node concept="liA8E" id="4KS_gINls6f" role="2OqNvi">
                  <ref role="37wK5l" to="i30:1UVrAZQmU_x" resolve="feed" />
                  <node concept="37vLTw" id="4KS_gINlsaw" role="37wK5m">
                    <ref role="3cqZAo" node="4KS_gINlhkw" resolve="planBuilder" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4KS_gINlw15" role="3cqZAp">
              <node concept="3cpWsn" id="4KS_gINlw16" role="3cpWs9">
                <property role="TrG5h" value="generationPlan" />
                <node concept="3uibUv" id="4KS_gINlw0T" role="1tU5fm">
                  <ref role="3uigEE" to="ap4t:~ModelGenerationPlan" resolve="ModelGenerationPlan" />
                </node>
                <node concept="2OqwBi" id="4KS_gINlw17" role="33vP2m">
                  <node concept="37vLTw" id="4KS_gINlw18" role="2Oq$k0">
                    <ref role="3cqZAo" node="4KS_gINlhkw" resolve="planBuilder" />
                  </node>
                  <node concept="liA8E" id="4KS_gINlw19" role="2OqNvi">
                    <ref role="37wK5l" to="tft2:~RegularPlanBuilder.wrapUp(jetbrains.mps.generator.plan.PlanIdentity)" resolve="wrapUp" />
                    <node concept="2ShNRf" id="4KS_gINlw1a" role="37wK5m">
                      <node concept="1pGfFk" id="4KS_gINlw1b" role="2ShVmc">
                        <ref role="37wK5l" to="cgca:~PlanIdentity.&lt;init&gt;(java.lang.String)" resolve="PlanIdentity" />
                        <node concept="Xl_RD" id="4KS_gINlw1c" role="37wK5m">
                          <property role="Xl_RC" value="IEC61499 Generation Plan" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4KS_gINlo7o" role="3cqZAp" />
            <node concept="3SKdUt" id="49FXEugK7YK" role="3cqZAp">
              <node concept="1PaTwC" id="3D$ZgG8vrAo" role="3ndbpf">
                <node concept="3oM_SD" id="3D$ZgG8vrAp" role="1PaTwD">
                  <property role="3oM_SC" value="Generate" />
                </node>
                <node concept="3oM_SD" id="3D$ZgG8vrAq" role="1PaTwD">
                  <property role="3oM_SC" value="model" />
                </node>
                <node concept="3oM_SD" id="3D$ZgG8vrAr" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="3D$ZgG8vrAs" role="1PaTwD">
                  <property role="3oM_SC" value="xml" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="4KS_gINl$6y" role="3cqZAp" />
            <node concept="3cpWs8" id="yHpuGJo1iM" role="3cqZAp">
              <node concept="3cpWsn" id="yHpuGJo1iN" role="3cpWs9">
                <property role="TrG5h" value="md" />
                <node concept="3uibUv" id="yHpuGJo1iO" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModel" resolve="SModel" />
                </node>
                <node concept="2OqwBi" id="yHpuGJo20g" role="33vP2m">
                  <node concept="37vLTw" id="7OBD32HYJd1" role="2Oq$k0">
                    <ref role="3cqZAo" node="7OBD32HWdgl" resolve="model" />
                  </node>
                  <node concept="liA8E" id="yHpuGJo20k" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~SModel.getModelDescriptor()" resolve="getModelDescriptor" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="49FXEugIh0r" role="3cqZAp">
              <node concept="3cpWsn" id="49FXEugIh0s" role="3cpWs9">
                <property role="TrG5h" value="options" />
                <node concept="3uibUv" id="49FXEugIh0t" role="1tU5fm">
                  <ref role="3uigEE" to="ap4t:~GenerationOptions" resolve="GenerationOptions" />
                </node>
                <node concept="2OqwBi" id="49FXEugIhHU" role="33vP2m">
                  <node concept="2OqwBi" id="4KS_gINkPpB" role="2Oq$k0">
                    <node concept="2YIFZM" id="49FXEugIh$n" role="2Oq$k0">
                      <ref role="37wK5l" to="ap4t:~GenerationOptions.getDefaults()" resolve="getDefaults" />
                      <ref role="1Pybhc" to="ap4t:~GenerationOptions" resolve="GenerationOptions" />
                    </node>
                    <node concept="liA8E" id="4KS_gINkPIY" role="2OqNvi">
                      <ref role="37wK5l" to="ap4t:~GenerationOptions$OptionsBuilder.customPlan(org.jetbrains.mps.openapi.model.SModel,jetbrains.mps.generator.ModelGenerationPlan)" resolve="customPlan" />
                      <node concept="37vLTw" id="4KS_gINkRd9" role="37wK5m">
                        <ref role="3cqZAo" node="yHpuGJo1iN" resolve="md" />
                      </node>
                      <node concept="37vLTw" id="4KS_gINlw1d" role="37wK5m">
                        <ref role="3cqZAo" node="4KS_gINlw16" resolve="generationPlan" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="49FXEugIi66" role="2OqNvi">
                    <ref role="37wK5l" to="ap4t:~GenerationOptions$OptionsBuilder.create()" resolve="create" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7DSsXPF_RAs" role="3cqZAp" />
            <node concept="3cpWs8" id="7bV8hH5xsRi" role="3cqZAp">
              <node concept="3cpWsn" id="7bV8hH5xsRj" role="3cpWs9">
                <property role="TrG5h" value="generationFacade" />
                <node concept="3uibUv" id="7bV8hH5xkbs" role="1tU5fm">
                  <ref role="3uigEE" to="ap4t:~GenerationFacade" resolve="GenerationFacade" />
                </node>
                <node concept="2OqwBi" id="7bV8hH5xsRk" role="33vP2m">
                  <node concept="2OqwBi" id="7bV8hH5xsRl" role="2Oq$k0">
                    <node concept="2ShNRf" id="7bV8hH5xsRm" role="2Oq$k0">
                      <node concept="1pGfFk" id="7bV8hH5xsRn" role="2ShVmc">
                        <ref role="37wK5l" to="ap4t:~GenerationFacade.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository,jetbrains.mps.generator.GenerationOptions)" resolve="GenerationFacade" />
                        <node concept="37vLTw" id="7bV8hH5xsRo" role="37wK5m">
                          <ref role="3cqZAo" node="49FXEugIg1L" resolve="repository" />
                        </node>
                        <node concept="37vLTw" id="7bV8hH5xsRp" role="37wK5m">
                          <ref role="3cqZAo" node="49FXEugIh0s" resolve="options" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7bV8hH5xsRq" role="2OqNvi">
                      <ref role="37wK5l" to="ap4t:~GenerationFacade.messages(jetbrains.mps.messages.IMessageHandler)" resolve="messages" />
                      <node concept="2ShNRf" id="6DsYnaxPLp_" role="37wK5m">
                        <node concept="YeOm9" id="6DsYnaxPOzX" role="2ShVmc">
                          <node concept="1Y3b0j" id="6DsYnaxPO$0" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="1Y3XeK" to="et5u:~IMessageHandler" resolve="IMessageHandler" />
                            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                            <node concept="3Tm1VV" id="6DsYnaxPO$1" role="1B3o_S" />
                            <node concept="3clFb_" id="6DsYnaxPO$6" role="jymVt">
                              <property role="TrG5h" value="handle" />
                              <node concept="3Tm1VV" id="6DsYnaxPO$7" role="1B3o_S" />
                              <node concept="3cqZAl" id="6DsYnaxPO$9" role="3clF45" />
                              <node concept="37vLTG" id="6DsYnaxPO$a" role="3clF46">
                                <property role="TrG5h" value="message" />
                                <node concept="3uibUv" id="6DsYnaxPO$b" role="1tU5fm">
                                  <ref role="3uigEE" to="et5u:~IMessage" resolve="IMessage" />
                                </node>
                                <node concept="2AHcQZ" id="6DsYnaxPO$c" role="2AJF6D">
                                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="6DsYnaxPO$d" role="3clF47">
                                <node concept="3clFbJ" id="6DsYnaxPSTN" role="3cqZAp">
                                  <node concept="17R0WA" id="6DsYnaxPWIa" role="3clFbw">
                                    <node concept="Rm8GO" id="6DsYnaxPYLU" role="3uHU7w">
                                      <ref role="Rm8GQ" to="et5u:~MessageKind.ERROR" resolve="ERROR" />
                                      <ref role="1Px2BO" to="et5u:~MessageKind" resolve="MessageKind" />
                                    </node>
                                    <node concept="2OqwBi" id="6DsYnaxPUDf" role="3uHU7B">
                                      <node concept="37vLTw" id="6DsYnaxPTIj" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6DsYnaxPO$a" resolve="message" />
                                      </node>
                                      <node concept="liA8E" id="6DsYnaxPVz4" role="2OqNvi">
                                        <ref role="37wK5l" to="et5u:~IMessage.getKind()" resolve="getKind" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="6DsYnaxPSTP" role="3clFbx">
                                    <node concept="2xdQw9" id="6DsYnaxPZBR" role="3cqZAp">
                                      <property role="2xdLsb" value="gZ5fh_4/error" />
                                      <node concept="2OqwBi" id="6DsYnaxQ1kL" role="9lYJi">
                                        <node concept="37vLTw" id="6DsYnaxQ1fF" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6DsYnaxPO$a" resolve="message" />
                                        </node>
                                        <node concept="liA8E" id="6DsYnaxQ2fz" role="2OqNvi">
                                          <ref role="37wK5l" to="et5u:~IMessage.getText()" resolve="getText" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="6DsYnaxQ5cO" role="9lYJj">
                                        <node concept="37vLTw" id="6DsYnaxQ57n" role="2Oq$k0">
                                          <ref role="3cqZAo" node="6DsYnaxPO$a" resolve="message" />
                                        </node>
                                        <node concept="liA8E" id="6DsYnaxQ68m" role="2OqNvi">
                                          <ref role="37wK5l" to="et5u:~IMessage.getException()" resolve="getException" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2AHcQZ" id="6DsYnaxPO$f" role="2AJF6D">
                                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="7bV8hH5xsRx" role="2OqNvi">
                    <ref role="37wK5l" to="ap4t:~GenerationFacade.transients(jetbrains.mps.generator.TransientModelsProvider)" resolve="transients" />
                    <node concept="2ShNRf" id="7bV8hH5xsRy" role="37wK5m">
                      <node concept="1pGfFk" id="7bV8hH5xsRz" role="2ShVmc">
                        <ref role="37wK5l" to="ap4t:~TransientModelsProvider.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository,jetbrains.mps.generator.TransientModelsProvider$TransientSwapOwner)" resolve="TransientModelsProvider" />
                        <node concept="37vLTw" id="7bV8hH5xsR$" role="37wK5m">
                          <ref role="3cqZAo" node="49FXEugIg1L" resolve="repository" />
                        </node>
                        <node concept="10Nm6u" id="7bV8hH5xsR_" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7bV8hH5xDgO" role="3cqZAp" />
            <node concept="3cpWs8" id="49FXEugIx2Z" role="3cqZAp">
              <node concept="3cpWsn" id="49FXEugIx30" role="3cpWs9">
                <property role="TrG5h" value="status" />
                <node concept="3uibUv" id="49FXEugIx2D" role="1tU5fm">
                  <ref role="3uigEE" to="ap4t:~GenerationStatus" resolve="GenerationStatus" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7bV8hH5xQWX" role="3cqZAp">
              <node concept="37vLTI" id="7bV8hH5xQWZ" role="3clFbG">
                <node concept="2OqwBi" id="49FXEugIx31" role="37vLTx">
                  <node concept="37vLTw" id="7bV8hH5xsRA" role="2Oq$k0">
                    <ref role="3cqZAo" node="7bV8hH5xsRj" resolve="generationFacade" />
                  </node>
                  <node concept="liA8E" id="49FXEugIx3c" role="2OqNvi">
                    <ref role="37wK5l" to="ap4t:~GenerationFacade.process(org.jetbrains.mps.openapi.util.ProgressMonitor,org.jetbrains.mps.openapi.model.SModel)" resolve="process" />
                    <node concept="2ShNRf" id="49FXEugIx3d" role="37wK5m">
                      <node concept="1pGfFk" id="49FXEugIx3e" role="2ShVmc">
                        <ref role="37wK5l" to="mk8z:~EmptyProgressMonitor.&lt;init&gt;()" resolve="EmptyProgressMonitor" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="yHpuGJo7j$" role="37wK5m">
                      <ref role="3cqZAo" node="yHpuGJo1iN" resolve="md" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="7bV8hH5xQX3" role="37vLTJ">
                  <ref role="3cqZAo" node="49FXEugIx30" resolve="status" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="49FXEugK8Ic" role="3cqZAp" />
            <node concept="3clFbJ" id="7DSsXPFz177" role="3cqZAp">
              <node concept="3clFbS" id="7DSsXPFz179" role="3clFbx">
                <node concept="3clFbF" id="7DSsXPFzT_y" role="3cqZAp">
                  <node concept="1rXfSq" id="7DSsXPFzT_z" role="3clFbG">
                    <ref role="37wK5l" node="7OBD32HJ$vU" resolve="saveFailed" />
                    <node concept="3cpWs3" id="7DSsXPFzT_$" role="37wK5m">
                      <node concept="Xl_RD" id="7DSsXPFzT_C" role="3uHU7B">
                        <property role="Xl_RC" value="Failed to generate xml documents for model " />
                      </node>
                      <node concept="2OqwBi" id="7DSsXPF$1oF" role="3uHU7w">
                        <node concept="2OqwBi" id="7DSsXPFzZYp" role="2Oq$k0">
                          <node concept="37vLTw" id="7DSsXPFzZM_" role="2Oq$k0">
                            <ref role="3cqZAo" node="yHpuGJo1iN" resolve="md" />
                          </node>
                          <node concept="liA8E" id="7DSsXPF$0sY" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SModel.getName()" resolve="getName" />
                          </node>
                        </node>
                        <node concept="liA8E" id="7DSsXPF$1SV" role="2OqNvi">
                          <ref role="37wK5l" to="mhbf:~SModelName.getLongName()" resolve="getLongName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="7DSsXPFzS1L" role="3clFbw">
                <node concept="2OqwBi" id="7DSsXPFzbQX" role="3uHU7B">
                  <node concept="37vLTw" id="7DSsXPFz3Sf" role="2Oq$k0">
                    <ref role="3cqZAo" node="49FXEugIx30" resolve="status" />
                  </node>
                  <node concept="liA8E" id="7DSsXPFzGZU" role="2OqNvi">
                    <ref role="37wK5l" to="ap4t:~GenerationStatus.getCode()" resolve="getCode" />
                  </node>
                </node>
                <node concept="Rm8GO" id="7DSsXPFzT9k" role="3uHU7w">
                  <ref role="Rm8GQ" to="18ew:~IStatus$Code.ERROR" resolve="ERROR" />
                  <ref role="1Px2BO" to="18ew:~IStatus$Code" resolve="IStatus.Code" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7DSsXPF$ouQ" role="3cqZAp" />
            <node concept="3SKdUt" id="49FXEugK9_P" role="3cqZAp">
              <node concept="1PaTwC" id="3D$ZgG8vrAt" role="3ndbpf">
                <node concept="3oM_SD" id="3D$ZgG8vrAu" role="1PaTwD">
                  <property role="3oM_SC" value="Save" />
                </node>
                <node concept="3oM_SD" id="3D$ZgG8vrAv" role="1PaTwD">
                  <property role="3oM_SC" value="xml" />
                </node>
                <node concept="3oM_SD" id="3D$ZgG8vrAw" role="1PaTwD">
                  <property role="3oM_SC" value="to" />
                </node>
                <node concept="3oM_SD" id="3D$ZgG8vrAx" role="1PaTwD">
                  <property role="3oM_SC" value="files" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="49FXEugK8MP" role="3cqZAp" />
            <node concept="3cpWs8" id="49FXEugIzLW" role="3cqZAp">
              <node concept="3cpWsn" id="49FXEugIzLX" role="3cpWs9">
                <property role="TrG5h" value="xmlModel" />
                <node concept="H_c77" id="23XkovVwYIX" role="1tU5fm" />
                <node concept="2OqwBi" id="49FXEugIzLY" role="33vP2m">
                  <node concept="37vLTw" id="49FXEugIzLZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="49FXEugIx30" resolve="status" />
                  </node>
                  <node concept="liA8E" id="49FXEugIzM0" role="2OqNvi">
                    <ref role="37wK5l" to="ap4t:~GenerationStatus.getOutputModel()" resolve="getOutputModel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="49FXEugI_p1" role="3cqZAp">
              <node concept="2GrKxI" id="49FXEugI_p3" role="2Gsz3X">
                <property role="TrG5h" value="rootNode" />
              </node>
              <node concept="2OqwBi" id="49FXEugIACY" role="2GsD0m">
                <node concept="37vLTw" id="49FXEugIAix" role="2Oq$k0">
                  <ref role="3cqZAo" node="49FXEugIzLX" resolve="xmlModel" />
                </node>
                <node concept="2RRcyG" id="23XkovVwZqa" role="2OqNvi" />
              </node>
              <node concept="3clFbS" id="49FXEugI_p7" role="2LFqv$">
                <node concept="3cpWs8" id="23XkovVHE74" role="3cqZAp">
                  <node concept="3cpWsn" id="23XkovVHE75" role="3cpWs9">
                    <property role="TrG5h" value="xmlFileNode" />
                    <node concept="3Tqbb2" id="23XkovVHE70" role="1tU5fm">
                      <ref role="ehGHo" to="iuxj:5M4a$b5j9j0" resolve="XmlFile" />
                    </node>
                    <node concept="10QFUN" id="23XkovVHE76" role="33vP2m">
                      <node concept="3Tqbb2" id="23XkovVHE77" role="10QFUM">
                        <ref role="ehGHo" to="iuxj:5M4a$b5j9j0" resolve="XmlFile" />
                      </node>
                      <node concept="2GrUjf" id="23XkovVHE78" role="10QFUP">
                        <ref role="2Gs0qQ" node="49FXEugI_p3" resolve="rootNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="23XkovVIfie" role="3cqZAp" />
                <node concept="3cpWs8" id="49FXEugICkM" role="3cqZAp">
                  <node concept="3cpWsn" id="49FXEugICkN" role="3cpWs9">
                    <property role="TrG5h" value="rtu" />
                    <node concept="3uibUv" id="49FXEugICkO" role="1tU5fm">
                      <ref role="3uigEE" to="kpbf:~RegularTextUnit" resolve="RegularTextUnit" />
                    </node>
                    <node concept="2ShNRf" id="49FXEugICxw" role="33vP2m">
                      <node concept="1pGfFk" id="49FXEugID8T" role="2ShVmc">
                        <ref role="37wK5l" to="kpbf:~RegularTextUnit.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode,java.lang.String)" resolve="RegularTextUnit" />
                        <node concept="2GrUjf" id="49FXEugIDe8" role="37wK5m">
                          <ref role="2Gs0qQ" node="49FXEugI_p3" resolve="rootNode" />
                        </node>
                        <node concept="2OqwBi" id="49FXEugIDXm" role="37wK5m">
                          <node concept="37vLTw" id="23XkovVIhzL" role="2Oq$k0">
                            <ref role="3cqZAo" node="23XkovVHE75" resolve="xmlFileNode" />
                          </node>
                          <node concept="3TrcHB" id="23XkovVKR0L" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="49FXEugIFnH" role="3cqZAp">
                  <node concept="2OqwBi" id="49FXEugIFAT" role="3clFbG">
                    <node concept="37vLTw" id="49FXEugIFnF" role="2Oq$k0">
                      <ref role="3cqZAo" node="49FXEugICkN" resolve="rtu" />
                    </node>
                    <node concept="liA8E" id="49FXEugIG5i" role="2OqNvi">
                      <ref role="37wK5l" to="kpbf:~RegularTextUnit.generate()" resolve="generate" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="49FXEugIH$1" role="3cqZAp">
                  <node concept="3clFbS" id="49FXEugIH$3" role="3clFbx">
                    <node concept="2Gpval" id="23XkovWyLqS" role="3cqZAp">
                      <node concept="2GrKxI" id="23XkovWyLqU" role="2Gsz3X">
                        <property role="TrG5h" value="msg" />
                      </node>
                      <node concept="2OqwBi" id="23XkovWyMnd" role="2GsD0m">
                        <node concept="37vLTw" id="23XkovWyM8X" role="2Oq$k0">
                          <ref role="3cqZAo" node="49FXEugICkN" resolve="rtu" />
                        </node>
                        <node concept="liA8E" id="23XkovW_n2f" role="2OqNvi">
                          <ref role="37wK5l" to="kpbf:~RegularTextUnit.getMessages()" resolve="getMessages" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="23XkovWyLqY" role="2LFqv$">
                        <node concept="3clFbF" id="23XkovWAPjA" role="3cqZAp">
                          <node concept="2OqwBi" id="23XkovWAPWf" role="3clFbG">
                            <node concept="10M0yZ" id="23XkovWAPCH" role="2Oq$k0">
                              <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                            </node>
                            <node concept="liA8E" id="23XkovWAQAw" role="2OqNvi">
                              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String)" resolve="println" />
                              <node concept="3cpWs3" id="23XkovWDz0f" role="37wK5m">
                                <node concept="Xl_RD" id="23XkovWDzw0" role="3uHU7B">
                                  <property role="Xl_RC" value="Message during text generation: " />
                                </node>
                                <node concept="2OqwBi" id="23XkovWARgq" role="3uHU7w">
                                  <node concept="2GrUjf" id="23XkovWAQW1" role="2Oq$k0">
                                    <ref role="2Gs0qQ" node="23XkovWyLqU" resolve="msg" />
                                  </node>
                                  <node concept="liA8E" id="23XkovWDwWY" role="2OqNvi">
                                    <ref role="37wK5l" to="et5u:~IMessage.getText()" resolve="getText" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="23XkovW_C37" role="3cqZAp">
                          <node concept="3cpWsn" id="23XkovW_C38" role="3cpWs9">
                            <property role="TrG5h" value="exception" />
                            <node concept="3uibUv" id="23XkovW_C0f" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                            </node>
                            <node concept="2OqwBi" id="23XkovW_C39" role="33vP2m">
                              <node concept="2GrUjf" id="23XkovW_C3a" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="23XkovWyLqU" resolve="msg" />
                              </node>
                              <node concept="liA8E" id="23XkovW_C3b" role="2OqNvi">
                                <ref role="37wK5l" to="et5u:~IMessage.getException()" resolve="getException" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="23XkovW_D5d" role="3cqZAp">
                          <node concept="3clFbS" id="23XkovW_D5f" role="3clFbx">
                            <node concept="3clFbF" id="23XkovW_nqk" role="3cqZAp">
                              <node concept="2OqwBi" id="23XkovW_oK6" role="3clFbG">
                                <node concept="37vLTw" id="23XkovW_C3c" role="2Oq$k0">
                                  <ref role="3cqZAo" node="23XkovW_C38" resolve="exception" />
                                </node>
                                <node concept="liA8E" id="23XkovW_prw" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace()" resolve="printStackTrace" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3y3z36" id="23XkovWAqmD" role="3clFbw">
                            <node concept="37vLTw" id="23XkovW_DqT" role="3uHU7B">
                              <ref role="3cqZAo" node="23XkovW_C38" resolve="exception" />
                            </node>
                            <node concept="10Nm6u" id="23XkovWAplD" role="3uHU7w" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="49FXEugJG6K" role="3cqZAp">
                      <node concept="1rXfSq" id="49FXEugJG6J" role="3clFbG">
                        <ref role="37wK5l" node="7OBD32HJ$vU" resolve="saveFailed" />
                        <node concept="3cpWs3" id="49FXEugIVwb" role="37wK5m">
                          <node concept="2OqwBi" id="49FXEugIVOy" role="3uHU7w">
                            <node concept="37vLTw" id="23XkovVIiS0" role="2Oq$k0">
                              <ref role="3cqZAo" node="23XkovVHE75" resolve="xmlFileNode" />
                            </node>
                            <node concept="3TrcHB" id="23XkovVNh83" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="Xl_RD" id="49FXEugITPY" role="3uHU7B">
                            <property role="Xl_RC" value="Failed to generate xml file for root node " />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3y3z36" id="49FXEugIRe4" role="3clFbw">
                    <node concept="2OqwBi" id="49FXEugIHTz" role="3uHU7B">
                      <node concept="37vLTw" id="49FXEugIHD8" role="2Oq$k0">
                        <ref role="3cqZAo" node="49FXEugICkN" resolve="rtu" />
                      </node>
                      <node concept="liA8E" id="49FXEugIInY" role="2OqNvi">
                        <ref role="37wK5l" to="kpbf:~RegularTextUnit.getState()" resolve="getState" />
                      </node>
                    </node>
                    <node concept="Rm8GO" id="49FXEugISWF" role="3uHU7w">
                      <ref role="1Px2BO" to="ao3:~TextUnit$Status" resolve="TextUnit.Status" />
                      <ref role="Rm8GQ" to="ao3:~TextUnit$Status.Generated" resolve="Generated" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49FXEugJiSu" role="3cqZAp">
                  <node concept="3cpWsn" id="49FXEugJiSv" role="3cpWs9">
                    <property role="TrG5h" value="bytes" />
                    <node concept="10Q1$e" id="49FXEugJiRm" role="1tU5fm">
                      <node concept="10PrrI" id="49FXEugJiRp" role="10Q1$1" />
                    </node>
                    <node concept="2OqwBi" id="49FXEugJiSw" role="33vP2m">
                      <node concept="37vLTw" id="49FXEugJiSx" role="2Oq$k0">
                        <ref role="3cqZAo" node="49FXEugICkN" resolve="rtu" />
                      </node>
                      <node concept="liA8E" id="49FXEugJiSy" role="2OqNvi">
                        <ref role="37wK5l" to="kpbf:~RegularTextUnit.getBytes()" resolve="getBytes" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2oFSEiUav8r" role="3cqZAp">
                  <node concept="3cpWsn" id="2oFSEiUav8s" role="3cpWs9">
                    <property role="TrG5h" value="fileName" />
                    <node concept="17QB3L" id="2oFSEiUav7I" role="1tU5fm" />
                    <node concept="3cpWs3" id="2oFSEiUav8t" role="33vP2m">
                      <node concept="3cpWs3" id="2oFSEiUav8u" role="3uHU7B">
                        <node concept="Xl_RD" id="2oFSEiUav8v" role="3uHU7w">
                          <property role="Xl_RC" value="." />
                        </node>
                        <node concept="3cpWs3" id="23XkovWmcr7" role="3uHU7B">
                          <node concept="2OqwBi" id="23XkovWjhdp" role="3uHU7w">
                            <node concept="37vLTw" id="23XkovWjhdq" role="2Oq$k0">
                              <ref role="3cqZAo" node="23XkovVHE75" resolve="xmlFileNode" />
                            </node>
                            <node concept="3TrcHB" id="23XkovWjhdr" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="3cpWs3" id="23XkovWjhdg" role="3uHU7B">
                            <node concept="2OqwBi" id="23XkovWjhdh" role="3uHU7B">
                              <node concept="liA8E" id="23XkovWjhdi" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                                <node concept="Xl_RD" id="23XkovWjhdj" role="37wK5m">
                                  <property role="Xl_RC" value="." />
                                </node>
                                <node concept="Xl_RD" id="23XkovWjhdk" role="37wK5m">
                                  <property role="Xl_RC" value="/" />
                                </node>
                              </node>
                              <node concept="2YIFZM" id="23XkovWjhdl" role="2Oq$k0">
                                <ref role="1Pybhc" to="18ew:~StringUtil" resolve="StringUtil" />
                                <ref role="37wK5l" to="18ew:~StringUtil.emptyIfNull(java.lang.String)" resolve="emptyIfNull" />
                                <node concept="2OqwBi" id="23XkovWjhdm" role="37wK5m">
                                  <node concept="37vLTw" id="23XkovWjhdn" role="2Oq$k0">
                                    <ref role="3cqZAo" node="23XkovVHE75" resolve="xmlFileNode" />
                                  </node>
                                  <node concept="3TrcHB" id="23XkovWjhdo" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="23XkovWme2$" role="3uHU7w">
                              <property role="Xl_RC" value="/" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1rXfSq" id="2oFSEiUav8z" role="3uHU7w">
                        <ref role="37wK5l" node="2ByE74kr0Ic" resolve="getExtension" />
                        <node concept="37vLTw" id="23XkovVHE79" role="37wK5m">
                          <ref role="3cqZAo" node="23XkovVHE75" resolve="xmlFileNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="23XkovVHVDQ" role="3cqZAp">
                  <node concept="3cpWsn" id="23XkovVHVDR" role="3cpWs9">
                    <property role="TrG5h" value="file" />
                    <node concept="3uibUv" id="23XkovVHVBj" role="1tU5fm">
                      <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                    </node>
                    <node concept="2OqwBi" id="23XkovVHVDS" role="33vP2m">
                      <node concept="37vLTw" id="23XkovVHVDT" role="2Oq$k0">
                        <ref role="3cqZAo" node="49FXEugJrUC" resolve="modelDirectory" />
                      </node>
                      <node concept="liA8E" id="23XkovVHVDU" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.getDescendant(java.lang.String)" resolve="getDescendant" />
                        <node concept="37vLTw" id="23XkovVHVDV" role="37wK5m">
                          <ref role="3cqZAo" node="2oFSEiUav8s" resolve="fileName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="2oFSEiUbV_7" role="3cqZAp">
                  <node concept="2OqwBi" id="2oFSEiUbWOz" role="3clFbG">
                    <node concept="37vLTw" id="2oFSEiUbV_5" role="2Oq$k0">
                      <ref role="3cqZAo" node="2oFSEiUa$b7" resolve="trackedFiles" />
                    </node>
                    <node concept="3dhRuq" id="2oFSEiUbZlX" role="2OqNvi">
                      <node concept="37vLTw" id="23XkovVHVDW" role="25WWJ7">
                        <ref role="3cqZAo" node="23XkovVHVDR" resolve="file" />
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
                    <node concept="2ShNRf" id="49FXEugJmzx" role="33vP2m">
                      <node concept="1pGfFk" id="49FXEugJnbq" role="2ShVmc">
                        <ref role="37wK5l" to="guwi:~BufferedOutputStream.&lt;init&gt;(java.io.OutputStream)" resolve="BufferedOutputStream" />
                        <node concept="2OqwBi" id="49FXEugJtAh" role="37wK5m">
                          <node concept="37vLTw" id="23XkovVHVDX" role="2Oq$k0">
                            <ref role="3cqZAo" node="23XkovVHVDR" resolve="file" />
                          </node>
                          <node concept="liA8E" id="49FXEugJtMQ" role="2OqNvi">
                            <ref role="37wK5l" to="3ju5:~IFile.openOutputStream()" resolve="openOutputStream" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2GUZhq" id="49FXEugK5lz" role="3cqZAp">
                  <node concept="3clFbS" id="49FXEugK1Mc" role="2GV8ay">
                    <node concept="3clFbF" id="49FXEugK2vF" role="3cqZAp">
                      <node concept="2OqwBi" id="49FXEugK2Nw" role="3clFbG">
                        <node concept="37vLTw" id="49FXEugK2vD" role="2Oq$k0">
                          <ref role="3cqZAo" node="49FXEugJlUm" resolve="stream" />
                        </node>
                        <node concept="liA8E" id="49FXEugK39W" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~OutputStream.write(byte[])" resolve="write" />
                          <node concept="37vLTw" id="49FXEugK45S" role="37wK5m">
                            <ref role="3cqZAo" node="49FXEugJiSv" resolve="bytes" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="Jf70Yc3L9w" role="3cqZAp">
                      <node concept="2OqwBi" id="Jf70Yc3Lrj" role="3clFbG">
                        <node concept="37vLTw" id="Jf70Yc3L9u" role="2Oq$k0">
                          <ref role="3cqZAo" node="49FXEugJlUm" resolve="stream" />
                        </node>
                        <node concept="liA8E" id="Jf70Yc3Mfb" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~OutputStream.flush()" resolve="flush" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="49FXEugK5lA" role="2GVbov">
                    <node concept="3clFbF" id="49FXEugK6XB" role="3cqZAp">
                      <node concept="2YIFZM" id="49FXEugK726" role="3clFbG">
                        <ref role="1Pybhc" to="18ew:~FileUtil" resolve="FileUtil" />
                        <ref role="37wK5l" to="18ew:~FileUtil.closeFileSafe(java.io.Closeable)" resolve="closeFileSafe" />
                        <node concept="37vLTw" id="49FXEugK76R" role="37wK5m">
                          <ref role="3cqZAo" node="49FXEugJlUm" resolve="stream" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2oFSEiUc0ml" role="3cqZAp" />
            <node concept="3SKdUt" id="2oFSEiUc1Hc" role="3cqZAp">
              <node concept="1PaTwC" id="3D$ZgG8vrAy" role="3ndbpf">
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
                      <ref role="37wK5l" to="3ju5:~IFile.delete()" resolve="delete" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="2oFSEiUcgOW" role="2GsD0m">
                <ref role="3cqZAo" node="2oFSEiUa$b7" resolve="trackedFiles" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="23XkovVRGsx" role="TEbGg">
            <node concept="3cpWsn" id="23XkovVRGsy" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="23XkovVRNQv" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="23XkovVRGs$" role="TDEfX">
              <node concept="RRSsy" id="7H$5i_Y5CWB" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="7H$5i_Y5CWD" role="RRSoy">
                  <property role="Xl_RC" value="Exception raised during save" />
                </node>
                <node concept="37vLTw" id="7H$5i_Y5CWF" role="RRSow">
                  <ref role="3cqZAo" node="23XkovVRGsy" resolve="e" />
                </node>
              </node>
              <node concept="YS8fn" id="23XkovVRQ9O" role="3cqZAp">
                <node concept="37vLTw" id="23XkovVRQat" role="YScLw">
                  <ref role="3cqZAo" node="23XkovVRGsy" resolve="e" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="23XkovWn0_T" role="TEbGg">
            <node concept="3cpWsn" id="23XkovWn0_U" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="23XkovWn2GK" role="1tU5fm">
                <ref role="3uigEE" to="dush:~ModelSaveException" resolve="ModelSaveException" />
              </node>
            </node>
            <node concept="3clFbS" id="23XkovWn0_W" role="TDEfX">
              <node concept="RRSsy" id="7H$5i_Y5K0Z" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="7H$5i_Y5K10" role="RRSoy">
                  <property role="Xl_RC" value="Exception raised during save" />
                </node>
                <node concept="37vLTw" id="7H$5i_Y5K11" role="RRSow">
                  <ref role="3cqZAo" node="23XkovWn0_U" resolve="e" />
                </node>
              </node>
              <node concept="YS8fn" id="23XkovWn5nt" role="3cqZAp">
                <node concept="37vLTw" id="23XkovWn5F$" role="YScLw">
                  <ref role="3cqZAo" node="23XkovWn0_U" resolve="e" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="537nKv8Irnh" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="537nKv8JjI5" role="jymVt" />
    <node concept="3clFb_" id="2ByE74kr0Ic" role="jymVt">
      <property role="TrG5h" value="getExtension" />
      <node concept="3clFbS" id="2ByE74kr0If" role="3clF47">
        <node concept="3cpWs8" id="2ByE74kywHg" role="3cqZAp">
          <node concept="3cpWsn" id="2ByE74kywHh" role="3cpWs9">
            <property role="TrG5h" value="tagName" />
            <node concept="17QB3L" id="2ByE74kywHa" role="1tU5fm" />
            <node concept="2OqwBi" id="2ByE74kywHi" role="33vP2m">
              <node concept="1PxgMI" id="2ByE74kywHj" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="2ByE74kywHk" role="3oSUPX">
                  <ref role="cht4Q" to="iuxj:5M4a$b5iL2M" resolve="XmlElement" />
                </node>
                <node concept="2OqwBi" id="CLXmerf2Re" role="1m5AlR">
                  <node concept="2OqwBi" id="2ByE74kywHl" role="2Oq$k0">
                    <node concept="37vLTw" id="2ByE74kywHm" role="2Oq$k0">
                      <ref role="3cqZAo" node="2ByE74kr46n" resolve="xmlFile" />
                    </node>
                    <node concept="3TrEf2" id="CLXmerf2k2" role="2OqNvi">
                      <ref role="3Tt5mk" to="iuxj:5M4a$b5j9j1" resolve="document" />
                    </node>
                  </node>
                  <node concept="3TrEf2" id="CLXmerf3zv" role="2OqNvi">
                    <ref role="3Tt5mk" to="iuxj:5M4a$b5ikxJ" resolve="rootElement" />
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="CLXmerf3N3" role="2OqNvi">
                <ref role="3TsBF5" to="iuxj:5M4a$b5iL2Q" resolve="tagName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2ByE74ky$pI" role="3cqZAp">
          <node concept="3clFbS" id="2ByE74ky$pK" role="3clFbx">
            <node concept="3cpWs6" id="2ByE74kyBbA" role="3cqZAp">
              <node concept="37vLTw" id="2ByE74k$EAI" role="3cqZAk">
                <ref role="3cqZAo" node="49FXEugGn3U" resolve="FBT_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="2ByE74kyBTA" role="3clFbw">
            <node concept="37vLTw" id="2ByE74ky_Dg" role="3uHU7B">
              <ref role="3cqZAo" node="2ByE74kywHh" resolve="tagName" />
            </node>
            <node concept="Xl_RD" id="2ByE74kyDBn" role="3uHU7w">
              <property role="Xl_RC" value="FBType" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2ByE74kyKEz" role="3cqZAp">
          <node concept="3clFbS" id="2ByE74kyKE$" role="3clFbx">
            <node concept="3cpWs6" id="2ByE74kyKE_" role="3cqZAp">
              <node concept="37vLTw" id="2ByE74k$EAL" role="3cqZAk">
                <ref role="3cqZAo" node="2ByE74k$OOc" resolve="ADP_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="2ByE74kyKEB" role="3clFbw">
            <node concept="37vLTw" id="2ByE74kyKEC" role="3uHU7B">
              <ref role="3cqZAo" node="2ByE74kywHh" resolve="tagName" />
            </node>
            <node concept="Xl_RD" id="2ByE74kyKED" role="3uHU7w">
              <property role="Xl_RC" value="AdapterType" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="23XkovVqpqc" role="3cqZAp">
          <node concept="3clFbS" id="23XkovVqpqd" role="3clFbx">
            <node concept="3cpWs6" id="23XkovVqpqe" role="3cqZAp">
              <node concept="37vLTw" id="23XkovVqvgm" role="3cqZAk">
                <ref role="3cqZAo" node="23XkovVqfsb" resolve="SUB_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="23XkovVqpqg" role="3clFbw">
            <node concept="37vLTw" id="23XkovVqpqh" role="3uHU7B">
              <ref role="3cqZAo" node="2ByE74kywHh" resolve="tagName" />
            </node>
            <node concept="Xl_RD" id="23XkovVqpqi" role="3uHU7w">
              <property role="Xl_RC" value="SubAppType" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="23XkovVqpqQ" role="3cqZAp">
          <node concept="3clFbS" id="23XkovVqpqR" role="3clFbx">
            <node concept="3cpWs6" id="23XkovVqpqS" role="3cqZAp">
              <node concept="37vLTw" id="23XkovVqyNd" role="3cqZAk">
                <ref role="3cqZAo" node="23XkovVpUVE" resolve="RES_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="23XkovVqpqU" role="3clFbw">
            <node concept="37vLTw" id="23XkovVqpqV" role="3uHU7B">
              <ref role="3cqZAo" node="2ByE74kywHh" resolve="tagName" />
            </node>
            <node concept="Xl_RD" id="23XkovVqpqW" role="3uHU7w">
              <property role="Xl_RC" value="ResourceType" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="23XkovVqr66" role="3cqZAp">
          <node concept="3clFbS" id="23XkovVqr67" role="3clFbx">
            <node concept="3cpWs6" id="23XkovVqr68" role="3cqZAp">
              <node concept="37vLTw" id="23XkovVqEYq" role="3cqZAk">
                <ref role="3cqZAo" node="23XkovVpZ6d" resolve="DEV_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="23XkovVqr6a" role="3clFbw">
            <node concept="37vLTw" id="23XkovVqr6b" role="3uHU7B">
              <ref role="3cqZAo" node="2ByE74kywHh" resolve="tagName" />
            </node>
            <node concept="Xl_RD" id="23XkovVqr6c" role="3uHU7w">
              <property role="Xl_RC" value="DeviceType" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="13uTNv4nVrq" role="3cqZAp">
          <node concept="3clFbS" id="13uTNv4nVrr" role="3clFbx">
            <node concept="3cpWs6" id="13uTNv4nVrs" role="3cqZAp">
              <node concept="37vLTw" id="13uTNv4o2a_" role="3cqZAk">
                <ref role="3cqZAo" node="23XkovVqbY6" resolve="SEG_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="13uTNv4nVru" role="3clFbw">
            <node concept="37vLTw" id="13uTNv4nVrv" role="3uHU7B">
              <ref role="3cqZAo" node="2ByE74kywHh" resolve="tagName" />
            </node>
            <node concept="Xl_RD" id="13uTNv4nVrw" role="3uHU7w">
              <property role="Xl_RC" value="SegmentType" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="23XkovVqr6Y" role="3cqZAp">
          <node concept="3clFbS" id="23XkovVqr6Z" role="3clFbx">
            <node concept="3cpWs6" id="23XkovVqr70" role="3cqZAp">
              <node concept="37vLTw" id="23XkovVqI4T" role="3cqZAk">
                <ref role="3cqZAo" node="23XkovVpQv5" resolve="SYS_FILE_EXT" />
              </node>
            </node>
          </node>
          <node concept="17R0WA" id="23XkovVqr72" role="3clFbw">
            <node concept="37vLTw" id="23XkovVqr73" role="3uHU7B">
              <ref role="3cqZAo" node="2ByE74kywHh" resolve="tagName" />
            </node>
            <node concept="Xl_RD" id="23XkovVqr74" role="3uHU7w">
              <property role="Xl_RC" value="System" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2ByE74kyQ13" role="3cqZAp">
          <node concept="10Nm6u" id="2ByE74kyQ21" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="2ByE74kqYj4" role="1B3o_S" />
      <node concept="3uibUv" id="2ByE74kr01S" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="2ByE74kr46n" role="3clF46">
        <property role="TrG5h" value="xmlFile" />
        <node concept="3Tqbb2" id="2ByE74kyieR" role="1tU5fm">
          <ref role="ehGHo" to="iuxj:5M4a$b5j9j0" resolve="XmlFile" />
        </node>
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
    <node concept="3clFb_" id="2ByE74krpZi" role="jymVt">
      <property role="TrG5h" value="convertRootNode" />
      <node concept="3clFbS" id="2ByE74krpZj" role="3clF47">
        <node concept="3cpWs8" id="1KgvZpgiUmP" role="3cqZAp">
          <node concept="3cpWsn" id="1KgvZpgiUmQ" role="3cpWs9">
            <property role="TrG5h" value="owner" />
            <node concept="3uibUv" id="1KgvZpgiU3p" role="1tU5fm">
              <ref role="3uigEE" to="1u7h:1R0_JUQTBak" resolve="PlatformElementsOwner" />
            </node>
            <node concept="2ShNRf" id="1KgvZpgiUmR" role="33vP2m">
              <node concept="HV5vD" id="1KgvZpgiUmS" role="2ShVmc">
                <ref role="HV5vE" to="1u7h:1R0_JUQTBak" resolve="PlatformElementsOwner" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1KgvZpgl9rt" role="3cqZAp">
          <node concept="3cpWsn" id="1KgvZpgl9ru" role="3cpWs9">
            <property role="TrG5h" value="converter" />
            <node concept="3uibUv" id="1KgvZpgl907" role="1tU5fm">
              <ref role="3uigEE" to="epky:~RootConverter" resolve="RootConverter" />
            </node>
            <node concept="2ShNRf" id="1KgvZpgl9rv" role="33vP2m">
              <node concept="1pGfFk" id="1KgvZpgl9rw" role="2ShVmc">
                <ref role="37wK5l" to="epky:~RootConverter.&lt;init&gt;(org.fbme.lib.iec61499.IEC61499Factory,org.fbme.lib.st.STFactory,org.fbme.lib.iec61499.parser.IdentifierLocus,org.jdom.Document)" resolve="RootConverter" />
                <node concept="2OqwBi" id="1KgvZpgl9rx" role="37wK5m">
                  <node concept="37vLTw" id="1KgvZpgl9ry" role="2Oq$k0">
                    <ref role="3cqZAo" node="1KgvZpgiUmQ" resolve="owner" />
                  </node>
                  <node concept="liA8E" id="1KgvZpgl9rz" role="2OqNvi">
                    <ref role="37wK5l" to="1u7h:6YcNwH3_69V" resolve="getIEC61499Factory" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5F$aghxUd2s" role="37wK5m">
                  <node concept="37vLTw" id="5F$aghxUakc" role="2Oq$k0">
                    <ref role="3cqZAo" node="1KgvZpgiUmQ" resolve="owner" />
                  </node>
                  <node concept="liA8E" id="5F$aghxUj2L" role="2OqNvi">
                    <ref role="37wK5l" to="1u7h:7pDjarwjt8R" resolve="getSTFactory" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1KgvZpgl9r$" role="37wK5m">
                  <node concept="1pGfFk" id="1KgvZpgl9r_" role="2ShVmc">
                    <ref role="37wK5l" node="1KgvZpgk_L3" resolve="IEC61499ModelFactory.PlatformIdentifierLocus" />
                    <node concept="37vLTw" id="1KgvZpgl9rA" role="37wK5m">
                      <ref role="3cqZAo" node="1KgvZpgkpBY" resolve="reference" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="1KgvZpgl9rB" role="37wK5m">
                  <ref role="3cqZAo" node="2ByE74kxHL_" resolve="doc" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3KaCP$" id="2ByE74kxWTl" role="3cqZAp">
          <node concept="37vLTw" id="2ByE74kxYw$" role="3KbGdf">
            <ref role="3cqZAo" node="2ByE74krpZ_" resolve="fileExtension" />
          </node>
          <node concept="3KbdKl" id="2ByE74ky4IQ" role="3KbHQx">
            <node concept="37vLTw" id="2ByE74k$EAK" role="3Kbmr1">
              <ref role="3cqZAo" node="49FXEugGn3U" resolve="FBT_FILE_EXT" />
            </node>
            <node concept="3clFbS" id="2ByE74ky4IS" role="3Kbo56">
              <node concept="3cpWs6" id="2ByE74ky6AG" role="3cqZAp">
                <node concept="2OqwBi" id="1KgvZpgm83S" role="3cqZAk">
                  <node concept="1eOMI4" id="1KgvZpglSYR" role="2Oq$k0">
                    <node concept="10QFUN" id="1KgvZpglJSn" role="1eOMHV">
                      <node concept="3uibUv" id="1KgvZpgm2pk" role="10QFUM">
                        <ref role="3uigEE" to="fcfa:1JYTWWzyU94" resolve="PlatformElement" />
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgluGi" role="10QFUP">
                        <node concept="37vLTw" id="1KgvZpglrv5" role="2Oq$k0">
                          <ref role="3cqZAo" node="1KgvZpgl9ru" resolve="converter" />
                        </node>
                        <node concept="liA8E" id="1KgvZpglzmN" role="2OqNvi">
                          <ref role="37wK5l" to="epky:~RootConverter.convertFBType()" resolve="convertFBType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1KgvZpgmdAu" role="2OqNvi">
                    <ref role="37wK5l" to="fcfa:1JYTWWzyU9A" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="2ByE74kxYAB" role="3KbHQx">
            <node concept="37vLTw" id="2ByE74k$EAN" role="3Kbmr1">
              <ref role="3cqZAo" node="2ByE74k$OOc" resolve="ADP_FILE_EXT" />
            </node>
            <node concept="3clFbS" id="2ByE74kxYAD" role="3Kbo56">
              <node concept="3cpWs6" id="2ByE74kxYEC" role="3cqZAp">
                <node concept="2OqwBi" id="1KgvZpgmiDQ" role="3cqZAk">
                  <node concept="1eOMI4" id="1KgvZpgmiDR" role="2Oq$k0">
                    <node concept="10QFUN" id="1KgvZpgmiDS" role="1eOMHV">
                      <node concept="3uibUv" id="1KgvZpgmiDT" role="10QFUM">
                        <ref role="3uigEE" to="fcfa:1JYTWWzyU94" resolve="PlatformElement" />
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgmiDU" role="10QFUP">
                        <node concept="37vLTw" id="1KgvZpgmiDV" role="2Oq$k0">
                          <ref role="3cqZAo" node="1KgvZpgl9ru" resolve="converter" />
                        </node>
                        <node concept="liA8E" id="1KgvZpgmnND" role="2OqNvi">
                          <ref role="37wK5l" to="epky:~RootConverter.convertAdapterType()" resolve="convertAdapterType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1KgvZpgmiDX" role="2OqNvi">
                    <ref role="37wK5l" to="fcfa:1JYTWWzyU9A" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="23XkovVr1EL" role="3KbHQx">
            <node concept="37vLTw" id="23XkovVr4UI" role="3Kbmr1">
              <ref role="3cqZAo" node="23XkovVqfsb" resolve="SUB_FILE_EXT" />
            </node>
            <node concept="3clFbS" id="23XkovVr1EN" role="3Kbo56">
              <node concept="3cpWs6" id="23XkovVr1EO" role="3cqZAp">
                <node concept="2OqwBi" id="1KgvZpgmrRD" role="3cqZAk">
                  <node concept="1eOMI4" id="1KgvZpgmrRE" role="2Oq$k0">
                    <node concept="10QFUN" id="1KgvZpgmrRF" role="1eOMHV">
                      <node concept="3uibUv" id="1KgvZpgmrRG" role="10QFUM">
                        <ref role="3uigEE" to="fcfa:1JYTWWzyU94" resolve="PlatformElement" />
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgmrRH" role="10QFUP">
                        <node concept="37vLTw" id="1KgvZpgmrRI" role="2Oq$k0">
                          <ref role="3cqZAo" node="1KgvZpgl9ru" resolve="converter" />
                        </node>
                        <node concept="liA8E" id="1KgvZpgmwnH" role="2OqNvi">
                          <ref role="37wK5l" to="epky:~RootConverter.convertSubapplicationType()" resolve="convertSubapplicationType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1KgvZpgmrRK" role="2OqNvi">
                    <ref role="37wK5l" to="fcfa:1JYTWWzyU9A" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="23XkovVri45" role="3KbHQx">
            <node concept="37vLTw" id="23XkovVrkKx" role="3Kbmr1">
              <ref role="3cqZAo" node="23XkovVpUVE" resolve="RES_FILE_EXT" />
            </node>
            <node concept="3clFbS" id="23XkovVri47" role="3Kbo56">
              <node concept="3cpWs6" id="23XkovVri48" role="3cqZAp">
                <node concept="2OqwBi" id="1KgvZpgm_Mo" role="3cqZAk">
                  <node concept="1eOMI4" id="1KgvZpgm_Mp" role="2Oq$k0">
                    <node concept="10QFUN" id="1KgvZpgm_Mq" role="1eOMHV">
                      <node concept="3uibUv" id="1KgvZpgm_Mr" role="10QFUM">
                        <ref role="3uigEE" to="fcfa:1JYTWWzyU94" resolve="PlatformElement" />
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgm_Ms" role="10QFUP">
                        <node concept="37vLTw" id="1KgvZpgm_Mt" role="2Oq$k0">
                          <ref role="3cqZAo" node="1KgvZpgl9ru" resolve="converter" />
                        </node>
                        <node concept="liA8E" id="mO0SGic1zx" role="2OqNvi">
                          <ref role="37wK5l" to="epky:~RootConverter.convertResourceType()" resolve="convertResourceType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1KgvZpgm_Mv" role="2OqNvi">
                    <ref role="37wK5l" to="fcfa:1JYTWWzyU9A" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="23XkovVrqyC" role="3KbHQx">
            <node concept="37vLTw" id="23XkovVrt01" role="3Kbmr1">
              <ref role="3cqZAo" node="23XkovVpZ6d" resolve="DEV_FILE_EXT" />
            </node>
            <node concept="3clFbS" id="23XkovVrqyE" role="3Kbo56">
              <node concept="3cpWs6" id="23XkovVrqyF" role="3cqZAp">
                <node concept="2OqwBi" id="1KgvZpgmKoj" role="3cqZAk">
                  <node concept="1eOMI4" id="1KgvZpgmKok" role="2Oq$k0">
                    <node concept="10QFUN" id="1KgvZpgmKol" role="1eOMHV">
                      <node concept="3uibUv" id="1KgvZpgmKom" role="10QFUM">
                        <ref role="3uigEE" to="fcfa:1JYTWWzyU94" resolve="PlatformElement" />
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgmKon" role="10QFUP">
                        <node concept="37vLTw" id="1KgvZpgmKoo" role="2Oq$k0">
                          <ref role="3cqZAo" node="1KgvZpgl9ru" resolve="converter" />
                        </node>
                        <node concept="liA8E" id="1KgvZpgmPlz" role="2OqNvi">
                          <ref role="37wK5l" to="epky:~RootConverter.convertDeviceType()" resolve="convertDeviceType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1KgvZpgmKoq" role="2OqNvi">
                    <ref role="37wK5l" to="fcfa:1JYTWWzyU9A" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="23XkovVrCUa" role="3KbHQx">
            <node concept="37vLTw" id="23XkovVrFur" role="3Kbmr1">
              <ref role="3cqZAo" node="23XkovVqbY6" resolve="SEG_FILE_EXT" />
            </node>
            <node concept="3clFbS" id="23XkovVrCUc" role="3Kbo56">
              <node concept="3cpWs6" id="23XkovVrCUd" role="3cqZAp">
                <node concept="2OqwBi" id="1KgvZpgmUkK" role="3cqZAk">
                  <node concept="1eOMI4" id="1KgvZpgmUkL" role="2Oq$k0">
                    <node concept="10QFUN" id="1KgvZpgmUkM" role="1eOMHV">
                      <node concept="3uibUv" id="1KgvZpgmUkN" role="10QFUM">
                        <ref role="3uigEE" to="fcfa:1JYTWWzyU94" resolve="PlatformElement" />
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgmUkO" role="10QFUP">
                        <node concept="37vLTw" id="1KgvZpgmUkP" role="2Oq$k0">
                          <ref role="3cqZAo" node="1KgvZpgl9ru" resolve="converter" />
                        </node>
                        <node concept="liA8E" id="1KgvZpgmZ1C" role="2OqNvi">
                          <ref role="37wK5l" to="epky:~RootConverter.convertSegmentType()" resolve="convertSegmentType" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1KgvZpgmUkR" role="2OqNvi">
                    <ref role="37wK5l" to="fcfa:1JYTWWzyU9A" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3KbdKl" id="23XkovVrLj5" role="3KbHQx">
            <node concept="37vLTw" id="23XkovVrOr_" role="3Kbmr1">
              <ref role="3cqZAo" node="23XkovVpQv5" resolve="SYS_FILE_EXT" />
            </node>
            <node concept="3clFbS" id="23XkovVrLj7" role="3Kbo56">
              <node concept="3cpWs6" id="23XkovVrLj8" role="3cqZAp">
                <node concept="2OqwBi" id="1KgvZpgn3ep" role="3cqZAk">
                  <node concept="1eOMI4" id="1KgvZpgn3eq" role="2Oq$k0">
                    <node concept="10QFUN" id="1KgvZpgn3er" role="1eOMHV">
                      <node concept="3uibUv" id="1KgvZpgn3es" role="10QFUM">
                        <ref role="3uigEE" to="fcfa:1JYTWWzyU94" resolve="PlatformElement" />
                      </node>
                      <node concept="2OqwBi" id="1KgvZpgn3et" role="10QFUP">
                        <node concept="37vLTw" id="1KgvZpgn3eu" role="2Oq$k0">
                          <ref role="3cqZAo" node="1KgvZpgl9ru" resolve="converter" />
                        </node>
                        <node concept="liA8E" id="1KgvZpgn8fG" role="2OqNvi">
                          <ref role="37wK5l" to="epky:~RootConverter.convertSystemConfiguration()" resolve="convertSystemConfiguration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="1KgvZpgn3ew" role="2OqNvi">
                    <ref role="37wK5l" to="fcfa:1JYTWWzyU9A" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="2ByE74kycye" role="3Kb1Dw">
            <node concept="3cpWs6" id="2ByE74kye96" role="3cqZAp">
              <node concept="10Nm6u" id="2ByE74kyea$" role="3cqZAk" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="2ByE74krpZz" role="1B3o_S" />
      <node concept="3Tqbb2" id="2ByE74kxJE7" role="3clF45" />
      <node concept="37vLTG" id="1KgvZpgkpBY" role="3clF46">
        <property role="TrG5h" value="reference" />
        <node concept="3uibUv" id="1KgvZpgkuo7" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="37vLTG" id="2ByE74kxHL_" role="3clF46">
        <property role="TrG5h" value="doc" />
        <node concept="3uibUv" id="2ByE74kxJqU" role="1tU5fm">
          <ref role="3uigEE" to="mmaq:~Document" resolve="Document" />
        </node>
      </node>
      <node concept="37vLTG" id="2ByE74krpZ_" role="3clF46">
        <property role="TrG5h" value="fileExtension" />
        <node concept="17QB3L" id="2ByE74krwZ1" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="1KgvZpgj0Ti" role="jymVt" />
    <node concept="312cEu" id="1KgvZpgjbqY" role="jymVt">
      <property role="TrG5h" value="PlatformIdentifierLocus" />
      <node concept="312cEg" id="1KgvZpgkzyN" role="jymVt">
        <property role="TrG5h" value="myReference" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="1KgvZpgkxcK" role="1B3o_S" />
        <node concept="3uibUv" id="1KgvZpgkyts" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
        </node>
      </node>
      <node concept="312cEg" id="1KgvZpgjpeT" role="jymVt">
        <property role="TrG5h" value="myPath" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="1KgvZpgjmFw" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="1KgvZpgjnO_" role="11_B2D">
            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
          </node>
        </node>
        <node concept="3Tm6S6" id="1KgvZpgjqRy" role="1B3o_S" />
        <node concept="2ShNRf" id="1KgvZpgjrHC" role="33vP2m">
          <node concept="1pGfFk" id="1KgvZpgjsT0" role="2ShVmc">
            <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
            <node concept="3uibUv" id="1KgvZpgjtMV" role="1pMfVU">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1KgvZpgjvii" role="jymVt" />
      <node concept="3clFbW" id="1KgvZpgk_L3" role="jymVt">
        <node concept="3cqZAl" id="1KgvZpgk_L4" role="3clF45" />
        <node concept="3Tm1VV" id="1KgvZpgk_L5" role="1B3o_S" />
        <node concept="3clFbS" id="1KgvZpgk_L7" role="3clF47">
          <node concept="3clFbF" id="1KgvZpgk_Lb" role="3cqZAp">
            <node concept="37vLTI" id="1KgvZpgk_Ld" role="3clFbG">
              <node concept="37vLTw" id="1KgvZpgk_Lk" role="37vLTx">
                <ref role="3cqZAo" node="1KgvZpgk_La" resolve="reference" />
              </node>
              <node concept="37vLTw" id="1KgvZpgkDev" role="37vLTJ">
                <ref role="3cqZAo" node="1KgvZpgkzyN" resolve="myReference" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="1KgvZpgk_La" role="3clF46">
          <property role="TrG5h" value="reference" />
          <node concept="3uibUv" id="1KgvZpgk_L9" role="1tU5fm">
            <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
          </node>
        </node>
      </node>
      <node concept="2tJIrI" id="1KgvZpgkBxh" role="jymVt" />
      <node concept="3clFb_" id="1KgvZpgjwuu" role="jymVt">
        <property role="TrG5h" value="onDeclarationEntered" />
        <node concept="3Tm1VV" id="1KgvZpgjwuv" role="1B3o_S" />
        <node concept="2AHcQZ" id="1KgvZpgjwux" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
        <node concept="3uibUv" id="1KgvZpgjwuy" role="3clF45">
          <ref role="3uigEE" to="7adg:~Identifier" resolve="Identifier" />
        </node>
        <node concept="37vLTG" id="1KgvZpgjwuz" role="3clF46">
          <property role="TrG5h" value="element" />
          <node concept="3uibUv" id="1KgvZpgjwu$" role="1tU5fm">
            <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
          </node>
          <node concept="2AHcQZ" id="1KgvZpgjwu_" role="2AJF6D">
            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
          </node>
        </node>
        <node concept="3clFbS" id="1KgvZpgjwuA" role="3clF47">
          <node concept="3cpWs8" id="1KgvZpgj$cc" role="3cqZAp">
            <node concept="3cpWsn" id="1KgvZpgj$cd" role="3cpWs9">
              <property role="TrG5h" value="name" />
              <node concept="3uibUv" id="1KgvZpgjzTZ" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="2OqwBi" id="1KgvZpgj$ce" role="33vP2m">
                <node concept="37vLTw" id="1KgvZpgj$cf" role="2Oq$k0">
                  <ref role="3cqZAo" node="1KgvZpgjwuz" resolve="element" />
                </node>
                <node concept="liA8E" id="1KgvZpgj$cg" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String)" resolve="getAttributeValue" />
                  <node concept="Xl_RD" id="1KgvZpgj$ch" role="37wK5m">
                    <property role="Xl_RC" value="Name" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="1KgvZpgjAMq" role="3cqZAp">
            <node concept="2OqwBi" id="1KgvZpgjBBu" role="3clFbG">
              <node concept="37vLTw" id="1KgvZpgjAMo" role="2Oq$k0">
                <ref role="3cqZAo" node="1KgvZpgjpeT" resolve="myPath" />
              </node>
              <node concept="liA8E" id="1KgvZpgjCVR" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                <node concept="37vLTw" id="1KgvZpgjDtv" role="37wK5m">
                  <ref role="3cqZAo" node="1KgvZpgj$cd" resolve="name" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="1KgvZpgjMFj" role="3cqZAp">
            <node concept="2ShNRf" id="1KgvZpgkWzk" role="3cqZAk">
              <node concept="1pGfFk" id="1KgvZpgkYsE" role="2ShVmc">
                <ref role="37wK5l" to="1u7h:1R0_JUQSz$o" resolve="PlatformIdentifier" />
                <node concept="2ShNRf" id="1KgvZpgkGrk" role="37wK5m">
                  <node concept="1pGfFk" id="1KgvZpgkI9Q" role="2ShVmc">
                    <ref role="37wK5l" to="w1kc:~SNodePointer.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference,org.jetbrains.mps.openapi.model.SNodeId)" resolve="SNodePointer" />
                    <node concept="37vLTw" id="1KgvZpgkItm" role="37wK5m">
                      <ref role="3cqZAo" node="1KgvZpgkzyN" resolve="myReference" />
                    </node>
                    <node concept="2OqwBi" id="1KgvZpgk4D2" role="37wK5m">
                      <node concept="2YIFZM" id="1KgvZpgk4D3" role="2Oq$k0">
                        <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                        <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                      </node>
                      <node concept="liA8E" id="1KgvZpgk4D4" role="2OqNvi">
                        <ref role="37wK5l" to="dush:~PersistenceFacade.createNodeId(java.lang.String)" resolve="createNodeId" />
                        <node concept="3cpWs3" id="1KgvZpgk4D5" role="37wK5m">
                          <node concept="Xl_RD" id="1KgvZpgk4D6" role="3uHU7B">
                            <property role="Xl_RC" value="~" />
                          </node>
                          <node concept="2YIFZM" id="1KgvZpgk4D7" role="3uHU7w">
                            <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                            <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.Iterable)" resolve="join" />
                            <node concept="Xl_RD" id="1KgvZpgk4D8" role="37wK5m">
                              <property role="Xl_RC" value="." />
                            </node>
                            <node concept="37vLTw" id="1KgvZpgk4D9" role="37wK5m">
                              <ref role="3cqZAo" node="1KgvZpgjpeT" resolve="myPath" />
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
        <node concept="2AHcQZ" id="1KgvZpgjwuB" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="2tJIrI" id="1KgvZpgjKta" role="jymVt" />
      <node concept="3clFb_" id="1KgvZpgjwuE" role="jymVt">
        <property role="TrG5h" value="onDeclarationLeaved" />
        <node concept="3Tm1VV" id="1KgvZpgjwuF" role="1B3o_S" />
        <node concept="3cqZAl" id="1KgvZpgjwuH" role="3clF45" />
        <node concept="3clFbS" id="1KgvZpgjwuI" role="3clF47">
          <node concept="3clFbF" id="1KgvZpgjE0N" role="3cqZAp">
            <node concept="2OqwBi" id="1KgvZpgjEXk" role="3clFbG">
              <node concept="37vLTw" id="1KgvZpgjE0M" role="2Oq$k0">
                <ref role="3cqZAo" node="1KgvZpgjpeT" resolve="myPath" />
              </node>
              <node concept="liA8E" id="1KgvZpgjG4K" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.remove(int)" resolve="remove" />
                <node concept="3cpWsd" id="1KgvZpgjJEC" role="37wK5m">
                  <node concept="3cmrfG" id="1KgvZpgjJFu" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="1KgvZpgjHMz" role="3uHU7B">
                    <node concept="37vLTw" id="1KgvZpgjG$b" role="2Oq$k0">
                      <ref role="3cqZAo" node="1KgvZpgjpeT" resolve="myPath" />
                    </node>
                    <node concept="liA8E" id="1KgvZpgjIq6" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="1KgvZpgjwuJ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="1KgvZpgj6lF" role="1B3o_S" />
      <node concept="3uibUv" id="1KgvZpgjlvc" role="EKbjA">
        <ref role="3uigEE" to="epky:~IdentifierLocus" resolve="IdentifierLocus" />
      </node>
    </node>
    <node concept="2tJIrI" id="2ByE74kqW$j" role="jymVt" />
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
              <node concept="3uibUv" id="7OBD32HXuVp" role="2ZW6by">
                <ref role="3uigEE" to="ends:~FileDataSource" resolve="FileDataSource" />
              </node>
              <node concept="37vLTw" id="7OBD32HXnpz" role="2ZW6bz">
                <ref role="3cqZAo" node="537nKv8JjP5" resolve="dataSource" />
              </node>
            </node>
          </node>
        </node>
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
        <node concept="3clFbJ" id="6ZZUlxDwHKH" role="3cqZAp">
          <node concept="3clFbS" id="6ZZUlxDwHKJ" role="3clFbx">
            <node concept="3clFbF" id="6ZZUlxDwJR6" role="3cqZAp">
              <node concept="2OqwBi" id="6ZZUlxDwMOL" role="3clFbG">
                <node concept="2OqwBi" id="6ZZUlxDwKwB" role="2Oq$k0">
                  <node concept="2YIFZM" id="6ZZUlxDwK7U" role="2Oq$k0">
                    <ref role="37wK5l" to="ends:~ModelFactoryService.getInstance()" resolve="getInstance" />
                    <ref role="1Pybhc" to="ends:~ModelFactoryService" resolve="ModelFactoryService" />
                  </node>
                  <node concept="liA8E" id="6ZZUlxDwKWe" role="2OqNvi">
                    <ref role="37wK5l" to="ends:~ModelFactoryService.getFactoryByType(org.jetbrains.mps.openapi.persistence.ModelFactoryType)" resolve="getFactoryByType" />
                    <node concept="Rm8GO" id="6ZZUlxDwMtw" role="37wK5m">
                      <ref role="Rm8GQ" to="pa15:~PreinstalledModelFactoryTypes.PLAIN_XML" resolve="PLAIN_XML" />
                      <ref role="1Px2BO" to="pa15:~PreinstalledModelFactoryTypes" resolve="PreinstalledModelFactoryTypes" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6ZZUlxDwN7d" role="2OqNvi">
                  <ref role="37wK5l" to="dush:~ModelFactory.save(org.jetbrains.mps.openapi.model.SModel,org.jetbrains.mps.openapi.persistence.DataSource)" resolve="save" />
                  <node concept="37vLTw" id="6ZZUlxDwNDZ" role="37wK5m">
                    <ref role="3cqZAo" node="537nKv8JjQd" resolve="model" />
                  </node>
                  <node concept="37vLTw" id="6ZZUlxDwOe9" role="37wK5m">
                    <ref role="3cqZAo" node="537nKv8JjQg" resolve="source" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="6ZZUlxDwOPt" role="3cqZAp" />
          </node>
          <node concept="2ZW3vV" id="6ZZUlxDwILR" role="3clFbw">
            <node concept="3uibUv" id="6ZZUlxDwJp7" role="2ZW6by">
              <ref role="3uigEE" to="pa15:~PersistenceUtil$InMemoryStreamDataSource" resolve="PersistenceUtil.InMemoryStreamDataSource" />
            </node>
            <node concept="37vLTw" id="6ZZUlxDwI4m" role="2ZW6bz">
              <ref role="3cqZAo" node="537nKv8JjQg" resolve="source" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="49FXEugKloO" role="3cqZAp">
          <node concept="1rXfSq" id="49FXEugKloM" role="3clFbG">
            <ref role="37wK5l" node="537nKv8Irn6" resolve="writeModel" />
            <node concept="2OqwBi" id="49FXEugKofR" role="37wK5m">
              <node concept="1eOMI4" id="49FXEugKn5Z" role="2Oq$k0">
                <node concept="10QFUN" id="49FXEugKn5W" role="1eOMHV">
                  <node concept="37vLTw" id="49FXEugKlU$" role="10QFUP">
                    <ref role="3cqZAo" node="537nKv8JjQd" resolve="model" />
                  </node>
                  <node concept="3uibUv" id="49FXEugKnF_" role="10QFUM">
                    <ref role="3uigEE" to="g3l6:~CustomPersistenceSModel" resolve="CustomPersistenceSModel" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="49FXEugKpju" role="2OqNvi">
                <ref role="37wK5l" to="g3l6:~SModelBase.getModelData()" resolve="getModelData" />
              </node>
            </node>
            <node concept="10QFUN" id="49FXEugKqKv" role="37wK5m">
              <node concept="3uibUv" id="49FXEugKrgt" role="10QFUM">
                <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
              </node>
              <node concept="37vLTw" id="49FXEugKqgC" role="10QFUP">
                <ref role="3cqZAo" node="537nKv8JjQg" resolve="source" />
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
          <node concept="2YIFZM" id="537nKv8JMp1" role="3cqZAk">
            <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <node concept="3uibUv" id="537nKv8JNqP" role="3PaCim">
              <ref role="3uigEE" to="bxo2:~DataSourceType" resolve="DataSourceType" />
            </node>
            <node concept="37vLTw" id="49FXEugF_hn" role="37wK5m">
              <ref role="3cqZAo" node="49FXEugFoZS" resolve="DST" />
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
              <node concept="37vLTw" id="49FXEugGXjf" role="2Oq$k0">
                <ref role="3cqZAo" node="537nKv8JWug" resolve="PF" />
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
          <node concept="2ShNRf" id="6kvdbYucdJ9" role="3cqZAk">
            <node concept="1pGfFk" id="6kvdbYucdJa" role="2ShVmc">
              <ref role="37wK5l" to="g3l6:~CustomPersistenceSModel.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference,org.jetbrains.mps.openapi.persistence.StreamDataSource,jetbrains.mps.extapi.model.SModelPersistence)" resolve="CustomPersistenceSModel" />
              <node concept="37vLTw" id="6kvdbYucdJb" role="37wK5m">
                <ref role="3cqZAo" node="49FXEugGWJk" resolve="ref" />
              </node>
              <node concept="10QFUN" id="6kvdbYucdJc" role="37wK5m">
                <node concept="3uibUv" id="6kvdbYucdJd" role="10QFUM">
                  <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                </node>
                <node concept="37vLTw" id="6kvdbYucdJe" role="10QFUP">
                  <ref role="3cqZAo" node="537nKv8JjOt" resolve="source" />
                </node>
              </node>
              <node concept="Xjq3P" id="6kvdbYucdJf" role="37wK5m" />
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
        <node concept="3clFbJ" id="6ZZUlxDwUUg" role="3cqZAp">
          <node concept="3clFbS" id="6ZZUlxDwUUh" role="3clFbx">
            <node concept="3cpWs6" id="6ZZUlxDwUUr" role="3cqZAp">
              <node concept="2OqwBi" id="6ZZUlxDwUUj" role="3cqZAk">
                <node concept="2OqwBi" id="6ZZUlxDwUUk" role="2Oq$k0">
                  <node concept="2YIFZM" id="6ZZUlxDwUUl" role="2Oq$k0">
                    <ref role="37wK5l" to="ends:~ModelFactoryService.getInstance()" resolve="getInstance" />
                    <ref role="1Pybhc" to="ends:~ModelFactoryService" resolve="ModelFactoryService" />
                  </node>
                  <node concept="liA8E" id="6ZZUlxDwUUm" role="2OqNvi">
                    <ref role="37wK5l" to="ends:~ModelFactoryService.getFactoryByType(org.jetbrains.mps.openapi.persistence.ModelFactoryType)" resolve="getFactoryByType" />
                    <node concept="Rm8GO" id="6ZZUlxDwUUn" role="37wK5m">
                      <ref role="1Px2BO" to="pa15:~PreinstalledModelFactoryTypes" resolve="PreinstalledModelFactoryTypes" />
                      <ref role="Rm8GQ" to="pa15:~PreinstalledModelFactoryTypes.PLAIN_XML" resolve="PLAIN_XML" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6ZZUlxDwUUo" role="2OqNvi">
                  <ref role="37wK5l" to="dush:~ModelFactory.load(org.jetbrains.mps.openapi.persistence.DataSource,org.jetbrains.mps.openapi.persistence.ModelLoadingOption...)" resolve="load" />
                  <node concept="37vLTw" id="6ZZUlxDwUUq" role="37wK5m">
                    <ref role="3cqZAo" node="49FXEugHkVP" resolve="source" />
                  </node>
                  <node concept="37vLTw" id="6ZZUlxDxnVH" role="37wK5m">
                    <ref role="3cqZAo" node="4A2f9ilplnZ" resolve="options" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="6ZZUlxDwUUs" role="3clFbw">
            <node concept="3uibUv" id="6ZZUlxDwUUt" role="2ZW6by">
              <ref role="3uigEE" to="pa15:~PersistenceUtil$InMemoryStreamDataSource" resolve="PersistenceUtil.InMemoryStreamDataSource" />
            </node>
            <node concept="37vLTw" id="6ZZUlxDwUUu" role="2ZW6bz">
              <ref role="3cqZAo" node="49FXEugHkVP" resolve="source" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6ZZUlxDwQa0" role="3cqZAp" />
        <node concept="3cpWs8" id="Kgmn0bBSCW" role="3cqZAp">
          <node concept="3cpWsn" id="Kgmn0bBSCX" role="3cpWs9">
            <property role="TrG5h" value="headerFile" />
            <node concept="3uibUv" id="Kgmn0bBSCY" role="1tU5fm">
              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
            </node>
            <node concept="1rXfSq" id="Kgmn0bBSCZ" role="33vP2m">
              <ref role="37wK5l" node="7OBD32HJZ0F" resolve="extractFile" />
              <node concept="37vLTw" id="Kgmn0bBSD0" role="37wK5m">
                <ref role="3cqZAo" node="49FXEugHkVP" resolve="source" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7OBD32HITxZ" role="3cqZAp" />
        <node concept="3cpWs8" id="7OBD32I00m9" role="3cqZAp">
          <node concept="3cpWsn" id="7OBD32I00ma" role="3cpWs9">
            <property role="TrG5h" value="headerIS" />
            <node concept="3uibUv" id="7OBD32I05zH" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~InputStream" resolve="InputStream" />
            </node>
            <node concept="10Nm6u" id="7OBD32I00mc" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="7OBD32I0gfW" role="3cqZAp">
          <node concept="3cpWsn" id="7OBD32I0gfX" role="3cpWs9">
            <property role="TrG5h" value="header" />
            <node concept="3uibUv" id="7OBD32I0gfY" role="1tU5fm">
              <ref role="3uigEE" node="7OBD32HKFLJ" resolve="IEC61499ModelHeader" />
            </node>
          </node>
        </node>
        <node concept="2GUZhq" id="7OBD32I00md" role="3cqZAp">
          <node concept="TDmWw" id="4A2f9ilptN5" role="TEXxN">
            <node concept="3cpWsn" id="4A2f9ilptN6" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="4A2f9ilpy4w" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="4A2f9ilptN8" role="TDEfX">
              <node concept="RRSsy" id="7H$5i_Y5N_K" role="3cqZAp">
                <property role="RRSoG" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="7H$5i_Y5N_L" role="RRSoy">
                  <property role="Xl_RC" value="Exception raised during load" />
                </node>
                <node concept="37vLTw" id="7H$5i_Y5N_M" role="RRSow">
                  <ref role="3cqZAo" node="4A2f9ilptN6" resolve="e" />
                </node>
              </node>
              <node concept="YS8fn" id="4A2f9ilpzpT" role="3cqZAp">
                <node concept="2ShNRf" id="4A2f9ilpzqy" role="YScLw">
                  <node concept="1pGfFk" id="4A2f9ilp$rv" role="2ShVmc">
                    <ref role="37wK5l" to="dush:~ModelLoadException.&lt;init&gt;(java.lang.String,java.util.List,java.lang.Throwable)" resolve="ModelLoadException" />
                    <node concept="Xl_RD" id="4A2f9ilp$Jq" role="37wK5m">
                      <property role="Xl_RC" value="Can't load model" />
                    </node>
                    <node concept="2YIFZM" id="4A2f9ilpAUp" role="37wK5m">
                      <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                      <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                      <node concept="3uibUv" id="4A2f9ilpEtr" role="3PaCim">
                        <ref role="3uigEE" to="mhbf:~SModel$Problem" resolve="SModel.Problem" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="4A2f9ilpF8k" role="37wK5m">
                      <ref role="3cqZAo" node="4A2f9ilptN6" resolve="e" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7OBD32I00me" role="2GV8ay">
            <node concept="3clFbF" id="7OBD32I00mf" role="3cqZAp">
              <node concept="37vLTI" id="7OBD32I00mg" role="3clFbG">
                <node concept="2OqwBi" id="7OBD32I00mh" role="37vLTx">
                  <node concept="37vLTw" id="7OBD32I00mi" role="2Oq$k0">
                    <ref role="3cqZAo" node="Kgmn0bBSCX" resolve="headerFile" />
                  </node>
                  <node concept="liA8E" id="7OBD32I00mj" role="2OqNvi">
                    <ref role="37wK5l" to="3ju5:~IFile.openInputStream()" resolve="openInputStream" />
                  </node>
                </node>
                <node concept="37vLTw" id="7OBD32I00mk" role="37vLTJ">
                  <ref role="3cqZAo" node="7OBD32I00ma" resolve="headerIS" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7OBD32I0lyR" role="3cqZAp">
              <node concept="37vLTI" id="7OBD32I0lyT" role="3clFbG">
                <node concept="37vLTw" id="7OBD32I0mwo" role="37vLTJ">
                  <ref role="3cqZAo" node="7OBD32I0gfX" resolve="header" />
                </node>
                <node concept="2YIFZM" id="7OBD32I08aK" role="37vLTx">
                  <ref role="1Pybhc" node="7OBD32HKFLJ" resolve="IEC61499ModelHeader" />
                  <ref role="37wK5l" node="7OBD32HLIqK" resolve="load" />
                  <node concept="37vLTw" id="7OBD32I08OM" role="37wK5m">
                    <ref role="3cqZAo" node="7OBD32I00ma" resolve="headerIS" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7OBD32I00mV" role="2GVbov">
            <node concept="3clFbF" id="4A2f9ilpFNE" role="3cqZAp">
              <node concept="2YIFZM" id="4A2f9ilpGrd" role="3clFbG">
                <ref role="37wK5l" to="18ew:~FileUtil.closeFileSafe(java.io.Closeable)" resolve="closeFileSafe" />
                <ref role="1Pybhc" to="18ew:~FileUtil" resolve="FileUtil" />
                <node concept="37vLTw" id="4A2f9ilpH6f" role="37wK5m">
                  <ref role="3cqZAo" node="7OBD32I00ma" resolve="headerIS" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="Kgmn0bBSDA" role="3cqZAp">
          <node concept="3cpWsn" id="Kgmn0bBSDB" role="3cpWs9">
            <property role="TrG5h" value="ref" />
            <node concept="3uibUv" id="Kgmn0bBSDC" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
            </node>
            <node concept="2OqwBi" id="Kgmn0bBSDD" role="33vP2m">
              <node concept="37vLTw" id="Kgmn0bBSDE" role="2Oq$k0">
                <ref role="3cqZAo" node="537nKv8JWug" resolve="PF" />
              </node>
              <node concept="liA8E" id="Kgmn0bBSDF" role="2OqNvi">
                <ref role="37wK5l" to="dush:~PersistenceFacade.createModelReference(org.jetbrains.mps.openapi.module.SModuleReference,org.jetbrains.mps.openapi.model.SModelId,java.lang.String)" resolve="createModelReference" />
                <node concept="10Nm6u" id="Kgmn0bBSDG" role="37wK5m" />
                <node concept="2OqwBi" id="7OBD32I0x$o" role="37wK5m">
                  <node concept="37vLTw" id="7OBD32I0v57" role="2Oq$k0">
                    <ref role="3cqZAo" node="7OBD32I0gfX" resolve="header" />
                  </node>
                  <node concept="liA8E" id="7OBD32I0_pw" role="2OqNvi">
                    <ref role="37wK5l" node="7OBD32HKGnM" resolve="getId" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7OBD32I0GZW" role="37wK5m">
                  <node concept="37vLTw" id="7OBD32I0DZ9" role="2Oq$k0">
                    <ref role="3cqZAo" node="7OBD32I0gfX" resolve="header" />
                  </node>
                  <node concept="liA8E" id="7OBD32I0KPC" role="2OqNvi">
                    <ref role="37wK5l" node="7OBD32HKGnG" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="Kgmn0bBSDJ" role="3cqZAp">
          <node concept="2ShNRf" id="Kgmn0bBSDK" role="3cqZAk">
            <node concept="1pGfFk" id="Kgmn0bBSDL" role="2ShVmc">
              <ref role="37wK5l" to="g3l6:~CustomPersistenceSModel.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModelReference,org.jetbrains.mps.openapi.persistence.StreamDataSource,jetbrains.mps.extapi.model.SModelPersistence)" resolve="CustomPersistenceSModel" />
              <node concept="37vLTw" id="Kgmn0bBSDM" role="37wK5m">
                <ref role="3cqZAo" node="Kgmn0bBSDB" resolve="ref" />
              </node>
              <node concept="10QFUN" id="Kgmn0bBSDN" role="37wK5m">
                <node concept="3uibUv" id="Kgmn0bBSDO" role="10QFUM">
                  <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                </node>
                <node concept="37vLTw" id="Kgmn0bBSDP" role="10QFUP">
                  <ref role="3cqZAo" node="49FXEugHkVP" resolve="source" />
                </node>
              </node>
              <node concept="Xjq3P" id="Kgmn0bBSDQ" role="37wK5m" />
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
    <node concept="3clFb_" id="7OBD32HJ$vU" role="jymVt">
      <property role="TrG5h" value="saveFailed" />
      <node concept="3clFbS" id="7OBD32HJ$vW" role="3clF47">
        <node concept="YS8fn" id="7OBD32HJ$vX" role="3cqZAp">
          <node concept="2ShNRf" id="7OBD32HJ$vY" role="YScLw">
            <node concept="1pGfFk" id="7OBD32HJ$vZ" role="2ShVmc">
              <ref role="37wK5l" to="dush:~ModelSaveException.&lt;init&gt;(java.lang.String,java.lang.Iterable)" resolve="ModelSaveException" />
              <node concept="3cpWs3" id="7OBD32HJ$w0" role="37wK5m">
                <node concept="37vLTw" id="7OBD32HJ$w1" role="3uHU7w">
                  <ref role="3cqZAo" node="7OBD32HJ$wc" resolve="errorMessage" />
                </node>
                <node concept="Xl_RD" id="7OBD32HJ$w2" role="3uHU7B">
                  <property role="Xl_RC" value="Failed to save model: " />
                </node>
              </node>
              <node concept="2YIFZM" id="7OBD32HJ$w3" role="37wK5m">
                <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
                <node concept="2ShNRf" id="7OBD32HJ$w4" role="37wK5m">
                  <node concept="1pGfFk" id="7OBD32HJ$w5" role="2ShVmc">
                    <ref role="37wK5l" to="g3l6:~PersistenceProblem.&lt;init&gt;(org.jetbrains.mps.openapi.model.SModel$Problem$Kind,java.lang.String,java.lang.String,boolean)" resolve="PersistenceProblem" />
                    <node concept="Rm8GO" id="7OBD32HJ$w6" role="37wK5m">
                      <ref role="1Px2BO" to="mhbf:~SModel$Problem$Kind" resolve="SModel.Problem.Kind" />
                      <ref role="Rm8GQ" to="mhbf:~SModel$Problem$Kind.Save" resolve="Save" />
                    </node>
                    <node concept="37vLTw" id="7OBD32HJ$w7" role="37wK5m">
                      <ref role="3cqZAo" node="7OBD32HJ$wc" resolve="errorMessage" />
                    </node>
                    <node concept="10Nm6u" id="7OBD32HJ$w8" role="37wK5m" />
                    <node concept="3clFbT" id="7OBD32HJ$w9" role="37wK5m">
                      <property role="3clFbU" value="true" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7OBD32HJ$wb" role="3clF45" />
      <node concept="3uibUv" id="7OBD32HJ$we" role="Sfmx6">
        <ref role="3uigEE" to="dush:~ModelSaveException" resolve="ModelSaveException" />
      </node>
      <node concept="37vLTG" id="7OBD32HJ$wc" role="3clF46">
        <property role="TrG5h" value="errorMessage" />
        <node concept="3uibUv" id="7OBD32HJ$wd" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7OBD32HJ$wa" role="1B3o_S" />
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
    <node concept="3Tm1VV" id="537nKv8IlHF" role="1B3o_S" />
    <node concept="3uibUv" id="537nKv8Irhg" role="EKbjA">
      <ref role="3uigEE" to="g3l6:~SModelPersistence" resolve="SModelPersistence" />
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
    <node concept="Wx3nA" id="7OBD32HL7YK" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="NAME_ATTR" />
      <node concept="3Tm6S6" id="7OBD32HL7YH" role="1B3o_S" />
      <node concept="17QB3L" id="7OBD32HL7YI" role="1tU5fm" />
      <node concept="Xl_RD" id="7OBD32HL7YJ" role="33vP2m">
        <property role="Xl_RC" value="name" />
      </node>
    </node>
    <node concept="Wx3nA" id="7OBD32HLaIP" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="ID_ATTR" />
      <node concept="3Tm6S6" id="7OBD32HLaIM" role="1B3o_S" />
      <node concept="17QB3L" id="7OBD32HLaIN" role="1tU5fm" />
      <node concept="Xl_RD" id="7OBD32HLaIO" role="33vP2m">
        <property role="Xl_RC" value="id" />
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
    <node concept="312cEg" id="7OBD32HKFNI" role="jymVt">
      <property role="TrG5h" value="myName" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7OBD32HKFNn" role="1B3o_S" />
      <node concept="17QB3L" id="7OBD32HKFNY" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="7OBD32HKFP1" role="jymVt">
      <property role="TrG5h" value="myId" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7OBD32HKFOu" role="1B3o_S" />
      <node concept="3uibUv" id="7OBD32HNmsf" role="1tU5fm">
        <ref role="3uigEE" to="mhbf:~SModelId" resolve="SModelId" />
      </node>
    </node>
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
        <node concept="3clFbF" id="7OBD32HKFSF" role="3cqZAp">
          <node concept="37vLTI" id="7OBD32HKFSH" role="3clFbG">
            <node concept="37vLTw" id="7OBD32HKHYa" role="37vLTJ">
              <ref role="3cqZAo" node="7OBD32HKFP1" resolve="myId" />
            </node>
            <node concept="37vLTw" id="7OBD32HKFSO" role="37vLTx">
              <ref role="3cqZAo" node="7OBD32HKFSE" resolve="id" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7OBD32HKFSv" role="3cqZAp">
          <node concept="37vLTI" id="7OBD32HKFSx" role="3clFbG">
            <node concept="37vLTw" id="7OBD32HKHVU" role="37vLTJ">
              <ref role="3cqZAo" node="7OBD32HKFNI" resolve="myName" />
            </node>
            <node concept="37vLTw" id="7OBD32HKFSC" role="37vLTx">
              <ref role="3cqZAo" node="7OBD32HKFSu" resolve="name" />
            </node>
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
      <node concept="37vLTG" id="7OBD32HKFSu" role="3clF46">
        <property role="TrG5h" value="name" />
        <node concept="17QB3L" id="7OBD32HKFSt" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="7OBD32HKFSE" role="3clF46">
        <property role="TrG5h" value="id" />
        <node concept="3uibUv" id="7OBD32HNmd3" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SModelId" resolve="SModelId" />
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
    <node concept="2tJIrI" id="7OBD32HKGdu" role="jymVt" />
    <node concept="3clFb_" id="7OBD32HKGnG" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="17QB3L" id="7OBD32HKGnH" role="3clF45" />
      <node concept="3Tm1VV" id="7OBD32HKGnI" role="1B3o_S" />
      <node concept="3clFbS" id="7OBD32HKGnJ" role="3clF47">
        <node concept="3clFbF" id="7OBD32HKGnK" role="3cqZAp">
          <node concept="37vLTw" id="7OBD32HKGnF" role="3clFbG">
            <ref role="3cqZAo" node="7OBD32HKFNI" resolve="myName" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32HKGHz" role="jymVt" />
    <node concept="3clFb_" id="7OBD32HKGnM" role="jymVt">
      <property role="TrG5h" value="getId" />
      <node concept="3uibUv" id="7OBD32HNmzl" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SModelId" resolve="SModelId" />
      </node>
      <node concept="3Tm1VV" id="7OBD32HKGnO" role="1B3o_S" />
      <node concept="3clFbS" id="7OBD32HKGnP" role="3clF47">
        <node concept="3clFbF" id="7OBD32HKGnQ" role="3cqZAp">
          <node concept="37vLTw" id="7OBD32HKGnL" role="3clFbG">
            <ref role="3cqZAo" node="7OBD32HKFP1" resolve="myId" />
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
    <node concept="2tJIrI" id="7OBD32HKUzb" role="jymVt" />
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
        <node concept="3clFbF" id="7OBD32HL4Hu" role="3cqZAp">
          <node concept="2OqwBi" id="7OBD32HL4Z6" role="3clFbG">
            <node concept="37vLTw" id="7OBD32HL4Hs" role="2Oq$k0">
              <ref role="3cqZAo" node="7OBD32HL0UE" resolve="modelElement" />
            </node>
            <node concept="liA8E" id="7OBD32HL7zy" role="2OqNvi">
              <ref role="37wK5l" to="mmaq:~Element.setAttribute(java.lang.String,java.lang.String)" resolve="setAttribute" />
              <node concept="37vLTw" id="7OBD32HL7YN" role="37wK5m">
                <ref role="3cqZAo" node="7OBD32HL7YK" resolve="NAME_ATTR" />
              </node>
              <node concept="37vLTw" id="7OBD32HL8_A" role="37wK5m">
                <ref role="3cqZAo" node="7OBD32HKFNI" resolve="myName" />
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
              <node concept="37vLTw" id="7OBD32HLaIS" role="37wK5m">
                <ref role="3cqZAo" node="7OBD32HLaIP" resolve="ID_ATTR" />
              </node>
              <node concept="2OqwBi" id="7OBD32HLj_9" role="37wK5m">
                <node concept="37vLTw" id="7OBD32HLbDU" role="2Oq$k0">
                  <ref role="3cqZAo" node="7OBD32HKFP1" resolve="myId" />
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
        <node concept="SfApY" id="7OBD32HM8ij" role="3cqZAp">
          <node concept="3clFbS" id="7OBD32HM8il" role="SfCbr">
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
                <property role="TrG5h" value="name" />
                <node concept="3uibUv" id="7OBD32HMer_" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="7OBD32HLIqU" role="33vP2m">
                  <node concept="37vLTw" id="7OBD32HLIqV" role="2Oq$k0">
                    <ref role="3cqZAo" node="7OBD32HLIqO" resolve="modelElement" />
                  </node>
                  <node concept="liA8E" id="7OBD32HLIqW" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String)" resolve="getAttributeValue" />
                    <node concept="37vLTw" id="7OBD32HMfzE" role="37wK5m">
                      <ref role="3cqZAo" node="7OBD32HL7YK" resolve="NAME_ATTR" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7OBD32HMhHJ" role="3cqZAp">
              <node concept="3cpWsn" id="7OBD32HMhHK" role="3cpWs9">
                <property role="TrG5h" value="modelId" />
                <node concept="3uibUv" id="7OBD32HMhHL" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModelId" resolve="SModelId" />
                </node>
                <node concept="2OqwBi" id="7OBD32HMiRS" role="33vP2m">
                  <node concept="37vLTw" id="7OBD32HMBtF" role="2Oq$k0">
                    <ref role="3cqZAo" node="7OBD32HMBtD" resolve="pf" />
                  </node>
                  <node concept="liA8E" id="7OBD32HMj1m" role="2OqNvi">
                    <ref role="37wK5l" to="dush:~PersistenceFacade.createModelId(java.lang.String)" resolve="createModelId" />
                    <node concept="2OqwBi" id="7OBD32HMjpf" role="37wK5m">
                      <node concept="37vLTw" id="7OBD32HMj6m" role="2Oq$k0">
                        <ref role="3cqZAo" node="7OBD32HLIqO" resolve="modelElement" />
                      </node>
                      <node concept="liA8E" id="7OBD32HMlu9" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String)" resolve="getAttributeValue" />
                        <node concept="37vLTw" id="7OBD32HMlOC" role="37wK5m">
                          <ref role="3cqZAo" node="7OBD32HLaIP" resolve="ID_ATTR" />
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
                    <ref role="3cqZAo" node="7OBD32HMer$" resolve="name" />
                  </node>
                  <node concept="37vLTw" id="7OBD32HNlzA" role="37wK5m">
                    <ref role="3cqZAo" node="7OBD32HMhHK" resolve="modelId" />
                  </node>
                  <node concept="37vLTw" id="7OBD32HNlYW" role="37wK5m">
                    <ref role="3cqZAo" node="7OBD32HM_db" resolve="imports" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="7OBD32HM8im" role="TEbGg">
            <node concept="3cpWsn" id="7OBD32HM8io" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="7OBD32HM8To" role="1tU5fm">
                <ref role="3uigEE" to="mmaq:~JDOMException" resolve="JDOMException" />
              </node>
            </node>
            <node concept="3clFbS" id="7OBD32HM8is" role="TDEfX">
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
        <node concept="2GUZhq" id="7OBD32IaqD5" role="3cqZAp">
          <node concept="3clFbS" id="7OBD32Iaoya" role="2GV8ay">
            <node concept="3clFbF" id="7OBD32Iat0K" role="3cqZAp">
              <node concept="1rXfSq" id="7OBD32Iat0J" role="3clFbG">
                <ref role="37wK5l" node="7OBD32HKVos" resolve="save" />
                <node concept="37vLTw" id="7OBD32Iat6w" role="37wK5m">
                  <ref role="3cqZAo" node="7OBD32Iao_c" resolve="os" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7OBD32IaqD8" role="2GVbov">
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
        <node concept="2GUZhq" id="7OBD32IaunA" role="3cqZAp">
          <node concept="3clFbS" id="7OBD32IaunB" role="2GV8ay">
            <node concept="3cpWs6" id="7OBD32IawcB" role="3cqZAp">
              <node concept="1rXfSq" id="7OBD32IaunD" role="3cqZAk">
                <ref role="37wK5l" node="7OBD32HLIqK" resolve="load" />
                <node concept="37vLTw" id="7OBD32IaunE" role="37wK5m">
                  <ref role="3cqZAo" node="7OBD32Iaunx" resolve="is" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7OBD32IaunF" role="2GVbov">
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
                    <node concept="YeOm9" id="6W62yTTv85X" role="2ShVmc">
                      <node concept="1Y3b0j" id="6W62yTTv860" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="37wK5l" to="ends:~FileDataSource.&lt;init&gt;(jetbrains.mps.vfs.IFile)" resolve="FileDataSource" />
                        <ref role="1Y3XeK" to="ends:~FileDataSource" resolve="FileDataSource" />
                        <node concept="3Tm1VV" id="6W62yTTv861" role="1B3o_S" />
                        <node concept="37vLTw" id="7OBD32Id8OY" role="37wK5m">
                          <ref role="3cqZAo" node="7OBD32IcF42" resolve="descendant" />
                        </node>
                        <node concept="3clFb_" id="6W62yTTvk0Q" role="jymVt">
                          <property role="TrG5h" value="getTimestamp" />
                          <node concept="3Tm1VV" id="6W62yTTvk0R" role="1B3o_S" />
                          <node concept="3cpWsb" id="6W62yTTvk0T" role="3clF45" />
                          <node concept="3clFbS" id="6W62yTTvk0V" role="3clF47">
                            <node concept="3cpWs8" id="6W62yTTvmLX" role="3cqZAp">
                              <node concept="3cpWsn" id="6W62yTTvmLY" role="3cpWs9">
                                <property role="TrG5h" value="file" />
                                <node concept="3uibUv" id="6W62yTTvmIW" role="1tU5fm">
                                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                                </node>
                                <node concept="1rXfSq" id="6W62yTTvmLZ" role="33vP2m">
                                  <ref role="37wK5l" to="ends:~FileDataSource.getFile()" resolve="getFile" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="6W62yTTvl1g" role="3cqZAp">
                              <node concept="3clFbS" id="6W62yTTvl1i" role="3clFbx">
                                <node concept="3cpWs6" id="6W62yTTvmlM" role="3cqZAp">
                                  <node concept="3cmrfG" id="6W62yTTvmmX" role="3cqZAk">
                                    <property role="3cmrfH" value="-1" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3fqX7Q" id="6W62yTTvmag" role="3clFbw">
                                <node concept="2OqwBi" id="6W62yTTvmai" role="3fr31v">
                                  <node concept="37vLTw" id="6W62yTTvmM1" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6W62yTTvmLY" resolve="file" />
                                  </node>
                                  <node concept="liA8E" id="6W62yTTvmiX" role="2OqNvi">
                                    <ref role="37wK5l" to="3ju5:~IFile.exists()" resolve="exists" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="6W62yTTvjoo" role="3cqZAp">
                              <node concept="3cpWsn" id="6W62yTTvjop" role="3cpWs9">
                                <property role="TrG5h" value="parent" />
                                <node concept="3uibUv" id="6W62yTTvjoq" role="1tU5fm">
                                  <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
                                </node>
                                <node concept="2OqwBi" id="6W62yTTvjTk" role="33vP2m">
                                  <node concept="37vLTw" id="6W62yTTvmM0" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6W62yTTvmLY" resolve="file" />
                                  </node>
                                  <node concept="liA8E" id="6W62yTTvjZt" role="2OqNvi">
                                    <ref role="37wK5l" to="3ju5:~IFile.getParent()" resolve="getParent" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="6W62yTTvndl" role="3cqZAp">
                              <node concept="2OqwBi" id="6W62yTTvn$4" role="3clFbG">
                                <node concept="37vLTw" id="6W62yTTvndj" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6W62yTTvjop" resolve="parent" />
                                </node>
                                <node concept="liA8E" id="6W62yTTvnO0" role="2OqNvi">
                                  <ref role="37wK5l" to="3ju5:~IFile.lastModified()" resolve="lastModified" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2AHcQZ" id="6W62yTTvk0W" role="2AJF6D">
                            <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
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
          <node concept="1PaTwC" id="3inNSRVvycu" role="3ndbpf">
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
                  <node concept="3cpWs8" id="3inNSRVvyek" role="3cqZAp">
                    <node concept="3cpWsn" id="3inNSRVvyel" role="3cpWs9">
                      <property role="TrG5h" value="moduleImpl" />
                      <node concept="3uibUv" id="3inNSRVvyem" role="1tU5fm">
                        <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                      </node>
                      <node concept="0kSF2" id="3inNSRVvyen" role="33vP2m">
                        <node concept="3uibUv" id="3inNSRVvyeo" role="0kSFW">
                          <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                        </node>
                        <node concept="3rM5sP" id="3inNSRVvz44" role="0kSFX">
                          <property role="3rM5sR" value="b8a7e14f-52ea-4ee2-b17e-26c27da8084c" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="3inNSRVvyeq" role="3cqZAp">
                    <node concept="3clFbS" id="3inNSRVvyer" role="3clFbx">
                      <node concept="3clFbF" id="7H$5i_Y3Rnd" role="3cqZAp">
                        <node concept="2OqwBi" id="7H$5i_Y3R$n" role="3clFbG">
                          <node concept="37vLTw" id="7H$5i_Y3Rnb" role="2Oq$k0">
                            <ref role="3cqZAo" node="3inNSRVvyel" resolve="moduleImpl" />
                          </node>
                          <node concept="liA8E" id="7H$5i_Y3ROX" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~AbstractModule.updateModelsSet()" resolve="updateModelsSet" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="3inNSRVvyeD" role="3clFbw">
                      <node concept="10Nm6u" id="3inNSRVvyeE" role="3uHU7w" />
                      <node concept="37vLTw" id="3inNSRVvyeF" role="3uHU7B">
                        <ref role="3cqZAo" node="3inNSRVvyel" resolve="moduleImpl" />
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
                <node concept="3uibUv" id="13uTNv4n1qp" role="1tU5fm">
                  <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
                </node>
                <node concept="2OqwBi" id="13uTNv4n28G" role="33vP2m">
                  <node concept="1eOMI4" id="13uTNv4n28H" role="2Oq$k0">
                    <node concept="10QFUN" id="13uTNv4n28I" role="1eOMHV">
                      <node concept="3uibUv" id="13uTNv4n28J" role="10QFUM">
                        <ref role="3uigEE" to="g3l6:~CustomPersistenceSModel" resolve="CustomPersistenceSModel" />
                      </node>
                      <node concept="37vLTw" id="13uTNv4n28K" role="10QFUP">
                        <ref role="3cqZAo" node="13uTNv4mTO4" resolve="model" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="13uTNv4n28L" role="2OqNvi">
                    <ref role="37wK5l" to="g3l6:~CustomPersistenceSModel.getSource()" resolve="getSource" />
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
                      <node concept="2OqwBi" id="13uTNv4oFpH" role="2Oq$k0">
                        <node concept="2OqwBi" id="13uTNv4nasq" role="2Oq$k0">
                          <node concept="1eOMI4" id="13uTNv4nasr" role="2Oq$k0">
                            <node concept="10QFUN" id="13uTNv4nass" role="1eOMHV">
                              <node concept="3uibUv" id="13uTNv4nast" role="10QFUM">
                                <ref role="3uigEE" to="ends:~FileDataSource" resolve="FileDataSource" />
                              </node>
                              <node concept="37vLTw" id="13uTNv4nasu" role="10QFUP">
                                <ref role="3cqZAo" node="13uTNv4n28F" resolve="source" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="13uTNv4nasv" role="2OqNvi">
                            <ref role="37wK5l" to="ends:~FileDataSource.getFile()" resolve="getFile" />
                          </node>
                        </node>
                        <node concept="liA8E" id="13uTNv4oFTZ" role="2OqNvi">
                          <ref role="37wK5l" to="3ju5:~IFile.getParent()" resolve="getParent" />
                        </node>
                      </node>
                      <node concept="liA8E" id="13uTNv4oGb8" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.getPath()" resolve="getPath" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="13uTNv4mRC5" role="3cqZAp">
                  <node concept="3cpWsn" id="13uTNv4mRC6" role="3cpWs9">
                    <property role="TrG5h" value="fileName" />
                    <node concept="17QB3L" id="13uTNv4mRC7" role="1tU5fm" />
                    <node concept="3cpWs3" id="13uTNv4mRC8" role="33vP2m">
                      <node concept="3cpWs3" id="13uTNv4mRC9" role="3uHU7B">
                        <node concept="Xl_RD" id="13uTNv4mRCa" role="3uHU7w">
                          <property role="Xl_RC" value="." />
                        </node>
                        <node concept="3cpWs3" id="13uTNv4mRCb" role="3uHU7B">
                          <node concept="2OqwBi" id="13uTNv4mRCc" role="3uHU7w">
                            <node concept="3TrcHB" id="13uTNv4mRCe" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                            <node concept="37vLTw" id="13uTNv4mSPd" role="2Oq$k0">
                              <ref role="3cqZAo" node="13uTNv4mj3R" resolve="rootNode" />
                            </node>
                          </node>
                          <node concept="3cpWs3" id="13uTNv4mRCf" role="3uHU7B">
                            <node concept="2OqwBi" id="13uTNv4mRCg" role="3uHU7B">
                              <node concept="liA8E" id="13uTNv4mRCh" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.replace(java.lang.CharSequence,java.lang.CharSequence)" resolve="replace" />
                                <node concept="Xl_RD" id="13uTNv4mRCi" role="37wK5m">
                                  <property role="Xl_RC" value="." />
                                </node>
                                <node concept="Xl_RD" id="13uTNv4mRCj" role="37wK5m">
                                  <property role="Xl_RC" value="/" />
                                </node>
                              </node>
                              <node concept="2YIFZM" id="13uTNv4mRCk" role="2Oq$k0">
                                <ref role="37wK5l" to="18ew:~StringUtil.emptyIfNull(java.lang.String)" resolve="emptyIfNull" />
                                <ref role="1Pybhc" to="18ew:~StringUtil" resolve="StringUtil" />
                                <node concept="2OqwBi" id="13uTNv4mRCl" role="37wK5m">
                                  <node concept="37vLTw" id="13uTNv4mSxN" role="2Oq$k0">
                                    <ref role="3cqZAo" node="13uTNv4mj3R" resolve="rootNode" />
                                  </node>
                                  <node concept="3TrcHB" id="13uTNv4mRCn" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="13uTNv4mRCo" role="3uHU7w">
                              <property role="Xl_RC" value="/" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="1rXfSq" id="13uTNv4mRCp" role="3uHU7w">
                        <ref role="37wK5l" node="13uTNv4o966" resolve="getExtension" />
                        <node concept="37vLTw" id="13uTNv4oay8" role="37wK5m">
                          <ref role="3cqZAo" node="13uTNv4mj3R" resolve="rootNode" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="13uTNv4nbYV" role="3cqZAp" />
                <node concept="3cpWs6" id="13uTNv4nche" role="3cqZAp">
                  <node concept="3cpWs3" id="13uTNv4ne2g" role="3cqZAk">
                    <node concept="37vLTw" id="13uTNv4nekZ" role="3uHU7w">
                      <ref role="3cqZAo" node="13uTNv4mRC6" resolve="fileName" />
                    </node>
                    <node concept="3cpWs3" id="13uTNv4nd0P" role="3uHU7B">
                      <node concept="37vLTw" id="13uTNv4ncx8" role="3uHU7B">
                        <ref role="3cqZAo" node="13uTNv4naso" resolve="root" />
                      </node>
                      <node concept="Xl_RD" id="13uTNv4ndjb" role="3uHU7w">
                        <property role="Xl_RC" value="/" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17R0WA" id="13uTNv4n7IH" role="3clFbw">
                <node concept="10M0yZ" id="13uTNv4n88U" role="3uHU7w">
                  <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
                  <ref role="3cqZAo" node="49FXEugFoZS" resolve="DST" />
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
            <node concept="3uibUv" id="13uTNv4n0nw" role="2ZW6by">
              <ref role="3uigEE" to="g3l6:~CustomPersistenceSModel" resolve="CustomPersistenceSModel" />
            </node>
            <node concept="37vLTw" id="13uTNv4mZBU" role="2ZW6bz">
              <ref role="3cqZAo" node="13uTNv4mTO4" resolve="model" />
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
                <node concept="3uibUv" id="1eL5bn4Qw4c" role="2ZW6by">
                  <ref role="3uigEE" to="g3l6:~CustomPersistenceSModel" resolve="CustomPersistenceSModel" />
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
            <node concept="3uibUv" id="1eL5bn4Qwmj" role="1tU5fm">
              <ref role="3uigEE" to="g3l6:~CustomPersistenceSModel" resolve="CustomPersistenceSModel" />
            </node>
            <node concept="10QFUN" id="1eL5bn4QwoQ" role="33vP2m">
              <node concept="3uibUv" id="1eL5bn4Qwr4" role="10QFUM">
                <ref role="3uigEE" to="g3l6:~CustomPersistenceSModel" resolve="CustomPersistenceSModel" />
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
            <node concept="3uibUv" id="1eL5bn4Qybk" role="1tU5fm">
              <ref role="3uigEE" to="dush:~StreamDataSource" resolve="StreamDataSource" />
            </node>
            <node concept="2OqwBi" id="1eL5bn4Qycp" role="33vP2m">
              <node concept="37vLTw" id="1eL5bn4Qycq" role="2Oq$k0">
                <ref role="3cqZAo" node="1eL5bn4Qwmi" resolve="cpModel" />
              </node>
              <node concept="liA8E" id="1eL5bn4Qycr" role="2OqNvi">
                <ref role="37wK5l" to="g3l6:~CustomPersistenceSModel.getSource()" resolve="getSource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1eL5bn4Qys8" role="3cqZAp">
          <node concept="3clFbS" id="1eL5bn4Qysa" role="3clFbx">
            <node concept="3cpWs6" id="1eL5bn4QyUV" role="3cqZAp">
              <node concept="3clFbT" id="1eL5bn4QAzT" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="1eL5bn4QyTJ" role="3clFbw">
            <node concept="1eOMI4" id="1eL5bn4QyTL" role="3fr31v">
              <node concept="2ZW3vV" id="1eL5bn4QyTM" role="1eOMHV">
                <node concept="3uibUv" id="1eL5bn4QyTN" role="2ZW6by">
                  <ref role="3uigEE" to="ends:~FileDataSource" resolve="FileDataSource" />
                </node>
                <node concept="37vLTw" id="1eL5bn4QyTO" role="2ZW6bz">
                  <ref role="3cqZAo" node="1eL5bn4Qyco" resolve="source" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1eL5bn4QzGB" role="3cqZAp">
          <node concept="3cpWsn" id="1eL5bn4QzGC" role="3cpWs9">
            <property role="TrG5h" value="file" />
            <node concept="3uibUv" id="1eL5bn4QzG7" role="1tU5fm">
              <ref role="3uigEE" to="3ju5:~IFile" resolve="IFile" />
            </node>
            <node concept="2OqwBi" id="1eL5bn4QzGD" role="33vP2m">
              <node concept="1eOMI4" id="1eL5bn4QzGE" role="2Oq$k0">
                <node concept="10QFUN" id="1eL5bn4QzGF" role="1eOMHV">
                  <node concept="3uibUv" id="1eL5bn4QzGG" role="10QFUM">
                    <ref role="3uigEE" to="ends:~FileDataSource" resolve="FileDataSource" />
                  </node>
                  <node concept="37vLTw" id="1eL5bn4QzGH" role="10QFUP">
                    <ref role="3cqZAo" node="1eL5bn4Qyco" resolve="source" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1eL5bn4QzGI" role="2OqNvi">
                <ref role="37wK5l" to="ends:~FileDataSource.getFile()" resolve="getFile" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1eL5bn4QB9B" role="3cqZAp">
          <node concept="17R0WA" id="1eL5bn4Q$bJ" role="3cqZAk">
            <node concept="10M0yZ" id="1eL5bn4Q$Sa" role="3uHU7w">
              <ref role="3cqZAo" node="6ZZUlxDy3iw" resolve="HEADER_FILE" />
              <ref role="1PxDUh" node="537nKv8IlHE" resolve="IEC61499ModelFactory" />
            </node>
            <node concept="2OqwBi" id="1eL5bn4QzNH" role="3uHU7B">
              <node concept="37vLTw" id="1eL5bn4QzGJ" role="2Oq$k0">
                <ref role="3cqZAo" node="1eL5bn4QzGC" resolve="file" />
              </node>
              <node concept="liA8E" id="1eL5bn4QzXr" role="2OqNvi">
                <ref role="37wK5l" to="3ju5:~IFile.getName()" resolve="getName" />
              </node>
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
            <node concept="3uibUv" id="6NFL89TtHWC" role="1tU5fm">
              <ref role="3uigEE" to="g3l6:~CustomPersistenceSModel" resolve="CustomPersistenceSModel" />
            </node>
            <node concept="1eOMI4" id="6NFL89TtI6R" role="33vP2m">
              <node concept="10QFUN" id="6NFL89TtI6S" role="1eOMHV">
                <node concept="3uibUv" id="6NFL89TtI6T" role="10QFUM">
                  <ref role="3uigEE" to="g3l6:~CustomPersistenceSModel" resolve="CustomPersistenceSModel" />
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
</model>

