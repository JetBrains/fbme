<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ef3c0253-8ec4-4bdb-8e1b-9ba0526fc8d8(org.fbme.ide.integration.fordiac)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="22e72e4c-0f69-46ce-8403-6750153aa615" name="jetbrains.mps.execution.configurations" version="2" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
    <use id="756e911c-3f1f-4a48-bdf5-a2ceb91b723c" name="jetbrains.mps.execution.settings" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="f3347d8a-0e79-4f35-8ac9-1574f25c986f" name="jetbrains.mps.execution.commands" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
  </languages>
  <imports>
    <import index="xk9i" ref="r:49e49752-a85e-4d81-811e-1dc850a8e4cd(jetbrains.mps.execution.lib.ui)" />
    <import index="qqrq" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui.components(MPS.IDEA/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="3v5a" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution(MPS.IDEA/)" />
    <import index="9mrk" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.executors(MPS.IDEA/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="7a0s" ref="r:2af017c2-293f-4ebb-99f3-81e353b3d6e6(jetbrains.mps.editor.runtime)" />
    <import index="kpve" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.message(MPS.Editor/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="dj99" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.configurations(MPS.IDEA/)" />
    <import index="n70j" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.checking(MPS.Editor/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="j9co" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.event(MPS.Core/)" />
    <import index="zf81" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.net(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="4sez" ref="r:01b19a24-8367-4f5d-8289-244ce4f146ee(org.fbme.ide.integration.fordiac.lua)" />
    <import index="dp1x" ref="r:84719e1a-99f6-4297-90ba-8ad2a947fa4a(jetbrains.mps.ide.datatransfer)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="h353" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.st.expressions(org.fbme.lib/)" />
    <import index="7adg" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.common(org.fbme.lib/)" />
    <import index="fcfa" ref="r:ee522dab-c61c-457c-91bc-e4dac8b7bbab(org.fbme.ide.iec61499.adapter.common)" />
    <import index="go3h" ref="r:c95c1d38-95d5-42ab-aead-d308fc2b6566(org.fbme.ide.iec61499.adapter.interfacepart)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="5zyv" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent(JDK/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="g27j" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork(org.fbme.lib/)" />
    <import index="uvki" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.iec61499.repository(org.fbme.platform.lib/)" />
    <import index="cjdg" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.execution.ui(MPS.IDEA/)" implicit="true" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" implicit="true" />
    <import index="4fey" ref="r:05205c64-537e-47b2-8e85-2f142fc11ac8(org.fbme.ide.st.lang.behavior)" implicit="true" />
    <import index="6w4o" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.platform.debugger(org.fbme.platform.lib/)" implicit="true" />
    <import index="tprs" ref="r:00000000-0000-4000-0000-011c895904a4(jetbrains.mps.ide.actions)" implicit="true" />
  </imports>
  <registry>
    <language id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources">
      <concept id="8974276187400029883" name="jetbrains.mps.lang.resources.structure.FileIcon" flags="ng" index="1QGGSu" />
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203083511112" name="jetbrains.mps.lang.plugin.structure.ExecuteBlock" flags="in" index="tnohg" />
      <concept id="1203087890642" name="jetbrains.mps.lang.plugin.structure.ActionGroupDeclaration" flags="ng" index="tC5Ba">
        <child id="1204991552650" name="modifier" index="2f5YQi" />
        <child id="1207145245948" name="contents" index="ftER_" />
      </concept>
      <concept id="1203088046679" name="jetbrains.mps.lang.plugin.structure.ActionInstance" flags="ng" index="tCFHf">
        <reference id="1203088061055" name="action" index="tCJdB" />
      </concept>
      <concept id="1203092361741" name="jetbrains.mps.lang.plugin.structure.ModificationStatement" flags="lg" index="tT9cl">
        <reference id="1204992316090" name="point" index="2f8Tey" />
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1217252042208" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterDeclaration" flags="ng" index="1DS2jV">
        <reference id="1217252646389" name="key" index="1DUlNI" />
      </concept>
      <concept id="1217252428768" name="jetbrains.mps.lang.plugin.structure.ActionDataParameterReferenceOperation" flags="nn" index="1DTwFV" />
      <concept id="1204478074808" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_MPSProject" flags="nn" index="1KvdUw" />
      <concept id="1217413147516" name="jetbrains.mps.lang.plugin.structure.ActionParameter" flags="ng" index="1NuADB">
        <child id="5538333046911298738" name="condition" index="1oa70y" />
      </concept>
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
      <concept id="8118189177080264853" name="jetbrains.mps.baseLanguage.structure.AlternativeType" flags="ig" index="nSUau">
        <child id="8118189177080264854" name="alternative" index="nSUat" />
      </concept>
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
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
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
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
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="1144231330558" name="jetbrains.mps.baseLanguage.structure.ForStatement" flags="nn" index="1Dw8fO">
        <child id="1144231399730" name="condition" index="1Dwp0S" />
        <child id="1144231408325" name="iteration" index="1Dwrff" />
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
      <concept id="946964771156066579" name="jetbrains.mps.execution.settings.structure.PersistentConfigurationTemplate" flags="ng" index="yHkDy">
        <child id="946964771156066581" name="templateParameter" index="yHkD$" />
      </concept>
      <concept id="946964771156066582" name="jetbrains.mps.execution.settings.structure.PersistentConfigurationTemplateInitializer" flags="nn" index="yHkDB">
        <reference id="946964771156066583" name="template" index="yHkDA" />
        <child id="946964771156066584" name="parameter" index="yHkDD" />
      </concept>
      <concept id="946964771156066585" name="jetbrains.mps.execution.settings.structure.PersistentPropertyDeclaration" flags="ng" index="yHkDC" />
      <concept id="946964771156066586" name="jetbrains.mps.execution.settings.structure.TemplateParameter" flags="ng" index="yHkDF" />
      <concept id="946964771156066588" name="jetbrains.mps.execution.settings.structure.EditorExpression" flags="nn" index="yHkDH">
        <reference id="946964771156066589" name="persistentPropertyDeclaration" index="yHkDG" />
      </concept>
      <concept id="946964771156066591" name="jetbrains.mps.execution.settings.structure.CheckProperitesOperation" flags="nn" index="yHkDI" />
      <concept id="946964771156066561" name="jetbrains.mps.execution.settings.structure.TemplateParameterReference" flags="nn" index="yHkDK" />
      <concept id="946964771156066563" name="jetbrains.mps.execution.settings.structure.ReportConfigurationErrorStatement" flags="nn" index="yHkDM">
        <child id="946964771156066565" name="expression" index="yHkDO" />
      </concept>
      <concept id="946964771156066566" name="jetbrains.mps.execution.settings.structure.CreateEditor_Function" flags="ig" index="yHkDR" />
      <concept id="946964771156066574" name="jetbrains.mps.execution.settings.structure.PersistentPropertyReferenceOperation" flags="nn" index="yHkDZ">
        <reference id="946964771156066575" name="variableDeclaration" index="yHkDY" />
      </concept>
      <concept id="946964771156066336" name="jetbrains.mps.execution.settings.structure.PersistentConfiguration" flags="ng" index="yHkHh">
        <child id="946964771156066337" name="editor" index="yHkHg" />
        <child id="946964771156066339" name="methods" index="yHkHi" />
        <child id="946964771156066338" name="checkProperties" index="yHkHj" />
      </concept>
      <concept id="946964771156066331" name="jetbrains.mps.execution.settings.structure.PersistentConfigurationMethod" flags="ng" index="yHkHE" />
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
      <concept id="479872435243123448" name="jetbrains.mps.execution.settings.structure.ProjectAccessExpression" flags="ng" index="3YwXIn" />
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="6332851714983831325" name="jetbrains.mps.baseLanguage.logging.structure.MsgStatement" flags="ng" index="2xdQw9">
        <property id="6332851714983843871" name="severity" index="2xdLsb" />
        <child id="5721587534047265374" name="message" index="9lYJi" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="5045161044515397667" name="jetbrains.mps.lang.smodel.structure.Node_PointerOperation" flags="ng" index="iZEcu" />
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
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
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1240687580870" name="jetbrains.mps.baseLanguage.collections.structure.JoinOperation" flags="nn" index="3uJxvA">
        <child id="1240687658305" name="delimiter" index="3uJOhx" />
      </concept>
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="3wDVqS" id="4sMntFA6fDp">
    <property role="TrG5h" value="ForteLocalPC" />
    <ref role="3wDP8j" node="4sMntFA6Qcd" resolve="IEC 61499" />
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
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
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
                <node concept="yHkDv" id="739Y6csLT6I" role="2OqNvi">
                  <ref role="yHkD0" node="7byHRlLC1R$" />
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
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
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
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
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
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object)" resolve="add" />
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
                <ref role="yHkD0" node="7byHRlLC1RR" />
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
                <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.setText(java.lang.String)" resolve="setText" />
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
                <ref role="yHkD0" node="7byHRlLC1S0" />
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
                  <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.getText()" resolve="getText" />
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
      <node concept="yHkIc" id="407BnQQnblg" role="1tU5fm">
        <ref role="yHkHG" node="7byHRlLC1PU" resolve="Device" />
      </node>
      <node concept="2ShNRf" id="4sMntFA6YG1" role="33vP2m">
        <node concept="yHkDB" id="4sMntFA70aU" role="2ShVmc">
          <ref role="yHkDA" node="7byHRlLC1PU" resolve="Device" />
          <node concept="2WthIp" id="6EFqmx_$Dvo" role="yHkDD" />
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
              <node concept="2XshWL" id="739Y6csNmMS" role="2OqNvi">
                <ref role="2WH_rO" node="7byHRlLC1Qg" resolve="getNodeRef" />
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
        <node concept="3cpWs8" id="407BnQQkEm_" role="3cqZAp">
          <node concept="3cpWsn" id="407BnQQkEmA" role="3cpWs9">
            <property role="TrG5h" value="platformRepository" />
            <node concept="3uibUv" id="739Y6csNjSx" role="1tU5fm">
              <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
            </node>
            <node concept="2YIFZM" id="407BnQQkEmB" role="33vP2m">
              <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
              <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <node concept="2YIFZM" id="407BnQQkEmC" role="37wK5m">
                <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                <node concept="21ER0p" id="407BnQQkEmD" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="407BnQQkG0$" role="3cqZAp">
          <node concept="3cpWsn" id="407BnQQkG0_" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="407BnQQkFY1" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="407BnQQkG0A" role="33vP2m">
              <node concept="37vLTw" id="407BnQQkG0B" role="2Oq$k0">
                <ref role="3cqZAo" node="407BnQQkEmA" resolve="platformRepository" />
              </node>
              <node concept="liA8E" id="7U8zpIsewJh" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformRepository.getMpsRepository()" resolve="getMpsRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4FkwH71guif" role="3cqZAp">
          <node concept="2OqwBi" id="4FkwH71gvUs" role="3clFbG">
            <node concept="2OqwBi" id="4FkwH71guNq" role="2Oq$k0">
              <node concept="37vLTw" id="407BnQQkG0D" role="2Oq$k0">
                <ref role="3cqZAo" node="407BnQQkG0_" resolve="repository" />
              </node>
              <node concept="liA8E" id="4FkwH71gvDG" role="2OqNvi">
                <ref role="37wK5l" to="lui2:~SRepository.getModelAccess()" resolve="getModelAccess" />
              </node>
            </node>
            <node concept="liA8E" id="4FkwH71gwbQ" role="2OqNvi">
              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
              <node concept="1bVj0M" id="4FkwH71gwi7" role="37wK5m">
                <node concept="3clFbS" id="4FkwH71gwi8" role="1bW5cS">
                  <node concept="3cpWs8" id="4FkwH71gzOn" role="3cqZAp">
                    <node concept="3cpWsn" id="4FkwH71gzOo" role="3cpWs9">
                      <property role="TrG5h" value="device" />
                      <node concept="3Tqbb2" id="4FkwH71g$82" role="1tU5fm">
                        <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
                      </node>
                      <node concept="1PxgMI" id="4FkwH71g_8h" role="33vP2m">
                        <property role="1BlNFB" value="true" />
                        <node concept="chp4Y" id="4FkwH71g_fR" role="3oSUPX">
                          <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
                        </node>
                        <node concept="2OqwBi" id="4FkwH71gzOp" role="1m5AlR">
                          <node concept="37vLTw" id="4FkwH71gzOq" role="2Oq$k0">
                            <ref role="3cqZAo" node="4sMntFAj6il" resolve="deviceRef" />
                          </node>
                          <node concept="liA8E" id="4FkwH71gzOr" role="2OqNvi">
                            <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                            <node concept="37vLTw" id="407BnQQkGih" role="37wK5m">
                              <ref role="3cqZAo" node="407BnQQkG0_" resolve="repository" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbF" id="4FkwH71g__B" role="3cqZAp">
                    <node concept="37vLTI" id="4FkwH71gAEO" role="3clFbG">
                      <node concept="2YIFZM" id="407BnQQkS9R" role="37vLTx">
                        <ref role="37wK5l" node="407BnQQjmpL" resolve="getPort" />
                        <ref role="1Pybhc" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
                        <node concept="2OqwBi" id="407BnQQkS9S" role="37wK5m">
                          <node concept="37vLTw" id="407BnQQkS9T" role="2Oq$k0">
                            <ref role="3cqZAo" node="407BnQQkEmA" resolve="platformRepository" />
                          </node>
                          <node concept="liA8E" id="407BnQQkS9U" role="2OqNvi">
                            <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                            <node concept="37vLTw" id="407BnQQkS9V" role="37wK5m">
                              <ref role="3cqZAo" node="4FkwH71gzOo" resolve="device" />
                            </node>
                            <node concept="3VsKOn" id="407BnQQkS9W" role="37wK5m">
                              <ref role="3VsUkX" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                            </node>
                          </node>
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
        <node concept="3clFbF" id="k3FE8itWib" role="3cqZAp">
          <node concept="2OqwBi" id="k3FE8itWEj" role="3clFbG">
            <node concept="37vLTw" id="k3FE8itXgM" role="2Oq$k0">
              <ref role="3cqZAo" node="5gyVhZ17Jmo" resolve="console" />
            </node>
            <node concept="liA8E" id="k3FE8itXX9" role="2OqNvi">
              <ref role="37wK5l" to="cjdg:~ConsoleView.createConsoleActions()" resolve="createConsoleActions" />
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
  <node concept="3wDVqV" id="4sMntFA6Qcd">
    <property role="TrG5h" value="IEC 61499" />
    <node concept="1QGGSu" id="4sMntFA6Qce" role="1bitO_" />
  </node>
  <node concept="2uRRBy" id="6kvdbYum2B2">
    <property role="TrG5h" value="IEC-61499 FortePC Gutter" />
    <node concept="2uRRBT" id="6kvdbYum2B3" role="2uRRB$">
      <node concept="3clFbS" id="6kvdbYum2B4" role="2VODD2">
        <node concept="3clFbF" id="407BnQQm_is" role="3cqZAp">
          <node concept="2YIFZM" id="407BnQQm_kN" role="3clFbG">
            <ref role="37wK5l" node="407BnQQmhgl" resolve="register" />
            <ref role="1Pybhc" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
            <node concept="1KvdUw" id="407BnQQm_lv" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="6kvdbYum5Rf" role="2uRRB_">
      <node concept="3clFbS" id="6kvdbYum5Rg" role="2VODD2">
        <node concept="3clFbF" id="407BnQQm_nC" role="3cqZAp">
          <node concept="2YIFZM" id="407BnQQm_os" role="3clFbG">
            <ref role="37wK5l" node="407BnQQmidd" resolve="unregister" />
            <ref role="1Pybhc" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
            <node concept="1KvdUw" id="407BnQQm_ot" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="6kvdbYueRX$">
    <property role="TrG5h" value="RunLocalFortePC" />
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
        <ref role="37wK5l" to="9mrk:~DefaultRunExecutor.getRunExecutorInstance()" resolve="getRunExecutorInstance" />
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
              <ref role="37wK5l" to="3v5a:~Executor.getIcon()" resolve="getIcon" />
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
                <ref role="37wK5l" to="qkt:~ActionManager.getInstance()" resolve="getInstance" />
                <ref role="1Pybhc" to="qkt:~ActionManager" resolve="ActionManager" />
              </node>
              <node concept="liA8E" id="7OBD32I4iGc" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~ActionManager.getAction(java.lang.String)" resolve="getAction" />
                <node concept="2OqwBi" id="7OBD32I4iGd" role="37wK5m">
                  <node concept="37vLTw" id="7OBD32I4iGe" role="2Oq$k0">
                    <ref role="3cqZAo" node="4FkwH71gSlj" resolve="EXECUTOR" />
                  </node>
                  <node concept="liA8E" id="7OBD32I4iGf" role="2OqNvi">
                    <ref role="37wK5l" to="3v5a:~Executor.getId()" resolve="getId" />
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
          <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="6kvdbYufbp2" role="3clF46">
        <property role="TrG5h" value="owner" />
        <node concept="3uibUv" id="6kvdbYufbp4" role="1tU5fm">
          <ref role="3uigEE" to="kpve:~EditorMessageOwner" resolve="EditorMessageOwner" />
        </node>
      </node>
    </node>
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
        <node concept="3cpWs8" id="3fQLdr1J$wV" role="3cqZAp">
          <node concept="3cpWsn" id="3fQLdr1J$wW" role="3cpWs9">
            <property role="TrG5h" value="nodeCell" />
            <node concept="3uibUv" id="3fQLdr1J$wU" role="1tU5fm">
              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
            </node>
            <node concept="1rXfSq" id="3fQLdr1J$wX" role="33vP2m">
              <ref role="37wK5l" to="7a0s:1FGe55gTHXF" resolve="getNodeCell" />
              <node concept="37vLTw" id="3fQLdr1J$wY" role="37wK5m">
                <ref role="3cqZAo" node="4FkwH71jCRh" resolve="editorComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3fQLdr1JHx_" role="3cqZAp">
          <node concept="3clFbS" id="3fQLdr1JHxB" role="3clFbx">
            <node concept="3cpWs6" id="3fQLdr1JIMP" role="3cqZAp">
              <node concept="10Nm6u" id="3fQLdr1JIYb" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="3fQLdr1JIo7" role="3clFbw">
            <node concept="10Nm6u" id="3fQLdr1JIzu" role="3uHU7w" />
            <node concept="37vLTw" id="3fQLdr1JHTg" role="3uHU7B">
              <ref role="3cqZAo" node="3fQLdr1J$wW" resolve="nodeCell" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4FkwH71jFst" role="3cqZAp">
          <node concept="2YIFZM" id="4FkwH71jFLH" role="3clFbG">
            <ref role="37wK5l" to="g51k:~CellFinderUtil.findChild(jetbrains.mps.openapi.editor.cells.EditorCell,jetbrains.mps.nodeEditor.cells.CellFinderUtil$Finder)" resolve="findChild" />
            <ref role="1Pybhc" to="g51k:~CellFinderUtil" resolve="CellFinderUtil" />
            <node concept="37vLTw" id="3fQLdr1J$wZ" role="37wK5m">
              <ref role="3cqZAo" node="3fQLdr1J$wW" resolve="nodeCell" />
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
    <node concept="2tJIrI" id="6kvdbYufAFu" role="jymVt" />
    <node concept="Wx3nA" id="407BnQQm03c" role="jymVt">
      <property role="TrG5h" value="INSTANCES" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="407BnQQlXdz" role="1B3o_S" />
      <node concept="2ShNRf" id="407BnQQm2IX" role="33vP2m">
        <node concept="1pGfFk" id="407BnQQmbZJ" role="2ShVmc">
          <ref role="37wK5l" to="5zyv:~ConcurrentHashMap.&lt;init&gt;()" resolve="ConcurrentHashMap" />
          <node concept="3uibUv" id="407BnQQmcHy" role="1pMfVU">
            <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
          </node>
          <node concept="3uibUv" id="407BnQQmcHz" role="1pMfVU">
            <ref role="3uigEE" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="407BnQQm1cJ" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="407BnQQm22C" role="11_B2D">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
        <node concept="3uibUv" id="407BnQQm2jZ" role="11_B2D">
          <ref role="3uigEE" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="7OBD32I4G3Q" role="jymVt">
      <property role="TrG5h" value="myRepository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="7OBD32I4Fhv" role="1B3o_S" />
      <node concept="3uibUv" id="259AZIedFzZ" role="1tU5fm">
        <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="2tJIrI" id="7OBD32I4EKR" role="jymVt" />
    <node concept="3clFbW" id="407BnQQjWOh" role="jymVt">
      <node concept="3cqZAl" id="407BnQQjWOi" role="3clF45" />
      <node concept="3Tm6S6" id="407BnQQmefV" role="1B3o_S" />
      <node concept="3clFbS" id="407BnQQjWOl" role="3clF47">
        <node concept="3clFbF" id="407BnQQjWOp" role="3cqZAp">
          <node concept="37vLTI" id="407BnQQjWOr" role="3clFbG">
            <node concept="37vLTw" id="407BnQQjYn7" role="37vLTJ">
              <ref role="3cqZAo" node="7OBD32I4G3Q" resolve="myRepository" />
            </node>
            <node concept="2YIFZM" id="3WC2DnYq08J" role="37vLTx">
              <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
              <node concept="37vLTw" id="3WC2DnYq08K" role="37wK5m">
                <ref role="3cqZAo" node="407BnQQjWOo" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="407BnQQjWOo" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="407BnQQm1Tu" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="407BnQQmdbO" role="jymVt" />
    <node concept="2YIFZL" id="407BnQQmhgl" role="jymVt">
      <property role="TrG5h" value="register" />
      <node concept="3clFbS" id="407BnQQmhgo" role="3clF47">
        <node concept="3cpWs8" id="407BnQQmwG3" role="3cqZAp">
          <node concept="3cpWsn" id="407BnQQmwG4" role="3cpWs9">
            <property role="TrG5h" value="checker" />
            <node concept="3uibUv" id="407BnQQmwx2" role="1tU5fm">
              <ref role="3uigEE" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
            </node>
            <node concept="2ShNRf" id="407BnQQmwG5" role="33vP2m">
              <node concept="1pGfFk" id="407BnQQmwG6" role="2ShVmc">
                <ref role="37wK5l" node="407BnQQjWOh" resolve="RunLocalFortePCChecker" />
                <node concept="37vLTw" id="407BnQQmwG7" role="37wK5m">
                  <ref role="3cqZAo" node="407BnQQmi58" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="407BnQQmrtI" role="3cqZAp">
          <node concept="2OqwBi" id="407BnQQms28" role="3clFbG">
            <node concept="37vLTw" id="407BnQQmrtG" role="2Oq$k0">
              <ref role="3cqZAo" node="407BnQQm03c" resolve="INSTANCES" />
            </node>
            <node concept="liA8E" id="407BnQQmsQF" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="407BnQQmt9s" role="37wK5m">
                <ref role="3cqZAo" node="407BnQQmi58" resolve="project" />
              </node>
              <node concept="37vLTw" id="407BnQQmwG8" role="37wK5m">
                <ref role="3cqZAo" node="407BnQQmwG4" resolve="checker" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="407BnQQmopt" role="3cqZAp">
          <node concept="3cpWsn" id="407BnQQmopu" role="3cpWs9">
            <property role="TrG5h" value="higlighter" />
            <node concept="3uibUv" id="407BnQQmopv" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~Highlighter" resolve="Highlighter" />
            </node>
            <node concept="2OqwBi" id="407BnQQmopw" role="33vP2m">
              <node concept="37vLTw" id="407BnQQmxsE" role="2Oq$k0">
                <ref role="3cqZAo" node="407BnQQmi58" resolve="project" />
              </node>
              <node concept="liA8E" id="407BnQQmopy" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="407BnQQmopz" role="37wK5m">
                  <ref role="3VsUkX" to="exr9:~Highlighter" resolve="Highlighter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="407BnQQmop$" role="3cqZAp">
          <node concept="2OqwBi" id="407BnQQmop_" role="3clFbG">
            <node concept="37vLTw" id="407BnQQmopA" role="2Oq$k0">
              <ref role="3cqZAo" node="407BnQQmopu" resolve="higlighter" />
            </node>
            <node concept="liA8E" id="407BnQQmopB" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~Highlighter.addChecker(jetbrains.mps.nodeEditor.checking.EditorChecker)" resolve="addChecker" />
              <node concept="37vLTw" id="407BnQQmxGW" role="37wK5m">
                <ref role="3cqZAo" node="407BnQQmwG4" resolve="checker" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="407BnQQmerV" role="1B3o_S" />
      <node concept="3cqZAl" id="407BnQQmh9L" role="3clF45" />
      <node concept="37vLTG" id="407BnQQmi58" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="407BnQQmmEr" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="407BnQQmj0j" role="jymVt" />
    <node concept="2YIFZL" id="407BnQQmidd" role="jymVt">
      <property role="TrG5h" value="unregister" />
      <node concept="3clFbS" id="407BnQQmide" role="3clF47">
        <node concept="3cpWs8" id="407BnQQmzMK" role="3cqZAp">
          <node concept="3cpWsn" id="407BnQQmzML" role="3cpWs9">
            <property role="TrG5h" value="checker" />
            <node concept="3uibUv" id="407BnQQmzpu" role="1tU5fm">
              <ref role="3uigEE" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
            </node>
            <node concept="2OqwBi" id="407BnQQmzMM" role="33vP2m">
              <node concept="37vLTw" id="407BnQQmzMN" role="2Oq$k0">
                <ref role="3cqZAo" node="407BnQQm03c" resolve="INSTANCES" />
              </node>
              <node concept="liA8E" id="407BnQQmzMO" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Map.remove(java.lang.Object)" resolve="remove" />
                <node concept="37vLTw" id="407BnQQmzMP" role="37wK5m">
                  <ref role="3cqZAo" node="407BnQQmidh" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="407BnQQmxHZ" role="3cqZAp">
          <node concept="3cpWsn" id="407BnQQmxI0" role="3cpWs9">
            <property role="TrG5h" value="higlighter" />
            <node concept="3uibUv" id="407BnQQmxI1" role="1tU5fm">
              <ref role="3uigEE" to="exr9:~Highlighter" resolve="Highlighter" />
            </node>
            <node concept="2OqwBi" id="407BnQQmxI2" role="33vP2m">
              <node concept="37vLTw" id="407BnQQmxI3" role="2Oq$k0">
                <ref role="3cqZAo" node="407BnQQmidh" resolve="project" />
              </node>
              <node concept="liA8E" id="407BnQQmxI4" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="407BnQQmxI5" role="37wK5m">
                  <ref role="3VsUkX" to="exr9:~Highlighter" resolve="Highlighter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="407BnQQmxI6" role="3cqZAp">
          <node concept="2OqwBi" id="407BnQQmxI7" role="3clFbG">
            <node concept="37vLTw" id="407BnQQmxI8" role="2Oq$k0">
              <ref role="3cqZAo" node="407BnQQmxI0" resolve="higlighter" />
            </node>
            <node concept="liA8E" id="407BnQQmxI9" role="2OqNvi">
              <ref role="37wK5l" to="exr9:~Highlighter.removeChecker(jetbrains.mps.nodeEditor.checking.EditorChecker)" resolve="removeChecker" />
              <node concept="37vLTw" id="407BnQQm$Zb" role="37wK5m">
                <ref role="3cqZAo" node="407BnQQmzML" resolve="checker" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="407BnQQmidf" role="1B3o_S" />
      <node concept="3cqZAl" id="407BnQQmidg" role="3clF45" />
      <node concept="37vLTG" id="407BnQQmidh" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="407BnQQmmMh" role="1tU5fm">
          <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="407BnQQjYuE" role="jymVt" />
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
                <ref role="37wK5l" to="exr9:~EditorComponent.getEditedNode()" resolve="getEditedNode" />
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
        <node concept="3cpWs8" id="407BnQQk8Nz" role="3cqZAp">
          <node concept="3cpWsn" id="407BnQQk8N$" role="3cpWs9">
            <property role="TrG5h" value="element" />
            <node concept="3uibUv" id="407BnQQk8Iz" role="1tU5fm">
              <ref role="3uigEE" to="7adg:~Element" resolve="Element" />
            </node>
            <node concept="2OqwBi" id="407BnQQk8N_" role="33vP2m">
              <node concept="37vLTw" id="407BnQQk8NA" role="2Oq$k0">
                <ref role="3cqZAo" node="7OBD32I4G3Q" resolve="myRepository" />
              </node>
              <node concept="liA8E" id="407BnQQk8NB" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                <node concept="37vLTw" id="407BnQQk8NC" role="37wK5m">
                  <ref role="3cqZAo" node="6kvdbYufHlm" resolve="node" />
                </node>
                <node concept="3VsKOn" id="407BnQQk8ND" role="37wK5m">
                  <ref role="3VsUkX" to="7adg:~Element" resolve="Element" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="407BnQQkc70" role="3cqZAp">
          <node concept="3clFbS" id="407BnQQkc72" role="2LFqv$">
            <node concept="3clFbJ" id="407BnQQkdnV" role="3cqZAp">
              <node concept="2ZW3vV" id="407BnQQkdU6" role="3clFbw">
                <node concept="3uibUv" id="407BnQQke9U" role="2ZW6by">
                  <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                </node>
                <node concept="37vLTw" id="407BnQQkd$N" role="2ZW6bz">
                  <ref role="3cqZAo" node="407BnQQk8N$" resolve="element" />
                </node>
              </node>
              <node concept="3clFbS" id="407BnQQkdnX" role="3clFbx">
                <node concept="3cpWs8" id="407BnQQkeDu" role="3cqZAp">
                  <node concept="3cpWsn" id="407BnQQkeDv" role="3cpWs9">
                    <property role="TrG5h" value="device" />
                    <node concept="3uibUv" id="407BnQQkeDw" role="1tU5fm">
                      <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                    </node>
                    <node concept="10QFUN" id="407BnQQkf31" role="33vP2m">
                      <node concept="3uibUv" id="407BnQQkf2Z" role="10QFUM">
                        <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                      </node>
                      <node concept="37vLTw" id="407BnQQkfgN" role="10QFUP">
                        <ref role="3cqZAo" node="407BnQQk8N$" resolve="element" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="407BnQQkfxv" role="3cqZAp">
                  <node concept="3clFbS" id="407BnQQkfxx" role="3clFbx">
                    <node concept="3clFbF" id="6kvdbYuk2g6" role="3cqZAp">
                      <node concept="2OqwBi" id="6kvdbYuk6kG" role="3clFbG">
                        <node concept="37vLTw" id="6kvdbYuk5ka" role="2Oq$k0">
                          <ref role="3cqZAo" node="6kvdbYug4_m" resolve="messages" />
                        </node>
                        <node concept="TSZUe" id="6kvdbYukagF" role="2OqNvi">
                          <node concept="2ShNRf" id="6kvdbYuk2g4" role="25WWJ7">
                            <node concept="1pGfFk" id="6kvdbYuk3OF" role="2ShVmc">
                              <ref role="37wK5l" node="6kvdbYufboR" resolve="RunLocalFortePC" />
                              <node concept="2OqwBi" id="407BnQQkjDf" role="37wK5m">
                                <node concept="1eOMI4" id="407BnQQkio8" role="2Oq$k0">
                                  <node concept="10QFUN" id="407BnQQki_9" role="1eOMHV">
                                    <node concept="3uibUv" id="407BnQQkkVK" role="10QFUM">
                                      <ref role="3uigEE" to="go3h:3MncU7wPdcu" resolve="DeviceDeclarationByNode" />
                                    </node>
                                    <node concept="37vLTw" id="7OBD32I7Gi1" role="10QFUP">
                                      <ref role="3cqZAo" node="407BnQQkeDv" resolve="device" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="407BnQQkk9Z" role="2OqNvi">
                                  <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
                                </node>
                              </node>
                              <node concept="Xjq3P" id="6kvdbYuk4Cp" role="37wK5m" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1rXfSq" id="407BnQQkfSr" role="3clFbw">
                    <ref role="37wK5l" node="6kvdbYuhGti" resolve="isApplicable" />
                    <node concept="37vLTw" id="407BnQQkg8g" role="37wK5m">
                      <ref role="3cqZAo" node="407BnQQkeDv" resolve="device" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7rZgqgAv34j" role="3cqZAp">
              <node concept="37vLTI" id="7rZgqgAv3Av" role="3clFbG">
                <node concept="2OqwBi" id="7rZgqgAv46k" role="37vLTx">
                  <node concept="37vLTw" id="7rZgqgAv3Mn" role="2Oq$k0">
                    <ref role="3cqZAo" node="407BnQQk8N$" resolve="element" />
                  </node>
                  <node concept="liA8E" id="7rZgqgAv5oy" role="2OqNvi">
                    <ref role="37wK5l" to="7adg:~Element.getContainer()" resolve="getContainer" />
                  </node>
                </node>
                <node concept="37vLTw" id="7rZgqgAv34h" role="37vLTJ">
                  <ref role="3cqZAo" node="407BnQQk8N$" resolve="element" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="407BnQQkcWh" role="2$JKZa">
            <node concept="10Nm6u" id="407BnQQkd7_" role="3uHU7w" />
            <node concept="37vLTw" id="407BnQQkcB0" role="3uHU7B">
              <ref role="3cqZAo" node="407BnQQk8N$" resolve="element" />
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
              <ref role="37wK5l" node="407BnQQjmpL" resolve="getPort" />
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
        <node concept="3uibUv" id="407BnQQjTfb" role="1tU5fm">
          <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6kvdbYuhPBC" role="jymVt" />
    <node concept="2YIFZL" id="407BnQQjmpL" role="jymVt">
      <property role="TrG5h" value="getPort" />
      <node concept="3clFbS" id="407BnQQjmpM" role="3clF47">
        <node concept="3cpWs8" id="3iCUyKASfZw" role="3cqZAp">
          <node concept="3cpWsn" id="3iCUyKASfZz" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="17QB3L" id="3iCUyKASfZu" role="1tU5fm" />
            <node concept="1rXfSq" id="3iCUyKASgnf" role="33vP2m">
              <ref role="37wK5l" node="3iCUyKASa$f" resolve="getAddress" />
              <node concept="37vLTw" id="3iCUyKASgN2" role="37wK5m">
                <ref role="3cqZAo" node="407BnQQjmrl" resolve="device" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5nJ05NB7YzG" role="3cqZAp">
          <node concept="3cpWsn" id="5nJ05NB7YzH" role="3cpWs9">
            <property role="TrG5h" value="portStarts" />
            <node concept="10Oyi0" id="5nJ05NB7YzI" role="1tU5fm" />
            <node concept="2OqwBi" id="5nJ05NB7YzJ" role="33vP2m">
              <node concept="37vLTw" id="3iCUyKASgW5" role="2Oq$k0">
                <ref role="3cqZAo" node="3iCUyKASfZz" resolve="value" />
              </node>
              <node concept="liA8E" id="5nJ05NB7YzL" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.indexOf(java.lang.String)" resolve="indexOf" />
                <node concept="Xl_RD" id="5nJ05NB7YzM" role="37wK5m">
                  <property role="Xl_RC" value=":" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5nJ05NB7YzN" role="3cqZAp">
          <node concept="3cpWsn" id="5nJ05NB7YzO" role="3cpWs9">
            <property role="TrG5h" value="port" />
            <node concept="10Oyi0" id="5nJ05NB7YzP" role="1tU5fm" />
            <node concept="3cmrfG" id="5nJ05NB7YzQ" role="33vP2m">
              <property role="3cmrfH" value="-1" />
            </node>
          </node>
        </node>
        <node concept="3J1_TO" id="5nJ05NB7YzR" role="3cqZAp">
          <node concept="3clFbS" id="5nJ05NB7YzS" role="1zxBo7">
            <node concept="3clFbF" id="5nJ05NB7YzT" role="3cqZAp">
              <node concept="37vLTI" id="5nJ05NB7YzU" role="3clFbG">
                <node concept="2YIFZM" id="5nJ05NB7YzV" role="37vLTx">
                  <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                  <ref role="37wK5l" to="wyt6:~Integer.parseInt(java.lang.String)" resolve="parseInt" />
                  <node concept="2OqwBi" id="5nJ05NB7YzW" role="37wK5m">
                    <node concept="37vLTw" id="3iCUyKAShfX" role="2Oq$k0">
                      <ref role="3cqZAo" node="3iCUyKASfZz" resolve="value" />
                    </node>
                    <node concept="liA8E" id="5nJ05NB7YzY" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.substring(int)" resolve="substring" />
                      <node concept="3cpWs3" id="5nJ05NB7YzZ" role="37wK5m">
                        <node concept="3cmrfG" id="5nJ05NB7Y$0" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="5nJ05NB7Y$1" role="3uHU7B">
                          <ref role="3cqZAo" node="5nJ05NB7YzH" resolve="portStarts" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="5nJ05NB7Y$2" role="37vLTJ">
                  <ref role="3cqZAo" node="5nJ05NB7YzO" resolve="port" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3uVAMA" id="5nJ05NB7Y$3" role="1zxBo5">
            <node concept="XOnhg" id="5nJ05NB7Y$4" role="1zc67B">
              <property role="3TUv4t" value="false" />
              <property role="TrG5h" value="e" />
              <node concept="nSUau" id="5nJ05NB7Y$5" role="1tU5fm">
                <node concept="3uibUv" id="5nJ05NB7Y$6" role="nSUat">
                  <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="5nJ05NB7Y$7" role="1zc67A" />
          </node>
        </node>
        <node concept="3cpWs6" id="5nJ05NB7Y$8" role="3cqZAp">
          <node concept="37vLTw" id="5nJ05NB7Y$9" role="3cqZAk">
            <ref role="3cqZAo" node="5nJ05NB7YzO" resolve="port" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="407BnQQjmrj" role="1B3o_S" />
      <node concept="10Oyi0" id="407BnQQjmrk" role="3clF45" />
      <node concept="37vLTG" id="407BnQQjmrl" role="3clF46">
        <property role="TrG5h" value="device" />
        <node concept="3uibUv" id="407BnQQjonR" role="1tU5fm">
          <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3iCUyKASna6" role="jymVt" />
    <node concept="2YIFZL" id="3iCUyKASpO3" role="jymVt">
      <property role="TrG5h" value="getIP" />
      <node concept="3clFbS" id="3iCUyKASpO6" role="3clF47">
        <node concept="3cpWs8" id="3iCUyKASr0H" role="3cqZAp">
          <node concept="3cpWsn" id="3iCUyKASr0I" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="17QB3L" id="3iCUyKASr0J" role="1tU5fm" />
            <node concept="1rXfSq" id="3iCUyKASr0K" role="33vP2m">
              <ref role="37wK5l" node="3iCUyKASa$f" resolve="getAddress" />
              <node concept="37vLTw" id="3iCUyKASr0L" role="37wK5m">
                <ref role="3cqZAo" node="3iCUyKASqUI" resolve="device" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3iCUyKASroU" role="3cqZAp">
          <node concept="2OqwBi" id="3iCUyKASsJ2" role="3cqZAk">
            <node concept="37vLTw" id="3iCUyKASshI" role="2Oq$k0">
              <ref role="3cqZAo" node="3iCUyKASr0I" resolve="value" />
            </node>
            <node concept="liA8E" id="3iCUyKAStZo" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.substring(int,int)" resolve="substring" />
              <node concept="3cmrfG" id="3iCUyKASy_X" role="37wK5m">
                <property role="3cmrfH" value="0" />
              </node>
              <node concept="2OqwBi" id="3iCUyKASv5C" role="37wK5m">
                <node concept="37vLTw" id="3iCUyKASude" role="2Oq$k0">
                  <ref role="3cqZAo" node="3iCUyKASr0I" resolve="value" />
                </node>
                <node concept="liA8E" id="3iCUyKASvNu" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.indexOf(java.lang.String)" resolve="indexOf" />
                  <node concept="Xl_RD" id="3iCUyKASwAs" role="37wK5m">
                    <property role="Xl_RC" value=":" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3iCUyKASo4U" role="1B3o_S" />
      <node concept="17QB3L" id="3iCUyKASpKD" role="3clF45" />
      <node concept="37vLTG" id="3iCUyKASqUI" role="3clF46">
        <property role="TrG5h" value="device" />
        <node concept="3uibUv" id="3iCUyKASqUH" role="1tU5fm">
          <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3iCUyKARR1y" role="jymVt" />
    <node concept="2YIFZL" id="3iCUyKASa$f" role="jymVt">
      <property role="TrG5h" value="getAddress" />
      <node concept="3clFbS" id="3iCUyKASa$i" role="3clF47">
        <node concept="3clFbJ" id="3iCUyKASbZx" role="3cqZAp">
          <node concept="3clFbS" id="3iCUyKASbZy" role="3clFbx">
            <node concept="3cpWs6" id="3iCUyKASbZz" role="3cqZAp">
              <node concept="Xl_RD" id="1OWIO2tFAdW" role="3cqZAk" />
            </node>
          </node>
          <node concept="17QLQc" id="3iCUyKASbZ_" role="3clFbw">
            <node concept="2OqwBi" id="3iCUyKASbZA" role="3uHU7B">
              <node concept="2OqwBi" id="3iCUyKASbZB" role="2Oq$k0">
                <node concept="37vLTw" id="3iCUyKASbZC" role="2Oq$k0">
                  <ref role="3cqZAo" node="3iCUyKASbUH" resolve="device" />
                </node>
                <node concept="liA8E" id="3iCUyKASbZD" role="2OqNvi">
                  <ref role="37wK5l" to="cwd8:~DeviceDeclaration.getTypeReference()" resolve="getTypeReference" />
                </node>
              </node>
              <node concept="liA8E" id="3iCUyKASbZE" role="2OqNvi">
                <ref role="37wK5l" to="7adg:~Reference.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
            <node concept="Xl_RD" id="3iCUyKASbZF" role="3uHU7w">
              <property role="Xl_RC" value="FORTE_PC" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3iCUyKASbZG" role="3cqZAp">
          <node concept="3cpWsn" id="3iCUyKASbZH" role="3cpWs9">
            <property role="TrG5h" value="address" />
            <node concept="3uibUv" id="3iCUyKASbZI" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
            </node>
            <node concept="2OqwBi" id="3iCUyKASbZJ" role="33vP2m">
              <node concept="2OqwBi" id="3iCUyKASbZK" role="2Oq$k0">
                <node concept="2OqwBi" id="3iCUyKASbZL" role="2Oq$k0">
                  <node concept="2OqwBi" id="3iCUyKASbZM" role="2Oq$k0">
                    <node concept="2OqwBi" id="3iCUyKASbZN" role="2Oq$k0">
                      <node concept="37vLTw" id="3iCUyKASbZO" role="2Oq$k0">
                        <ref role="3cqZAo" node="3iCUyKASbUH" resolve="device" />
                      </node>
                      <node concept="liA8E" id="3iCUyKASbZP" role="2OqNvi">
                        <ref role="37wK5l" to="cwd8:~DeviceDeclaration.getParameters()" resolve="getParameters" />
                      </node>
                    </node>
                    <node concept="liA8E" id="3iCUyKASbZQ" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3iCUyKASbZR" role="2OqNvi">
                    <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                    <node concept="1bVj0M" id="3iCUyKASbZS" role="37wK5m">
                      <node concept="3clFbS" id="3iCUyKASbZT" role="1bW5cS">
                        <node concept="3clFbF" id="3iCUyKASbZU" role="3cqZAp">
                          <node concept="17R0WA" id="3iCUyKASbZV" role="3clFbG">
                            <node concept="2OqwBi" id="3iCUyKASbZW" role="3uHU7B">
                              <node concept="2OqwBi" id="3iCUyKASbZX" role="2Oq$k0">
                                <node concept="37vLTw" id="3iCUyKASbZY" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3iCUyKASc02" resolve="it" />
                                </node>
                                <node concept="liA8E" id="3iCUyKASbZZ" role="2OqNvi">
                                  <ref role="37wK5l" to="cwd8:~ParameterAssignment.getParameterReference()" resolve="getParameterReference" />
                                </node>
                              </node>
                              <node concept="liA8E" id="3iCUyKASc00" role="2OqNvi">
                                <ref role="37wK5l" to="7adg:~Reference.getPresentation()" resolve="getPresentation" />
                              </node>
                            </node>
                            <node concept="Xl_RD" id="3iCUyKASc01" role="3uHU7w">
                              <property role="Xl_RC" value="MGR_ID" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="3iCUyKASc02" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="3uibUv" id="3iCUyKASc03" role="1tU5fm">
                          <ref role="3uigEE" to="cwd8:~ParameterAssignment" resolve="ParameterAssignment" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="3iCUyKASc04" role="2OqNvi">
                  <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                </node>
              </node>
              <node concept="liA8E" id="3iCUyKASc05" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~Optional.orElse(java.lang.Object)" resolve="orElse" />
                <node concept="10Nm6u" id="3iCUyKASc06" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="3iCUyKASc07" role="3cqZAp">
          <node concept="3clFbS" id="3iCUyKASc08" role="3clFbx">
            <node concept="3cpWs6" id="3iCUyKASc09" role="3cqZAp">
              <node concept="Xl_RD" id="3iCUyKASe59" role="3cqZAk">
                <property role="Xl_RC" value="" />
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="3iCUyKASc0b" role="3clFbw">
            <node concept="10Nm6u" id="3iCUyKASc0c" role="3uHU7w" />
            <node concept="37vLTw" id="3iCUyKASc0d" role="3uHU7B">
              <ref role="3cqZAo" node="3iCUyKASbZH" resolve="address" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3iCUyKASc0e" role="3cqZAp">
          <node concept="3cpWsn" id="3iCUyKASc0f" role="3cpWs9">
            <property role="TrG5h" value="literal" />
            <node concept="3uibUv" id="3iCUyKASc0g" role="1tU5fm">
              <ref role="3uigEE" to="h353:~Literal" resolve="Literal" />
              <node concept="3qTvmN" id="3iCUyKASc0h" role="11_B2D" />
            </node>
            <node concept="2OqwBi" id="3iCUyKASc0i" role="33vP2m">
              <node concept="37vLTw" id="3iCUyKASc0j" role="2Oq$k0">
                <ref role="3cqZAo" node="3iCUyKASbZH" resolve="address" />
              </node>
              <node concept="liA8E" id="3iCUyKASc0k" role="2OqNvi">
                <ref role="37wK5l" to="cwd8:~ParameterAssignment.getValue()" resolve="getValue" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3iCUyKASc0l" role="3cqZAp">
          <node concept="3cpWsn" id="3iCUyKASc0m" role="3cpWs9">
            <property role="TrG5h" value="value" />
            <node concept="17QB3L" id="3iCUyKASc0n" role="1tU5fm" />
            <node concept="3K4zz7" id="3iCUyKASc0o" role="33vP2m">
              <node concept="Xl_RD" id="3iCUyKASc0p" role="3K4E3e">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="3clFbC" id="3iCUyKASc0q" role="3K4Cdx">
                <node concept="10Nm6u" id="3iCUyKASc0r" role="3uHU7w" />
                <node concept="37vLTw" id="3iCUyKASc0s" role="3uHU7B">
                  <ref role="3cqZAo" node="3iCUyKASc0f" resolve="literal" />
                </node>
              </node>
              <node concept="10QFUN" id="3iCUyKASc0t" role="3K4GZi">
                <node concept="17QB3L" id="3iCUyKASc0u" role="10QFUM" />
                <node concept="2OqwBi" id="3iCUyKASc0v" role="10QFUP">
                  <node concept="37vLTw" id="3iCUyKASc0w" role="2Oq$k0">
                    <ref role="3cqZAo" node="3iCUyKASc0f" resolve="literal" />
                  </node>
                  <node concept="liA8E" id="3iCUyKASc0x" role="2OqNvi">
                    <ref role="37wK5l" to="h353:~Literal.getValue()" resolve="getValue" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3iCUyKASe$L" role="3cqZAp">
          <node concept="37vLTw" id="3iCUyKASf9t" role="3cqZAk">
            <ref role="3cqZAo" node="3iCUyKASc0m" resolve="value" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3iCUyKAS5s_" role="1B3o_S" />
      <node concept="17QB3L" id="3iCUyKAS8Sv" role="3clF45" />
      <node concept="37vLTG" id="3iCUyKASbUH" role="3clF46">
        <property role="TrG5h" value="device" />
        <node concept="3uibUv" id="3iCUyKASbUG" role="1tU5fm">
          <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6kvdbYuibCm" role="jymVt" />
    <node concept="3Tm1VV" id="6kvdbYufADu" role="1B3o_S" />
    <node concept="3uibUv" id="6kvdbYufAL2" role="1zkMxy">
      <ref role="3uigEE" to="n70j:~BaseEventProcessingEditorChecker" resolve="BaseEventProcessingEditorChecker" />
    </node>
  </node>
  <node concept="312cEu" id="3wAsKTk9bGj">
    <property role="TrG5h" value="ForteDeviceConnection" />
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
    <node concept="2tJIrI" id="3wAsKTk9c4s" role="jymVt" />
    <node concept="3clFbW" id="3wAsKTk9bWx" role="jymVt">
      <node concept="3cqZAl" id="3wAsKTk9bWy" role="3clF45" />
      <node concept="3clFbS" id="3wAsKTk9bW$" role="3clF47">
        <node concept="3cpWs8" id="5EXvy3YycLg" role="3cqZAp">
          <node concept="3cpWsn" id="5EXvy3YycLj" role="3cpWs9">
            <property role="TrG5h" value="address" />
            <node concept="17QB3L" id="5EXvy3YycLe" role="1tU5fm" />
            <node concept="2YIFZM" id="3DHoQe85pbv" role="33vP2m">
              <ref role="37wK5l" node="3iCUyKASpO3" resolve="getIP" />
              <ref role="1Pybhc" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
              <node concept="37vLTw" id="3DHoQe85pbw" role="37wK5m">
                <ref role="3cqZAo" node="3wAsKTk9c3g" resolve="device" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3wAsKTk9l5w" role="3cqZAp">
          <node concept="3cpWsn" id="3wAsKTk9l5x" role="3cpWs9">
            <property role="TrG5h" value="port" />
            <node concept="10Oyi0" id="3wAsKTk9l5v" role="1tU5fm" />
            <node concept="2YIFZM" id="42vv4xsBIZl" role="33vP2m">
              <ref role="1Pybhc" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
              <ref role="37wK5l" node="407BnQQjmpL" resolve="getPort" />
              <node concept="37vLTw" id="7pEplJkH40V" role="37wK5m">
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
          <node concept="22lmx$" id="5EXvy3Yyf7i" role="3clFbw">
            <node concept="3clFbC" id="5EXvy3Yygs0" role="3uHU7w">
              <node concept="Xl_RD" id="5EXvy3Yyhdq" role="3uHU7w">
                <property role="Xl_RC" value="" />
              </node>
              <node concept="37vLTw" id="5EXvy3YyfX5" role="3uHU7B">
                <ref role="3cqZAo" node="5EXvy3YycLj" resolve="address" />
              </node>
            </node>
            <node concept="3clFbC" id="3wAsKTk9mJC" role="3uHU7B">
              <node concept="37vLTw" id="3wAsKTk9lxR" role="3uHU7B">
                <ref role="3cqZAo" node="3wAsKTk9l5x" resolve="port" />
              </node>
              <node concept="3cmrfG" id="3wAsKTk9nN_" role="3uHU7w">
                <property role="3cmrfH" value="-1" />
              </node>
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
              <node concept="1pGfFk" id="3Aj$5A5KEnN" role="2ShVmc">
                <ref role="37wK5l" to="zf81:~Socket.&lt;init&gt;()" resolve="Socket" />
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
              <ref role="37wK5l" to="zf81:~Socket.connect(java.net.SocketAddress)" resolve="connect" />
              <node concept="2ShNRf" id="3wAsKTk9e26" role="37wK5m">
                <node concept="1pGfFk" id="3wAsKTk9edh" role="2ShVmc">
                  <ref role="37wK5l" to="zf81:~InetSocketAddress.&lt;init&gt;(java.net.InetAddress,int)" resolve="InetSocketAddress" />
                  <node concept="2YIFZM" id="5EXvy3YyhwM" role="37wK5m">
                    <ref role="37wK5l" to="zf81:~InetAddress.getByName(java.lang.String)" resolve="getByName" />
                    <ref role="1Pybhc" to="zf81:~InetAddress" resolve="InetAddress" />
                    <node concept="37vLTw" id="5EXvy3YyhR8" role="37wK5m">
                      <ref role="3cqZAo" node="5EXvy3YycLj" resolve="address" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="5EXvy3YyicY" role="37wK5m">
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
                        <ref role="37wK5l" to="zf81:~Socket.getInputStream()" resolve="getInputStream" />
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
                        <ref role="37wK5l" to="zf81:~Socket.getOutputStream()" resolve="getOutputStream" />
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
        <node concept="3uibUv" id="407BnQQjjX1" role="1tU5fm">
          <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
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
      <node concept="3Tm6S6" id="42vv4xsAkY0" role="1B3o_S" />
      <node concept="3cqZAl" id="3wAsKTk9BQt" role="3clF45" />
      <node concept="37vLTG" id="3wAsKTk9ClJ" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="3wAsKTk9ClI" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
        </node>
      </node>
      <node concept="3uibUv" id="3wAsKTkaj7g" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="7fNS1AuZTed" role="jymVt" />
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
      <node concept="3cqZAl" id="3wAsKTku7r6" role="3clF45" />
      <node concept="37vLTG" id="3wAsKTku7r7" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="3wAsKTku7r8" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
        </node>
      </node>
      <node concept="3uibUv" id="3wAsKTku7r9" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3Tm1VV" id="NsL_pTivx6" role="1B3o_S" />
      <node concept="2AHcQZ" id="NsL_pTiyGm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7fNS1Avd1cM" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkbTI7" role="jymVt">
      <property role="TrG5h" value="writeParameter" />
      <node concept="3clFbS" id="3wAsKTkbTI8" role="3clF47">
        <node concept="3clFbF" id="3wAsKTkbTI9" role="3cqZAp">
          <node concept="1rXfSq" id="3wAsKTkbTIa" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTk9ROD" resolve="request" />
            <node concept="2OqwBi" id="3wAsKTkgfEe" role="37wK5m">
              <node concept="1PxgMI" id="3wAsKTkgeCl" role="2Oq$k0">
                <node concept="chp4Y" id="3wAsKTkgf26" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
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
      <node concept="3Tm6S6" id="42vv4xsAgLb" role="1B3o_S" />
      <node concept="3cqZAl" id="3wAsKTkbTIx" role="3clF45" />
      <node concept="37vLTG" id="3wAsKTkbTIy" role="3clF46">
        <property role="TrG5h" value="resourceParameter" />
        <node concept="3Tqbb2" id="3wAsKTkbTIz" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
        </node>
      </node>
      <node concept="3uibUv" id="3wAsKTkbTI$" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="7fNS1Av75We" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkbDKL" role="jymVt">
      <property role="TrG5h" value="createFB" />
      <node concept="3clFbS" id="3wAsKTkbDKM" role="3clF47">
        <node concept="3clFbF" id="3wAsKTkbDKN" role="3cqZAp">
          <node concept="1rXfSq" id="3wAsKTkbDKO" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTk9ROD" resolve="request" />
            <node concept="2OqwBi" id="3wAsKTkbQ_A" role="37wK5m">
              <node concept="1PxgMI" id="3wAsKTkbPEG" role="2Oq$k0">
                <node concept="chp4Y" id="3wAsKTkbQ0O" role="3oSUPX">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
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
      <node concept="3Tm6S6" id="42vv4xsAiaM" role="1B3o_S" />
      <node concept="3cqZAl" id="3wAsKTkbDLb" role="3clF45" />
      <node concept="37vLTG" id="3wAsKTkbDLc" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3Tqbb2" id="3wAsKTkbDLd" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
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
                      <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
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
                          <node concept="2OqwBi" id="EAhk9WYLGu" role="2Oq$k0">
                            <node concept="1PxgMI" id="EAhk9WYK_x" role="2Oq$k0">
                              <node concept="chp4Y" id="EAhk9WYLrQ" role="3oSUPX">
                                <ref role="cht4Q" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
                              </node>
                              <node concept="2OqwBi" id="3wAsKTkwlcR" role="1m5AlR">
                                <node concept="37vLTw" id="3wAsKTkwlcS" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3wAsKTkhb0B" resolve="connection" />
                                </node>
                                <node concept="3TrEf2" id="3wAsKTkwlcT" role="2OqNvi">
                                  <ref role="3Tt5mk" to="xiqq:4KieeRVlhj5" resolve="source" />
                                </node>
                              </node>
                            </node>
                            <node concept="3TrEf2" id="EAhk9WYMC2" role="2OqNvi">
                              <ref role="3Tt5mk" to="xiqq:7DSsXPFKSqX" resolve="value" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="EAhk9WYNvY" role="2OqNvi">
                            <ref role="37wK5l" to="4fey:EAhk9WY3Ij" resolve="getLoadablePresentation" />
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
                        <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
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
      <node concept="3Tm6S6" id="42vv4xsAj$p" role="1B3o_S" />
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
    <node concept="2tJIrI" id="3wAsKTkh9NG" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkgxxr" role="jymVt">
      <property role="TrG5h" value="addWatch" />
      <node concept="3clFbS" id="3wAsKTkgxxs" role="3clF47">
        <node concept="3clFbF" id="3wAsKTkgxxt" role="3cqZAp">
          <node concept="1rXfSq" id="3wAsKTkgxxu" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTk9ROD" resolve="request" />
            <node concept="2OqwBi" id="3wAsKTkgxxv" role="37wK5m">
              <node concept="2OqwBi" id="5PjcHHG8aVH" role="2Oq$k0">
                <node concept="2OqwBi" id="5PjcHHG89MS" role="2Oq$k0">
                  <node concept="37vLTw" id="5PjcHHG88Zk" role="2Oq$k0">
                    <ref role="3cqZAo" node="5PjcHHG86Vt" resolve="watchable" />
                  </node>
                  <node concept="liA8E" id="5PjcHHG8ayG" role="2OqNvi">
                    <ref role="37wK5l" to="6w4o:~Watchable.getPath()" resolve="getPath" />
                  </node>
                </node>
                <node concept="liA8E" id="5PjcHHG8bGi" role="2OqNvi">
                  <ref role="37wK5l" to="6w4o:~WatchablePath.getRoot()" resolve="getRoot" />
                </node>
              </node>
              <node concept="liA8E" id="407BnQQiGXd" role="2OqNvi">
                <ref role="37wK5l" to="7adg:~Declaration.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="3cpWs3" id="3wAsKTkgxxC" role="37wK5m">
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
                <node concept="1rXfSq" id="5PjcHHG8Mft" role="3uHU7w">
                  <ref role="37wK5l" node="5PjcHHG8Mfp" resolve="serializeSource" />
                  <node concept="37vLTw" id="5PjcHHG8Mfs" role="37wK5m">
                    <ref role="3cqZAo" node="5PjcHHG86Vt" resolve="watchable" />
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
      <node concept="3Tm1VV" id="42vv4xsAnLe" role="1B3o_S" />
      <node concept="3cqZAl" id="3wAsKTkgxxV" role="3clF45" />
      <node concept="37vLTG" id="5PjcHHG86Vt" role="3clF46">
        <property role="TrG5h" value="watchable" />
        <node concept="3uibUv" id="407BnQQiFPG" role="1tU5fm">
          <ref role="3uigEE" to="6w4o:~Watchable" resolve="Watchable" />
        </node>
        <node concept="2AHcQZ" id="5PjcHHG86Vv" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="3wAsKTkgxxY" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="2AHcQZ" id="42vv4xsEsfC" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTkh2xU" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTkh1jo" role="jymVt">
      <property role="TrG5h" value="removeWatch" />
      <node concept="3clFbS" id="3wAsKTkh1jp" role="3clF47">
        <node concept="3clFbF" id="3wAsKTkh1jq" role="3cqZAp">
          <node concept="1rXfSq" id="3wAsKTkh1jr" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTk9ROD" resolve="request" />
            <node concept="2OqwBi" id="5PjcHHG8TMb" role="37wK5m">
              <node concept="2OqwBi" id="5PjcHHG8TMc" role="2Oq$k0">
                <node concept="2OqwBi" id="5PjcHHG8TMd" role="2Oq$k0">
                  <node concept="37vLTw" id="5PjcHHG8TMe" role="2Oq$k0">
                    <ref role="3cqZAo" node="5PjcHHG7Mot" resolve="watchable" />
                  </node>
                  <node concept="liA8E" id="5PjcHHG8TMf" role="2OqNvi">
                    <ref role="37wK5l" to="6w4o:~Watchable.getPath()" resolve="getPath" />
                  </node>
                </node>
                <node concept="liA8E" id="5PjcHHG8TMg" role="2OqNvi">
                  <ref role="37wK5l" to="6w4o:~WatchablePath.getRoot()" resolve="getRoot" />
                </node>
              </node>
              <node concept="liA8E" id="407BnQQiIgE" role="2OqNvi">
                <ref role="37wK5l" to="7adg:~Declaration.getName()" resolve="getName" />
              </node>
            </node>
            <node concept="3cpWs3" id="3wAsKTkh1jz" role="37wK5m">
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
                <node concept="1rXfSq" id="5PjcHHG8WX9" role="3uHU7w">
                  <ref role="37wK5l" node="5PjcHHG8Mfp" resolve="serializeSource" />
                  <node concept="37vLTw" id="5PjcHHG8XVW" role="37wK5m">
                    <ref role="3cqZAo" node="5PjcHHG7Mot" resolve="watchable" />
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
      <node concept="37vLTG" id="5PjcHHG7Mot" role="3clF46">
        <property role="TrG5h" value="watchable" />
        <node concept="3uibUv" id="407BnQQiH7Y" role="1tU5fm">
          <ref role="3uigEE" to="6w4o:~Watchable" resolve="Watchable" />
        </node>
        <node concept="2AHcQZ" id="5PjcHHG7Mts" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3uibUv" id="3wAsKTkh1jT" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="2AHcQZ" id="42vv4xsEsfB" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5PjcHHG8RZr" role="jymVt" />
    <node concept="3clFb_" id="5PjcHHG8Mfp" role="jymVt">
      <property role="TrG5h" value="serializeSource" />
      <node concept="3Tm6S6" id="5PjcHHG8Mfq" role="1B3o_S" />
      <node concept="17QB3L" id="5PjcHHG8Mfr" role="3clF45" />
      <node concept="37vLTG" id="5PjcHHG8M7p" role="3clF46">
        <property role="TrG5h" value="watchable" />
        <node concept="3uibUv" id="407BnQQiIrC" role="1tU5fm">
          <ref role="3uigEE" to="6w4o:~Watchable" resolve="Watchable" />
        </node>
      </node>
      <node concept="3clFbS" id="5PjcHHG8LZ1" role="3clF47">
        <node concept="3cpWs8" id="3Ro5QZM1Ahe" role="3cqZAp">
          <node concept="3cpWsn" id="3Ro5QZM1Ahf" role="3cpWs9">
            <property role="TrG5h" value="path" />
            <node concept="2OqwBi" id="3Ro5QZM1Ahg" role="33vP2m">
              <node concept="2OqwBi" id="3Ro5QZM1Ahh" role="2Oq$k0">
                <node concept="37vLTw" id="3Ro5QZM1Ahi" role="2Oq$k0">
                  <ref role="3cqZAo" node="5PjcHHG8M7p" resolve="watchable" />
                </node>
                <node concept="liA8E" id="3Ro5QZM1Ahj" role="2OqNvi">
                  <ref role="37wK5l" to="6w4o:~Watchable.getPath()" resolve="getPath" />
                </node>
              </node>
              <node concept="liA8E" id="3Ro5QZM1Ahk" role="2OqNvi">
                <ref role="37wK5l" to="6w4o:~WatchablePath.getPath()" resolve="getPath" />
              </node>
            </node>
            <node concept="_YKpA" id="3Ro5QZM1HPz" role="1tU5fm">
              <node concept="3uibUv" id="3Ro5QZM1KYH" role="_ZDj9">
                <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5PjcHHG8M6X" role="3cqZAp">
          <node concept="3cpWs3" id="5PjcHHG8M6Z" role="3cqZAk">
            <node concept="3cpWs3" id="5PjcHHG8M70" role="3uHU7B">
              <node concept="Xl_RD" id="5PjcHHG8M71" role="3uHU7w">
                <property role="Xl_RC" value="." />
              </node>
              <node concept="2OqwBi" id="5PjcHHG8M72" role="3uHU7B">
                <node concept="2OqwBi" id="5PjcHHG8M73" role="2Oq$k0">
                  <node concept="37vLTw" id="3Ro5QZM1Ahl" role="2Oq$k0">
                    <ref role="3cqZAo" node="3Ro5QZM1Ahf" resolve="path" />
                  </node>
                  <node concept="3$u5V9" id="5PjcHHG8M7b" role="2OqNvi">
                    <node concept="1bVj0M" id="5PjcHHG8M7c" role="23t8la">
                      <node concept="3clFbS" id="5PjcHHG8M7d" role="1bW5cS">
                        <node concept="3clFbF" id="5PjcHHG8M7e" role="3cqZAp">
                          <node concept="2OqwBi" id="5PjcHHG8M7f" role="3clFbG">
                            <node concept="37vLTw" id="5PjcHHG8M7g" role="2Oq$k0">
                              <ref role="3cqZAo" node="5PjcHHG8M7i" resolve="it" />
                            </node>
                            <node concept="liA8E" id="407BnQQiNdy" role="2OqNvi">
                              <ref role="37wK5l" to="7adg:~Declaration.getName()" resolve="getName" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="Rh6nW" id="5PjcHHG8M7i" role="1bW2Oz">
                        <property role="TrG5h" value="it" />
                        <node concept="2jxLKc" id="5PjcHHG8M7j" role="1tU5fm" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3uJxvA" id="5PjcHHG8M7k" role="2OqNvi">
                  <node concept="Xl_RD" id="5PjcHHG8M7l" role="3uJOhx">
                    <property role="Xl_RC" value="." />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="5PjcHHG8M7m" role="3uHU7w">
              <node concept="37vLTw" id="5PjcHHG8M7r" role="2Oq$k0">
                <ref role="3cqZAo" node="5PjcHHG8M7p" resolve="watchable" />
              </node>
              <node concept="liA8E" id="5PjcHHG8M7o" role="2OqNvi">
                <ref role="37wK5l" to="6w4o:~Watchable.getPort()" resolve="getPort" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5HzRr7EIPAO" role="jymVt" />
    <node concept="3clFb_" id="5HzRr7EIUJ2" role="jymVt">
      <property role="TrG5h" value="writeFBParameter" />
      <node concept="3clFbS" id="5HzRr7EIUJ5" role="3clF47">
        <node concept="3cpWs8" id="5HzRr7EKTG0" role="3cqZAp">
          <node concept="3cpWsn" id="5HzRr7EKTG3" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <node concept="3Tqbb2" id="5HzRr7EKTFY" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
            </node>
            <node concept="1PxgMI" id="5HzRr7EKXIx" role="33vP2m">
              <node concept="chp4Y" id="5HzRr7EKY_q" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
              </node>
              <node concept="2OqwBi" id="5HzRr7EKWnh" role="1m5AlR">
                <node concept="37vLTw" id="5HzRr7EKUok" role="2Oq$k0">
                  <ref role="3cqZAo" node="5HzRr7EKRjo" resolve="parameter" />
                </node>
                <node concept="1mfA1w" id="5HzRr7EKWLB" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5HzRr7EKXYd" role="3cqZAp">
          <node concept="3cpWsn" id="5HzRr7EKXYe" role="3cpWs9">
            <property role="TrG5h" value="resource" />
            <node concept="3Tqbb2" id="5HzRr7EKXYf" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
            </node>
            <node concept="1PxgMI" id="5HzRr7EKXYg" role="33vP2m">
              <node concept="chp4Y" id="5HzRr7EKXYh" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
              </node>
              <node concept="2OqwBi" id="5HzRr7EKXYi" role="1m5AlR">
                <node concept="2OqwBi" id="5HzRr7EKXYj" role="2Oq$k0">
                  <node concept="37vLTw" id="5HzRr7EKXYk" role="2Oq$k0">
                    <ref role="3cqZAo" node="5HzRr7EKRjo" resolve="parameter" />
                  </node>
                  <node concept="1mfA1w" id="5HzRr7EKXYl" role="2OqNvi" />
                </node>
                <node concept="1mfA1w" id="5HzRr7EKXYm" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5HzRr7EJZPX" role="3cqZAp">
          <node concept="1rXfSq" id="5HzRr7EJZPY" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTk9ROD" resolve="request" />
            <node concept="2OqwBi" id="5HzRr7EK5TP" role="37wK5m">
              <node concept="37vLTw" id="5HzRr7EKZ2e" role="2Oq$k0">
                <ref role="3cqZAo" node="5HzRr7EKXYe" resolve="resource" />
              </node>
              <node concept="3TrcHB" id="5HzRr7EK6MJ" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
            <node concept="3cpWs3" id="5HzRr7EJZQ6" role="37wK5m">
              <node concept="3cpWs3" id="5HzRr7EKbY0" role="3uHU7B">
                <node concept="3cpWs3" id="5HzRr7EK9B9" role="3uHU7B">
                  <node concept="3cpWs3" id="5HzRr7EJZQ7" role="3uHU7B">
                    <node concept="3cpWs3" id="5HzRr7EJZQ8" role="3uHU7B">
                      <node concept="3cpWs3" id="5HzRr7EJZQ9" role="3uHU7B">
                        <node concept="3cpWs3" id="5HzRr7EJZQa" role="3uHU7B">
                          <node concept="3cpWs3" id="5HzRr7EJZQb" role="3uHU7B">
                            <node concept="Xl_RD" id="5HzRr7EJZQc" role="3uHU7B">
                              <property role="Xl_RC" value="&lt;Request ID=\&quot;" />
                            </node>
                            <node concept="3uNrnE" id="5HzRr7EJZQd" role="3uHU7w">
                              <node concept="37vLTw" id="5HzRr7EJZQe" role="2$L3a6">
                                <ref role="3cqZAo" node="3wAsKTk9D2_" resolve="id" />
                              </node>
                            </node>
                          </node>
                          <node concept="Xl_RD" id="5HzRr7EJZQf" role="3uHU7w">
                            <property role="Xl_RC" value="\&quot; Action=\&quot;WRITE\&quot;&gt;&lt;Connection Source=\&quot;" />
                          </node>
                        </node>
                        <node concept="2OqwBi" id="5HzRr7EJZQg" role="3uHU7w">
                          <node concept="2OqwBi" id="5HzRr7EL0hH" role="2Oq$k0">
                            <node concept="37vLTw" id="5HzRr7EKZFP" role="2Oq$k0">
                              <ref role="3cqZAo" node="5HzRr7EKRjo" resolve="parameter" />
                            </node>
                            <node concept="3TrEf2" id="5HzRr7EL0Jq" role="2OqNvi">
                              <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7f" resolve="value" />
                            </node>
                          </node>
                          <node concept="2qgKlT" id="5HzRr7EL1nA" role="2OqNvi">
                            <ref role="37wK5l" to="4fey:EAhk9WY3Ij" resolve="getLoadablePresentation" />
                          </node>
                        </node>
                      </node>
                      <node concept="Xl_RD" id="5HzRr7EJZQp" role="3uHU7w">
                        <property role="Xl_RC" value="\&quot; Destination=\&quot;" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="5HzRr7EKauM" role="3uHU7w">
                      <node concept="37vLTw" id="5HzRr7EL1DG" role="2Oq$k0">
                        <ref role="3cqZAo" node="5HzRr7EKTG3" resolve="fb" />
                      </node>
                      <node concept="3TrcHB" id="5HzRr7EKb4U" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                  </node>
                  <node concept="Xl_RD" id="5HzRr7EK9N0" role="3uHU7w">
                    <property role="Xl_RC" value="." />
                  </node>
                </node>
                <node concept="2OqwBi" id="5HzRr7EKd_E" role="3uHU7w">
                  <node concept="2OqwBi" id="5HzRr7EL2ZM" role="2Oq$k0">
                    <node concept="37vLTw" id="5HzRr7EL2pS" role="2Oq$k0">
                      <ref role="3cqZAo" node="5HzRr7EKRjo" resolve="parameter" />
                    </node>
                    <node concept="3TrEf2" id="5HzRr7EL3Ec" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:2lwHqHkyF7b" resolve="decl" />
                    </node>
                  </node>
                  <node concept="3TrcHB" id="5HzRr7EL4eW" role="2OqNvi">
                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                  </node>
                </node>
              </node>
              <node concept="Xl_RD" id="5HzRr7EJZQv" role="3uHU7w">
                <property role="Xl_RC" value="\&quot; /&gt;&lt;/Request&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="5HzRr7EIRiE" role="1B3o_S" />
      <node concept="3cqZAl" id="5HzRr7EIUzs" role="3clF45" />
      <node concept="3uibUv" id="5HzRr7EKOh8" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="37vLTG" id="5HzRr7EKRjo" role="3clF46">
        <property role="TrG5h" value="parameter" />
        <node concept="3Tqbb2" id="5HzRr7EKRjn" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyF7a" resolve="ParameterAssignment" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="7fNS1Av4tro" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTktpyN" role="jymVt">
      <property role="TrG5h" value="deployResource" />
      <node concept="3clFbS" id="3wAsKTktpyQ" role="3clF47">
        <node concept="3clFbF" id="6nyjygWRLYa" role="3cqZAp">
          <node concept="1rXfSq" id="6nyjygWRLY9" role="3clFbG">
            <ref role="37wK5l" node="6nyjygWRLY0" resolve="createResourceNetwork" />
            <node concept="37vLTw" id="6nyjygWRLY8" role="37wK5m">
              <ref role="3cqZAo" node="3wAsKTktr25" resolve="resource" />
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
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
        </node>
      </node>
      <node concept="3uibUv" id="3wAsKTktSJG" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="2AHcQZ" id="42vv4xsEsfE" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="6nyjygWRQbZ" role="jymVt" />
    <node concept="3clFb_" id="7fNS1AuqKZ7" role="jymVt">
      <property role="TrG5h" value="deployResource" />
      <node concept="3Tm1VV" id="7fNS1AuqKZ8" role="1B3o_S" />
      <node concept="3cqZAl" id="7fNS1AuqKZa" role="3clF45" />
      <node concept="37vLTG" id="7fNS1AuqKZb" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3uibUv" id="7fNS1AuqKZc" role="1tU5fm">
          <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
        </node>
        <node concept="2AHcQZ" id="7fNS1AuqKZd" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="7fNS1AuqKZe" role="3clF47">
        <node concept="3clFbF" id="2jKucV7VgrW" role="3cqZAp">
          <node concept="1rXfSq" id="2jKucV7VgrU" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTktpyN" resolve="deployResource" />
            <node concept="2OqwBi" id="2jKucV7VZbT" role="37wK5m">
              <node concept="1eOMI4" id="2jKucV7VR2$" role="2Oq$k0">
                <node concept="0kSF2" id="2jKucV7Vup$" role="1eOMHV">
                  <node concept="3uibUv" id="2jKucV7VupB" role="0kSFW">
                    <ref role="3uigEE" to="go3h:3MncU7wPlNy" resolve="ResourceDeclarationByNode" />
                  </node>
                  <node concept="37vLTw" id="2jKucV7Vk4T" role="0kSFX">
                    <ref role="3cqZAo" node="7fNS1AuqKZb" resolve="resource" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="2jKucV7W2E_" role="2OqNvi">
                <ref role="37wK5l" to="fcfa:1IuIrLUoZ3S" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="7fNS1AuqKZf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3uibUv" id="7fNS1AusVqZ" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
    </node>
    <node concept="2tJIrI" id="4XDnwRaUQfE" role="jymVt" />
    <node concept="3clFb_" id="6nyjygWRLY0" role="jymVt">
      <property role="TrG5h" value="createResourceNetwork" />
      <node concept="3Tm1VV" id="6nyjygWSnFl" role="1B3o_S" />
      <node concept="3cqZAl" id="6nyjygWSkp9" role="3clF45" />
      <node concept="37vLTG" id="6nyjygWRLXR" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="6nyjygWRLXS" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="6nyjygWRLX6" role="3clF47">
        <node concept="3clFbF" id="6nyjygWRLX7" role="3cqZAp">
          <node concept="1rXfSq" id="6nyjygWRLX8" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTk9BZL" resolve="createResource" />
            <node concept="37vLTw" id="6nyjygWRLXV" role="37wK5m">
              <ref role="3cqZAo" node="6nyjygWRLXR" resolve="resource" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6nyjygWRLXa" role="3cqZAp">
          <node concept="2GrKxI" id="6nyjygWRLXb" role="2Gsz3X">
            <property role="TrG5h" value="fb" />
          </node>
          <node concept="2OqwBi" id="6nyjygWRLXc" role="2GsD0m">
            <node concept="37vLTw" id="6nyjygWRLXU" role="2Oq$k0">
              <ref role="3cqZAo" node="6nyjygWRLXR" resolve="resource" />
            </node>
            <node concept="3Tsc0h" id="6nyjygWRLXe" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
            </node>
          </node>
          <node concept="3clFbS" id="6nyjygWRLXf" role="2LFqv$">
            <node concept="3clFbF" id="6nyjygWRLXg" role="3cqZAp">
              <node concept="1rXfSq" id="6nyjygWRLXh" role="3clFbG">
                <ref role="37wK5l" node="3wAsKTkbDKL" resolve="createFB" />
                <node concept="2GrUjf" id="6nyjygWRLXi" role="37wK5m">
                  <ref role="2Gs0qQ" node="6nyjygWRLXb" resolve="fb" />
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="6nyjygWRLXj" role="3cqZAp">
              <node concept="2GrKxI" id="6nyjygWRLXk" role="2Gsz3X">
                <property role="TrG5h" value="parameter" />
              </node>
              <node concept="2OqwBi" id="6nyjygWRLXl" role="2GsD0m">
                <node concept="2GrUjf" id="6nyjygWRLXm" role="2Oq$k0">
                  <ref role="2Gs0qQ" node="6nyjygWRLXb" resolve="fb" />
                </node>
                <node concept="3Tsc0h" id="6nyjygWRLXn" role="2OqNvi">
                  <ref role="3TtcxE" to="xiqq:5HzRr7EFlvw" resolve="parameters" />
                </node>
              </node>
              <node concept="3clFbS" id="6nyjygWRLXo" role="2LFqv$">
                <node concept="3clFbF" id="6nyjygWRLXp" role="3cqZAp">
                  <node concept="1rXfSq" id="6nyjygWRLXq" role="3clFbG">
                    <ref role="37wK5l" node="5HzRr7EIUJ2" resolve="writeFBParameter" />
                    <node concept="2GrUjf" id="6nyjygWRLXr" role="37wK5m">
                      <ref role="2Gs0qQ" node="6nyjygWRLXk" resolve="parameter" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6nyjygWRLXs" role="3cqZAp">
          <node concept="2GrKxI" id="6nyjygWRLXt" role="2Gsz3X">
            <property role="TrG5h" value="parameter" />
          </node>
          <node concept="2OqwBi" id="6nyjygWRLXu" role="2GsD0m">
            <node concept="37vLTw" id="6nyjygWRLXX" role="2Oq$k0">
              <ref role="3cqZAo" node="6nyjygWRLXR" resolve="resource" />
            </node>
            <node concept="3Tsc0h" id="6nyjygWRLXw" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:2lwHqHk$ftU" resolve="parameters" />
            </node>
          </node>
          <node concept="3clFbS" id="6nyjygWRLXx" role="2LFqv$">
            <node concept="3clFbF" id="6nyjygWRLXy" role="3cqZAp">
              <node concept="1rXfSq" id="6nyjygWRLXz" role="3clFbG">
                <ref role="37wK5l" node="3wAsKTkbTI7" resolve="writeParameter" />
                <node concept="2GrUjf" id="6nyjygWRLX$" role="37wK5m">
                  <ref role="2Gs0qQ" node="6nyjygWRLXt" resolve="parameter" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6nyjygWRLX_" role="3cqZAp">
          <node concept="2GrKxI" id="6nyjygWRLXA" role="2Gsz3X">
            <property role="TrG5h" value="connection" />
          </node>
          <node concept="2OqwBi" id="6nyjygWRLXB" role="2GsD0m">
            <node concept="37vLTw" id="6nyjygWRLXT" role="2Oq$k0">
              <ref role="3cqZAo" node="6nyjygWRLXR" resolve="resource" />
            </node>
            <node concept="3Tsc0h" id="6nyjygWRLXD" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:PI_pXYus4D" resolve="eventConnections" />
            </node>
          </node>
          <node concept="3clFbS" id="6nyjygWRLXE" role="2LFqv$">
            <node concept="3clFbF" id="6nyjygWRLXF" role="3cqZAp">
              <node concept="1rXfSq" id="6nyjygWRLXG" role="3clFbG">
                <ref role="37wK5l" node="3wAsKTkhb06" resolve="createConnection" />
                <node concept="2GrUjf" id="6nyjygWRLXH" role="37wK5m">
                  <ref role="2Gs0qQ" node="6nyjygWRLXA" resolve="connection" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6nyjygWRLXI" role="3cqZAp">
          <node concept="2GrKxI" id="6nyjygWRLXJ" role="2Gsz3X">
            <property role="TrG5h" value="connection" />
          </node>
          <node concept="2OqwBi" id="6nyjygWRLXK" role="2GsD0m">
            <node concept="37vLTw" id="6nyjygWRLXW" role="2Oq$k0">
              <ref role="3cqZAo" node="6nyjygWRLXR" resolve="resource" />
            </node>
            <node concept="3Tsc0h" id="6nyjygWRLXM" role="2OqNvi">
              <ref role="3TtcxE" to="xiqq:PI_pXYus4$" resolve="dataConnections" />
            </node>
          </node>
          <node concept="3clFbS" id="6nyjygWRLXN" role="2LFqv$">
            <node concept="3clFbF" id="6nyjygWRLXO" role="3cqZAp">
              <node concept="1rXfSq" id="6nyjygWRLXP" role="3clFbG">
                <ref role="37wK5l" node="3wAsKTkhb06" resolve="createConnection" />
                <node concept="2GrUjf" id="6nyjygWRLXQ" role="37wK5m">
                  <ref role="2Gs0qQ" node="6nyjygWRLXJ" resolve="connection" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6nyjygWS4EZ" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="2AHcQZ" id="8J9vnM337Y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3m7NxmgfzXm" role="jymVt" />
    <node concept="3clFb_" id="3m7NxmgdDjV" role="jymVt">
      <property role="TrG5h" value="killResource" />
      <node concept="3Tm1VV" id="3m7NxmgdDjW" role="1B3o_S" />
      <node concept="3cqZAl" id="3m7NxmgdDjY" role="3clF45" />
      <node concept="37vLTG" id="NsL_pThyIf" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="NsL_pThyIg" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
        </node>
      </node>
      <node concept="3uibUv" id="3m7NxmgdDk2" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3clFbS" id="3m7NxmgdDk3" role="3clF47">
        <node concept="3clFbF" id="3m7NxmgeAOV" role="3cqZAp">
          <node concept="1rXfSq" id="3m7NxmgeAOW" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTk9ROD" resolve="request" />
            <node concept="Xl_RD" id="3m7NxmgeAOX" role="37wK5m">
              <property role="Xl_RC" value="" />
            </node>
            <node concept="3cpWs3" id="3m7NxmgeAOY" role="37wK5m">
              <node concept="3cpWs3" id="3m7NxmgeAP0" role="3uHU7B">
                <node concept="3cpWs3" id="3m7NxmgeAP1" role="3uHU7B">
                  <node concept="3cpWs3" id="3m7NxmgeAP2" role="3uHU7B">
                    <node concept="3cpWs3" id="3m7NxmgeAP3" role="3uHU7B">
                      <node concept="Xl_RD" id="3m7NxmgeAP4" role="3uHU7B">
                        <property role="Xl_RC" value="&lt;Request ID=\&quot;" />
                      </node>
                      <node concept="3uNrnE" id="3m7NxmgeAP5" role="3uHU7w">
                        <node concept="37vLTw" id="3m7NxmgeAP6" role="2$L3a6">
                          <ref role="3cqZAo" node="3wAsKTk9D2_" resolve="id" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="3m7NxmgeAP7" role="3uHU7w">
                      <property role="Xl_RC" value="\&quot; Action=\&quot;KILL\&quot;&gt;&lt;FB Name=\&quot;" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3m7NxmgeAP8" role="3uHU7w">
                    <node concept="37vLTw" id="3m7NxmgeAP9" role="2Oq$k0">
                      <ref role="3cqZAo" node="NsL_pThyIf" resolve="resource" />
                    </node>
                    <node concept="3TrcHB" id="3m7NxmggN8O" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="3m7NxmgeAPb" role="3uHU7w">
                  <property role="Xl_RC" value="\&quot; Type=\&quot;" />
                </node>
              </node>
              <node concept="Xl_RD" id="3m7NxmgeAPh" role="3uHU7w">
                <property role="Xl_RC" value="\&quot; /&gt;&lt;/Request&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3m7NxmgdDk4" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hzhDSCJnar" role="jymVt" />
    <node concept="3clFb_" id="2hzhDSCJrI6" role="jymVt">
      <property role="TrG5h" value="deleteResource" />
      <node concept="3Tm1VV" id="2hzhDSCJrI7" role="1B3o_S" />
      <node concept="3cqZAl" id="2hzhDSCJrI9" role="3clF45" />
      <node concept="37vLTG" id="NsL_pTiiaO" role="3clF46">
        <property role="TrG5h" value="resource" />
        <node concept="3Tqbb2" id="NsL_pTiiaP" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
        </node>
      </node>
      <node concept="3uibUv" id="2hzhDSCJrId" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3clFbS" id="2hzhDSCJrIe" role="3clF47">
        <node concept="3clFbF" id="2hzhDSCJHFK" role="3cqZAp">
          <node concept="1rXfSq" id="2hzhDSCJHFL" role="3clFbG">
            <ref role="37wK5l" node="3wAsKTk9ROD" resolve="request" />
            <node concept="Xl_RD" id="2hzhDSCJHFM" role="37wK5m">
              <property role="Xl_RC" value="" />
            </node>
            <node concept="3cpWs3" id="2hzhDSCJHFN" role="37wK5m">
              <node concept="3cpWs3" id="2hzhDSCJHFO" role="3uHU7B">
                <node concept="3cpWs3" id="2hzhDSCJHFP" role="3uHU7B">
                  <node concept="3cpWs3" id="2hzhDSCJHFQ" role="3uHU7B">
                    <node concept="3cpWs3" id="2hzhDSCJHFR" role="3uHU7B">
                      <node concept="Xl_RD" id="2hzhDSCJHFS" role="3uHU7B">
                        <property role="Xl_RC" value="&lt;Request ID=\&quot;" />
                      </node>
                      <node concept="3uNrnE" id="2hzhDSCJHFT" role="3uHU7w">
                        <node concept="37vLTw" id="2hzhDSCJHFU" role="2$L3a6">
                          <ref role="3cqZAo" node="3wAsKTk9D2_" resolve="id" />
                        </node>
                      </node>
                    </node>
                    <node concept="Xl_RD" id="2hzhDSCJHFV" role="3uHU7w">
                      <property role="Xl_RC" value="\&quot; Action=\&quot;DELETE\&quot;&gt;&lt;FB Name=\&quot;" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2hzhDSCJHFW" role="3uHU7w">
                    <node concept="37vLTw" id="2hzhDSCJHFX" role="2Oq$k0">
                      <ref role="3cqZAo" node="NsL_pTiiaO" resolve="resource" />
                    </node>
                    <node concept="3TrcHB" id="2hzhDSCJHFY" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
                <node concept="Xl_RD" id="2hzhDSCJHFZ" role="3uHU7w">
                  <property role="Xl_RC" value="\&quot; Type=\&quot;" />
                </node>
              </node>
              <node concept="Xl_RD" id="2hzhDSCJHG0" role="3uHU7w">
                <property role="Xl_RC" value="\&quot; /&gt;&lt;/Request&gt;" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2hzhDSCJrIf" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="7fNS1AuVdjo" role="jymVt" />
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
      <node concept="2AHcQZ" id="42vv4xsEsfD" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3wAsKTk9Bu$" role="jymVt" />
    <node concept="3clFb_" id="5FIIKsRjNAp" role="jymVt">
      <property role="TrG5h" value="isAlive" />
      <node concept="3Tm1VV" id="5FIIKsRjNAr" role="1B3o_S" />
      <node concept="10P_77" id="5FIIKsRjNAs" role="3clF45" />
      <node concept="3clFbS" id="5FIIKsRjNAt" role="3clF47">
        <node concept="3clFbF" id="5FIIKsRjXxJ" role="3cqZAp">
          <node concept="1Wc70l" id="k3FE8is_dk" role="3clFbG">
            <node concept="2OqwBi" id="k3FE8isAip" role="3uHU7w">
              <node concept="37vLTw" id="k3FE8is_BK" role="2Oq$k0">
                <ref role="3cqZAo" node="3wAsKTk9dMF" resolve="socket" />
              </node>
              <node concept="liA8E" id="k3FE8isBmY" role="2OqNvi">
                <ref role="37wK5l" to="zf81:~Socket.isConnected()" resolve="isConnected" />
              </node>
            </node>
            <node concept="3fqX7Q" id="5FIIKsRk1kq" role="3uHU7B">
              <node concept="2OqwBi" id="5FIIKsRk1ks" role="3fr31v">
                <node concept="37vLTw" id="5FIIKsRk1kt" role="2Oq$k0">
                  <ref role="3cqZAo" node="3wAsKTk9dMF" resolve="socket" />
                </node>
                <node concept="liA8E" id="5FIIKsRk1ku" role="2OqNvi">
                  <ref role="37wK5l" to="zf81:~Socket.isClosed()" resolve="isClosed" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="5FIIKsRjNAu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5FIIKsRj_67" role="jymVt" />
    <node concept="3clFb_" id="3wAsKTk9ROD" role="jymVt">
      <property role="TrG5h" value="request" />
      <node concept="3clFbS" id="3wAsKTk9ROG" role="3clF47">
        <node concept="3clFbF" id="3wAsKTk9TMj" role="3cqZAp">
          <node concept="2OqwBi" id="3wAsKTk9Uez" role="3clFbG">
            <node concept="37vLTw" id="3wAsKTk9TMi" role="2Oq$k0">
              <ref role="3cqZAo" node="3wAsKTk9uGk" resolve="outputStream" />
            </node>
            <node concept="liA8E" id="3wAsKTk9WFa" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~DataOutputStream.writeByte(int)" resolve="writeByte" />
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
              <ref role="37wK5l" to="guwi:~DataOutputStream.writeShort(int)" resolve="writeShort" />
              <node concept="2OqwBi" id="3wAsKTka3HX" role="37wK5m">
                <node concept="37vLTw" id="3wAsKTka35e" role="2Oq$k0">
                  <ref role="3cqZAo" node="3wAsKTk9SRj" resolve="resource" />
                </node>
                <node concept="liA8E" id="3wAsKTka5Kk" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
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
              <ref role="37wK5l" to="guwi:~DataOutputStream.writeBytes(java.lang.String)" resolve="writeBytes" />
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
              <ref role="37wK5l" to="guwi:~DataOutputStream.writeByte(int)" resolve="writeByte" />
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
              <ref role="37wK5l" to="guwi:~DataOutputStream.writeShort(int)" resolve="writeShort" />
              <node concept="2OqwBi" id="3wAsKTkauSm" role="37wK5m">
                <node concept="37vLTw" id="3wAsKTkavgw" role="2Oq$k0">
                  <ref role="3cqZAo" node="3wAsKTk9Sp1" resolve="request" />
                </node>
                <node concept="liA8E" id="3wAsKTkauSo" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.length()" resolve="length" />
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
              <ref role="37wK5l" to="guwi:~DataOutputStream.writeBytes(java.lang.String)" resolve="writeBytes" />
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
              <ref role="37wK5l" to="guwi:~DataOutputStream.flush()" resolve="flush" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3wAsKTkaCWM" role="3cqZAp" />
        <node concept="2xdQw9" id="3wAsKTktEyG" role="3cqZAp">
          <property role="2xdLsb" value="gZ5fksE/warn" />
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
                <ref role="37wK5l" to="guwi:~DataInputStream.readByte()" resolve="readByte" />
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
                <ref role="37wK5l" to="guwi:~DataInputStream.readShort()" resolve="readShort" />
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
                        <ref role="37wK5l" to="guwi:~DataInputStream.readByte()" resolve="readByte" />
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
          <property role="2xdLsb" value="gZ5fksE/warn" />
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
    <node concept="2tJIrI" id="42vv4xsBmeX" role="jymVt" />
    <node concept="3clFb_" id="42vv4xsBo7Q" role="jymVt">
      <property role="TrG5h" value="close" />
      <node concept="3Tm1VV" id="42vv4xsBo7R" role="1B3o_S" />
      <node concept="3cqZAl" id="42vv4xsBo7T" role="3clF45" />
      <node concept="3uibUv" id="42vv4xsBo7U" role="Sfmx6">
        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
      </node>
      <node concept="3clFbS" id="42vv4xsBo7W" role="3clF47">
        <node concept="3clFbF" id="42vv4xsBpWz" role="3cqZAp">
          <node concept="2OqwBi" id="42vv4xsBqBl" role="3clFbG">
            <node concept="37vLTw" id="42vv4xsBpWy" role="2Oq$k0">
              <ref role="3cqZAo" node="3wAsKTk9uGk" resolve="outputStream" />
            </node>
            <node concept="liA8E" id="42vv4xsBxeu" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~FilterOutputStream.close()" resolve="close" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42vv4xsBxqC" role="3cqZAp">
          <node concept="2OqwBi" id="42vv4xsBy1b" role="3clFbG">
            <node concept="37vLTw" id="42vv4xsBxqA" role="2Oq$k0">
              <ref role="3cqZAo" node="3wAsKTk9uKQ" resolve="inputStream" />
            </node>
            <node concept="liA8E" id="42vv4xsBCqf" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~FilterInputStream.close()" resolve="close" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="42vv4xsBCKl" role="3cqZAp">
          <node concept="2OqwBi" id="42vv4xsBD1Y" role="3clFbG">
            <node concept="37vLTw" id="42vv4xsBCKj" role="2Oq$k0">
              <ref role="3cqZAo" node="3wAsKTk9dMF" resolve="socket" />
            </node>
            <node concept="liA8E" id="42vv4xsBELT" role="2OqNvi">
              <ref role="37wK5l" to="zf81:~Socket.close()" resolve="close" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="42vv4xsBo7X" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="42vv4xsBmoq" role="jymVt" />
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
    <node concept="3uibUv" id="1EO1wDlhSsu" role="EKbjA">
      <ref role="3uigEE" to="6w4o:~DeviceConnection" resolve="DeviceConnection" />
    </node>
  </node>
  <node concept="2DaZZR" id="42vv4xsBMMv">
    <property role="3_H9TB" value="true" />
  </node>
  <node concept="sE7Ow" id="7_lPNWGp4Lg">
    <property role="TrG5h" value="ExportFBTypeAsLuaScript" />
    <property role="2uzpH1" value="Export as Lua Script" />
    <node concept="tnohg" id="7_lPNWGp4Lh" role="tncku">
      <node concept="3clFbS" id="7_lPNWGp4Li" role="2VODD2">
        <node concept="3cpWs8" id="7_lPNWGqors" role="3cqZAp">
          <node concept="3cpWsn" id="7_lPNWGqort" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="7_lPNWGqoBK" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
            </node>
            <node concept="1PxgMI" id="7_lPNWGqprY" role="33vP2m">
              <node concept="chp4Y" id="6z_cCa7ViI0" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
              </node>
              <node concept="2OqwBi" id="7_lPNWGqoru" role="1m5AlR">
                <node concept="2WthIp" id="7_lPNWGqorv" role="2Oq$k0" />
                <node concept="1DTwFV" id="7_lPNWGqorw" role="2OqNvi">
                  <ref role="2WH_rO" node="7_lPNWGqlTl" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6z_cCa7ViWA" role="3cqZAp">
          <node concept="3clFbS" id="6z_cCa7ViWC" role="3clFbx">
            <node concept="3clFbF" id="7_lPNWGqt1J" role="3cqZAp">
              <node concept="2YIFZM" id="7_lPNWGqtaZ" role="3clFbG">
                <ref role="1Pybhc" to="dp1x:5tGs5KqKfGH" resolve="CopyPasteUtil" />
                <ref role="37wK5l" to="dp1x:5tGs5KqKiI4" resolve="copyTextToClipboard" />
                <node concept="2YIFZM" id="7_lPNWGqpSU" role="37wK5m">
                  <ref role="1Pybhc" to="4sez:5HzRr7EE4zn" resolve="BasicFBTypeLuaExporter" />
                  <ref role="37wK5l" to="4sez:5HzRr7EE4_3" resolve="export" />
                  <node concept="1PxgMI" id="6z_cCa7VkEl" role="37wK5m">
                    <node concept="chp4Y" id="6z_cCa7VkGC" role="3oSUPX">
                      <ref role="cht4Q" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="7_lPNWGqtd2" role="1m5AlR">
                      <ref role="3cqZAo" node="7_lPNWGqort" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="6z_cCa7Vjin" role="3clFbw">
            <node concept="37vLTw" id="6z_cCa7Vj0q" role="2Oq$k0">
              <ref role="3cqZAo" node="7_lPNWGqort" resolve="node" />
            </node>
            <node concept="1mIQ4w" id="6z_cCa7VjVk" role="2OqNvi">
              <node concept="chp4Y" id="6z_cCa7VjY9" role="cj9EA">
                <ref role="cht4Q" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="6z_cCa7Vk3i" role="9aQIa">
            <node concept="3clFbS" id="6z_cCa7Vk3j" role="9aQI4">
              <node concept="3clFbF" id="6z_cCa7VkJe" role="3cqZAp">
                <node concept="2YIFZM" id="6z_cCa7VkJf" role="3clFbG">
                  <ref role="1Pybhc" to="dp1x:5tGs5KqKfGH" resolve="CopyPasteUtil" />
                  <ref role="37wK5l" to="dp1x:5tGs5KqKiI4" resolve="copyTextToClipboard" />
                  <node concept="2YIFZM" id="6z_cCa7VkJg" role="37wK5m">
                    <ref role="1Pybhc" to="4sez:4E1cIW9vD4L" resolve="CompositeFBTypeLuaExporter" />
                    <ref role="37wK5l" to="4sez:4E1cIW9vHAP" resolve="export" />
                    <node concept="1PxgMI" id="6z_cCa7VkJh" role="37wK5m">
                      <node concept="chp4Y" id="6z_cCa7Vl6W" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                      </node>
                      <node concept="37vLTw" id="6z_cCa7VkJj" role="1m5AlR">
                        <ref role="3cqZAo" node="7_lPNWGqort" resolve="node" />
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
    <node concept="1DS2jV" id="7_lPNWGqlTl" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.NODE" resolve="NODE" />
      <node concept="1oajcY" id="7_lPNWGqlTm" role="1oa70y" />
    </node>
    <node concept="2ScWuX" id="7_lPNWGqlTA" role="tmbBb">
      <node concept="3clFbS" id="7_lPNWGqlTB" role="2VODD2">
        <node concept="3cpWs8" id="3G6wPgIJcUb" role="3cqZAp">
          <node concept="3cpWsn" id="3G6wPgIJcUc" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="3G6wPgIJdCA" role="1tU5fm" />
            <node concept="2OqwBi" id="3G6wPgIJcUd" role="33vP2m">
              <node concept="2WthIp" id="3G6wPgIJcUe" role="2Oq$k0" />
              <node concept="1DTwFV" id="3G6wPgIJcUf" role="2OqNvi">
                <ref role="2WH_rO" node="7_lPNWGqlTl" resolve="node" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7_lPNWGqm8t" role="3cqZAp">
          <node concept="22lmx$" id="6z_cCa7V7Rw" role="3clFbG">
            <node concept="2OqwBi" id="6z_cCa7VgT9" role="3uHU7w">
              <node concept="37vLTw" id="6z_cCa7VgA$" role="2Oq$k0">
                <ref role="3cqZAo" node="3G6wPgIJcUc" resolve="node" />
              </node>
              <node concept="1mIQ4w" id="6z_cCa7Vhk_" role="2OqNvi">
                <node concept="chp4Y" id="6z_cCa7Vhxf" role="cj9EA">
                  <ref role="cht4Q" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="3G6wPgIJdTF" role="3uHU7B">
              <node concept="37vLTw" id="3G6wPgIJcUg" role="2Oq$k0">
                <ref role="3cqZAo" node="3G6wPgIJcUc" resolve="node" />
              </node>
              <node concept="1mIQ4w" id="3G6wPgIJecC" role="2OqNvi">
                <node concept="chp4Y" id="6z_cCa7V7ry" role="cj9EA">
                  <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="7_lPNWGqtoA">
    <property role="TrG5h" value="FourDiacActions" />
    <node concept="ftmFs" id="7_lPNWGqtoC" role="ftER_">
      <node concept="tCFHf" id="7_lPNWGqtoE" role="ftvYc">
        <ref role="tCJdB" node="7_lPNWGp4Lg" resolve="ExportFBTypeAsLuaScript" />
      </node>
    </node>
    <node concept="tT9cl" id="7_lPNWGqtoF" role="2f5YQi">
      <ref role="tU$_T" to="tprs:hyf4Gvz" resolve="NodeActions" />
      <ref role="2f8Tey" to="tprs:4h0_rmDolOA" resolve="copy" />
    </node>
  </node>
  <node concept="2uRRBC" id="407BnQQiP62">
    <property role="TrG5h" value="IEC-61499 FortePC Devices" />
    <node concept="2BZ0e9" id="407BnQQiP63" role="2uRRBG">
      <property role="TrG5h" value="myConnector" />
      <node concept="3Tm6S6" id="407BnQQiP64" role="1B3o_S" />
      <node concept="3uibUv" id="407BnQQiPcH" role="1tU5fm">
        <ref role="3uigEE" to="6w4o:~DeviceConnector" resolve="DeviceConnector" />
      </node>
      <node concept="2ShNRf" id="42vv4xsBMY1" role="33vP2m">
        <node concept="YeOm9" id="42vv4xsBPTO" role="2ShVmc">
          <node concept="1Y3b0j" id="42vv4xsBPTR" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="6w4o:~DeviceConnector" resolve="DeviceConnector" />
            <node concept="3Tm1VV" id="42vv4xsBPTS" role="1B3o_S" />
            <node concept="3clFb_" id="42vv4xsBPTU" role="jymVt">
              <property role="TrG5h" value="tryConnect" />
              <node concept="37vLTG" id="42vv4xsBPTV" role="3clF46">
                <property role="TrG5h" value="device" />
                <node concept="3uibUv" id="407BnQQjjcE" role="1tU5fm">
                  <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                </node>
              </node>
              <node concept="3Tm1VV" id="42vv4xsBPTY" role="1B3o_S" />
              <node concept="3uibUv" id="42vv4xsBPTZ" role="3clF45">
                <ref role="3uigEE" to="6w4o:~DeviceConnection" resolve="DeviceConnection" />
              </node>
              <node concept="2AHcQZ" id="42vv4xsBPU0" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
              </node>
              <node concept="3uibUv" id="42vv4xsBPU1" role="Sfmx6">
                <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
              </node>
              <node concept="3clFbS" id="42vv4xsBPU2" role="3clF47">
                <node concept="3clFbJ" id="42vv4xsBQkz" role="3cqZAp">
                  <node concept="3clFbS" id="42vv4xsBQk_" role="3clFbx">
                    <node concept="3cpWs6" id="42vv4xsBV5g" role="3cqZAp">
                      <node concept="2ShNRf" id="42vv4xsBVo7" role="3cqZAk">
                        <node concept="1pGfFk" id="42vv4xsBWXu" role="2ShVmc">
                          <ref role="37wK5l" node="3wAsKTk9bWx" resolve="ForteDeviceConnection" />
                          <node concept="37vLTw" id="42vv4xsBXkM" role="37wK5m">
                            <ref role="3cqZAo" node="42vv4xsBPTV" resolve="device" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2YIFZM" id="42vv4xsBTin" role="3clFbw">
                    <ref role="1Pybhc" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
                    <ref role="37wK5l" node="6kvdbYuhGti" resolve="isApplicable" />
                    <node concept="37vLTw" id="42vv4xsBT_j" role="37wK5m">
                      <ref role="3cqZAo" node="42vv4xsBPTV" resolve="device" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="42vv4xsBXPN" role="3cqZAp">
                  <node concept="10Nm6u" id="42vv4xsBY78" role="3cqZAk" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBj" id="1UP38w$4003" role="2uRRBE">
      <node concept="3clFbS" id="1UP38w$4004" role="2VODD2">
        <node concept="3clFbF" id="1UP38w$4fJf" role="3cqZAp">
          <node concept="2OqwBi" id="1UP38w$4fPG" role="3clFbG">
            <node concept="2OqwBi" id="7x_B4h7aNiC" role="2Oq$k0">
              <node concept="10M0yZ" id="7x_B4h7aNaJ" role="2Oq$k0">
                <ref role="3cqZAo" to="6w4o:~DeviceConnectorRegistry.Companion" resolve="Companion" />
                <ref role="1PxDUh" to="6w4o:~DeviceConnectorRegistry" resolve="DeviceConnectorRegistry" />
              </node>
              <node concept="liA8E" id="7x_B4h7aOc3" role="2OqNvi">
                <ref role="37wK5l" to="6w4o:~DeviceConnectorRegistry$Companion.getInstance()" resolve="getInstance" />
              </node>
            </node>
            <node concept="liA8E" id="1UP38w$4kGu" role="2OqNvi">
              <ref role="37wK5l" to="6w4o:~DeviceConnectorRegistry.register(org.fbme.ide.platform.debugger.DeviceConnector)" resolve="register" />
              <node concept="2OqwBi" id="1UP38w$4kHb" role="37wK5m">
                <node concept="2WthIp" id="1UP38w$4kHe" role="2Oq$k0" />
                <node concept="2BZ7hE" id="1UP38w$4kHg" role="2OqNvi">
                  <ref role="2WH_rO" node="407BnQQiP63" resolve="myConnector" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="1UP38w$4kIj" role="2uRRBF">
      <node concept="3clFbS" id="1UP38w$4kIk" role="2VODD2">
        <node concept="3clFbF" id="1UP38w$4kPI" role="3cqZAp">
          <node concept="2OqwBi" id="1UP38w$4kPJ" role="3clFbG">
            <node concept="2OqwBi" id="7x_B4h7aOmw" role="2Oq$k0">
              <node concept="10M0yZ" id="7x_B4h7aOev" role="2Oq$k0">
                <ref role="3cqZAo" to="6w4o:~DeviceConnectorRegistry.Companion" resolve="Companion" />
                <ref role="1PxDUh" to="6w4o:~DeviceConnectorRegistry" resolve="DeviceConnectorRegistry" />
              </node>
              <node concept="liA8E" id="7x_B4h7aOvZ" role="2OqNvi">
                <ref role="37wK5l" to="6w4o:~DeviceConnectorRegistry$Companion.getInstance()" resolve="getInstance" />
              </node>
            </node>
            <node concept="liA8E" id="1UP38w$4kPL" role="2OqNvi">
              <ref role="37wK5l" to="6w4o:~DeviceConnectorRegistry.unregister(org.fbme.ide.platform.debugger.DeviceConnector)" resolve="unregister" />
              <node concept="2OqwBi" id="1UP38w$4kPM" role="37wK5m">
                <node concept="2WthIp" id="1UP38w$4kPN" role="2Oq$k0" />
                <node concept="2BZ7hE" id="1UP38w$4kPO" role="2OqNvi">
                  <ref role="2WH_rO" node="407BnQQiP63" resolve="myConnector" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="yHkDy" id="7byHRlLC1PU">
    <property role="TrG5h" value="Device" />
    <node concept="yHkHE" id="7byHRlLC1Qg" role="yHkHi">
      <property role="TrG5h" value="getNodeRef" />
      <node concept="3uibUv" id="7byHRlLC1Qh" role="3clF45">
        <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
      </node>
      <node concept="3clFbS" id="7byHRlLC1Qi" role="3clF47">
        <node concept="3clFbJ" id="7byHRlLC1Qj" role="3cqZAp">
          <node concept="3clFbC" id="7byHRlLC1Qo" role="3clFbw">
            <node concept="10Nm6u" id="7byHRlLC1Qp" role="3uHU7w" />
            <node concept="2OqwBi" id="7byHRlLC1Qq" role="3uHU7B">
              <node concept="2WthIp" id="7byHRlLC1Qr" role="2Oq$k0" />
              <node concept="yHkDZ" id="7byHRlLC1Qs" role="2OqNvi">
                <ref role="yHkDY" node="7byHRlLC1S9" resolve="myNodePointer" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="7byHRlLC1Qk" role="3clFbx">
            <node concept="3cpWs6" id="7byHRlLC1Ql" role="3cqZAp">
              <node concept="10Nm6u" id="7byHRlLC1Qm" role="3cqZAk" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7byHRlLC1Qy" role="3cqZAp">
          <node concept="2OqwBi" id="2P21tSVnAmm" role="3cqZAk">
            <node concept="2YIFZM" id="2P21tSVnA9T" role="2Oq$k0">
              <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
              <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
            </node>
            <node concept="liA8E" id="2P21tSVnAHm" role="2OqNvi">
              <ref role="37wK5l" to="dush:~PersistenceFacade.createNodeReference(java.lang.String)" resolve="createNodeReference" />
              <node concept="2OqwBi" id="2P21tSVnBAh" role="37wK5m">
                <node concept="2WthIp" id="2P21tSVnAPR" role="2Oq$k0" />
                <node concept="yHkDZ" id="2P21tSVnCaV" role="2OqNvi">
                  <ref role="yHkDY" node="7byHRlLC1S9" resolve="myNodePointer" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7byHRlLC1QF" role="1B3o_S" />
      <node concept="2AHcQZ" id="2XiYkJc2__H" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="yHkHE" id="7byHRlLC1QG" role="yHkHi">
      <property role="TrG5h" value="setNode" />
      <node concept="3cqZAl" id="7byHRlLC1QH" role="3clF45" />
      <node concept="3clFbS" id="7byHRlLC1QI" role="3clF47">
        <node concept="3clFbJ" id="7byHRlLC1QJ" role="3cqZAp">
          <node concept="3clFbS" id="7byHRlLC1QK" role="3clFbx">
            <node concept="3clFbF" id="7byHRlLC1QR" role="3cqZAp">
              <node concept="37vLTI" id="7byHRlLC1QS" role="3clFbG">
                <node concept="10Nm6u" id="7byHRlLC1QT" role="37vLTx" />
                <node concept="2OqwBi" id="7byHRlLC1QU" role="37vLTJ">
                  <node concept="2WthIp" id="7byHRlLC1QV" role="2Oq$k0" />
                  <node concept="yHkDZ" id="7byHRlLC1QW" role="2OqNvi">
                    <ref role="yHkDY" node="7byHRlLC1S9" resolve="myNodePointer" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="EdexLh3HPT" role="3cqZAp">
              <node concept="37vLTI" id="EdexLh3J0k" role="3clFbG">
                <node concept="10Nm6u" id="EdexLh3J1d" role="37vLTx" />
                <node concept="2OqwBi" id="EdexLh3I4L" role="37vLTJ">
                  <node concept="2WthIp" id="EdexLh3HPR" role="2Oq$k0" />
                  <node concept="yHkDZ" id="EdexLh3Ix2" role="2OqNvi">
                    <ref role="yHkDY" node="EdexLh3kuf" resolve="myNodeText" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="7byHRlLC1QX" role="3clFbw">
            <node concept="10Nm6u" id="7byHRlLC1QY" role="3uHU7w" />
            <node concept="37vLTw" id="2BHiRxglrg_" role="3uHU7B">
              <ref role="3cqZAo" node="7byHRlLC1Ru" resolve="node" />
            </node>
          </node>
          <node concept="9aQIb" id="7byHRlLC1R0" role="9aQIa">
            <node concept="3clFbS" id="7byHRlLC1R1" role="9aQI4">
              <node concept="3clFbF" id="2P21tSVn$IU" role="3cqZAp">
                <node concept="2OqwBi" id="2P21tSVn$IO" role="3clFbG">
                  <node concept="2WthIp" id="2P21tSVn$IR" role="2Oq$k0" />
                  <node concept="2XshWL" id="2P21tSVn$IT" role="2OqNvi">
                    <ref role="2WH_rO" node="2P21tSVnjUN" resolve="setNode" />
                    <node concept="2JrnkZ" id="7u2HgD1KnyC" role="2XxRq1">
                      <node concept="2OqwBi" id="2P21tSVn$VC" role="2JrQYb">
                        <node concept="37vLTw" id="2P21tSVn$NN" role="2Oq$k0">
                          <ref role="3cqZAo" node="7byHRlLC1Ru" resolve="node" />
                        </node>
                        <node concept="iZEcu" id="2P21tSVn_be" role="2OqNvi" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="EdexLh3H9w" role="3cqZAp">
                <node concept="37vLTI" id="EdexLh3Jlf" role="3clFbG">
                  <node concept="2YIFZM" id="EdexLh3JN6" role="37vLTx">
                    <ref role="37wK5l" to="xk9i:EdexLh2_Wq" resolve="getFqName" />
                    <ref role="1Pybhc" to="xk9i:14R2qyOCnM1" resolve="NodeChooser" />
                    <node concept="37vLTw" id="EdexLh3JVT" role="37wK5m">
                      <ref role="3cqZAo" node="7byHRlLC1Ru" resolve="node" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="EdexLh3Hoq" role="37vLTJ">
                    <node concept="2WthIp" id="EdexLh3H9u" role="2Oq$k0" />
                    <node concept="yHkDZ" id="EdexLh3HOF" role="2OqNvi">
                      <ref role="yHkDY" node="EdexLh3kuf" resolve="myNodeText" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="7byHRlLC1Rt" role="1B3o_S" />
      <node concept="37vLTG" id="7byHRlLC1Ru" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7byHRlLC1Rv" role="1tU5fm" />
        <node concept="2AHcQZ" id="7byHRlLC1Rw" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="yHkHE" id="2P21tSVnjUN" role="yHkHi">
      <property role="TrG5h" value="setNode" />
      <node concept="3cqZAl" id="2P21tSVnkaj" role="3clF45" />
      <node concept="3clFbS" id="2P21tSVnjUP" role="3clF47">
        <node concept="3clFbF" id="2P21tSVnyCE" role="3cqZAp">
          <node concept="37vLTI" id="2P21tSVnzQH" role="3clFbG">
            <node concept="3K4zz7" id="2P21tSVn$bM" role="37vLTx">
              <node concept="10Nm6u" id="2P21tSVn$cB" role="3K4E3e" />
              <node concept="2OqwBi" id="2P21tSVn$n0" role="3K4GZi">
                <node concept="2YIFZM" id="2P21tSVn$fz" role="2Oq$k0">
                  <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                  <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                </node>
                <node concept="liA8E" id="2P21tSVn$vg" role="2OqNvi">
                  <ref role="37wK5l" to="dush:~PersistenceFacade.asString(org.jetbrains.mps.openapi.model.SNodeReference)" resolve="asString" />
                  <node concept="37vLTw" id="2P21tSVn$xi" role="37wK5m">
                    <ref role="3cqZAo" node="2P21tSVnkbb" resolve="nodePtr" />
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="2P21tSVn$2I" role="3K4Cdx">
                <node concept="10Nm6u" id="2P21tSVn$6H" role="3uHU7w" />
                <node concept="37vLTw" id="2P21tSVnzVD" role="3uHU7B">
                  <ref role="3cqZAo" node="2P21tSVnkbb" resolve="nodePtr" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="2P21tSVnyRc" role="37vLTJ">
              <node concept="2WthIp" id="2P21tSVnyCD" role="2Oq$k0" />
              <node concept="yHkDZ" id="2P21tSVnzjt" role="2OqNvi">
                <ref role="yHkDY" node="7byHRlLC1S9" resolve="myNodePointer" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="2P21tSVnkbb" role="3clF46">
        <property role="TrG5h" value="nodePtr" />
        <node concept="3uibUv" id="2P21tSVnkba" role="1tU5fm">
          <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
        </node>
        <node concept="2AHcQZ" id="2P21tSVnkd7" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
    </node>
    <node concept="yHkDc" id="7byHRlLC1Rx" role="yHkHg">
      <node concept="yHkD3" id="7byHRlLC1Ry" role="yHkCN">
        <property role="TrG5h" value="myChooser" />
        <node concept="3uibUv" id="7byHRlLCaAE" role="1tU5fm">
          <ref role="3uigEE" to="xk9i:7byHRlLC1T4" resolve="NodeByConceptChooser" />
        </node>
      </node>
      <node concept="yHkDR" id="7byHRlLC1R$" role="yHkDf">
        <node concept="3clFbS" id="7byHRlLC1R_" role="2VODD2">
          <node concept="3clFbF" id="7byHRlLC1RA" role="3cqZAp">
            <node concept="37vLTI" id="7byHRlLC1RB" role="3clFbG">
              <node concept="yHkD2" id="7byHRlLC1RC" role="37vLTJ">
                <ref role="3cqZAo" node="7byHRlLC1Ry" resolve="myChooser" />
              </node>
              <node concept="2ShNRf" id="7byHRlLC1RD" role="37vLTx">
                <node concept="1pGfFk" id="7byHRlLC1RE" role="2ShVmc">
                  <ref role="37wK5l" to="xk9i:7byHRlLC1T6" resolve="NodeByConceptChooser" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7byHRlLC1RF" role="3cqZAp">
            <node concept="2OqwBi" id="7byHRlLC1RG" role="3clFbG">
              <node concept="yHkD2" id="7byHRlLC1RH" role="2Oq$k0">
                <ref role="3cqZAo" node="7byHRlLC1Ry" resolve="myChooser" />
              </node>
              <node concept="liA8E" id="7byHRlLC1RI" role="2OqNvi">
                <ref role="37wK5l" to="xk9i:7byHRlLC1UE" resolve="setTargetConcept" />
                <node concept="35c_gC" id="407BnQQnjkk" role="37wK5m">
                  <ref role="35c_gD" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="7byHRlLC1RK" role="3cqZAp">
            <node concept="2OqwBi" id="7byHRlLC1RL" role="3clFbG">
              <node concept="yHkD2" id="7byHRlLC1RM" role="2Oq$k0">
                <ref role="3cqZAo" node="7byHRlLC1Ry" resolve="myChooser" />
              </node>
              <node concept="liA8E" id="7byHRlLC1RN" role="2OqNvi">
                <ref role="37wK5l" to="xk9i:7byHRlLC1UW" resolve="setAcceptor" />
                <node concept="1bVj0M" id="407BnQQnk84" role="37wK5m">
                  <node concept="3clFbS" id="407BnQQnk85" role="1bW5cS">
                    <node concept="3cpWs8" id="407BnQQov50" role="3cqZAp">
                      <node concept="3cpWsn" id="407BnQQov51" role="3cpWs9">
                        <property role="TrG5h" value="project" />
                        <node concept="3uibUv" id="407BnQQov4F" role="1tU5fm">
                          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
                        </node>
                        <node concept="2YIFZM" id="407BnQQpD2w" role="33vP2m">
                          <ref role="37wK5l" to="alof:~ProjectHelper.fromIdeaProject(com.intellij.openapi.project.Project)" resolve="fromIdeaProject" />
                          <ref role="1Pybhc" to="alof:~ProjectHelper" resolve="ProjectHelper" />
                          <node concept="2OqwBi" id="407BnQQov52" role="37wK5m">
                            <node concept="yHkDK" id="407BnQQov53" role="2Oq$k0">
                              <ref role="3cqZAo" node="407BnQQodDE" resolve="configuration" />
                            </node>
                            <node concept="liA8E" id="407BnQQprff" role="2OqNvi">
                              <ref role="37wK5l" to="dj99:~RunConfiguration.getProject()" resolve="getProject" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="407BnQQnm8J" role="3cqZAp">
                      <node concept="3cpWsn" id="407BnQQnm8K" role="3cpWs9">
                        <property role="TrG5h" value="platformRepo" />
                        <node concept="3uibUv" id="739Y6csLLf7" role="1tU5fm">
                          <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
                        </node>
                        <node concept="2YIFZM" id="3WC2DnYpZGB" role="33vP2m">
                          <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                          <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
                          <node concept="37vLTw" id="3WC2DnYpZGC" role="37wK5m">
                            <ref role="3cqZAo" node="407BnQQov51" resolve="project" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="407BnQQnzCS" role="3cqZAp">
                      <node concept="3cpWsn" id="407BnQQnzCT" role="3cpWs9">
                        <property role="TrG5h" value="device" />
                        <node concept="2OqwBi" id="407BnQQnzCU" role="33vP2m">
                          <node concept="37vLTw" id="407BnQQnzCV" role="2Oq$k0">
                            <ref role="3cqZAo" node="407BnQQnm8K" resolve="platformRepo" />
                          </node>
                          <node concept="liA8E" id="407BnQQnzCW" role="2OqNvi">
                            <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                            <node concept="37vLTw" id="407BnQQn_Pq" role="37wK5m">
                              <ref role="3cqZAo" node="407BnQQn$jr" resolve="node" />
                            </node>
                            <node concept="3VsKOn" id="407BnQQnzCY" role="37wK5m">
                              <ref role="3VsUkX" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                            </node>
                          </node>
                        </node>
                        <node concept="3uibUv" id="407BnQQnzCZ" role="1tU5fm">
                          <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="407BnQQo$tq" role="3cqZAp">
                      <node concept="2YIFZM" id="407BnQQnEuH" role="3cqZAk">
                        <ref role="37wK5l" node="6kvdbYuhGti" resolve="isApplicable" />
                        <ref role="1Pybhc" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
                        <node concept="37vLTw" id="407BnQQnEuI" role="37wK5m">
                          <ref role="3cqZAo" node="407BnQQnzCT" resolve="device" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="407BnQQn$jr" role="1bW2Oz">
                    <property role="TrG5h" value="node" />
                    <node concept="3Tqbb2" id="407BnQQn$jq" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="7byHRlLC1RP" role="3cqZAp">
            <node concept="yHkD2" id="7byHRlLC1RQ" role="3cqZAk">
              <ref role="3cqZAo" node="7byHRlLC1Ry" resolve="myChooser" />
            </node>
          </node>
        </node>
      </node>
      <node concept="yHkD7" id="7byHRlLC1RR" role="yHkCL">
        <node concept="3clFbS" id="7byHRlLC1RS" role="2VODD2">
          <node concept="3clFbF" id="_dGddVT2tu" role="3cqZAp">
            <node concept="2OqwBi" id="1KUoCipvB8z" role="3clFbG">
              <node concept="yHkD2" id="1KUoCipvB8$" role="2Oq$k0">
                <ref role="3cqZAo" node="7byHRlLC1Ry" resolve="myChooser" />
              </node>
              <node concept="liA8E" id="1KUoCipvB8_" role="2OqNvi">
                <ref role="37wK5l" to="xk9i:14R2qyOCnMy" resolve="setNode" />
                <node concept="2OqwBi" id="1KUoCipvB8A" role="37wK5m">
                  <node concept="yHkzx" id="1KUoCipvB8B" role="2Oq$k0" />
                  <node concept="2XshWL" id="2P21tSVnhey" role="2OqNvi">
                    <ref role="2WH_rO" node="7byHRlLC1Qg" resolve="getNodeRef" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="EdexLh3$5k" role="3cqZAp">
            <node concept="2OqwBi" id="EdexLh3$QZ" role="3clFbG">
              <node concept="yHkD2" id="EdexLh3$5i" role="2Oq$k0">
                <ref role="3cqZAo" node="7byHRlLC1Ry" resolve="myChooser" />
              </node>
              <node concept="liA8E" id="EdexLh3B_A" role="2OqNvi">
                <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.setText(java.lang.String)" resolve="setText" />
                <node concept="2OqwBi" id="EdexLh3BVZ" role="37wK5m">
                  <node concept="yHkzx" id="EdexLh3BK7" role="2Oq$k0" />
                  <node concept="yHkDZ" id="EdexLh3C9m" role="2OqNvi">
                    <ref role="yHkDY" node="EdexLh3kuf" resolve="myNodeText" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="yHkDo" id="7byHRlLC1S0" role="yHkDe">
        <node concept="3clFbS" id="7byHRlLC1S1" role="2VODD2">
          <node concept="3clFbF" id="_dGddVT2JH" role="3cqZAp">
            <node concept="2OqwBi" id="1KUoCipvG_d" role="3clFbG">
              <node concept="yHkzx" id="1KUoCipvG_e" role="2Oq$k0" />
              <node concept="2XshWL" id="1KUoCipvG_f" role="2OqNvi">
                <ref role="2WH_rO" node="2P21tSVnjUN" resolve="setNode" />
                <node concept="2OqwBi" id="1KUoCipvG_g" role="2XxRq1">
                  <node concept="yHkD2" id="1KUoCipvG_h" role="2Oq$k0">
                    <ref role="3cqZAo" node="7byHRlLC1Ry" resolve="myChooser" />
                  </node>
                  <node concept="liA8E" id="1KUoCipvG_i" role="2OqNvi">
                    <ref role="37wK5l" to="xk9i:14R2qyOCnMq" resolve="getNode" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbF" id="EdexLh3Cgz" role="3cqZAp">
            <node concept="37vLTI" id="EdexLh3D18" role="3clFbG">
              <node concept="2OqwBi" id="EdexLh3E48" role="37vLTx">
                <node concept="yHkD2" id="EdexLh3D6y" role="2Oq$k0">
                  <ref role="3cqZAo" node="7byHRlLC1Ry" resolve="myChooser" />
                </node>
                <node concept="liA8E" id="EdexLh3GQt" role="2OqNvi">
                  <ref role="37wK5l" to="jkm4:~TextFieldWithBrowseButton.getText()" resolve="getText" />
                </node>
              </node>
              <node concept="2OqwBi" id="EdexLh3Cl2" role="37vLTJ">
                <node concept="yHkzx" id="EdexLh3Cgx" role="2Oq$k0" />
                <node concept="yHkDZ" id="EdexLh3Csf" role="2OqNvi">
                  <ref role="yHkDY" node="EdexLh3kuf" resolve="myNodeText" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="yHkDC" id="7byHRlLC1S9" role="yHkDi">
      <property role="TrG5h" value="myNodePointer" />
      <node concept="17QB3L" id="7byHRlLC1Sa" role="1tU5fm" />
    </node>
    <node concept="yHkDC" id="EdexLh3kuf" role="yHkDi">
      <property role="TrG5h" value="myNodeText" />
      <node concept="17QB3L" id="EdexLh3ll8" role="1tU5fm" />
    </node>
    <node concept="yHkDk" id="7byHRlLC1Sd" role="yHkHj">
      <node concept="3clFbS" id="7byHRlLC1Se" role="2VODD2">
        <node concept="3cpWs8" id="1MVY3kFBn5$" role="3cqZAp">
          <node concept="3cpWsn" id="1MVY3kFBn5_" role="3cpWs9">
            <property role="TrG5h" value="repo" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="1MVY3kFBn5y" role="1tU5fm">
              <ref role="3uigEE" to="lui2:~SRepository" resolve="SRepository" />
            </node>
            <node concept="2OqwBi" id="1MVY3kFBn5A" role="33vP2m">
              <node concept="3YwXIn" id="1MVY3kFBn5B" role="2Oq$k0" />
              <node concept="liA8E" id="1MVY3kFBn5C" role="2OqNvi">
                <ref role="37wK5l" to="z1c4:~Project.getRepository()" resolve="getRepository" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="407BnQQn2MP" role="3cqZAp">
          <node concept="3cpWsn" id="407BnQQn2MQ" role="3cpWs9">
            <property role="TrG5h" value="platformRepo" />
            <node concept="3uibUv" id="QE5KxyOju1" role="1tU5fm">
              <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
            </node>
            <node concept="2YIFZM" id="3WC2DnYpX$d" role="33vP2m">
              <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
              <node concept="3YwXIn" id="3WC2DnYpX$e" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="9ez_TJfy7o" role="3cqZAp">
          <node concept="3clFbS" id="9ez_TJfy7q" role="3clFbx">
            <node concept="3cpWs6" id="9ez_TJfyMg" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="9ez_TJfyCv" role="3clFbw">
            <node concept="10Nm6u" id="9ez_TJfyIc" role="3uHU7w" />
            <node concept="37vLTw" id="9ez_TJfyu5" role="3uHU7B">
              <ref role="3cqZAo" node="407BnQQn2MQ" resolve="platformRepo" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5h4fo9Gsr_V" role="3cqZAp">
          <node concept="3cpWsn" id="5h4fo9Gsr_W" role="3cpWs9">
            <property role="TrG5h" value="errorText" />
            <node concept="2OqwBi" id="1MVY3kFBrqm" role="33vP2m">
              <node concept="2ShNRf" id="1MVY3kFBrqn" role="2Oq$k0">
                <node concept="1pGfFk" id="1MVY3kFBrqo" role="2ShVmc">
                  <ref role="37wK5l" to="w1kc:~ModelAccessHelper.&lt;init&gt;(org.jetbrains.mps.openapi.module.SRepository)" resolve="ModelAccessHelper" />
                  <node concept="37vLTw" id="1MVY3kFBrqp" role="37wK5m">
                    <ref role="3cqZAo" node="1MVY3kFBn5_" resolve="repo" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1MVY3kFBrqq" role="2OqNvi">
                <ref role="37wK5l" to="w1kc:~ModelAccessHelper.runReadAction(jetbrains.mps.util.Computable)" resolve="runReadAction" />
                <node concept="1bVj0M" id="1MVY3kFBrqr" role="37wK5m">
                  <node concept="3clFbS" id="1MVY3kFBrqs" role="1bW5cS">
                    <node concept="3J1_TO" id="5QqGGkvpVAx" role="3cqZAp">
                      <node concept="3clFbS" id="5QqGGkvpVAz" role="1zxBo7">
                        <node concept="3cpWs8" id="1MVY3kFBbTk" role="3cqZAp">
                          <node concept="3cpWsn" id="1MVY3kFBbTl" role="3cpWs9">
                            <property role="TrG5h" value="ptr" />
                            <property role="3TUv4t" value="true" />
                            <node concept="3uibUv" id="1MVY3kFBbTf" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SNodeReference" resolve="SNodeReference" />
                            </node>
                            <node concept="2OqwBi" id="1MVY3kFBQGD" role="33vP2m">
                              <node concept="2WthIp" id="1MVY3kFBQGG" role="2Oq$k0" />
                              <node concept="2XshWL" id="1MVY3kFBQGI" role="2OqNvi">
                                <ref role="2WH_rO" node="7byHRlLC1Qg" resolve="getNodeRef" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1MVY3kFBLHn" role="3cqZAp">
                          <node concept="3clFbS" id="1MVY3kFBLHp" role="3clFbx">
                            <node concept="3cpWs6" id="1MVY3kFBMWd" role="3cqZAp">
                              <node concept="Xl_RD" id="1KUoCipvBgj" role="3cqZAk">
                                <property role="Xl_RC" value="Device is not specified." />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="1MVY3kFBMnr" role="3clFbw">
                            <node concept="10Nm6u" id="1MVY3kFBMEg" role="3uHU7w" />
                            <node concept="37vLTw" id="1MVY3kFBLZl" role="3uHU7B">
                              <ref role="3cqZAo" node="1MVY3kFBbTl" resolve="ptr" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="1MVY3kFBrqt" role="3cqZAp">
                          <node concept="3cpWsn" id="1MVY3kFBrqu" role="3cpWs9">
                            <property role="TrG5h" value="resolved" />
                            <node concept="3uibUv" id="1MVY3kFBrqv" role="1tU5fm">
                              <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                            </node>
                            <node concept="2OqwBi" id="1MVY3kFBrqw" role="33vP2m">
                              <node concept="37vLTw" id="1MVY3kFBrqx" role="2Oq$k0">
                                <ref role="3cqZAo" node="1MVY3kFBbTl" resolve="ptr" />
                              </node>
                              <node concept="liA8E" id="1MVY3kFBrqy" role="2OqNvi">
                                <ref role="37wK5l" to="mhbf:~SNodeReference.resolve(org.jetbrains.mps.openapi.module.SRepository)" resolve="resolve" />
                                <node concept="37vLTw" id="1MVY3kFBrqz" role="37wK5m">
                                  <ref role="3cqZAo" node="1MVY3kFBn5_" resolve="repo" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="407BnQQniuJ" role="3cqZAp">
                          <node concept="3cpWsn" id="407BnQQniuK" role="3cpWs9">
                            <property role="TrG5h" value="device" />
                            <node concept="2OqwBi" id="407BnQQniuL" role="33vP2m">
                              <node concept="37vLTw" id="407BnQQniuM" role="2Oq$k0">
                                <ref role="3cqZAo" node="407BnQQn2MQ" resolve="platformRepo" />
                              </node>
                              <node concept="liA8E" id="407BnQQniuN" role="2OqNvi">
                                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                <node concept="37vLTw" id="407BnQQniuO" role="37wK5m">
                                  <ref role="3cqZAo" node="1MVY3kFBrqu" resolve="resolved" />
                                </node>
                                <node concept="3VsKOn" id="407BnQQniPv" role="37wK5m">
                                  <ref role="3VsUkX" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                                </node>
                              </node>
                            </node>
                            <node concept="3uibUv" id="407BnQQniSU" role="1tU5fm">
                              <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="1MVY3kFBv7u" role="3cqZAp">
                          <node concept="3clFbS" id="1MVY3kFBv7w" role="3clFbx">
                            <node concept="3cpWs6" id="1MVY3kFBwpr" role="3cqZAp">
                              <node concept="Xl_RD" id="1MVY3kFBwLW" role="3cqZAk">
                                <property role="Xl_RC" value="Failed to resolve device" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="1MVY3kFBw4W" role="3clFbw">
                            <node concept="10Nm6u" id="1MVY3kFBwfV" role="3uHU7w" />
                            <node concept="37vLTw" id="407BnQQnj9$" role="3uHU7B">
                              <ref role="3cqZAo" node="407BnQQniuK" resolve="device" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="407BnQQnm7c" role="3cqZAp">
                          <node concept="3clFbS" id="407BnQQnm7e" role="3clFbx">
                            <node concept="3cpWs6" id="407BnQQno_z" role="3cqZAp">
                              <node concept="Xl_RD" id="407BnQQnqid" role="3cqZAk">
                                <property role="Xl_RC" value="Device is not applicable" />
                              </node>
                            </node>
                          </node>
                          <node concept="3fqX7Q" id="7PeSkXYKz9e" role="3clFbw">
                            <node concept="2YIFZM" id="7PeSkXYKz9g" role="3fr31v">
                              <ref role="37wK5l" node="6kvdbYuhGti" resolve="isApplicable" />
                              <ref role="1Pybhc" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
                              <node concept="37vLTw" id="7PeSkXYKz9h" role="37wK5m">
                                <ref role="3cqZAo" node="407BnQQniuK" resolve="device" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3uVAMA" id="5QqGGkvpVA$" role="1zxBo5">
                        <node concept="XOnhg" id="5QqGGkvpVAA" role="1zc67B">
                          <property role="3TUv4t" value="false" />
                          <property role="TrG5h" value="ex" />
                          <node concept="nSUau" id="xvs04dHlnW" role="1tU5fm">
                            <node concept="3uibUv" id="5QqGGkvpVND" role="nSUat">
                              <ref role="3uigEE" to="wyt6:~IllegalArgumentException" resolve="IllegalArgumentException" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="5QqGGkvpVAE" role="1zc67A">
                          <node concept="3cpWs8" id="1MVY3kFC7l0" role="3cqZAp">
                            <node concept="3cpWsn" id="1MVY3kFC7l1" role="3cpWs9">
                              <property role="TrG5h" value="m" />
                              <node concept="17QB3L" id="1MVY3kFC7D5" role="1tU5fm" />
                              <node concept="Xl_RD" id="1MVY3kFC7l3" role="33vP2m">
                                <property role="Xl_RC" value="Node reference is not valid" />
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="1MVY3kFC7l4" role="3cqZAp">
                            <node concept="3K4zz7" id="1MVY3kFC7l5" role="3cqZAk">
                              <node concept="37vLTw" id="1MVY3kFC7l6" role="3K4GZi">
                                <ref role="3cqZAo" node="1MVY3kFC7l1" resolve="m" />
                              </node>
                              <node concept="3y3z36" id="1MVY3kFC7l7" role="3K4Cdx">
                                <node concept="10Nm6u" id="1MVY3kFC7l8" role="3uHU7w" />
                                <node concept="2OqwBi" id="1MVY3kFC7l9" role="3uHU7B">
                                  <node concept="37vLTw" id="1MVY3kFC7la" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5QqGGkvpVAA" resolve="ex" />
                                  </node>
                                  <node concept="liA8E" id="1MVY3kFC7lb" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2YIFZM" id="1MVY3kFC7lc" role="3K4E3e">
                                <ref role="37wK5l" to="wyt6:~String.format(java.lang.String,java.lang.Object...)" resolve="format" />
                                <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                                <node concept="Xl_RD" id="1MVY3kFC7ld" role="37wK5m">
                                  <property role="Xl_RC" value="%s: %s" />
                                </node>
                                <node concept="37vLTw" id="1MVY3kFC7le" role="37wK5m">
                                  <ref role="3cqZAo" node="1MVY3kFC7l1" resolve="m" />
                                </node>
                                <node concept="2OqwBi" id="1MVY3kFC7lf" role="37wK5m">
                                  <node concept="37vLTw" id="1MVY3kFC7lg" role="2Oq$k0">
                                    <ref role="3cqZAo" node="5QqGGkvpVAA" resolve="ex" />
                                  </node>
                                  <node concept="liA8E" id="1MVY3kFC7lh" role="2OqNvi">
                                    <ref role="37wK5l" to="wyt6:~Throwable.getMessage()" resolve="getMessage" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="407BnQQnqSV" role="3cqZAp">
                      <node concept="10Nm6u" id="407BnQQnsAB" role="3cqZAk" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="17QB3L" id="5h4fo9Gsr_X" role="1tU5fm" />
          </node>
        </node>
        <node concept="3clFbJ" id="5h4fo9GsrAy" role="3cqZAp">
          <node concept="3clFbS" id="5h4fo9GsrAz" role="3clFbx">
            <node concept="yHkDM" id="5h4fo9GsrLG" role="3cqZAp">
              <node concept="37vLTw" id="3GM_nagTsJm" role="yHkDO">
                <ref role="3cqZAo" node="5h4fo9Gsr_W" resolve="errorText" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="5h4fo9GsrAX" role="3clFbw">
            <node concept="37vLTw" id="3GM_nagTy0o" role="2Oq$k0">
              <ref role="3cqZAo" node="5h4fo9Gsr_W" resolve="errorText" />
            </node>
            <node concept="17RvpY" id="5h4fo9GsrLF" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
    <node concept="yHkDF" id="407BnQQodDE" role="yHkD$">
      <property role="TrG5h" value="configuration" />
      <node concept="3uibUv" id="407BnQQpjEy" role="1tU5fm">
        <ref role="3uigEE" to="dj99:~RunConfiguration" resolve="RunConfiguration" />
      </node>
    </node>
  </node>
  <node concept="2w4XYM" id="lDifvuxpwF">
    <node concept="2w4N4h" id="lDifvuxpwO" role="2w4N4r">
      <node concept="2nMXjs" id="lDifvuxpxT" role="2nMwby">
        <ref role="2nMXoJ" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
      </node>
      <node concept="2w4N5O" id="lDifvuxpwQ" role="30xZXv">
        <node concept="3clFbS" id="lDifvuxpwR" role="2VODD2">
          <node concept="3cpWs8" id="59YrrtYNd5Y" role="3cqZAp">
            <node concept="3cpWsn" id="59YrrtYNd5Z" role="3cpWs9">
              <property role="TrG5h" value="module" />
              <node concept="3uibUv" id="59YrrtYNcUd" role="1tU5fm">
                <ref role="3uigEE" to="lui2:~SModule" resolve="SModule" />
              </node>
              <node concept="2OqwBi" id="59YrrtYNd60" role="33vP2m">
                <node concept="liA8E" id="59YrrtYNd61" role="2OqNvi">
                  <ref role="37wK5l" to="mhbf:~SModel.getModule()" resolve="getModule" />
                </node>
                <node concept="2JrnkZ" id="59YrrtYNd62" role="2Oq$k0">
                  <node concept="2OqwBi" id="59YrrtYNd63" role="2JrQYb">
                    <node concept="30xZXu" id="59YrrtYNd64" role="2Oq$k0" />
                    <node concept="I4A8Y" id="59YrrtYNd65" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="59YrrtYMYpm" role="3cqZAp">
            <node concept="3cpWsn" id="59YrrtYMYpn" role="3cpWs9">
              <property role="TrG5h" value="project" />
              <node concept="3uibUv" id="59YrrtYNfv0" role="1tU5fm">
                <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
              </node>
              <node concept="2OqwBi" id="59YrrtYN8O$" role="33vP2m">
                <node concept="2OqwBi" id="59YrrtYN6Bv" role="2Oq$k0">
                  <node concept="2OqwBi" id="59YrrtYN1Oz" role="2Oq$k0">
                    <node concept="2OqwBi" id="59YrrtYMZ7V" role="2Oq$k0">
                      <node concept="2OqwBi" id="59YrrtYMYpo" role="2Oq$k0">
                        <node concept="2YIFZM" id="59YrrtYMYpp" role="2Oq$k0">
                          <ref role="37wK5l" to="z1c4:~ProjectManager.getInstance()" resolve="getInstance" />
                          <ref role="1Pybhc" to="z1c4:~ProjectManager" resolve="ProjectManager" />
                        </node>
                        <node concept="liA8E" id="59YrrtYMYpq" role="2OqNvi">
                          <ref role="37wK5l" to="z1c4:~ProjectManager.getOpenedProjects()" resolve="getOpenedProjects" />
                        </node>
                      </node>
                      <node concept="liA8E" id="59YrrtYN18c" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~Collection.stream()" resolve="stream" />
                      </node>
                    </node>
                    <node concept="liA8E" id="59YrrtYN2NV" role="2OqNvi">
                      <ref role="37wK5l" to="1ctc:~Stream.filter(java.util.function.Predicate)" resolve="filter" />
                      <node concept="1bVj0M" id="59YrrtYN32Q" role="37wK5m">
                        <node concept="37vLTG" id="59YrrtYN3SU" role="1bW2Oz">
                          <property role="TrG5h" value="project" />
                          <node concept="3uibUv" id="59YrrtYN4sB" role="1tU5fm">
                            <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="59YrrtYN32R" role="1bW5cS">
                          <node concept="3clFbF" id="59YrrtYNfLT" role="3cqZAp">
                            <node concept="3y3z36" id="59YrrtYNoa4" role="3clFbG">
                              <node concept="10Nm6u" id="59YrrtYNovA" role="3uHU7w" />
                              <node concept="2OqwBi" id="59YrrtYNjf5" role="3uHU7B">
                                <node concept="2OqwBi" id="59YrrtYNgSp" role="2Oq$k0">
                                  <node concept="37vLTw" id="59YrrtYNfLS" role="2Oq$k0">
                                    <ref role="3cqZAo" node="59YrrtYN3SU" resolve="project" />
                                  </node>
                                  <node concept="liA8E" id="59YrrtYNkpV" role="2OqNvi">
                                    <ref role="37wK5l" to="z1c4:~Project.getScope()" resolve="getScope" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="59YrrtYNlq9" role="2OqNvi">
                                  <ref role="37wK5l" to="w1kc:~BaseScope.resolve(org.jetbrains.mps.openapi.module.SModuleReference)" resolve="resolve" />
                                  <node concept="2OqwBi" id="59YrrtYNmE3" role="37wK5m">
                                    <node concept="37vLTw" id="59YrrtYNlGv" role="2Oq$k0">
                                      <ref role="3cqZAo" node="59YrrtYNd5Z" resolve="module" />
                                    </node>
                                    <node concept="liA8E" id="59YrrtYNpRL" role="2OqNvi">
                                      <ref role="37wK5l" to="lui2:~SModule.getModuleReference()" resolve="getModuleReference" />
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
                  <node concept="liA8E" id="59YrrtYN8c2" role="2OqNvi">
                    <ref role="37wK5l" to="1ctc:~Stream.findFirst()" resolve="findFirst" />
                  </node>
                </node>
                <node concept="liA8E" id="59YrrtYNa0K" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Optional.orElse(java.lang.Object)" resolve="orElse" />
                  <node concept="10Nm6u" id="59YrrtYNak2" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="lDifvuxsOd" role="3cqZAp">
            <node concept="3cpWsn" id="lDifvuxsOe" role="3cpWs9">
              <property role="TrG5h" value="repository" />
              <node concept="3uibUv" id="lDifvuxsNT" role="1tU5fm">
                <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
              </node>
              <node concept="2YIFZM" id="lDifvuxsOf" role="33vP2m">
                <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
                <node concept="37vLTw" id="59YrrtYNqQv" role="37wK5m">
                  <ref role="3cqZAo" node="59YrrtYMYpn" resolve="project" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="lDifvuxu9T" role="3cqZAp">
            <node concept="3cpWsn" id="lDifvuxu9U" role="3cpWs9">
              <property role="TrG5h" value="device" />
              <node concept="3uibUv" id="lDifvuxu9n" role="1tU5fm">
                <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
              </node>
              <node concept="2OqwBi" id="lDifvuxu9V" role="33vP2m">
                <node concept="37vLTw" id="lDifvuxu9W" role="2Oq$k0">
                  <ref role="3cqZAo" node="lDifvuxsOe" resolve="repository" />
                </node>
                <node concept="liA8E" id="lDifvuxu9X" role="2OqNvi">
                  <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                  <node concept="30xZXu" id="lDifvuxu9Y" role="37wK5m" />
                  <node concept="3VsKOn" id="lDifvuxu9Z" role="37wK5m">
                    <ref role="3VsUkX" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="lDifvuxPOX" role="3cqZAp">
            <node concept="3clFbS" id="lDifvuxPOZ" role="3clFbx">
              <node concept="3cpWs8" id="34U$VGZuwoy" role="3cqZAp">
                <node concept="3cpWsn" id="34U$VGZuwoz" role="3cpWs9">
                  <property role="TrG5h" value="cfg" />
                  <node concept="yHkHH" id="34U$VGZuwbC" role="1tU5fm">
                    <ref role="yHkHG" node="4sMntFA6fDp" resolve="ForteLocalPC" />
                  </node>
                  <node concept="2ShNRf" id="34U$VGZuwo$" role="33vP2m">
                    <node concept="30w_07" id="34U$VGZuwo_" role="2ShVmc">
                      <ref role="30w_06" node="4sMntFA6fDp" resolve="ForteLocalPC" />
                      <node concept="3cpWs3" id="34U$VGZuwoA" role="uV2A8">
                        <node concept="3cpWs3" id="34U$VGZuwoB" role="3uHU7B">
                          <node concept="Xl_RD" id="34U$VGZuwoC" role="3uHU7w">
                            <property role="Xl_RC" value="." />
                          </node>
                          <node concept="3cpWs3" id="34U$VGZuwoD" role="3uHU7B">
                            <node concept="Xl_RD" id="34U$VGZuwoE" role="3uHU7B">
                              <property role="Xl_RC" value="Device " />
                            </node>
                            <node concept="2OqwBi" id="34U$VGZuwoF" role="3uHU7w">
                              <node concept="2OqwBi" id="34U$VGZuwoG" role="2Oq$k0">
                                <node concept="37vLTw" id="34U$VGZuwoH" role="2Oq$k0">
                                  <ref role="3cqZAo" node="lDifvuxu9U" resolve="device" />
                                </node>
                                <node concept="liA8E" id="34U$VGZuwoI" role="2OqNvi">
                                  <ref role="37wK5l" to="cwd8:~DeviceDeclaration.getContainer()" resolve="getContainer" />
                                </node>
                              </node>
                              <node concept="liA8E" id="34U$VGZuwoJ" role="2OqNvi">
                                <ref role="37wK5l" to="7adg:~Declaration.getName()" resolve="getName" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="34U$VGZuwoK" role="3uHU7w">
                          <node concept="37vLTw" id="34U$VGZuwoL" role="2Oq$k0">
                            <ref role="3cqZAo" node="lDifvuxu9U" resolve="device" />
                          </node>
                          <node concept="liA8E" id="34U$VGZuwoM" role="2OqNvi">
                            <ref role="37wK5l" to="7adg:~Declaration.getName()" resolve="getName" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="lDifvuxuqL" role="3cqZAp">
                <node concept="2OqwBi" id="lDifvuxPg2" role="3clFbG">
                  <node concept="2OqwBi" id="lDifvuxNwu" role="2Oq$k0">
                    <node concept="37vLTw" id="34U$VGZuxWy" role="2Oq$k0">
                      <ref role="3cqZAo" node="34U$VGZuwoz" resolve="cfg" />
                    </node>
                    <node concept="yHkDZ" id="lDifvuxOXd" role="2OqNvi">
                      <ref role="yHkDY" node="4sMntFA6S9L" resolve="myDevice" />
                    </node>
                  </node>
                  <node concept="2XshWL" id="lDifvuxPEb" role="2OqNvi">
                    <ref role="2WH_rO" node="7byHRlLC1QG" resolve="setNode" />
                    <node concept="30xZXu" id="lDifvuxRij" role="2XxRq1" />
                  </node>
                </node>
              </node>
              <node concept="3cpWs6" id="lDifvuxRrt" role="3cqZAp">
                <node concept="37vLTw" id="34U$VGZuy_A" role="3cqZAk">
                  <ref role="3cqZAo" node="34U$VGZuwoz" resolve="cfg" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="lDifvuySSS" role="3clFbw">
              <node concept="3y3z36" id="lDifvuyTGW" role="3uHU7B">
                <node concept="10Nm6u" id="lDifvuyTSm" role="3uHU7w" />
                <node concept="37vLTw" id="lDifvuyTnk" role="3uHU7B">
                  <ref role="3cqZAo" node="lDifvuxu9U" resolve="device" />
                </node>
              </node>
              <node concept="2YIFZM" id="lDifvuxQWe" role="3uHU7w">
                <ref role="37wK5l" node="6kvdbYuhGti" resolve="isApplicable" />
                <ref role="1Pybhc" node="6kvdbYufADt" resolve="RunLocalFortePCChecker" />
                <node concept="37vLTw" id="lDifvuxR3c" role="37wK5m">
                  <ref role="3cqZAo" node="lDifvuxu9U" resolve="device" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="lDifvuxRCG" role="3cqZAp">
            <node concept="10Nm6u" id="lDifvuxRG0" role="3cqZAk" />
          </node>
        </node>
      </node>
    </node>
    <node concept="yHkHH" id="lDifvuxpwG" role="2w4Pho">
      <ref role="yHkHG" node="4sMntFA6fDp" resolve="ForteLocalPC" />
    </node>
  </node>
</model>

