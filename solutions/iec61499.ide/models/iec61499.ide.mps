<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ff24162f-099d-43d8-a0b8-3a06f2c9c0a1(iec61499.ide)">
  <persistence version="9" />
  <languages>
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="22e72e4c-0f69-46ce-8403-6750153aa615" name="jetbrains.mps.execution.configurations" version="1" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
    <use id="756e911c-3f1f-4a48-bdf5-a2ceb91b723c" name="jetbrains.mps.execution.settings" version="0" />
    <use id="f3347d8a-0e79-4f35-8ac9-1574f25c986f" name="jetbrains.mps.execution.commands" version="0" />
    <use id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="51vd" ref="r:61dddea3-21a4-4a11-920c-747c8c1e4777(iec61499.ide.persistence)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(iec61499.structure)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
    <import index="xk9i" ref="r:49e49752-a85e-4d81-811e-1dc850a8e4cd(jetbrains.mps.execution.lib.ui)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="awpe" ref="r:5a505993-793e-4b2d-84cf-271f9dde39b3(jetbrains.mps.execution.lib)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="ends" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence(MPS.Core/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="7a0s" ref="r:2af017c2-293f-4ebb-99f3-81e353b3d6e6(jetbrains.mps.editor.runtime)" />
    <import index="z2i8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.icons(MPS.IDEA/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="kpve" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.message(MPS.Editor/)" />
    <import index="9mrk" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.executors(MPS.IDEA/)" />
    <import index="3v5a" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution(MPS.IDEA/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="n70j" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.checking(MPS.Editor/)" />
    <import index="j9co" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.event(MPS.Core/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="gpgy" ref="r:70ba2090-1a36-4ca3-87ef-116d9af7b3ac(ST.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="z1c4" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="fpme" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.workbench.dialogs.project.newproject(MPS.Workbench/)" />
    <import index="v27p" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.startup(MPS.IDEA/)" />
    <import index="l5s7" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.ide.newSolutionDialog(MPS.Workbench/)" />
    <import index="lz1h" ref="r:47803144-d0ed-4800-ae84-e83a292e3adb(jetbrains.mps.ide.ui.dialogs.modules)" />
    <import index="3s15" ref="86441d7a-e194-42da-81a5-2161ec62a379/java:jetbrains.mps.workbench(MPS.Workbench/)" />
    <import index="feyl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.actions(MPS.IDEA/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="uycu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.junit(MPS.IDEA/)" />
    <import index="dj99" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.configurations(MPS.IDEA/)" />
    <import index="9ti4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.extensions(MPS.IDEA/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="bd8o" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.application(MPS.IDEA/)" />
    <import index="pa15" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.persistence(MPS.Core/)" />
    <import index="iyvn" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.persistence.datasource(MPS.Core/)" />
    <import index="bxo2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence.datasource(MPS.OpenAPI/)" />
    <import index="kz9k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.navigation(MPS.Editor/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" />
    <import index="25x5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.text(JDK/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="mmaq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.jdom(MPS.Core/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" implicit="true" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(iec61499.behavior)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="2756621024541681841" name="jetbrains.mps.lang.resources.structure.Primitive" flags="ng" index="1irPi6">
        <child id="1860120738943552529" name="fillColor" index="3PKjn_" />
      </concept>
      <concept id="2756621024541681849" name="jetbrains.mps.lang.resources.structure.Text" flags="ng" index="1irPie">
        <property id="2756621024541681854" name="text" index="1irPi9" />
        <child id="1860120738943552534" name="color" index="3PKjny" />
      </concept>
      <concept id="2756621024541674821" name="jetbrains.mps.lang.resources.structure.TextIcon" flags="ng" index="1irR5M">
        <property id="1358878980655415353" name="iconId" index="2$rrk2" />
        <child id="2756621024541675110" name="layers" index="1irR9h" />
      </concept>
      <concept id="2756621024541675104" name="jetbrains.mps.lang.resources.structure.Circle" flags="ng" index="1irR9n" />
      <concept id="1860120738943552477" name="jetbrains.mps.lang.resources.structure.ColorLiteral" flags="ng" index="3PKj8D">
        <property id="1860120738943552481" name="val" index="3PKj8l" />
      </concept>
      <concept id="8974276187400029883" name="jetbrains.mps.lang.resources.structure.FileIcon" flags="ng" index="1QGGSu" />
      <concept id="8974276187400029891" name="jetbrains.mps.lang.resources.structure.IconExpression" flags="nn" index="1QGGTA">
        <child id="8974276187400029893" name="icon" index="1QGGTw" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1204478074808" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_MPSProject" flags="nn" index="1KvdUw" />
    </language>
    <language id="f3347d8a-0e79-4f35-8ac9-1574f25c986f" name="jetbrains.mps.execution.commands">
      <concept id="856705193941281810" name="jetbrains.mps.execution.commands.structure.ProcessType" flags="in" index="2LYoN7" />
      <concept id="2343546112398330898" name="jetbrains.mps.execution.commands.structure.NewProcessBuilderExpression" flags="nn" index="3CLvVn">
        <child id="2343546112398330901" name="commandPart" index="3CLvVg" />
      </concept>
    </language>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
        <child id="481983775135178838" name="fieldDeclaration" index="2uRRBA" />
      </concept>
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
        <child id="481983775135178844" name="fieldDeclaration" index="2uRRBG" />
      </concept>
      <concept id="481983775135178846" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDisposeBlock" flags="in" index="2uRRBI" />
      <concept id="481983775135178819" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock" flags="in" index="2uRRBN" />
      <concept id="481983775135178825" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock" flags="in" index="2uRRBT" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR">
        <property id="6862207549896125199" name="needInitConfig" index="3_H9TB" />
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
      <concept id="1239714755177" name="jetbrains.mps.baseLanguage.structure.AbstractUnaryNumberOperation" flags="nn" index="2$Kvd9">
        <child id="1239714902950" name="expression" index="2$L3a6" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA" />
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
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
      <concept id="1070533982221" name="jetbrains.mps.baseLanguage.structure.ShortType" flags="in" index="10N3zO" />
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534555686" name="jetbrains.mps.baseLanguage.structure.CharType" flags="in" index="10Pfzv" />
      <concept id="1070534604311" name="jetbrains.mps.baseLanguage.structure.ByteType" flags="in" index="10PrrI" />
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
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
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
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271221393" name="jetbrains.mps.baseLanguage.structure.NPENotEqualsExpression" flags="nn" index="17QLQc" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
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
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
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
      <concept id="1214918800624" name="jetbrains.mps.baseLanguage.structure.PostfixIncrementExpression" flags="nn" index="3uNrnE" />
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
      <concept id="1208623485264" name="jetbrains.mps.baseLanguage.structure.AbstractOperation" flags="nn" index="1B$H19" />
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
      </concept>
      <concept id="1107796713796" name="jetbrains.mps.baseLanguage.structure.Interface" flags="ig" index="3HP615" />
      <concept id="1163668896201" name="jetbrains.mps.baseLanguage.structure.TernaryOperatorExpression" flags="nn" index="3K4zz7">
        <child id="1163668914799" name="condition" index="3K4Cdx" />
        <child id="1163668922816" name="ifTrue" index="3K4E3e" />
        <child id="1163668934364" name="ifFalse" index="3K4GZi" />
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
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="22e72e4c-0f69-46ce-8403-6750153aa615" name="jetbrains.mps.execution.configurations">
      <concept id="7684700299064179245" name="jetbrains.mps.execution.configurations.structure.Project_Parameter" flags="nn" index="21ER0p" />
      <concept id="1594211126127774346" name="jetbrains.mps.execution.configurations.structure.ConsoleCreator" flags="nn" index="2bNoKo">
        <child id="1594211126127774926" name="viewer" index="2bNoDs" />
        <child id="1594211126127774925" name="project" index="2bNoDv" />
      </concept>
      <concept id="1594211126127733907" name="jetbrains.mps.execution.configurations.structure.ConsoleType" flags="in" index="2bNAC1" />
      <concept id="7301162575811126385" name="jetbrains.mps.execution.configurations.structure.NodeSource" flags="ng" index="2nMXjs">
        <reference id="7301162575811126914" name="concept" index="2nMXoJ" />
      </concept>
      <concept id="4366236229294149030" name="jetbrains.mps.execution.configurations.structure.RunConfigurationProducerPart" flags="ng" index="2w4N4h">
        <child id="7301162575811113551" name="source" index="2nMwby" />
        <child id="3642991921657904774" name="create" index="30xZXv" />
      </concept>
      <concept id="4366236229294149059" name="jetbrains.mps.execution.configurations.structure.Create_ConceptFunction" flags="in" index="2w4N5O" />
      <concept id="4366236229294105349" name="jetbrains.mps.execution.configurations.structure.RunConfigurationProducer" flags="ng" index="2w4XYM">
        <child id="4366236229294149036" name="produce" index="2w4N4r" />
        <child id="4366236229294139631" name="configuration" index="2w4Pho" />
      </concept>
      <concept id="946964771156870353" name="jetbrains.mps.execution.configurations.structure.StartProcessHandlerStatement" flags="nn" index="yIgYw">
        <child id="1594211126127621024" name="tool" index="2bO3kM" />
      </concept>
      <concept id="7806358006983614956" name="jetbrains.mps.execution.configurations.structure.RunConfigurationExecutor" flags="ng" index="RBi3j" />
      <concept id="7806358006983738927" name="jetbrains.mps.execution.configurations.structure.ConfigurationFromExecutorReference" flags="nn" index="RBKsg" />
      <concept id="3642991921658122718" name="jetbrains.mps.execution.configurations.structure.RunConfigurationCreator" flags="nn" index="30w_07">
        <reference id="3642991921658122719" name="configuration" index="30w_06" />
        <child id="529406319400385974" name="configurationName" index="uV2A8" />
      </concept>
      <concept id="3642991921657904775" name="jetbrains.mps.execution.configurations.structure.Source_ConceptFunctionParameter" flags="nn" index="30xZXu" />
      <concept id="2401501559171392633" name="jetbrains.mps.execution.configurations.structure.AbstractRunConfigurationExecutor" flags="ng" index="3wDJM8">
        <property id="5925077313451868299" name="canRun" index="35f5FB" />
        <property id="1931462339887551644" name="configurationName" index="3gLNDv" />
        <child id="7945003362267213473" name="execute" index="35uJNn" />
      </concept>
      <concept id="2401501559171345993" name="jetbrains.mps.execution.configurations.structure.RunConfiguration" flags="ng" index="3wDVqS">
        <reference id="2401501559171353314" name="configurationKind" index="3wDP8j" />
        <child id="4763274727405873310" name="icon" index="3GxumY" />
      </concept>
      <concept id="2401501559171345994" name="jetbrains.mps.execution.configurations.structure.RunConfigurationKind" flags="ng" index="3wDVqV">
        <child id="7966814097310618131" name="icon" index="1bitO_" />
      </concept>
      <concept id="6139196002333163564" name="jetbrains.mps.execution.configurations.structure.ExecuteConfiguration_Function" flags="in" index="3CCWSg" />
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="756e911c-3f1f-4a48-bdf5-a2ceb91b723c" name="jetbrains.mps.execution.settings">
      <concept id="946964771156067216" name="jetbrains.mps.execution.settings.structure.Configuration_Parameter" flags="nn" index="yHkzx" />
      <concept id="946964771156066611" name="jetbrains.mps.execution.settings.structure.EditorPropertyReference" flags="nn" index="yHkD2" />
      <concept id="946964771156066610" name="jetbrains.mps.execution.settings.structure.EditorPropertyDeclaration" flags="ng" index="yHkD3" />
      <concept id="946964771156066614" name="jetbrains.mps.execution.settings.structure.ResetFrom_Function" flags="ig" index="yHkD7" />
      <concept id="946964771156066621" name="jetbrains.mps.execution.settings.structure.SettingsEditor" flags="ng" index="yHkDc">
        <child id="946964771156066624" name="resetFrom" index="yHkCL" />
        <child id="946964771156066626" name="propertyDeclaration" index="yHkCN" />
        <child id="946964771156066623" name="applyTo" index="yHkDe" />
        <child id="946964771156066622" name="createEditor" index="yHkDf" />
      </concept>
      <concept id="946964771156066594" name="jetbrains.mps.execution.settings.structure.IPersistentPropertyHolder" flags="ng" index="yHkDj">
        <child id="946964771156066595" name="persistentProperty" index="yHkDi" />
      </concept>
      <concept id="946964771156066597" name="jetbrains.mps.execution.settings.structure.CheckProperties_Function" flags="ig" index="yHkDk" />
      <concept id="946964771156066601" name="jetbrains.mps.execution.settings.structure.ApplyTo_Function" flags="ig" index="yHkDo" />
      <concept id="946964771156066606" name="jetbrains.mps.execution.settings.structure.EditorOperationCall" flags="nn" index="yHkDv">
        <reference id="946964771156066609" name="editorOperationDeclaration" index="yHkD0" />
        <child id="946964771156066607" name="arguments" index="yHkDu" />
      </concept>
      <concept id="946964771156066582" name="jetbrains.mps.execution.settings.structure.PersistentConfigurationTemplateInitializer" flags="nn" index="yHkDB">
        <reference id="946964771156066583" name="template" index="yHkDA" />
        <child id="946964771156066584" name="parameter" index="yHkDD" />
      </concept>
      <concept id="946964771156066585" name="jetbrains.mps.execution.settings.structure.PersistentPropertyDeclaration" flags="ng" index="yHkDC" />
      <concept id="946964771156066588" name="jetbrains.mps.execution.settings.structure.EditorExpression" flags="nn" index="yHkDH">
        <reference id="946964771156066589" name="persistentPropertyDeclaration" index="yHkDG" />
      </concept>
      <concept id="946964771156066591" name="jetbrains.mps.execution.settings.structure.CheckProperitesOperation" flags="nn" index="yHkDI" />
      <concept id="946964771156066566" name="jetbrains.mps.execution.settings.structure.CreateEditor_Function" flags="ig" index="yHkDR" />
      <concept id="946964771156066574" name="jetbrains.mps.execution.settings.structure.PersistentPropertyReferenceOperation" flags="nn" index="yHkDZ">
        <reference id="946964771156066575" name="variableDeclaration" index="yHkDY" />
      </concept>
      <concept id="946964771156066336" name="jetbrains.mps.execution.settings.structure.PersistentConfiguration" flags="ng" index="yHkHh">
        <child id="946964771156066337" name="editor" index="yHkHg" />
        <child id="946964771156066338" name="checkProperties" index="yHkHj" />
      </concept>
      <concept id="946964771156066332" name="jetbrains.mps.execution.settings.structure.PersistentConfigurationType" flags="in" index="yHkHH">
        <reference id="946964771156066333" name="persistentConfiguration" index="yHkHG" />
      </concept>
      <concept id="946964771156066557" name="jetbrains.mps.execution.settings.structure.TemplatePersistentConfigurationType" flags="in" index="yHkIc" />
      <concept id="946964771156905617" name="jetbrains.mps.execution.settings.structure.PersistentConfigurationAssistent" flags="ng" index="yIonw">
        <reference id="946964771156905618" name="configuration" index="yIonz" />
      </concept>
      <concept id="2722628536111969416" name="jetbrains.mps.execution.settings.structure.GridBagConstraints" flags="nn" index="1rwKMM">
        <property id="2722628536111969418" name="constraintsKind" index="1rwKMK" />
        <child id="2722628536112144966" name="order" index="1rxHDW" />
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
    <language id="df345b11-b8c7-4213-ac66-48d2a9b75d88" name="jetbrains.mps.baseLanguageInternal">
      <concept id="1173990517731" name="jetbrains.mps.baseLanguageInternal.structure.InternalStaticMethodCall" flags="nn" index="1niqFM">
        <property id="1173992444083" name="methodName" index="1npL6y" />
        <property id="1173992483054" name="fqClassName" index="1npUBZ" />
        <child id="319021450862604085" name="actualArgument" index="2U24H$" />
        <child id="1175794062018" name="returnType" index="32Mpfj" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="427659576753752243" name="jetbrains.mps.lang.smodel.structure.ModulePointer" flags="ng" index="20RdaH">
        <property id="427659576753753627" name="moduleId" index="20Rdg5" />
        <property id="427659576753753625" name="moduleName" index="20Rdg7" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7400021826771268254" name="jetbrains.mps.lang.smodel.structure.SNodePointerType" flags="ig" index="2sp9CU">
        <reference id="7400021826771268269" name="concept" index="2sp9C9" />
      </concept>
      <concept id="1166648550386" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewRootNodeOperation" flags="nn" index="2xF2bX" />
      <concept id="4065387505485742749" name="jetbrains.mps.lang.smodel.structure.AbstractPointerResolveOperation" flags="ng" index="2yCiFS">
        <child id="3648723375513868575" name="repositoryArg" index="Vysub" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143235216708" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewNodeOperation" flags="nn" index="I8ghe">
        <reference id="1143235391024" name="concept" index="I8UWU" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1212008292747" name="jetbrains.mps.lang.smodel.structure.Model_GetLongNameOperation" flags="nn" index="LkI2h" />
      <concept id="1171305280644" name="jetbrains.mps.lang.smodel.structure.Node_GetDescendantsOperation" flags="nn" index="2Rf3mk" />
      <concept id="3648723375513868532" name="jetbrains.mps.lang.smodel.structure.NodePointer_ResolveOperation" flags="ng" index="Vyspw" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1678062499342629858" name="jetbrains.mps.lang.smodel.structure.ModuleRefExpression" flags="ng" index="37shsh">
        <child id="1678062499342629861" name="moduleId" index="37shsm" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1144100932627" name="jetbrains.mps.lang.smodel.structure.OperationParm_Inclusion" flags="ng" index="1xIGOp" />
      <concept id="1144101972840" name="jetbrains.mps.lang.smodel.structure.OperationParm_Concept" flags="ng" index="1xMEDy">
        <child id="1207343664468" name="conceptArgument" index="ri$Ld" />
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
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
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
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1204980550705" name="jetbrains.mps.baseLanguage.collections.structure.VisitAllOperation" flags="nn" index="2es0OD" />
      <concept id="1226511727824" name="jetbrains.mps.baseLanguage.collections.structure.SetType" flags="in" index="2hMVRd">
        <child id="1226511765987" name="elementType" index="2hN53Y" />
      </concept>
      <concept id="1226516258405" name="jetbrains.mps.baseLanguage.collections.structure.HashSetCreator" flags="nn" index="2i4dXS" />
      <concept id="1207233427108" name="jetbrains.mps.baseLanguage.collections.structure.MapRemoveOperation" flags="nn" index="kI3uX">
        <child id="1207233489861" name="key" index="kIiFs" />
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
        <child id="1237721435808" name="initValue" index="HW$Y0" />
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1240325842691" name="jetbrains.mps.baseLanguage.collections.structure.AsSequenceOperation" flags="nn" index="39bAoz" />
      <concept id="1167380149909" name="jetbrains.mps.baseLanguage.collections.structure.RemoveElementOperation" flags="nn" index="3dhRuq" />
      <concept id="1201872418428" name="jetbrains.mps.baseLanguage.collections.structure.GetKeysOperation" flags="nn" index="3lbrtF" />
      <concept id="1197683403723" name="jetbrains.mps.baseLanguage.collections.structure.MapType" flags="in" index="3rvAFt">
        <child id="1197683466920" name="keyType" index="3rvQeY" />
        <child id="1197683475734" name="valueType" index="3rvSg0" />
      </concept>
      <concept id="1197686869805" name="jetbrains.mps.baseLanguage.collections.structure.HashMapCreator" flags="nn" index="3rGOSV">
        <child id="1197687026896" name="keyType" index="3rHrn6" />
        <child id="1197687035757" name="valueType" index="3rHtpV" />
      </concept>
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1225727723840" name="jetbrains.mps.baseLanguage.collections.structure.FindFirstOperation" flags="nn" index="1z4cxt" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1240824834947" name="jetbrains.mps.baseLanguage.collections.structure.ValueAccessOperation" flags="nn" index="3AV6Ez" />
      <concept id="1240825616499" name="jetbrains.mps.baseLanguage.collections.structure.KeyAccessOperation" flags="nn" index="3AY5_j" />
      <concept id="1197932370469" name="jetbrains.mps.baseLanguage.collections.structure.MapElement" flags="nn" index="3EllGN">
        <child id="1197932505799" name="map" index="3ElQJh" />
        <child id="1197932525128" name="key" index="3ElVtu" />
      </concept>
      <concept id="1172254888721" name="jetbrains.mps.baseLanguage.collections.structure.ContainsOperation" flags="nn" index="3JPx81" />
    </language>
  </registry>
  <node concept="2uRRBC" id="1_Zi$XmjztV">
    <property role="TrG5h" value="IEC-61499 Persistence" />
    <property role="3GE5qa" value="modelFactory" />
    <node concept="2uRRBj" id="1_Zi$XmjFJ_" role="2uRRBE">
      <node concept="3clFbS" id="1_Zi$XmjFJA" role="2VODD2">
        <node concept="3clFbF" id="6kvdbYu8uiF" role="3cqZAp">
          <node concept="2OqwBi" id="6kvdbYu8uBP" role="3clFbG">
            <node concept="2YIFZM" id="6kvdbYu8uoy" role="2Oq$k0">
              <ref role="37wK5l" to="ends:~ModelFactoryService.getInstance():jetbrains.mps.extapi.persistence.ModelFactoryService" resolve="getInstance" />
              <ref role="1Pybhc" to="ends:~ModelFactoryService" resolve="ModelFactoryService" />
            </node>
            <node concept="liA8E" id="6kvdbYu8v0l" role="2OqNvi">
              <ref role="37wK5l" to="ends:~ModelFactoryService.register(org.jetbrains.mps.openapi.persistence.ModelFactory):void" resolve="register" />
              <node concept="10M0yZ" id="6kvdbYu8$$f" role="37wK5m">
                <ref role="3cqZAo" node="1_Zi$XmmA7o" resolve="MODEL_FACTORY" />
                <ref role="1PxDUh" node="1_Zi$Xmm_zm" resolve="IEC61499Persistence" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kvdbYu7vil" role="3cqZAp">
          <node concept="2YIFZM" id="6kvdbYu7vlk" role="3clFbG">
            <ref role="37wK5l" node="6kvdbYu7uFn" resolve="reloadLibraries" />
            <ref role="1Pybhc" node="1_Zi$Xmm_zm" resolve="IEC61499Persistence" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="1_Zi$Xmm_77" role="2uRRBF">
      <node concept="3clFbS" id="1_Zi$Xmm_78" role="2VODD2">
        <node concept="3clFbF" id="6kvdbYu8$HH" role="3cqZAp">
          <node concept="2OqwBi" id="6kvdbYu8$HI" role="3clFbG">
            <node concept="2YIFZM" id="6kvdbYu8$HJ" role="2Oq$k0">
              <ref role="1Pybhc" to="ends:~ModelFactoryService" resolve="ModelFactoryService" />
              <ref role="37wK5l" to="ends:~ModelFactoryService.getInstance():jetbrains.mps.extapi.persistence.ModelFactoryService" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="6kvdbYu8$HK" role="2OqNvi">
              <ref role="37wK5l" to="ends:~ModelFactoryService.unregister(org.jetbrains.mps.openapi.persistence.ModelFactory):void" resolve="unregister" />
              <node concept="10M0yZ" id="6kvdbYu8$HL" role="37wK5m">
                <ref role="3cqZAo" node="1_Zi$XmmA7o" resolve="MODEL_FACTORY" />
                <ref role="1PxDUh" node="1_Zi$Xmm_zm" resolve="IEC61499Persistence" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kvdbYu7vol" role="3cqZAp">
          <node concept="2YIFZM" id="6kvdbYu7vom" role="3clFbG">
            <ref role="1Pybhc" node="1_Zi$Xmm_zm" resolve="IEC61499Persistence" />
            <ref role="37wK5l" node="6kvdbYu7uFn" resolve="reloadLibraries" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="4sMntFAig8l">
    <property role="3_H9TB" value="true" />
  </node>
  <node concept="3wDVqV" id="4sMntFA6Qcd">
    <property role="TrG5h" value="IEC 61499" />
    <property role="3GE5qa" value="forteIntegration" />
    <node concept="1QGGSu" id="4sMntFA6Qce" role="1bitO_" />
  </node>
  <node concept="3wDVqS" id="4sMntFA6fDp">
    <property role="TrG5h" value="ForteLocalPC" />
    <property role="3GE5qa" value="forteIntegration" />
    <ref role="3wDP8j" node="4sMntFA6Qcd" resolve="IEC 61499" />
    <node concept="1QGGSu" id="4sMntFA6fDq" role="3GxumY" />
    <node concept="yHkDc" id="4sMntFA6fDr" role="yHkHg">
      <node concept="yHkD3" id="6kvdbYukCZN" role="yHkCN">
        <property role="TrG5h" value="myRTPathChooser" />
        <node concept="3uibUv" id="6kvdbYukCZO" role="1tU5fm">
          <ref role="3uigEE" to="xk9i:14R2qyOCo9f" resolve="FieldWithPathChooseDialog" />
        </node>
      </node>
      <node concept="yHkDR" id="4sMntFA6fDs" role="yHkDf">
        <node concept="3clFbS" id="4sMntFA6fDt" role="2VODD2">
          <node concept="3cpWs8" id="4sMntFAc31Z" role="3cqZAp">
            <node concept="3cpWsn" id="4sMntFAc320" role="3cpWs9">
              <property role="TrG5h" value="panel" />
              <node concept="3uibUv" id="4sMntFAc321" role="1tU5fm">
                <ref role="3uigEE" to="qqrq:~JBPanel" resolve="JBPanel" />
              </node>
              <node concept="2ShNRf" id="4sMntFAc32p" role="33vP2m">
                <node concept="1pGfFk" id="4sMntFAc3yb" role="2ShVmc">
                  <ref role="37wK5l" to="qqrq:~JBPanel.&lt;init&gt;(java.awt.LayoutManager)" resolve="JBPanel" />
                  <node concept="2ShNRf" id="4sMntFAc3HO" role="37wK5m">
                    <node concept="1pGfFk" id="4sMntFAc4ac" role="2ShVmc">
                      <ref role="37wK5l" to="z60i:~GridBagLayout.&lt;init&gt;()" resolve="GridBagLayout" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6kvdbYupru7" role="3cqZAp" />
          <node concept="3cpWs8" id="4sMntFA7fpW" role="3cqZAp">
            <node concept="3cpWsn" id="4sMntFA7fpX" role="3cpWs9">
              <property role="TrG5h" value="dLabel" />
              <node concept="3uibUv" id="4sMntFA7fpY" role="1tU5fm">
                <ref role="3uigEE" to="qqrq:~JBLabel" resolve="JBLabel" />
              </node>
              <node concept="2ShNRf" id="4sMntFA7hD1" role="33vP2m">
                <node concept="1pGfFk" id="4sMntFA7oKw" role="2ShVmc">
                  <ref role="37wK5l" to="qqrq:~JBLabel.&lt;init&gt;(java.lang.String)" resolve="JBLabel" />
                  <node concept="Xl_RD" id="4sMntFA7qRl" role="37wK5m">
                    <property role="Xl_RC" value="Select device:" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4sMntFAd3Mm" role="3cqZAp">
            <node concept="2OqwBi" id="4sMntFAd4YP" role="3clFbG">
              <node concept="37vLTw" id="4sMntFAd3Mk" role="2Oq$k0">
                <ref role="3cqZAo" node="4sMntFAc320" resolve="panel" />
              </node>
              <node concept="liA8E" id="4sMntFAdeBi" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
                <node concept="37vLTw" id="6kvdbYupqCF" role="37wK5m">
                  <ref role="3cqZAo" node="4sMntFA7fpX" resolve="dLabel" />
                </node>
                <node concept="1rwKMM" id="4sMntFAdxcJ" role="37wK5m">
                  <property role="1rwKMK" value="label" />
                  <node concept="3cmrfG" id="4sMntFAdQpM" role="1rxHDW">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6kvdbYupskQ" role="3cqZAp" />
          <node concept="3cpWs8" id="5gyVhZ17Jjk" role="3cqZAp">
            <node concept="3cpWsn" id="5gyVhZ17Jjl" role="3cpWs9">
              <property role="TrG5h" value="nodeChooser" />
              <node concept="3uibUv" id="4sMntFAaHQj" role="1tU5fm">
                <ref role="3uigEE" to="xk9i:7byHRlLC1T4" resolve="NodeByConceptChooser" />
              </node>
              <node concept="2OqwBi" id="5gyVhZ17Jjn" role="33vP2m">
                <node concept="yHkDH" id="5gyVhZ17Jjo" role="2Oq$k0">
                  <ref role="yHkDG" node="4sMntFA6S9L" resolve="myDevice" />
                </node>
                <node concept="yHkDv" id="4sMntFAaItt" role="2OqNvi">
                  <ref role="yHkD0" to="awpe:7byHRlLC1R$" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6kvdbYuplSk" role="3cqZAp">
            <node concept="2OqwBi" id="6kvdbYuplSl" role="3clFbG">
              <node concept="37vLTw" id="6kvdbYuplSm" role="2Oq$k0">
                <ref role="3cqZAo" node="4sMntFAc320" resolve="panel" />
              </node>
              <node concept="liA8E" id="6kvdbYuplSn" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
                <node concept="37vLTw" id="6kvdbYupnX$" role="37wK5m">
                  <ref role="3cqZAo" node="5gyVhZ17Jjl" resolve="nodeChooser" />
                </node>
                <node concept="1rwKMM" id="6kvdbYuplSp" role="37wK5m">
                  <property role="1rwKMK" value="field" />
                  <node concept="3cmrfG" id="6kvdbYuppF8" role="1rxHDW">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6kvdbYuptbA" role="3cqZAp" />
          <node concept="3cpWs8" id="4sMntFAdfRI" role="3cqZAp">
            <node concept="3cpWsn" id="4sMntFAdfRJ" role="3cpWs9">
              <property role="TrG5h" value="fLabel" />
              <node concept="3uibUv" id="4sMntFAdfRK" role="1tU5fm">
                <ref role="3uigEE" to="qqrq:~JBLabel" resolve="JBLabel" />
              </node>
              <node concept="2ShNRf" id="4sMntFAdjEL" role="33vP2m">
                <node concept="1pGfFk" id="4sMntFAdklE" role="2ShVmc">
                  <ref role="37wK5l" to="qqrq:~JBLabel.&lt;init&gt;(java.lang.String)" resolve="JBLabel" />
                  <node concept="Xl_RD" id="4sMntFAdkKg" role="37wK5m">
                    <property role="Xl_RC" value="Forte RT path:" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6kvdbYupu2n" role="3cqZAp">
            <node concept="2OqwBi" id="6kvdbYupu2o" role="3clFbG">
              <node concept="37vLTw" id="6kvdbYupu2p" role="2Oq$k0">
                <ref role="3cqZAo" node="4sMntFAc320" resolve="panel" />
              </node>
              <node concept="liA8E" id="6kvdbYupu2q" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
                <node concept="37vLTw" id="4FkwH71fSAj" role="37wK5m">
                  <ref role="3cqZAo" node="4sMntFAdfRJ" resolve="fLabel" />
                </node>
                <node concept="1rwKMM" id="6kvdbYupu2s" role="37wK5m">
                  <property role="1rwKMK" value="label" />
                  <node concept="3cmrfG" id="6kvdbYupv3d" role="1rxHDW">
                    <property role="3cmrfH" value="2" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6kvdbYupvTR" role="3cqZAp" />
          <node concept="3clFbF" id="6kvdbYupBtl" role="3cqZAp">
            <node concept="37vLTI" id="6kvdbYup_r4" role="3clFbG">
              <node concept="yHkD2" id="6kvdbYup_r5" role="37vLTJ">
                <ref role="3cqZAo" node="6kvdbYukCZN" resolve="myRTPathChooser" />
              </node>
              <node concept="2ShNRf" id="6kvdbYup_r6" role="37vLTx">
                <node concept="1pGfFk" id="6kvdbYup_r7" role="2ShVmc">
                  <ref role="37wK5l" to="xk9i:14R2qyOCoar" resolve="FieldWithPathChooseDialog" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4sMntFAfx1A" role="3cqZAp">
            <node concept="2OqwBi" id="4sMntFAfygr" role="3clFbG">
              <node concept="37vLTw" id="6kvdbYupKPx" role="2Oq$k0">
                <ref role="3cqZAo" node="4sMntFAc320" resolve="panel" />
              </node>
              <node concept="liA8E" id="4sMntFAfH9m" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
                <node concept="yHkD2" id="6kvdbYupCqT" role="37wK5m">
                  <ref role="3cqZAo" node="6kvdbYukCZN" resolve="myRTPathChooser" />
                </node>
                <node concept="1rwKMM" id="6kvdbYupLGZ" role="37wK5m">
                  <property role="1rwKMK" value="field" />
                  <node concept="3cmrfG" id="6kvdbYupNuY" role="1rxHDW">
                    <property role="3cmrfH" value="3" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="6kvdbYupJUy" role="3cqZAp" />
          <node concept="3cpWs6" id="4sMntFA7JKx" role="3cqZAp">
            <node concept="37vLTw" id="6kvdbYuqmA3" role="3cqZAk">
              <ref role="3cqZAo" node="4sMntFAc320" resolve="panel" />
            </node>
          </node>
        </node>
      </node>
      <node concept="yHkD7" id="4sMntFA7U6q" role="yHkCL">
        <node concept="3clFbS" id="4sMntFA7U6r" role="2VODD2">
          <node concept="3clFbF" id="4sMntFA7U9P" role="3cqZAp">
            <node concept="2OqwBi" id="4sMntFA7YBD" role="3clFbG">
              <node concept="yHkDv" id="4sMntFA80sA" role="2OqNvi">
                <ref role="yHkD0" to="awpe:7byHRlLC1RR" />
                <node concept="2OqwBi" id="4sMntFA82xj" role="yHkDu">
                  <node concept="yHkzx" id="4sMntFA81te" role="2Oq$k0" />
                  <node concept="yHkDZ" id="4sMntFA83Lz" role="2OqNvi">
                    <ref role="yHkDY" node="4sMntFA6S9L" resolve="myDevice" />
                  </node>
                </node>
              </node>
              <node concept="yHkDH" id="4sMntFA80el" role="2Oq$k0">
                <ref role="yHkDG" node="4sMntFA6S9L" resolve="myDevice" />
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6kvdbYukJVQ" role="3cqZAp">
            <node concept="2OqwBi" id="6kvdbYukJVR" role="3clFbG">
              <node concept="yHkD2" id="6kvdbYukJVS" role="2Oq$k0">
                <ref role="3cqZAo" node="6kvdbYukCZN" resolve="myRTPathChooser" />
              </node>
              <node concept="liA8E" id="6kvdbYukJVT" role="2OqNvi">
                <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.setText(java.lang.String):void" resolve="setText" />
                <node concept="2OqwBi" id="6kvdbYukJVU" role="37wK5m">
                  <node concept="yHkzx" id="6kvdbYukJVV" role="2Oq$k0" />
                  <node concept="yHkDZ" id="6kvdbYukJVW" role="2OqNvi">
                    <ref role="yHkDY" node="4sMntFAbQXy" resolve="myForteRTPath" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="yHkDo" id="4sMntFA8eH_" role="yHkDe">
        <node concept="3clFbS" id="4sMntFA8eHA" role="2VODD2">
          <node concept="3clFbF" id="4sMntFA8fHG" role="3cqZAp">
            <node concept="2OqwBi" id="4sMntFA8fJ9" role="3clFbG">
              <node concept="yHkDH" id="4sMntFA8fHF" role="2Oq$k0">
                <ref role="yHkDG" node="4sMntFA6S9L" resolve="myDevice" />
              </node>
              <node concept="yHkDv" id="4sMntFA9fQH" role="2OqNvi">
                <ref role="yHkD0" to="awpe:7byHRlLC1S0" />
                <node concept="2OqwBi" id="4sMntFA9hWY" role="yHkDu">
                  <node concept="yHkzx" id="4sMntFA9gU9" role="2Oq$k0" />
                  <node concept="yHkDZ" id="4sMntFA9jfj" role="2OqNvi">
                    <ref role="yHkDY" node="4sMntFA6S9L" resolve="myDevice" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="6kvdbYukMIh" role="3cqZAp">
            <node concept="37vLTI" id="6kvdbYukMIi" role="3clFbG">
              <node concept="2OqwBi" id="6kvdbYukMIj" role="37vLTx">
                <node concept="yHkD2" id="6kvdbYukMIk" role="2Oq$k0">
                  <ref role="3cqZAo" node="6kvdbYukCZN" resolve="myRTPathChooser" />
                </node>
                <node concept="liA8E" id="6kvdbYukMIl" role="2OqNvi">
                  <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.getText():java.lang.String" resolve="getText" />
                </node>
              </node>
              <node concept="2OqwBi" id="6kvdbYukMIm" role="37vLTJ">
                <node concept="yHkzx" id="6kvdbYukMIn" role="2Oq$k0" />
                <node concept="yHkDZ" id="6kvdbYukMIo" role="2OqNvi">
                  <ref role="yHkDY" node="4sMntFAbQXy" resolve="myForteRTPath" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="yHkDC" id="4sMntFA6S9L" role="yHkDi">
      <property role="TrG5h" value="myDevice" />
      <node concept="yHkIc" id="4sMntFAaqUw" role="1tU5fm">
        <ref role="yHkHG" to="awpe:7byHRlLC1PU" resolve="NodeByConcept" />
      </node>
      <node concept="2ShNRf" id="4sMntFA6YG1" role="33vP2m">
        <node concept="yHkDB" id="4sMntFA70aU" role="2ShVmc">
          <ref role="yHkDA" to="awpe:7byHRlLC1PU" resolve="NodeByConcept" />
          <node concept="35c_gC" id="4sMntFAaAfy" role="yHkDD">
            <ref role="35c_gD" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
          </node>
          <node concept="1bVj0M" id="4sMntFA779E" role="yHkDD">
            <node concept="3clFbS" id="4sMntFA779G" role="1bW5cS">
              <node concept="3clFbF" id="4sMntFA77_H" role="3cqZAp">
                <node concept="2YIFZM" id="6kvdbYukjTW" role="3clFbG">
                  <ref role="37wK5l" node="6kvdbYuhGti" resolve="isApplicable" />
                  <ref role="1Pybhc" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
                  <node concept="1PxgMI" id="6kvdbYukpgI" role="37wK5m">
                    <node concept="chp4Y" id="6kvdbYukrKn" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
                    </node>
                    <node concept="37vLTw" id="6kvdbYukmpf" role="1m5AlR">
                      <ref role="3cqZAo" node="4sMntFA781V" resolve="it" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="37vLTG" id="4sMntFA781V" role="1bW2Oz">
              <property role="TrG5h" value="it" />
              <node concept="3Tqbb2" id="4sMntFA781U" role="1tU5fm" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="yHkDC" id="4sMntFAbQXy" role="yHkDi">
      <property role="TrG5h" value="myForteRTPath" />
      <node concept="17QB3L" id="4sMntFAbYPF" role="1tU5fm" />
    </node>
    <node concept="yHkDk" id="4sMntFA79CJ" role="yHkHj">
      <node concept="3clFbS" id="4sMntFA79CK" role="2VODD2">
        <node concept="3clFbF" id="4sMntFA79Di" role="3cqZAp">
          <node concept="2OqwBi" id="4sMntFA7ae3" role="3clFbG">
            <node concept="2OqwBi" id="4sMntFA79Iu" role="2Oq$k0">
              <node concept="2WthIp" id="4sMntFA79Dh" role="2Oq$k0" />
              <node concept="yHkDZ" id="4sMntFA79O2" role="2OqNvi">
                <ref role="yHkDY" node="4sMntFA6S9L" resolve="myDevice" />
              </node>
            </node>
            <node concept="yHkDI" id="4sMntFA7aYn" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="RBi3j" id="4sMntFA6o1m">
    <property role="35f5FB" value="true" />
    <property role="3gLNDv" value="myRunConfiguration" />
    <property role="3GE5qa" value="forteIntegration" />
    <ref role="yIonz" node="4sMntFA6fDp" resolve="ForteLocalPC" />
    <node concept="3CCWSg" id="4sMntFA7SOs" role="35uJNn">
      <node concept="3clFbS" id="4sMntFA7SOt" role="2VODD2">
        <node concept="3cpWs8" id="4sMntFAj5Xd" role="3cqZAp">
          <node concept="3cpWsn" id="4sMntFAj5Xe" role="3cpWs9">
            <property role="TrG5h" value="forte" />
            <node concept="17QB3L" id="4sMntFAj5X8" role="1tU5fm" />
            <node concept="2OqwBi" id="4sMntFAj5Xg" role="33vP2m">
              <node concept="RBKsg" id="4sMntFAj5Xh" role="2Oq$k0" />
              <node concept="yHkDZ" id="6kvdbYul7$R" role="2OqNvi">
                <ref role="yHkDY" node="4sMntFAbQXy" resolve="myForteRTPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4sMntFAj6ii" role="3cqZAp">
          <node concept="3cpWsn" id="4sMntFAj6il" role="3cpWs9">
            <property role="TrG5h" value="deviceRef" />
            <node concept="3uibUv" id="4FkwH71groy" role="1tU5fm">
              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
            </node>
            <node concept="2OqwBi" id="4FkwH71gpJb" role="33vP2m">
              <node concept="2OqwBi" id="6kvdbYuqA88" role="2Oq$k0">
                <node concept="RBKsg" id="6kvdbYuq_Os" role="2Oq$k0" />
                <node concept="yHkDZ" id="4FkwH71gp3$" role="2OqNvi">
                  <ref role="yHkDY" node="4sMntFA6S9L" resolve="myDevice" />
                </node>
              </node>
              <node concept="2XshWL" id="4FkwH71gqJA" role="2OqNvi">
                <ref role="2WH_rO" to="awpe:7byHRlLC1Qg" resolve="getNodeRef" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4FkwH71grea" role="3cqZAp">
          <node concept="3cpWsn" id="4FkwH71gred" role="3cpWs9">
            <property role="TrG5h" value="port" />
            <node concept="10Oyi0" id="4FkwH71gre8" role="1tU5fm" />
            <node concept="3cmrfG" id="4FkwH71gsgi" role="33vP2m">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4FkwH71gsYq" role="3cqZAp" />
        <node concept="3cpWs8" id="4FkwH71gwqR" role="3cqZAp">
          <node concept="3cpWsn" id="4FkwH71gwqS" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <node concept="3uibUv" id="4FkwH71gwqP" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2YIFZM" id="4FkwH71gwqT" role="33vP2m">
              <ref role="37wK5l" to="alof:~ProjectHelper.getProjectRepository(com.intellij.openapi.project.Project):org.jetbrains.mps.openapi.module.SRepository" resolve="getProjectRepository" />
              <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
              <node concept="21ER0p" id="4FkwH71gwqU" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4FkwH71guif" role="3cqZAp">
          <node concept="2OqwBi" id="4FkwH71gvUs" role="3clFbG">
            <node concept="2OqwBi" id="4FkwH71guNq" role="2Oq$k0">
              <node concept="37vLTw" id="4FkwH71gwqV" role="2Oq$k0">
                <ref role="3cqZAo" node="4FkwH71gwqS" resolve="repo" />
              </node>
              <node concept="liA8E" id="4FkwH71gvDG" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="4FkwH71gwbQ" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable):void" resolve="runReadAction" />
              <node concept="1bVj0M" id="4FkwH71gwi7" role="37wK5m">
                <node concept="3clFbS" id="4FkwH71gwi8" role="1bW5cS">
                  <node concept="3cpWs8" id="4FkwH71gzOn" role="3cqZAp">
                    <node concept="3cpWsn" id="4FkwH71gzOo" role="3cpWs9">
                      <property role="TrG5h" value="device" />
                      <node concept="3Tqbb2" id="4FkwH71g$82" role="1tU5fm">
                        <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
                      </node>
                      <node concept="1PxgMI" id="4FkwH71g_8h" role="33vP2m">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="4FkwH71g_fR" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
                        </node>
                        <node concept="2OqwBi" id="4FkwH71gzOp" role="1m5AlR">
                          <node concept="37vLTw" id="4FkwH71gzOq" role="2Oq$k0">
                            <ref role="3cqZAo" node="4sMntFAj6il" resolve="deviceRef" />
                          </node>
                          <node concept="liA8E" id="4FkwH71gzOr" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.model.SNode" resolve="resolve" />
                            <node concept="37vLTw" id="4FkwH71gzOs" role="37wK5m">
                              <ref role="3cqZAo" node="4FkwH71gwqS" resolve="repo" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4FkwH71g__B" role="3cqZAp">
                    <node concept="37vLTI" id="4FkwH71gAEO" role="3clFbG">
                      <node concept="2YIFZM" id="4FkwH71gBqQ" role="37vLTx">
                        <ref role="37wK5l" node="6kvdbYuhQnx" resolve="getPort" />
                        <ref role="1Pybhc" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
                        <node concept="37vLTw" id="4FkwH71gBz6" role="37wK5m">
                          <ref role="3cqZAo" node="4FkwH71gzOo" resolve="device" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="4FkwH71g__$" role="37vLTJ">
                        <ref role="3cqZAo" node="4FkwH71gred" resolve="port" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4sMntFAjYFr" role="3cqZAp" />
        <node concept="3cpWs8" id="4sMntFAj2qQ" role="3cqZAp">
          <node concept="3cpWsn" id="4sMntFAj2qR" role="3cpWs9">
            <property role="TrG5h" value="process" />
            <node concept="2LYoN7" id="4sMntFAj2qP" role="1tU5fm" />
            <node concept="3CLvVn" id="4sMntFAj2qS" role="33vP2m">
              <node concept="3cpWs3" id="4sMntFAkajr" role="3CLvVg">
                <node concept="37vLTw" id="4FkwH71gBQ7" role="3uHU7w">
                  <ref role="3cqZAo" node="4FkwH71gred" resolve="port" />
                </node>
                <node concept="3cpWs3" id="4sMntFAk4Pb" role="3uHU7B">
                  <node concept="37vLTw" id="4sMntFAj5Xk" role="3uHU7B">
                    <ref role="3cqZAo" node="4sMntFAj5Xe" resolve="forte" />
                  </node>
                  <node concept="Xl_RD" id="4sMntFAk50m" role="3uHU7w">
                    <property role="Xl_RC" value=" -c localhost:" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4sMntFAjY_6" role="3cqZAp">
          <node concept="3cpWsn" id="5gyVhZ17Jmo" role="3cpWs9">
            <property role="TrG5h" value="console" />
            <node concept="2bNAC1" id="5gyVhZ17Jmp" role="1tU5fm" />
            <node concept="2ShNRf" id="5gyVhZ17Jmq" role="33vP2m">
              <node concept="2bNoKo" id="5gyVhZ17Jmr" role="2ShVmc">
                <node concept="21ER0p" id="5gyVhZ17Jms" role="2bNoDv" />
                <node concept="3clFbT" id="5gyVhZ17Jmt" role="2bNoDs">
                  <property role="3clFbU" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4sMntFAjYvb" role="3cqZAp" />
        <node concept="yIgYw" id="4sMntFAjogG" role="3cqZAp">
          <node concept="37vLTw" id="4sMntFAjohU" role="3cqZAk">
            <ref role="3cqZAo" node="4sMntFAj2qR" resolve="process" />
          </node>
          <node concept="37vLTw" id="4sMntFAjYLu" role="2bO3kM">
            <ref role="3cqZAo" node="5gyVhZ17Jmo" resolve="console" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2w4XYM" id="4sMntFAbePr">
    <property role="3GE5qa" value="forteIntegration" />
    <node concept="2w4N4h" id="4sMntFAbg6X" role="2w4N4r">
      <node concept="2nMXjs" id="4sMntFAbg8K" role="2nMwby">
        <ref role="2nMXoJ" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
      </node>
      <node concept="2w4N5O" id="4sMntFAbg6Z" role="30xZXv">
        <node concept="3clFbS" id="4sMntFAbg70" role="2VODD2">
          <node concept="3cpWs8" id="7OBD32HFhcg" role="3cqZAp">
            <node concept="3cpWsn" id="7OBD32HFhcj" role="3cpWs9">
              <property role="TrG5h" value="device" />
              <node concept="3Tqbb2" id="7OBD32HFhce" role="1tU5fm">
                <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
              </node>
              <node concept="30xZXu" id="7OBD32HFi2$" role="33vP2m" />
            </node>
          </node>
          <node concept="3clFbJ" id="6kvdbYumYey" role="3cqZAp">
            <node concept="3clFbS" id="6kvdbYumYe$" role="3clFbx">
              <node concept="3cpWs6" id="6kvdbYumZud" role="3cqZAp">
                <node concept="10Nm6u" id="6kvdbYumZEX" role="3cqZAk" />
              </node>
            </node>
            <node concept="3fqX7Q" id="6kvdbYumZe9" role="3clFbw">
              <node concept="2YIFZM" id="6kvdbYumZeb" role="3fr31v">
                <ref role="37wK5l" node="6kvdbYuhGti" resolve="isApplicable" />
                <ref role="1Pybhc" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
                <node concept="37vLTw" id="7OBD32HFkcF" role="37wK5m">
                  <ref role="3cqZAo" node="7OBD32HFhcj" resolve="device" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4sMntFAbjgI" role="3cqZAp">
            <node concept="3cpWsn" id="4sMntFAbjgJ" role="3cpWs9">
              <property role="TrG5h" value="configuration" />
              <node concept="yHkHH" id="4sMntFAbjg$" role="1tU5fm">
                <ref role="yHkHG" node="4sMntFA6fDp" resolve="ForteLocalPC" />
              </node>
              <node concept="2ShNRf" id="4sMntFAbjgK" role="33vP2m">
                <node concept="30w_07" id="4sMntFAbjgL" role="2ShVmc">
                  <ref role="30w_06" node="4sMntFA6fDp" resolve="ForteLocalPC" />
                  <node concept="3cpWs3" id="6kvdbYumCT3" role="uV2A8">
                    <node concept="2OqwBi" id="4sMntFAbjgQ" role="3uHU7w">
                      <node concept="37vLTw" id="7OBD32HFPWH" role="2Oq$k0">
                        <ref role="3cqZAo" node="7OBD32HFhcj" resolve="device" />
                      </node>
                      <node concept="3TrcHB" id="4sMntFAbjgS" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="3cpWs3" id="6kvdbYumKki" role="3uHU7B">
                      <node concept="Xl_RD" id="6kvdbYumKwU" role="3uHU7w">
                        <property role="Xl_RC" value="." />
                      </node>
                      <node concept="3cpWs3" id="4sMntFAbjgO" role="3uHU7B">
                        <node concept="Xl_RD" id="4sMntFAbjgP" role="3uHU7B">
                          <property role="Xl_RC" value="Device " />
                        </node>
                        <node concept="2OqwBi" id="6kvdbYumG0z" role="3uHU7w">
                          <node concept="1PxgMI" id="6kvdbYumFAf" role="2Oq$k0">
                            <node concept="chp4Y" id="6kvdbYumFG4" role="3oSUPX">
                              <ref role="cht4Q" to="xiqq:uLhTRR7Mvw" resolve="SystemConfiguration" />
                            </node>
                            <node concept="2OqwBi" id="6kvdbYumDm5" role="1m5AlR">
                              <node concept="37vLTw" id="7OBD32HFkoL" role="2Oq$k0">
                                <ref role="3cqZAo" node="7OBD32HFhcj" resolve="device" />
                              </node>
                              <node concept="1mfA1w" id="6kvdbYumE5F" role="2OqNvi" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="6kvdbYumI6O" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="4sMntFAbgck" role="3cqZAp">
            <node concept="2OqwBi" id="4sMntFAbE4R" role="3clFbG">
              <node concept="2OqwBi" id="4sMntFAbjvO" role="2Oq$k0">
                <node concept="37vLTw" id="4sMntFAbjgT" role="2Oq$k0">
                  <ref role="3cqZAo" node="4sMntFAbjgJ" resolve="configuration" />
                </node>
                <node concept="yHkDZ" id="4sMntFAbuNq" role="2OqNvi">
                  <ref role="yHkDY" node="4sMntFA6S9L" resolve="myDevice" />
                </node>
              </node>
              <node concept="2XshWL" id="4sMntFAbEtN" role="2OqNvi">
                <ref role="2WH_rO" to="awpe:7byHRlLC1QG" resolve="setNode" />
                <node concept="37vLTw" id="7OBD32HFkAi" role="2XxRq1">
                  <ref role="3cqZAo" node="7OBD32HFhcj" resolve="device" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="4sMntFAbEZa" role="3cqZAp">
            <node concept="37vLTw" id="4sMntFAbF8R" role="3cqZAk">
              <ref role="3cqZAo" node="4sMntFAbjgJ" resolve="configuration" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="yHkHH" id="4sMntFAbePs" role="2w4Pho">
      <ref role="yHkHG" node="4sMntFA6fDp" resolve="ForteLocalPC" />
    </node>
  </node>
  <node concept="312cEu" id="1_Zi$Xmm_zm">
    <property role="TrG5h" value="IEC61499Persistence" />
    <property role="3GE5qa" value="modelFactory" />
    <node concept="Wx3nA" id="1_Zi$XmmA7o" role="jymVt">
      <property role="TrG5h" value="MODEL_FACTORY" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="6kvdbYu8w6p" role="1tU5fm">
        <ref role="3uigEE" to="dush:~ModelFactory" resolve="ModelFactory" />
      </node>
      <node concept="2ShNRf" id="1_Zi$XmmA7s" role="33vP2m">
        <node concept="HV5vD" id="1_Zi$XmmA7t" role="2ShVmc">
          <ref role="HV5vE" to="51vd:537nKv8IlHE" resolve="IEC61499ModelFactory" />
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
                    <ref role="3cqZAo" to="51vd:49FXEugFoZS" resolve="DST" />
                    <ref role="1PxDUh" to="51vd:537nKv8IlHE" resolve="IEC61499ModelFactory" />
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
              <node concept="37vLTG" id="7OBD32Icp8w" role="3clF46">
                <property role="TrG5h" value="_" />
                <node concept="3uibUv" id="7OBD32Icp8x" role="1tU5fm">
                  <ref role="3uigEE" to="dush:~ModelRoot" resolve="ModelRoot" />
                </node>
                <node concept="2AHcQZ" id="7OBD32Icp8_" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
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
                          <ref role="37wK5l" to="ends:~SourceRoot.getAbsolutePath():jetbrains.mps.vfs.IFile" resolve="getAbsolutePath" />
                        </node>
                      </node>
                      <node concept="liA8E" id="7OBD32IcF48" role="2OqNvi">
                        <ref role="37wK5l" to="3ju5:~IFile.getDescendant(java.lang.String):jetbrains.mps.vfs.IFile" resolve="getDescendant" />
                        <node concept="3cpWs3" id="7OBD32IcIJ7" role="37wK5m">
                          <node concept="10M0yZ" id="7OBD32Id50r" role="3uHU7w">
                            <ref role="3cqZAo" to="51vd:49FXEugFwPm" resolve="HEADER_FILE" />
                            <ref role="1PxDUh" to="51vd:537nKv8IlHE" resolve="IEC61499ModelFactory" />
                          </node>
                          <node concept="3cpWs3" id="7OBD32IcG2z" role="3uHU7B">
                            <node concept="2OqwBi" id="7OBD32IcF49" role="3uHU7B">
                              <node concept="37vLTw" id="7OBD32IcF4a" role="2Oq$k0">
                                <ref role="3cqZAo" node="7OBD32Icp8q" resolve="name" />
                              </node>
                              <node concept="liA8E" id="7OBD32IcF4b" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SModelName.getLongName():java.lang.String" resolve="getLongName" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="7OBD32IcGpy" role="3uHU7w">
                              <property role="Xl_RC" value="/." />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="7OBD32Id5D3" role="3cqZAp">
                  <node concept="2ShNRf" id="7OBD32Id64s" role="3cqZAk">
                    <node concept="1pGfFk" id="7OBD32Id80$" role="2ShVmc">
                      <ref role="37wK5l" to="ends:~FileDataSource.&lt;init&gt;(jetbrains.mps.vfs.IFile)" resolve="FileDataSource" />
                      <node concept="37vLTw" id="7OBD32Id8OY" role="37wK5m">
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
    <node concept="2YIFZL" id="6kvdbYu7uFn" role="jymVt">
      <property role="TrG5h" value="reloadLibraries" />
      <node concept="3clFbS" id="6kvdbYu7uFp" role="3clF47">
        <node concept="3cpWs8" id="6kvdbYu9jR9" role="3cqZAp">
          <node concept="3cpWsn" id="6kvdbYu9jRa" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <node concept="3uibUv" id="6kvdbYu9jR8" role="1tU5fm">
              <ref role="3uigEE" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
            </node>
            <node concept="2YIFZM" id="6kvdbYu9jRb" role="33vP2m">
              <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance():jetbrains.mps.smodel.MPSModuleRepository" resolve="getInstance" />
              <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kvdbYu9nPu" role="3cqZAp">
          <node concept="2OqwBi" id="6kvdbYu9p8p" role="3clFbG">
            <node concept="2OqwBi" id="6kvdbYu9olr" role="2Oq$k0">
              <node concept="37vLTw" id="6kvdbYu9nPs" role="2Oq$k0">
                <ref role="3cqZAo" node="6kvdbYu9jRa" resolve="repo" />
              </node>
              <node concept="liA8E" id="6kvdbYu9p0D" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="6kvdbYu9pp8" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runWriteInEDT(java.lang.Runnable):void" resolve="runWriteInEDT" />
              <node concept="1bVj0M" id="6kvdbYu9puU" role="37wK5m">
                <node concept="3clFbS" id="6kvdbYu9puV" role="1bW5cS">
                  <node concept="3cpWs8" id="6kvdbYu7uFq" role="3cqZAp">
                    <node concept="3cpWsn" id="6kvdbYu7uFr" role="3cpWs9">
                      <property role="TrG5h" value="stdlib" />
                      <node concept="3uibUv" id="6kvdbYu7uFs" role="1tU5fm">
                        <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                      </node>
                      <node concept="0kSF2" id="6kvdbYu7uFt" role="33vP2m">
                        <node concept="3uibUv" id="6kvdbYu7uFu" role="0kSFW">
                          <ref role="3uigEE" to="z1c3:~AbstractModule" resolve="AbstractModule" />
                        </node>
                        <node concept="2OqwBi" id="6kvdbYuezKM" role="0kSFX">
                          <node concept="37shsh" id="6kvdbYuez_1" role="2Oq$k0">
                            <node concept="20RdaH" id="6kvdbYuezBJ" role="37shsm">
                              <property role="20Rdg5" value="b8a7e14f-52ea-4ee2-b17e-26c27da8084c" />
                              <property role="20Rdg7" value="IEC-61499" />
                            </node>
                          </node>
                          <node concept="liA8E" id="6kvdbYuezYi" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~SModuleReference.resolve(org.jetbrains.mps.openapi.module.SRepository):org.jetbrains.mps.openapi.module.SModule" resolve="resolve" />
                            <node concept="37vLTw" id="6kvdbYue$3n" role="37wK5m">
                              <ref role="3cqZAo" node="6kvdbYu9jRa" resolve="repo" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="6kvdbYu7uFz" role="3cqZAp">
                    <node concept="3clFbS" id="6kvdbYu7uF$" role="3clFbx">
                      <node concept="3clFbF" id="6kvdbYu7uF_" role="3cqZAp">
                        <node concept="2OqwBi" id="6kvdbYu7uFA" role="3clFbG">
                          <node concept="37vLTw" id="6kvdbYu7uFB" role="2Oq$k0">
                            <ref role="3cqZAo" node="6kvdbYu7uFr" resolve="stdlib" />
                          </node>
                          <node concept="liA8E" id="6kvdbYu7uFC" role="2OqNvi">
                            <ref role="37wK5l" to="z1c3:~AbstractModule.setModuleDescriptor(jetbrains.mps.project.structure.modules.ModuleDescriptor):void" resolve="setModuleDescriptor" />
                            <node concept="2OqwBi" id="6kvdbYu7uFD" role="37wK5m">
                              <node concept="37vLTw" id="6kvdbYu7uFE" role="2Oq$k0">
                                <ref role="3cqZAo" node="6kvdbYu7uFr" resolve="stdlib" />
                              </node>
                              <node concept="liA8E" id="6kvdbYu7uFF" role="2OqNvi">
                                <ref role="37wK5l" to="z1c3:~AbstractModule.getModuleDescriptor():jetbrains.mps.project.structure.modules.ModuleDescriptor" resolve="getModuleDescriptor" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="6kvdbYu7uFG" role="3clFbw">
                      <node concept="10Nm6u" id="6kvdbYu7uFH" role="3uHU7w" />
                      <node concept="37vLTw" id="6kvdbYu7uFI" role="3uHU7B">
                        <ref role="3cqZAo" node="6kvdbYu7uFr" resolve="stdlib" />
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
    </node>
    <node concept="3Tm1VV" id="7OBD32IcaOu" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6kvdbYueRX$">
    <property role="TrG5h" value="RunLocalFortePC" />
    <property role="3GE5qa" value="forteIntegration" />
    <node concept="Wx3nA" id="6kvdbYueXRl" role="jymVt">
      <property role="TrG5h" value="TYPE" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="6kvdbYueWlh" role="1B3o_S" />
      <node concept="3uibUv" id="6kvdbYueXME" role="1tU5fm">
        <ref role="3uigEE" to="exr9:~EditorMessageIconRenderer$IconRendererType" resolve="EditorMessageIconRenderer.IconRendererType" />
      </node>
      <node concept="2ShNRf" id="6kvdbYueY82" role="33vP2m">
        <node concept="1pGfFk" id="6kvdbYufalf" role="2ShVmc">
          <ref role="37wK5l" to="exr9:~EditorMessageIconRenderer$IconRendererType.&lt;init&gt;(int)" resolve="EditorMessageIconRenderer.IconRendererType" />
          <node concept="3cmrfG" id="4FkwH71jofM" role="37wK5m">
            <property role="3cmrfH" value="1" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4FkwH71gSw5" role="jymVt" />
    <node concept="Wx3nA" id="4FkwH71gSlj" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="EXECUTOR" />
      <node concept="3Tm6S6" id="4FkwH71gSlg" role="1B3o_S" />
      <node concept="3uibUv" id="4FkwH71gSlh" role="1tU5fm">
        <ref role="3uigEE" to="3v5a:~Executor" resolve="Executor" />
      </node>
      <node concept="2YIFZM" id="4FkwH71gSli" role="33vP2m">
        <ref role="37wK5l" to="9mrk:~DefaultRunExecutor.getRunExecutorInstance():com.intellij.execution.Executor" resolve="getRunExecutorInstance" />
        <ref role="1Pybhc" to="9mrk:~DefaultRunExecutor" resolve="DefaultRunExecutor" />
      </node>
    </node>
    <node concept="2tJIrI" id="6kvdbYueRYI" role="jymVt" />
    <node concept="3clFb_" id="6kvdbYueW29" role="jymVt">
      <property role="TrG5h" value="getType" />
      <node concept="3Tm1VV" id="6kvdbYueW2a" role="1B3o_S" />
      <node concept="3uibUv" id="6kvdbYueW2c" role="3clF45">
        <ref role="3uigEE" to="exr9:~EditorMessageIconRenderer$IconRendererType" resolve="EditorMessageIconRenderer.IconRendererType" />
      </node>
      <node concept="3clFbS" id="6kvdbYueW2h" role="3clF47">
        <node concept="3clFbF" id="6kvdbYufaSu" role="3cqZAp">
          <node concept="37vLTw" id="6kvdbYufaSr" role="3clFbG">
            <ref role="3cqZAo" node="6kvdbYueXRl" resolve="TYPE" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6kvdbYueW2i" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6kvdbYufaWM" role="jymVt" />
    <node concept="3clFb_" id="6kvdbYueVpF" role="jymVt">
      <property role="TrG5h" value="getIcon" />
      <node concept="3Tm1VV" id="6kvdbYueVpG" role="1B3o_S" />
      <node concept="3uibUv" id="6kvdbYueVpI" role="3clF45">
        <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
      </node>
      <node concept="3clFbS" id="6kvdbYueVpN" role="3clF47">
        <node concept="3clFbF" id="4FkwH71gUCB" role="3cqZAp">
          <node concept="2OqwBi" id="4FkwH71gV23" role="3clFbG">
            <node concept="37vLTw" id="4FkwH71gUC$" role="2Oq$k0">
              <ref role="3cqZAo" node="4FkwH71gSlj" resolve="EXECUTOR" />
            </node>
            <node concept="liA8E" id="4FkwH71gVjW" role="2OqNvi">
              <ref role="37wK5l" to="3v5a:~Executor.getIcon():javax.swing.Icon" resolve="getIcon" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6kvdbYueVpO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6kvdbYufc5G" role="jymVt" />
    <node concept="3clFb_" id="6kvdbYufcd3" role="jymVt">
      <property role="TrG5h" value="getClickAction" />
      <node concept="3Tm1VV" id="6kvdbYufcd4" role="1B3o_S" />
      <node concept="3uibUv" id="6kvdbYufcd6" role="3clF45">
        <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
      </node>
      <node concept="3clFbS" id="6kvdbYufcdb" role="3clF47">
        <node concept="3cpWs8" id="7OBD32I4iG8" role="3cqZAp">
          <node concept="3cpWsn" id="7OBD32I4iG9" role="3cpWs9">
            <property role="TrG5h" value="action" />
            <node concept="3uibUv" id="7OBD32I4iG2" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~AnAction" resolve="AnAction" />
            </node>
            <node concept="2OqwBi" id="7OBD32I4iGa" role="33vP2m">
              <node concept="2YIFZM" id="7OBD32I4iGb" role="2Oq$k0">
                <ref role="37wK5l" to="qkt:~ActionManager.getInstance():com.intellij.openapi.actionSystem.ActionManager" resolve="getInstance" />
                <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
              </node>
              <node concept="liA8E" id="7OBD32I4iGc" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~ActionManager.getAction(java.lang.String):com.intellij.openapi.actionSystem.AnAction" resolve="getAction" />
                <node concept="2OqwBi" id="7OBD32I4iGd" role="37wK5m">
                  <node concept="37vLTw" id="7OBD32I4iGe" role="2Oq$k0">
                    <ref role="3cqZAo" node="4FkwH71gSlj" resolve="EXECUTOR" />
                  </node>
                  <node concept="liA8E" id="7OBD32I4iGf" role="2OqNvi">
                    <ref role="37wK5l" to="3v5a:~Executor.getId():java.lang.String" resolve="getId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="7OBD32I7CnH" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="6kvdbYufqHb" role="8Wnug">
            <node concept="2OqwBi" id="7OBD32I4jcZ" role="3clFbG">
              <node concept="37vLTw" id="7OBD32I4iGg" role="2Oq$k0">
                <ref role="3cqZAo" node="7OBD32I4iG9" resolve="action" />
              </node>
              <node concept="liA8E" id="7OBD32I4juD" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnAction.update(com.intellij.openapi.actionSystem.AnActionEvent):void" resolve="update" />
                <node concept="2YIFZM" id="7OBD32I4mvi" role="37wK5m">
                  <ref role="37wK5l" to="qkt:~AnActionEvent.createFromDataContext(java.lang.String,com.intellij.openapi.actionSystem.Presentation,com.intellij.openapi.actionSystem.DataContext):com.intellij.openapi.actionSystem.AnActionEvent" resolve="createFromDataContext" />
                  <ref role="1Pybhc" to="qkt:~AnActionEvent" resolve="AnActionEvent" />
                  <node concept="10M0yZ" id="7OBD32I4nfh" role="37wK5m">
                    <ref role="3cqZAo" to="qkt:~ActionPlaces.UNKNOWN" resolve="UNKNOWN" />
                    <ref role="1PxDUh" to="qkt:~ActionPlaces" resolve="ActionPlaces" />
                  </node>
                  <node concept="2ShNRf" id="7OBD32I4nI9" role="37wK5m">
                    <node concept="1pGfFk" id="7OBD32I4nyM" role="2ShVmc">
                      <ref role="37wK5l" to="qkt:~Presentation.&lt;init&gt;()" resolve="Presentation" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7OBD32I51Me" role="37wK5m">
                    <ref role="3cqZAo" node="7OBD32I4YqI" resolve="myContext" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7OBD32I530n" role="3cqZAp">
          <node concept="37vLTw" id="7OBD32I530l" role="3clFbG">
            <ref role="3cqZAo" node="7OBD32I4iG9" resolve="action" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6kvdbYufcdc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6kvdbYufs7_" role="jymVt" />
    <node concept="3clFb_" id="6kvdbYufsoR" role="jymVt">
      <property role="TrG5h" value="showInGutter" />
      <node concept="3Tm1VV" id="6kvdbYufsoS" role="1B3o_S" />
      <node concept="10P_77" id="6kvdbYufsoT" role="3clF45" />
      <node concept="2AHcQZ" id="6kvdbYufsoX" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="6kvdbYufsoY" role="3clF47">
        <node concept="3clFbF" id="6kvdbYufsV2" role="3cqZAp">
          <node concept="3clFbT" id="6kvdbYufsV1" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6kvdbYueWGt" role="jymVt" />
    <node concept="3Tm1VV" id="6kvdbYueRX_" role="1B3o_S" />
    <node concept="3uibUv" id="6kvdbYueUpc" role="1zkMxy">
      <ref role="3uigEE" to="7a0s:4iUaVbRglKh" resolve="AbstractLeftEditorHighlighterMessage" />
    </node>
    <node concept="3clFbW" id="6kvdbYufboR" role="jymVt">
      <node concept="3cqZAl" id="6kvdbYufboS" role="3clF45" />
      <node concept="3Tm1VV" id="6kvdbYufboT" role="1B3o_S" />
      <node concept="3clFbS" id="6kvdbYufboV" role="3clF47">
        <node concept="XkiVB" id="6kvdbYufboX" role="3cqZAp">
          <ref role="37wK5l" to="7a0s:4iUaVbRglKm" resolve="AbstractLeftEditorHighlighterMessage" />
          <node concept="37vLTw" id="6kvdbYufbp1" role="37wK5m">
            <ref role="3cqZAo" node="6kvdbYufboY" resolve="device" />
          </node>
          <node concept="37vLTw" id="6kvdbYufbp5" role="37wK5m">
            <ref role="3cqZAo" node="6kvdbYufbp2" resolve="owner" />
          </node>
          <node concept="Xl_RD" id="6kvdbYufbLN" role="37wK5m">
            <property role="Xl_RC" value="Run local device" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6kvdbYufboY" role="3clF46">
        <property role="TrG5h" value="device" />
        <node concept="3Tqbb2" id="7OBD32I7Dg3" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
        </node>
      </node>
      <node concept="37vLTG" id="6kvdbYufbp2" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="6kvdbYufbp4" role="1tU5fm">
          <ref role="3uigEE" to="kpve:~EditorMessageOwner" resolve="EditorMessageOwner" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32I4NdB" role="jymVt" />
    <node concept="1X3_iC" id="7OBD32I8$kX" role="lGtFl">
      <property role="3V$3am" value="member" />
      <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1107461130800/5375687026011219971" />
      <node concept="3clFb_" id="7OBD32I4Ou7" role="8Wnug">
        <property role="TrG5h" value="getProject" />
        <node concept="3clFbS" id="7OBD32I4Oua" role="3clF47">
          <node concept="3clFbF" id="7OBD32I4Pgx" role="3cqZAp">
            <node concept="2OqwBi" id="7OBD32I4QNx" role="3clFbG">
              <node concept="0kSF2" id="7OBD32I4PHJ" role="2Oq$k0">
                <node concept="3uibUv" id="7OBD32I4RBw" role="0kSFW">
                  <ref role="3uigEE" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
                </node>
                <node concept="1rXfSq" id="7OBD32I4Pgw" role="0kSFX">
                  <ref role="37wK5l" to="exr9:~DefaultEditorMessage.getOwner():jetbrains.mps.openapi.editor.message.EditorMessageOwner" resolve="getOwner" />
                </node>
              </node>
              <node concept="liA8E" id="7OBD32I4SiK" role="2OqNvi">
                <ref role="37wK5l" node="7OBD32I4Mfh" resolve="getProject" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="7OBD32I4NL5" role="1B3o_S" />
        <node concept="3uibUv" id="7OBD32I4Olc" role="3clF45">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6kvdbYuhDLt" role="jymVt" />
    <node concept="2tJIrI" id="4FkwH71jCFE" role="jymVt" />
    <node concept="3clFb_" id="4FkwH71jCRb" role="jymVt">
      <property role="TrG5h" value="getAnchorCell" />
      <node concept="3Tm1VV" id="4FkwH71jCRd" role="1B3o_S" />
      <node concept="2AHcQZ" id="4FkwH71jCRf" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="4FkwH71jCRg" role="3clF45">
        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="37vLTG" id="4FkwH71jCRh" role="3clF46">
        <property role="TrG5h" value="editorComponent" />
        <node concept="3uibUv" id="4FkwH71jCRi" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="3clFbS" id="4FkwH71jCRn" role="3clF47">
        <node concept="3clFbF" id="4FkwH71jFst" role="3cqZAp">
          <node concept="2YIFZM" id="4FkwH71jFLH" role="3clFbG">
            <ref role="37wK5l" to="g51k:~CellFinderUtil.findChild(jetbrains.mps.openapi.editor.cells.EditorCell,jetbrains.mps.nodeEditor.cells.CellFinderUtil$Finder):jetbrains.mps.openapi.editor.cells.EditorCell" resolve="findChild" />
            <ref role="1Pybhc" to="g51k:~CellFinderUtil" resolve="CellFinderUtil" />
            <node concept="1rXfSq" id="4FkwH71jHfZ" role="37wK5m">
              <ref role="37wK5l" to="7a0s:1FGe55gTHXF" resolve="getNodeCell" />
              <node concept="37vLTw" id="4FkwH71jHg0" role="37wK5m">
                <ref role="3cqZAo" node="4FkwH71jCRh" resolve="editorComponent" />
              </node>
            </node>
            <node concept="Rm8GO" id="4FkwH71jHfl" role="37wK5m">
              <ref role="Rm8GQ" to="g51k:~CellFinderUtil$Finder.FIRST_EDITABLE" resolve="FIRST_EDITABLE" />
              <ref role="1Px2BO" to="g51k:~CellFinderUtil$Finder" resolve="CellFinderUtil.Finder" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4FkwH71jCRo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6kvdbYufADt">
    <property role="TrG5h" value="RunLocalFortePCChecker" />
    <property role="3GE5qa" value="forteIntegration" />
    <node concept="2tJIrI" id="6kvdbYufAFu" role="jymVt" />
    <node concept="1X3_iC" id="7OBD32I7VY4" role="lGtFl">
      <property role="3V$3am" value="member" />
      <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1107461130800/5375687026011219971" />
      <node concept="312cEg" id="7OBD32I4G3Q" role="8Wnug">
        <property role="TrG5h" value="myProject" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7OBD32I4Fhv" role="1B3o_S" />
        <node concept="3uibUv" id="7OBD32I4GFy" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="1X3_iC" id="7OBD32I7VY5" role="lGtFl">
      <property role="3V$3am" value="member" />
      <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1107461130800/5375687026011219971" />
      <node concept="312cEg" id="7OBD32I6QL9" role="8Wnug">
        <property role="TrG5h" value="myProducer" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tm6S6" id="7OBD32I6P9h" role="1B3o_S" />
        <node concept="3uibUv" id="7OBD32I7bmL" role="1tU5fm">
          <ref role="3uigEE" to="uycu:~RuntimeConfigurationProducer" resolve="RuntimeConfigurationProducer" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32I4GJx" role="jymVt" />
    <node concept="1X3_iC" id="7OBD32I7Vva" role="lGtFl">
      <property role="3V$3am" value="member" />
      <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1107461130800/5375687026011219971" />
      <node concept="3clFbW" id="7OBD32I4HdL" role="8Wnug">
        <node concept="3cqZAl" id="7OBD32I4HdM" role="3clF45" />
        <node concept="3Tm1VV" id="7OBD32I4HdN" role="1B3o_S" />
        <node concept="3clFbS" id="7OBD32I4HdP" role="3clF47">
          <node concept="3clFbF" id="7OBD32I4HdT" role="3cqZAp">
            <node concept="37vLTI" id="7OBD32I4HdV" role="3clFbG">
              <node concept="37vLTw" id="7OBD32I4He2" role="37vLTx">
                <ref role="3cqZAo" node="7OBD32I4HdS" resolve="project" />
              </node>
              <node concept="37vLTw" id="7OBD32I4KrM" role="37vLTJ">
                <ref role="3cqZAo" node="7OBD32I4G3Q" resolve="myProject" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="7OBD32I7aCZ" role="3cqZAp">
            <node concept="3cpWsn" id="7OBD32I7aD0" role="3cpWs9">
              <property role="TrG5h" value="type" />
              <node concept="3uibUv" id="7OBD32I7aCw" role="1tU5fm">
                <ref role="3uigEE" to="dj99:~ConfigurationType" resolve="ConfigurationType" />
              </node>
              <node concept="2OqwBi" id="7OBD32I7aD1" role="33vP2m">
                <node concept="2OqwBi" id="7OBD32I7aD2" role="2Oq$k0">
                  <node concept="2OqwBi" id="7OBD32I7aD3" role="2Oq$k0">
                    <node concept="2OqwBi" id="7OBD32I7aD4" role="2Oq$k0">
                      <node concept="2YIFZM" id="7OBD32I7aD5" role="2Oq$k0">
                        <ref role="1Pybhc" to="9ti4:~Extensions" resolve="Extensions" />
                        <ref role="37wK5l" to="9ti4:~Extensions.getRootArea():com.intellij.openapi.extensions.ExtensionsArea" resolve="getRootArea" />
                      </node>
                      <node concept="liA8E" id="7OBD32I7aD6" role="2OqNvi">
                        <ref role="37wK5l" to="9ti4:~ExtensionsArea.getExtensionPoint(com.intellij.openapi.extensions.ExtensionPointName):com.intellij.openapi.extensions.ExtensionPoint" resolve="getExtensionPoint" />
                        <node concept="10M0yZ" id="7OBD32I7aD7" role="37wK5m">
                          <ref role="1PxDUh" to="dj99:~ConfigurationType" resolve="ConfigurationType" />
                          <ref role="3cqZAo" to="dj99:~ConfigurationType.CONFIGURATION_TYPE_EP" resolve="CONFIGURATION_TYPE_EP" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="7OBD32I7aD8" role="2OqNvi">
                      <ref role="37wK5l" to="9ti4:~ExtensionPoint.getExtensions():java.lang.Object[]" resolve="getExtensions" />
                    </node>
                  </node>
                  <node concept="39bAoz" id="7OBD32I7aD9" role="2OqNvi" />
                </node>
                <node concept="1z4cxt" id="7OBD32I7aDa" role="2OqNvi">
                  <node concept="1bVj0M" id="7OBD32I7aDb" role="23t8la">
                    <node concept="3clFbS" id="7OBD32I7aDc" role="1bW5cS">
                      <node concept="3clFbF" id="7OBD32I7aDd" role="3cqZAp">
                        <node concept="17R0WA" id="7OBD32I7aDe" role="3clFbG">
                          <node concept="Xl_RD" id="7OBD32I7aDf" role="3uHU7w">
                            <property role="Xl_RC" value="IEC 61499" />
                          </node>
                          <node concept="2OqwBi" id="7OBD32I7aDg" role="3uHU7B">
                            <node concept="37vLTw" id="7OBD32I7aDh" role="2Oq$k0">
                              <ref role="3cqZAo" node="7OBD32I7aDj" resolve="it" />
                            </node>
                            <node concept="liA8E" id="7OBD32I7aDi" role="2OqNvi">
                              <ref role="37wK5l" to="dj99:~ConfigurationType.getId():java.lang.String" resolve="getId" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="7OBD32I7aDj" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="7OBD32I7aDk" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7OBD32I7aa3" role="3cqZAp">
            <node concept="37vLTI" id="7OBD32I7cU6" role="3clFbG">
              <node concept="37vLTw" id="7OBD32I7dIq" role="37vLTJ">
                <ref role="3cqZAo" node="7OBD32I6QL9" resolve="myProducer" />
              </node>
              <node concept="2OqwBi" id="7OBD32I7eIC" role="37vLTx">
                <node concept="1niqFM" id="7OBD32I6E8h" role="2Oq$k0">
                  <property role="1npUBZ" value="iec61499.ide.ForteLocalPC_Producer" />
                  <property role="1npL6y" value="getProducers" />
                  <node concept="37vLTw" id="7OBD32I7jnB" role="2U24H$">
                    <ref role="3cqZAo" node="7OBD32I7aD0" resolve="type" />
                  </node>
                  <node concept="_YKpA" id="7OBD32I6Epx" role="32Mpfj">
                    <node concept="3uibUv" id="7OBD32I6F1S" role="_ZDj9">
                      <ref role="3uigEE" to="uycu:~RuntimeConfigurationProducer" resolve="RuntimeConfigurationProducer" />
                    </node>
                  </node>
                </node>
                <node concept="1uHKPH" id="7OBD32I7iPW" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="37vLTG" id="7OBD32I4HdS" role="3clF46">
          <property role="TrG5h" value="project" />
          <node concept="3uibUv" id="7OBD32I4HdR" role="1tU5fm">
            <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32I4EKR" role="jymVt" />
    <node concept="3clFb_" id="6kvdbYufBdN" role="jymVt">
      <property role="TrG5h" value="update" />
      <node concept="3Tm1VV" id="6kvdbYufBdO" role="1B3o_S" />
      <node concept="2AHcQZ" id="6kvdbYufBdQ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="6kvdbYufBdR" role="3clF45">
        <ref role="3uigEE" to="n70j:~UpdateResult" resolve="UpdateResult" />
      </node>
      <node concept="37vLTG" id="6kvdbYufBdS" role="3clF46">
        <property role="TrG5h" value="component" />
        <node concept="3uibUv" id="6kvdbYufBdT" role="1tU5fm">
          <ref role="3uigEE" to="exr9:~EditorComponent" resolve="EditorComponent" />
        </node>
      </node>
      <node concept="37vLTG" id="6kvdbYufBdU" role="3clF46">
        <property role="TrG5h" value="incr" />
        <node concept="10P_77" id="6kvdbYufBdV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6kvdbYufBdW" role="3clF46">
        <property role="TrG5h" value="applyFixes" />
        <node concept="10P_77" id="6kvdbYufBdX" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="6kvdbYufBdY" role="3clF46">
        <property role="TrG5h" value="cancellable" />
        <node concept="3uibUv" id="6kvdbYufBdZ" role="1tU5fm">
          <ref role="3uigEE" to="18ew:~Cancellable" resolve="Cancellable" />
        </node>
      </node>
      <node concept="3clFbS" id="6kvdbYufBe1" role="3clF47">
        <node concept="3cpWs8" id="6kvdbYufHll" role="3cqZAp">
          <node concept="3cpWsn" id="6kvdbYufHlm" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="6kvdbYufHF_" role="1tU5fm" />
            <node concept="2OqwBi" id="6kvdbYufHln" role="33vP2m">
              <node concept="37vLTw" id="6kvdbYufHlo" role="2Oq$k0">
                <ref role="3cqZAo" node="6kvdbYufBdS" resolve="component" />
              </node>
              <node concept="liA8E" id="6kvdbYufHlp" role="2OqNvi">
                <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode():org.jetbrains.mps.openapi.model.SNode" resolve="getEditedNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6kvdbYug4_g" role="3cqZAp">
          <node concept="3cpWsn" id="6kvdbYug4_m" role="3cpWs9">
            <property role="TrG5h" value="messages" />
            <node concept="_YKpA" id="6kvdbYug4_o" role="1tU5fm">
              <node concept="3uibUv" id="6kvdbYug4QN" role="_ZDj9">
                <ref role="3uigEE" to="exr9:~EditorMessage" resolve="EditorMessage" />
              </node>
            </node>
            <node concept="2ShNRf" id="6kvdbYug53z" role="33vP2m">
              <node concept="Tc6Ow" id="6kvdbYug76v" role="2ShVmc">
                <node concept="3uibUv" id="6kvdbYug8bg" role="HW$YZ">
                  <ref role="3uigEE" to="exr9:~EditorMessage" resolve="EditorMessage" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kvdbYufDqR" role="3cqZAp">
          <node concept="2OqwBi" id="6kvdbYujQ0M" role="3clFbG">
            <node concept="2OqwBi" id="6kvdbYufMOu" role="2Oq$k0">
              <node concept="2OqwBi" id="6kvdbYufI87" role="2Oq$k0">
                <node concept="37vLTw" id="6kvdbYufHlq" role="2Oq$k0">
                  <ref role="3cqZAo" node="6kvdbYufHlm" resolve="node" />
                </node>
                <node concept="2Rf3mk" id="6kvdbYufIoA" role="2OqNvi">
                  <node concept="1xMEDy" id="6kvdbYufIoC" role="1xVPHs">
                    <node concept="chp4Y" id="6kvdbYufIH6" role="ri$Ld">
                      <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
                    </node>
                  </node>
                  <node concept="1xIGOp" id="6kvdbYufJ_w" role="1xVPHs" />
                </node>
              </node>
              <node concept="3zZkjj" id="6kvdbYujPDZ" role="2OqNvi">
                <node concept="1bVj0M" id="6kvdbYujPE1" role="23t8la">
                  <node concept="3clFbS" id="6kvdbYujPE2" role="1bW5cS">
                    <node concept="3clFbF" id="6kvdbYujPE3" role="3cqZAp">
                      <node concept="1rXfSq" id="6kvdbYujPE4" role="3clFbG">
                        <ref role="37wK5l" node="6kvdbYuhGti" resolve="isApplicable" />
                        <node concept="37vLTw" id="6kvdbYujPE5" role="37wK5m">
                          <ref role="3cqZAo" node="6kvdbYujPE6" resolve="device" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6kvdbYujPE6" role="1bW2Oz">
                    <property role="TrG5h" value="device" />
                    <node concept="2jxLKc" id="6kvdbYujPE7" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2es0OD" id="6kvdbYuk1WA" role="2OqNvi">
              <node concept="1bVj0M" id="6kvdbYuk1WC" role="23t8la">
                <node concept="3clFbS" id="6kvdbYuk1WD" role="1bW5cS">
                  <node concept="3clFbF" id="6kvdbYuk2g6" role="3cqZAp">
                    <node concept="2OqwBi" id="6kvdbYuk6kG" role="3clFbG">
                      <node concept="37vLTw" id="6kvdbYuk5ka" role="2Oq$k0">
                        <ref role="3cqZAo" node="6kvdbYug4_m" resolve="messages" />
                      </node>
                      <node concept="TSZUe" id="6kvdbYukagF" role="2OqNvi">
                        <node concept="2ShNRf" id="6kvdbYuk2g4" role="25WWJ7">
                          <node concept="1pGfFk" id="6kvdbYuk3OF" role="2ShVmc">
                            <ref role="37wK5l" node="6kvdbYufboR" resolve="RunLocalFortePC" />
                            <node concept="37vLTw" id="7OBD32I7Gi1" role="37wK5m">
                              <ref role="3cqZAo" node="6kvdbYuk1WE" resolve="device" />
                            </node>
                            <node concept="Xjq3P" id="6kvdbYuk4Cp" role="37wK5m" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6kvdbYuk1WE" role="1bW2Oz">
                  <property role="TrG5h" value="device" />
                  <node concept="2jxLKc" id="6kvdbYuk1WF" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kvdbYukaZd" role="3cqZAp">
          <node concept="2ShNRf" id="6kvdbYukaZ9" role="3clFbG">
            <node concept="1pGfFk" id="6kvdbYukdLk" role="2ShVmc">
              <ref role="37wK5l" to="n70j:~UpdateResult$Completed.&lt;init&gt;(boolean,java.util.Collection)" resolve="UpdateResult.Completed" />
              <node concept="3clFbT" id="6kvdbYukdYw" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
              <node concept="37vLTw" id="6kvdbYukerr" role="37wK5m">
                <ref role="3cqZAo" node="6kvdbYug4_m" resolve="messages" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6kvdbYufBe2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32I5jVE" role="jymVt" />
    <node concept="1X3_iC" id="7OBD32I7EXF" role="lGtFl">
      <property role="3V$3am" value="member" />
      <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1107461130800/5375687026011219971" />
      <node concept="3clFb_" id="7OBD32I54bZ" role="8Wnug">
        <property role="TrG5h" value="createContext" />
        <node concept="3Tm6S6" id="7OBD32I54c0" role="1B3o_S" />
        <node concept="3uibUv" id="7OBD32I5mGm" role="3clF45">
          <ref role="3uigEE" to="qkt:~DataContext" resolve="DataContext" />
        </node>
        <node concept="37vLTG" id="7OBD32I547e" role="3clF46">
          <property role="TrG5h" value="device" />
          <property role="3TUv4t" value="true" />
          <node concept="3Tqbb2" id="7OBD32I547f" role="1tU5fm">
            <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
          </node>
        </node>
        <node concept="37vLTG" id="7OBD32I5ekn" role="3clF46">
          <property role="TrG5h" value="component" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="7OBD32I5f92" role="1tU5fm">
            <ref role="3uigEE" to="cj4x:~EditorComponent" resolve="EditorComponent" />
          </node>
        </node>
        <node concept="3clFbS" id="7OBD32I542u" role="3clF47">
          <node concept="3cpWs8" id="7OBD32I64uF" role="3cqZAp">
            <node concept="3cpWsn" id="7OBD32I64uG" role="3cpWs9">
              <property role="TrG5h" value="context" />
              <node concept="3uibUv" id="7OBD32I64uE" role="1tU5fm">
                <ref role="3uigEE" to="qkt:~DataContext" resolve="DataContext" />
              </node>
              <node concept="2ShNRf" id="7OBD32I64uH" role="33vP2m">
                <node concept="YeOm9" id="7OBD32I64uI" role="2ShVmc">
                  <node concept="1Y3b0j" id="7OBD32I64uJ" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="qkt:~DataContext" resolve="DataContext" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="7OBD32I64uK" role="1B3o_S" />
                    <node concept="3clFb_" id="7OBD32I64uL" role="jymVt">
                      <property role="TrG5h" value="getData" />
                      <node concept="3Tm1VV" id="7OBD32I64uM" role="1B3o_S" />
                      <node concept="2AHcQZ" id="7OBD32I64uN" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                      </node>
                      <node concept="3uibUv" id="7OBD32I64uO" role="3clF45">
                        <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
                      </node>
                      <node concept="37vLTG" id="7OBD32I64uP" role="3clF46">
                        <property role="TrG5h" value="key" />
                        <node concept="3uibUv" id="7OBD32I64uQ" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                        <node concept="2AHcQZ" id="7OBD32I64uR" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                        <node concept="2AHcQZ" id="7OBD32I64uS" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NonNls" resolve="NonNls" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="7OBD32I64uT" role="3clF47">
                        <node concept="3clFbJ" id="7OBD32I64uU" role="3cqZAp">
                          <node concept="2OqwBi" id="7OBD32I64uV" role="3clFbw">
                            <node concept="10M0yZ" id="7OBD32I64uW" role="2Oq$k0">
                              <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
                              <ref role="1PxDUh" to="3s15:~MPSDataKeys" resolve="MPSDataKeys" />
                            </node>
                            <node concept="liA8E" id="7OBD32I64uX" role="2OqNvi">
                              <ref role="37wK5l" to="qkt:~DataKey.is(java.lang.String):boolean" resolve="is" />
                              <node concept="37vLTw" id="7OBD32I64uY" role="37wK5m">
                                <ref role="3cqZAo" node="7OBD32I64uP" resolve="key" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbS" id="7OBD32I64uZ" role="3clFbx">
                            <node concept="3cpWs6" id="7OBD32I64v0" role="3cqZAp">
                              <node concept="37vLTw" id="7OBD32I64v1" role="3cqZAk">
                                <ref role="3cqZAo" node="7OBD32I4G3Q" resolve="myProject" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="7OBD32I64v2" role="3cqZAp">
                          <node concept="3clFbS" id="7OBD32I64v3" role="3clFbx">
                            <node concept="3cpWs6" id="7OBD32I64v4" role="3cqZAp">
                              <node concept="37vLTw" id="7OBD32I64v5" role="3cqZAk">
                                <ref role="3cqZAo" node="7OBD32I5ekn" resolve="component" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7OBD32I64v6" role="3clFbw">
                            <node concept="10M0yZ" id="7OBD32I64v7" role="2Oq$k0">
                              <ref role="3cqZAo" to="k3nr:~MPSEditorDataKeys.EDITOR_COMPONENT" resolve="EDITOR_COMPONENT" />
                              <ref role="1PxDUh" to="3s15:~MPSDataKeys" resolve="MPSDataKeys" />
                            </node>
                            <node concept="liA8E" id="7OBD32I64v8" role="2OqNvi">
                              <ref role="37wK5l" to="qkt:~DataKey.is(java.lang.String):boolean" resolve="is" />
                              <node concept="37vLTw" id="7OBD32I64v9" role="37wK5m">
                                <ref role="3cqZAo" node="7OBD32I64uP" resolve="key" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="7OBD32I64va" role="3cqZAp">
                          <node concept="3clFbS" id="7OBD32I64vb" role="3clFbx">
                            <node concept="3cpWs6" id="7OBD32I64vc" role="3cqZAp">
                              <node concept="37vLTw" id="7OBD32I64vd" role="3cqZAk">
                                <ref role="3cqZAo" node="7OBD32I547e" resolve="device" />
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="7OBD32I64ve" role="3clFbw">
                            <node concept="10M0yZ" id="7OBD32I64vf" role="2Oq$k0">
                              <ref role="3cqZAo" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
                              <ref role="1PxDUh" to="3s15:~MPSDataKeys" resolve="MPSDataKeys" />
                            </node>
                            <node concept="liA8E" id="7OBD32I64vg" role="2OqNvi">
                              <ref role="37wK5l" to="qkt:~DataKey.is(java.lang.String):boolean" resolve="is" />
                              <node concept="37vLTw" id="7OBD32I64vh" role="37wK5m">
                                <ref role="3cqZAo" node="7OBD32I64uP" resolve="key" />
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
          <node concept="3cpWs8" id="7OBD32I66Y_" role="3cqZAp">
            <node concept="3cpWsn" id="7OBD32I66YA" role="3cpWs9">
              <property role="TrG5h" value="wrapper" />
              <node concept="3uibUv" id="7OBD32I66YB" role="1tU5fm">
                <ref role="3uigEE" to="qkt:~DataContextWrapper" resolve="DataContextWrapper" />
              </node>
              <node concept="2ShNRf" id="7OBD32I67Wy" role="33vP2m">
                <node concept="1pGfFk" id="7OBD32I69iK" role="2ShVmc">
                  <ref role="37wK5l" to="qkt:~DataContextWrapper.&lt;init&gt;(com.intellij.openapi.actionSystem.DataContext)" resolve="DataContextWrapper" />
                  <node concept="37vLTw" id="7OBD32I69x0" role="37wK5m">
                    <ref role="3cqZAo" node="7OBD32I64uG" resolve="context" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7OBD32I6aoI" role="3cqZAp">
            <node concept="2OqwBi" id="7OBD32I6bfL" role="3clFbG">
              <node concept="37vLTw" id="7OBD32I6aoG" role="2Oq$k0">
                <ref role="3cqZAo" node="7OBD32I66YA" resolve="wrapper" />
              </node>
              <node concept="liA8E" id="7OBD32I6AjP" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~DataContextWrapper.putUserData(com.intellij.openapi.util.Key,java.lang.Object):void" resolve="putUserData" />
                <node concept="10M0yZ" id="7OBD32I6B9z" role="37wK5m">
                  <ref role="3cqZAo" to="feyl:~ConfigurationContext.SHARED_CONTEXT" resolve="SHARED_CONTEXT" />
                  <ref role="1PxDUh" to="feyl:~ConfigurationContext" resolve="ConfigurationContext" />
                </node>
                <node concept="2OqwBi" id="7OBD32I7tHJ" role="37wK5m">
                  <node concept="37vLTw" id="7OBD32I7jU4" role="2Oq$k0">
                    <ref role="3cqZAo" node="7OBD32I6QL9" resolve="myProducer" />
                  </node>
                  <node concept="1B$H19" id="7OBD32I7tHO" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7OBD32I7lJS" role="3cqZAp">
            <node concept="37vLTw" id="7OBD32I7lJQ" role="3clFbG">
              <ref role="3cqZAo" node="7OBD32I66YA" resolve="wrapper" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32I5X2L" role="jymVt" />
    <node concept="312cEu" id="7OBD32I5Y0k" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="MyDataContext" />
      <node concept="3Tm1VV" id="7OBD32I5Y0l" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6kvdbYufBjB" role="jymVt" />
    <node concept="3clFb_" id="6kvdbYufAM3" role="jymVt">
      <property role="TrG5h" value="needsUpdateAfterPropertyEvent" />
      <node concept="3Tmbuc" id="6kvdbYufAM4" role="1B3o_S" />
      <node concept="10P_77" id="6kvdbYufAM6" role="3clF45" />
      <node concept="37vLTG" id="6kvdbYufAM7" role="3clF46">
        <property role="TrG5h" value="event" />
        <node concept="3uibUv" id="6kvdbYufAM8" role="1tU5fm">
          <ref role="3uigEE" to="j9co:~SModelPropertyEvent" resolve="SModelPropertyEvent" />
        </node>
      </node>
      <node concept="3clFbS" id="6kvdbYufAM9" role="3clF47">
        <node concept="3clFbF" id="6kvdbYufB6T" role="3cqZAp">
          <node concept="3clFbT" id="6kvdbYufB6S" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="6kvdbYufAMa" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6kvdbYufAFw" role="jymVt" />
    <node concept="2YIFZL" id="6kvdbYuhGti" role="jymVt">
      <property role="TrG5h" value="isApplicable" />
      <node concept="3clFbS" id="6kvdbYuhGtl" role="3clF47">
        <node concept="3cpWs8" id="6kvdbYujE5a" role="3cqZAp">
          <node concept="3cpWsn" id="6kvdbYujE5b" role="3cpWs9">
            <property role="TrG5h" value="port" />
            <node concept="10Oyi0" id="6kvdbYujE57" role="1tU5fm" />
            <node concept="1rXfSq" id="6kvdbYujE5c" role="33vP2m">
              <ref role="37wK5l" node="6kvdbYuhQnx" resolve="getPort" />
              <node concept="37vLTw" id="6kvdbYujE5d" role="37wK5m">
                <ref role="3cqZAo" node="6kvdbYuhGPy" resolve="device" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kvdbYujDxb" role="3cqZAp">
          <node concept="1Wc70l" id="6kvdbYujHPt" role="3clFbG">
            <node concept="3eOVzh" id="6kvdbYujJuo" role="3uHU7w">
              <node concept="3cmrfG" id="6kvdbYujJNe" role="3uHU7w">
                <property role="3cmrfH" value="65536" />
              </node>
              <node concept="37vLTw" id="6kvdbYujI6O" role="3uHU7B">
                <ref role="3cqZAo" node="6kvdbYujE5b" resolve="port" />
              </node>
            </node>
            <node concept="3eOSWO" id="6kvdbYujFA1" role="3uHU7B">
              <node concept="37vLTw" id="6kvdbYujE5e" role="3uHU7B">
                <ref role="3cqZAo" node="6kvdbYujE5b" resolve="port" />
              </node>
              <node concept="3cmrfG" id="6kvdbYujGie" role="3uHU7w">
                <property role="3cmrfH" value="0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6kvdbYuhEaA" role="1B3o_S" />
      <node concept="10P_77" id="6kvdbYuhFbm" role="3clF45" />
      <node concept="37vLTG" id="6kvdbYuhGPy" role="3clF46">
        <property role="TrG5h" value="device" />
        <node concept="3Tqbb2" id="6kvdbYuhGPx" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6kvdbYuhPBC" role="jymVt" />
    <node concept="2YIFZL" id="6kvdbYuhQnx" role="jymVt">
      <property role="TrG5h" value="getPort" />
      <node concept="3clFbS" id="6kvdbYuhQn$" role="3clF47">
        <node concept="3clFbJ" id="6kvdbYujw7o" role="3cqZAp">
          <node concept="3clFbS" id="6kvdbYujw7q" role="3clFbx">
            <node concept="3cpWs6" id="6kvdbYujCnv" role="3cqZAp">
              <node concept="3cmrfG" id="6kvdbYujCzD" role="3cqZAk">
                <property role="3cmrfH" value="-1" />
              </node>
            </node>
          </node>
          <node concept="17QLQc" id="6kvdbYujBLn" role="3clFbw">
            <node concept="2OqwBi" id="6kvdbYuj$Ww" role="3uHU7B">
              <node concept="2OqwBi" id="6kvdbYujz9F" role="2Oq$k0">
                <node concept="37vLTw" id="6kvdbYujyss" role="2Oq$k0">
                  <ref role="3cqZAo" node="6kvdbYuhQIV" resolve="device" />
                </node>
                <node concept="3TrEf2" id="6kvdbYuj$3l" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:1WTKUmKKVP_" resolve="type" />
                </node>
              </node>
              <node concept="3TrcHB" id="6kvdbYujA3B" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="Xl_RD" id="6kvdbYujBxK" role="3uHU7w">
              <property role="Xl_RC" value="FORTE_PC" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6kvdbYuicJH" role="3cqZAp">
          <node concept="3cpWsn" id="6kvdbYuicJI" role="3cpWs9">
            <property role="TrG5h" value="address" />
            <node concept="3Tqbb2" id="6kvdbYuicJG" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyF7a" resolve="Parameter" />
            </node>
            <node concept="2OqwBi" id="6kvdbYuicJJ" role="33vP2m">
              <node concept="2OqwBi" id="6kvdbYuicJK" role="2Oq$k0">
                <node concept="37vLTw" id="6kvdbYuicJL" role="2Oq$k0">
                  <ref role="3cqZAo" node="6kvdbYuhQIV" resolve="device" />
                </node>
                <node concept="3Tsc0h" id="6kvdbYuicJM" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:fshQXbRNVN" resolve="parameters" />
                </node>
              </node>
              <node concept="1z4cxt" id="6kvdbYuicJN" role="2OqNvi">
                <node concept="1bVj0M" id="6kvdbYuicJO" role="23t8la">
                  <node concept="3clFbS" id="6kvdbYuicJP" role="1bW5cS">
                    <node concept="3clFbF" id="6kvdbYuicJQ" role="3cqZAp">
                      <node concept="17R0WA" id="6kvdbYumj6z" role="3clFbG">
                        <node concept="2OqwBi" id="6kvdbYuicJT" role="3uHU7B">
                          <node concept="2OqwBi" id="6kvdbYuicJU" role="2Oq$k0">
                            <node concept="37vLTw" id="6kvdbYuicJV" role="2Oq$k0">
                              <ref role="3cqZAo" node="6kvdbYuicJY" resolve="it" />
                            </node>
                            <node concept="3TrEf2" id="6kvdbYuicJW" role="2OqNvi">
                              <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7b" resolve="decl" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="6kvdbYuicJX" role="2OqNvi">
                            <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                          </node>
                        </node>
                        <node concept="Xl_RD" id="6kvdbYuicJS" role="3uHU7w">
                          <property role="Xl_RC" value="MGR_ID" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="6kvdbYuicJY" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="6kvdbYuicJZ" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6kvdbYuidBI" role="3cqZAp">
          <node concept="3clFbS" id="6kvdbYuidBK" role="3clFbx">
            <node concept="3cpWs6" id="6kvdbYuijWb" role="3cqZAp">
              <node concept="3cmrfG" id="6kvdbYuikz7" role="3cqZAk">
                <property role="3cmrfH" value="-1" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6kvdbYuieeE" role="3clFbw">
            <node concept="37vLTw" id="6kvdbYuidPS" role="2Oq$k0">
              <ref role="3cqZAo" node="6kvdbYuicJI" resolve="address" />
            </node>
            <node concept="3w_OXm" id="6kvdbYuijDv" role="2OqNvi" />
          </node>
        </node>
        <node concept="3cpWs8" id="6kvdbYuiDUI" role="3cqZAp">
          <node concept="3cpWsn" id="6kvdbYuiDUJ" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="17QB3L" id="6kvdbYuiDUt" role="1tU5fm" />
            <node concept="2OqwBi" id="6kvdbYuiDUK" role="33vP2m">
              <node concept="1PxgMI" id="6kvdbYuiDUL" role="2Oq$k0">
                <property role="1BlNFB" value="true" />
                <node concept="chp4Y" id="6kvdbYuiDUM" role="3oSUPX">
                  <ref role="cht4Q" to="gpgy:2lwHqHjKxV$" resolve="StringLiteral" />
                </node>
                <node concept="2OqwBi" id="6kvdbYuiDUN" role="1m5AlR">
                  <node concept="37vLTw" id="6kvdbYuiDUO" role="2Oq$k0">
                    <ref role="3cqZAo" node="6kvdbYuicJI" resolve="address" />
                  </node>
                  <node concept="3TrEf2" id="6kvdbYuiDUP" role="2OqNvi">
                    <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7f" resolve="value" />
                  </node>
                </node>
              </node>
              <node concept="3TrcHB" id="6kvdbYuiDUQ" role="2OqNvi">
                <ref role="3TsBF5" to="gpgy:2lwHqHjKxV_" resolve="value" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6kvdbYuiESt" role="3cqZAp">
          <node concept="3clFbS" id="6kvdbYuiESv" role="3clFbx">
            <node concept="3cpWs8" id="6kvdbYuiZS8" role="3cqZAp">
              <node concept="3cpWsn" id="6kvdbYuiZS9" role="3cpWs9">
                <property role="TrG5h" value="portStarts" />
                <node concept="10Oyi0" id="6kvdbYuiZRP" role="1tU5fm" />
                <node concept="2OqwBi" id="6kvdbYuiZSa" role="33vP2m">
                  <node concept="37vLTw" id="6kvdbYuiZSb" role="2Oq$k0">
                    <ref role="3cqZAo" node="6kvdbYuiDUJ" resolve="value" />
                  </node>
                  <node concept="liA8E" id="6kvdbYuiZSc" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.indexOf(java.lang.String):int" resolve="indexOf" />
                    <node concept="Xl_RD" id="6kvdbYuiZSd" role="37wK5m">
                      <property role="Xl_RC" value=":" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="6kvdbYuje7G" role="3cqZAp">
              <node concept="3cpWsn" id="6kvdbYuje7J" role="3cpWs9">
                <property role="TrG5h" value="port" />
                <node concept="10Oyi0" id="6kvdbYuje7E" role="1tU5fm" />
                <node concept="3cmrfG" id="6kvdbYujezr" role="33vP2m">
                  <property role="3cmrfH" value="-1" />
                </node>
              </node>
            </node>
            <node concept="SfApY" id="6kvdbYujfgV" role="3cqZAp">
              <node concept="3clFbS" id="6kvdbYujfgX" role="SfCbr">
                <node concept="3clFbF" id="6kvdbYuji5F" role="3cqZAp">
                  <node concept="37vLTI" id="6kvdbYujjrs" role="3clFbG">
                    <node concept="2YIFZM" id="6kvdbYujjYO" role="37vLTx">
                      <ref role="37wK5l" to="wyt6:~Integer.parseInt(java.lang.String):int" resolve="parseInt" />
                      <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                      <node concept="2OqwBi" id="6kvdbYuj0Nt" role="37wK5m">
                        <node concept="37vLTw" id="6kvdbYuj0gW" role="2Oq$k0">
                          <ref role="3cqZAo" node="6kvdbYuiDUJ" resolve="value" />
                        </node>
                        <node concept="liA8E" id="6kvdbYuj9rZ" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.substring(int):java.lang.String" resolve="substring" />
                          <node concept="3cpWs3" id="6kvdbYujdax" role="37wK5m">
                            <node concept="3cmrfG" id="6kvdbYujdma" role="3uHU7w">
                              <property role="3cmrfH" value="1" />
                            </node>
                            <node concept="37vLTw" id="6kvdbYuj9OD" role="3uHU7B">
                              <ref role="3cqZAo" node="6kvdbYuiZS9" resolve="portStarts" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="6kvdbYuji5D" role="37vLTJ">
                      <ref role="3cqZAo" node="6kvdbYuje7J" resolve="port" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="6kvdbYujfgY" role="TEbGg">
                <node concept="3cpWsn" id="6kvdbYujfh0" role="TDEfY">
                  <property role="TrG5h" value="e" />
                  <node concept="3uibUv" id="6kvdbYujl$g" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                  </node>
                </node>
                <node concept="3clFbS" id="6kvdbYujfh4" role="TDEfX" />
              </node>
            </node>
            <node concept="3cpWs6" id="6kvdbYujm$d" role="3cqZAp">
              <node concept="37vLTw" id="6kvdbYujn1w" role="3cqZAk">
                <ref role="3cqZAo" node="6kvdbYuje7J" resolve="port" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="6kvdbYuiJP1" role="3clFbw">
            <node concept="3y3z36" id="6kvdbYuiJr5" role="3uHU7B">
              <node concept="37vLTw" id="6kvdbYuiF8J" role="3uHU7B">
                <ref role="3cqZAo" node="6kvdbYuiDUJ" resolve="value" />
              </node>
              <node concept="10Nm6u" id="6kvdbYuiJB8" role="3uHU7w" />
            </node>
            <node concept="1eOMI4" id="6kvdbYuiXhj" role="3uHU7w">
              <node concept="22lmx$" id="6kvdbYuiWCG" role="1eOMHV">
                <node concept="2OqwBi" id="6kvdbYuiKB5" role="3uHU7B">
                  <node concept="37vLTw" id="6kvdbYuiK1o" role="2Oq$k0">
                    <ref role="3cqZAo" node="6kvdbYuiDUJ" resolve="value" />
                  </node>
                  <node concept="liA8E" id="6kvdbYuiTfT" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String):boolean" resolve="startsWith" />
                    <node concept="Xl_RD" id="6kvdbYuiTs$" role="37wK5m">
                      <property role="Xl_RC" value="localhost:" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="6kvdbYuiWUl" role="3uHU7w">
                  <node concept="37vLTw" id="6kvdbYuiWUm" role="2Oq$k0">
                    <ref role="3cqZAo" node="6kvdbYuiDUJ" resolve="value" />
                  </node>
                  <node concept="liA8E" id="6kvdbYuiWUn" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String):boolean" resolve="startsWith" />
                    <node concept="Xl_RD" id="6kvdbYuiWUo" role="37wK5m">
                      <property role="Xl_RC" value="127.0.0.1:" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6kvdbYujnC1" role="3cqZAp">
          <node concept="3cmrfG" id="6kvdbYujobm" role="3cqZAk">
            <property role="3cmrfH" value="-1" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6kvdbYuhPTn" role="1B3o_S" />
      <node concept="10Oyi0" id="6kvdbYuhQjZ" role="3clF45" />
      <node concept="37vLTG" id="6kvdbYuhQIV" role="3clF46">
        <property role="TrG5h" value="device" />
        <node concept="3Tqbb2" id="6kvdbYuhQIU" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6kvdbYuibCm" role="jymVt" />
    <node concept="3Tm1VV" id="6kvdbYufADu" role="1B3o_S" />
    <node concept="3uibUv" id="6kvdbYufAL2" role="1zkMxy">
      <ref role="3uigEE" to="n70j:~BaseEventProcessingEditorChecker" resolve="BaseEventProcessingEditorChecker" />
    </node>
    <node concept="1X3_iC" id="7OBD32I8cAA" role="lGtFl">
      <property role="3V$3am" value="member" />
      <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1107461130800/5375687026011219971" />
      <node concept="3clFb_" id="7OBD32I4Mfh" role="8Wnug">
        <property role="TrG5h" value="getProject" />
        <node concept="3uibUv" id="7OBD32I4Mfi" role="3clF45">
          <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
        </node>
        <node concept="3Tm1VV" id="7OBD32I4Mfj" role="1B3o_S" />
        <node concept="3clFbS" id="7OBD32I4Mfk" role="3clF47">
          <node concept="3clFbF" id="7OBD32I4Mfl" role="3cqZAp">
            <node concept="37vLTw" id="7OBD32I4Mfg" role="3clFbG">
              <ref role="3cqZAo" node="7OBD32I4G3Q" resolve="myProject" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2uRRBy" id="6kvdbYum2B2">
    <property role="TrG5h" value="IEC-61499 FortePC Gutter" />
    <property role="3GE5qa" value="forteIntegration" />
    <node concept="2BZ0e9" id="6kvdbYum5iB" role="2uRRBA">
      <property role="TrG5h" value="checker" />
      <node concept="3Tm6S6" id="6kvdbYum5iC" role="1B3o_S" />
      <node concept="3uibUv" id="6kvdbYum5pl" role="1tU5fm">
        <ref role="3uigEE" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
      </node>
      <node concept="2ShNRf" id="6kvdbYum5p_" role="33vP2m">
        <node concept="HV5vD" id="6kvdbYum5MH" role="2ShVmc">
          <ref role="HV5vE" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
        </node>
      </node>
    </node>
    <node concept="2uRRBT" id="6kvdbYum2B3" role="2uRRB$">
      <node concept="3clFbS" id="6kvdbYum2B4" role="2VODD2">
        <node concept="3cpWs8" id="6kvdbYum4mI" role="3cqZAp">
          <node concept="3cpWsn" id="6kvdbYum4mJ" role="3cpWs9">
            <property role="TrG5h" value="higlighter" />
            <node concept="3uibUv" id="6kvdbYum4mB" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~Highlighter" resolve="Highlighter" />
            </node>
            <node concept="2OqwBi" id="6kvdbYum4mK" role="33vP2m">
              <node concept="1KvdUw" id="6kvdbYum4mL" role="2Oq$k0" />
              <node concept="liA8E" id="6kvdbYum4mM" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class):java.lang.Object" resolve="getComponent" />
                <node concept="3VsKOn" id="6kvdbYum4mN" role="37wK5m">
                  <ref role="3VsUkX" to="exr9:~Highlighter" resolve="Highlighter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kvdbYum2EE" role="3cqZAp">
          <node concept="2OqwBi" id="6kvdbYum4LE" role="3clFbG">
            <node concept="37vLTw" id="6kvdbYum4mO" role="2Oq$k0">
              <ref role="3cqZAo" node="6kvdbYum4mJ" resolve="higlighter" />
            </node>
            <node concept="liA8E" id="6kvdbYum5hX" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~Highlighter.addChecker(jetbrains.mps.nodeEditor.checking.EditorChecker):void" resolve="addChecker" />
              <node concept="2OqwBi" id="6kvdbYum5MT" role="37wK5m">
                <node concept="2WthIp" id="6kvdbYum5MW" role="2Oq$k0" />
                <node concept="2BZ7hE" id="6kvdbYum5MY" role="2OqNvi">
                  <ref role="2WH_rO" node="6kvdbYum5iB" resolve="checker" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="6kvdbYum5Rf" role="2uRRB_">
      <node concept="3clFbS" id="6kvdbYum5Rg" role="2VODD2">
        <node concept="3cpWs8" id="6kvdbYum5UL" role="3cqZAp">
          <node concept="3cpWsn" id="6kvdbYum5UM" role="3cpWs9">
            <property role="TrG5h" value="higlighter" />
            <node concept="3uibUv" id="6kvdbYum5UN" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~Highlighter" resolve="Highlighter" />
            </node>
            <node concept="2OqwBi" id="6kvdbYum5UO" role="33vP2m">
              <node concept="1KvdUw" id="6kvdbYum5UP" role="2Oq$k0" />
              <node concept="liA8E" id="6kvdbYum5UQ" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~MPSProject.getComponent(java.lang.Class):java.lang.Object" resolve="getComponent" />
                <node concept="3VsKOn" id="6kvdbYum5UR" role="37wK5m">
                  <ref role="3VsUkX" to="exr9:~Highlighter" resolve="Highlighter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kvdbYum5US" role="3cqZAp">
          <node concept="2OqwBi" id="6kvdbYum5UT" role="3clFbG">
            <node concept="37vLTw" id="6kvdbYum5UU" role="2Oq$k0">
              <ref role="3cqZAo" node="6kvdbYum5UM" resolve="higlighter" />
            </node>
            <node concept="liA8E" id="6kvdbYum5UV" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~Highlighter.removeChecker(jetbrains.mps.nodeEditor.checking.EditorChecker):void" resolve="removeChecker" />
              <node concept="2OqwBi" id="6kvdbYum5UW" role="37wK5m">
                <node concept="2WthIp" id="6kvdbYum5UX" role="2Oq$k0" />
                <node concept="2BZ7hE" id="6kvdbYum5UY" role="2OqNvi">
                  <ref role="2WH_rO" node="6kvdbYum5iB" resolve="checker" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7OBD32HG4Ey">
    <property role="TrG5h" value="IEC61499ProjectTemplate" />
    <property role="3GE5qa" value="projectCreation" />
    <property role="1sVAO0" value="true" />
    <node concept="2tJIrI" id="7OBD32HGbyh" role="jymVt" />
    <node concept="312cEg" id="7OBD32Ib82W" role="jymVt">
      <property role="TrG5h" value="mySettings" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7OBD32Ib7ms" role="1B3o_S" />
      <node concept="3uibUv" id="7OBD32Ib7Vy" role="1tU5fm">
        <ref role="3uigEE" node="7OBD32IaLo3" resolve="SystemConfigSolutionSettings" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ok1qOu1Emu" role="jymVt" />
    <node concept="3clFbW" id="7ok1qOu1Fl_" role="jymVt">
      <node concept="3cqZAl" id="7ok1qOu1FlA" role="3clF45" />
      <node concept="3Tm1VV" id="7ok1qOu1FlB" role="1B3o_S" />
      <node concept="3clFbS" id="7ok1qOu1FlD" role="3clF47">
        <node concept="3clFbF" id="7ok1qOu1FlH" role="3cqZAp">
          <node concept="37vLTI" id="7ok1qOu1FlJ" role="3clFbG">
            <node concept="2OqwBi" id="7ok1qOu1FlN" role="37vLTJ">
              <node concept="Xjq3P" id="7ok1qOu1FlO" role="2Oq$k0" />
              <node concept="2OwXpG" id="7ok1qOu1FlP" role="2OqNvi">
                <ref role="2Oxat5" node="7OBD32Ib82W" resolve="mySettings" />
              </node>
            </node>
            <node concept="2ShNRf" id="7OBD32Ib9N2" role="37vLTx">
              <node concept="1pGfFk" id="7OBD32IbblQ" role="2ShVmc">
                <ref role="37wK5l" node="7OBD32IaLWR" resolve="SystemConfigSolutionSettings" />
                <node concept="37vLTw" id="7ok1qOu1Sa_" role="37wK5m">
                  <ref role="3cqZAo" node="7ok1qOu1Iba" resolve="defaultName" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ok1qOu1Iba" role="3clF46">
        <property role="TrG5h" value="defaultName" />
        <node concept="17QB3L" id="7ok1qOu1Ib9" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7ok1qOu20gy" role="jymVt" />
    <node concept="3clFb_" id="7OBD32IfGyv" role="jymVt">
      <property role="TrG5h" value="getSettings" />
      <node concept="3Tm1VV" id="7OBD32IfGyw" role="1B3o_S" />
      <node concept="2AHcQZ" id="7OBD32IfGyy" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="7OBD32IfGyz" role="3clF45">
        <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
      </node>
      <node concept="3clFbS" id="7OBD32IfGy_" role="3clF47">
        <node concept="3clFbF" id="7OBD32Ii48N" role="3cqZAp">
          <node concept="2OqwBi" id="7OBD32Ii5Nr" role="3clFbG">
            <node concept="37vLTw" id="7OBD32Ii48L" role="2Oq$k0">
              <ref role="3cqZAo" node="7OBD32Ib82W" resolve="mySettings" />
            </node>
            <node concept="liA8E" id="7OBD32Iip8K" role="2OqNvi">
              <ref role="37wK5l" to="lz1h:g46k2sd8t3" resolve="reset" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7OBD32Ig2ZA" role="3cqZAp">
          <node concept="37vLTw" id="7OBD32Ig3tM" role="3cqZAk">
            <ref role="3cqZAo" node="7OBD32Ib82W" resolve="mySettings" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7OBD32IfGyA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32Ig7i2" role="jymVt" />
    <node concept="3clFb_" id="7OBD32Ig7OY" role="jymVt">
      <property role="TrG5h" value="setProjectPath" />
      <node concept="3Tm1VV" id="7OBD32Ig7OZ" role="1B3o_S" />
      <node concept="3cqZAl" id="7OBD32Ig7P1" role="3clF45" />
      <node concept="37vLTG" id="7OBD32Ig7P2" role="3clF46">
        <property role="TrG5h" value="path" />
        <node concept="3uibUv" id="7OBD32Ig7P3" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="3clFbS" id="7OBD32Ig7P5" role="3clF47">
        <node concept="3clFbF" id="7OBD32Ig8Sn" role="3cqZAp">
          <node concept="2OqwBi" id="7OBD32Ig9XI" role="3clFbG">
            <node concept="37vLTw" id="7OBD32Ig8Sm" role="2Oq$k0">
              <ref role="3cqZAo" node="7OBD32Ib82W" resolve="mySettings" />
            </node>
            <node concept="liA8E" id="7OBD32IgbkT" role="2OqNvi">
              <ref role="37wK5l" to="lz1h:g46k2sd8rN" resolve="setProjectPath" />
              <node concept="37vLTw" id="7OBD32IgbHE" role="37wK5m">
                <ref role="3cqZAo" node="7OBD32Ig7P2" resolve="path" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7OBD32Ig7P6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32Igd82" role="jymVt" />
    <node concept="2tJIrI" id="7OBD32IgdaT" role="jymVt" />
    <node concept="3clFb_" id="7OBD32IgdPM" role="jymVt">
      <property role="TrG5h" value="checkSettings" />
      <node concept="3Tm1VV" id="7OBD32IgdPO" role="1B3o_S" />
      <node concept="2AHcQZ" id="7OBD32IgdPQ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3uibUv" id="7OBD32IgdPR" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="7OBD32IgdPT" role="3clF47">
        <node concept="3clFbF" id="7OBD32Igfj2" role="3cqZAp">
          <node concept="2YIFZM" id="7OBD32Igfv1" role="3clFbG">
            <ref role="37wK5l" to="l5s7:~NewModuleUtil.check(org.jetbrains.mps.openapi.module.SRepository,java.lang.String,java.lang.String,java.lang.String):java.lang.String" resolve="check" />
            <ref role="1Pybhc" to="l5s7:~NewModuleUtil" resolve="NewModuleUtil" />
            <node concept="10Nm6u" id="7OBD32IgfEP" role="37wK5m" />
            <node concept="10M0yZ" id="7OBD32Iggpu" role="37wK5m">
              <ref role="3cqZAo" to="z1c3:~MPSExtentions.DOT_SOLUTION" resolve="DOT_SOLUTION" />
              <ref role="1PxDUh" to="z1c3:~MPSExtentions" resolve="MPSExtentions" />
            </node>
            <node concept="2OqwBi" id="7OBD32IghK_" role="37wK5m">
              <node concept="37vLTw" id="7OBD32IggPR" role="2Oq$k0">
                <ref role="3cqZAo" node="7OBD32Ib82W" resolve="mySettings" />
              </node>
              <node concept="liA8E" id="7OBD32Ig_8m" role="2OqNvi">
                <ref role="37wK5l" to="lz1h:g46k2scpfc" resolve="getModuleName" />
              </node>
            </node>
            <node concept="2OqwBi" id="7OBD32IgAPj" role="37wK5m">
              <node concept="37vLTw" id="7OBD32Ig_U8" role="2Oq$k0">
                <ref role="3cqZAo" node="7OBD32Ib82W" resolve="mySettings" />
              </node>
              <node concept="liA8E" id="7OBD32IgUeH" role="2OqNvi">
                <ref role="37wK5l" to="lz1h:g46k2scpfz" resolve="getModuleLocation" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7OBD32IgdPU" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32IfFK5" role="jymVt" />
    <node concept="3clFb_" id="7OBD32HGeKZ" role="jymVt">
      <property role="TrG5h" value="getTemplateFiller" />
      <node concept="3Tm1VV" id="7OBD32HGeL0" role="1B3o_S" />
      <node concept="2AHcQZ" id="7OBD32HGeL2" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="7OBD32HGeL3" role="3clF45">
        <ref role="3uigEE" to="fpme:~TemplateFiller" resolve="TemplateFiller" />
      </node>
      <node concept="3clFbS" id="7OBD32HGeL4" role="3clF47">
        <node concept="3clFbF" id="7OBD32HGf5n" role="3cqZAp">
          <node concept="2ShNRf" id="7OBD32HGf5l" role="3clFbG">
            <node concept="YeOm9" id="7OBD32HGuWN" role="2ShVmc">
              <node concept="1Y3b0j" id="7OBD32HGuWQ" role="YeSDq">
                <property role="2bfB8j" value="true" />
                <ref role="1Y3XeK" to="fpme:~TemplateFiller" resolve="TemplateFiller" />
                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                <node concept="3Tm1VV" id="7OBD32HGuWR" role="1B3o_S" />
                <node concept="3clFb_" id="7OBD32HGuWT" role="jymVt">
                  <property role="TrG5h" value="fillProjectWithModules" />
                  <node concept="3Tm1VV" id="7OBD32HGuWU" role="1B3o_S" />
                  <node concept="3cqZAl" id="7OBD32HGuWW" role="3clF45" />
                  <node concept="37vLTG" id="7OBD32HGuWX" role="3clF46">
                    <property role="TrG5h" value="project" />
                    <node concept="3uibUv" id="7OBD32HGuWY" role="1tU5fm">
                      <ref role="3uigEE" to="z1c4:~MPSProject" resolve="MPSProject" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7OBD32HGuWZ" role="3clF47">
                    <node concept="3cpWs8" id="7OBD32HGDxA" role="3cqZAp">
                      <node concept="3cpWsn" id="7OBD32HGDxB" role="3cpWs9">
                        <property role="TrG5h" value="settings" />
                        <node concept="3uibUv" id="2f4j8PTvXr0" role="1tU5fm">
                          <ref role="3uigEE" node="7OBD32IaLo3" resolve="SystemConfigSolutionSettings" />
                        </node>
                        <node concept="0kSF2" id="7OBD32HGF9l" role="33vP2m">
                          <node concept="3uibUv" id="2f4j8PTvWEX" role="0kSFW">
                            <ref role="3uigEE" node="7OBD32IaLo3" resolve="SystemConfigSolutionSettings" />
                          </node>
                          <node concept="1rXfSq" id="7OBD32HGDxC" role="0kSFX">
                            <ref role="37wK5l" node="7OBD32IfGyv" resolve="getSettings" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="7OBD32HH2sx" role="3cqZAp">
                      <node concept="3cpWsn" id="7OBD32HH2sy" role="3cpWs9">
                        <property role="TrG5h" value="moduleName" />
                        <node concept="17QB3L" id="7OBD32HH2sr" role="1tU5fm" />
                        <node concept="2OqwBi" id="7OBD32HH2sz" role="33vP2m">
                          <node concept="37vLTw" id="7OBD32HH2s$" role="2Oq$k0">
                            <ref role="3cqZAo" node="7OBD32HGDxB" resolve="settings" />
                          </node>
                          <node concept="liA8E" id="7OBD32HH2s_" role="2OqNvi">
                            <ref role="37wK5l" to="lz1h:g46k2scpfc" resolve="getModuleName" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="7OBD32HH2NB" role="3cqZAp">
                      <node concept="3cpWsn" id="7OBD32HH2NC" role="3cpWs9">
                        <property role="TrG5h" value="moduleLocation" />
                        <node concept="17QB3L" id="7OBD32HH2NA" role="1tU5fm" />
                        <node concept="2OqwBi" id="7OBD32HH2ND" role="33vP2m">
                          <node concept="37vLTw" id="7OBD32HH2NE" role="2Oq$k0">
                            <ref role="3cqZAo" node="7OBD32HGDxB" resolve="settings" />
                          </node>
                          <node concept="liA8E" id="7OBD32HH2NF" role="2OqNvi">
                            <ref role="37wK5l" to="lz1h:g46k2scpfz" resolve="getModuleLocation" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="7OBD32HGw7t" role="3cqZAp">
                      <node concept="2OqwBi" id="7OBD32HGwNZ" role="3clFbG">
                        <node concept="2YIFZM" id="7OBD32HGwp$" role="2Oq$k0">
                          <ref role="37wK5l" to="v27p:~StartupManager.getInstance(com.intellij.openapi.project.Project):com.intellij.openapi.startup.StartupManager" resolve="getInstance" />
                          <ref role="1Pybhc" to="v27p:~StartupManager" resolve="StartupManager" />
                          <node concept="2OqwBi" id="7OBD32HGGab" role="37wK5m">
                            <node concept="37vLTw" id="7OBD32HGwFn" role="2Oq$k0">
                              <ref role="3cqZAo" node="7OBD32HGuWX" resolve="project" />
                            </node>
                            <node concept="liA8E" id="7OBD32HGIgt" role="2OqNvi">
                              <ref role="37wK5l" to="z1c4:~MPSProject.getProject():com.intellij.openapi.project.Project" resolve="getProject" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="7OBD32HGx0N" role="2OqNvi">
                          <ref role="37wK5l" to="v27p:~StartupManager.registerPostStartupActivity(java.lang.Runnable):void" resolve="registerPostStartupActivity" />
                          <node concept="1bVj0M" id="7OBD32HGx$E" role="37wK5m">
                            <node concept="3clFbS" id="7OBD32HGx$F" role="1bW5cS">
                              <node concept="3clFbF" id="7OBD32HGxXS" role="3cqZAp">
                                <node concept="2OqwBi" id="7OBD32HGzFc" role="3clFbG">
                                  <node concept="2OqwBi" id="7OBD32HGyzR" role="2Oq$k0">
                                    <node concept="37vLTw" id="7OBD32HGxXR" role="2Oq$k0">
                                      <ref role="3cqZAo" node="7OBD32HGuWX" resolve="project" />
                                    </node>
                                    <node concept="liA8E" id="7OBD32HGzxQ" role="2OqNvi">
                                      <ref role="37wK5l" to="z1c3:~Project.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
                                    </node>
                                  </node>
                                  <node concept="liA8E" id="7OBD32HG_4B" role="2OqNvi">
                                    <ref role="37wK5l" to="lui2:~ModelAccess.executeCommand(java.lang.Runnable):void" resolve="executeCommand" />
                                    <node concept="1bVj0M" id="7OBD32HG_E9" role="37wK5m">
                                      <node concept="3clFbS" id="7OBD32HG_Ea" role="1bW5cS">
                                        <node concept="3cpWs8" id="7OBD32HGXOD" role="3cqZAp">
                                          <node concept="3cpWsn" id="7OBD32HGXOE" role="3cpWs9">
                                            <property role="TrG5h" value="solution" />
                                            <node concept="3uibUv" id="7OBD32HGXO$" role="1tU5fm">
                                              <ref role="3uigEE" to="z1c3:~Solution" resolve="Solution" />
                                            </node>
                                            <node concept="2YIFZM" id="7OBD32HGXOF" role="33vP2m">
                                              <ref role="37wK5l" to="l5s7:~NewModuleUtil.createSolution(java.lang.String,java.lang.String,jetbrains.mps.project.MPSProject):jetbrains.mps.project.Solution" resolve="createSolution" />
                                              <ref role="1Pybhc" to="l5s7:~NewModuleUtil" resolve="NewModuleUtil" />
                                              <node concept="37vLTw" id="7OBD32HH2sA" role="37wK5m">
                                                <ref role="3cqZAo" node="7OBD32HH2sy" resolve="moduleName" />
                                              </node>
                                              <node concept="37vLTw" id="7OBD32HH2NG" role="37wK5m">
                                                <ref role="3cqZAo" node="7OBD32HH2NC" resolve="moduleLocation" />
                                              </node>
                                              <node concept="37vLTw" id="7OBD32HGXOM" role="37wK5m">
                                                <ref role="3cqZAo" node="7OBD32HGuWX" resolve="project" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3cpWs8" id="7OBD32Ibu$A" role="3cqZAp">
                                          <node concept="3cpWsn" id="7OBD32Ibu$B" role="3cpWs9">
                                            <property role="TrG5h" value="root" />
                                            <node concept="3uibUv" id="7OBD32IbV$4" role="1tU5fm">
                                              <ref role="3uigEE" to="pa15:~DefaultModelRoot" resolve="DefaultModelRoot" />
                                            </node>
                                            <node concept="0kSF2" id="7OBD32IbXQE" role="33vP2m">
                                              <node concept="3uibUv" id="7OBD32IbXQH" role="0kSFW">
                                                <ref role="3uigEE" to="pa15:~DefaultModelRoot" resolve="DefaultModelRoot" />
                                              </node>
                                              <node concept="2OqwBi" id="7OBD32IbCnh" role="0kSFX">
                                                <node concept="2OqwBi" id="7OBD32IbBq9" role="2Oq$k0">
                                                  <node concept="2OqwBi" id="7OBD32IbxKI" role="2Oq$k0">
                                                    <node concept="37vLTw" id="7OBD32IbwIJ" role="2Oq$k0">
                                                      <ref role="3cqZAo" node="7OBD32HGXOE" resolve="solution" />
                                                    </node>
                                                    <node concept="liA8E" id="7OBD32IbAVU" role="2OqNvi">
                                                      <ref role="37wK5l" to="z1c3:~AbstractModule.getModelRoots():java.lang.Iterable" resolve="getModelRoots" />
                                                    </node>
                                                  </node>
                                                  <node concept="liA8E" id="7OBD32IbC0l" role="2OqNvi">
                                                    <ref role="37wK5l" to="wyt6:~Iterable.iterator():java.util.Iterator" resolve="iterator" />
                                                  </node>
                                                </node>
                                                <node concept="liA8E" id="7OBD32IbJcT" role="2OqNvi">
                                                  <ref role="37wK5l" to="33ny:~Iterator.next():java.lang.Object" resolve="next" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3cpWs8" id="7OBD32IbKDX" role="3cqZAp">
                                          <node concept="3cpWsn" id="7OBD32IbKE0" role="3cpWs9">
                                            <property role="TrG5h" value="model" />
                                            <node concept="H_c77" id="7OBD32IbKDV" role="1tU5fm" />
                                          </node>
                                        </node>
                                        <node concept="SfApY" id="7OBD32IhjP6" role="3cqZAp">
                                          <node concept="3clFbS" id="7OBD32IhjP8" role="SfCbr">
                                            <node concept="3clFbF" id="7OBD32Ih$4V" role="3cqZAp">
                                              <node concept="37vLTI" id="7OBD32Ih$4X" role="3clFbG">
                                                <node concept="2OqwBi" id="7OBD32IbN1y" role="37vLTx">
                                                  <node concept="37vLTw" id="7OBD32IbMfa" role="2Oq$k0">
                                                    <ref role="3cqZAo" node="7OBD32Ibu$B" resolve="root" />
                                                  </node>
                                                  <node concept="liA8E" id="7OBD32IbZ0A" role="2OqNvi">
                                                    <ref role="37wK5l" to="pa15:~DefaultModelRoot.createModel(org.jetbrains.mps.openapi.model.SModelName,jetbrains.mps.extapi.persistence.SourceRoot,jetbrains.mps.extapi.persistence.datasource.DataSourceFactoryFromName,org.jetbrains.mps.openapi.persistence.ModelFactory):org.jetbrains.mps.openapi.model.SModel" resolve="createModel" />
                                                    <node concept="2ShNRf" id="7OBD32IbZLi" role="37wK5m">
                                                      <node concept="1pGfFk" id="7OBD32Ic2pr" role="2ShVmc">
                                                        <ref role="37wK5l" to="mhbf:~SModelName.&lt;init&gt;(java.lang.String)" resolve="SModelName" />
                                                        <node concept="3cpWs3" id="7OBD32Ic2Jo" role="37wK5m">
                                                          <node concept="Xl_RD" id="7OBD32Ic2Jp" role="3uHU7w">
                                                            <property role="Xl_RC" value="@system" />
                                                          </node>
                                                          <node concept="37vLTw" id="7OBD32Ic2Jq" role="3uHU7B">
                                                            <ref role="3cqZAo" node="7OBD32HH2sy" resolve="moduleName" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="2OqwBi" id="7OBD32Idr1U" role="37wK5m">
                                                      <node concept="2OqwBi" id="7OBD32IdmmA" role="2Oq$k0">
                                                        <node concept="37vLTw" id="7OBD32Idl1C" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="7OBD32Ibu$B" resolve="root" />
                                                        </node>
                                                        <node concept="liA8E" id="7OBD32Idnx6" role="2OqNvi">
                                                          <ref role="37wK5l" to="ends:~FileBasedModelRoot.getSourceRoots(jetbrains.mps.extapi.persistence.SourceRootKind):java.util.List" resolve="getSourceRoots" />
                                                          <node concept="Rm8GO" id="7OBD32IdpYJ" role="37wK5m">
                                                            <ref role="Rm8GQ" to="ends:~SourceRootKinds.SOURCES" resolve="SOURCES" />
                                                            <ref role="1Px2BO" to="ends:~SourceRootKinds" resolve="SourceRootKinds" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="liA8E" id="7OBD32IdDwO" role="2OqNvi">
                                                        <ref role="37wK5l" to="33ny:~List.get(int):java.lang.Object" resolve="get" />
                                                        <node concept="3cmrfG" id="7OBD32IdEsd" role="37wK5m">
                                                          <property role="3cmrfH" value="0" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="10M0yZ" id="7OBD32IdcGW" role="37wK5m">
                                                      <ref role="3cqZAo" node="7OBD32IcaQ$" resolve="DATASOURCE_FROM_NAME_FACTORY" />
                                                      <ref role="1PxDUh" node="1_Zi$Xmm_zm" resolve="IEC61499Persistence" />
                                                    </node>
                                                    <node concept="10M0yZ" id="7OBD32IdeMA" role="37wK5m">
                                                      <ref role="3cqZAo" node="1_Zi$XmmA7o" resolve="MODEL_FACTORY" />
                                                      <ref role="1PxDUh" node="1_Zi$Xmm_zm" resolve="IEC61499Persistence" />
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="37vLTw" id="7OBD32Ih$51" role="37vLTJ">
                                                  <ref role="3cqZAo" node="7OBD32IbKE0" resolve="model" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbH" id="7OBD32IhjP7" role="3cqZAp" />
                                          </node>
                                          <node concept="TDmWw" id="7OBD32IhjP9" role="TEbGg">
                                            <node concept="3cpWsn" id="7OBD32IhjPb" role="TDEfY">
                                              <property role="TrG5h" value="e" />
                                              <node concept="3uibUv" id="7OBD32Ihk_3" role="1tU5fm">
                                                <ref role="3uigEE" to="pa15:~ModelCannotBeCreatedException" resolve="ModelCannotBeCreatedException" />
                                              </node>
                                            </node>
                                            <node concept="3clFbS" id="7OBD32IhjPf" role="TDEfX">
                                              <node concept="YS8fn" id="7OBD32IhlQj" role="3cqZAp">
                                                <node concept="2ShNRf" id="7OBD32IhmAr" role="YScLw">
                                                  <node concept="1pGfFk" id="7OBD32IhoXq" role="2ShVmc">
                                                    <ref role="37wK5l" to="wyt6:~RuntimeException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="RuntimeException" />
                                                    <node concept="Xl_RD" id="7OBD32IhpIP" role="37wK5m">
                                                      <property role="Xl_RC" value="Model can not be created" />
                                                    </node>
                                                    <node concept="37vLTw" id="7OBD32Ihw5x" role="37wK5m">
                                                      <ref role="3cqZAo" node="7OBD32IhjPb" resolve="e" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3cpWs8" id="7OBD32IdJH$" role="3cqZAp">
                                          <node concept="3cpWsn" id="7OBD32IdJH_" role="3cpWs9">
                                            <property role="TrG5h" value="config" />
                                            <node concept="3Tqbb2" id="7OBD32IdJGf" role="1tU5fm">
                                              <ref role="ehGHo" to="xiqq:uLhTRR7Mvw" resolve="SystemConfiguration" />
                                            </node>
                                            <node concept="2OqwBi" id="7OBD32IdJHA" role="33vP2m">
                                              <node concept="37vLTw" id="7OBD32IdJHB" role="2Oq$k0">
                                                <ref role="3cqZAo" node="7OBD32IbKE0" resolve="model" />
                                              </node>
                                              <node concept="2xF2bX" id="7OBD32IdJHC" role="2OqNvi">
                                                <ref role="I8UWU" to="xiqq:uLhTRR7Mvw" resolve="SystemConfiguration" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="7OBD32IdGxo" role="3cqZAp">
                                          <node concept="37vLTI" id="7OBD32Ifg6d" role="3clFbG">
                                            <node concept="37vLTw" id="7OBD32IfhfA" role="37vLTx">
                                              <ref role="3cqZAo" node="7OBD32HH2sy" resolve="moduleName" />
                                            </node>
                                            <node concept="2OqwBi" id="7OBD32IdL$P" role="37vLTJ">
                                              <node concept="37vLTw" id="7OBD32IdJHD" role="2Oq$k0">
                                                <ref role="3cqZAo" node="7OBD32IdJH_" resolve="config" />
                                              </node>
                                              <node concept="3TrcHB" id="7OBD32IdMem" role="2OqNvi">
                                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="7OBD32IblLI" role="3cqZAp">
                                          <node concept="2OqwBi" id="7OBD32Ibn8i" role="3clFbG">
                                            <node concept="2YIFZM" id="7OBD32IbmBQ" role="2Oq$k0">
                                              <ref role="37wK5l" to="bd8o:~ApplicationManager.getApplication():com.intellij.openapi.application.Application" resolve="getApplication" />
                                              <ref role="1Pybhc" to="bd8o:~ApplicationManager" resolve="ApplicationManager" />
                                            </node>
                                            <node concept="liA8E" id="7OBD32IbooY" role="2OqNvi">
                                              <ref role="37wK5l" to="bd8o:~Application.invokeLater(java.lang.Runnable):void" resolve="invokeLater" />
                                              <node concept="1bVj0M" id="7OBD32Ibpnh" role="37wK5m">
                                                <node concept="3clFbS" id="7OBD32Ibpni" role="1bW5cS">
                                                  <node concept="3clFbF" id="7OBD32Ibq41" role="3cqZAp">
                                                    <node concept="2OqwBi" id="7OBD32IfmR3" role="3clFbG">
                                                      <node concept="2YIFZM" id="7OBD32IfyLf" role="2Oq$k0">
                                                        <ref role="37wK5l" to="kz9k:~NavigationSupport.getInstance():jetbrains.mps.openapi.navigation.NavigationSupport" resolve="getInstance" />
                                                        <ref role="1Pybhc" to="kz9k:~NavigationSupport" resolve="NavigationSupport" />
                                                      </node>
                                                      <node concept="liA8E" id="7OBD32IfzoQ" role="2OqNvi">
                                                        <ref role="37wK5l" to="kz9k:~NavigationSupport.openNode(jetbrains.mps.project.Project,org.jetbrains.mps.openapi.model.SNode,boolean,boolean):jetbrains.mps.openapi.editor.Editor" resolve="openNode" />
                                                        <node concept="37vLTw" id="7OBD32If$vh" role="37wK5m">
                                                          <ref role="3cqZAo" node="7OBD32HGuWX" resolve="project" />
                                                        </node>
                                                        <node concept="37vLTw" id="7OBD32If_Gl" role="37wK5m">
                                                          <ref role="3cqZAo" node="7OBD32IdJH_" resolve="config" />
                                                        </node>
                                                        <node concept="3clFbT" id="7OBD32IfEbA" role="37wK5m">
                                                          <property role="3clFbU" value="true" />
                                                        </node>
                                                        <node concept="3clFbT" id="7OBD32IfFlr" role="37wK5m">
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
        </node>
      </node>
      <node concept="2AHcQZ" id="7OBD32HGeL5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32IiI2y" role="jymVt" />
    <node concept="3clFb_" id="7OBD32IiLxf" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="initModel" />
      <node concept="3clFbS" id="7OBD32IiLxi" role="3clF47" />
      <node concept="3cqZAl" id="7OBD32IiLol" role="3clF45" />
      <node concept="37vLTG" id="7OBD32IiMmB" role="3clF46">
        <property role="TrG5h" value="m" />
        <node concept="H_c77" id="7OBD32IiMmA" role="1tU5fm" />
      </node>
      <node concept="3Tmbuc" id="7OBD32IiN1O" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7OBD32IiNIk" role="jymVt" />
    <node concept="Wx3nA" id="7OBD32IiOPI" role="jymVt">
      <property role="TrG5h" value="SYSTEM_CONFIG_TEMPLATE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7OBD32IiS39" role="1tU5fm">
        <ref role="3uigEE" node="7OBD32HG4Ey" resolve="IEC61499ProjectTemplate" />
      </node>
      <node concept="2ShNRf" id="7OBD32IiUmx" role="33vP2m">
        <node concept="YeOm9" id="7OBD32IiXgw" role="2ShVmc">
          <node concept="1Y3b0j" id="7OBD32IiXgz" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7OBD32HG4Ey" resolve="IEC61499ProjectTemplate" />
            <ref role="37wK5l" node="7ok1qOu1Fl_" resolve="IEC61499ProjectTemplate" />
            <node concept="Xl_RD" id="7ok1qOu28MN" role="37wK5m">
              <property role="Xl_RC" value="NewSystem" />
            </node>
            <node concept="3clFb_" id="7OBD32HGbZq" role="jymVt">
              <property role="TrG5h" value="getName" />
              <node concept="3Tm1VV" id="7OBD32HGbZr" role="1B3o_S" />
              <node concept="2AHcQZ" id="7OBD32HGbZt" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="7OBD32HGbZu" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="7OBD32HGbZv" role="3clF47">
                <node concept="3clFbF" id="7OBD32HGciL" role="3cqZAp">
                  <node concept="Xl_RD" id="7OBD32HGciK" role="3clFbG">
                    <property role="Xl_RC" value="System Configuration" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7OBD32HGbZw" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="7OBD32HGbyq" role="jymVt" />
            <node concept="3clFb_" id="7OBD32HGbyD" role="jymVt">
              <property role="TrG5h" value="getDescription" />
              <node concept="3Tm1VV" id="7OBD32HGbyE" role="1B3o_S" />
              <node concept="2AHcQZ" id="7OBD32HGbyG" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
              </node>
              <node concept="3uibUv" id="7OBD32HGbyH" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="7OBD32HGbyI" role="3clF47">
                <node concept="3clFbF" id="7OBD32HGcxa" role="3cqZAp">
                  <node concept="Xl_RD" id="7OBD32HGcx9" role="3clFbG">
                    <property role="Xl_RC" value="System Configuration for IEC 61499 Standard " />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7OBD32HGbyJ" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="7OBD32HGcC0" role="jymVt" />
            <node concept="3clFb_" id="7OBD32HGcFb" role="jymVt">
              <property role="TrG5h" value="getIcon" />
              <node concept="3Tm1VV" id="7OBD32HGcFc" role="1B3o_S" />
              <node concept="2AHcQZ" id="7OBD32HGcFe" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
              </node>
              <node concept="3uibUv" id="7OBD32HGcFf" role="3clF45">
                <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
              </node>
              <node concept="3clFbS" id="7OBD32HGcFg" role="3clF47">
                <node concept="3clFbF" id="7OBD32HGes2" role="3cqZAp">
                  <node concept="1QGGTA" id="7OBD32HGerZ" role="3clFbG">
                    <node concept="1irR5M" id="7OBD32HGezw" role="1QGGTw">
                      <property role="2$rrk2" value="1" />
                      <node concept="1irR9n" id="uLhTRR7MXZ" role="1irR9h">
                        <node concept="3PKj8D" id="uLhTRR7MY0" role="3PKjn_">
                          <property role="3PKj8l" value="FF9111" />
                        </node>
                      </node>
                      <node concept="1irPie" id="uLhTRR7MY1" role="1irR9h">
                        <property role="1irPi9" value="S" />
                        <node concept="3PKj8D" id="uLhTRR7MY2" role="3PKjny">
                          <property role="3PKj8l" value="EEEEEE" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7OBD32HGcFh" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="7OBD32IjzT5" role="jymVt" />
            <node concept="3Tm1VV" id="7OBD32IiXg$" role="1B3o_S" />
            <node concept="3clFb_" id="7OBD32IiXHa" role="jymVt">
              <property role="TrG5h" value="initModel" />
              <node concept="3cqZAl" id="7OBD32IiXHc" role="3clF45" />
              <node concept="37vLTG" id="7OBD32IiXHd" role="3clF46">
                <property role="TrG5h" value="m" />
                <node concept="H_c77" id="7OBD32IiXHe" role="1tU5fm" />
              </node>
              <node concept="3Tmbuc" id="7OBD32IiXHf" role="1B3o_S" />
              <node concept="3clFbS" id="7OBD32IiXHh" role="3clF47">
                <node concept="3cpWs8" id="7OBD32IiXV7" role="3cqZAp">
                  <node concept="3cpWsn" id="7OBD32IiXV8" role="3cpWs9">
                    <property role="TrG5h" value="config" />
                    <node concept="3Tqbb2" id="7OBD32IiXV9" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:uLhTRR7Mvw" resolve="SystemConfiguration" />
                    </node>
                    <node concept="2OqwBi" id="7OBD32IiXVa" role="33vP2m">
                      <node concept="37vLTw" id="7OBD32IiY$G" role="2Oq$k0">
                        <ref role="3cqZAo" node="7OBD32IiXHd" resolve="m" />
                      </node>
                      <node concept="2xF2bX" id="7OBD32IiXVc" role="2OqNvi">
                        <ref role="I8UWU" to="xiqq:uLhTRR7Mvw" resolve="SystemConfiguration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7OBD32IiXVd" role="3cqZAp">
                  <node concept="37vLTI" id="7OBD32IiXVe" role="3clFbG">
                    <node concept="2OqwBi" id="7OBD32IiXVg" role="37vLTJ">
                      <node concept="37vLTw" id="7OBD32IiXVh" role="2Oq$k0">
                        <ref role="3cqZAo" node="7OBD32IiXV8" resolve="config" />
                      </node>
                      <node concept="3TrcHB" id="7OBD32IiXVi" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7OBD32Ij9vv" role="37vLTx">
                      <node concept="2ShNRf" id="7OBD32Ij4ut" role="2Oq$k0">
                        <node concept="1pGfFk" id="7OBD32Ij95m" role="2ShVmc">
                          <ref role="37wK5l" to="mhbf:~SModelName.&lt;init&gt;(java.lang.String)" resolve="SModelName" />
                          <node concept="2OqwBi" id="7OBD32Ij1Wc" role="37wK5m">
                            <node concept="37vLTw" id="7OBD32Ij1gQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="7OBD32IiXHd" resolve="m" />
                            </node>
                            <node concept="LkI2h" id="7OBD32Ij3e4" role="2OqNvi" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7OBD32Ij9Qd" role="2OqNvi">
                        <ref role="37wK5l" to="mhbf:~SModelName.getSimpleName():java.lang.String" resolve="getSimpleName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7OBD32IiXHi" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32IjAEo" role="jymVt" />
    <node concept="Wx3nA" id="7OBD32Ijasz" role="jymVt">
      <property role="TrG5h" value="LIBRARY_TEMPLATE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="7OBD32Ijas_" role="1tU5fm">
        <ref role="3uigEE" node="7OBD32HG4Ey" resolve="IEC61499ProjectTemplate" />
      </node>
      <node concept="2ShNRf" id="7OBD32IjasA" role="33vP2m">
        <node concept="YeOm9" id="7OBD32IjasB" role="2ShVmc">
          <node concept="1Y3b0j" id="7OBD32IjasC" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" node="7OBD32HG4Ey" resolve="IEC61499ProjectTemplate" />
            <ref role="37wK5l" node="7ok1qOu1Fl_" resolve="IEC61499ProjectTemplate" />
            <node concept="3clFb_" id="7OBD32Ij_iu" role="jymVt">
              <property role="TrG5h" value="getName" />
              <node concept="3Tm1VV" id="7OBD32Ij_iv" role="1B3o_S" />
              <node concept="2AHcQZ" id="7OBD32Ij_iw" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="7OBD32Ij_ix" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="7OBD32Ij_iy" role="3clF47">
                <node concept="3clFbF" id="7OBD32Ij_iz" role="3cqZAp">
                  <node concept="Xl_RD" id="7OBD32Ij_i$" role="3clFbG">
                    <property role="Xl_RC" value="Library" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7OBD32Ij_i_" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="7OBD32Ij_iA" role="jymVt" />
            <node concept="3clFb_" id="7OBD32Ij_iB" role="jymVt">
              <property role="TrG5h" value="getDescription" />
              <node concept="3Tm1VV" id="7OBD32Ij_iC" role="1B3o_S" />
              <node concept="2AHcQZ" id="7OBD32Ij_iD" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
              </node>
              <node concept="3uibUv" id="7OBD32Ij_iE" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="7OBD32Ij_iF" role="3clF47">
                <node concept="3clFbF" id="7OBD32Ij_iG" role="3cqZAp">
                  <node concept="Xl_RD" id="7OBD32Ij_iH" role="3clFbG">
                    <property role="Xl_RC" value="Library of function block, adapter and subapplication types" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7OBD32Ij_iI" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="7OBD32Ij_iJ" role="jymVt" />
            <node concept="3clFb_" id="7OBD32Ij_iK" role="jymVt">
              <property role="TrG5h" value="getIcon" />
              <node concept="3Tm1VV" id="7OBD32Ij_iL" role="1B3o_S" />
              <node concept="2AHcQZ" id="7OBD32Ij_iM" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
              </node>
              <node concept="3uibUv" id="7OBD32Ij_iN" role="3clF45">
                <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
              </node>
              <node concept="3clFbS" id="7OBD32Ij_iO" role="3clF47">
                <node concept="3clFbF" id="7OBD32Ij_iP" role="3cqZAp">
                  <node concept="1QGGTA" id="7OBD32Ij_iQ" role="3clFbG">
                    <node concept="1irR5M" id="7OBD32Ij_iR" role="1QGGTw">
                      <property role="2$rrk2" value="2" />
                      <node concept="1irR9n" id="uLhTRR236x" role="1irR9h">
                        <node concept="3PKj8D" id="uLhTRR236y" role="3PKjn_">
                          <property role="3PKj8l" value="87CEEB" />
                        </node>
                      </node>
                      <node concept="1irPie" id="uLhTRR236z" role="1irR9h">
                        <property role="1irPi9" value="L" />
                        <node concept="3PKj8D" id="uLhTRR236$" role="3PKjny">
                          <property role="3PKj8l" value="EEEEEE" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7OBD32Ij_iW" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="7OBD32Ij$Za" role="jymVt" />
            <node concept="3Tm1VV" id="7OBD32IjasD" role="1B3o_S" />
            <node concept="3clFb_" id="7OBD32IjasE" role="jymVt">
              <property role="TrG5h" value="initModel" />
              <node concept="3cqZAl" id="7OBD32IjasF" role="3clF45" />
              <node concept="37vLTG" id="7OBD32IjasG" role="3clF46">
                <property role="TrG5h" value="m" />
                <node concept="H_c77" id="7OBD32IjasH" role="1tU5fm" />
              </node>
              <node concept="3Tmbuc" id="7OBD32IjasI" role="1B3o_S" />
              <node concept="3clFbS" id="7OBD32IjasJ" role="3clF47">
                <node concept="3cpWs8" id="7OBD32IjasK" role="3cqZAp">
                  <node concept="3cpWsn" id="7OBD32IjasL" role="3cpWs9">
                    <property role="TrG5h" value="basicFBType" />
                    <node concept="3Tqbb2" id="7OBD32IjasM" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="7OBD32IjasN" role="33vP2m">
                      <node concept="37vLTw" id="7OBD32IjasO" role="2Oq$k0">
                        <ref role="3cqZAo" node="7OBD32IjasG" resolve="m" />
                      </node>
                      <node concept="2xF2bX" id="7OBD32IjasP" role="2OqNvi">
                        <ref role="I8UWU" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="7OBD32IjasQ" role="3cqZAp">
                  <node concept="37vLTI" id="7OBD32IjasR" role="3clFbG">
                    <node concept="2OqwBi" id="7OBD32IjasS" role="37vLTJ">
                      <node concept="37vLTw" id="7OBD32IjasT" role="2Oq$k0">
                        <ref role="3cqZAo" node="7OBD32IjasL" resolve="basicFBType" />
                      </node>
                      <node concept="3TrcHB" id="7OBD32IjasU" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="7OBD32Ijd9F" role="37vLTx">
                      <property role="Xl_RC" value="SampleBasicBFType" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="7OBD32Ijat2" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="Xl_RD" id="7ok1qOu21HF" role="37wK5m">
              <property role="Xl_RC" value="NewLibrary" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32Ica9h" role="jymVt" />
    <node concept="3Tm1VV" id="7OBD32HG4Ez" role="1B3o_S" />
    <node concept="3uibUv" id="7OBD32IiG_q" role="EKbjA">
      <ref role="3uigEE" to="fpme:~MPSProjectTemplate" resolve="MPSProjectTemplate" />
    </node>
  </node>
  <node concept="312cEu" id="7OBD32IaLo3">
    <property role="3GE5qa" value="projectCreation" />
    <property role="TrG5h" value="SystemConfigSolutionSettings" />
    <node concept="2tJIrI" id="7OBD32IaLy_" role="jymVt" />
    <node concept="312cEg" id="7ok1qOu1qrY" role="jymVt">
      <property role="TrG5h" value="myDefaultName" />
      <node concept="3Tm6S6" id="7ok1qOu1qrZ" role="1B3o_S" />
      <node concept="17QB3L" id="7ok1qOu1qs1" role="1tU5fm" />
    </node>
    <node concept="3Tm1VV" id="7OBD32IaLo4" role="1B3o_S" />
    <node concept="3uibUv" id="7OBD32IaLtp" role="1zkMxy">
      <ref role="3uigEE" to="lz1h:g46k2sbMn_" resolve="AbstractModuleCreationSettings" />
    </node>
    <node concept="2tJIrI" id="7ok1qOu1sry" role="jymVt" />
    <node concept="3clFbW" id="7OBD32IaLWR" role="jymVt">
      <node concept="3cqZAl" id="7OBD32IaLWS" role="3clF45" />
      <node concept="3Tm1VV" id="7OBD32IaLWT" role="1B3o_S" />
      <node concept="3clFbS" id="7OBD32IaLWV" role="3clF47">
        <node concept="XkiVB" id="7OBD32IaLWX" role="3cqZAp">
          <ref role="37wK5l" to="lz1h:g46k2sbOEA" resolve="AbstractModuleCreationSettings" />
          <node concept="10Nm6u" id="7OBD32Ibcdv" role="37wK5m" />
          <node concept="Xl_RD" id="7OBD32IaN66" role="37wK5m">
            <property role="Xl_RC" value="System configuration name:" />
          </node>
          <node concept="Xl_RD" id="7OBD32IaNGP" role="37wK5m">
            <property role="Xl_RC" value="Solution location:" />
          </node>
        </node>
        <node concept="3clFbH" id="7OBD32IaNKW" role="3cqZAp" />
        <node concept="3clFbF" id="7OBD32IaOiE" role="3cqZAp">
          <node concept="1rXfSq" id="7OBD32Ib033" role="3clFbG">
            <ref role="37wK5l" to="dxuu:~JComponent.setPreferredSize(java.awt.Dimension):void" resolve="setPreferredSize" />
            <node concept="2ShNRf" id="7OBD32IaS18" role="37wK5m">
              <node concept="1pGfFk" id="7OBD32IaUvT" role="2ShVmc">
                <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                <node concept="3cmrfG" id="7OBD32IaVoi" role="37wK5m">
                  <property role="3cmrfH" value="400" />
                </node>
                <node concept="3cmrfG" id="7OBD32IaWzk" role="37wK5m">
                  <property role="3cmrfH" value="100" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7OBD32IaXNV" role="3cqZAp">
          <node concept="1rXfSq" id="7OBD32IaXNT" role="3clFbG">
            <ref role="37wK5l" to="lz1h:g46k2sd8t3" resolve="reset" />
          </node>
        </node>
        <node concept="3clFbF" id="7ok1qOu1qs2" role="3cqZAp">
          <node concept="37vLTI" id="7ok1qOu1qs4" role="3clFbG">
            <node concept="37vLTw" id="7ok1qOu1qs7" role="37vLTJ">
              <ref role="3cqZAo" node="7ok1qOu1qrY" resolve="myDefaultName" />
            </node>
            <node concept="37vLTw" id="7ok1qOu1qs8" role="37vLTx">
              <ref role="3cqZAo" node="7ok1qOu1q8T" resolve="defaultName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="7ok1qOu1q8T" role="3clF46">
        <property role="TrG5h" value="defaultName" />
        <node concept="17QB3L" id="7ok1qOu1q8S" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32IaXXP" role="jymVt" />
    <node concept="3clFb_" id="7OBD32Ib3QT" role="jymVt">
      <property role="TrG5h" value="getDefaultModuleName" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3Tmbuc" id="7OBD32Ib3QV" role="1B3o_S" />
      <node concept="17QB3L" id="7OBD32Ib3QW" role="3clF45" />
      <node concept="3clFbS" id="7OBD32Ib3QX" role="3clF47">
        <node concept="3clFbF" id="7OBD32Ib4fm" role="3cqZAp">
          <node concept="37vLTw" id="7ok1qOu1rF_" role="3clFbG">
            <ref role="3cqZAo" node="7ok1qOu1qrY" resolve="myDefaultName" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7OBD32Ib3QY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32Ib09r" role="jymVt" />
    <node concept="3clFb_" id="7OBD32Ib1qM" role="jymVt">
      <property role="TrG5h" value="getDefaultModulePath" />
      <node concept="3Tmbuc" id="7OBD32Ib1qN" role="1B3o_S" />
      <node concept="17QB3L" id="7OBD32Ib1qO" role="3clF45" />
      <node concept="3clFbS" id="7OBD32Ib1r0" role="3clF47">
        <node concept="3clFbF" id="7OBD32Ib2BE" role="3cqZAp">
          <node concept="1rXfSq" id="7OBD32Ib2BD" role="3clFbG">
            <ref role="37wK5l" to="lz1h:7lPRUbxwHH2" resolve="getModuleRootPath" />
            <node concept="Xl_RD" id="7OBD32Ib3iS" role="37wK5m">
              <property role="Xl_RC" value="solutions" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7OBD32Ib1r1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="2uRRBC" id="7OBD32IhL2h">
    <property role="3GE5qa" value="projectCreation" />
    <property role="TrG5h" value="IEC-61499 Project Templates" />
    <node concept="2BZ0e9" id="7OBD32IhL2i" role="2uRRBG">
      <property role="TrG5h" value="myTemplateGroup" />
      <node concept="3Tm6S6" id="7OBD32IhL2j" role="1B3o_S" />
      <node concept="3uibUv" id="7OBD32IjiVl" role="1tU5fm">
        <ref role="3uigEE" node="7OBD32Ii_tb" resolve="IEC61499ProjectTemplateGroup" />
      </node>
      <node concept="2ShNRf" id="7OBD32IhL9m" role="33vP2m">
        <node concept="HV5vD" id="7OBD32IhLDD" role="2ShVmc">
          <ref role="HV5vE" node="7OBD32Ii_tb" resolve="IEC61499ProjectTemplateGroup" />
        </node>
      </node>
    </node>
    <node concept="2uRRBj" id="7OBD32IhLDS" role="2uRRBE">
      <node concept="3clFbS" id="7OBD32IhLDT" role="2VODD2">
        <node concept="3clFbF" id="7OBD32IhMgS" role="3cqZAp">
          <node concept="2OqwBi" id="7OBD32IhNal" role="3clFbG">
            <node concept="2OqwBi" id="7OBD32IhMov" role="2Oq$k0">
              <node concept="2YIFZM" id="7OBD32IhMhj" role="2Oq$k0">
                <ref role="37wK5l" to="9ti4:~Extensions.getRootArea():com.intellij.openapi.extensions.ExtensionsArea" resolve="getRootArea" />
                <ref role="1Pybhc" to="9ti4:~Extensions" resolve="Extensions" />
              </node>
              <node concept="liA8E" id="7OBD32IhMUt" role="2OqNvi">
                <ref role="37wK5l" to="9ti4:~ExtensionsArea.getExtensionPoint(com.intellij.openapi.extensions.ExtensionPointName):com.intellij.openapi.extensions.ExtensionPoint" resolve="getExtensionPoint" />
                <node concept="10M0yZ" id="7OBD32Ijjl2" role="37wK5m">
                  <ref role="3cqZAo" to="fpme:~ProjectTemplatesGroup.EP_NAME" resolve="EP_NAME" />
                  <ref role="1PxDUh" to="fpme:~ProjectTemplatesGroup" resolve="ProjectTemplatesGroup" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7OBD32IhQMM" role="2OqNvi">
              <ref role="37wK5l" to="9ti4:~ExtensionPoint.registerExtension(java.lang.Object):void" resolve="registerExtension" />
              <node concept="2OqwBi" id="7OBD32IhQQS" role="37wK5m">
                <node concept="2WthIp" id="7OBD32IhQQV" role="2Oq$k0" />
                <node concept="2BZ7hE" id="7OBD32IhQQX" role="2OqNvi">
                  <ref role="2WH_rO" node="7OBD32IhL2i" resolve="myTemplateGroup" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="7OBD32IhQYG" role="2uRRBF">
      <node concept="3clFbS" id="7OBD32IhQYH" role="2VODD2">
        <node concept="3clFbF" id="7OBD32IhR1g" role="3cqZAp">
          <node concept="2OqwBi" id="7OBD32IhR1h" role="3clFbG">
            <node concept="2OqwBi" id="7OBD32IhR1i" role="2Oq$k0">
              <node concept="2YIFZM" id="7OBD32IhR1j" role="2Oq$k0">
                <ref role="37wK5l" to="9ti4:~Extensions.getRootArea():com.intellij.openapi.extensions.ExtensionsArea" resolve="getRootArea" />
                <ref role="1Pybhc" to="9ti4:~Extensions" resolve="Extensions" />
              </node>
              <node concept="liA8E" id="7OBD32IhR1k" role="2OqNvi">
                <ref role="37wK5l" to="9ti4:~ExtensionsArea.getExtensionPoint(com.intellij.openapi.extensions.ExtensionPointName):com.intellij.openapi.extensions.ExtensionPoint" resolve="getExtensionPoint" />
                <node concept="10M0yZ" id="7OBD32Ijjpu" role="37wK5m">
                  <ref role="3cqZAo" to="fpme:~ProjectTemplatesGroup.EP_NAME" resolve="EP_NAME" />
                  <ref role="1PxDUh" to="fpme:~ProjectTemplatesGroup" resolve="ProjectTemplatesGroup" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7OBD32IhR1m" role="2OqNvi">
              <ref role="37wK5l" to="9ti4:~ExtensionPoint.unregisterExtension(java.lang.Object):void" resolve="unregisterExtension" />
              <node concept="2OqwBi" id="7OBD32IhR1n" role="37wK5m">
                <node concept="2WthIp" id="7OBD32IhR1o" role="2Oq$k0" />
                <node concept="2BZ7hE" id="7OBD32IhR1p" role="2OqNvi">
                  <ref role="2WH_rO" node="7OBD32IhL2i" resolve="myTemplateGroup" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="7OBD32Ii_tb">
    <property role="3GE5qa" value="projectCreation" />
    <property role="TrG5h" value="IEC61499ProjectTemplateGroup" />
    <node concept="2tJIrI" id="7OBD32IjhPM" role="jymVt" />
    <node concept="Wx3nA" id="7OBD32Ijhnd" role="jymVt">
      <property role="3TUv4t" value="true" />
      <property role="TrG5h" value="TEMPLATES" />
      <node concept="3Tm6S6" id="7OBD32Ijhn5" role="1B3o_S" />
      <node concept="_YKpA" id="7OBD32Ijhn6" role="1tU5fm">
        <node concept="3uibUv" id="7OBD32Ijhn7" role="_ZDj9">
          <ref role="3uigEE" to="fpme:~MPSProjectTemplate" resolve="MPSProjectTemplate" />
        </node>
      </node>
      <node concept="2ShNRf" id="7OBD32Ijhn8" role="33vP2m">
        <node concept="Tc6Ow" id="7OBD32Ijhn9" role="2ShVmc">
          <node concept="3uibUv" id="7OBD32Ijhna" role="HW$YZ">
            <ref role="3uigEE" to="fpme:~MPSProjectTemplate" resolve="MPSProjectTemplate" />
          </node>
          <node concept="10M0yZ" id="7OBD32Ijhnb" role="HW$Y0">
            <ref role="3cqZAo" node="7OBD32IiOPI" resolve="SYSTEM_CONFIG_TEMPLATE" />
            <ref role="1PxDUh" node="7OBD32HG4Ey" resolve="IEC61499ProjectTemplate" />
          </node>
          <node concept="10M0yZ" id="7OBD32Ijhnc" role="HW$Y0">
            <ref role="3cqZAo" node="7OBD32Ijasz" resolve="LIBRARY_TEMPLATE" />
            <ref role="1PxDUh" node="7OBD32HG4Ey" resolve="IEC61499ProjectTemplate" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32Ii_yK" role="jymVt" />
    <node concept="3clFb_" id="7OBD32Ii_z9" role="jymVt">
      <property role="TrG5h" value="getTemplates" />
      <node concept="3Tm1VV" id="7OBD32Ii_za" role="1B3o_S" />
      <node concept="2AHcQZ" id="7OBD32Ii_zc" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="7OBD32Ii_zd" role="3clF45">
        <ref role="3uigEE" to="33ny:~Collection" resolve="Collection" />
        <node concept="3uibUv" id="7OBD32Ii_ze" role="11_B2D">
          <ref role="3uigEE" to="fpme:~MPSProjectTemplate" resolve="MPSProjectTemplate" />
        </node>
      </node>
      <node concept="3clFbS" id="7OBD32Ii_zf" role="3clF47">
        <node concept="3clFbF" id="7OBD32IiAMW" role="3cqZAp">
          <node concept="37vLTw" id="7OBD32Ijhng" role="3clFbG">
            <ref role="3cqZAo" node="7OBD32Ijhnd" resolve="TEMPLATES" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7OBD32Ii_zg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32Iji9M" role="jymVt" />
    <node concept="3clFb_" id="7OBD32Ijigr" role="jymVt">
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="7OBD32Ijigs" role="1B3o_S" />
      <node concept="2AHcQZ" id="7OBD32Ijigu" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3uibUv" id="7OBD32Ijigv" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3clFbS" id="7OBD32Ijigw" role="3clF47">
        <node concept="3clFbF" id="7OBD32IjiBP" role="3cqZAp">
          <node concept="Xl_RD" id="7OBD32IjiBO" role="3clFbG">
            <property role="Xl_RC" value="IEC 61499" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7OBD32Ijigx" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="7OBD32Ii_tc" role="1B3o_S" />
    <node concept="3uibUv" id="7OBD32Ii_xA" role="EKbjA">
      <ref role="3uigEE" to="fpme:~ProjectTemplatesGroup" resolve="ProjectTemplatesGroup" />
    </node>
  </node>
  <node concept="312cEu" id="3wAsKTk9bGj">
    <property role="TrG5h" value="ForteDeviceClient" />
    <property role="3GE5qa" value="debugger.forte" />
    <node concept="312cEg" id="3wAsKTk9dMF" role="jymVt">
      <property role="TrG5h" value="socket" />
      <node concept="3Tm6S6" id="3wAsKTk9dMD" role="1B3o_S" />
      <node concept="3uibUv" id="3wAsKTk9dME" role="1tU5fm">
        <ref role="3uigEE" to="zf81:~Socket" resolve="Socket" />
      </node>
    </node>
    <node concept="312cEg" id="3wAsKTk9uKQ" role="jymVt">
      <property role="TrG5h" value="inputStream" />
      <node concept="3Tm6S6" id="3wAsKTk9uKR" role="1B3o_S" />
      <node concept="3uibUv" id="3wAsKTka1KM" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~DataInputStream" resolve="DataInputStream" />
      </node>
    </node>
    <node concept="312cEg" id="3wAsKTk9uGk" role="jymVt">
      <property role="TrG5h" value="outputStream" />
      <node concept="3Tm6S6" id="3wAsKTk9ur5" role="1B3o_S" />
      <node concept="3uibUv" id="3wAsKTka21Y" role="1tU5fm">
        <ref role="3uigEE" to="guwi:~DataOutputStream" resolve="DataOutputStream" />
      </node>
    </node>
    <node concept="312cEg" id="3wAsKTk9D2_" role="jymVt">
      <property role="TrG5h" value="id" />
      <node concept="3Tm6S6" id="3wAsKTk9CLG" role="1B3o_S" />
      <node concept="10Oyi0" id="3wAsKTk9D2s" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="3wAsKTkhKZj" role="jymVt" />
    <node concept="2tJIrI" id="3wAsKTk9c4s" role="jymVt" />
    <node concept="3clFbW" id="3wAsKTk9bWx" role="jymVt">
      <node concept="3cqZAl" id="3wAsKTk9bWy" role="3clF45" />
      <node concept="3clFbS" id="3wAsKTk9bW$" role="3clF47">
        <node concept="3cpWs8" id="3wAsKTk9l5w" role="3cqZAp">
          <node concept="3cpWsn" id="3wAsKTk9l5x" role="3cpWs9">
            <property role="TrG5h" value="port" />
            <node concept="10Oyi0" id="3wAsKTk9l5v" role="1tU5fm" />
            <node concept="2YIFZM" id="3wAsKTk9l5y" role="33vP2m">
              <ref role="37wK5l" node="6kvdbYuhQnx" resolve="getPort" />
              <ref role="1Pybhc" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
              <node concept="37vLTw" id="3wAsKTk9l5z" role="37wK5m">
                <ref role="3cqZAo" node="3wAsKTk9c3g" resolve="device" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3wAsKTk9lo_" role="3cqZAp">
          <node concept="3clFbS" id="3wAsKTk9loB" role="3clFbx">
            <node concept="YS8fn" id="3wAsKTk9ofs" role="3cqZAp">
              <node concept="2ShNRf" id="3wAsKTk9oll" role="YScLw">
                <node concept="1pGfFk" id="3wAsKTk9pFu" role="2ShVmc">
                  <ref role="37wK5l" to="guwi:~IOException.&lt;init&gt;(java.lang.String)" resolve="IOException" />
                  <node concept="Xl_RD" id="3wAsKTk9pO_" role="37wK5m">
                    <property role="Xl_RC" value="Unknown device to connect" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3wAsKTk9mJC" role="3clFbw">
            <node concept="37vLTw" id="3wAsKTk9lxR" role="3uHU7B">
              <ref role="3cqZAo" node="3wAsKTk9l5x" resolve="port" />
            </node>
            <node concept="3cmrfG" id="3wAsKTk9nN_" role="3uHU7w">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTk9dMN" role="3cqZAp">
          <node concept="37vLTI" id="3wAsKTk9dMO" role="3clFbG">
            <node concept="2OqwBi" id="3wAsKTk9dMP" role="37vLTJ">
              <node concept="Xjq3P" id="3wAsKTk9dMQ" role="2Oq$k0" />
              <node concept="2OwXpG" id="3wAsKTk9dMR" role="2OqNvi">
                <ref role="2Oxat5" node="3wAsKTk9dMF" resolve="socket" />
              </node>
            </node>
            <node concept="2ShNRf" id="3wAsKTk9dMS" role="37vLTx">
              <node concept="HV5vD" id="3wAsKTk9dMT" role="2ShVmc">
                <ref role="HV5vE" to="zf81:~Socket" resolve="Socket" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTk9e2a" role="3cqZAp">
          <node concept="2OqwBi" id="3wAsKTk9rit" role="3clFbG">
            <node concept="37vLTw" id="3wAsKTk9qWR" role="2Oq$k0">
              <ref role="3cqZAo" node="3wAsKTk9dMF" resolve="socket" />
            </node>
            <node concept="liA8E" id="3wAsKTk9tPv" role="2OqNvi">
              <ref role="37wK5l" to="zf81:~Socket.connect(java.net.SocketAddress):void" resolve="connect" />
              <node concept="2ShNRf" id="3wAsKTk9e26" role="37wK5m">
                <node concept="1pGfFk" id="3wAsKTk9edh" role="2ShVmc">
                  <ref role="37wK5l" to="zf81:~InetSocketAddress.&lt;init&gt;(int)" resolve="InetSocketAddress" />
                  <node concept="37vLTw" id="3wAsKTk9qLf" role="37wK5m">
                    <ref role="3cqZAo" node="3wAsKTk9l5x" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTk9v9p" role="3cqZAp">
          <node concept="37vLTI" id="3wAsKTk9xg$" role="3clFbG">
            <node concept="2OqwBi" id="3wAsKTk9vk4" role="37vLTJ">
              <node concept="Xjq3P" id="3wAsKTk9v9n" role="2Oq$k0" />
              <node concept="2OwXpG" id="3wAsKTk9w5R" role="2OqNvi">
                <ref role="2Oxat5" node="3wAsKTk9uKQ" resolve="inputStream" />
              </node>
            </node>
            <node concept="2ShNRf" id="3wAsKTk9Ydi" role="37vLTx">
              <node concept="1pGfFk" id="3wAsKTk9ZDQ" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~DataInputStream.&lt;init&gt;(java.io.InputStream)" resolve="DataInputStream" />
                <node concept="2ShNRf" id="3wAsKTk9xr2" role="37wK5m">
                  <node concept="1pGfFk" id="3wAsKTk9yQy" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~BufferedInputStream.&lt;init&gt;(java.io.InputStream)" resolve="BufferedInputStream" />
                    <node concept="2OqwBi" id="3wAsKTk9ztI" role="37wK5m">
                      <node concept="37vLTw" id="3wAsKTk9z0b" role="2Oq$k0">
                        <ref role="3cqZAo" node="3wAsKTk9dMF" resolve="socket" />
                      </node>
                      <node concept="liA8E" id="3wAsKTk9zUI" role="2OqNvi">
                        <ref role="37wK5l" to="zf81:~Socket.getInputStream():java.io.InputStream" resolve="getInputStream" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTk9zZN" role="3cqZAp">
          <node concept="37vLTI" id="3wAsKTk9zZO" role="3clFbG">
            <node concept="2OqwBi" id="3wAsKTk9zZU" role="37vLTJ">
              <node concept="Xjq3P" id="3wAsKTk9zZV" role="2Oq$k0" />
              <node concept="2OwXpG" id="3wAsKTk9$DN" role="2OqNvi">
                <ref role="2Oxat5" node="3wAsKTk9uGk" resolve="outputStream" />
              </node>
            </node>
            <node concept="2ShNRf" id="3wAsKTka026" role="37vLTx">
              <node concept="1pGfFk" id="3wAsKTka1vt" role="2ShVmc">
                <ref role="37wK5l" to="guwi:~DataOutputStream.&lt;init&gt;(java.io.OutputStream)" resolve="DataOutputStream" />
                <node concept="2ShNRf" id="3wAsKTk9zZP" role="37wK5m">
                  <node concept="1pGfFk" id="3wAsKTk9zZQ" role="2ShVmc">
                    <ref role="37wK5l" to="guwi:~BufferedOutputStream.&lt;init&gt;(java.io.OutputStream)" resolve="BufferedOutputStream" />
                    <node concept="2OqwBi" id="3wAsKTk9zZR" role="37wK5m">
                      <node concept="37vLTw" id="3wAsKTk9zZS" role="2Oq$k0">
                        <ref role="3cqZAo" node="3wAsKTk9dMF" resolve="socket" />
                      </node>
                      <node concept="liA8E" id="3wAsKTk9zZT" role="2OqNvi">
                        <ref role="37wK5l" to="zf81:~Socket.getOutputStream():java.io.OutputStream" resolve="getOutputStream" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3wAsKTk9bW_" role="1B3o_S" />
      <node concept="37vLTG" id="3wAsKTk9c3g" role="3clF46">
        <property role="TrG5h" value="device" />
        <node concept="3Tqbb2" id="3wAsKTk9c3f" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
        </node>
      </node>
      <node concept="3uibUv" id="3wAsKTk9eZi" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTk9Bqn" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTk9BZL" role="jymVt">
      <property role="TrG5h" value="createResource" />
      <node concept="3clFbS" id="3wAsKTk9BZO" role="3clF47">
        <node concept="3clFbF" id="3wAsKTkbBPD" role="3cqZAp">
          <node concept="1rXfSq" id="3wAsKTkbBPB" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTk9ROD" resolve="request" />
            <node concept="Xl_RD" id="3wAsKTkbDrS" role="37wK5m">
              <property role="Xl_RC" value="" />
            </node>
            <node concept="3cpWs3" id="3wAsKTk9PFc" role="37wK5m">
              <node concept="3cpWs3" id="3wAsKTk9PFd" role="3uHU7B">
                <node concept="3cpWs3" id="3wAsKTk9PFe" role="3uHU7B">
                  <node concept="3cpWs3" id="3wAsKTk9PFf" role="3uHU7B">
                    <node concept="3cpWs3" id="3wAsKTk9PFg" role="3uHU7B">
                      <node concept="3cpWs3" id="3wAsKTk9PFh" role="3uHU7B">
                        <node concept="Xl_RD" id="3wAsKTk9PFi" role="3uHU7B">
                          <property role="Xl_RC" value="&lt;Request ID=\&quot;" />
                        </node>
                        <node concept="3uNrnE" id="3wAsKTk9PFj" role="3uHU7w">
                          <node concept="37vLTw" id="3wAsKTk9PFk" role="2$L3a6">
                            <ref role="3cqZAo" node="3wAsKTk9D2_" resolve="id" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3wAsKTk9PFl" role="3uHU7w">
                        <property role="Xl_RC" value="\&quot; Action=\&quot;CREATE\&quot;&gt;&lt;FB Name=\&quot;" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3wAsKTk9PFm" role="3uHU7w">
                      <node concept="37vLTw" id="3wAsKTk9PFn" role="2Oq$k0">
                        <ref role="3cqZAo" node="3wAsKTk9ClJ" resolve="resource" />
                      </node>
                      <node concept="3TrcHB" id="3wAsKTk9PFo" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3wAsKTk9PFp" role="3uHU7w">
                    <property role="Xl_RC" value="\&quot; Type=\&quot;" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3wAsKTk9PFq" role="3uHU7w">
                  <node concept="2OqwBi" id="3wAsKTk9PFr" role="2Oq$k0">
                    <node concept="37vLTw" id="3wAsKTk9PFs" role="2Oq$k0">
                      <ref role="3cqZAo" node="3wAsKTk9ClJ" resolve="resource" />
                    </node>
                    <node concept="3TrEf2" id="3wAsKTk9PFt" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:2lwHqHkyELp" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3wAsKTk9PFu" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3wAsKTk9PFv" role="3uHU7w">
                <property role="Xl_RC" value="\&quot; /&gt;&lt;/Request&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3wAsKTk9BJ8" role="1B3o_S" />
      <node concept="3cqZAl" id="3wAsKTk9BQt" role="3clF45" />
      <node concept="37vLTG" id="3wAsKTk9ClJ" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="3wAsKTk9ClI" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="3uibUv" id="3wAsKTkaj7g" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="3clFb_" id="3wAsKTku7qG" role="jymVt">
      <property role="TrG5h" value="startResource" />
      <node concept="3clFbS" id="3wAsKTku7qH" role="3clF47">
        <node concept="3clFbF" id="3wAsKTku7qI" role="3cqZAp">
          <node concept="1rXfSq" id="3wAsKTku7qJ" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTk9ROD" resolve="request" />
            <node concept="2OqwBi" id="3wAsKTkuj56" role="37wK5m">
              <node concept="37vLTw" id="3wAsKTkui8v" role="2Oq$k0">
                <ref role="3cqZAo" node="3wAsKTku7r7" resolve="resource" />
              </node>
              <node concept="3TrcHB" id="3wAsKTkujGO" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="3wAsKTku7qP" role="37wK5m">
              <node concept="3cpWs3" id="3wAsKTku7qQ" role="3uHU7B">
                <node concept="Xl_RD" id="3wAsKTku7qR" role="3uHU7B">
                  <property role="Xl_RC" value="&lt;Request ID=\&quot;" />
                </node>
                <node concept="3uNrnE" id="3wAsKTku7qS" role="3uHU7w">
                  <node concept="37vLTw" id="3wAsKTku7qT" role="2$L3a6">
                    <ref role="3cqZAo" node="3wAsKTk9D2_" resolve="id" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3wAsKTku7qU" role="3uHU7w">
                <property role="Xl_RC" value="\&quot; Action=\&quot;START\&quot;&gt;\&quot; /&gt;&lt;/Request&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3wAsKTku7r5" role="1B3o_S" />
      <node concept="3cqZAl" id="3wAsKTku7r6" role="3clF45" />
      <node concept="37vLTG" id="3wAsKTku7r7" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="3wAsKTku7r8" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="3uibUv" id="3wAsKTku7r9" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkg9$r" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkbTI7" role="jymVt">
      <property role="TrG5h" value="writeParameter" />
      <node concept="3clFbS" id="3wAsKTkbTI8" role="3clF47">
        <node concept="3clFbF" id="3wAsKTkbTI9" role="3cqZAp">
          <node concept="1rXfSq" id="3wAsKTkbTIa" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTk9ROD" resolve="request" />
            <node concept="2OqwBi" id="3wAsKTkgfEe" role="37wK5m">
              <node concept="1PxgMI" id="3wAsKTkgeCl" role="2Oq$k0">
                <node concept="chp4Y" id="3wAsKTkgf26" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                </node>
                <node concept="2OqwBi" id="3wAsKTkgcq2" role="1m5AlR">
                  <node concept="37vLTw" id="3wAsKTkgbJG" role="2Oq$k0">
                    <ref role="3cqZAo" node="3wAsKTkbTIy" resolve="resourceParameter" />
                  </node>
                  <node concept="1mfA1w" id="3wAsKTkgd90" role="2OqNvi" />
                </node>
              </node>
              <node concept="3TrcHB" id="3wAsKTkgig8" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="3wAsKTkbTIc" role="37wK5m">
              <node concept="3cpWs3" id="3wAsKTkbTId" role="3uHU7B">
                <node concept="3cpWs3" id="3wAsKTkbTIe" role="3uHU7B">
                  <node concept="3cpWs3" id="3wAsKTkbTIf" role="3uHU7B">
                    <node concept="3cpWs3" id="3wAsKTkbTIg" role="3uHU7B">
                      <node concept="3cpWs3" id="3wAsKTkbTIh" role="3uHU7B">
                        <node concept="Xl_RD" id="3wAsKTkbTIi" role="3uHU7B">
                          <property role="Xl_RC" value="&lt;Request ID=\&quot;" />
                        </node>
                        <node concept="3uNrnE" id="3wAsKTkbTIj" role="3uHU7w">
                          <node concept="37vLTw" id="3wAsKTkbTIk" role="2$L3a6">
                            <ref role="3cqZAo" node="3wAsKTk9D2_" resolve="id" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3wAsKTkbTIl" role="3uHU7w">
                        <property role="Xl_RC" value="\&quot; Action=\&quot;WRITE\&quot;&gt;&lt;Connection Source=\&quot;" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3wAsKTkg7KF" role="3uHU7w">
                      <node concept="2OqwBi" id="3wAsKTkbTIm" role="2Oq$k0">
                        <node concept="37vLTw" id="3wAsKTkbTIn" role="2Oq$k0">
                          <ref role="3cqZAo" node="3wAsKTkbTIy" resolve="resourceParameter" />
                        </node>
                        <node concept="3TrEf2" id="3wAsKTkcgzG" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7f" resolve="value" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="3wAsKTkg9bA" role="2OqNvi">
                        <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3wAsKTkbTIp" role="3uHU7w">
                    <property role="Xl_RC" value="\&quot; Destination=\&quot;" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3wAsKTkbTIq" role="3uHU7w">
                  <node concept="2OqwBi" id="3wAsKTkbTIr" role="2Oq$k0">
                    <node concept="37vLTw" id="3wAsKTkbTIs" role="2Oq$k0">
                      <ref role="3cqZAo" node="3wAsKTkbTIy" resolve="resourceParameter" />
                    </node>
                    <node concept="3TrEf2" id="3wAsKTkcfQd" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7b" resolve="decl" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3wAsKTkbTIu" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3wAsKTkbTIv" role="3uHU7w">
                <property role="Xl_RC" value="\&quot; /&gt;&lt;/Request&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3wAsKTkbTIw" role="1B3o_S" />
      <node concept="3cqZAl" id="3wAsKTkbTIx" role="3clF45" />
      <node concept="37vLTG" id="3wAsKTkbTIy" role="3clF46">
        <property role="TrG5h" value="resourceParameter" />
        <node concept="3Tqbb2" id="3wAsKTkbTIz" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyF7a" resolve="Parameter" />
        </node>
      </node>
      <node concept="3uibUv" id="3wAsKTkbTI$" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkbFqW" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkbDKL" role="jymVt">
      <property role="TrG5h" value="createFB" />
      <node concept="3clFbS" id="3wAsKTkbDKM" role="3clF47">
        <node concept="3clFbF" id="3wAsKTkbDKN" role="3cqZAp">
          <node concept="1rXfSq" id="3wAsKTkbDKO" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTk9ROD" resolve="request" />
            <node concept="2OqwBi" id="3wAsKTkbQ_A" role="37wK5m">
              <node concept="1PxgMI" id="3wAsKTkbPEG" role="2Oq$k0">
                <node concept="chp4Y" id="3wAsKTkbQ0O" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                </node>
                <node concept="2OqwBi" id="3wAsKTkbO3R" role="1m5AlR">
                  <node concept="37vLTw" id="3wAsKTkbKqw" role="2Oq$k0">
                    <ref role="3cqZAo" node="3wAsKTkbDLc" resolve="fb" />
                  </node>
                  <node concept="1mfA1w" id="3wAsKTkbP28" role="2OqNvi" />
                </node>
              </node>
              <node concept="3TrcHB" id="3wAsKTkbTea" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="3wAsKTkbDKQ" role="37wK5m">
              <node concept="3cpWs3" id="3wAsKTkbDKR" role="3uHU7B">
                <node concept="3cpWs3" id="3wAsKTkbDKS" role="3uHU7B">
                  <node concept="3cpWs3" id="3wAsKTkbDKT" role="3uHU7B">
                    <node concept="3cpWs3" id="3wAsKTkbDKU" role="3uHU7B">
                      <node concept="3cpWs3" id="3wAsKTkbDKV" role="3uHU7B">
                        <node concept="Xl_RD" id="3wAsKTkbDKW" role="3uHU7B">
                          <property role="Xl_RC" value="&lt;Request ID=\&quot;" />
                        </node>
                        <node concept="3uNrnE" id="3wAsKTkbDKX" role="3uHU7w">
                          <node concept="37vLTw" id="3wAsKTkbDKY" role="2$L3a6">
                            <ref role="3cqZAo" node="3wAsKTk9D2_" resolve="id" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3wAsKTkbDKZ" role="3uHU7w">
                        <property role="Xl_RC" value="\&quot; Action=\&quot;CREATE\&quot;&gt;&lt;FB Name=\&quot;" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3wAsKTkbDL0" role="3uHU7w">
                      <node concept="37vLTw" id="3wAsKTkbDL1" role="2Oq$k0">
                        <ref role="3cqZAo" node="3wAsKTkbDLc" resolve="fb" />
                      </node>
                      <node concept="3TrcHB" id="3wAsKTkbDL2" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3wAsKTkbDL3" role="3uHU7w">
                    <property role="Xl_RC" value="\&quot; Type=\&quot;" />
                  </node>
                </node>
                <node concept="2OqwBi" id="3wAsKTkbDL4" role="3uHU7w">
                  <node concept="2OqwBi" id="3wAsKTkbDL5" role="2Oq$k0">
                    <node concept="37vLTw" id="3wAsKTkbDL6" role="2Oq$k0">
                      <ref role="3cqZAo" node="3wAsKTkbDLc" resolve="fb" />
                    </node>
                    <node concept="3TrEf2" id="3wAsKTkc5Gg" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3wAsKTkbDL8" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3wAsKTkbDL9" role="3uHU7w">
                <property role="Xl_RC" value="\&quot; /&gt;&lt;/Request&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3wAsKTkbDLa" role="1B3o_S" />
      <node concept="3cqZAl" id="3wAsKTkbDLb" role="3clF45" />
      <node concept="37vLTG" id="3wAsKTkbDLc" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3Tqbb2" id="3wAsKTkbDLd" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="3uibUv" id="3wAsKTkbDLe" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkh09J" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkhb06" role="jymVt">
      <property role="TrG5h" value="createConnection" />
      <node concept="3clFbS" id="3wAsKTkhb07" role="3clF47">
        <node concept="3clFbJ" id="3wAsKTkwfC2" role="3cqZAp">
          <node concept="3clFbS" id="3wAsKTkwfC4" role="3clFbx">
            <node concept="3clFbF" id="3wAsKTkwlcz" role="3cqZAp">
              <node concept="1rXfSq" id="3wAsKTkwlc$" role="3clFbG">
                <ref role="37wK5l" node="3wAsKTk9ROD" resolve="request" />
                <node concept="2OqwBi" id="3wAsKTkwlc_" role="37wK5m">
                  <node concept="1PxgMI" id="3wAsKTkwlcA" role="2Oq$k0">
                    <node concept="chp4Y" id="3wAsKTkwlcB" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                    </node>
                    <node concept="2OqwBi" id="3wAsKTkwlcC" role="1m5AlR">
                      <node concept="37vLTw" id="3wAsKTkwlcD" role="2Oq$k0">
                        <ref role="3cqZAo" node="3wAsKTkhb0B" resolve="connection" />
                      </node>
                      <node concept="1mfA1w" id="3wAsKTkwlcE" role="2OqNvi" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="3wAsKTkwlcF" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
                <node concept="3cpWs3" id="3wAsKTkwlcG" role="37wK5m">
                  <node concept="3cpWs3" id="3wAsKTkwlcH" role="3uHU7B">
                    <node concept="3cpWs3" id="3wAsKTkwlcI" role="3uHU7B">
                      <node concept="3cpWs3" id="3wAsKTkwlcJ" role="3uHU7B">
                        <node concept="3cpWs3" id="3wAsKTkwlcK" role="3uHU7B">
                          <node concept="3cpWs3" id="3wAsKTkwlcL" role="3uHU7B">
                            <node concept="Xl_RD" id="3wAsKTkwlcM" role="3uHU7B">
                              <property role="Xl_RC" value="&lt;Request ID=\&quot;" />
                            </node>
                            <node concept="3uNrnE" id="3wAsKTkwlcN" role="3uHU7w">
                              <node concept="37vLTw" id="3wAsKTkwlcO" role="2$L3a6">
                                <ref role="3cqZAo" node="3wAsKTk9D2_" resolve="id" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="3wAsKTkwlcP" role="3uHU7w">
                            <property role="Xl_RC" value="\&quot; Action=\&quot;WRITE\&quot;&gt;&lt;Connection Source=\&quot;" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="3wAsKTkwlcQ" role="3uHU7w">
                          <node concept="2OqwBi" id="3wAsKTkwlcR" role="2Oq$k0">
                            <node concept="37vLTw" id="3wAsKTkwlcS" role="2Oq$k0">
                              <ref role="3cqZAo" node="3wAsKTkhb0B" resolve="connection" />
                            </node>
                            <node concept="3TrEf2" id="3wAsKTkwlcT" role="2OqNvi">
                              <ref role="3Tt5mk" to="xiqq:4KieeRVlhj5" resolve="source" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="3wAsKTkwlcU" role="2OqNvi">
                            <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3wAsKTkwlcV" role="3uHU7w">
                        <property role="Xl_RC" value="\&quot; Destination=\&quot;" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3wAsKTkwlcW" role="3uHU7w">
                      <node concept="2OqwBi" id="3wAsKTkwlcX" role="2Oq$k0">
                        <node concept="37vLTw" id="3wAsKTkwlcY" role="2Oq$k0">
                          <ref role="3cqZAo" node="3wAsKTkhb0B" resolve="connection" />
                        </node>
                        <node concept="3TrEf2" id="3wAsKTkwlcZ" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:4KieeRVlhj8" resolve="destination" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="3wAsKTkwld0" role="2OqNvi">
                        <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3wAsKTkwld1" role="3uHU7w">
                    <property role="Xl_RC" value="\&quot; /&gt;&lt;/Request&gt;" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="3wAsKTkwiek" role="3clFbw">
            <node concept="2OqwBi" id="3wAsKTkwgJJ" role="2Oq$k0">
              <node concept="37vLTw" id="3wAsKTkwgeO" role="2Oq$k0">
                <ref role="3cqZAo" node="3wAsKTkhb0B" resolve="connection" />
              </node>
              <node concept="3TrEf2" id="3wAsKTkwh$H" role="2OqNvi">
                <ref role="3Tt5mk" to="xiqq:4KieeRVlhj5" resolve="source" />
              </node>
            </node>
            <node concept="1mIQ4w" id="3wAsKTkwjIR" role="2OqNvi">
              <node concept="chp4Y" id="3wAsKTkwjMr" role="cj9EA">
                <ref role="cht4Q" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="3wAsKTkwk0s" role="9aQIa">
            <node concept="3clFbS" id="3wAsKTkwk0t" role="9aQI4">
              <node concept="3clFbF" id="3wAsKTkhb08" role="3cqZAp">
                <node concept="1rXfSq" id="3wAsKTkhb09" role="3clFbG">
                  <ref role="37wK5l" node="3wAsKTk9ROD" resolve="request" />
                  <node concept="2OqwBi" id="3wAsKTkhb0a" role="37wK5m">
                    <node concept="1PxgMI" id="3wAsKTkhb0b" role="2Oq$k0">
                      <node concept="chp4Y" id="3wAsKTkhb0c" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                      </node>
                      <node concept="2OqwBi" id="3wAsKTkhb0d" role="1m5AlR">
                        <node concept="37vLTw" id="3wAsKTkhb0e" role="2Oq$k0">
                          <ref role="3cqZAo" node="3wAsKTkhb0B" resolve="connection" />
                        </node>
                        <node concept="1mfA1w" id="3wAsKTkhb0f" role="2OqNvi" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="3wAsKTkhb0g" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="3cpWs3" id="3wAsKTkhb0h" role="37wK5m">
                    <node concept="3cpWs3" id="3wAsKTkhb0i" role="3uHU7B">
                      <node concept="3cpWs3" id="3wAsKTkhb0j" role="3uHU7B">
                        <node concept="3cpWs3" id="3wAsKTkhb0k" role="3uHU7B">
                          <node concept="3cpWs3" id="3wAsKTkhb0l" role="3uHU7B">
                            <node concept="3cpWs3" id="3wAsKTkhb0m" role="3uHU7B">
                              <node concept="Xl_RD" id="3wAsKTkhb0n" role="3uHU7B">
                                <property role="Xl_RC" value="&lt;Request ID=\&quot;" />
                              </node>
                              <node concept="3uNrnE" id="3wAsKTkhb0o" role="3uHU7w">
                                <node concept="37vLTw" id="3wAsKTkhb0p" role="2$L3a6">
                                  <ref role="3cqZAo" node="3wAsKTk9D2_" resolve="id" />
                                </node>
                              </node>
                            </node>
                            <node concept="Xl_RD" id="3wAsKTkhb0q" role="3uHU7w">
                              <property role="Xl_RC" value="\&quot; Action=\&quot;CREATE\&quot;&gt;&lt;Connection Source=\&quot;" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="3wAsKTkhxfx" role="3uHU7w">
                            <node concept="2OqwBi" id="3wAsKTkhb0r" role="2Oq$k0">
                              <node concept="37vLTw" id="3wAsKTkhb0s" role="2Oq$k0">
                                <ref role="3cqZAo" node="3wAsKTkhb0B" resolve="connection" />
                              </node>
                              <node concept="3TrEf2" id="3wAsKTkhwap" role="2OqNvi">
                                <ref role="3Tt5mk" to="xiqq:4KieeRVlhj5" resolve="source" />
                              </node>
                            </node>
                            <node concept="2qgKlT" id="3wAsKTkhyLM" role="2OqNvi">
                              <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                            </node>
                          </node>
                        </node>
                        <node concept="Xl_RD" id="3wAsKTkhb0u" role="3uHU7w">
                          <property role="Xl_RC" value="\&quot; Destination=\&quot;" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3wAsKTkhb0v" role="3uHU7w">
                        <node concept="2OqwBi" id="3wAsKTkhb0w" role="2Oq$k0">
                          <node concept="37vLTw" id="3wAsKTkhb0x" role="2Oq$k0">
                            <ref role="3cqZAo" node="3wAsKTkhb0B" resolve="connection" />
                          </node>
                          <node concept="3TrEf2" id="3wAsKTkhzG$" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:4KieeRVlhj8" resolve="destination" />
                          </node>
                        </node>
                        <node concept="2qgKlT" id="3wAsKTkh_5k" role="2OqNvi">
                          <ref role="37wK5l" to="tpcu:hEwIMiw" resolve="getPresentation" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="3wAsKTkhb0$" role="3uHU7w">
                      <property role="Xl_RC" value="\&quot; /&gt;&lt;/Request&gt;" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3wAsKTkhb0_" role="1B3o_S" />
      <node concept="3cqZAl" id="3wAsKTkhb0A" role="3clF45" />
      <node concept="37vLTG" id="3wAsKTkhb0B" role="3clF46">
        <property role="TrG5h" value="connection" />
        <node concept="3Tqbb2" id="3wAsKTkhb0C" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:4KieeRVlhii" resolve="Connection" />
        </node>
      </node>
      <node concept="3uibUv" id="3wAsKTkhb0D" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkh9H4" role="jymVt" />
    <node concept="2tJIrI" id="3wAsKTkh9NG" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkgxxr" role="jymVt">
      <property role="TrG5h" value="addWatch" />
      <node concept="3clFbS" id="3wAsKTkgxxs" role="3clF47">
        <node concept="3clFbF" id="3wAsKTkgxxt" role="3cqZAp">
          <node concept="1rXfSq" id="3wAsKTkgxxu" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTk9ROD" resolve="request" />
            <node concept="2OqwBi" id="3wAsKTkgxxv" role="37wK5m">
              <node concept="37vLTw" id="4uvvnUOtf4K" role="2Oq$k0">
                <ref role="3cqZAo" node="4uvvnUOtaeB" resolve="resource" />
              </node>
              <node concept="3TrcHB" id="3wAsKTkgxx_" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="3wAsKTkgxxC" role="37wK5m">
              <node concept="3cpWs3" id="3wAsKTkgVzI" role="3uHU7B">
                <node concept="37vLTw" id="3wAsKTkgW7w" role="3uHU7w">
                  <ref role="3cqZAo" node="3wAsKTkgO2Y" resolve="port" />
                </node>
                <node concept="3cpWs3" id="3wAsKTkgS8V" role="3uHU7B">
                  <node concept="3cpWs3" id="3wAsKTkgxxD" role="3uHU7B">
                    <node concept="3cpWs3" id="3wAsKTkgxxE" role="3uHU7B">
                      <node concept="3cpWs3" id="3wAsKTkgxxF" role="3uHU7B">
                        <node concept="Xl_RD" id="3wAsKTkgxxG" role="3uHU7B">
                          <property role="Xl_RC" value="&lt;Request ID=\&quot;" />
                        </node>
                        <node concept="3uNrnE" id="3wAsKTkgxxH" role="3uHU7w">
                          <node concept="37vLTw" id="3wAsKTkgxxI" role="2$L3a6">
                            <ref role="3cqZAo" node="3wAsKTk9D2_" resolve="id" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3wAsKTkgxxJ" role="3uHU7w">
                        <property role="Xl_RC" value="\&quot; Action=\&quot;CREATE\&quot;&gt;&lt;Watch Source=\&quot;" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3wAsKTkgxxK" role="3uHU7w">
                      <node concept="37vLTw" id="3wAsKTkgxxL" role="2Oq$k0">
                        <ref role="3cqZAo" node="3wAsKTkgxxW" resolve="fb" />
                      </node>
                      <node concept="3TrcHB" id="3wAsKTkgxxM" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3wAsKTkgSGx" role="3uHU7w">
                    <property role="Xl_RC" value="." />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3wAsKTkgxxN" role="3uHU7w">
                <property role="Xl_RC" value="\&quot; Destination=\&quot;*\&quot; /&gt;&lt;/Request&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3wAsKTkgxxU" role="1B3o_S" />
      <node concept="3cqZAl" id="3wAsKTkgxxV" role="3clF45" />
      <node concept="37vLTG" id="4uvvnUOtaeB" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="4uvvnUOtbRD" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="3wAsKTkgxxW" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3Tqbb2" id="3wAsKTkgxxX" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="3wAsKTkgO2Y" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="17QB3L" id="3wAsKTkgPbG" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3wAsKTkgxxY" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkh2xU" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkh1jo" role="jymVt">
      <property role="TrG5h" value="removeWatch" />
      <node concept="3clFbS" id="3wAsKTkh1jp" role="3clF47">
        <node concept="3clFbF" id="3wAsKTkh1jq" role="3cqZAp">
          <node concept="1rXfSq" id="3wAsKTkh1jr" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTk9ROD" resolve="request" />
            <node concept="2OqwBi" id="3wAsKTkh1js" role="37wK5m">
              <node concept="37vLTw" id="4uvvnUOtkuj" role="2Oq$k0">
                <ref role="3cqZAo" node="4uvvnUOtgyd" resolve="resource" />
              </node>
              <node concept="3TrcHB" id="3wAsKTkh1jy" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="3wAsKTkh1jz" role="37wK5m">
              <node concept="3cpWs3" id="3wAsKTkh1j$" role="3uHU7B">
                <node concept="37vLTw" id="3wAsKTkh1j_" role="3uHU7w">
                  <ref role="3cqZAo" node="3wAsKTkh1jR" resolve="port" />
                </node>
                <node concept="3cpWs3" id="3wAsKTkh1jA" role="3uHU7B">
                  <node concept="3cpWs3" id="3wAsKTkh1jB" role="3uHU7B">
                    <node concept="3cpWs3" id="3wAsKTkh1jC" role="3uHU7B">
                      <node concept="3cpWs3" id="3wAsKTkh1jD" role="3uHU7B">
                        <node concept="Xl_RD" id="3wAsKTkh1jE" role="3uHU7B">
                          <property role="Xl_RC" value="&lt;Request ID=\&quot;" />
                        </node>
                        <node concept="3uNrnE" id="3wAsKTkh1jF" role="3uHU7w">
                          <node concept="37vLTw" id="3wAsKTkh1jG" role="2$L3a6">
                            <ref role="3cqZAo" node="3wAsKTk9D2_" resolve="id" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="3wAsKTkh1jH" role="3uHU7w">
                        <property role="Xl_RC" value="\&quot; Action=\&quot;DELETE\&quot;&gt;&lt;Watch Source=\&quot;" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3wAsKTkh1jI" role="3uHU7w">
                      <node concept="37vLTw" id="3wAsKTkh1jJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="3wAsKTkh1jP" resolve="fb" />
                      </node>
                      <node concept="3TrcHB" id="3wAsKTkh1jK" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3wAsKTkh1jL" role="3uHU7w">
                    <property role="Xl_RC" value="." />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="3wAsKTkh1jM" role="3uHU7w">
                <property role="Xl_RC" value="\&quot; Destination=\&quot;*\&quot; /&gt;&lt;/Request&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3wAsKTkh1jN" role="1B3o_S" />
      <node concept="3cqZAl" id="3wAsKTkh1jO" role="3clF45" />
      <node concept="37vLTG" id="4uvvnUOtgyd" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="4uvvnUOtgye" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="3wAsKTkh1jP" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3Tqbb2" id="3wAsKTkh1jQ" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="3wAsKTkh1jR" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="17QB3L" id="3wAsKTkh1jS" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3wAsKTkh1jT" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTktmsk" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTktpyN" role="jymVt">
      <property role="TrG5h" value="deployResource" />
      <node concept="3clFbS" id="3wAsKTktpyQ" role="3clF47">
        <node concept="3clFbF" id="3wAsKTktQ$n" role="3cqZAp">
          <node concept="1rXfSq" id="3wAsKTktQ$m" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTk9BZL" resolve="createResource" />
            <node concept="37vLTw" id="3wAsKTktR6S" role="37wK5m">
              <ref role="3cqZAo" node="3wAsKTktr25" resolve="resource" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3wAsKTktU6C" role="3cqZAp">
          <node concept="2GrKxI" id="3wAsKTktU6E" role="2Gsz3X">
            <property role="TrG5h" value="fb" />
          </node>
          <node concept="2OqwBi" id="3wAsKTktUM3" role="2GsD0m">
            <node concept="37vLTw" id="3wAsKTktUqf" role="2Oq$k0">
              <ref role="3cqZAo" node="3wAsKTktr25" resolve="resource" />
            </node>
            <node concept="3Tsc0h" id="3wAsKTktVXg" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
            </node>
          </node>
          <node concept="3clFbS" id="3wAsKTktU6I" role="2LFqv$">
            <node concept="3clFbF" id="3wAsKTktZAN" role="3cqZAp">
              <node concept="1rXfSq" id="3wAsKTktZAM" role="3clFbG">
                <ref role="37wK5l" node="3wAsKTkbDKL" resolve="createFB" />
                <node concept="2GrUjf" id="3wAsKTktZP8" role="37wK5m">
                  <ref role="2Gs0qQ" node="3wAsKTktU6E" resolve="fb" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3wAsKTku0gj" role="3cqZAp">
          <node concept="2GrKxI" id="3wAsKTku0gl" role="2Gsz3X">
            <property role="TrG5h" value="parameter" />
          </node>
          <node concept="2OqwBi" id="3wAsKTku1_J" role="2GsD0m">
            <node concept="37vLTw" id="3wAsKTku0MD" role="2Oq$k0">
              <ref role="3cqZAo" node="3wAsKTktr25" resolve="resource" />
            </node>
            <node concept="3Tsc0h" id="3wAsKTku2Oi" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:2lwHqHk$ftU" resolve="parameters" />
            </node>
          </node>
          <node concept="3clFbS" id="3wAsKTku0gp" role="2LFqv$">
            <node concept="3clFbF" id="3wAsKTku3uZ" role="3cqZAp">
              <node concept="1rXfSq" id="3wAsKTku3uY" role="3clFbG">
                <ref role="37wK5l" node="3wAsKTkbTI7" resolve="writeParameter" />
                <node concept="2GrUjf" id="3wAsKTku3NN" role="37wK5m">
                  <ref role="2Gs0qQ" node="3wAsKTku0gl" resolve="parameter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3wAsKTku3Qo" role="3cqZAp">
          <node concept="2GrKxI" id="3wAsKTku3Qp" role="2Gsz3X">
            <property role="TrG5h" value="connection" />
          </node>
          <node concept="2OqwBi" id="3wAsKTku3Qq" role="2GsD0m">
            <node concept="37vLTw" id="3wAsKTku3Qr" role="2Oq$k0">
              <ref role="3cqZAo" node="3wAsKTktr25" resolve="resource" />
            </node>
            <node concept="3Tsc0h" id="3wAsKTku4wb" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
            </node>
          </node>
          <node concept="3clFbS" id="3wAsKTku3Qt" role="2LFqv$">
            <node concept="3clFbF" id="3wAsKTku3Qu" role="3cqZAp">
              <node concept="1rXfSq" id="3wAsKTku3Qv" role="3clFbG">
                <ref role="37wK5l" node="3wAsKTkhb06" resolve="createConnection" />
                <node concept="2GrUjf" id="3wAsKTku3Qw" role="37wK5m">
                  <ref role="2Gs0qQ" node="3wAsKTku3Qp" resolve="connection" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="3wAsKTku553" role="3cqZAp">
          <node concept="2GrKxI" id="3wAsKTku554" role="2Gsz3X">
            <property role="TrG5h" value="connection" />
          </node>
          <node concept="2OqwBi" id="3wAsKTku555" role="2GsD0m">
            <node concept="37vLTw" id="3wAsKTku556" role="2Oq$k0">
              <ref role="3cqZAo" node="3wAsKTktr25" resolve="resource" />
            </node>
            <node concept="3Tsc0h" id="3wAsKTku68I" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:PI_pXYus4$" resolve="dataConnections" />
            </node>
          </node>
          <node concept="3clFbS" id="3wAsKTku558" role="2LFqv$">
            <node concept="3clFbF" id="3wAsKTku559" role="3cqZAp">
              <node concept="1rXfSq" id="3wAsKTku55a" role="3clFbG">
                <ref role="37wK5l" node="3wAsKTkhb06" resolve="createConnection" />
                <node concept="2GrUjf" id="3wAsKTku6pO" role="37wK5m">
                  <ref role="2Gs0qQ" node="3wAsKTku554" resolve="connection" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkuke7" role="3cqZAp">
          <node concept="1rXfSq" id="3wAsKTkuke5" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTku7qG" resolve="startResource" />
            <node concept="37vLTw" id="3wAsKTkukGa" role="37wK5m">
              <ref role="3cqZAo" node="3wAsKTktr25" resolve="resource" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3wAsKTkto5h" role="1B3o_S" />
      <node concept="3cqZAl" id="3wAsKTktpvc" role="3clF45" />
      <node concept="37vLTG" id="3wAsKTktr25" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="3wAsKTktr24" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="3uibUv" id="3wAsKTktSJG" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkhCdy" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkhEHn" role="jymVt">
      <property role="TrG5h" value="readWatches" />
      <node concept="3clFbS" id="3wAsKTkhEHq" role="3clF47">
        <node concept="3clFbF" id="3wAsKTkhGjF" role="3cqZAp">
          <node concept="1rXfSq" id="3wAsKTkhGjE" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTk9ROD" resolve="request" />
            <node concept="Xl_RD" id="3wAsKTkhGzb" role="37wK5m">
              <property role="Xl_RC" value="" />
            </node>
            <node concept="3cpWs3" id="3wAsKTkhGOK" role="37wK5m">
              <node concept="Xl_RD" id="3wAsKTkhGJu" role="3uHU7w">
                <property role="Xl_RC" value="\&quot; Action=\&quot;READ\&quot;&gt;&lt;Watches/&gt;&lt;/Request&gt;" />
              </node>
              <node concept="3cpWs3" id="3wAsKTkhGJm" role="3uHU7B">
                <node concept="Xl_RD" id="3wAsKTkhGJs" role="3uHU7B">
                  <property role="Xl_RC" value="&lt;Request ID=\&quot;" />
                </node>
                <node concept="3uNrnE" id="3wAsKTkhI6_" role="3uHU7w">
                  <node concept="37vLTw" id="3wAsKTkhI6B" role="2$L3a6">
                    <ref role="3cqZAo" node="3wAsKTk9D2_" resolve="id" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3wAsKTkhDGY" role="1B3o_S" />
      <node concept="3uibUv" id="3wAsKTkkzMX" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3uibUv" id="3wAsKTkhJLO" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTk9Bu$" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTk9ROD" role="jymVt">
      <property role="TrG5h" value="request" />
      <node concept="3clFbS" id="3wAsKTk9ROG" role="3clF47">
        <node concept="3clFbF" id="3wAsKTk9TMj" role="3cqZAp">
          <node concept="2OqwBi" id="3wAsKTk9Uez" role="3clFbG">
            <node concept="37vLTw" id="3wAsKTk9TMi" role="2Oq$k0">
              <ref role="3cqZAo" node="3wAsKTk9uGk" resolve="outputStream" />
            </node>
            <node concept="liA8E" id="3wAsKTk9WFa" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~DataOutputStream.writeByte(int):void" resolve="writeByte" />
              <node concept="3cmrfG" id="3wAsKTka2pd" role="37wK5m">
                <property role="3cmrfH" value="80" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTka2DK" role="3cqZAp">
          <node concept="2OqwBi" id="3wAsKTka2DL" role="3clFbG">
            <node concept="37vLTw" id="3wAsKTka2DM" role="2Oq$k0">
              <ref role="3cqZAo" node="3wAsKTk9uGk" resolve="outputStream" />
            </node>
            <node concept="liA8E" id="3wAsKTka2DN" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~DataOutputStream.writeShort(int):void" resolve="writeShort" />
              <node concept="2OqwBi" id="3wAsKTka3HX" role="37wK5m">
                <node concept="37vLTw" id="3wAsKTka35e" role="2Oq$k0">
                  <ref role="3cqZAo" node="3wAsKTk9SRj" resolve="resource" />
                </node>
                <node concept="liA8E" id="3wAsKTka5Kk" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkak1v" role="3cqZAp">
          <node concept="2OqwBi" id="3wAsKTkakC3" role="3clFbG">
            <node concept="37vLTw" id="3wAsKTkak1t" role="2Oq$k0">
              <ref role="3cqZAo" node="3wAsKTk9uGk" resolve="outputStream" />
            </node>
            <node concept="liA8E" id="3wAsKTkasTo" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~DataOutputStream.writeBytes(java.lang.String):void" resolve="writeBytes" />
              <node concept="37vLTw" id="3wAsKTkatRB" role="37wK5m">
                <ref role="3cqZAo" node="3wAsKTk9SRj" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkauzd" role="3cqZAp">
          <node concept="2OqwBi" id="3wAsKTkauze" role="3clFbG">
            <node concept="37vLTw" id="3wAsKTkauzf" role="2Oq$k0">
              <ref role="3cqZAo" node="3wAsKTk9uGk" resolve="outputStream" />
            </node>
            <node concept="liA8E" id="3wAsKTkauzg" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~DataOutputStream.writeByte(int):void" resolve="writeByte" />
              <node concept="3cmrfG" id="3wAsKTkauzh" role="37wK5m">
                <property role="3cmrfH" value="80" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkauSi" role="3cqZAp">
          <node concept="2OqwBi" id="3wAsKTkauSj" role="3clFbG">
            <node concept="37vLTw" id="3wAsKTkauSk" role="2Oq$k0">
              <ref role="3cqZAo" node="3wAsKTk9uGk" resolve="outputStream" />
            </node>
            <node concept="liA8E" id="3wAsKTkauSl" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~DataOutputStream.writeShort(int):void" resolve="writeShort" />
              <node concept="2OqwBi" id="3wAsKTkauSm" role="37wK5m">
                <node concept="37vLTw" id="3wAsKTkavgw" role="2Oq$k0">
                  <ref role="3cqZAo" node="3wAsKTk9Sp1" resolve="request" />
                </node>
                <node concept="liA8E" id="3wAsKTkauSo" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkauSp" role="3cqZAp">
          <node concept="2OqwBi" id="3wAsKTkauSq" role="3clFbG">
            <node concept="37vLTw" id="3wAsKTkauSr" role="2Oq$k0">
              <ref role="3cqZAo" node="3wAsKTk9uGk" resolve="outputStream" />
            </node>
            <node concept="liA8E" id="3wAsKTkauSs" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~DataOutputStream.writeBytes(java.lang.String):void" resolve="writeBytes" />
              <node concept="37vLTw" id="3wAsKTkavrN" role="37wK5m">
                <ref role="3cqZAo" node="3wAsKTk9Sp1" resolve="request" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkavV2" role="3cqZAp">
          <node concept="2OqwBi" id="3wAsKTkaw$D" role="3clFbG">
            <node concept="37vLTw" id="3wAsKTkavV0" role="2Oq$k0">
              <ref role="3cqZAo" node="3wAsKTk9uGk" resolve="outputStream" />
            </node>
            <node concept="liA8E" id="3wAsKTkaCRT" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~DataOutputStream.flush():void" resolve="flush" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3wAsKTkaCWM" role="3cqZAp" />
        <node concept="2xdQw9" id="3wAsKTktEyG" role="3cqZAp">
          <property role="2xdLsb" value="info" />
          <node concept="3cpWs3" id="3wAsKTktILv" role="9lYJi">
            <node concept="37vLTw" id="3wAsKTktJeL" role="3uHU7w">
              <ref role="3cqZAo" node="3wAsKTk9Sp1" resolve="request" />
            </node>
            <node concept="3cpWs3" id="3wAsKTktH8Y" role="3uHU7B">
              <node concept="3cpWs3" id="3wAsKTktFTu" role="3uHU7B">
                <node concept="Xl_RD" id="3wAsKTktETW" role="3uHU7B">
                  <property role="Xl_RC" value="request resource: " />
                </node>
                <node concept="37vLTw" id="3wAsKTktGwu" role="3uHU7w">
                  <ref role="3cqZAo" node="3wAsKTk9SRj" resolve="resource" />
                </node>
              </node>
              <node concept="Xl_RD" id="3wAsKTktHvI" role="3uHU7w">
                <property role="Xl_RC" value=" |-&gt; " />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3wAsKTktE6X" role="3cqZAp" />
        <node concept="3clFbF" id="3wAsKTkaJk5" role="3cqZAp">
          <node concept="1rXfSq" id="3wAsKTkaJAE" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTkaHQj" resolve="response" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3wAsKTk9Rgi" role="1B3o_S" />
      <node concept="3uibUv" id="3wAsKTkaDqn" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="37vLTG" id="3wAsKTk9SRj" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="17QB3L" id="3wAsKTk9ToY" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3wAsKTk9Sp1" role="3clF46">
        <property role="TrG5h" value="request" />
        <node concept="17QB3L" id="3wAsKTk9Sp0" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="3wAsKTkahke" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkaGh5" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkaHQj" role="jymVt">
      <property role="TrG5h" value="response" />
      <node concept="3clFbS" id="3wAsKTkaHQm" role="3clF47">
        <node concept="3cpWs8" id="3wAsKTkaJSc" role="3cqZAp">
          <node concept="3cpWsn" id="3wAsKTkaJSf" role="3cpWs9">
            <property role="TrG5h" value="b" />
            <node concept="10PrrI" id="3wAsKTkaJSb" role="1tU5fm" />
            <node concept="2OqwBi" id="3wAsKTkaKEa" role="33vP2m">
              <node concept="37vLTw" id="3wAsKTkaK51" role="2Oq$k0">
                <ref role="3cqZAo" node="3wAsKTk9uKQ" resolve="inputStream" />
              </node>
              <node concept="liA8E" id="3wAsKTkaS_J" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~DataInputStream.readByte():byte" resolve="readByte" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3wAsKTkaUL0" role="3cqZAp">
          <node concept="3cpWsn" id="3wAsKTkaUL3" role="3cpWs9">
            <property role="TrG5h" value="size" />
            <node concept="10N3zO" id="3wAsKTkaUKY" role="1tU5fm" />
            <node concept="2OqwBi" id="3wAsKTkaVFv" role="33vP2m">
              <node concept="37vLTw" id="3wAsKTkaV51" role="2Oq$k0">
                <ref role="3cqZAo" node="3wAsKTk9uKQ" resolve="inputStream" />
              </node>
              <node concept="liA8E" id="3wAsKTkb3Cu" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~DataInputStream.readShort():short" resolve="readShort" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3wAsKTkb7nt" role="3cqZAp">
          <node concept="3cpWsn" id="3wAsKTkb7nu" role="3cpWs9">
            <property role="TrG5h" value="chars" />
            <node concept="10Q1$e" id="3wAsKTkb7nl" role="1tU5fm">
              <node concept="10Pfzv" id="3wAsKTkb7no" role="10Q1$1" />
            </node>
            <node concept="2ShNRf" id="3wAsKTkb7nv" role="33vP2m">
              <node concept="3$_iS1" id="3wAsKTkb7nw" role="2ShVmc">
                <node concept="3$GHV9" id="3wAsKTkb7nx" role="3$GQph">
                  <node concept="37vLTw" id="3wAsKTkb7ny" role="3$I4v7">
                    <ref role="3cqZAo" node="3wAsKTkaUL3" resolve="size" />
                  </node>
                </node>
                <node concept="10Pfzv" id="3wAsKTkb7nz" role="3$_nBY" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1Dw8fO" id="3wAsKTkb896" role="3cqZAp">
          <node concept="3clFbS" id="3wAsKTkb898" role="2LFqv$">
            <node concept="3clFbF" id="3wAsKTkbb$R" role="3cqZAp">
              <node concept="37vLTI" id="3wAsKTkbgoM" role="3clFbG">
                <node concept="1eOMI4" id="3wAsKTkbpX0" role="37vLTx">
                  <node concept="10QFUN" id="3wAsKTkbpWX" role="1eOMHV">
                    <node concept="10Pfzv" id="3wAsKTkbqk8" role="10QFUM" />
                    <node concept="2OqwBi" id="3wAsKTkbhrR" role="10QFUP">
                      <node concept="37vLTw" id="3wAsKTkbgL0" role="2Oq$k0">
                        <ref role="3cqZAo" node="3wAsKTk9uKQ" resolve="inputStream" />
                      </node>
                      <node concept="liA8E" id="3wAsKTkbpzu" role="2OqNvi">
                        <ref role="37wK5l" to="guwi:~DataInputStream.readByte():byte" resolve="readByte" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="AH0OO" id="3wAsKTkbbVc" role="37vLTJ">
                  <node concept="37vLTw" id="3wAsKTkbc3g" role="AHEQo">
                    <ref role="3cqZAo" node="3wAsKTkb899" resolve="i" />
                  </node>
                  <node concept="37vLTw" id="3wAsKTkbb$P" role="AHHXb">
                    <ref role="3cqZAo" node="3wAsKTkb7nu" resolve="chars" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3wAsKTkb899" role="1Duv9x">
            <property role="TrG5h" value="i" />
            <node concept="10Oyi0" id="3wAsKTkb8k4" role="1tU5fm" />
            <node concept="3cmrfG" id="3wAsKTkb8yt" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
          <node concept="3eOVzh" id="3wAsKTkb9Hy" role="1Dwp0S">
            <node concept="37vLTw" id="3wAsKTkb9N_" role="3uHU7w">
              <ref role="3cqZAo" node="3wAsKTkaUL3" resolve="size" />
            </node>
            <node concept="37vLTw" id="3wAsKTkb8E4" role="3uHU7B">
              <ref role="3cqZAo" node="3wAsKTkb899" resolve="i" />
            </node>
          </node>
          <node concept="3uNrnE" id="3wAsKTkbbbR" role="1Dwrff">
            <node concept="37vLTw" id="3wAsKTkbbbT" role="2$L3a6">
              <ref role="3cqZAo" node="3wAsKTkb899" resolve="i" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3wAsKTkvjqE" role="3cqZAp">
          <node concept="3cpWsn" id="3wAsKTkvjqF" role="3cpWs9">
            <property role="TrG5h" value="output" />
            <node concept="3uibUv" id="3wAsKTkvjqo" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2ShNRf" id="3wAsKTkvjqG" role="33vP2m">
              <node concept="1pGfFk" id="3wAsKTkvjqH" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~String.&lt;init&gt;(char[])" resolve="String" />
                <node concept="37vLTw" id="3wAsKTkvjqI" role="37wK5m">
                  <ref role="3cqZAo" node="3wAsKTkb7nu" resolve="chars" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3wAsKTktJGj" role="3cqZAp" />
        <node concept="2xdQw9" id="3wAsKTktMMl" role="3cqZAp">
          <property role="2xdLsb" value="info" />
          <node concept="3cpWs3" id="3wAsKTktPA$" role="9lYJi">
            <node concept="37vLTw" id="3wAsKTkvtN4" role="3uHU7w">
              <ref role="3cqZAo" node="3wAsKTkvjqF" resolve="output" />
            </node>
            <node concept="Xl_RD" id="3wAsKTktMMn" role="3uHU7B">
              <property role="Xl_RC" value="response: " />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3wAsKTktJH3" role="3cqZAp" />
        <node concept="3cpWs6" id="3wAsKTkbqRf" role="3cqZAp">
          <node concept="37vLTw" id="3wAsKTkvjqJ" role="3cqZAk">
            <ref role="3cqZAo" node="3wAsKTkvjqF" resolve="output" />
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3wAsKTkaH2T" role="1B3o_S" />
      <node concept="3uibUv" id="3wAsKTkaI$I" role="3clF45">
        <ref role="3uigEE" to="wyt6:~String" resolve="String" />
      </node>
      <node concept="3uibUv" id="3wAsKTkaU29" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTk9$P2" role="jymVt" />
    <node concept="312cEu" id="3wAsKTk9_Zu" role="jymVt">
      <property role="TrG5h" value="Requests" />
      <node concept="2tJIrI" id="3wAsKTk9FKL" role="jymVt" />
      <node concept="3Tm6S6" id="3wAsKTk9Ab0" role="1B3o_S" />
      <node concept="Wx3nA" id="3wAsKTk9_9w" role="jymVt">
        <property role="TrG5h" value="CREATE_RESOURCE_INSTANCE" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3wAsKTk9_9x" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="Xl_RD" id="3wAsKTk9_9y" role="33vP2m">
          <property role="Xl_RC" value="&lt;Request ID=\&quot;{0}\&quot; Action=\&quot;CREATE\&quot;&gt;&lt;FB Name=\&quot;{1}\&quot; Type=\&quot;{2}\&quot; /&gt;&lt;/Request&gt;" />
        </node>
        <node concept="3Tm1VV" id="3wAsKTk9_9z" role="1B3o_S" />
      </node>
      <node concept="Wx3nA" id="3wAsKTk9_9$" role="jymVt">
        <property role="TrG5h" value="CREATE_FB_INSTANCE" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3wAsKTk9_9_" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="Xl_RD" id="3wAsKTk9_9A" role="33vP2m">
          <property role="Xl_RC" value="&lt;Request ID=\&quot;{0}\&quot; Action=\&quot;CREATE\&quot;&gt;&lt;FB Name=\&quot;{1}\&quot; Type=\&quot;{2}\&quot; /&gt;&lt;/Request&gt;" />
        </node>
        <node concept="3Tm1VV" id="3wAsKTk9_9B" role="1B3o_S" />
      </node>
      <node concept="Wx3nA" id="3wAsKTk9_9C" role="jymVt">
        <property role="TrG5h" value="CREATE_CONNECTION" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3wAsKTk9_9D" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="Xl_RD" id="3wAsKTk9_9E" role="33vP2m">
          <property role="Xl_RC" value="&lt;Request ID=\&quot;{0}\&quot; Action=\&quot;CREATE\&quot;&gt;&lt;Connection Source=\&quot;{1}\&quot; Destination=\&quot;{2}\&quot; /&gt;&lt;/Request&gt;" />
        </node>
        <node concept="3Tm1VV" id="3wAsKTk9_9F" role="1B3o_S" />
      </node>
      <node concept="Wx3nA" id="3wAsKTk9_9G" role="jymVt">
        <property role="TrG5h" value="WRITE_PARAMETER" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3wAsKTk9_9H" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="Xl_RD" id="3wAsKTk9_9I" role="33vP2m">
          <property role="Xl_RC" value="&lt;Request ID=\&quot;{0}\&quot; Action=\&quot;WRITE\&quot;&gt;&lt;Connection Source=\&quot;{1}\&quot; Destination=\&quot;{2}\&quot; /&gt;&lt;/Request&gt;" />
        </node>
        <node concept="3Tm1VV" id="3wAsKTk9_9J" role="1B3o_S" />
      </node>
      <node concept="Wx3nA" id="3wAsKTk9_9K" role="jymVt">
        <property role="TrG5h" value="START" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3wAsKTk9_9L" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="Xl_RD" id="3wAsKTk9_9M" role="33vP2m">
          <property role="Xl_RC" value="&lt;Request ID=\&quot;{0}\&quot; Action=\&quot;START\&quot;/&gt;" />
        </node>
        <node concept="3Tm1VV" id="3wAsKTk9_9N" role="1B3o_S" />
      </node>
      <node concept="Wx3nA" id="3wAsKTk9_9O" role="jymVt">
        <property role="TrG5h" value="START_FB" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3wAsKTk9_9P" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="Xl_RD" id="3wAsKTk9_9Q" role="33vP2m">
          <property role="Xl_RC" value="&lt;Request ID=\&quot;{0}\&quot; Action=\&quot;START\&quot;&gt;&lt;FB Name=\&quot;{1}\&quot; Type=\&quot;{2}\&quot;/&gt;&lt;/Request&gt;" />
        </node>
        <node concept="3Tm1VV" id="3wAsKTk9_9R" role="1B3o_S" />
      </node>
      <node concept="Wx3nA" id="3wAsKTk9_9S" role="jymVt">
        <property role="TrG5h" value="KILL_FB" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3wAsKTk9_9T" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="Xl_RD" id="3wAsKTk9_9U" role="33vP2m">
          <property role="Xl_RC" value="&lt;Request ID=\&quot;{0}\&quot; Action=\&quot;KILL\&quot;&gt;&lt;FB Name=\&quot;{1}\&quot; Type=\&quot;\&quot;/&gt;&lt;/Request&gt;" />
        </node>
        <node concept="3Tm1VV" id="3wAsKTk9_9V" role="1B3o_S" />
      </node>
      <node concept="Wx3nA" id="3wAsKTk9_9W" role="jymVt">
        <property role="TrG5h" value="KILL_DEVICE" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3wAsKTk9_9X" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="Xl_RD" id="3wAsKTk9_9Y" role="33vP2m">
          <property role="Xl_RC" value="&lt;Request ID=\&quot;{0}\&quot; Action=\&quot;KILL\&quot;&gt;&lt;/Request&gt;" />
        </node>
        <node concept="3Tm1VV" id="3wAsKTk9_9Z" role="1B3o_S" />
      </node>
      <node concept="Wx3nA" id="3wAsKTk9_a0" role="jymVt">
        <property role="TrG5h" value="STOP_FB" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3wAsKTk9_a1" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="Xl_RD" id="3wAsKTk9_a2" role="33vP2m">
          <property role="Xl_RC" value="&lt;Request ID=\&quot;{0}\&quot; Action=\&quot;STOP\&quot;&gt;&lt;FB Name=\&quot;{1}\&quot; Type=\&quot;\&quot;/&gt;&lt;/Request&gt;" />
        </node>
        <node concept="3Tm1VV" id="3wAsKTk9_a3" role="1B3o_S" />
      </node>
      <node concept="Wx3nA" id="3wAsKTk9_a4" role="jymVt">
        <property role="TrG5h" value="DELETE_FB" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3wAsKTk9_a5" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="Xl_RD" id="3wAsKTk9_a6" role="33vP2m">
          <property role="Xl_RC" value="&lt;Request ID=\&quot;{0}\&quot; Action=\&quot;DELETE\&quot;&gt;&lt;FB Name=\&quot;{1}\&quot; Type=\&quot;\&quot;/&gt;&lt;/Request&gt;" />
        </node>
        <node concept="3Tm1VV" id="3wAsKTk9_a7" role="1B3o_S" />
      </node>
      <node concept="Wx3nA" id="3wAsKTk9_a8" role="jymVt">
        <property role="TrG5h" value="DELETE_CONNECTION" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3wAsKTk9_a9" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="Xl_RD" id="3wAsKTk9_aa" role="33vP2m">
          <property role="Xl_RC" value="&lt;Request ID=\&quot;{0}\&quot; Action=\&quot;DELETE\&quot;&gt;&lt;Connection Source=\&quot;{1}\&quot; Destination=\&quot;{2}\&quot;/&gt;&lt;/Request&gt;" />
        </node>
        <node concept="3Tm1VV" id="3wAsKTk9_ab" role="1B3o_S" />
      </node>
      <node concept="Wx3nA" id="3wAsKTk9_ac" role="jymVt">
        <property role="TrG5h" value="QUERY_FB_INSTANCES" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3wAsKTk9_ad" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="Xl_RD" id="3wAsKTk9_ae" role="33vP2m">
          <property role="Xl_RC" value="&lt;Request ID=\&quot;{0}\&quot; Action=\&quot;QUERY\&quot;&gt;&lt;FB Name=\&quot;*\&quot; Type=\&quot;*\&quot;/&gt;&lt;/Request&gt;" />
        </node>
        <node concept="3Tm1VV" id="3wAsKTk9_af" role="1B3o_S" />
      </node>
      <node concept="Wx3nA" id="3wAsKTk9_ag" role="jymVt">
        <property role="TrG5h" value="READ_WATCHES" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3wAsKTk9_ah" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="Xl_RD" id="3wAsKTk9_ai" role="33vP2m">
          <property role="Xl_RC" value="&lt;Request ID=\&quot;{0}\&quot; Action=\&quot;READ\&quot;&gt;&lt;Watches/&gt;&lt;/Request&gt;" />
        </node>
        <node concept="3Tm1VV" id="3wAsKTk9_aj" role="1B3o_S" />
      </node>
      <node concept="Wx3nA" id="3wAsKTk9_ak" role="jymVt">
        <property role="TrG5h" value="ADD_WATCH" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3wAsKTk9_al" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="Xl_RD" id="3wAsKTk9_am" role="33vP2m">
          <property role="Xl_RC" value="&lt;Request ID=\&quot;{0}\&quot; Action=\&quot;CREATE\&quot;&gt;&lt;Watch Source=\&quot;{1}\&quot; Destination=\&quot;{2}\&quot; /&gt;&lt;/Request&gt;" />
        </node>
        <node concept="3Tm1VV" id="3wAsKTk9_an" role="1B3o_S" />
      </node>
      <node concept="Wx3nA" id="3wAsKTk9_ao" role="jymVt">
        <property role="TrG5h" value="DELETE_WATCH" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3wAsKTk9_ap" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="Xl_RD" id="3wAsKTk9_aq" role="33vP2m">
          <property role="Xl_RC" value="&lt;Request ID=\&quot;{0}\&quot; Action=\&quot;DELETE\&quot;&gt;&lt;Watch Source=\&quot;{1}\&quot; Destination=\&quot;{2}\&quot; /&gt;&lt;/Request&gt;" />
        </node>
        <node concept="3Tm1VV" id="3wAsKTk9_ar" role="1B3o_S" />
      </node>
      <node concept="Wx3nA" id="3wAsKTk9_as" role="jymVt">
        <property role="TrG5h" value="FORCE_VALUE" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3wAsKTk9_at" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
        <node concept="Xl_RD" id="3wAsKTk9_au" role="33vP2m">
          <property role="Xl_RC" value="&lt;Request ID=\&quot;{0}\&quot; Action=\&quot;WRITE\&quot;&gt;&lt;Connection Source=\&quot;{1}\&quot; Destination=\&quot;{2}\&quot; force=\&quot;{3}\&quot; /&gt;&lt;/Request&gt;" />
        </node>
        <node concept="3Tm1VV" id="3wAsKTk9_av" role="1B3o_S" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3wAsKTk9bGk" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3wAsKTkhPuA">
    <property role="3GE5qa" value="debugger.forte" />
    <property role="TrG5h" value="ForteDevicesFacade" />
    <node concept="2tJIrI" id="3wAsKTkhPwO" role="jymVt" />
    <node concept="Wx3nA" id="3wAsKTkx2ss" role="jymVt">
      <property role="TrG5h" value="ourClients" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3wAsKTkx1rY" role="1B3o_S" />
      <node concept="3uibUv" id="3wAsKTkx1ON" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="2sp9CU" id="3wAsKTkx26P" role="11_B2D">
          <ref role="2sp9C9" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
        </node>
        <node concept="3uibUv" id="3wAsKTkx2k_" role="11_B2D">
          <ref role="3uigEE" node="3wAsKTk9bGj" resolve="ForteDeviceClient" />
        </node>
      </node>
      <node concept="2ShNRf" id="3wAsKTkx2JS" role="33vP2m">
        <node concept="1pGfFk" id="3wAsKTkx5y_" role="2ShVmc">
          <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.&lt;init&gt;()" resolve="ConcurrentHashMap" />
          <node concept="2sp9CU" id="3wAsKTkx664" role="1pMfVU">
            <ref role="2sp9C9" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
          </node>
          <node concept="3uibUv" id="3wAsKTkx665" role="1pMfVU">
            <ref role="3uigEE" node="3wAsKTk9bGj" resolve="ForteDeviceClient" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkx6Fn" role="jymVt" />
    <node concept="2YIFZL" id="3wAsKTkhPKR" role="jymVt">
      <property role="TrG5h" value="attach" />
      <node concept="3clFbS" id="3wAsKTkhPKU" role="3clF47">
        <node concept="3clFbJ" id="4uvvnUOszJO" role="3cqZAp">
          <node concept="3clFbS" id="4uvvnUOszJQ" role="3clFbx">
            <node concept="3cpWs6" id="4uvvnUOs$Fc" role="3cqZAp">
              <node concept="10Nm6u" id="4uvvnUOs$L9" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="4uvvnUOs$pR" role="3clFbw">
            <node concept="10Nm6u" id="4uvvnUOs$vO" role="3uHU7w" />
            <node concept="37vLTw" id="4uvvnUOszYQ" role="3uHU7B">
              <ref role="3cqZAo" node="3wAsKTkhPV$" resolve="device" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3wAsKTky3L9" role="3cqZAp">
          <node concept="3cpWsn" id="3wAsKTky3La" role="3cpWs9">
            <property role="TrG5h" value="ioe" />
            <node concept="3uibUv" id="3wAsKTky3Lb" role="1tU5fm">
              <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
            </node>
            <node concept="10Nm6u" id="3wAsKTky3Zr" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="3wAsKTky8sG" role="3cqZAp">
          <node concept="3cpWsn" id="3wAsKTky8sH" role="3cpWs9">
            <property role="TrG5h" value="cl" />
            <node concept="3uibUv" id="3wAsKTky8sg" role="1tU5fm">
              <ref role="3uigEE" node="3wAsKTk9bGj" resolve="ForteDeviceClient" />
            </node>
            <node concept="2OqwBi" id="3wAsKTky8sI" role="33vP2m">
              <node concept="37vLTw" id="3wAsKTky8sJ" role="2Oq$k0">
                <ref role="3cqZAo" node="3wAsKTkx2ss" resolve="ourClients" />
              </node>
              <node concept="liA8E" id="3wAsKTky8sK" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.computeIfAbsent(java.lang.Object,java.util.function.Function):java.lang.Object" resolve="computeIfAbsent" />
                <node concept="2OqwBi" id="3wAsKTky8sL" role="37wK5m">
                  <node concept="37vLTw" id="3wAsKTky8sM" role="2Oq$k0">
                    <ref role="3cqZAo" node="3wAsKTkhPV$" resolve="device" />
                  </node>
                  <node concept="iZEcu" id="3wAsKTky8sN" role="2OqNvi" />
                </node>
                <node concept="1bVj0M" id="3wAsKTky8sO" role="37wK5m">
                  <node concept="3clFbS" id="3wAsKTky8sP" role="1bW5cS">
                    <node concept="SfApY" id="3wAsKTky8sQ" role="3cqZAp">
                      <node concept="3clFbS" id="3wAsKTky8sR" role="SfCbr">
                        <node concept="3cpWs6" id="3wAsKTky8sS" role="3cqZAp">
                          <node concept="2ShNRf" id="3wAsKTky8sT" role="3cqZAk">
                            <node concept="1pGfFk" id="3wAsKTky8sU" role="2ShVmc">
                              <ref role="37wK5l" node="3wAsKTk9bWx" resolve="ForteDeviceClient" />
                              <node concept="37vLTw" id="3wAsKTky8sV" role="37wK5m">
                                <ref role="3cqZAo" node="3wAsKTkhPV$" resolve="device" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="TDmWw" id="3wAsKTky8sW" role="TEbGg">
                        <node concept="3cpWsn" id="3wAsKTky8sX" role="TDEfY">
                          <property role="TrG5h" value="e" />
                          <node concept="3uibUv" id="3wAsKTky8sY" role="1tU5fm">
                            <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="3wAsKTky8sZ" role="TDEfX">
                          <node concept="3clFbF" id="3wAsKTky8t0" role="3cqZAp">
                            <node concept="37vLTI" id="3wAsKTky8t1" role="3clFbG">
                              <node concept="37vLTw" id="3wAsKTky8t2" role="37vLTx">
                                <ref role="3cqZAo" node="3wAsKTky8sX" resolve="e" />
                              </node>
                              <node concept="37vLTw" id="3wAsKTky8t3" role="37vLTJ">
                                <ref role="3cqZAo" node="3wAsKTky3La" resolve="ioe" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="3wAsKTkypE9" role="3cqZAp">
                            <node concept="10Nm6u" id="3wAsKTkypKb" role="3cqZAk" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="3wAsKTky8t4" role="1bW2Oz">
                    <property role="TrG5h" value="p" />
                    <node concept="2sp9CU" id="3wAsKTky8t5" role="1tU5fm">
                      <ref role="2sp9C9" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3wAsKTky5QW" role="3cqZAp">
          <node concept="3clFbS" id="3wAsKTky5QY" role="3clFbx">
            <node concept="YS8fn" id="3wAsKTky7d$" role="3cqZAp">
              <node concept="37vLTw" id="3wAsKTky7l5" role="YScLw">
                <ref role="3cqZAo" node="3wAsKTky3La" resolve="ioe" />
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="3wAsKTky6FX" role="3clFbw">
            <node concept="10Nm6u" id="3wAsKTky6TD" role="3uHU7w" />
            <node concept="37vLTw" id="3wAsKTky653" role="3uHU7B">
              <ref role="3cqZAo" node="3wAsKTky3La" resolve="ioe" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3wAsKTky9Es" role="3cqZAp">
          <node concept="37vLTw" id="3wAsKTky8t6" role="3cqZAk">
            <ref role="3cqZAo" node="3wAsKTky8sH" resolve="cl" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3wAsKTkhPAa" role="1B3o_S" />
      <node concept="3uibUv" id="3wAsKTkx704" role="3clF45">
        <ref role="3uigEE" node="3wAsKTk9bGj" resolve="ForteDeviceClient" />
      </node>
      <node concept="37vLTG" id="3wAsKTkhPV$" role="3clF46">
        <property role="TrG5h" value="device" />
        <node concept="3Tqbb2" id="3wAsKTkhPVz" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
        </node>
      </node>
      <node concept="3uibUv" id="3wAsKTkhQ6O" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="3Tm1VV" id="3wAsKTkhPuB" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3wAsKTkjRj3">
    <property role="TrG5h" value="Watchable" />
    <property role="3GE5qa" value="debugger" />
    <node concept="312cEg" id="6K_0vqj4_z5" role="jymVt">
      <property role="TrG5h" value="resource" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="6K_0vqj4_31" role="1B3o_S" />
      <node concept="2sp9CU" id="6K_0vqj4_v3" role="1tU5fm">
        <ref role="2sp9C9" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
      </node>
    </node>
    <node concept="312cEg" id="3wAsKTkjRHF" role="jymVt">
      <property role="TrG5h" value="fb" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3wAsKTkjRv2" role="1B3o_S" />
      <node concept="2sp9CU" id="3wAsKTkjRHv" role="1tU5fm">
        <ref role="2sp9C9" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
      </node>
    </node>
    <node concept="312cEg" id="3wAsKTkjRWL" role="jymVt">
      <property role="TrG5h" value="port" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3wAsKTkjRMW" role="1B3o_S" />
      <node concept="17QB3L" id="3wAsKTkjRWE" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="3wAsKTkjRX7" role="jymVt" />
    <node concept="3Tm1VV" id="3wAsKTkjRj4" role="1B3o_S" />
    <node concept="3clFbW" id="3wAsKTkjS1E" role="jymVt">
      <node concept="3cqZAl" id="3wAsKTkjS1F" role="3clF45" />
      <node concept="3Tm1VV" id="3wAsKTkjS1G" role="1B3o_S" />
      <node concept="3clFbS" id="3wAsKTkjS1I" role="3clF47">
        <node concept="3clFbF" id="6K_0vqj4A9l" role="3cqZAp">
          <node concept="37vLTI" id="6K_0vqj4Cdp" role="3clFbG">
            <node concept="37vLTw" id="6K_0vqj4CoT" role="37vLTx">
              <ref role="3cqZAo" node="6K_0vqj4_JC" resolve="resource" />
            </node>
            <node concept="2OqwBi" id="6K_0vqj4AjR" role="37vLTJ">
              <node concept="Xjq3P" id="6K_0vqj4A9j" role="2Oq$k0" />
              <node concept="2OwXpG" id="6K_0vqj4AKZ" role="2OqNvi">
                <ref role="2Oxat5" node="6K_0vqj4_z5" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkjS1M" role="3cqZAp">
          <node concept="37vLTI" id="3wAsKTkjS1O" role="3clFbG">
            <node concept="2OqwBi" id="3wAsKTkjS1S" role="37vLTJ">
              <node concept="Xjq3P" id="3wAsKTkjS1T" role="2Oq$k0" />
              <node concept="2OwXpG" id="3wAsKTkjS1U" role="2OqNvi">
                <ref role="2Oxat5" node="3wAsKTkjRHF" resolve="fb" />
              </node>
            </node>
            <node concept="37vLTw" id="3wAsKTkjS1V" role="37vLTx">
              <ref role="3cqZAo" node="3wAsKTkjS1L" resolve="fb" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkjS1Y" role="3cqZAp">
          <node concept="37vLTI" id="3wAsKTkjS20" role="3clFbG">
            <node concept="2OqwBi" id="3wAsKTkjS24" role="37vLTJ">
              <node concept="Xjq3P" id="3wAsKTkjS25" role="2Oq$k0" />
              <node concept="2OwXpG" id="3wAsKTkjS26" role="2OqNvi">
                <ref role="2Oxat5" node="3wAsKTkjRWL" resolve="port" />
              </node>
            </node>
            <node concept="37vLTw" id="3wAsKTkjS27" role="37vLTx">
              <ref role="3cqZAo" node="3wAsKTkjS1X" resolve="port" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="6K_0vqj4_JC" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="2sp9CU" id="6K_0vqj4_YQ" role="1tU5fm">
          <ref role="2sp9C9" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="3wAsKTkjS1L" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="2sp9CU" id="3wAsKTkjS1K" role="1tU5fm">
          <ref role="2sp9C9" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="3wAsKTkjS1X" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="17QB3L" id="3wAsKTkjS1W" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkjS9I" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkjSdz" role="jymVt">
      <property role="TrG5h" value="getResource" />
      <node concept="2sp9CU" id="3wAsKTkjSd$" role="3clF45">
        <ref role="2sp9C9" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
      </node>
      <node concept="3Tm1VV" id="3wAsKTkjSd_" role="1B3o_S" />
      <node concept="3clFbS" id="3wAsKTkjSdA" role="3clF47">
        <node concept="3clFbF" id="3wAsKTkjSdB" role="3cqZAp">
          <node concept="37vLTw" id="6K_0vqj4Et_" role="3clFbG">
            <ref role="3cqZAo" node="6K_0vqj4_z5" resolve="resource" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkjSlL" role="jymVt" />
    <node concept="3clFb_" id="6K_0vqj4Cqx" role="jymVt">
      <property role="TrG5h" value="getFb" />
      <node concept="2sp9CU" id="6K_0vqj4Cqy" role="3clF45">
        <ref role="2sp9C9" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
      </node>
      <node concept="3Tm1VV" id="6K_0vqj4Cqz" role="1B3o_S" />
      <node concept="3clFbS" id="6K_0vqj4Cq$" role="3clF47">
        <node concept="3clFbF" id="6K_0vqj4Cq_" role="3cqZAp">
          <node concept="37vLTw" id="6K_0vqj4CqA" role="3clFbG">
            <ref role="3cqZAo" node="3wAsKTkjRHF" resolve="fb" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3clFb_" id="3wAsKTkjSdD" role="jymVt">
      <property role="TrG5h" value="getPort" />
      <node concept="17QB3L" id="3wAsKTkjSdE" role="3clF45" />
      <node concept="3Tm1VV" id="3wAsKTkjSdF" role="1B3o_S" />
      <node concept="3clFbS" id="3wAsKTkjSdG" role="3clF47">
        <node concept="3clFbF" id="3wAsKTkjSdH" role="3cqZAp">
          <node concept="37vLTw" id="3wAsKTkjSdC" role="3clFbG">
            <ref role="3cqZAo" node="3wAsKTkjRWL" resolve="port" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkjStA" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkjSxI" role="jymVt">
      <property role="TrG5h" value="equals" />
      <node concept="10P_77" id="3wAsKTkjSxJ" role="3clF45" />
      <node concept="3Tm1VV" id="3wAsKTkjSxK" role="1B3o_S" />
      <node concept="3clFbS" id="3wAsKTkjSxL" role="3clF47">
        <node concept="3clFbJ" id="3wAsKTkjSxM" role="3cqZAp">
          <node concept="3clFbS" id="3wAsKTkjSxN" role="3clFbx">
            <node concept="3cpWs6" id="3wAsKTkjSxO" role="3cqZAp">
              <node concept="3clFbT" id="3wAsKTkjSxP" role="3cqZAk">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3wAsKTkjSxQ" role="3clFbw">
            <node concept="Xjq3P" id="3wAsKTkjSxH" role="3uHU7B" />
            <node concept="37vLTw" id="3wAsKTkjSxR" role="3uHU7w">
              <ref role="3cqZAo" node="3wAsKTkjSye" resolve="o" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3wAsKTkjSxS" role="3cqZAp">
          <node concept="3clFbS" id="3wAsKTkjSxT" role="3clFbx">
            <node concept="3cpWs6" id="3wAsKTkjSxU" role="3cqZAp">
              <node concept="3clFbT" id="3wAsKTkjSxV" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="3wAsKTkk0HA" role="3clFbw">
            <node concept="1eOMI4" id="3wAsKTkk0HC" role="3fr31v">
              <node concept="2ZW3vV" id="3wAsKTkk1cn" role="1eOMHV">
                <node concept="3uibUv" id="3wAsKTkk1pY" role="2ZW6by">
                  <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
                </node>
                <node concept="37vLTw" id="3wAsKTkk10D" role="2ZW6bz">
                  <ref role="3cqZAo" node="3wAsKTkjSye" resolve="o" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3wAsKTkjSy7" role="3cqZAp" />
        <node concept="3cpWs8" id="3wAsKTkjSy8" role="3cqZAp">
          <node concept="3cpWsn" id="3wAsKTkjSy9" role="3cpWs9">
            <property role="TrG5h" value="that" />
            <node concept="3uibUv" id="3wAsKTkjSya" role="1tU5fm">
              <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
            </node>
            <node concept="10QFUN" id="3wAsKTkjSyb" role="33vP2m">
              <node concept="3uibUv" id="3wAsKTkjSyc" role="10QFUM">
                <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
              </node>
              <node concept="37vLTw" id="3wAsKTkjSyd" role="10QFUP">
                <ref role="3cqZAo" node="3wAsKTkjSye" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6K_0vqj4Ex$" role="3cqZAp">
          <node concept="3clFbS" id="6K_0vqj4Ex_" role="3clFbx">
            <node concept="3cpWs6" id="6K_0vqj4ExA" role="3cqZAp">
              <node concept="3clFbT" id="6K_0vqj4ExB" role="3cqZAk" />
            </node>
          </node>
          <node concept="17QLQc" id="6K_0vqj4ExC" role="3clFbw">
            <node concept="37vLTw" id="6K_0vqj4Ful" role="3uHU7B">
              <ref role="3cqZAo" node="6K_0vqj4_z5" resolve="resource" />
            </node>
            <node concept="2OqwBi" id="6K_0vqj4ExE" role="3uHU7w">
              <node concept="37vLTw" id="6K_0vqj4ExF" role="2Oq$k0">
                <ref role="3cqZAo" node="3wAsKTkjSy9" resolve="that" />
              </node>
              <node concept="2OwXpG" id="6K_0vqj4FMB" role="2OqNvi">
                <ref role="2Oxat5" node="6K_0vqj4_z5" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3wAsKTkjSyo" role="3cqZAp">
          <node concept="3clFbS" id="3wAsKTkjSyp" role="3clFbx">
            <node concept="3cpWs6" id="3wAsKTkjSyq" role="3cqZAp">
              <node concept="3clFbT" id="3wAsKTkjSyr" role="3cqZAk" />
            </node>
          </node>
          <node concept="17QLQc" id="3wAsKTkjZAl" role="3clFbw">
            <node concept="37vLTw" id="3wAsKTkjSyl" role="3uHU7B">
              <ref role="3cqZAo" node="3wAsKTkjRHF" resolve="fb" />
            </node>
            <node concept="2OqwBi" id="3wAsKTkjSyw" role="3uHU7w">
              <node concept="37vLTw" id="3wAsKTkjSyh" role="2Oq$k0">
                <ref role="3cqZAo" node="3wAsKTkjSy9" resolve="that" />
              </node>
              <node concept="2OwXpG" id="3wAsKTkjSyk" role="2OqNvi">
                <ref role="2Oxat5" node="3wAsKTkjRHF" resolve="fb" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3wAsKTkjSyI" role="3cqZAp">
          <node concept="3clFbS" id="3wAsKTkjSyJ" role="3clFbx">
            <node concept="3cpWs6" id="3wAsKTkjSyK" role="3cqZAp">
              <node concept="3clFbT" id="3wAsKTkjSyL" role="3cqZAk" />
            </node>
          </node>
          <node concept="17QLQc" id="3wAsKTkjWnl" role="3clFbw">
            <node concept="37vLTw" id="3wAsKTkjSyF" role="3uHU7B">
              <ref role="3cqZAo" node="3wAsKTkjRWL" resolve="port" />
            </node>
            <node concept="2OqwBi" id="3wAsKTkjSyQ" role="3uHU7w">
              <node concept="37vLTw" id="3wAsKTkjSyR" role="2Oq$k0">
                <ref role="3cqZAo" node="3wAsKTkjSy9" resolve="that" />
              </node>
              <node concept="2OwXpG" id="3wAsKTkjSyE" role="2OqNvi">
                <ref role="2Oxat5" node="3wAsKTkjRWL" resolve="port" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3wAsKTkjSz1" role="3cqZAp" />
        <node concept="3clFbF" id="3wAsKTkjSz2" role="3cqZAp">
          <node concept="3clFbT" id="3wAsKTkjSz3" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3wAsKTkjSye" role="3clF46">
        <property role="TrG5h" value="o" />
        <node concept="3uibUv" id="3wAsKTkjSyf" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3wAsKTkjSyg" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkjTDZ" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkjSz4" role="jymVt">
      <property role="TrG5h" value="hashCode" />
      <node concept="10Oyi0" id="3wAsKTkjSz5" role="3clF45" />
      <node concept="3Tm1VV" id="3wAsKTkjSz6" role="1B3o_S" />
      <node concept="3clFbS" id="3wAsKTkjSz7" role="3clF47">
        <node concept="3cpWs8" id="3wAsKTkjSz9" role="3cqZAp">
          <node concept="3cpWsn" id="3wAsKTkjSza" role="3cpWs9">
            <property role="TrG5h" value="result" />
            <node concept="10Oyi0" id="3wAsKTkjSzb" role="1tU5fm" />
            <node concept="3cmrfG" id="3wAsKTkjSzc" role="33vP2m">
              <property role="3cmrfH" value="0" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6K_0vqj4FR9" role="3cqZAp">
          <node concept="37vLTI" id="6K_0vqj4FRa" role="3clFbG">
            <node concept="3cpWs3" id="6K_0vqj4FRb" role="37vLTx">
              <node concept="1eOMI4" id="6K_0vqj4FRc" role="3uHU7w">
                <node concept="3K4zz7" id="6K_0vqj4FRd" role="1eOMHV">
                  <node concept="3cmrfG" id="6K_0vqj4FRe" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="6K_0vqj4FRf" role="3K4Cdx">
                    <node concept="10Nm6u" id="6K_0vqj4FRg" role="3uHU7w" />
                    <node concept="37vLTw" id="6K_0vqj4GBp" role="3uHU7B">
                      <ref role="3cqZAo" node="6K_0vqj4_z5" resolve="resource" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6K_0vqj4FRi" role="3K4E3e">
                    <node concept="2JrnkZ" id="6K_0vqj4FRj" role="2Oq$k0">
                      <node concept="37vLTw" id="6K_0vqj4GLw" role="2JrQYb">
                        <ref role="3cqZAo" node="6K_0vqj4_z5" resolve="resource" />
                      </node>
                    </node>
                    <node concept="liA8E" id="6K_0vqj4FRl" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="6K_0vqj4FRm" role="3uHU7B">
                <node concept="3cmrfG" id="6K_0vqj4FRn" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="6K_0vqj4FRo" role="3uHU7w">
                  <ref role="3cqZAo" node="3wAsKTkjSza" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="6K_0vqj4FRp" role="37vLTJ">
              <ref role="3cqZAo" node="3wAsKTkjSza" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkjSzm" role="3cqZAp">
          <node concept="37vLTI" id="3wAsKTkjSzn" role="3clFbG">
            <node concept="3cpWs3" id="3wAsKTkjSzo" role="37vLTx">
              <node concept="1eOMI4" id="3wAsKTkk1wf" role="3uHU7w">
                <node concept="3K4zz7" id="3wAsKTkjSzq" role="1eOMHV">
                  <node concept="3cmrfG" id="3wAsKTkjSzr" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="3wAsKTkjSzs" role="3K4Cdx">
                    <node concept="10Nm6u" id="3wAsKTkjSzt" role="3uHU7w" />
                    <node concept="37vLTw" id="3wAsKTkjSzk" role="3uHU7B">
                      <ref role="3cqZAo" node="3wAsKTkjRHF" resolve="fb" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3wAsKTkjSzu" role="3K4E3e">
                    <node concept="2JrnkZ" id="3wAsKTkk3ls" role="2Oq$k0">
                      <node concept="37vLTw" id="3wAsKTkjSzl" role="2JrQYb">
                        <ref role="3cqZAo" node="3wAsKTkjRHF" resolve="fb" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3wAsKTkjSzy" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Object.hashCode():int" resolve="hashCode" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="17qRlL" id="3wAsKTkjSzi" role="3uHU7B">
                <node concept="3cmrfG" id="3wAsKTkjSzj" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="3wAsKTkjSzd" role="3uHU7w">
                  <ref role="3cqZAo" node="3wAsKTkjSza" resolve="result" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="3wAsKTkjSzz" role="37vLTJ">
              <ref role="3cqZAo" node="3wAsKTkjSza" resolve="result" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkjSzD" role="3cqZAp">
          <node concept="37vLTI" id="3wAsKTkjSzE" role="3clFbG">
            <node concept="37vLTw" id="3wAsKTkjSzF" role="37vLTJ">
              <ref role="3cqZAo" node="3wAsKTkjSza" resolve="result" />
            </node>
            <node concept="3cpWs3" id="3wAsKTkjSzG" role="37vLTx">
              <node concept="17qRlL" id="3wAsKTkjSz$" role="3uHU7B">
                <node concept="3cmrfG" id="3wAsKTkjSz_" role="3uHU7B">
                  <property role="3cmrfH" value="31" />
                </node>
                <node concept="37vLTw" id="3wAsKTkjSzA" role="3uHU7w">
                  <ref role="3cqZAo" node="3wAsKTkjSza" resolve="result" />
                </node>
              </node>
              <node concept="1eOMI4" id="3wAsKTkjSzH" role="3uHU7w">
                <node concept="3K4zz7" id="3wAsKTkjSzI" role="1eOMHV">
                  <node concept="3cmrfG" id="3wAsKTkjSzJ" role="3K4GZi">
                    <property role="3cmrfH" value="0" />
                  </node>
                  <node concept="3y3z36" id="3wAsKTkjSzK" role="3K4Cdx">
                    <node concept="10Nm6u" id="3wAsKTkjSzL" role="3uHU7w" />
                    <node concept="37vLTw" id="3wAsKTkjSzB" role="3uHU7B">
                      <ref role="3cqZAo" node="3wAsKTkjRWL" resolve="port" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3wAsKTkjSzM" role="3K4E3e">
                    <node concept="liA8E" id="3wAsKTkjSzO" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.hashCode():int" resolve="hashCode" />
                    </node>
                    <node concept="37vLTw" id="3wAsKTkjSzC" role="2Oq$k0">
                      <ref role="3cqZAo" node="3wAsKTkjRWL" resolve="port" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3wAsKTkjSzP" role="3cqZAp">
          <node concept="37vLTw" id="3wAsKTkjSzQ" role="3clFbG">
            <ref role="3cqZAo" node="3wAsKTkjSza" resolve="result" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3wAsKTkjSz8" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="3HP615" id="5jACUPF_hkq">
    <property role="TrG5h" value="WatchedValueListener" />
    <property role="3GE5qa" value="debugger" />
    <node concept="2tJIrI" id="5jACUPF_hlc" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_hyO" role="jymVt">
      <property role="TrG5h" value="onValueChanged" />
      <node concept="3clFbS" id="5jACUPF_hyR" role="3clF47" />
      <node concept="3Tm1VV" id="5jACUPF_hyS" role="1B3o_S" />
      <node concept="3cqZAl" id="5jACUPF_hyD" role="3clF45" />
      <node concept="37vLTG" id="5jACUPF_hAA" role="3clF46">
        <property role="TrG5h" value="newValue" />
        <node concept="17QB3L" id="5jACUPF_hA_" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5jACUPF_hkr" role="1B3o_S" />
  </node>
  <node concept="3HP615" id="5jACUPF_XF2">
    <property role="TrG5h" value="Watcher" />
    <property role="3GE5qa" value="debugger" />
    <node concept="2tJIrI" id="5jACUPF_XFk" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_Y1s" role="jymVt">
      <property role="TrG5h" value="watch" />
      <node concept="3clFbS" id="5jACUPF_Y1v" role="3clF47" />
      <node concept="3Tm1VV" id="5jACUPF_Y1w" role="1B3o_S" />
      <node concept="3cqZAl" id="5jACUPF_Y12" role="3clF45" />
      <node concept="37vLTG" id="5jACUPF_Y9K" role="3clF46">
        <property role="TrG5h" value="w" />
        <node concept="3uibUv" id="5jACUPF_Y9J" role="1tU5fm">
          <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jACUPF_YaC" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_YfM" role="jymVt">
      <property role="TrG5h" value="unwatch" />
      <node concept="3clFbS" id="5jACUPF_YfP" role="3clF47" />
      <node concept="3Tm1VV" id="5jACUPF_YfQ" role="1B3o_S" />
      <node concept="3cqZAl" id="5jACUPF_Yf8" role="3clF45" />
      <node concept="37vLTG" id="5jACUPF_Yk3" role="3clF46">
        <property role="TrG5h" value="w" />
        <node concept="3uibUv" id="5jACUPF_Yk2" role="1tU5fm">
          <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jACUPF_XXo" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_XWH" role="jymVt">
      <property role="TrG5h" value="readWatches" />
      <node concept="3clFbS" id="5jACUPF_XWK" role="3clF47" />
      <node concept="3Tm1VV" id="5jACUPF_XWL" role="1B3o_S" />
      <node concept="3rvAFt" id="5jACUPF_XPM" role="3clF45">
        <node concept="3uibUv" id="5jACUPF_XTj" role="3rvQeY">
          <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
        </node>
        <node concept="17QB3L" id="5jACUPF_XWE" role="3rvSg0" />
      </node>
    </node>
    <node concept="3Tm1VV" id="5jACUPF_XF3" role="1B3o_S" />
  </node>
  <node concept="2uRRBy" id="3wAsKTk97VW">
    <property role="TrG5h" value="Watcher Component" />
    <property role="3GE5qa" value="debugger" />
    <node concept="2BZ0e9" id="5jACUPF_n3p" role="2uRRBA">
      <property role="TrG5h" value="facade" />
      <node concept="3Tm6S6" id="5jACUPF_n3q" role="1B3o_S" />
      <node concept="3uibUv" id="5jACUPF_na1" role="1tU5fm">
        <ref role="3uigEE" node="3wAsKTk9819" resolve="WatcherFacade" />
      </node>
      <node concept="2ShNRf" id="5jACUPF_nak" role="33vP2m">
        <node concept="HV5vD" id="5jACUPF_nCc" role="2ShVmc">
          <ref role="HV5vE" node="3wAsKTk9819" resolve="WatcherFacade" />
        </node>
      </node>
    </node>
    <node concept="2uRRBT" id="5jACUPF_nCt" role="2uRRB$">
      <node concept="3clFbS" id="5jACUPF_nCu" role="2VODD2">
        <node concept="3clFbF" id="5jACUPF_nJp" role="3cqZAp">
          <node concept="2OqwBi" id="5jACUPF_o3J" role="3clFbG">
            <node concept="2OqwBi" id="5jACUPF_nJj" role="2Oq$k0">
              <node concept="2WthIp" id="5jACUPF_nJm" role="2Oq$k0" />
              <node concept="2BZ7hE" id="5jACUPF_nJo" role="2OqNvi">
                <ref role="2WH_rO" node="5jACUPF_n3p" resolve="facade" />
              </node>
            </node>
            <node concept="liA8E" id="5jACUPF_J$g" role="2OqNvi">
              <ref role="37wK5l" node="5jACUPF_oRt" resolve="start" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="5jACUPF_J_m" role="2uRRB_">
      <node concept="3clFbS" id="5jACUPF_J_n" role="2VODD2">
        <node concept="3clFbF" id="5jACUPF_JDx" role="3cqZAp">
          <node concept="2OqwBi" id="5jACUPF_KkN" role="3clFbG">
            <node concept="2OqwBi" id="5jACUPF_JKz" role="2Oq$k0">
              <node concept="2WthIp" id="5jACUPF_JDw" role="2Oq$k0" />
              <node concept="2BZ7hE" id="5jACUPF_K6c" role="2OqNvi">
                <ref role="2WH_rO" node="5jACUPF_n3p" resolve="facade" />
              </node>
            </node>
            <node concept="liA8E" id="5jACUPF_KNA" role="2OqNvi">
              <ref role="37wK5l" node="5jACUPF_vta" resolve="stop" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3wAsKTk9819">
    <property role="TrG5h" value="WatcherFacade" />
    <property role="3GE5qa" value="debugger" />
    <node concept="2tJIrI" id="3wAsKTk981P" role="jymVt" />
    <node concept="Wx3nA" id="5jACUPF_MvU" role="jymVt">
      <property role="TrG5h" value="INSTANCE" />
      <node concept="3Tm6S6" id="5jACUPF_LQi" role="1B3o_S" />
      <node concept="10Nm6u" id="5jACUPF_NhJ" role="33vP2m" />
      <node concept="3uibUv" id="5jACUPF_N9z" role="1tU5fm">
        <ref role="3uigEE" node="3wAsKTk9819" resolve="WatcherFacade" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jACUPFHEVO" role="jymVt" />
    <node concept="2tJIrI" id="5jACUPFHF30" role="jymVt" />
    <node concept="2tJIrI" id="5jACUPF_Lg0" role="jymVt" />
    <node concept="3Tm1VV" id="3wAsKTk981a" role="1B3o_S" />
    <node concept="312cEg" id="5jACUPF_HQN" role="jymVt">
      <property role="TrG5h" value="myDevices" />
      <property role="3TUv4t" value="true" />
      <node concept="3rvAFt" id="5jACUPFArlv" role="1tU5fm">
        <node concept="2sp9CU" id="5jACUPFArXE" role="3rvQeY">
          <ref role="2sp9C9" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
        </node>
        <node concept="2hMVRd" id="5jACUPFAuuP" role="3rvSg0">
          <node concept="3uibUv" id="5jACUPFAuuR" role="2hN53Y">
            <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="5jACUPF_HQT" role="33vP2m">
        <node concept="3rGOSV" id="5jACUPFAw0K" role="2ShVmc">
          <node concept="2sp9CU" id="5jACUPFAx1o" role="3rHrn6">
            <ref role="2sp9C9" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
          </node>
          <node concept="2hMVRd" id="5jACUPFAxyh" role="3rHtpV">
            <node concept="3uibUv" id="5jACUPFAxyi" role="2hN53Y">
              <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5jACUPF_HQQ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5jACUPFA2XR" role="jymVt" />
    <node concept="312cEg" id="5jACUPFA7aZ" role="jymVt">
      <property role="TrG5h" value="myWatchedValueListeners" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="5jACUPFA4T3" role="1B3o_S" />
      <node concept="3rvAFt" id="5jACUPFA5LV" role="1tU5fm">
        <node concept="3uibUv" id="5jACUPFA5QQ" role="3rvQeY">
          <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
        </node>
        <node concept="2hMVRd" id="5jACUPFDZSP" role="3rvSg0">
          <node concept="3uibUv" id="5jACUPFDZSR" role="2hN53Y">
            <ref role="3uigEE" node="5jACUPF_hkq" resolve="WatchedValueListener" />
          </node>
        </node>
      </node>
      <node concept="2ShNRf" id="5jACUPFA7KI" role="33vP2m">
        <node concept="3rGOSV" id="5jACUPFA8hc" role="2ShVmc">
          <node concept="3uibUv" id="5jACUPFA8M6" role="3rHrn6">
            <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
          </node>
          <node concept="2hMVRd" id="5jACUPFE0jC" role="3rHtpV">
            <node concept="3uibUv" id="5jACUPFE0jE" role="2hN53Y">
              <ref role="3uigEE" node="5jACUPF_hkq" resolve="WatchedValueListener" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkkAYv" role="jymVt" />
    <node concept="2YIFZL" id="5jACUPF_QUm" role="jymVt">
      <property role="TrG5h" value="getInstance" />
      <node concept="3clFbS" id="5jACUPF_QUp" role="3clF47">
        <node concept="3cpWs6" id="5jACUPF_Rye" role="3cqZAp">
          <node concept="37vLTw" id="5jACUPFLO7K" role="3cqZAk">
            <ref role="3cqZAo" node="5jACUPF_MvU" resolve="INSTANCE" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5jACUPF_Q3d" role="1B3o_S" />
      <node concept="3uibUv" id="5jACUPF_QMo" role="3clF45">
        <ref role="3uigEE" node="3wAsKTk9819" resolve="WatcherFacade" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jACUPF_PrY" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_VLV" role="jymVt">
      <property role="TrG5h" value="watch" />
      <node concept="3clFbS" id="5jACUPF_VLZ" role="3clF47">
        <node concept="3cpWs8" id="4uvvnUOtvXg" role="3cqZAp">
          <node concept="3cpWsn" id="4uvvnUOtvXh" role="3cpWs9">
            <property role="TrG5h" value="device" />
            <node concept="3Tqbb2" id="4uvvnUOtvXa" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
            </node>
            <node concept="1PxgMI" id="4uvvnUOtvXi" role="33vP2m">
              <node concept="chp4Y" id="4uvvnUOtvXj" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
              </node>
              <node concept="2OqwBi" id="4uvvnUOtvXk" role="1m5AlR">
                <node concept="37vLTw" id="4uvvnUOtvXl" role="2Oq$k0">
                  <ref role="3cqZAo" node="4uvvnUOsQom" resolve="resource" />
                </node>
                <node concept="1mfA1w" id="4uvvnUOtvXm" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5jACUPFAzA4" role="3cqZAp">
          <node concept="3cpWsn" id="5jACUPFAzA5" role="3cpWs9">
            <property role="TrG5h" value="devicePtr" />
            <node concept="2sp9CU" id="5jACUPFAB4o" role="1tU5fm">
              <ref role="2sp9C9" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
            </node>
            <node concept="2OqwBi" id="4uvvnUOt1To" role="33vP2m">
              <node concept="37vLTw" id="4uvvnUOtvXn" role="2Oq$k0">
                <ref role="3cqZAo" node="4uvvnUOtvXh" resolve="device" />
              </node>
              <node concept="iZEcu" id="4uvvnUOt2$4" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="SfApY" id="4uvvnUOtx$l" role="3cqZAp">
          <node concept="3clFbS" id="4uvvnUOtx$n" role="SfCbr">
            <node concept="3cpWs8" id="4uvvnUOtyzC" role="3cqZAp">
              <node concept="3cpWsn" id="4uvvnUOtyzD" role="3cpWs9">
                <property role="TrG5h" value="attach" />
                <node concept="3uibUv" id="4uvvnUOtyzA" role="1tU5fm">
                  <ref role="3uigEE" node="3wAsKTk9bGj" resolve="ForteDeviceClient" />
                </node>
                <node concept="2YIFZM" id="4uvvnUOtyzE" role="33vP2m">
                  <ref role="37wK5l" node="3wAsKTkhPKR" resolve="attach" />
                  <ref role="1Pybhc" node="3wAsKTkhPuA" resolve="ForteDevicesFacade" />
                  <node concept="37vLTw" id="4uvvnUOtyzF" role="37wK5m">
                    <ref role="3cqZAo" node="4uvvnUOtvXh" resolve="device" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4uvvnUOtzk$" role="3cqZAp">
              <node concept="2OqwBi" id="4uvvnUOtzyI" role="3clFbG">
                <node concept="37vLTw" id="4uvvnUOtzky" role="2Oq$k0">
                  <ref role="3cqZAo" node="4uvvnUOtyzD" resolve="attach" />
                </node>
                <node concept="liA8E" id="4uvvnUOtzIY" role="2OqNvi">
                  <ref role="37wK5l" node="3wAsKTkgxxr" resolve="addWatch" />
                  <node concept="37vLTw" id="4uvvnUOtzYW" role="37wK5m">
                    <ref role="3cqZAo" node="4uvvnUOsQom" resolve="resource" />
                  </node>
                  <node concept="37vLTw" id="4uvvnUOt$v4" role="37wK5m">
                    <ref role="3cqZAo" node="4uvvnUOsWlf" resolve="functionBlock" />
                  </node>
                  <node concept="37vLTw" id="4uvvnUOtBWn" role="37wK5m">
                    <ref role="3cqZAo" node="4uvvnUOt$Ci" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="4uvvnUOtx$o" role="TEbGg">
            <node concept="3cpWsn" id="4uvvnUOtx$q" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="4uvvnUOtyQo" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="4uvvnUOtx$u" role="TDEfX">
              <node concept="RRSsy" id="4uvvnUOtCo6" role="3cqZAp">
                <property role="RRSoG" value="error" />
                <node concept="Xl_RD" id="4uvvnUOtCo8" role="RRSoy">
                  <property role="Xl_RC" value="on start watching" />
                </node>
                <node concept="37vLTw" id="4uvvnUOtCoa" role="RRSow">
                  <ref role="3cqZAo" node="4uvvnUOtx$q" resolve="e" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5jACUPFAChg" role="3cqZAp">
          <node concept="3cpWsn" id="5jACUPFAChh" role="3cpWs9">
            <property role="TrG5h" value="watchables" />
            <node concept="2hMVRd" id="5jACUPFACgX" role="1tU5fm">
              <node concept="3uibUv" id="5jACUPFACh0" role="2hN53Y">
                <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
              </node>
            </node>
            <node concept="3EllGN" id="5jACUPFAChi" role="33vP2m">
              <node concept="37vLTw" id="5jACUPFAChj" role="3ElVtu">
                <ref role="3cqZAo" node="5jACUPFAzA5" resolve="devicePtr" />
              </node>
              <node concept="37vLTw" id="5jACUPFAChk" role="3ElQJh">
                <ref role="3cqZAo" node="5jACUPF_HQN" resolve="myDevices" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jACUPFAFs8" role="3cqZAp">
          <node concept="3clFbS" id="5jACUPFAFsa" role="3clFbx">
            <node concept="3clFbF" id="6K_0vqjmHWd" role="3cqZAp">
              <node concept="37vLTI" id="6K_0vqjmHWf" role="3clFbG">
                <node concept="3EllGN" id="6K_0vqjmHWj" role="37vLTJ">
                  <node concept="37vLTw" id="6K_0vqjmHWk" role="3ElVtu">
                    <ref role="3cqZAo" node="5jACUPFAzA5" resolve="devicePtr" />
                  </node>
                  <node concept="37vLTw" id="6K_0vqjmHWl" role="3ElQJh">
                    <ref role="3cqZAo" node="5jACUPF_HQN" resolve="myDevices" />
                  </node>
                </node>
                <node concept="37vLTI" id="6K_0vqjmM6I" role="37vLTx">
                  <node concept="37vLTw" id="5jACUPFAK5p" role="37vLTJ">
                    <ref role="3cqZAo" node="5jACUPFAChh" resolve="watchables" />
                  </node>
                  <node concept="2ShNRf" id="6K_0vqjmMfS" role="37vLTx">
                    <node concept="2i4dXS" id="6K_0vqjmMfT" role="2ShVmc">
                      <node concept="3uibUv" id="6K_0vqjmMfU" role="HW$YZ">
                        <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="6K_0vqjmMwU" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="5jACUPFAJWg" role="3clFbw">
            <node concept="10Nm6u" id="5jACUPFAJWX" role="3uHU7w" />
            <node concept="37vLTw" id="5jACUPFAFxz" role="3uHU7B">
              <ref role="3cqZAo" node="5jACUPFAChh" resolve="watchables" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jACUPFB36z" role="3cqZAp">
          <node concept="2OqwBi" id="5jACUPFB3KX" role="3clFbG">
            <node concept="37vLTw" id="5jACUPFB36x" role="2Oq$k0">
              <ref role="3cqZAo" node="5jACUPFAChh" resolve="watchables" />
            </node>
            <node concept="TSZUe" id="5jACUPFBkDY" role="2OqNvi">
              <node concept="1rXfSq" id="4uvvnUOtCE8" role="25WWJ7">
                <ref role="37wK5l" node="6K_0vqjdycD" resolve="watchable" />
                <node concept="37vLTw" id="6K_0vqj6caE" role="37wK5m">
                  <ref role="3cqZAo" node="4uvvnUOsQom" resolve="resource" />
                </node>
                <node concept="37vLTw" id="4uvvnUOtDga" role="37wK5m">
                  <ref role="3cqZAo" node="4uvvnUOsWlf" resolve="functionBlock" />
                </node>
                <node concept="37vLTw" id="4uvvnUOtDMM" role="37wK5m">
                  <ref role="3cqZAo" node="4uvvnUOt$Ci" resolve="port" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5jACUPF_VM6" role="3clF45" />
      <node concept="3Tm1VV" id="5jACUPF_VM5" role="1B3o_S" />
      <node concept="37vLTG" id="4uvvnUOsQom" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="4uvvnUOsTM6" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="4uvvnUOsWlf" role="3clF46">
        <property role="TrG5h" value="functionBlock" />
        <node concept="3Tqbb2" id="4uvvnUOt4fL" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="4uvvnUOt$Ci" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="17QB3L" id="4uvvnUOtBz1" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jACUPFAmY2" role="jymVt" />
    <node concept="3clFb_" id="5jACUPFAos4" role="jymVt">
      <property role="TrG5h" value="unwatch" />
      <node concept="37vLTG" id="4uvvnUOtEaV" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="4uvvnUOtEaW" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="5jACUPFAp52" role="3clF46">
        <property role="TrG5h" value="functionBlock" />
        <node concept="3Tqbb2" id="5jACUPFAp53" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="5jACUPFAp54" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="17QB3L" id="5jACUPFAp55" role="1tU5fm" />
      </node>
      <node concept="3clFbS" id="5jACUPFAos7" role="3clF47">
        <node concept="3cpWs8" id="4uvvnUOtIv$" role="3cqZAp">
          <node concept="3cpWsn" id="4uvvnUOtIv_" role="3cpWs9">
            <property role="TrG5h" value="device" />
            <node concept="3Tqbb2" id="4uvvnUOtIvA" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
            </node>
            <node concept="1PxgMI" id="4uvvnUOtIvB" role="33vP2m">
              <node concept="chp4Y" id="4uvvnUOtIvC" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
              </node>
              <node concept="2OqwBi" id="4uvvnUOtIvD" role="1m5AlR">
                <node concept="37vLTw" id="4uvvnUOtIvE" role="2Oq$k0">
                  <ref role="3cqZAo" node="4uvvnUOtEaV" resolve="resource" />
                </node>
                <node concept="1mfA1w" id="4uvvnUOtIvF" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4uvvnUOtIvG" role="3cqZAp">
          <node concept="3cpWsn" id="4uvvnUOtIvH" role="3cpWs9">
            <property role="TrG5h" value="devicePtr" />
            <node concept="2sp9CU" id="4uvvnUOtIvI" role="1tU5fm">
              <ref role="2sp9C9" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
            </node>
            <node concept="2OqwBi" id="4uvvnUOtIvJ" role="33vP2m">
              <node concept="37vLTw" id="4uvvnUOtIvK" role="2Oq$k0">
                <ref role="3cqZAo" node="4uvvnUOtIv_" resolve="device" />
              </node>
              <node concept="iZEcu" id="4uvvnUOtIvL" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="SfApY" id="4uvvnUOtIvM" role="3cqZAp">
          <node concept="3clFbS" id="4uvvnUOtIvN" role="SfCbr">
            <node concept="3cpWs8" id="4uvvnUOtIvO" role="3cqZAp">
              <node concept="3cpWsn" id="4uvvnUOtIvP" role="3cpWs9">
                <property role="TrG5h" value="attach" />
                <node concept="3uibUv" id="4uvvnUOtIvQ" role="1tU5fm">
                  <ref role="3uigEE" node="3wAsKTk9bGj" resolve="ForteDeviceClient" />
                </node>
                <node concept="2YIFZM" id="4uvvnUOtIvR" role="33vP2m">
                  <ref role="1Pybhc" node="3wAsKTkhPuA" resolve="ForteDevicesFacade" />
                  <ref role="37wK5l" node="3wAsKTkhPKR" resolve="attach" />
                  <node concept="37vLTw" id="4uvvnUOtIvS" role="37wK5m">
                    <ref role="3cqZAo" node="4uvvnUOtIv_" resolve="device" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4uvvnUOtIvT" role="3cqZAp">
              <node concept="2OqwBi" id="4uvvnUOtIvU" role="3clFbG">
                <node concept="37vLTw" id="4uvvnUOtIvV" role="2Oq$k0">
                  <ref role="3cqZAo" node="4uvvnUOtIvP" resolve="attach" />
                </node>
                <node concept="liA8E" id="4uvvnUOtIvW" role="2OqNvi">
                  <ref role="37wK5l" node="3wAsKTkh1jo" resolve="removeWatch" />
                  <node concept="37vLTw" id="4uvvnUOtIvX" role="37wK5m">
                    <ref role="3cqZAo" node="4uvvnUOtEaV" resolve="resource" />
                  </node>
                  <node concept="37vLTw" id="4uvvnUOtIvY" role="37wK5m">
                    <ref role="3cqZAo" node="5jACUPFAp52" resolve="functionBlock" />
                  </node>
                  <node concept="37vLTw" id="4uvvnUOtIvZ" role="37wK5m">
                    <ref role="3cqZAo" node="5jACUPFAp54" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="4uvvnUOtIw0" role="TEbGg">
            <node concept="3cpWsn" id="4uvvnUOtIw1" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="4uvvnUOtIw2" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="4uvvnUOtIw3" role="TDEfX">
              <node concept="RRSsy" id="4uvvnUOtIw4" role="3cqZAp">
                <property role="RRSoG" value="error" />
                <node concept="Xl_RD" id="4uvvnUOtIw5" role="RRSoy">
                  <property role="Xl_RC" value="on remove watching" />
                </node>
                <node concept="37vLTw" id="4uvvnUOtIw6" role="RRSow">
                  <ref role="3cqZAo" node="4uvvnUOtIw1" resolve="e" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5jACUPFBnUe" role="3cqZAp">
          <node concept="3cpWsn" id="5jACUPFBnUf" role="3cpWs9">
            <property role="TrG5h" value="watchables" />
            <node concept="2hMVRd" id="5jACUPFBnUg" role="1tU5fm">
              <node concept="3uibUv" id="5jACUPFBnUh" role="2hN53Y">
                <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
              </node>
            </node>
            <node concept="3EllGN" id="5jACUPFBnUi" role="33vP2m">
              <node concept="37vLTw" id="4uvvnUOtJxZ" role="3ElVtu">
                <ref role="3cqZAo" node="4uvvnUOtIvH" resolve="devicePtr" />
              </node>
              <node concept="37vLTw" id="5jACUPFBnUk" role="3ElQJh">
                <ref role="3cqZAo" node="5jACUPF_HQN" resolve="myDevices" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jACUPFBnUl" role="3cqZAp">
          <node concept="3clFbS" id="5jACUPFBnUm" role="3clFbx">
            <node concept="3cpWs6" id="5jACUPFBou0" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="5jACUPFBnUx" role="3clFbw">
            <node concept="10Nm6u" id="5jACUPFBnUy" role="3uHU7w" />
            <node concept="37vLTw" id="5jACUPFBnUz" role="3uHU7B">
              <ref role="3cqZAo" node="5jACUPFBnUf" resolve="watchables" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jACUPFBptF" role="3cqZAp">
          <node concept="2OqwBi" id="5jACUPFBqaI" role="3clFbG">
            <node concept="37vLTw" id="5jACUPFBptD" role="2Oq$k0">
              <ref role="3cqZAo" node="5jACUPFBnUf" resolve="watchables" />
            </node>
            <node concept="3dhRuq" id="5jACUPFBF7B" role="2OqNvi">
              <node concept="1rXfSq" id="5jACUPFDd7D" role="25WWJ7">
                <ref role="37wK5l" node="6K_0vqjdycD" resolve="watchable" />
                <node concept="37vLTw" id="6K_0vqj6aAY" role="37wK5m">
                  <ref role="3cqZAo" node="4uvvnUOtEaV" resolve="resource" />
                </node>
                <node concept="37vLTw" id="5jACUPFDd7B" role="37wK5m">
                  <ref role="3cqZAo" node="5jACUPFAp52" resolve="functionBlock" />
                </node>
                <node concept="37vLTw" id="5jACUPFDd7C" role="37wK5m">
                  <ref role="3cqZAo" node="5jACUPFAp54" resolve="port" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jACUPFBO6a" role="3cqZAp">
          <node concept="3clFbS" id="5jACUPFBO6c" role="3clFbx">
            <node concept="3clFbF" id="5jACUPFC6t8" role="3cqZAp">
              <node concept="2OqwBi" id="5jACUPFC6OV" role="3clFbG">
                <node concept="37vLTw" id="5jACUPFC6t6" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jACUPF_HQN" resolve="myDevices" />
                </node>
                <node concept="kI3uX" id="5jACUPFCh2d" role="2OqNvi">
                  <node concept="37vLTw" id="4uvvnUOtKEz" role="kIiFs">
                    <ref role="3cqZAo" node="4uvvnUOtIvH" resolve="devicePtr" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5jACUPFBPxU" role="3clFbw">
            <node concept="37vLTw" id="5jACUPFBOJ_" role="2Oq$k0">
              <ref role="3cqZAo" node="5jACUPFBnUf" resolve="watchables" />
            </node>
            <node concept="1v1jN8" id="5jACUPFC6l1" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5jACUPFAnIm" role="1B3o_S" />
      <node concept="3cqZAl" id="5jACUPFAoqr" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3wAsKTkkD8j" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_X3O" role="jymVt">
      <property role="TrG5h" value="isWatched" />
      <node concept="3clFbS" id="5jACUPF_X3Q" role="3clF47">
        <node concept="3cpWs8" id="5jACUPFCtc6" role="3cqZAp">
          <node concept="3cpWsn" id="5jACUPFCtc7" role="3cpWs9">
            <property role="TrG5h" value="device" />
            <node concept="2sp9CU" id="5jACUPFCtc5" role="1tU5fm">
              <ref role="2sp9C9" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
            </node>
            <node concept="2OqwBi" id="6K_0vqj64c3" role="33vP2m">
              <node concept="1PxgMI" id="6K_0vqj5Y4y" role="2Oq$k0">
                <node concept="chp4Y" id="6K_0vqj610a" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
                </node>
                <node concept="2OqwBi" id="6K_0vqj5Ewg" role="1m5AlR">
                  <node concept="37vLTw" id="6K_0vqj5B6g" role="2Oq$k0">
                    <ref role="3cqZAo" node="6K_0vqj5piU" resolve="resource" />
                  </node>
                  <node concept="1mfA1w" id="6K_0vqj5IcB" role="2OqNvi" />
                </node>
              </node>
              <node concept="iZEcu" id="6K_0vqj67pi" role="2OqNvi" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5jACUPFCuGj" role="3cqZAp">
          <node concept="3cpWsn" id="5jACUPFCuGk" role="3cpWs9">
            <property role="TrG5h" value="watchables" />
            <node concept="2hMVRd" id="5jACUPFCuGe" role="1tU5fm">
              <node concept="3uibUv" id="5jACUPFCuGh" role="2hN53Y">
                <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
              </node>
            </node>
            <node concept="3EllGN" id="5jACUPFCuGl" role="33vP2m">
              <node concept="37vLTw" id="5jACUPFCuGm" role="3ElVtu">
                <ref role="3cqZAo" node="5jACUPFCtc7" resolve="device" />
              </node>
              <node concept="37vLTw" id="5jACUPFCuGn" role="3ElQJh">
                <ref role="3cqZAo" node="5jACUPF_HQN" resolve="myDevices" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5jACUPFCyNe" role="3cqZAp">
          <node concept="1Wc70l" id="5jACUPFCGTw" role="3cqZAk">
            <node concept="2OqwBi" id="5jACUPFCL6o" role="3uHU7w">
              <node concept="37vLTw" id="5jACUPFCItp" role="2Oq$k0">
                <ref role="3cqZAo" node="5jACUPFCuGk" resolve="watchables" />
              </node>
              <node concept="3JPx81" id="5jACUPFCZdC" role="2OqNvi">
                <node concept="1rXfSq" id="5jACUPFDbYb" role="25WWJ7">
                  <ref role="37wK5l" node="6K_0vqjdycD" resolve="watchable" />
                  <node concept="37vLTw" id="6K_0vqj5sXz" role="37wK5m">
                    <ref role="3cqZAo" node="6K_0vqj5piU" resolve="resource" />
                  </node>
                  <node concept="37vLTw" id="5jACUPFDbY9" role="37wK5m">
                    <ref role="3cqZAo" node="5jACUPFApEf" resolve="functionBlock" />
                  </node>
                  <node concept="37vLTw" id="5jACUPFDbYa" role="37wK5m">
                    <ref role="3cqZAo" node="5jACUPFApEh" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="5jACUPFCDMn" role="3uHU7B">
              <node concept="37vLTw" id="5jACUPFCCg2" role="3uHU7B">
                <ref role="3cqZAo" node="5jACUPFCuGk" resolve="watchables" />
              </node>
              <node concept="10Nm6u" id="5jACUPFCFKU" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="5jACUPF_X3X" role="3clF45" />
      <node concept="37vLTG" id="6K_0vqj5piU" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="6K_0vqj5piV" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="5jACUPFApEf" role="3clF46">
        <property role="TrG5h" value="functionBlock" />
        <node concept="3Tqbb2" id="5jACUPFApEg" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="5jACUPFApEh" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="17QB3L" id="5jACUPFApEi" role="1tU5fm" />
      </node>
      <node concept="3Tm1VV" id="5jACUPF_X3W" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5jACUPFCqEC" role="jymVt" />
    <node concept="2YIFZL" id="6K_0vqjdycD" role="jymVt">
      <property role="TrG5h" value="watchable" />
      <node concept="3clFbS" id="6K_0vqjdycN" role="3clF47">
        <node concept="3cpWs6" id="6K_0vqjdycO" role="3cqZAp">
          <node concept="2ShNRf" id="6K_0vqjdycP" role="3cqZAk">
            <node concept="1pGfFk" id="6K_0vqjdycQ" role="2ShVmc">
              <ref role="37wK5l" node="3wAsKTkjS1E" resolve="Watchable" />
              <node concept="2OqwBi" id="6K_0vqjdycR" role="37wK5m">
                <node concept="37vLTw" id="6K_0vqjdycS" role="2Oq$k0">
                  <ref role="3cqZAo" node="6K_0vqjdycH" resolve="resource" />
                </node>
                <node concept="iZEcu" id="6K_0vqjdycT" role="2OqNvi" />
              </node>
              <node concept="2OqwBi" id="6K_0vqjdycU" role="37wK5m">
                <node concept="37vLTw" id="6K_0vqjdycV" role="2Oq$k0">
                  <ref role="3cqZAo" node="6K_0vqjdycJ" resolve="functionBlock" />
                </node>
                <node concept="iZEcu" id="6K_0vqjdycW" role="2OqNvi" />
              </node>
              <node concept="37vLTw" id="6K_0vqjdycX" role="37wK5m">
                <ref role="3cqZAo" node="6K_0vqjdycL" resolve="port" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6K_0vqjdycG" role="3clF45">
        <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
      </node>
      <node concept="37vLTG" id="6K_0vqjdycH" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="6K_0vqjdycI" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="6K_0vqjdycJ" role="3clF46">
        <property role="TrG5h" value="functionBlock" />
        <node concept="3Tqbb2" id="6K_0vqjdycK" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
        </node>
      </node>
      <node concept="37vLTG" id="6K_0vqjdycL" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="17QB3L" id="6K_0vqjdycM" role="1tU5fm" />
      </node>
      <node concept="3Tm6S6" id="6K_0vqjdycF" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5jACUPFDzji" role="jymVt" />
    <node concept="3clFb_" id="5jACUPFDAmD" role="jymVt">
      <property role="TrG5h" value="addWatchedValueListener" />
      <node concept="3clFbS" id="5jACUPFDAmG" role="3clF47">
        <node concept="3cpWs8" id="5jACUPFDOkC" role="3cqZAp">
          <node concept="3cpWsn" id="5jACUPFDOkD" role="3cpWs9">
            <property role="TrG5h" value="listeners" />
            <node concept="2hMVRd" id="5jACUPFE0B3" role="1tU5fm">
              <node concept="3uibUv" id="5jACUPFE0B5" role="2hN53Y">
                <ref role="3uigEE" node="5jACUPF_hkq" resolve="WatchedValueListener" />
              </node>
            </node>
            <node concept="3EllGN" id="5jACUPFDOkE" role="33vP2m">
              <node concept="37vLTw" id="5jACUPFDOkF" role="3ElVtu">
                <ref role="3cqZAo" node="5jACUPFDCvF" resolve="watchable" />
              </node>
              <node concept="37vLTw" id="5jACUPFDOkG" role="3ElQJh">
                <ref role="3cqZAo" node="5jACUPFA7aZ" resolve="myWatchedValueListeners" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jACUPFDOdV" role="3cqZAp">
          <node concept="3clFbS" id="5jACUPFDOdX" role="3clFbx">
            <node concept="3clFbF" id="5jACUPFDSfn" role="3cqZAp">
              <node concept="37vLTI" id="5jACUPFDX5L" role="3clFbG">
                <node concept="37vLTI" id="6K_0vqjmNFo" role="37vLTx">
                  <node concept="37vLTw" id="6K_0vqjmOhJ" role="37vLTJ">
                    <ref role="3cqZAo" node="5jACUPFDOkD" resolve="listeners" />
                  </node>
                  <node concept="2ShNRf" id="5jACUPFDXhB" role="37vLTx">
                    <node concept="2i4dXS" id="5jACUPFDYOU" role="2ShVmc">
                      <node concept="3uibUv" id="5jACUPFDZ$U" role="HW$YZ">
                        <ref role="3uigEE" node="5jACUPF_hkq" resolve="WatchedValueListener" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3EllGN" id="5jACUPFDW8K" role="37vLTJ">
                  <node concept="37vLTw" id="5jACUPFDWkX" role="3ElVtu">
                    <ref role="3cqZAo" node="5jACUPFDCvF" resolve="watchable" />
                  </node>
                  <node concept="37vLTw" id="5jACUPFDVyN" role="3ElQJh">
                    <ref role="3cqZAo" node="5jACUPFA7aZ" resolve="myWatchedValueListeners" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="5jACUPFDRTJ" role="3clFbw">
            <node concept="10Nm6u" id="5jACUPFDSaS" role="3uHU7w" />
            <node concept="37vLTw" id="5jACUPFDOPt" role="3uHU7B">
              <ref role="3cqZAo" node="5jACUPFDOkD" resolve="listeners" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jACUPFE0WH" role="3cqZAp">
          <node concept="2OqwBi" id="5jACUPFE1B0" role="3clFbG">
            <node concept="37vLTw" id="5jACUPFE0WF" role="2Oq$k0">
              <ref role="3cqZAo" node="5jACUPFDOkD" resolve="listeners" />
            </node>
            <node concept="TSZUe" id="5jACUPFEeg3" role="2OqNvi">
              <node concept="37vLTw" id="5jACUPFEez_" role="25WWJ7">
                <ref role="3cqZAo" node="5jACUPFDHNn" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5jACUPFET7r" role="1B3o_S" />
      <node concept="3cqZAl" id="5jACUPFDAhu" role="3clF45" />
      <node concept="37vLTG" id="5jACUPFDCvF" role="3clF46">
        <property role="TrG5h" value="watchable" />
        <node concept="3uibUv" id="5jACUPFDDY1" role="1tU5fm">
          <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
        </node>
      </node>
      <node concept="37vLTG" id="5jACUPFDHNn" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="5jACUPFDIYk" role="1tU5fm">
          <ref role="3uigEE" node="5jACUPF_hkq" resolve="WatchedValueListener" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jACUPFEXBj" role="jymVt" />
    <node concept="3clFb_" id="5jACUPFDJsw" role="jymVt">
      <property role="TrG5h" value="removeWatchedValueListener" />
      <node concept="3clFbS" id="5jACUPFDJsx" role="3clF47">
        <node concept="3cpWs8" id="5jACUPFEeF5" role="3cqZAp">
          <node concept="3cpWsn" id="5jACUPFEeF6" role="3cpWs9">
            <property role="TrG5h" value="listeners" />
            <node concept="2hMVRd" id="5jACUPFEeF7" role="1tU5fm">
              <node concept="3uibUv" id="5jACUPFEeF8" role="2hN53Y">
                <ref role="3uigEE" node="5jACUPF_hkq" resolve="WatchedValueListener" />
              </node>
            </node>
            <node concept="3EllGN" id="5jACUPFEeF9" role="33vP2m">
              <node concept="37vLTw" id="5jACUPFEeFa" role="3ElVtu">
                <ref role="3cqZAo" node="5jACUPFDJs$" resolve="watchable" />
              </node>
              <node concept="37vLTw" id="5jACUPFEeFb" role="3ElQJh">
                <ref role="3cqZAo" node="5jACUPFA7aZ" resolve="myWatchedValueListeners" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jACUPFEeFc" role="3cqZAp">
          <node concept="3clFbS" id="5jACUPFEeFd" role="3clFbx">
            <node concept="3cpWs6" id="5jACUPFEf0a" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="5jACUPFEeFo" role="3clFbw">
            <node concept="10Nm6u" id="5jACUPFEeFp" role="3uHU7w" />
            <node concept="37vLTw" id="5jACUPFEeFq" role="3uHU7B">
              <ref role="3cqZAo" node="5jACUPFEeF6" resolve="listeners" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5jACUPFEfvI" role="3cqZAp">
          <node concept="2OqwBi" id="5jACUPFEgp5" role="3clFbG">
            <node concept="37vLTw" id="5jACUPFEfvG" role="2Oq$k0">
              <ref role="3cqZAo" node="5jACUPFEeF6" resolve="listeners" />
            </node>
            <node concept="3dhRuq" id="5jACUPFEt2M" role="2OqNvi">
              <node concept="37vLTw" id="5jACUPFEtmN" role="25WWJ7">
                <ref role="3cqZAo" node="5jACUPFDJsA" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5jACUPFEvh6" role="3cqZAp">
          <node concept="3clFbS" id="5jACUPFEvh8" role="3clFbx">
            <node concept="3clFbF" id="5jACUPFEHX0" role="3cqZAp">
              <node concept="2OqwBi" id="5jACUPFEIr9" role="3clFbG">
                <node concept="37vLTw" id="5jACUPFEHWY" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jACUPFA7aZ" resolve="myWatchedValueListeners" />
                </node>
                <node concept="kI3uX" id="5jACUPFESEj" role="2OqNvi">
                  <node concept="37vLTw" id="5jACUPFESKd" role="kIiFs">
                    <ref role="3cqZAo" node="5jACUPFDJs$" resolve="watchable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5jACUPFExeK" role="3clFbw">
            <node concept="37vLTw" id="5jACUPFEwzE" role="2Oq$k0">
              <ref role="3cqZAo" node="5jACUPFEeF6" resolve="listeners" />
            </node>
            <node concept="1v1jN8" id="5jACUPFEHOB" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5jACUPFEV2e" role="1B3o_S" />
      <node concept="3cqZAl" id="5jACUPFDJsz" role="3clF45" />
      <node concept="37vLTG" id="5jACUPFDJs$" role="3clF46">
        <property role="TrG5h" value="watchable" />
        <node concept="3uibUv" id="5jACUPFDJs_" role="1tU5fm">
          <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
        </node>
      </node>
      <node concept="37vLTG" id="5jACUPFDJsA" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="5jACUPFDJsB" role="1tU5fm">
          <ref role="3uigEE" node="5jACUPF_hkq" resolve="WatchedValueListener" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6K_0vqj8ybz" role="jymVt" />
    <node concept="2YIFZL" id="6VfPrztaQyR" role="jymVt">
      <property role="TrG5h" value="resolveWatches" />
      <node concept="3clFbS" id="6VfPrztaQyU" role="3clF47">
        <node concept="SfApY" id="5jACUPF$7Zm" role="3cqZAp">
          <node concept="TDmWw" id="5jACUPF$j_L" role="TEbGg">
            <node concept="3cpWsn" id="5jACUPF$j_M" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="5jACUPF$jV2" role="1tU5fm">
                <ref role="3uigEE" to="mmaq:~JDOMException" resolve="JDOMException" />
              </node>
            </node>
            <node concept="3clFbS" id="5jACUPF$j_O" role="TDEfX">
              <node concept="RRSsy" id="5jACUPF$kek" role="3cqZAp">
                <property role="RRSoG" value="error" />
                <node concept="37vLTw" id="5jACUPF$kel" role="RRSow">
                  <ref role="3cqZAo" node="5jACUPF$j_M" resolve="e" />
                </node>
                <node concept="Xl_RD" id="5jACUPF$kem" role="RRSoy">
                  <property role="Xl_RC" value="can't resolve watches" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="5jACUPF$7Zo" role="SfCbr">
            <node concept="3cpWs8" id="5jACUPF$6j4" role="3cqZAp">
              <node concept="3cpWsn" id="5jACUPF$6j5" role="3cpWs9">
                <property role="TrG5h" value="doc" />
                <node concept="3uibUv" id="5jACUPF$6iS" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Document" resolve="Document" />
                </node>
                <node concept="2YIFZM" id="5jACUPF$6j6" role="33vP2m">
                  <ref role="37wK5l" to="18ew:~JDOMUtil.loadDocument(java.io.InputStream):org.jdom.Document" resolve="loadDocument" />
                  <ref role="1Pybhc" to="18ew:~JDOMUtil" resolve="JDOMUtil" />
                  <node concept="2ShNRf" id="5jACUPF$6j7" role="37wK5m">
                    <node concept="1pGfFk" id="5jACUPF$6j8" role="2ShVmc">
                      <ref role="37wK5l" to="guwi:~ByteArrayInputStream.&lt;init&gt;(byte[])" resolve="ByteArrayInputStream" />
                      <node concept="2OqwBi" id="5jACUPF$6j9" role="37wK5m">
                        <node concept="37vLTw" id="5jACUPF$6ja" role="2Oq$k0">
                          <ref role="3cqZAo" node="6VfPrztaRiv" resolve="watch" />
                        </node>
                        <node concept="liA8E" id="5jACUPF$6jb" role="2OqNvi">
                          <ref role="37wK5l" to="wyt6:~String.getBytes():byte[]" resolve="getBytes" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5jACUPF$7Zn" role="3cqZAp" />
            <node concept="3cpWs8" id="5jACUPF$oIl" role="3cqZAp">
              <node concept="3cpWsn" id="5jACUPF$oIo" role="3cpWs9">
                <property role="TrG5h" value="watches" />
                <node concept="3rvAFt" id="5jACUPF_33G" role="1tU5fm">
                  <node concept="3uibUv" id="5jACUPF_3lA" role="3rvQeY">
                    <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
                  </node>
                  <node concept="17QB3L" id="5jACUPF_3Dx" role="3rvSg0" />
                </node>
                <node concept="2ShNRf" id="5jACUPF$wM5" role="33vP2m">
                  <node concept="3rGOSV" id="5jACUPF_54x" role="2ShVmc">
                    <node concept="3uibUv" id="5jACUPF_5nc" role="3rHrn6">
                      <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
                    </node>
                    <node concept="17QB3L" id="5jACUPF_5Bi" role="3rHtpV" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5jACUPF$oxh" role="3cqZAp" />
            <node concept="3cpWs8" id="6K_0vqj6o27" role="3cqZAp">
              <node concept="3cpWsn" id="6K_0vqj6o28" role="3cpWs9">
                <property role="TrG5h" value="watchesElement" />
                <node concept="3uibUv" id="6K_0vqj6o1P" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                </node>
                <node concept="2OqwBi" id="6K_0vqj6o29" role="33vP2m">
                  <node concept="2OqwBi" id="6K_0vqj6o2a" role="2Oq$k0">
                    <node concept="37vLTw" id="6K_0vqj6o2b" role="2Oq$k0">
                      <ref role="3cqZAo" node="5jACUPF$6j5" resolve="doc" />
                    </node>
                    <node concept="liA8E" id="6K_0vqj6o2c" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Document.getRootElement():org.jdom.Element" resolve="getRootElement" />
                    </node>
                  </node>
                  <node concept="liA8E" id="6K_0vqj6o2d" role="2OqNvi">
                    <ref role="37wK5l" to="mmaq:~Element.getChild(java.lang.String):org.jdom.Element" resolve="getChild" />
                    <node concept="Xl_RD" id="6K_0vqj6o2e" role="37wK5m">
                      <property role="Xl_RC" value="Watches" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="6K_0vqj6pcG" role="3cqZAp">
              <node concept="2GrKxI" id="6K_0vqj6pcI" role="2Gsz3X">
                <property role="TrG5h" value="resourceElement" />
              </node>
              <node concept="2OqwBi" id="6K_0vqj6qs2" role="2GsD0m">
                <node concept="37vLTw" id="6K_0vqj6pOp" role="2Oq$k0">
                  <ref role="3cqZAo" node="6K_0vqj6o28" resolve="watchesElement" />
                </node>
                <node concept="liA8E" id="6K_0vqj6xuV" role="2OqNvi">
                  <ref role="37wK5l" to="mmaq:~Element.getChildren(java.lang.String):java.util.List" resolve="getChildren" />
                  <node concept="Xl_RD" id="6K_0vqj6xPL" role="37wK5m">
                    <property role="Xl_RC" value="Resource" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="6K_0vqj6pcM" role="2LFqv$">
                <node concept="3cpWs8" id="6K_0vqj6Utg" role="3cqZAp">
                  <node concept="3cpWsn" id="6K_0vqj6Utj" role="3cpWs9">
                    <property role="TrG5h" value="resourceName" />
                    <node concept="17QB3L" id="6K_0vqj6Ute" role="1tU5fm" />
                    <node concept="2OqwBi" id="6K_0vqj6VCU" role="33vP2m">
                      <node concept="2GrUjf" id="6K_0vqj6UXY" role="2Oq$k0">
                        <ref role="2Gs0qQ" node="6K_0vqj6pcI" resolve="resourceElement" />
                      </node>
                      <node concept="liA8E" id="6K_0vqj7vH0" role="2OqNvi">
                        <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                        <node concept="Xl_RD" id="6K_0vqj7w1d" role="37wK5m">
                          <property role="Xl_RC" value="name" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="6K_0vqjbfz4" role="3cqZAp">
                  <node concept="3cpWsn" id="6K_0vqjbfz5" role="3cpWs9">
                    <property role="TrG5h" value="resource" />
                    <node concept="3Tqbb2" id="6K_0vqjbhK5" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
                    </node>
                    <node concept="2OqwBi" id="6K_0vqjbfz7" role="33vP2m">
                      <node concept="2OqwBi" id="6K_0vqjbfz8" role="2Oq$k0">
                        <node concept="37vLTw" id="6K_0vqjbfz9" role="2Oq$k0">
                          <ref role="3cqZAo" node="6K_0vqj9HS6" resolve="device" />
                        </node>
                        <node concept="3Tsc0h" id="6K_0vqjbfza" role="2OqNvi">
                          <ref role="3TtcxE" to="xiqq:1WTKUmKKVPK" resolve="resources" />
                        </node>
                      </node>
                      <node concept="1z4cxt" id="6K_0vqjbfzb" role="2OqNvi">
                        <node concept="1bVj0M" id="6K_0vqjbfzc" role="23t8la">
                          <node concept="3clFbS" id="6K_0vqjbfzd" role="1bW5cS">
                            <node concept="3clFbF" id="6K_0vqjbfze" role="3cqZAp">
                              <node concept="17R0WA" id="6K_0vqjbfzf" role="3clFbG">
                                <node concept="37vLTw" id="6K_0vqjbfzg" role="3uHU7w">
                                  <ref role="3cqZAo" node="6K_0vqj6Utj" resolve="resourceName" />
                                </node>
                                <node concept="2OqwBi" id="6K_0vqjbfzh" role="3uHU7B">
                                  <node concept="37vLTw" id="6K_0vqjbfzi" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6K_0vqjbfzk" resolve="it" />
                                  </node>
                                  <node concept="3TrcHB" id="6K_0vqjbfzj" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="6K_0vqjbfzk" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="6K_0vqjbfzl" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2Gpval" id="6K_0vqj6yC9" role="3cqZAp">
                  <node concept="2GrKxI" id="6K_0vqj6yCa" role="2Gsz3X">
                    <property role="TrG5h" value="fbElement" />
                  </node>
                  <node concept="2OqwBi" id="6K_0vqj6zeP" role="2GsD0m">
                    <node concept="2GrUjf" id="6K_0vqj6z7J" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="6K_0vqj6pcI" resolve="resourceElement" />
                    </node>
                    <node concept="liA8E" id="6K_0vqj6Tb3" role="2OqNvi">
                      <ref role="37wK5l" to="mmaq:~Element.getChildren(java.lang.String):java.util.List" resolve="getChildren" />
                      <node concept="Xl_RD" id="6K_0vqj6TCm" role="37wK5m">
                        <property role="Xl_RC" value="FB" />
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="6K_0vqj6yCc" role="2LFqv$">
                    <node concept="3cpWs8" id="6K_0vqj7wsN" role="3cqZAp">
                      <node concept="3cpWsn" id="6K_0vqj7wsO" role="3cpWs9">
                        <property role="TrG5h" value="fbName" />
                        <node concept="17QB3L" id="6K_0vqj7wsP" role="1tU5fm" />
                        <node concept="2OqwBi" id="6K_0vqj7wsQ" role="33vP2m">
                          <node concept="2GrUjf" id="6K_0vqj7xcQ" role="2Oq$k0">
                            <ref role="2Gs0qQ" node="6K_0vqj6yCa" resolve="fbElement" />
                          </node>
                          <node concept="liA8E" id="6K_0vqj7wsS" role="2OqNvi">
                            <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                            <node concept="Xl_RD" id="6K_0vqj7wsT" role="37wK5m">
                              <property role="Xl_RC" value="name" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="6K_0vqjbi1H" role="3cqZAp">
                      <node concept="3cpWsn" id="6K_0vqjbi1I" role="3cpWs9">
                        <property role="TrG5h" value="fb" />
                        <node concept="3Tqbb2" id="6K_0vqjbi1J" role="1tU5fm">
                          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                        </node>
                        <node concept="2OqwBi" id="6K_0vqjbi1K" role="33vP2m">
                          <node concept="2OqwBi" id="6K_0vqjbi1L" role="2Oq$k0">
                            <node concept="37vLTw" id="6K_0vqjbjSc" role="2Oq$k0">
                              <ref role="3cqZAo" node="6K_0vqjbfz5" resolve="resource" />
                            </node>
                            <node concept="2qgKlT" id="6K_0vqjbMyP" role="2OqNvi">
                              <ref role="37wK5l" to="t4dg:6K_0vqjbmeG" resolve="allFunctionBlocks" />
                            </node>
                          </node>
                          <node concept="1z4cxt" id="6K_0vqjbi1O" role="2OqNvi">
                            <node concept="1bVj0M" id="6K_0vqjbi1P" role="23t8la">
                              <node concept="3clFbS" id="6K_0vqjbi1Q" role="1bW5cS">
                                <node concept="3clFbF" id="6K_0vqjbi1R" role="3cqZAp">
                                  <node concept="17R0WA" id="6K_0vqjbi1S" role="3clFbG">
                                    <node concept="37vLTw" id="6K_0vqjbNGg" role="3uHU7w">
                                      <ref role="3cqZAo" node="6K_0vqj7wsO" resolve="fbName" />
                                    </node>
                                    <node concept="2OqwBi" id="6K_0vqjbi1U" role="3uHU7B">
                                      <node concept="37vLTw" id="6K_0vqjbi1V" role="2Oq$k0">
                                        <ref role="3cqZAo" node="6K_0vqjbi1X" resolve="it" />
                                      </node>
                                      <node concept="3TrcHB" id="6K_0vqjbNh_" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="Rh6nW" id="6K_0vqjbi1X" role="1bW2Oz">
                                <property role="TrG5h" value="it" />
                                <node concept="2jxLKc" id="6K_0vqjbi1Y" role="1tU5fm" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2Gpval" id="6K_0vqj7xYm" role="3cqZAp">
                      <node concept="2GrKxI" id="6K_0vqj7xYo" role="2Gsz3X">
                        <property role="TrG5h" value="portElement" />
                      </node>
                      <node concept="2OqwBi" id="6K_0vqj7I95" role="2GsD0m">
                        <node concept="2GrUjf" id="6K_0vqj7HXA" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="6K_0vqj6yCa" resolve="fbElement" />
                        </node>
                        <node concept="liA8E" id="6K_0vqj8vvx" role="2OqNvi">
                          <ref role="37wK5l" to="mmaq:~Element.getChildren(java.lang.String):java.util.List" resolve="getChildren" />
                          <node concept="Xl_RD" id="6K_0vqj8vUU" role="37wK5m">
                            <property role="Xl_RC" value="Port" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="6K_0vqj7xYs" role="2LFqv$">
                        <node concept="3cpWs8" id="6K_0vqj8x9j" role="3cqZAp">
                          <node concept="3cpWsn" id="6K_0vqj8x9m" role="3cpWs9">
                            <property role="TrG5h" value="portName" />
                            <node concept="17QB3L" id="6K_0vqj8x9h" role="1tU5fm" />
                            <node concept="2OqwBi" id="6K_0vqj8BUZ" role="33vP2m">
                              <node concept="2GrUjf" id="6K_0vqj8ARL" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="6K_0vqj7xYo" resolve="portElement" />
                              </node>
                              <node concept="liA8E" id="6K_0vqj9BJ_" role="2OqNvi">
                                <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                                <node concept="Xl_RD" id="6K_0vqj9CfW" role="37wK5m">
                                  <property role="Xl_RC" value="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="6K_0vqjd3PX" role="3cqZAp">
                          <node concept="3cpWsn" id="6K_0vqjd3PY" role="3cpWs9">
                            <property role="TrG5h" value="dataElement" />
                            <node concept="3uibUv" id="6K_0vqjd3Py" role="1tU5fm">
                              <ref role="3uigEE" to="mmaq:~Element" resolve="Element" />
                            </node>
                            <node concept="2OqwBi" id="6K_0vqjd3PZ" role="33vP2m">
                              <node concept="2GrUjf" id="6K_0vqjd3Q0" role="2Oq$k0">
                                <ref role="2Gs0qQ" node="6K_0vqj7xYo" resolve="portElement" />
                              </node>
                              <node concept="liA8E" id="6K_0vqjd3Q1" role="2OqNvi">
                                <ref role="37wK5l" to="mmaq:~Element.getChild(java.lang.String):org.jdom.Element" resolve="getChild" />
                                <node concept="Xl_RD" id="6K_0vqjd3Q2" role="37wK5m">
                                  <property role="Xl_RC" value="Data" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="6K_0vqjd5KO" role="3cqZAp">
                          <node concept="3clFbS" id="6K_0vqjd5KQ" role="3clFbx">
                            <node concept="3clFbF" id="6K_0vqjdt42" role="3cqZAp">
                              <node concept="37vLTI" id="6K_0vqjdThk" role="3clFbG">
                                <node concept="2OqwBi" id="6K_0vqjdV3D" role="37vLTx">
                                  <node concept="37vLTw" id="6K_0vqjdTR9" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6K_0vqjd3PY" resolve="dataElement" />
                                  </node>
                                  <node concept="liA8E" id="6K_0vqjfaBS" role="2OqNvi">
                                    <ref role="37wK5l" to="mmaq:~Element.getAttributeValue(java.lang.String):java.lang.String" resolve="getAttributeValue" />
                                    <node concept="Xl_RD" id="6K_0vqjfaW1" role="37wK5m">
                                      <property role="Xl_RC" value="value" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3EllGN" id="6K_0vqjdxAk" role="37vLTJ">
                                  <node concept="1rXfSq" id="6K_0vqjdzM1" role="3ElVtu">
                                    <ref role="37wK5l" node="6K_0vqjdycD" resolve="watchable" />
                                    <node concept="37vLTw" id="6K_0vqjd$ii" role="37wK5m">
                                      <ref role="3cqZAo" node="6K_0vqjbfz5" resolve="resource" />
                                    </node>
                                    <node concept="37vLTw" id="6K_0vqjd$HN" role="37wK5m">
                                      <ref role="3cqZAo" node="6K_0vqjbi1I" resolve="fb" />
                                    </node>
                                    <node concept="37vLTw" id="6K_0vqjd_Fv" role="37wK5m">
                                      <ref role="3cqZAo" node="6K_0vqj8x9m" resolve="portName" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="6K_0vqjdt40" role="3ElQJh">
                                    <ref role="3cqZAo" node="5jACUPF$oIo" resolve="watches" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3y3z36" id="6K_0vqjdsp5" role="3clFbw">
                            <node concept="10Nm6u" id="6K_0vqjdsB7" role="3uHU7w" />
                            <node concept="37vLTw" id="6K_0vqjd69O" role="3uHU7B">
                              <ref role="3cqZAo" node="6K_0vqjd3PY" resolve="dataElement" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="5jACUPF$kB_" role="3cqZAp" />
            <node concept="3cpWs6" id="5jACUPF$kKS" role="3cqZAp">
              <node concept="37vLTw" id="5jACUPF_5Gg" role="3cqZAk">
                <ref role="3cqZAo" node="5jACUPF$oIo" resolve="watches" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="5jACUPF$7Zp" role="TEbGg">
            <node concept="3cpWsn" id="5jACUPF$7Zr" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="5jACUPF$8eT" role="1tU5fm">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
            </node>
            <node concept="3clFbS" id="5jACUPF$7Zv" role="TDEfX">
              <node concept="RRSsy" id="5jACUPF$hRs" role="3cqZAp">
                <property role="RRSoG" value="error" />
                <node concept="37vLTw" id="5jACUPF$hRw" role="RRSow">
                  <ref role="3cqZAo" node="5jACUPF$7Zr" resolve="e" />
                </node>
                <node concept="Xl_RD" id="5jACUPF$i5U" role="RRSoy">
                  <property role="Xl_RC" value="can't resolve watches" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5jACUPFDs$H" role="3cqZAp">
          <node concept="10Nm6u" id="5jACUPFDsED" role="3cqZAk" />
        </node>
      </node>
      <node concept="3Tm6S6" id="6VfPrztaPv8" role="1B3o_S" />
      <node concept="3rvAFt" id="5jACUPF_2kb" role="3clF45">
        <node concept="3uibUv" id="5jACUPF_2zp" role="3rvQeY">
          <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
        </node>
        <node concept="17QB3L" id="5jACUPF_2IO" role="3rvSg0" />
      </node>
      <node concept="37vLTG" id="6K_0vqj9HS6" role="3clF46">
        <property role="TrG5h" value="device" />
        <node concept="3Tqbb2" id="6K_0vqj9ID2" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
        </node>
      </node>
      <node concept="37vLTG" id="6VfPrztaRiv" role="3clF46">
        <property role="TrG5h" value="watch" />
        <node concept="17QB3L" id="6VfPrztaRiu" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="5jACUPF_67V" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_oRt" role="jymVt">
      <property role="TrG5h" value="start" />
      <node concept="3clFbS" id="5jACUPF_oRv" role="3clF47">
        <node concept="3clFbJ" id="5jACUPF_oRw" role="3cqZAp">
          <node concept="3clFbS" id="5jACUPF_oRx" role="3clFbx">
            <node concept="3clFbF" id="5jACUPF_oRB" role="3cqZAp">
              <node concept="37vLTI" id="5jACUPF_oRC" role="3clFbG">
                <node concept="37vLTw" id="5jACUPF_oSI" role="37vLTJ">
                  <ref role="3cqZAo" node="5jACUPF_pOQ" resolve="myThread" />
                </node>
                <node concept="1rXfSq" id="5jACUPF_swJ" role="37vLTx">
                  <ref role="37wK5l" node="5jACUPF_V2G" resolve="watcherThread" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5jACUPF_oSJ" role="3cqZAp">
              <node concept="2OqwBi" id="5jACUPF_oSK" role="3clFbG">
                <node concept="37vLTw" id="5jACUPF_oSL" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jACUPF_pOQ" resolve="myThread" />
                </node>
                <node concept="liA8E" id="5jACUPF_oSM" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~Thread.start():void" resolve="start" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="5jACUPFHUGu" role="3cqZAp">
              <node concept="37vLTI" id="5jACUPFHV6T" role="3clFbG">
                <node concept="Xjq3P" id="5jACUPFHV7T" role="37vLTx" />
                <node concept="37vLTw" id="5jACUPFHUGs" role="37vLTJ">
                  <ref role="3cqZAo" node="5jACUPF_MvU" resolve="INSTANCE" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="5jACUPF_sN7" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="5jACUPF_oSQ" role="3clFbw">
            <node concept="37vLTw" id="5jACUPF_oSR" role="3uHU7B">
              <ref role="3cqZAo" node="5jACUPF_pOQ" resolve="myThread" />
            </node>
            <node concept="10Nm6u" id="5jACUPF_oSS" role="3uHU7w" />
          </node>
        </node>
        <node concept="YS8fn" id="5jACUPF_sV0" role="3cqZAp">
          <node concept="2ShNRf" id="5jACUPF_sY8" role="YScLw">
            <node concept="1pGfFk" id="5jACUPF_tRx" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
              <node concept="Xl_RD" id="5jACUPF_tXI" role="37wK5m">
                <property role="Xl_RC" value="Double initialization" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="5jACUPF_oST" role="3clF45" />
      <node concept="3Tm1VV" id="5jACUPF_oSU" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5jACUPF_uVF" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_vta" role="jymVt">
      <property role="TrG5h" value="stop" />
      <node concept="3clFbS" id="5jACUPF_vtd" role="3clF47">
        <node concept="SfApY" id="5jACUPF_yUQ" role="3cqZAp">
          <node concept="3clFbS" id="5jACUPF_yUS" role="SfCbr">
            <node concept="3clFbJ" id="5jACUPF_vGU" role="3cqZAp">
              <node concept="3y3z36" id="5jACUPF_wmp" role="3clFbw">
                <node concept="10Nm6u" id="5jACUPF_wpE" role="3uHU7w" />
                <node concept="37vLTw" id="5jACUPF_vI8" role="3uHU7B">
                  <ref role="3cqZAo" node="5jACUPF_pOQ" resolve="myThread" />
                </node>
              </node>
              <node concept="3clFbS" id="5jACUPF_vGW" role="3clFbx">
                <node concept="3clFbF" id="6bryThmfFlf" role="3cqZAp">
                  <node concept="2OqwBi" id="6bryThmfG71" role="3clFbG">
                    <node concept="37vLTw" id="6bryThmfFld" role="2Oq$k0">
                      <ref role="3cqZAo" node="5jACUPF_pOQ" resolve="myThread" />
                    </node>
                    <node concept="liA8E" id="6bryThmfH4M" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Thread.interrupt():void" resolve="interrupt" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5jACUPF_wyb" role="3cqZAp">
                  <node concept="2OqwBi" id="5jACUPF_wJs" role="3clFbG">
                    <node concept="37vLTw" id="5jACUPF_wya" role="2Oq$k0">
                      <ref role="3cqZAo" node="5jACUPF_pOQ" resolve="myThread" />
                    </node>
                    <node concept="liA8E" id="5jACUPF_yGT" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~Thread.join():void" resolve="join" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5jACUPF_Dsc" role="3cqZAp">
                  <node concept="37vLTI" id="5jACUPF_EmI" role="3clFbG">
                    <node concept="10Nm6u" id="5jACUPF_Eoa" role="37vLTx" />
                    <node concept="37vLTw" id="5jACUPF_Dsa" role="37vLTJ">
                      <ref role="3cqZAo" node="5jACUPF_pOQ" resolve="myThread" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="5jACUPF_NW0" role="3cqZAp">
                  <node concept="37vLTI" id="5jACUPF_OgX" role="3clFbG">
                    <node concept="10Nm6u" id="5jACUPF_Ok4" role="37vLTx" />
                    <node concept="37vLTw" id="5jACUPF_NVY" role="37vLTJ">
                      <ref role="3cqZAo" node="5jACUPF_MvU" resolve="INSTANCE" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="5jACUPF_Exh" role="3cqZAp" />
              </node>
            </node>
            <node concept="YS8fn" id="5jACUPF_Ft_" role="3cqZAp">
              <node concept="2ShNRf" id="5jACUPF_Fum" role="YScLw">
                <node concept="1pGfFk" id="5jACUPF_G0$" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~IllegalStateException.&lt;init&gt;(java.lang.String)" resolve="IllegalStateException" />
                  <node concept="Xl_RD" id="5jACUPF_G_4" role="37wK5m">
                    <property role="Xl_RC" value="Stop of non-initialized" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="5jACUPF_yUT" role="TEbGg">
            <node concept="3cpWsn" id="5jACUPF_yUV" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="5jACUPF_B7p" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
              </node>
            </node>
            <node concept="3clFbS" id="5jACUPF_yUZ" role="TDEfX">
              <node concept="RRSsy" id="5jACUPF_BmC" role="3cqZAp">
                <property role="RRSoG" value="error" />
                <node concept="Xl_RD" id="5jACUPF_BmE" role="RRSoy">
                  <property role="Xl_RC" value="interurupted during stop" />
                </node>
                <node concept="37vLTw" id="5jACUPF_BmG" role="RRSow">
                  <ref role="3cqZAo" node="5jACUPF_yUV" resolve="e" />
                </node>
              </node>
              <node concept="3clFbF" id="5jACUPF_EFt" role="3cqZAp">
                <node concept="37vLTI" id="5jACUPF_Fkx" role="3clFbG">
                  <node concept="10Nm6u" id="5jACUPF_Fom" role="37vLTx" />
                  <node concept="37vLTw" id="5jACUPF_EFr" role="37vLTJ">
                    <ref role="3cqZAo" node="5jACUPF_pOQ" resolve="myThread" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5jACUPF_vdY" role="1B3o_S" />
      <node concept="3cqZAl" id="5jACUPF_vkx" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="5jACUPF_qtw" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_V2G" role="jymVt">
      <property role="TrG5h" value="watcherThread" />
      <node concept="3clFbS" id="5jACUPF_V2I" role="3clF47">
        <node concept="3clFbF" id="5jACUPF_V2J" role="3cqZAp">
          <node concept="2ShNRf" id="5jACUPF_V2K" role="3clFbG">
            <node concept="1pGfFk" id="5jACUPF_V2L" role="2ShVmc">
              <ref role="37wK5l" to="wyt6:~Thread.&lt;init&gt;(java.lang.Runnable)" resolve="Thread" />
              <node concept="1bVj0M" id="5jACUPF_V2M" role="37wK5m">
                <node concept="3clFbS" id="5jACUPF_V2N" role="1bW5cS">
                  <node concept="SfApY" id="5jACUPF_V2O" role="3cqZAp">
                    <node concept="3clFbS" id="5jACUPF_V2P" role="SfCbr">
                      <node concept="2$JKZl" id="5jACUPF_V2Q" role="3cqZAp">
                        <node concept="3clFbS" id="5jACUPF_V2R" role="2LFqv$">
                          <node concept="3clFbH" id="5jACUPF_V2S" role="3cqZAp" />
                          <node concept="3cpWs8" id="5jACUPF_V2T" role="3cqZAp">
                            <node concept="3cpWsn" id="5jACUPF_V2U" role="3cpWs9">
                              <property role="TrG5h" value="REPO" />
                              <node concept="3uibUv" id="5jACUPF_V2V" role="1tU5fm">
                                <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
                              </node>
                              <node concept="2YIFZM" id="5jACUPF_V2W" role="33vP2m">
                                <ref role="1Pybhc" to="w1kc:~MPSModuleRepository" resolve="MPSModuleRepository" />
                                <ref role="37wK5l" to="w1kc:~MPSModuleRepository.getInstance():jetbrains.mps.smodel.MPSModuleRepository" resolve="getInstance" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="5jACUPF_V2X" role="3cqZAp">
                            <node concept="2OqwBi" id="5jACUPF_V2Y" role="3clFbG">
                              <node concept="2OqwBi" id="5jACUPF_V2Z" role="2Oq$k0">
                                <node concept="37vLTw" id="5jACUPF_V30" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5jACUPF_V2U" resolve="REPO" />
                                </node>
                                <node concept="liA8E" id="5jACUPF_V31" role="2OqNvi">
                                  <ref role="37wK5l" to="lui2:~SRepository.getModelAccess():org.jetbrains.mps.openapi.module.ModelAccess" resolve="getModelAccess" />
                                </node>
                              </node>
                              <node concept="liA8E" id="5jACUPF_V32" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~ModelAccess.runReadInEDT(java.lang.Runnable):void" resolve="runReadInEDT" />
                                <node concept="1bVj0M" id="5jACUPF_V33" role="37wK5m">
                                  <node concept="3clFbS" id="5jACUPF_V34" role="1bW5cS">
                                    <node concept="3clFbH" id="5jACUPF_V35" role="3cqZAp" />
                                    <node concept="2Gpval" id="5jACUPF_V36" role="3cqZAp">
                                      <node concept="2GrKxI" id="5jACUPF_V37" role="2Gsz3X">
                                        <property role="TrG5h" value="devicePtr" />
                                      </node>
                                      <node concept="2OqwBi" id="5jACUPFDhN8" role="2GsD0m">
                                        <node concept="37vLTw" id="5jACUPF_V38" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5jACUPF_HQN" resolve="myDevices" />
                                        </node>
                                        <node concept="3lbrtF" id="5jACUPFDsbY" role="2OqNvi" />
                                      </node>
                                      <node concept="3clFbS" id="5jACUPF_V39" role="2LFqv$">
                                        <node concept="3clFbH" id="5jACUPF_V3a" role="3cqZAp" />
                                        <node concept="SfApY" id="5jACUPF_V3b" role="3cqZAp">
                                          <node concept="3clFbS" id="5jACUPF_V3c" role="SfCbr">
                                            <node concept="3cpWs8" id="6K_0vqj9GiB" role="3cqZAp">
                                              <node concept="3cpWsn" id="6K_0vqj9GiC" role="3cpWs9">
                                                <property role="TrG5h" value="device" />
                                                <node concept="3Tqbb2" id="6K_0vqj9Gin" role="1tU5fm">
                                                  <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
                                                </node>
                                                <node concept="2OqwBi" id="6K_0vqj9GiD" role="33vP2m">
                                                  <node concept="2GrUjf" id="6K_0vqjfhl0" role="2Oq$k0">
                                                    <ref role="2Gs0qQ" node="5jACUPF_V37" resolve="devicePtr" />
                                                  </node>
                                                  <node concept="Vyspw" id="6K_0vqj9GiF" role="2OqNvi">
                                                    <node concept="37vLTw" id="6K_0vqj9GiG" role="Vysub">
                                                      <ref role="3cqZAo" node="5jACUPF_V2U" resolve="REPO" />
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3cpWs8" id="5jACUPF_V3d" role="3cqZAp">
                                              <node concept="3cpWsn" id="5jACUPF_V3e" role="3cpWs9">
                                                <property role="TrG5h" value="client" />
                                                <node concept="3uibUv" id="5jACUPF_V3f" role="1tU5fm">
                                                  <ref role="3uigEE" node="3wAsKTk9bGj" resolve="ForteDeviceClient" />
                                                </node>
                                                <node concept="2YIFZM" id="5jACUPF_V3g" role="33vP2m">
                                                  <ref role="37wK5l" node="3wAsKTkhPKR" resolve="attach" />
                                                  <ref role="1Pybhc" node="3wAsKTkhPuA" resolve="ForteDevicesFacade" />
                                                  <node concept="37vLTw" id="6K_0vqj9GiH" role="37wK5m">
                                                    <ref role="3cqZAo" node="6K_0vqj9GiC" resolve="device" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="3clFbJ" id="5jACUPF_V3l" role="3cqZAp">
                                              <node concept="3clFbS" id="5jACUPF_V3m" role="3clFbx">
                                                <node concept="2Gpval" id="6K_0vqjfeSI" role="3cqZAp">
                                                  <node concept="2GrKxI" id="6K_0vqjfeSK" role="2Gsz3X">
                                                    <property role="TrG5h" value="watchValue" />
                                                  </node>
                                                  <node concept="1rXfSq" id="6K_0vqjffus" role="2GsD0m">
                                                    <ref role="37wK5l" node="6VfPrztaQyR" resolve="resolveWatches" />
                                                    <node concept="37vLTw" id="6K_0vqjfhGx" role="37wK5m">
                                                      <ref role="3cqZAo" node="6K_0vqj9GiC" resolve="device" />
                                                    </node>
                                                    <node concept="2OqwBi" id="6K_0vqjfjqE" role="37wK5m">
                                                      <node concept="37vLTw" id="6K_0vqjfjqF" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="5jACUPF_V3e" resolve="client" />
                                                      </node>
                                                      <node concept="liA8E" id="6K_0vqjfjqG" role="2OqNvi">
                                                        <ref role="37wK5l" node="3wAsKTkhEHn" resolve="readWatches" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3clFbS" id="6K_0vqjfeSO" role="2LFqv$">
                                                    <node concept="3cpWs8" id="6K_0vqjfvbU" role="3cqZAp">
                                                      <node concept="3cpWsn" id="6K_0vqjfvbV" role="3cpWs9">
                                                        <property role="TrG5h" value="listeners" />
                                                        <node concept="2hMVRd" id="6K_0vqjfvaT" role="1tU5fm">
                                                          <node concept="3uibUv" id="6K_0vqjfvaW" role="2hN53Y">
                                                            <ref role="3uigEE" node="5jACUPF_hkq" resolve="WatchedValueListener" />
                                                          </node>
                                                        </node>
                                                        <node concept="3EllGN" id="6K_0vqjfvbW" role="33vP2m">
                                                          <node concept="37vLTw" id="6K_0vqjfvbX" role="3ElQJh">
                                                            <ref role="3cqZAo" node="5jACUPFA7aZ" resolve="myWatchedValueListeners" />
                                                          </node>
                                                          <node concept="2OqwBi" id="6K_0vqjfvbY" role="3ElVtu">
                                                            <node concept="2GrUjf" id="6K_0vqjfvbZ" role="2Oq$k0">
                                                              <ref role="2Gs0qQ" node="6K_0vqjfeSK" resolve="watchValue" />
                                                            </node>
                                                            <node concept="3AY5_j" id="6K_0vqjfvc0" role="2OqNvi" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                    <node concept="2Gpval" id="6K_0vqjfz3e" role="3cqZAp">
                                                      <node concept="2GrKxI" id="6K_0vqjfz3g" role="2Gsz3X">
                                                        <property role="TrG5h" value="listener" />
                                                      </node>
                                                      <node concept="37vLTw" id="6K_0vqjf_7C" role="2GsD0m">
                                                        <ref role="3cqZAo" node="6K_0vqjfvbV" resolve="listeners" />
                                                      </node>
                                                      <node concept="3clFbS" id="6K_0vqjfz3k" role="2LFqv$">
                                                        <node concept="3clFbF" id="6K_0vqjf_Pc" role="3cqZAp">
                                                          <node concept="2OqwBi" id="6K_0vqjfAsN" role="3clFbG">
                                                            <node concept="2GrUjf" id="6K_0vqjf_Pb" role="2Oq$k0">
                                                              <ref role="2Gs0qQ" node="6K_0vqjfz3g" resolve="listener" />
                                                            </node>
                                                            <node concept="liA8E" id="6K_0vqjfB3i" role="2OqNvi">
                                                              <ref role="37wK5l" node="5jACUPF_hyO" resolve="onValueChanged" />
                                                              <node concept="2OqwBi" id="6K_0vqjfD8D" role="37wK5m">
                                                                <node concept="2GrUjf" id="6K_0vqjfBFo" role="2Oq$k0">
                                                                  <ref role="2Gs0qQ" node="6K_0vqjfeSK" resolve="watchValue" />
                                                                </node>
                                                                <node concept="3AV6Ez" id="6K_0vqjgr17" role="2OqNvi" />
                                                              </node>
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                              <node concept="3y3z36" id="5jACUPF_V3r" role="3clFbw">
                                                <node concept="10Nm6u" id="5jACUPF_V3s" role="3uHU7w" />
                                                <node concept="37vLTw" id="5jACUPF_V3t" role="3uHU7B">
                                                  <ref role="3cqZAo" node="5jACUPF_V3e" resolve="client" />
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="TDmWw" id="5jACUPF_V3u" role="TEbGg">
                                            <node concept="3cpWsn" id="5jACUPF_V3v" role="TDEfY">
                                              <property role="TrG5h" value="e" />
                                              <node concept="3uibUv" id="5jACUPF_V3w" role="1tU5fm">
                                                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                                              </node>
                                            </node>
                                            <node concept="3clFbS" id="5jACUPF_V3x" role="TDEfX">
                                              <node concept="2xdQw9" id="5jACUPF_V3y" role="3cqZAp">
                                                <property role="2xdLsb" value="error" />
                                                <node concept="37vLTw" id="5jACUPF_V3z" role="9lYJj">
                                                  <ref role="3cqZAo" node="5jACUPF_V3v" resolve="e" />
                                                </node>
                                                <node concept="Xl_RD" id="5jACUPF_V3$" role="9lYJi">
                                                  <property role="Xl_RC" value="During readWatches" />
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
                          <node concept="3clFbH" id="5jACUPF_V3_" role="3cqZAp" />
                          <node concept="3clFbF" id="5jACUPF_V3A" role="3cqZAp">
                            <node concept="2YIFZM" id="5jACUPF_V3B" role="3clFbG">
                              <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                              <ref role="37wK5l" to="wyt6:~Thread.sleep(long):void" resolve="sleep" />
                              <node concept="3cmrfG" id="5jACUPF_V3C" role="37wK5m">
                                <property role="3cmrfH" value="100" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3fqX7Q" id="5jACUPF_V3D" role="2$JKZa">
                          <node concept="2OqwBi" id="5jACUPF_V3E" role="3fr31v">
                            <node concept="2YIFZM" id="5jACUPF_V3F" role="2Oq$k0">
                              <ref role="37wK5l" to="wyt6:~Thread.currentThread():java.lang.Thread" resolve="currentThread" />
                              <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                            </node>
                            <node concept="liA8E" id="5jACUPF_V3G" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Thread.isInterrupted():boolean" resolve="isInterrupted" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="TDmWw" id="5jACUPF_V3H" role="TEbGg">
                      <node concept="3cpWsn" id="5jACUPF_V3I" role="TDEfY">
                        <property role="TrG5h" value="e" />
                        <node concept="3uibUv" id="5jACUPF_V3J" role="1tU5fm">
                          <ref role="3uigEE" to="wyt6:~InterruptedException" resolve="InterruptedException" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="5jACUPF_V3K" role="TDEfX">
                        <node concept="3clFbF" id="5jACUPF_V3L" role="3cqZAp">
                          <node concept="2OqwBi" id="5jACUPF_V3M" role="3clFbG">
                            <node concept="2YIFZM" id="5jACUPF_V3N" role="2Oq$k0">
                              <ref role="1Pybhc" to="wyt6:~Thread" resolve="Thread" />
                              <ref role="37wK5l" to="wyt6:~Thread.currentThread():java.lang.Thread" resolve="currentThread" />
                            </node>
                            <node concept="liA8E" id="5jACUPF_V3O" role="2OqNvi">
                              <ref role="37wK5l" to="wyt6:~Thread.interrupt():void" resolve="interrupt" />
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
      <node concept="3uibUv" id="5jACUPF_V3Q" role="3clF45">
        <ref role="3uigEE" to="wyt6:~Thread" resolve="Thread" />
      </node>
      <node concept="3Tm6S6" id="5jACUPF_V3P" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3wAsKTkklCB" role="jymVt" />
    <node concept="312cEg" id="5jACUPF_pOQ" role="jymVt">
      <property role="TrG5h" value="myThread" />
      <node concept="3uibUv" id="5jACUPF_pOT" role="1tU5fm">
        <ref role="3uigEE" to="wyt6:~Thread" resolve="Thread" />
      </node>
      <node concept="3Tm1VV" id="5jACUPF_pOU" role="1B3o_S" />
    </node>
  </node>
  <node concept="3HP615" id="5jACUPF_gT6">
    <property role="TrG5h" value="WatcherListener" />
    <property role="3GE5qa" value="debugger" />
    <node concept="2tJIrI" id="5jACUPF_gTC" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_h1b" role="jymVt">
      <property role="TrG5h" value="onWatchAdded" />
      <node concept="3clFbS" id="5jACUPF_h1e" role="3clF47" />
      <node concept="3Tm1VV" id="5jACUPF_h1f" role="1B3o_S" />
      <node concept="3cqZAl" id="5jACUPF_h0x" role="3clF45" />
      <node concept="37vLTG" id="5jACUPF_h92" role="3clF46">
        <property role="TrG5h" value="watchable" />
        <node concept="3uibUv" id="5jACUPF_h91" role="1tU5fm">
          <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jACUPF_hao" role="jymVt" />
    <node concept="3clFb_" id="5jACUPF_he_" role="jymVt">
      <property role="TrG5h" value="onWatchRemoved" />
      <node concept="3clFbS" id="5jACUPF_heC" role="3clF47" />
      <node concept="3Tm1VV" id="5jACUPF_heD" role="1B3o_S" />
      <node concept="3cqZAl" id="5jACUPF_heb" role="3clF45" />
      <node concept="37vLTG" id="5jACUPF_hiA" role="3clF46">
        <property role="TrG5h" value="watchable" />
        <node concept="3uibUv" id="5jACUPF_hi_" role="1tU5fm">
          <ref role="3uigEE" node="3wAsKTkjRj3" resolve="Watchable" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5jACUPF_gT7" role="1B3o_S" />
  </node>
</model>

