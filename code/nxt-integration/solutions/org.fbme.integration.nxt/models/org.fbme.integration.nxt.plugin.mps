<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:fa1d0806-1ef2-432a-bb40-cd4f72545972(org.fbme.integration.nxt.plugin)">
  <persistence version="9" />
  <languages>
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="982eb8df-2c96-4bd7-9963-11712ea622e5" name="jetbrains.mps.lang.resources" version="2" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
  </languages>
  <imports>
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="g27j" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork(org.fbme.lib/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="kdnk" ref="836d7b1e-a51f-4ec1-a3cc-1c0b7cb75eb9/java:org.fbme.scenes.controllers(org.fbme.scenes.lib/)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
    <import index="5z5t" ref="r:cb5ca339-5ab1-4d45-82cc-3e94fa36eca9(org.fbme.ide.richediting.plugin)" />
    <import index="vdx1" ref="r:9323096f-e22f-41d1-bc4e-66d2c0d81159(org.fbme.ide.platform.projectWizard)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="lz1h" ref="r:47803144-d0ed-4800-ae84-e83a292e3adb(jetbrains.mps.ide.ui.dialogs.modules)" />
    <import index="g1qu" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.ui(MPS.IDEA/)" />
    <import index="3fkn" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.fileChooser(MPS.IDEA/)" />
    <import index="jmi8" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide.util(MPS.IDEA/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="r791" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.text(JDK/)" />
    <import index="gsia" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.event(JDK/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="epky" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.parser(org.fbme.lib/)" />
    <import index="51vd" ref="r:61dddea3-21a4-4a11-920c-747c8c1e4777(org.fbme.ide.platform.persistence)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="mmaq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:org.jdom(MPS.Core/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="dush" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.persistence(MPS.OpenAPI/)" />
    <import index="18ew" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.util(MPS.Core/)" />
    <import index="snbe" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util.io(MPS.IDEA/)" />
    <import index="g3l6" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.extapi.model(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="3ju5" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.vfs(MPS.Core/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="yzdr" ref="a4712a21-b0bb-4e62-8857-e1c5ecf8c0ea/java:org.fbme.integration.nxt.importer.network.block(org.fbme.integration.nxt/)" />
    <import index="e268" ref="a4712a21-b0bb-4e62-8857-e1c5ecf8c0ea/java:org.fbme.integration.nxt.importer.network(org.fbme.integration.nxt/)" />
    <import index="zjkx" ref="a4712a21-b0bb-4e62-8857-e1c5ecf8c0ea/java:org.fbme.integration.nxt.importer.network.adapter(org.fbme.integration.nxt/)" />
    <import index="je9f" ref="fa2f156c-8927-4ca1-847f-ba6f9ea8f1a5/java:org.fbme.ide.richediting.editor(org.fbme.richediting.lib/)" />
    <import index="1hzy" ref="fa2f156c-8927-4ca1-847f-ba6f9ea8f1a5/java:org.fbme.ide.richediting.viewmodel(org.fbme.richediting.lib/)" />
    <import index="r3nk" ref="00c8d7a5-e1fd-4a2c-bbdf-9d0d4ac80c94/java:org.fbme.integration.nxt.importer(org.fbme.integration.nxt.lib/)" />
    <import index="uvki" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.iec61499.repository(org.fbme.platform.lib/)" />
    <import index="25ix" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.platform.converter(org.fbme.platform.lib/)" />
    <import index="yzds" ref="00c8d7a5-e1fd-4a2c-bbdf-9d0d4ac80c94/java:org.fbme.integration.nxt.importer.network.block(org.fbme.integration.nxt.lib/)" />
    <import index="zjky" ref="00c8d7a5-e1fd-4a2c-bbdf-9d0d4ac80c94/java:org.fbme.integration.nxt.importer.network.adapter(org.fbme.integration.nxt.lib/)" />
    <import index="e269" ref="00c8d7a5-e1fd-4a2c-bbdf-9d0d4ac80c94/java:org.fbme.integration.nxt.importer.network(org.fbme.integration.nxt.lib/)" />
    <import index="1ctc" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.stream(JDK/)" />
    <import index="eoo2" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.nio.file(JDK/)" />
    <import index="dfgj" ref="00c8d7a5-e1fd-4a2c-bbdf-9d0d4ac80c94/java:org.fbme.integration.nxt.importer.utils(org.fbme.integration.nxt.lib/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
    <import index="7adg" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.common(org.fbme.lib/)" implicit="true" />
    <import index="jkm4" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.ui(MPS.IDEA/)" implicit="true" />
    <import index="v4vf" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499(org.fbme.lib/)" implicit="true" />
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
      <concept id="8974276187400029891" name="jetbrains.mps.lang.resources.structure.IconExpression" flags="nn" index="1QGGTA">
        <child id="8974276187400029893" name="icon" index="1QGGTw" />
      </concept>
    </language>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="7458746815261976739" name="requiredAccess" index="2YLI8m" />
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
        <reference id="1203092736097" name="modifiedGroup" index="tU$_T" />
      </concept>
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
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
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="481983775135178851" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginInitBlock" flags="in" index="2uRRBj" />
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
      </concept>
      <concept id="481983775135178840" name="jetbrains.mps.lang.plugin.standalone.structure.ApplicationPluginDeclaration" flags="ng" index="2uRRBC">
        <child id="481983775135178842" name="initBlock" index="2uRRBE" />
        <child id="481983775135178843" name="disposeBlock" index="2uRRBF" />
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
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
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
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg" />
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1513279640923991009" name="jetbrains.mps.baseLanguage.structure.IGenericClassCreator" flags="ng" index="366HgL">
        <property id="1513279640906337053" name="inferTypeParams" index="373rjd" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1225271283259" name="jetbrains.mps.baseLanguage.structure.NPEEqualsExpression" flags="nn" index="17R0WA" />
      <concept id="1225271408483" name="jetbrains.mps.baseLanguage.structure.IsNotEmptyOperation" flags="nn" index="17RvpY" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1111509017652" name="jetbrains.mps.baseLanguage.structure.FloatingPointConstant" flags="nn" index="3b6qkQ">
        <property id="1113006610751" name="value" index="$nhwW" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="1181808852946" name="isFinal" index="DiZV1" />
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
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1144226303539" name="jetbrains.mps.baseLanguage.structure.ForeachStatement" flags="nn" index="1DcWWT">
        <child id="1144226360166" name="iterable" index="1DdaDG" />
      </concept>
      <concept id="1144230876926" name="jetbrains.mps.baseLanguage.structure.AbstractForStatement" flags="nn" index="1DupvO">
        <child id="1144230900587" name="variable" index="1Duv9x" />
      </concept>
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367509" name="finallyClause" index="1zxBo6" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
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
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1200397529627" name="jetbrains.mps.baseLanguage.structure.CharConstant" flags="nn" index="1Xhbcc">
        <property id="1200397540847" name="charConstant" index="1XhdNS" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp" />
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1166648550386" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewRootNodeOperation" flags="nn" index="2xF2bX" />
      <concept id="1143226024141" name="jetbrains.mps.lang.smodel.structure.SModelType" flags="in" index="H_c77" />
      <concept id="1143235216708" name="jetbrains.mps.lang.smodel.structure.Model_CreateNewNodeOperation" flags="nn" index="I8ghe">
        <reference id="1143235391024" name="concept" index="I8UWU" />
      </concept>
      <concept id="1171323947159" name="jetbrains.mps.lang.smodel.structure.Model_NodesOperation" flags="nn" index="2SmgA7" />
      <concept id="1206482823744" name="jetbrains.mps.lang.smodel.structure.Model_AddRootOperation" flags="nn" index="3BYIHo">
        <child id="1206482823746" name="nodeArgument" index="3BYIHq" />
      </concept>
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
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="role_DebugInfo" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
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
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
    </language>
  </registry>
  <node concept="2DaZZR" id="4sMntFAig8l">
    <property role="3_H9TB" value="true" />
  </node>
  <node concept="2uRRBC" id="7i2nuYeqflU">
    <property role="TrG5h" value="ImporterByDefaultIdeaEnabler Plug-in" />
    <node concept="2uRRBj" id="7i2nuYeqflV" role="2uRRBE">
      <node concept="3clFbS" id="7i2nuYeqflW" role="2VODD2">
        <node concept="3clFbF" id="7EJeuytSYXs" role="3cqZAp">
          <node concept="2YIFZM" id="7EJeuytUltT" role="3clFbG">
            <ref role="37wK5l" to="vdx1:7EJeuytUhYH" resolve="addTemplate" />
            <ref role="1Pybhc" to="vdx1:7OBD32Ii_tb" resolve="IEC61499ProjectTemplateGroup" />
            <node concept="10M0yZ" id="7EJeuytU_8B" role="37wK5m">
              <ref role="3cqZAo" node="3qzmBf7cl7w" resolve="NXT_IMPORT_TEMPLATE" />
              <ref role="1PxDUh" node="7EJeuytT5KQ" resolve="NxtProjectTemplate" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBI" id="2fDoQnfOdbZ" role="2uRRBF">
      <node concept="3clFbS" id="2fDoQnfOdc0" role="2VODD2">
        <node concept="3clFbF" id="7EJeuytUDLA" role="3cqZAp">
          <node concept="2YIFZM" id="7EJeuytUEdU" role="3clFbG">
            <ref role="37wK5l" to="vdx1:7EJeuytUAJ7" resolve="removeTemplate" />
            <ref role="1Pybhc" to="vdx1:7OBD32Ii_tb" resolve="IEC61499ProjectTemplateGroup" />
            <node concept="10M0yZ" id="7EJeuytUEdV" role="37wK5m">
              <ref role="1PxDUh" node="7EJeuytT5KQ" resolve="NxtProjectTemplate" />
              <ref role="3cqZAo" node="3qzmBf7cl7w" resolve="NXT_IMPORT_TEMPLATE" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="6wb8cxJd_Qx">
    <property role="TrG5h" value="CreateComposite" />
    <property role="2uzpH1" value="Create Composite" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="1DS2jV" id="6wb8cxJd_Qy" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="6wb8cxJd_Qz" role="1oa70y" />
    </node>
    <node concept="2S4$dB" id="6wb8cxJe6fC" role="1NuT2Z">
      <property role="TrG5h" value="model" />
      <node concept="3Tm6S6" id="6wb8cxJe6fD" role="1B3o_S" />
      <node concept="1oajcY" id="6wb8cxJe6fE" role="1oa70y" />
      <node concept="H_c77" id="6wb8cxJe5UN" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="6wb8cxJe7K8" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6wb8cxJe7K9" role="1oa70y" />
    </node>
    <node concept="tnohg" id="6wb8cxJd_Q$" role="tncku">
      <node concept="3clFbS" id="6wb8cxJd_Q_" role="2VODD2">
        <node concept="3cpWs8" id="6wb8cxJd_QA" role="3cqZAp">
          <node concept="3cpWsn" id="6wb8cxJd_QB" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="6wb8cxJd_QC" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="6wb8cxJd_QD" role="33vP2m">
              <node concept="2OqwBi" id="6wb8cxJd_QE" role="2Oq$k0">
                <node concept="2WthIp" id="6wb8cxJd_QF" role="2Oq$k0" />
                <node concept="1DTwFV" id="6wb8cxJd_QG" role="2OqNvi">
                  <ref role="2WH_rO" node="6wb8cxJd_Qy" resolve="cell" />
                </node>
              </node>
              <node concept="liA8E" id="6wb8cxJd_QH" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6wb8cxJeedC" role="3cqZAp">
          <node concept="3cpWsn" id="6wb8cxJeedD" role="3cpWs9">
            <property role="TrG5h" value="network" />
            <node concept="3uibUv" id="6wb8cxJeedE" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
            </node>
            <node concept="2OqwBi" id="6wb8cxJeedF" role="33vP2m">
              <node concept="37vLTw" id="6wb8cxJeedG" role="2Oq$k0">
                <ref role="3cqZAo" node="6wb8cxJd_QB" resolve="style" />
              </node>
              <node concept="liA8E" id="6wb8cxJeedH" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="2g7iZ5Y1g0X" role="37wK5m">
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK" resolve="NETWORK" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6wb8cxJeedJ" role="3cqZAp">
          <node concept="3cpWsn" id="6wb8cxJeedK" role="3cpWs9">
            <property role="TrG5h" value="selected" />
            <node concept="3uibUv" id="6wb8cxJeedL" role="1tU5fm">
              <ref role="3uigEE" to="kdnk:~SelectionModel" resolve="SelectionModel" />
              <node concept="3uibUv" id="6wb8cxJeedM" role="11_B2D">
                <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
              </node>
            </node>
            <node concept="2OqwBi" id="6wb8cxJeedN" role="33vP2m">
              <node concept="37vLTw" id="6wb8cxJeedO" role="2Oq$k0">
                <ref role="3cqZAo" node="6wb8cxJd_QB" resolve="style" />
              </node>
              <node concept="liA8E" id="6wb8cxJeedP" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6wb8cxJeedQ" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.SELECTED_FBS" resolve="SELECTED_FBS" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6wb8cxJefk0" role="3cqZAp">
          <node concept="3cpWsn" id="6wb8cxJefk1" role="3cpWs9">
            <property role="TrG5h" value="instance" />
            <node concept="3uibUv" id="6wb8cxJefk2" role="1tU5fm">
              <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
            </node>
            <node concept="2YIFZM" id="6wb8cxJeftv" role="33vP2m">
              <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
              <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <node concept="2OqwBi" id="6wb8cxJefLh" role="37wK5m">
                <node concept="2WthIp" id="6wb8cxJefvf" role="2Oq$k0" />
                <node concept="1DTwFV" id="6wb8cxJeg6t" role="2OqNvi">
                  <ref role="2WH_rO" node="6wb8cxJe7K8" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6wb8cxJehh2" role="3cqZAp">
          <node concept="3cpWsn" id="6wb8cxJehh3" role="3cpWs9">
            <property role="TrG5h" value="blockList" />
            <node concept="3uibUv" id="6wb8cxJehh0" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="6wb8cxJehzA" role="11_B2D">
                <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
              </node>
            </node>
            <node concept="2ShNRf" id="6wb8cxJeh_r" role="33vP2m">
              <node concept="1pGfFk" id="6wb8cxJeljx" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="6wb8cxJelLT" role="1pMfVU">
                  <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6wb8cxJemiq" role="3cqZAp">
          <node concept="2GrKxI" id="6wb8cxJemis" role="2Gsz3X">
            <property role="TrG5h" value="component" />
          </node>
          <node concept="2OqwBi" id="6wb8cxJemJJ" role="2GsD0m">
            <node concept="37vLTw" id="6wb8cxJemyj" role="2Oq$k0">
              <ref role="3cqZAo" node="6wb8cxJeedK" resolve="selected" />
            </node>
            <node concept="liA8E" id="6wb8cxJemZ8" role="2OqNvi">
              <ref role="37wK5l" to="kdnk:~SelectionModel.getSelectedComponents()" resolve="getSelectedComponents" />
            </node>
          </node>
          <node concept="3clFbS" id="6wb8cxJemiw" role="2LFqv$">
            <node concept="3clFbJ" id="15Dc3O5c4ja" role="3cqZAp">
              <node concept="3clFbS" id="15Dc3O5c4jc" role="3clFbx">
                <node concept="3clFbF" id="15Dc3O5c5nD" role="3cqZAp">
                  <node concept="2OqwBi" id="15Dc3O5c5Tu" role="3clFbG">
                    <node concept="37vLTw" id="15Dc3O5c5nB" role="2Oq$k0">
                      <ref role="3cqZAo" node="6wb8cxJehh3" resolve="blockList" />
                    </node>
                    <node concept="liA8E" id="15Dc3O5c6Cw" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="10QFUN" id="15Dc3O5c8JC" role="37wK5m">
                        <node concept="3uibUv" id="15Dc3O5c994" role="10QFUM">
                          <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                        </node>
                        <node concept="2OqwBi" id="15Dc3O5c7YP" role="10QFUP">
                          <node concept="1eOMI4" id="15Dc3O5c7HI" role="2Oq$k0">
                            <node concept="10QFUN" id="15Dc3O5c6VX" role="1eOMHV">
                              <node concept="3uibUv" id="15Dc3O5c7hP" role="10QFUM">
                                <ref role="3uigEE" to="1hzy:~FunctionBlockView" resolve="FunctionBlockView" />
                              </node>
                              <node concept="2GrUjf" id="15Dc3O5c6JK" role="10QFUP">
                                <ref role="2Gs0qQ" node="6wb8cxJemis" resolve="component" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="15Dc3O5c8pB" role="2OqNvi">
                            <ref role="37wK5l" to="1hzy:~FunctionBlockView.getComponent()" resolve="getComponent" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZW3vV" id="15Dc3O5c4Ql" role="3clFbw">
                <node concept="3uibUv" id="15Dc3O5c57t" role="2ZW6by">
                  <ref role="3uigEE" to="1hzy:~FunctionBlockView" resolve="FunctionBlockView" />
                </node>
                <node concept="2GrUjf" id="15Dc3O5c4sw" role="2ZW6bz">
                  <ref role="2Gs0qQ" node="6wb8cxJemis" resolve="component" />
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="15Dc3O5c9nJ" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbF" id="1qXw8gQje2m" role="8Wnug">
                <node concept="2OqwBi" id="1qXw8gQjeyq" role="3clFbG">
                  <node concept="37vLTw" id="1qXw8gQje2k" role="2Oq$k0">
                    <ref role="3cqZAo" node="6wb8cxJehh3" resolve="blockList" />
                  </node>
                  <node concept="liA8E" id="1qXw8gQjfpP" role="2OqNvi">
                    <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                    <node concept="10QFUN" id="1qXw8gQjfGX" role="37wK5m">
                      <node concept="3uibUv" id="1qXw8gQjg3a" role="10QFUM">
                        <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                      </node>
                      <node concept="2GrUjf" id="1qXw8gQjfwK" role="10QFUP">
                        <ref role="2Gs0qQ" node="6wb8cxJemis" resolve="component" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="1X3_iC" id="1qXw8gQjgS3" role="lGtFl">
              <property role="3V$3am" value="statement" />
              <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
              <node concept="3clFbJ" id="6wb8cxJenba" role="8Wnug">
                <node concept="2ZW3vV" id="6wb8cxJenyf" role="3clFbw">
                  <node concept="3uibUv" id="6wb8cxJenOa" role="2ZW6by">
                    <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                  </node>
                  <node concept="2GrUjf" id="6wb8cxJencb" role="2ZW6bz">
                    <ref role="2Gs0qQ" node="6wb8cxJemis" resolve="component" />
                  </node>
                </node>
                <node concept="3clFbS" id="6wb8cxJenbc" role="3clFbx">
                  <node concept="3clFbF" id="6wb8cxJeo5m" role="3cqZAp">
                    <node concept="2OqwBi" id="6wb8cxJeoB8" role="3clFbG">
                      <node concept="37vLTw" id="6wb8cxJeo5l" role="2Oq$k0">
                        <ref role="3cqZAo" node="6wb8cxJehh3" resolve="blockList" />
                      </node>
                      <node concept="liA8E" id="6wb8cxJeqfL" role="2OqNvi">
                        <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                        <node concept="10QFUN" id="6wb8cxJeqxP" role="37wK5m">
                          <node concept="3uibUv" id="6wb8cxJerpf" role="10QFUM">
                            <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                          </node>
                          <node concept="2GrUjf" id="6wb8cxJeqls" role="10QFUP">
                            <ref role="2Gs0qQ" node="6wb8cxJemis" resolve="component" />
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
        <node concept="3clFbH" id="69ThbiswGoP" role="3cqZAp" />
        <node concept="3clFbJ" id="3Oq8bIOFDDB" role="3cqZAp">
          <node concept="3clFbS" id="3Oq8bIOFDDD" role="3clFbx">
            <node concept="3cpWs8" id="4_9FSR7XeNU" role="3cqZAp">
              <node concept="3cpWsn" id="4_9FSR7XeO0" role="3cpWs9">
                <property role="TrG5h" value="innerFBs" />
                <node concept="3uibUv" id="4_9FSR7XeO2" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="4_9FSR7XfPm" role="11_B2D">
                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                  </node>
                </node>
                <node concept="2ShNRf" id="4_9FSR7XfTD" role="33vP2m">
                  <node concept="1pGfFk" id="4_9FSR7XRAF" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2Gpval" id="4_9FSR7XSle" role="3cqZAp">
              <node concept="2GrKxI" id="4_9FSR7XSlg" role="2Gsz3X">
                <property role="TrG5h" value="declaration" />
              </node>
              <node concept="37vLTw" id="4_9FSR7XSMI" role="2GsD0m">
                <ref role="3cqZAo" node="6wb8cxJehh3" resolve="blockList" />
              </node>
              <node concept="3clFbS" id="4_9FSR7XSlk" role="2LFqv$">
                <node concept="3clFbF" id="4_9FSR7XT53" role="3cqZAp">
                  <node concept="2OqwBi" id="4_9FSR7XTvs" role="3clFbG">
                    <node concept="37vLTw" id="4_9FSR7XT52" role="2Oq$k0">
                      <ref role="3cqZAo" node="4_9FSR7XeO0" resolve="innerFBs" />
                    </node>
                    <node concept="liA8E" id="4_9FSR7XWb7" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="2OqwBi" id="4_9FSR7XZLo" role="37wK5m">
                        <node concept="2OqwBi" id="4_9FSR7XYGV" role="2Oq$k0">
                          <node concept="2OqwBi" id="4_9FSR7XWCw" role="2Oq$k0">
                            <node concept="2GrUjf" id="4_9FSR7XWmH" role="2Oq$k0">
                              <ref role="2Gs0qQ" node="4_9FSR7XSlg" resolve="declaration" />
                            </node>
                            <node concept="liA8E" id="4_9FSR7XYpt" role="2OqNvi">
                              <ref role="37wK5l" to="g27j:~FunctionBlockDeclaration.getTypeReference()" resolve="getTypeReference" />
                            </node>
                          </node>
                          <node concept="liA8E" id="4_9FSR7XZr2" role="2OqNvi">
                            <ref role="37wK5l" to="7adg:~Reference.getTarget()" resolve="getTarget" />
                          </node>
                        </node>
                        <node concept="liA8E" id="4_9FSR7Y3S3" role="2OqNvi">
                          <ref role="37wK5l" to="7adg:~Declaration.getName()" resolve="getName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4_9FSR7X6_n" role="3cqZAp">
              <node concept="3cpWsn" id="4_9FSR7X6_o" role="3cpWs9">
                <property role="TrG5h" value="defaultName" />
                <node concept="3uibUv" id="4_9FSR7X6_p" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2YIFZM" id="4_9FSR7X6GU" role="33vP2m">
                  <ref role="1Pybhc" to="wyt6:~String" resolve="String" />
                  <ref role="37wK5l" to="wyt6:~String.join(java.lang.CharSequence,java.lang.Iterable)" resolve="join" />
                  <node concept="Xl_RD" id="4_9FSR7X6HF" role="37wK5m">
                    <property role="Xl_RC" value="_" />
                  </node>
                  <node concept="37vLTw" id="4_9FSR7Y5bW" role="37wK5m">
                    <ref role="3cqZAo" node="4_9FSR7XeO0" resolve="innerFBs" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3Oq8bIOFM$O" role="3cqZAp">
              <node concept="3cpWsn" id="3Oq8bIOFM$P" role="3cpWs9">
                <property role="TrG5h" value="dialogWrapper" />
                <node concept="3uibUv" id="3Oq8bIOFM$Q" role="1tU5fm">
                  <ref role="3uigEE" to="dfgj:~CompositeCreatorDialogWrapper" resolve="CompositeCreatorDialogWrapper" />
                </node>
                <node concept="2ShNRf" id="3Oq8bIOFMDM" role="33vP2m">
                  <node concept="1pGfFk" id="3Oq8bIOFMDz" role="2ShVmc">
                    <ref role="37wK5l" to="dfgj:~CompositeCreatorDialogWrapper.&lt;init&gt;(java.lang.String)" resolve="CompositeCreatorDialogWrapper" />
                    <node concept="37vLTw" id="4_9FSR7Y78g" role="37wK5m">
                      <ref role="3cqZAo" node="4_9FSR7X6_o" resolve="defaultName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4rWo0OZ0lHx" role="3cqZAp">
              <node concept="3clFbS" id="4rWo0OZ0lHz" role="3clFbx">
                <node concept="3clFbF" id="69Thbisw_E9" role="3cqZAp">
                  <node concept="2OqwBi" id="69ThbiswE8t" role="3clFbG">
                    <node concept="2ShNRf" id="69Thbisw_E5" role="2Oq$k0">
                      <node concept="1pGfFk" id="69ThbiswE2H" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="yzds:~CompositeCreator.&lt;init&gt;(boolean)" resolve="CompositeCreator" />
                        <node concept="3clFbT" id="69ThbiswE3J" role="37wK5m" />
                      </node>
                    </node>
                    <node concept="liA8E" id="69ThbiswErR" role="2OqNvi">
                      <ref role="37wK5l" to="yzds:~CompositeCreator.createComposite(org.fbme.lib.iec61499.fbnetwork.FBNetwork,java.util.List,java.lang.String,org.jetbrains.mps.openapi.model.SModel,org.fbme.lib.iec61499.IEC61499Factory)" resolve="createComposite" />
                      <node concept="37vLTw" id="69ThbiswEts" role="37wK5m">
                        <ref role="3cqZAo" node="6wb8cxJeedD" resolve="network" />
                      </node>
                      <node concept="37vLTw" id="69ThbiswEvG" role="37wK5m">
                        <ref role="3cqZAo" node="6wb8cxJehh3" resolve="blockList" />
                      </node>
                      <node concept="2OqwBi" id="7DgNEZPdKyg" role="37wK5m">
                        <node concept="37vLTw" id="7DgNEZPdKrn" role="2Oq$k0">
                          <ref role="3cqZAo" node="3Oq8bIOFM$P" resolve="sampleDialogWrapper" />
                        </node>
                        <node concept="liA8E" id="7DgNEZPdKGT" role="2OqNvi">
                          <ref role="37wK5l" to="dfgj:~CompositeCreatorDialogWrapper.getDefinitionName()" resolve="getDefinitionName" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="69ThbiswEPZ" role="37wK5m">
                        <node concept="2WthIp" id="69ThbiswE_H" role="2Oq$k0" />
                        <node concept="3gHZIF" id="69ThbiswF9S" role="2OqNvi">
                          <ref role="2WH_rO" node="6wb8cxJe6fC" resolve="model" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="69ThbiswFtn" role="37wK5m">
                        <node concept="37vLTw" id="69ThbiswFlp" role="2Oq$k0">
                          <ref role="3cqZAo" node="6wb8cxJefk1" resolve="instance" />
                        </node>
                        <node concept="liA8E" id="69ThbiswFJJ" role="2OqNvi">
                          <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getIec61499Factory()" resolve="getIec61499Factory" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4rWo0OZ0jqZ" role="3clFbw">
                <node concept="37vLTw" id="4rWo0OZ0gYk" role="2Oq$k0">
                  <ref role="3cqZAo" node="3Oq8bIOFM$P" resolve="sampleDialogWrapper" />
                </node>
                <node concept="liA8E" id="4rWo0OZ0lp4" role="2OqNvi">
                  <ref role="37wK5l" to="jkm4:~DialogWrapper.showAndGet()" resolve="showAndGet" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eOSWO" id="3Oq8bIOFHmu" role="3clFbw">
            <node concept="3cmrfG" id="3Oq8bIOFHmK" role="3uHU7w">
              <property role="3cmrfH" value="0" />
            </node>
            <node concept="2OqwBi" id="3Oq8bIOFETI" role="3uHU7B">
              <node concept="37vLTw" id="3Oq8bIOFEbW" role="2Oq$k0">
                <ref role="3cqZAo" node="6wb8cxJehh3" resolve="blockList" />
              </node>
              <node concept="liA8E" id="3Oq8bIOFFTJ" role="2OqNvi">
                <ref role="37wK5l" to="33ny:~List.size()" resolve="size" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="6wb8cxJd_RJ" role="tmbBb">
      <node concept="3clFbS" id="6wb8cxJd_RK" role="2VODD2">
        <node concept="3cpWs8" id="6wb8cxJd_RL" role="3cqZAp">
          <node concept="3cpWsn" id="6wb8cxJd_RM" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="6wb8cxJd_RN" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="6wb8cxJd_RO" role="33vP2m">
              <node concept="2OqwBi" id="6wb8cxJd_RP" role="2Oq$k0">
                <node concept="2WthIp" id="6wb8cxJd_RQ" role="2Oq$k0" />
                <node concept="1DTwFV" id="6wb8cxJd_RR" role="2OqNvi">
                  <ref role="2WH_rO" node="6wb8cxJd_Qy" resolve="cell" />
                </node>
              </node>
              <node concept="liA8E" id="6wb8cxJd_RS" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6wb8cxJd_RT" role="3cqZAp">
          <node concept="3cpWsn" id="6wb8cxJd_RU" role="3cpWs9">
            <property role="TrG5h" value="network" />
            <node concept="3uibUv" id="6wb8cxJd_RV" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
            </node>
            <node concept="2OqwBi" id="6wb8cxJd_RW" role="33vP2m">
              <node concept="37vLTw" id="6wb8cxJd_RX" role="2Oq$k0">
                <ref role="3cqZAo" node="6wb8cxJd_RM" resolve="style" />
              </node>
              <node concept="liA8E" id="6wb8cxJd_RY" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="2g7iZ5Y1dO$" role="37wK5m">
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK" resolve="NETWORK" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6wb8cxJe9PK" role="3cqZAp">
          <node concept="3cpWsn" id="6wb8cxJe9PL" role="3cpWs9">
            <property role="TrG5h" value="selected" />
            <node concept="3uibUv" id="6wb8cxJe9PI" role="1tU5fm">
              <ref role="3uigEE" to="kdnk:~SelectionModel" resolve="SelectionModel" />
              <node concept="3uibUv" id="6wb8cxJea6P" role="11_B2D">
                <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
              </node>
            </node>
            <node concept="2OqwBi" id="6wb8cxJeb8L" role="33vP2m">
              <node concept="37vLTw" id="6wb8cxJeaU8" role="2Oq$k0">
                <ref role="3cqZAo" node="6wb8cxJd_RM" resolve="style" />
              </node>
              <node concept="liA8E" id="6wb8cxJebw7" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="2g7iZ5Y1exs" role="37wK5m">
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.SELECTED_FBS" resolve="SELECTED_FBS" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6wb8cxJe8Bw" role="3cqZAp" />
        <node concept="3clFbF" id="6wb8cxJd_Se" role="3cqZAp">
          <node concept="1Wc70l" id="6wb8cxJecxa" role="3clFbG">
            <node concept="3y3z36" id="6wb8cxJed7D" role="3uHU7w">
              <node concept="10Nm6u" id="6wb8cxJeduV" role="3uHU7w" />
              <node concept="37vLTw" id="6wb8cxJecMw" role="3uHU7B">
                <ref role="3cqZAo" node="6wb8cxJe9PL" resolve="selected" />
              </node>
            </node>
            <node concept="3y3z36" id="6wb8cxJd_So" role="3uHU7B">
              <node concept="37vLTw" id="6wb8cxJd_Sp" role="3uHU7B">
                <ref role="3cqZAo" node="6wb8cxJd_RU" resolve="network" />
              </node>
              <node concept="10Nm6u" id="6wb8cxJd_Sq" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="6wb8cxJesrm">
    <property role="TrG5h" value="NxtIntegrationGroup" />
    <node concept="ftmFs" id="6wb8cxJesrn" role="ftER_">
      <node concept="tCFHf" id="7bIcSsJQIia" role="ftvYc">
        <ref role="tCJdB" node="6VpjB$m4T4a" resolve="AnalyseNetwork" />
      </node>
      <node concept="tCFHf" id="5JOOlQrpLXz" role="ftvYc">
        <ref role="tCJdB" node="5JOOlQroE94" resolve="ApplySimplification" />
      </node>
      <node concept="tCFHf" id="7bIcSsJQIil" role="ftvYc">
        <ref role="tCJdB" node="7bIcSsJPAxp" resolve="CreateAdapter" />
      </node>
      <node concept="tCFHf" id="6wb8cxJesSI" role="ftvYc">
        <ref role="tCJdB" node="6wb8cxJd_Qx" resolve="CreateComposite" />
      </node>
    </node>
    <node concept="tT9cl" id="6wb8cxJesrq" role="2f5YQi">
      <ref role="tU$_T" to="5z5t:3DiEZ8TON84" resolve="IEC61499Actions" />
    </node>
  </node>
  <node concept="312cEu" id="7EJeuytT5KQ">
    <property role="TrG5h" value="NxtProjectTemplate" />
    <node concept="Wx3nA" id="3qzmBf7cl7w" role="jymVt">
      <property role="TrG5h" value="NXT_IMPORT_TEMPLATE" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3qzmBf7cl7x" role="1tU5fm">
        <ref role="3uigEE" to="vdx1:7OBD32HG4Ey" resolve="IEC61499ProjectTemplate" />
      </node>
      <node concept="2ShNRf" id="3qzmBf7cl7y" role="33vP2m">
        <node concept="YeOm9" id="3qzmBf7cl7z" role="2ShVmc">
          <node concept="1Y3b0j" id="3qzmBf7cl7$" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="vdx1:3qzmBf7dDoe" resolve="IEC61499ProjectTemplate" />
            <ref role="1Y3XeK" to="vdx1:7OBD32HG4Ey" resolve="IEC61499ProjectTemplate" />
            <node concept="3clFb_" id="3qzmBf7cl7_" role="jymVt">
              <property role="TrG5h" value="getName" />
              <node concept="3Tm1VV" id="3qzmBf7cl7A" role="1B3o_S" />
              <node concept="2AHcQZ" id="3qzmBf7cl7B" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
              </node>
              <node concept="3uibUv" id="3qzmBf7cl7C" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="3qzmBf7cl7D" role="3clF47">
                <node concept="3clFbF" id="3qzmBf7cl7E" role="3cqZAp">
                  <node concept="Xl_RD" id="3qzmBf7cl7F" role="3clFbG">
                    <property role="Xl_RC" value="NxtImport" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3qzmBf7cl7G" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3qzmBf7cl7H" role="jymVt" />
            <node concept="3clFb_" id="3qzmBf7cl7I" role="jymVt">
              <property role="TrG5h" value="getDescription" />
              <node concept="3Tm1VV" id="3qzmBf7cl7J" role="1B3o_S" />
              <node concept="2AHcQZ" id="3qzmBf7cl7K" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
              </node>
              <node concept="3uibUv" id="3qzmBf7cl7L" role="3clF45">
                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
              </node>
              <node concept="3clFbS" id="3qzmBf7cl7M" role="3clF47">
                <node concept="3clFbF" id="3qzmBf7cl7N" role="3cqZAp">
                  <node concept="Xl_RD" id="3qzmBf7cl7O" role="3clFbG">
                    <property role="Xl_RC" value="Import project from NxtStudio" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3qzmBf7cl7P" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3qzmBf7cl7Q" role="jymVt" />
            <node concept="3clFb_" id="3qzmBf7cl7R" role="jymVt">
              <property role="TrG5h" value="getStereotype" />
              <node concept="3clFbS" id="3qzmBf7cl7S" role="3clF47">
                <node concept="3clFbF" id="3qzmBf7cl7T" role="3cqZAp">
                  <node concept="Xl_RD" id="3qzmBf7cl7U" role="3clFbG">
                    <property role="Xl_RC" value="import" />
                  </node>
                </node>
              </node>
              <node concept="17QB3L" id="3qzmBf7cl7V" role="3clF45" />
              <node concept="3Tm1VV" id="3qzmBf7cl7W" role="1B3o_S" />
            </node>
            <node concept="2tJIrI" id="3qzmBf7cl7X" role="jymVt" />
            <node concept="3clFb_" id="3qzmBf7cl7Y" role="jymVt">
              <property role="TrG5h" value="getIcon" />
              <node concept="3Tm1VV" id="3qzmBf7cl7Z" role="1B3o_S" />
              <node concept="2AHcQZ" id="3qzmBf7cl80" role="2AJF6D">
                <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
              </node>
              <node concept="3uibUv" id="3qzmBf7cl81" role="3clF45">
                <ref role="3uigEE" to="dxuu:~Icon" resolve="Icon" />
              </node>
              <node concept="3clFbS" id="3qzmBf7cl82" role="3clF47">
                <node concept="3clFbF" id="3qzmBf7cl83" role="3cqZAp">
                  <node concept="1QGGTA" id="3qzmBf7cl84" role="3clFbG">
                    <node concept="1irR5M" id="3qzmBf7cl85" role="1QGGTw">
                      <property role="2$rrk2" value="2" />
                      <node concept="1irR9n" id="3qzmBf7cl86" role="1irR9h">
                        <node concept="3PKj8D" id="3qzmBf7cl87" role="3PKjn_">
                          <property role="3PKj8l" value="87CEEB" />
                        </node>
                      </node>
                      <node concept="1irPie" id="3qzmBf7cl88" role="1irR9h">
                        <property role="1irPi9" value="I" />
                        <node concept="3PKj8D" id="3qzmBf7cl89" role="3PKjny">
                          <property role="3PKj8l" value="EEEEEE" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3qzmBf7cl8a" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="3qzmBf7cl8b" role="jymVt" />
            <node concept="3Tm1VV" id="3qzmBf7cl8c" role="1B3o_S" />
            <node concept="3clFb_" id="3qzmBf7cl8d" role="jymVt">
              <property role="TrG5h" value="initModel" />
              <node concept="3Tqbb2" id="3qzmBf7cl8e" role="3clF45" />
              <node concept="37vLTG" id="3qzmBf7cl8f" role="3clF46">
                <property role="TrG5h" value="m" />
                <node concept="H_c77" id="3qzmBf7cl8g" role="1tU5fm" />
              </node>
              <node concept="3Tmbuc" id="7EJeuytSSbv" role="1B3o_S" />
              <node concept="3clFbS" id="3qzmBf7cl8i" role="3clF47">
                <node concept="3cpWs8" id="4YJrl6J5F5C" role="3cqZAp">
                  <node concept="3cpWsn" id="4YJrl6J5F5D" role="3cpWs9">
                    <property role="TrG5h" value="settings" />
                    <node concept="3uibUv" id="4YJrl6J6hXD" role="1tU5fm">
                      <ref role="3uigEE" node="3qzmBf7ctGt" resolve="NxtImportSystemConfigSolutionSettings" />
                    </node>
                    <node concept="10QFUN" id="4YJrl6J6mcO" role="33vP2m">
                      <node concept="3uibUv" id="4YJrl6J6n11" role="10QFUM">
                        <ref role="3uigEE" node="3qzmBf7ctGt" resolve="NxtImportSystemConfigSolutionSettings" />
                      </node>
                      <node concept="2OqwBi" id="4YJrl6J6nrZ" role="10QFUP">
                        <node concept="37vLTw" id="4YJrl6J6lwx" role="2Oq$k0">
                          <ref role="3cqZAo" node="3qzmBf7cl7w" resolve="NXT_IMPORT_TEMPLATE" />
                        </node>
                        <node concept="liA8E" id="4YJrl6J6o1z" role="2OqNvi">
                          <ref role="37wK5l" to="vdx1:7OBD32IfGyv" resolve="getSettings" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4YJrl6J5Mg5" role="3cqZAp" />
                <node concept="3cpWs8" id="4YJrl6J6rDK" role="3cqZAp">
                  <node concept="3cpWsn" id="4YJrl6J6rDL" role="3cpWs9">
                    <property role="TrG5h" value="nxtImportDirectory" />
                    <node concept="3uibUv" id="4YJrl6J6rDM" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="2OqwBi" id="4YJrl6J6u1U" role="33vP2m">
                      <node concept="37vLTw" id="4YJrl6J6tel" role="2Oq$k0">
                        <ref role="3cqZAo" node="4YJrl6J5F5D" resolve="settings" />
                      </node>
                      <node concept="liA8E" id="4YJrl6J6uMJ" role="2OqNvi">
                        <ref role="37wK5l" node="3qzmBf7c$JN" resolve="getNxtImportLocation" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4YJrl6J5HMP" role="3cqZAp" />
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
                <node concept="3cpWs8" id="1I2lkQXoLyk" role="3cqZAp">
                  <node concept="3cpWsn" id="1I2lkQXoLyl" role="3cpWs9">
                    <property role="TrG5h" value="modelName" />
                    <node concept="3uibUv" id="1I2lkQXoLym" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="2OqwBi" id="1I2lkQXDno_" role="33vP2m">
                      <node concept="37vLTw" id="1I2lkQXDmz1" role="2Oq$k0">
                        <ref role="3cqZAo" node="4YJrl6J5F5D" resolve="settings" />
                      </node>
                      <node concept="liA8E" id="1I2lkQXDoui" role="2OqNvi">
                        <ref role="37wK5l" to="lz1h:g46k2scpfc" resolve="getModuleName" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="49FXEugGWJj" role="3cqZAp">
                  <node concept="3cpWsn" id="49FXEugGWJk" role="3cpWs9">
                    <property role="TrG5h" value="ref" />
                    <node concept="3uibUv" id="49FXEugGWJl" role="1tU5fm">
                      <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                    </node>
                    <node concept="2OqwBi" id="49FXEugGXpr" role="33vP2m">
                      <node concept="2YIFZM" id="6gadshXIs_D" role="2Oq$k0">
                        <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                        <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                      </node>
                      <node concept="liA8E" id="49FXEugGXS0" role="2OqNvi">
                        <ref role="37wK5l" to="dush:~PersistenceFacade.createModelReference(org.jetbrains.mps.openapi.module.SModuleReference,org.jetbrains.mps.openapi.model.SModelId,java.lang.String)" resolve="createModelReference" />
                        <node concept="10Nm6u" id="49FXEugGYhr" role="37wK5m" />
                        <node concept="37vLTw" id="7OBD32HIDjX" role="37wK5m">
                          <ref role="3cqZAo" node="7OBD32HIpGe" resolve="modelId" />
                        </node>
                        <node concept="37vLTw" id="1I2lkQXoN4X" role="37wK5m">
                          <ref role="3cqZAo" node="1I2lkQXoLyl" resolve="modelName" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="2saklBFCR_S" role="3cqZAp" />
                <node concept="3cpWs8" id="2saklBFCYle" role="3cqZAp">
                  <node concept="3cpWsn" id="2saklBFCYlf" role="3cpWs9">
                    <property role="TrG5h" value="fordiacReference" />
                    <node concept="3uibUv" id="2saklBFCYlg" role="1tU5fm">
                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                    </node>
                    <node concept="Xl_RD" id="2saklBFDei5" role="33vP2m">
                      <property role="Xl_RC" value="r:fa98296a-e4fa-4f84-b917-968f5f770c4b(iec61499.4diac.stdlib)" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="3jjJUY4epka" role="3cqZAp">
                  <node concept="3clFbS" id="3jjJUY4epkc" role="3clFbx">
                    <node concept="3clFbF" id="3jjJUY4dgXb" role="3cqZAp">
                      <node concept="2OqwBi" id="3jjJUY4eeyq" role="3clFbG">
                        <node concept="0kSF2" id="3jjJUY4e6SL" role="2Oq$k0">
                          <node concept="3uibUv" id="3jjJUY4e6SN" role="0kSFW">
                            <ref role="3uigEE" to="w1kc:~SModelInternal" resolve="SModelInternal" />
                          </node>
                          <node concept="37vLTw" id="3jjJUY4e4MD" role="0kSFX">
                            <ref role="3cqZAo" node="3qzmBf7cl8f" resolve="m" />
                          </node>
                        </node>
                        <node concept="liA8E" id="3jjJUY4egrz" role="2OqNvi">
                          <ref role="37wK5l" to="w1kc:~SModelInternal.addModelImport(org.jetbrains.mps.openapi.model.SModelReference)" resolve="addModelImport" />
                          <node concept="2OqwBi" id="3jjJUY4ehMX" role="37wK5m">
                            <node concept="2YIFZM" id="3jjJUY4ehMY" role="2Oq$k0">
                              <ref role="37wK5l" to="dush:~PersistenceFacade.getInstance()" resolve="getInstance" />
                              <ref role="1Pybhc" to="dush:~PersistenceFacade" resolve="PersistenceFacade" />
                            </node>
                            <node concept="liA8E" id="3jjJUY4ehMZ" role="2OqNvi">
                              <ref role="37wK5l" to="dush:~PersistenceFacade.createModelReference(java.lang.String)" resolve="createModelReference" />
                              <node concept="37vLTw" id="3jjJUY4ehN0" role="37wK5m">
                                <ref role="3cqZAo" node="2saklBFCYlf" resolve="fordiacReference" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3jjJUY4euOA" role="3clFbw">
                    <node concept="37vLTw" id="3jjJUY4esas" role="2Oq$k0">
                      <ref role="3cqZAo" node="4YJrl6J5F5D" resolve="settings" />
                    </node>
                    <node concept="liA8E" id="3jjJUY4exy$" role="2OqNvi">
                      <ref role="37wK5l" node="6p1PwD8t27m" resolve="import4diac" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3jjJUY4eO4V" role="3cqZAp">
                  <node concept="3cpWsn" id="3jjJUY4eO51" role="3cpWs9">
                    <property role="TrG5h" value="references" />
                    <node concept="3uibUv" id="3jjJUY4eO53" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3uibUv" id="3jjJUY4eQKM" role="11_B2D">
                        <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                      </node>
                    </node>
                    <node concept="2YIFZM" id="3jjJUY4eVUv" role="33vP2m">
                      <ref role="37wK5l" to="33ny:~Collections.emptyList()" resolve="emptyList" />
                      <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                      <node concept="3uibUv" id="3jjJUY4eVUw" role="3PaCim">
                        <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3jjJUY4e_hZ" role="3cqZAp" />
                <node concept="3cpWs8" id="1Hry6ntX3Ed" role="3cqZAp">
                  <node concept="3cpWsn" id="1Hry6ntX3Ee" role="3cpWs9">
                    <property role="TrG5h" value="header" />
                    <node concept="3uibUv" id="1Hry6ntX3Ef" role="1tU5fm">
                      <ref role="3uigEE" to="g3l6:~SModelSimpleHeader" resolve="SModelSimpleHeader" />
                    </node>
                    <node concept="2ShNRf" id="6gadshXLdcs" role="33vP2m">
                      <node concept="1pGfFk" id="6gadshXLh$Z" role="2ShVmc">
                        <ref role="37wK5l" to="51vd:7OBD32HKFSn" resolve="IEC61499ModelHeader" />
                        <node concept="37vLTw" id="6gadshXLiyn" role="37wK5m">
                          <ref role="3cqZAo" node="49FXEugGWJk" resolve="ref" />
                        </node>
                        <node concept="37vLTw" id="2saklBFCOOv" role="37wK5m">
                          <ref role="3cqZAo" node="3jjJUY4eO51" resolve="references" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1Hry6ntWWvt" role="3cqZAp" />
                <node concept="3cpWs8" id="1Hry6ntUJnT" role="3cqZAp">
                  <node concept="3cpWsn" id="1Hry6ntUJnZ" role="3cpWs9">
                    <property role="TrG5h" value="files" />
                    <node concept="3uibUv" id="1Hry6ntUJo1" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3uibUv" id="1Hry6ntUM8d" role="11_B2D">
                        <ref role="3uigEE" to="guwi:~File" resolve="File" />
                      </node>
                    </node>
                    <node concept="1rXfSq" id="3e1SYlYqkMx" role="33vP2m">
                      <ref role="37wK5l" node="3e1SYlYmKO9" resolve="getAllFiles" />
                      <node concept="2ShNRf" id="1Hry6ntU8bO" role="37wK5m">
                        <node concept="1pGfFk" id="1Hry6ntUcGH" role="2ShVmc">
                          <ref role="37wK5l" to="guwi:~File.&lt;init&gt;(java.lang.String)" resolve="File" />
                          <node concept="37vLTw" id="1I2lkQXzTI8" role="37wK5m">
                            <ref role="3cqZAo" node="4YJrl6J6rDL" resolve="nxtImportDirectory" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="P5kjNAXKza" role="3cqZAp">
                  <node concept="1rXfSq" id="P5kjNAXKz8" role="3clFbG">
                    <ref role="37wK5l" node="6gadshXDJnF" resolve="readModel" />
                    <node concept="37vLTw" id="P5kjNAXLA4" role="37wK5m">
                      <ref role="3cqZAo" node="1Hry6ntX3Ee" resolve="header" />
                    </node>
                    <node concept="37vLTw" id="P5kjNAXMf2" role="37wK5m">
                      <ref role="3cqZAo" node="1Hry6ntUJnZ" resolve="files" />
                    </node>
                    <node concept="37vLTw" id="P5kjNAXM_W" role="37wK5m">
                      <ref role="3cqZAo" node="3qzmBf7cl8f" resolve="m" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="1Hry6ntXhlT" role="3cqZAp" />
                <node concept="3clFbJ" id="4YJrl6J6Vht" role="3cqZAp">
                  <node concept="3clFbS" id="4YJrl6J6Vhv" role="3clFbx">
                    <node concept="3cpWs6" id="4YJrl6J6HtF" role="3cqZAp">
                      <node concept="2OqwBi" id="4YJrl6J6Nlo" role="3cqZAk">
                        <node concept="2OqwBi" id="4YJrl6J6JG1" role="2Oq$k0">
                          <node concept="37vLTw" id="4YJrl6J6Jnd" role="2Oq$k0">
                            <ref role="3cqZAo" node="3qzmBf7cl8f" resolve="m" />
                          </node>
                          <node concept="2SmgA7" id="4YJrl6J6K$9" role="2OqNvi" />
                        </node>
                        <node concept="liA8E" id="4YJrl6J6PoP" role="2OqNvi">
                          <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                          <node concept="3cmrfG" id="4YJrl6J6Q$f" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eOSWO" id="4YJrl6J6ZZj" role="3clFbw">
                    <node concept="3cmrfG" id="4YJrl6J70GK" role="3uHU7w">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="2OqwBi" id="4YJrl6J6X2X" role="3uHU7B">
                      <node concept="2OqwBi" id="4YJrl6J6Wyh" role="2Oq$k0">
                        <node concept="37vLTw" id="4YJrl6J6Wnq" role="2Oq$k0">
                          <ref role="3cqZAo" node="3qzmBf7cl8f" resolve="m" />
                        </node>
                        <node concept="2SmgA7" id="4YJrl6J6X27" role="2OqNvi" />
                      </node>
                      <node concept="34oBXx" id="4YJrl6J6Z1h" role="2OqNvi" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="4YJrl6J72Hg" role="3cqZAp" />
                <node concept="3cpWs8" id="3qzmBf7cl8j" role="3cqZAp">
                  <node concept="3cpWsn" id="3qzmBf7cl8k" role="3cpWs9">
                    <property role="TrG5h" value="basicFBType" />
                    <node concept="3Tqbb2" id="3qzmBf7cl8l" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="3qzmBf7cl8m" role="33vP2m">
                      <node concept="37vLTw" id="3qzmBf7cl8n" role="2Oq$k0">
                        <ref role="3cqZAo" node="3qzmBf7cl8f" resolve="m" />
                      </node>
                      <node concept="2xF2bX" id="3qzmBf7cl8o" role="2OqNvi">
                        <ref role="I8UWU" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3qzmBf7cl8p" role="3cqZAp">
                  <node concept="37vLTI" id="3qzmBf7cl8q" role="3clFbG">
                    <node concept="2OqwBi" id="3qzmBf7cl8r" role="37vLTJ">
                      <node concept="37vLTw" id="3qzmBf7cl8s" role="2Oq$k0">
                        <ref role="3cqZAo" node="3qzmBf7cl8k" resolve="basicFBType" />
                      </node>
                      <node concept="3TrcHB" id="3qzmBf7cl8t" role="2OqNvi">
                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="3qzmBf7cl8u" role="37vLTx">
                      <property role="Xl_RC" value="EmptyBasicFB" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="3qzmBf7cl8v" role="3cqZAp">
                  <node concept="37vLTw" id="3qzmBf7cl8w" role="3cqZAk">
                    <ref role="3cqZAo" node="3qzmBf7cl8k" resolve="basicFBType" />
                  </node>
                </node>
              </node>
              <node concept="2AHcQZ" id="3qzmBf7cl8x" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="2tJIrI" id="1Hry6ntW7E5" role="jymVt" />
            <node concept="3clFb_" id="6gadshXDJnF" role="jymVt">
              <property role="TrG5h" value="readModel" />
              <node concept="3Tm1VV" id="6gadshXDJnG" role="1B3o_S" />
              <node concept="37vLTG" id="6gadshXDJnK" role="3clF46">
                <property role="TrG5h" value="header" />
                <node concept="3uibUv" id="6gadshXDJnL" role="1tU5fm">
                  <ref role="3uigEE" to="g3l6:~SModelSimpleHeader" resolve="SModelSimpleHeader" />
                </node>
                <node concept="2AHcQZ" id="6gadshXDJnM" role="2AJF6D">
                  <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                </node>
              </node>
              <node concept="37vLTG" id="1Hry6ntV28B" role="3clF46">
                <property role="TrG5h" value="files" />
                <node concept="3uibUv" id="1Hry6ntV5Fg" role="1tU5fm">
                  <ref role="3uigEE" to="33ny:~List" resolve="List" />
                  <node concept="3uibUv" id="1Hry6ntV6pY" role="11_B2D">
                    <ref role="3uigEE" to="guwi:~File" resolve="File" />
                  </node>
                </node>
              </node>
              <node concept="37vLTG" id="P5kjNAXykz" role="3clF46">
                <property role="TrG5h" value="m" />
                <node concept="H_c77" id="P5kjNAXzpD" role="1tU5fm" />
              </node>
              <node concept="3clFbS" id="6gadshXDJnO" role="3clF47">
                <node concept="2Gpval" id="1Hry6ntV93R" role="3cqZAp">
                  <node concept="2GrKxI" id="1Hry6ntV93T" role="2Gsz3X">
                    <property role="TrG5h" value="file" />
                  </node>
                  <node concept="37vLTw" id="1Hry6ntVad8" role="2GsD0m">
                    <ref role="3cqZAo" node="1Hry6ntV28B" resolve="files" />
                  </node>
                  <node concept="3clFbS" id="1Hry6ntV93X" role="2LFqv$">
                    <node concept="3J1_TO" id="1Hry6ntVOAP" role="3cqZAp">
                      <node concept="3uVAMA" id="1Hry6ntVPlp" role="1zxBo5">
                        <node concept="XOnhg" id="1Hry6ntVPlq" role="1zc67B">
                          <property role="TrG5h" value="e" />
                          <node concept="nSUau" id="1Hry6ntVPlr" role="1tU5fm">
                            <node concept="3uibUv" id="1Hry6ntVPHb" role="nSUat">
                              <ref role="3uigEE" to="wyt6:~Exception" resolve="Exception" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbS" id="1Hry6ntVPls" role="1zc67A">
                          <node concept="3cpWs8" id="1bhFETLQuls" role="3cqZAp">
                            <node concept="3cpWsn" id="1bhFETLQult" role="3cpWs9">
                              <property role="TrG5h" value="s" />
                              <node concept="3uibUv" id="1bhFETLQulu" role="1tU5fm">
                                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                              </node>
                              <node concept="Xl_RD" id="1bhFETLQw_g" role="33vP2m">
                                <property role="Xl_RC" value="TEST" />
                              </node>
                            </node>
                          </node>
                          <node concept="1X3_iC" id="6appQ_xPS$8" role="lGtFl">
                            <property role="3V$3am" value="statement" />
                            <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                            <node concept="YS8fn" id="1Hry6ntVPZT" role="8Wnug">
                              <node concept="2ShNRf" id="1Hry6ntVPZU" role="YScLw">
                                <node concept="1pGfFk" id="1Hry6ntVPZV" role="2ShVmc">
                                  <ref role="37wK5l" to="guwi:~IOException.&lt;init&gt;(java.lang.String,java.lang.Throwable)" resolve="IOException" />
                                  <node concept="Xl_RD" id="1Hry6ntVPZW" role="37wK5m">
                                    <property role="Xl_RC" value="cannot read model for nxt project import" />
                                  </node>
                                  <node concept="37vLTw" id="1Hry6ntVPZX" role="37wK5m">
                                    <ref role="3cqZAo" node="1Hry6ntVPlq" resolve="e" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbS" id="1Hry6ntVOAR" role="1zxBo7">
                        <node concept="3cpWs8" id="1Hry6ntVjdw" role="3cqZAp">
                          <node concept="3cpWsn" id="1Hry6ntVjdx" role="3cpWs9">
                            <property role="TrG5h" value="fileExt" />
                            <node concept="3uibUv" id="1Hry6ntVjdy" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                            </node>
                            <node concept="2YIFZM" id="1Hry6ntVjdz" role="33vP2m">
                              <ref role="37wK5l" to="18ew:~FileUtil.getExtension(java.lang.String)" resolve="getExtension" />
                              <ref role="1Pybhc" to="18ew:~FileUtil" resolve="FileUtil" />
                              <node concept="2OqwBi" id="1Hry6ntVlER" role="37wK5m">
                                <node concept="2GrUjf" id="1Hry6ntVlsG" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="1Hry6ntV93T" resolve="file" />
                                </node>
                                <node concept="liA8E" id="1Hry6ntVn1h" role="2OqNvi">
                                  <ref role="37wK5l" to="guwi:~File.getName()" resolve="getName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="1Hry6ntVjdB" role="3cqZAp">
                          <node concept="3cpWsn" id="1Hry6ntVjdC" role="3cpWs9">
                            <property role="TrG5h" value="fqName" />
                            <node concept="3uibUv" id="1Hry6ntVjdD" role="1tU5fm">
                              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                            </node>
                            <node concept="2OqwBi" id="1Hry6ntVjdE" role="33vP2m">
                              <node concept="2YIFZM" id="1Hry6ntVjdF" role="2Oq$k0">
                                <ref role="1Pybhc" to="snbe:~FileUtil" resolve="FileUtil" />
                                <ref role="37wK5l" to="snbe:~FileUtil.getNameWithoutExtension(java.io.File)" resolve="getNameWithoutExtension" />
                                <node concept="2GrUjf" id="1Hry6ntVJBo" role="37wK5m">
                                  <ref role="2Gs0qQ" node="1Hry6ntV93T" resolve="file" />
                                </node>
                              </node>
                              <node concept="liA8E" id="1Hry6ntVjdJ" role="2OqNvi">
                                <ref role="37wK5l" to="wyt6:~String.replace(char,char)" resolve="replace" />
                                <node concept="1Xhbcc" id="1Hry6ntVjdK" role="37wK5m">
                                  <property role="1XhdNS" value="/" />
                                </node>
                                <node concept="1Xhbcc" id="1Hry6ntVjdL" role="37wK5m">
                                  <property role="1XhdNS" value="." />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="3Nx_SuvaJ5F" role="3cqZAp">
                          <node concept="3clFbS" id="3Nx_SuvaJ5H" role="3clFbx">
                            <node concept="3N13vt" id="3Nx_SuvaMJa" role="3cqZAp" />
                          </node>
                          <node concept="3fqX7Q" id="3Nx_SuvaJXr" role="3clFbw">
                            <node concept="1rXfSq" id="3Nx_SuvaKQI" role="3fr31v">
                              <ref role="37wK5l" node="2ByE74kxB9J" resolve="supportedFileExtension" />
                              <node concept="37vLTw" id="3Nx_SuvaLP5" role="37wK5m">
                                <ref role="3cqZAo" node="1Hry6ntVjdx" resolve="fileExt" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="3Nx_SuvaGtg" role="3cqZAp" />
                        <node concept="3cpWs8" id="1Hry6ntVatB" role="3cqZAp">
                          <node concept="3cpWsn" id="1Hry6ntVatE" role="3cpWs9">
                            <property role="TrG5h" value="reader" />
                            <node concept="3uibUv" id="1Hry6ntVatF" role="1tU5fm">
                              <ref role="3uigEE" to="guwi:~BufferedReader" resolve="BufferedReader" />
                            </node>
                            <node concept="2ShNRf" id="1Hry6ntVatG" role="33vP2m">
                              <node concept="1pGfFk" id="1Hry6ntVatH" role="2ShVmc">
                                <ref role="37wK5l" to="guwi:~BufferedReader.&lt;init&gt;(java.io.Reader)" resolve="BufferedReader" />
                                <node concept="2ShNRf" id="1Hry6ntVeS0" role="37wK5m">
                                  <node concept="1pGfFk" id="1Hry6ntVh4A" role="2ShVmc">
                                    <ref role="37wK5l" to="guwi:~FileReader.&lt;init&gt;(java.io.File)" resolve="FileReader" />
                                    <node concept="2GrUjf" id="1Hry6ntVhN4" role="37wK5m">
                                      <ref role="2Gs0qQ" node="1Hry6ntV93T" resolve="file" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3J1_TO" id="1Hry6ntVTOF" role="3cqZAp">
                          <node concept="3clFbS" id="1Hry6ntVTOG" role="1zxBo7">
                            <node concept="3cpWs8" id="1Hry6ntVTOH" role="3cqZAp">
                              <node concept="3cpWsn" id="1Hry6ntVTOI" role="3cpWs9">
                                <property role="TrG5h" value="doc" />
                                <node concept="3uibUv" id="1Hry6ntVTOJ" role="1tU5fm">
                                  <ref role="3uigEE" to="mmaq:~Document" resolve="Document" />
                                </node>
                                <node concept="2YIFZM" id="1Hry6ntVTOK" role="33vP2m">
                                  <ref role="1Pybhc" to="18ew:~JDOMUtil" resolve="JDOMUtil" />
                                  <ref role="37wK5l" to="18ew:~JDOMUtil.loadDocument(java.io.Reader)" resolve="loadDocument" />
                                  <node concept="37vLTw" id="1Hry6ntVTOL" role="37wK5m">
                                    <ref role="3cqZAo" node="1Hry6ntVatE" resolve="reader" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3cpWs8" id="1Hry6ntVTOM" role="3cqZAp">
                              <node concept="3cpWsn" id="1Hry6ntVTON" role="3cpWs9">
                                <property role="TrG5h" value="node" />
                                <node concept="3Tqbb2" id="1Hry6ntVTOO" role="1tU5fm" />
                                <node concept="1rXfSq" id="1Hry6ntVTOP" role="33vP2m">
                                  <ref role="37wK5l" node="2M8kVdCcB2i" resolve="convertRootNode" />
                                  <node concept="2OqwBi" id="1Hry6ntVTOQ" role="37wK5m">
                                    <node concept="37vLTw" id="1Hry6ntVTOR" role="2Oq$k0">
                                      <ref role="3cqZAo" node="6gadshXDJnK" resolve="header" />
                                    </node>
                                    <node concept="liA8E" id="1Hry6ntVTOS" role="2OqNvi">
                                      <ref role="37wK5l" to="g3l6:~SModelSimpleHeader.getModelReference()" resolve="getModelReference" />
                                    </node>
                                  </node>
                                  <node concept="37vLTw" id="1Hry6ntVTOT" role="37wK5m">
                                    <ref role="3cqZAo" node="1Hry6ntVTOI" resolve="doc" />
                                  </node>
                                  <node concept="37vLTw" id="1Hry6ntVTOU" role="37wK5m">
                                    <ref role="3cqZAo" node="1Hry6ntVjdx" resolve="fileExt" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="1Hry6ntVTOV" role="3cqZAp">
                              <node concept="3clFbS" id="1Hry6ntVTOW" role="3clFbx">
                                <node concept="3cpWs8" id="1Hry6ntVTOX" role="3cqZAp">
                                  <node concept="3cpWsn" id="1Hry6ntVTOY" role="3cpWs9">
                                    <property role="TrG5h" value="virtualPackage" />
                                    <node concept="3uibUv" id="1Hry6ntVTOZ" role="1tU5fm">
                                      <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                    </node>
                                    <node concept="2YIFZM" id="1Hry6ntVTP0" role="33vP2m">
                                      <ref role="1Pybhc" to="18ew:~NameUtil" resolve="NameUtil" />
                                      <ref role="37wK5l" to="18ew:~NameUtil.namespaceFromLongName(java.lang.String)" resolve="namespaceFromLongName" />
                                      <node concept="37vLTw" id="1Hry6ntVTP1" role="37wK5m">
                                        <ref role="3cqZAo" node="1Hry6ntVjdC" resolve="fqName" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="1Hry6ntVTP2" role="3cqZAp">
                                  <node concept="3clFbS" id="1Hry6ntVTP3" role="3clFbx">
                                    <node concept="3clFbF" id="1Hry6ntVTP4" role="3cqZAp">
                                      <node concept="37vLTI" id="1Hry6ntVTP5" role="3clFbG">
                                        <node concept="2OqwBi" id="1Hry6ntVTP6" role="37vLTJ">
                                          <node concept="37vLTw" id="1Hry6ntVTP7" role="2Oq$k0">
                                            <ref role="3cqZAo" node="1Hry6ntVTON" resolve="node" />
                                          </node>
                                          <node concept="3TrcHB" id="1Hry6ntVTP8" role="2OqNvi">
                                            <ref role="3TsBF5" to="tpck:hnGE5uv" resolve="virtualPackage" />
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="1Hry6ntVTP9" role="37vLTx">
                                          <ref role="3cqZAo" node="1Hry6ntVTOY" resolve="virtualPackage" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2OqwBi" id="1Hry6ntVTPa" role="3clFbw">
                                    <node concept="37vLTw" id="1Hry6ntVTPb" role="2Oq$k0">
                                      <ref role="3cqZAo" node="1Hry6ntVTOY" resolve="virtualPackage" />
                                    </node>
                                    <node concept="17RvpY" id="1Hry6ntVTPc" role="2OqNvi" />
                                  </node>
                                </node>
                                <node concept="3clFbF" id="P5kjNAX_jb" role="3cqZAp">
                                  <node concept="2OqwBi" id="P5kjNAX_pc" role="3clFbG">
                                    <node concept="37vLTw" id="P5kjNAX_j9" role="2Oq$k0">
                                      <ref role="3cqZAo" node="P5kjNAXykz" resolve="m" />
                                    </node>
                                    <node concept="3BYIHo" id="P5kjNAXA83" role="2OqNvi">
                                      <node concept="37vLTw" id="P5kjNAXATA" role="3BYIHq">
                                        <ref role="3cqZAo" node="1Hry6ntVTON" resolve="node" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3y3z36" id="1Hry6ntVTPi" role="3clFbw">
                                <node concept="10Nm6u" id="1Hry6ntVTPj" role="3uHU7w" />
                                <node concept="37vLTw" id="1Hry6ntVTPk" role="3uHU7B">
                                  <ref role="3cqZAo" node="1Hry6ntVTON" resolve="node" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="1wplmZ" id="1Hry6ntVTPl" role="1zxBo6">
                            <node concept="3clFbS" id="1Hry6ntVTPm" role="1wplMD">
                              <node concept="3clFbF" id="1Hry6ntVTPn" role="3cqZAp">
                                <node concept="2OqwBi" id="1Hry6ntVTPo" role="3clFbG">
                                  <node concept="37vLTw" id="1Hry6ntVTPp" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1Hry6ntVatE" resolve="reader" />
                                  </node>
                                  <node concept="liA8E" id="1Hry6ntVTPq" role="2OqNvi">
                                    <ref role="37wK5l" to="guwi:~BufferedReader.close()" resolve="close" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbH" id="1Hry6ntVTOg" role="3cqZAp" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cqZAl" id="P5kjNAXEpd" role="3clF45" />
            </node>
            <node concept="2tJIrI" id="1Hry6ntUyPy" role="jymVt" />
            <node concept="3clFb_" id="2M8kVdCcB2i" role="jymVt">
              <property role="TrG5h" value="convertRootNode" />
              <node concept="3clFbS" id="2M8kVdCcB2k" role="3clF47">
                <node concept="3cpWs8" id="2M8kVdCcB2l" role="3cqZAp">
                  <node concept="3cpWsn" id="2M8kVdCcB2m" role="3cpWs9">
                    <property role="TrG5h" value="owner" />
                    <node concept="3uibUv" id="2M8kVdCcB2n" role="1tU5fm">
                      <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
                    </node>
                    <node concept="2ShNRf" id="2M8kVdCcB2o" role="33vP2m">
                      <node concept="1pGfFk" id="2g7iZ5Y14JN" role="2ShVmc">
                        <ref role="37wK5l" to="uvki:~PlatformElementsOwner.&lt;init&gt;()" resolve="PlatformElementsOwner" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2M8kVdCcB2q" role="3cqZAp">
                  <node concept="3cpWsn" id="2M8kVdCcB2r" role="3cpWs9">
                    <property role="TrG5h" value="configuration" />
                    <node concept="3uibUv" id="2M8kVdCcB2s" role="1tU5fm">
                      <ref role="3uigEE" to="epky:~Iec61499ConverterConfiguration" resolve="Iec61499ConverterConfiguration" />
                    </node>
                    <node concept="2OqwBi" id="2M8kVdCcB2t" role="33vP2m">
                      <node concept="10M0yZ" id="2g7iZ5Y1w55" role="2Oq$k0">
                        <ref role="3cqZAo" to="r3nk:~NxtImporterConfiguration.FACTORY" resolve="FACTORY" />
                        <ref role="1PxDUh" to="r3nk:~NxtImporterConfiguration" resolve="NxtImporterConfiguration" />
                      </node>
                      <node concept="liA8E" id="2M8kVdCcB2v" role="2OqNvi">
                        <ref role="37wK5l" to="25ix:~PlatformConverter$DefaultConfigurationFactory.createConfiguration(org.fbme.ide.iec61499.repository.PlatformElementsOwner)" resolve="createConfiguration" />
                        <node concept="37vLTw" id="2M8kVdCcB2w" role="37wK5m">
                          <ref role="3cqZAo" node="2M8kVdCcB2m" resolve="owner" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="2M8kVdCcB2x" role="3cqZAp">
                  <node concept="3cpWsn" id="2M8kVdCcB2y" role="3cpWs9">
                    <property role="TrG5h" value="converter" />
                    <node concept="3uibUv" id="2M8kVdCcB2z" role="1tU5fm">
                      <ref role="3uigEE" to="epky:~RootConverter" resolve="RootConverter" />
                    </node>
                    <node concept="2YIFZM" id="2M8kVdCcB2$" role="33vP2m">
                      <ref role="1Pybhc" to="25ix:~PlatformConverter" resolve="PlatformConverter" />
                      <ref role="37wK5l" to="25ix:~PlatformConverter.create(org.fbme.lib.iec61499.parser.Iec61499ConverterConfiguration,org.jetbrains.mps.openapi.model.SModelReference,org.jdom.Document)" resolve="create" />
                      <node concept="37vLTw" id="2M8kVdCcB2_" role="37wK5m">
                        <ref role="3cqZAo" node="2M8kVdCcB2r" resolve="configuration" />
                      </node>
                      <node concept="37vLTw" id="2M8kVdCcB2A" role="37wK5m">
                        <ref role="3cqZAo" node="2M8kVdCcB42" resolve="reference" />
                      </node>
                      <node concept="37vLTw" id="2M8kVdCcB2B" role="37wK5m">
                        <ref role="3cqZAo" node="2M8kVdCcB44" resolve="doc" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3KaCP$" id="2M8kVdCcB2C" role="3cqZAp">
                  <node concept="37vLTw" id="2M8kVdCcB2D" role="3KbGdf">
                    <ref role="3cqZAo" node="2M8kVdCcB46" resolve="fileExtension" />
                  </node>
                  <node concept="3KbdKl" id="2M8kVdCcB2E" role="3KbHQx">
                    <node concept="10M0yZ" id="2M8kVdCcB2F" role="3Kbmr1">
                      <ref role="1PxDUh" to="51vd:537nKv8IlHE" resolve="IEC61499ModelFactory" />
                      <ref role="3cqZAo" to="51vd:49FXEugGn3U" resolve="FBT_FILE_EXT" />
                    </node>
                    <node concept="3clFbS" id="2M8kVdCcB2G" role="3Kbo56">
                      <node concept="3cpWs6" id="2M8kVdCcB2H" role="3cqZAp">
                        <node concept="2OqwBi" id="2M8kVdCcB2I" role="3cqZAk">
                          <node concept="1eOMI4" id="2M8kVdCcB2J" role="2Oq$k0">
                            <node concept="10QFUN" id="2M8kVdCcB2K" role="1eOMHV">
                              <node concept="3uibUv" id="2M8kVdCcB2L" role="10QFUM">
                                <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                              </node>
                              <node concept="2OqwBi" id="2M8kVdCcB2M" role="10QFUP">
                                <node concept="37vLTw" id="2M8kVdCcB2N" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2M8kVdCcB2y" resolve="converter" />
                                </node>
                                <node concept="liA8E" id="2M8kVdCcB2O" role="2OqNvi">
                                  <ref role="37wK5l" to="epky:~RootConverter.convertFBType()" resolve="convertFBType" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="2M8kVdCcB2P" role="2OqNvi">
                            <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3KbdKl" id="2M8kVdCcB2Q" role="3KbHQx">
                    <node concept="10M0yZ" id="2M8kVdCcB2R" role="3Kbmr1">
                      <ref role="3cqZAo" to="51vd:2ByE74k$OOc" resolve="ADP_FILE_EXT" />
                      <ref role="1PxDUh" to="51vd:537nKv8IlHE" resolve="IEC61499ModelFactory" />
                    </node>
                    <node concept="3clFbS" id="2M8kVdCcB2S" role="3Kbo56">
                      <node concept="3cpWs6" id="2M8kVdCcB2T" role="3cqZAp">
                        <node concept="2OqwBi" id="2M8kVdCcB2U" role="3cqZAk">
                          <node concept="1eOMI4" id="2M8kVdCcB2V" role="2Oq$k0">
                            <node concept="10QFUN" id="2M8kVdCcB2W" role="1eOMHV">
                              <node concept="3uibUv" id="2M8kVdCcB2X" role="10QFUM">
                                <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                              </node>
                              <node concept="2OqwBi" id="2M8kVdCcB2Y" role="10QFUP">
                                <node concept="37vLTw" id="2M8kVdCcB2Z" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2M8kVdCcB2y" resolve="converter" />
                                </node>
                                <node concept="liA8E" id="2M8kVdCcB30" role="2OqNvi">
                                  <ref role="37wK5l" to="epky:~RootConverter.convertAdapterType()" resolve="convertAdapterType" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="2M8kVdCcB31" role="2OqNvi">
                            <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3KbdKl" id="2M8kVdCcB32" role="3KbHQx">
                    <node concept="10M0yZ" id="2M8kVdCcB33" role="3Kbmr1">
                      <ref role="3cqZAo" to="51vd:23XkovVqfsb" resolve="SUB_FILE_EXT" />
                      <ref role="1PxDUh" to="51vd:537nKv8IlHE" resolve="IEC61499ModelFactory" />
                    </node>
                    <node concept="3clFbS" id="2M8kVdCcB34" role="3Kbo56">
                      <node concept="3cpWs6" id="2M8kVdCcB35" role="3cqZAp">
                        <node concept="2OqwBi" id="2M8kVdCcB36" role="3cqZAk">
                          <node concept="1eOMI4" id="2M8kVdCcB37" role="2Oq$k0">
                            <node concept="10QFUN" id="2M8kVdCcB38" role="1eOMHV">
                              <node concept="3uibUv" id="2M8kVdCcB39" role="10QFUM">
                                <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                              </node>
                              <node concept="2OqwBi" id="2M8kVdCcB3a" role="10QFUP">
                                <node concept="37vLTw" id="2M8kVdCcB3b" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2M8kVdCcB2y" resolve="converter" />
                                </node>
                                <node concept="liA8E" id="2M8kVdCcB3c" role="2OqNvi">
                                  <ref role="37wK5l" to="epky:~RootConverter.convertSubapplicationType()" resolve="convertSubapplicationType" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="2M8kVdCcB3d" role="2OqNvi">
                            <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3KbdKl" id="2M8kVdCcB3e" role="3KbHQx">
                    <node concept="10M0yZ" id="2M8kVdCcB3f" role="3Kbmr1">
                      <ref role="1PxDUh" to="51vd:537nKv8IlHE" resolve="IEC61499ModelFactory" />
                      <ref role="3cqZAo" to="51vd:23XkovVpUVE" resolve="RES_FILE_EXT" />
                    </node>
                    <node concept="3clFbS" id="2M8kVdCcB3g" role="3Kbo56">
                      <node concept="3cpWs6" id="2M8kVdCcB3h" role="3cqZAp">
                        <node concept="2OqwBi" id="2M8kVdCcB3i" role="3cqZAk">
                          <node concept="1eOMI4" id="2M8kVdCcB3j" role="2Oq$k0">
                            <node concept="10QFUN" id="2M8kVdCcB3k" role="1eOMHV">
                              <node concept="3uibUv" id="2M8kVdCcB3l" role="10QFUM">
                                <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                              </node>
                              <node concept="2OqwBi" id="2M8kVdCcB3m" role="10QFUP">
                                <node concept="37vLTw" id="2M8kVdCcB3n" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2M8kVdCcB2y" resolve="converter" />
                                </node>
                                <node concept="liA8E" id="2M8kVdCcB3o" role="2OqNvi">
                                  <ref role="37wK5l" to="epky:~RootConverter.convertResourceType()" resolve="convertResourceType" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="2M8kVdCcB3p" role="2OqNvi">
                            <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3KbdKl" id="2M8kVdCcB3q" role="3KbHQx">
                    <node concept="10M0yZ" id="2M8kVdCcB3r" role="3Kbmr1">
                      <ref role="3cqZAo" to="51vd:23XkovVpZ6d" resolve="DEV_FILE_EXT" />
                      <ref role="1PxDUh" to="51vd:537nKv8IlHE" resolve="IEC61499ModelFactory" />
                    </node>
                    <node concept="3clFbS" id="2M8kVdCcB3s" role="3Kbo56">
                      <node concept="3cpWs6" id="2M8kVdCcB3t" role="3cqZAp">
                        <node concept="2OqwBi" id="2M8kVdCcB3u" role="3cqZAk">
                          <node concept="1eOMI4" id="2M8kVdCcB3v" role="2Oq$k0">
                            <node concept="10QFUN" id="2M8kVdCcB3w" role="1eOMHV">
                              <node concept="3uibUv" id="2M8kVdCcB3x" role="10QFUM">
                                <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                              </node>
                              <node concept="2OqwBi" id="2M8kVdCcB3y" role="10QFUP">
                                <node concept="37vLTw" id="2M8kVdCcB3z" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2M8kVdCcB2y" resolve="converter" />
                                </node>
                                <node concept="liA8E" id="2M8kVdCcB3$" role="2OqNvi">
                                  <ref role="37wK5l" to="epky:~RootConverter.convertDeviceType()" resolve="convertDeviceType" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="2M8kVdCcB3_" role="2OqNvi">
                            <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3KbdKl" id="2M8kVdCcB3A" role="3KbHQx">
                    <node concept="10M0yZ" id="2M8kVdCcB3B" role="3Kbmr1">
                      <ref role="3cqZAo" to="51vd:23XkovVqbY6" resolve="SEG_FILE_EXT" />
                      <ref role="1PxDUh" to="51vd:537nKv8IlHE" resolve="IEC61499ModelFactory" />
                    </node>
                    <node concept="3clFbS" id="2M8kVdCcB3C" role="3Kbo56">
                      <node concept="3cpWs6" id="2M8kVdCcB3D" role="3cqZAp">
                        <node concept="2OqwBi" id="2M8kVdCcB3E" role="3cqZAk">
                          <node concept="1eOMI4" id="2M8kVdCcB3F" role="2Oq$k0">
                            <node concept="10QFUN" id="2M8kVdCcB3G" role="1eOMHV">
                              <node concept="3uibUv" id="2M8kVdCcB3H" role="10QFUM">
                                <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                              </node>
                              <node concept="2OqwBi" id="2M8kVdCcB3I" role="10QFUP">
                                <node concept="37vLTw" id="2M8kVdCcB3J" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2M8kVdCcB2y" resolve="converter" />
                                </node>
                                <node concept="liA8E" id="2M8kVdCcB3K" role="2OqNvi">
                                  <ref role="37wK5l" to="epky:~RootConverter.convertSegmentType()" resolve="convertSegmentType" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="2M8kVdCcB3L" role="2OqNvi">
                            <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3KbdKl" id="2M8kVdCcB3M" role="3KbHQx">
                    <node concept="10M0yZ" id="2M8kVdCcB3N" role="3Kbmr1">
                      <ref role="3cqZAo" to="51vd:23XkovVpQv5" resolve="SYS_FILE_EXT" />
                      <ref role="1PxDUh" to="51vd:537nKv8IlHE" resolve="IEC61499ModelFactory" />
                    </node>
                    <node concept="3clFbS" id="2M8kVdCcB3O" role="3Kbo56">
                      <node concept="3cpWs6" id="2M8kVdCcB3P" role="3cqZAp">
                        <node concept="2OqwBi" id="2M8kVdCcB3Q" role="3cqZAk">
                          <node concept="1eOMI4" id="2M8kVdCcB3R" role="2Oq$k0">
                            <node concept="10QFUN" id="2M8kVdCcB3S" role="1eOMHV">
                              <node concept="3uibUv" id="2M8kVdCcB3T" role="10QFUM">
                                <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                              </node>
                              <node concept="2OqwBi" id="2M8kVdCcB3U" role="10QFUP">
                                <node concept="37vLTw" id="2M8kVdCcB3V" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2M8kVdCcB2y" resolve="converter" />
                                </node>
                                <node concept="liA8E" id="2M8kVdCcB3W" role="2OqNvi">
                                  <ref role="37wK5l" to="epky:~RootConverter.convertSystemConfiguration()" resolve="convertSystemConfiguration" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="2M8kVdCcB3X" role="2OqNvi">
                            <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="2M8kVdCcB3Y" role="3Kb1Dw">
                    <node concept="3cpWs6" id="2M8kVdCcB3Z" role="3cqZAp">
                      <node concept="10Nm6u" id="2M8kVdCcB40" role="3cqZAk" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tqbb2" id="2M8kVdCcB41" role="3clF45" />
              <node concept="37vLTG" id="2M8kVdCcB42" role="3clF46">
                <property role="TrG5h" value="reference" />
                <node concept="3uibUv" id="2M8kVdCcB43" role="1tU5fm">
                  <ref role="3uigEE" to="mhbf:~SModelReference" resolve="SModelReference" />
                </node>
              </node>
              <node concept="37vLTG" id="2M8kVdCcB44" role="3clF46">
                <property role="TrG5h" value="doc" />
                <node concept="3uibUv" id="2M8kVdCcB45" role="1tU5fm">
                  <ref role="3uigEE" to="mmaq:~Document" resolve="Document" />
                </node>
              </node>
              <node concept="37vLTG" id="2M8kVdCcB46" role="3clF46">
                <property role="TrG5h" value="fileExtension" />
                <node concept="17QB3L" id="2M8kVdCcB47" role="1tU5fm" />
              </node>
              <node concept="3Tm6S6" id="2M8kVdCcCkX" role="1B3o_S" />
            </node>
            <node concept="2tJIrI" id="3Nx_SuvaCqz" role="jymVt" />
            <node concept="3clFb_" id="2ByE74kxB9J" role="jymVt">
              <property role="TrG5h" value="supportedFileExtension" />
              <node concept="3clFbS" id="2ByE74kxB9M" role="3clF47">
                <node concept="3clFbF" id="2ByE74kxETY" role="3cqZAp">
                  <node concept="22lmx$" id="1y1FD3r5CaQ" role="3clFbG">
                    <node concept="17R0WA" id="1y1FD3r5Daw" role="3uHU7w">
                      <node concept="10M0yZ" id="3Nx_SuvaFaa" role="3uHU7w">
                        <ref role="1PxDUh" to="51vd:537nKv8IlHE" resolve="IEC61499ModelFactory" />
                        <ref role="3cqZAo" to="51vd:23XkovVqbY6" resolve="SEG_FILE_EXT" />
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
                                <node concept="10M0yZ" id="3Nx_SuvaFgR" role="3uHU7w">
                                  <ref role="1PxDUh" to="51vd:537nKv8IlHE" resolve="IEC61499ModelFactory" />
                                  <ref role="3cqZAo" to="51vd:49FXEugGn3U" resolve="FBT_FILE_EXT" />
                                </node>
                              </node>
                              <node concept="17R0WA" id="2ByE74kxGxO" role="3uHU7w">
                                <node concept="37vLTw" id="2ByE74kxGxP" role="3uHU7B">
                                  <ref role="3cqZAo" node="2ByE74kxCXX" resolve="fileExt" />
                                </node>
                                <node concept="10M0yZ" id="3Nx_SuvaFh5" role="3uHU7w">
                                  <ref role="1PxDUh" to="51vd:537nKv8IlHE" resolve="IEC61499ModelFactory" />
                                  <ref role="3cqZAo" to="51vd:2ByE74k$OOc" resolve="ADP_FILE_EXT" />
                                </node>
                              </node>
                            </node>
                            <node concept="17R0WA" id="23XkovVqNsf" role="3uHU7w">
                              <node concept="37vLTw" id="23XkovVqMYg" role="3uHU7B">
                                <ref role="3cqZAo" node="2ByE74kxCXX" resolve="fileExt" />
                              </node>
                              <node concept="10M0yZ" id="3Nx_SuvaFfK" role="3uHU7w">
                                <ref role="1PxDUh" to="51vd:537nKv8IlHE" resolve="IEC61499ModelFactory" />
                                <ref role="3cqZAo" to="51vd:23XkovVqfsb" resolve="SUB_FILE_EXT" />
                              </node>
                            </node>
                          </node>
                          <node concept="17R0WA" id="23XkovVqUjr" role="3uHU7w">
                            <node concept="37vLTw" id="23XkovVqTVn" role="3uHU7B">
                              <ref role="3cqZAo" node="2ByE74kxCXX" resolve="fileExt" />
                            </node>
                            <node concept="10M0yZ" id="3Nx_SuvaFeT" role="3uHU7w">
                              <ref role="1PxDUh" to="51vd:537nKv8IlHE" resolve="IEC61499ModelFactory" />
                              <ref role="3cqZAo" to="51vd:23XkovVpUVE" resolve="RES_FILE_EXT" />
                            </node>
                          </node>
                        </node>
                        <node concept="17R0WA" id="23XkovVqVGu" role="3uHU7w">
                          <node concept="37vLTw" id="23XkovVqVGv" role="3uHU7B">
                            <ref role="3cqZAo" node="2ByE74kxCXX" resolve="fileExt" />
                          </node>
                          <node concept="10M0yZ" id="3Nx_SuvaFeu" role="3uHU7w">
                            <ref role="1PxDUh" to="51vd:537nKv8IlHE" resolve="IEC61499ModelFactory" />
                            <ref role="3cqZAo" to="51vd:23XkovVpZ6d" resolve="DEV_FILE_EXT" />
                          </node>
                        </node>
                      </node>
                      <node concept="17R0WA" id="23XkovVqXZu" role="3uHU7w">
                        <node concept="37vLTw" id="23XkovVqXZv" role="3uHU7B">
                          <ref role="3cqZAo" node="2ByE74kxCXX" resolve="fileExt" />
                        </node>
                        <node concept="10M0yZ" id="3Nx_SuvaFd4" role="3uHU7w">
                          <ref role="1PxDUh" to="51vd:537nKv8IlHE" resolve="IEC61499ModelFactory" />
                          <ref role="3cqZAo" to="51vd:23XkovVpQv5" resolve="SYS_FILE_EXT" />
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
            <node concept="2tJIrI" id="3e1SYlYmzrt" role="jymVt" />
            <node concept="3clFb_" id="3e1SYlYmKO9" role="jymVt">
              <property role="TrG5h" value="getAllFiles" />
              <node concept="3clFbS" id="3e1SYlYmKOc" role="3clF47">
                <node concept="3cpWs8" id="3e1SYlYmU3S" role="3cqZAp">
                  <node concept="3cpWsn" id="3e1SYlYmU3T" role="3cpWs9">
                    <property role="TrG5h" value="files" />
                    <node concept="3uibUv" id="3e1SYlYmU3Q" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3uibUv" id="3e1SYlYmVQb" role="11_B2D">
                        <ref role="3uigEE" to="guwi:~File" resolve="File" />
                      </node>
                    </node>
                    <node concept="2ShNRf" id="3e1SYlYmZLY" role="33vP2m">
                      <node concept="1pGfFk" id="3e1SYlYn$Ms" role="2ShVmc">
                        <property role="373rjd" value="true" />
                        <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3e1SYlYnRrd" role="3cqZAp" />
                <node concept="1DcWWT" id="3e1SYlYpma7" role="3cqZAp">
                  <node concept="3clFbS" id="3e1SYlYpma9" role="2LFqv$">
                    <node concept="3clFbJ" id="3e1SYlYpzLG" role="3cqZAp">
                      <node concept="3clFbS" id="3e1SYlYpzLI" role="3clFbx">
                        <node concept="3clFbF" id="3e1SYlYpJBD" role="3cqZAp">
                          <node concept="2OqwBi" id="3e1SYlYpLMq" role="3clFbG">
                            <node concept="37vLTw" id="3e1SYlYpJBB" role="2Oq$k0">
                              <ref role="3cqZAo" node="3e1SYlYmU3T" resolve="files" />
                            </node>
                            <node concept="liA8E" id="3e1SYlYpOpu" role="2OqNvi">
                              <ref role="37wK5l" to="33ny:~List.addAll(java.util.Collection)" resolve="addAll" />
                              <node concept="1rXfSq" id="3e1SYlYpQNF" role="37wK5m">
                                <ref role="37wK5l" node="3e1SYlYmKO9" resolve="getAllFiles" />
                                <node concept="37vLTw" id="3e1SYlYpTJc" role="37wK5m">
                                  <ref role="3cqZAo" node="3e1SYlYpmaa" resolve="fileEntry" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="3e1SYlYpFyL" role="3clFbw">
                        <node concept="37vLTw" id="3e1SYlYpEo3" role="2Oq$k0">
                          <ref role="3cqZAo" node="3e1SYlYpmaa" resolve="fileEntry" />
                        </node>
                        <node concept="liA8E" id="3e1SYlYpHmg" role="2OqNvi">
                          <ref role="37wK5l" to="guwi:~File.isDirectory()" resolve="isDirectory" />
                        </node>
                      </node>
                      <node concept="3eNFk2" id="4ZhGbYpxGJh" role="3eNLev">
                        <node concept="3clFbS" id="4ZhGbYpxGJi" role="3eOfB_">
                          <node concept="3clFbF" id="4ZhGbYpxGJj" role="3cqZAp">
                            <node concept="2OqwBi" id="4ZhGbYpxGJk" role="3clFbG">
                              <node concept="37vLTw" id="4ZhGbYpxGJl" role="2Oq$k0">
                                <ref role="3cqZAo" node="3e1SYlYmU3T" resolve="files" />
                              </node>
                              <node concept="liA8E" id="4ZhGbYpxGJm" role="2OqNvi">
                                <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                                <node concept="37vLTw" id="4ZhGbYpxGJn" role="37wK5m">
                                  <ref role="3cqZAo" node="3e1SYlYpmaa" resolve="fileEntry" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="1rXfSq" id="4ZhGbYpxKaE" role="3eO9$A">
                          <ref role="37wK5l" node="2ByE74kxB9J" resolve="supportedFileExtension" />
                          <node concept="2YIFZM" id="4ZhGbYpxOYr" role="37wK5m">
                            <ref role="37wK5l" to="18ew:~FileUtil.getExtension(java.lang.String)" resolve="getExtension" />
                            <ref role="1Pybhc" to="18ew:~FileUtil" resolve="FileUtil" />
                            <node concept="2OqwBi" id="4ZhGbYpxVTh" role="37wK5m">
                              <node concept="37vLTw" id="4ZhGbYpxUFP" role="2Oq$k0">
                                <ref role="3cqZAo" node="3e1SYlYpmaa" resolve="fileEntry" />
                              </node>
                              <node concept="liA8E" id="4ZhGbYpxXGA" role="2OqNvi">
                                <ref role="37wK5l" to="guwi:~File.getName()" resolve="getName" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWsn" id="3e1SYlYpmaa" role="1Duv9x">
                    <property role="TrG5h" value="fileEntry" />
                    <node concept="3uibUv" id="3e1SYlYpoim" role="1tU5fm">
                      <ref role="3uigEE" to="guwi:~File" resolve="File" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="3e1SYlYpvCe" role="1DdaDG">
                    <node concept="37vLTw" id="3e1SYlYpuxI" role="2Oq$k0">
                      <ref role="3cqZAo" node="3e1SYlYmOam" resolve="folder" />
                    </node>
                    <node concept="liA8E" id="3e1SYlYpxtM" role="2OqNvi">
                      <ref role="37wK5l" to="guwi:~File.listFiles()" resolve="listFiles" />
                    </node>
                  </node>
                </node>
                <node concept="3clFbH" id="3e1SYlYnBBR" role="3cqZAp" />
                <node concept="3cpWs6" id="3e1SYlYq8lF" role="3cqZAp">
                  <node concept="37vLTw" id="3e1SYlYqc9d" role="3cqZAk">
                    <ref role="3cqZAo" node="3e1SYlYmU3T" resolve="files" />
                  </node>
                </node>
              </node>
              <node concept="3Tm6S6" id="3e1SYlYmC5l" role="1B3o_S" />
              <node concept="3uibUv" id="3e1SYlYmJho" role="3clF45">
                <ref role="3uigEE" to="33ny:~List" resolve="List" />
                <node concept="3uibUv" id="3e1SYlYmKFQ" role="11_B2D">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
              </node>
              <node concept="37vLTG" id="3e1SYlYmOam" role="3clF46">
                <property role="TrG5h" value="folder" />
                <node concept="3uibUv" id="3e1SYlYp5MF" role="1tU5fm">
                  <ref role="3uigEE" to="guwi:~File" resolve="File" />
                </node>
              </node>
            </node>
            <node concept="2ShNRf" id="7EJeuytUpJw" role="37wK5m">
              <node concept="1pGfFk" id="7EJeuytUsNT" role="2ShVmc">
                <ref role="37wK5l" node="3qzmBf7ctLB" resolve="NxtImportSystemConfigSolutionSettings" />
                <node concept="Xl_RD" id="3qzmBf7cl8y" role="37wK5m">
                  <property role="Xl_RC" value="NewModel" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1Hry6ntWcga" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="3qzmBf7ctGt">
    <property role="TrG5h" value="NxtImportSystemConfigSolutionSettings" />
    <node concept="2tJIrI" id="3qzmBf7ctMX" role="jymVt" />
    <node concept="312cEg" id="3qzmBf7cyo4" role="jymVt">
      <property role="TrG5h" value="nxtImportLocation" />
      <node concept="3Tm6S6" id="3qzmBf7cu8p" role="1B3o_S" />
      <node concept="3uibUv" id="3qzmBf7cynw" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
      </node>
    </node>
    <node concept="312cEg" id="47pmLUMAjxe" role="jymVt">
      <property role="TrG5h" value="import4diacBlocks" />
      <node concept="3Tm6S6" id="47pmLUMAemS" role="1B3o_S" />
      <node concept="3uibUv" id="47pmLUMAjhl" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JCheckBox" resolve="JCheckBox" />
      </node>
    </node>
    <node concept="2tJIrI" id="47pmLUMAciQ" role="jymVt" />
    <node concept="312cEg" id="3qzmBf7czr9" role="jymVt">
      <property role="TrG5h" value="nxtImportLocationChangedByUser" />
      <node concept="3Tmbuc" id="3qzmBf7cyFL" role="1B3o_S" />
      <node concept="10P_77" id="3qzmBf7czq_" role="1tU5fm" />
      <node concept="3clFbT" id="3qzmBf7czHf" role="33vP2m" />
    </node>
    <node concept="312cEg" id="3qzmBf7c$93" role="jymVt">
      <property role="TrG5h" value="nxtImportLocationDocListenerEnabled" />
      <node concept="3Tmbuc" id="3qzmBf7czZ_" role="1B3o_S" />
      <node concept="10P_77" id="3qzmBf7c$8e" role="1tU5fm" />
      <node concept="3clFbT" id="3qzmBf7c$rd" role="33vP2m">
        <property role="3clFbU" value="true" />
      </node>
    </node>
    <node concept="2tJIrI" id="3qzmBf7ctNU" role="jymVt" />
    <node concept="3Tm1VV" id="3qzmBf7ctGu" role="1B3o_S" />
    <node concept="3uibUv" id="3qzmBf7ctKp" role="1zkMxy">
      <ref role="3uigEE" to="vdx1:7OBD32IaLo3" resolve="SystemConfigSolutionSettings" />
    </node>
    <node concept="3clFbW" id="3qzmBf7ctLB" role="jymVt">
      <node concept="3cqZAl" id="3qzmBf7ctLC" role="3clF45" />
      <node concept="3Tm1VV" id="3qzmBf7ctLD" role="1B3o_S" />
      <node concept="3clFbS" id="3qzmBf7ctLE" role="3clF47">
        <node concept="XkiVB" id="3qzmBf7ctLY" role="3cqZAp">
          <ref role="37wK5l" to="vdx1:7OBD32IaLWR" resolve="SystemConfigSolutionSettings" />
          <node concept="37vLTw" id="3qzmBf7ctLZ" role="37wK5m">
            <ref role="3cqZAo" node="3qzmBf7ctLW" resolve="defaultName" />
          </node>
        </node>
        <node concept="3clFbH" id="3qzmBf7cPZ8" role="3cqZAp" />
        <node concept="3clFbF" id="3qzmBf7cQgw" role="3cqZAp">
          <node concept="2OqwBi" id="3qzmBf7cQIQ" role="3clFbG">
            <node concept="Xjq3P" id="3qzmBf7cQgu" role="2Oq$k0" />
            <node concept="liA8E" id="3qzmBf7cR$t" role="2OqNvi">
              <ref role="37wK5l" to="lz1h:1Oe4ReYikqP" resolve="add" />
              <node concept="2ShNRf" id="3qzmBf7cRZj" role="37wK5m">
                <node concept="1pGfFk" id="3qzmBf7cZ82" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="3qzmBf7cZCJ" role="37wK5m">
                    <property role="Xl_RC" value="Nxt import location:" />
                  </node>
                </node>
              </node>
              <node concept="3cmrfG" id="3qzmBf7d13H" role="37wK5m">
                <property role="3cmrfH" value="4" />
              </node>
              <node concept="3b6qkQ" id="3qzmBf7d1Rx" role="37wK5m">
                <property role="$nhwW" value="0.0" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3qzmBf7d2ht" role="3cqZAp" />
        <node concept="3clFbF" id="3qzmBf7d3xr" role="3cqZAp">
          <node concept="37vLTI" id="3qzmBf7d6if" role="3clFbG">
            <node concept="2ShNRf" id="3qzmBf7d6Yk" role="37vLTx">
              <node concept="1pGfFk" id="3qzmBf7dalm" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JTextField.&lt;init&gt;()" resolve="JTextField" />
              </node>
            </node>
            <node concept="37vLTw" id="3qzmBf7d3xp" role="37vLTJ">
              <ref role="3cqZAo" node="3qzmBf7cyo4" resolve="nxtImportLocation" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3qzmBf7dbbZ" role="3cqZAp">
          <node concept="2OqwBi" id="3qzmBf7dc4c" role="3clFbG">
            <node concept="37vLTw" id="3qzmBf7dbbX" role="2Oq$k0">
              <ref role="3cqZAo" node="3qzmBf7cyo4" resolve="nxtImportLocation" />
            </node>
            <node concept="liA8E" id="3qzmBf7ddb3" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Component.setName(java.lang.String)" resolve="setName" />
              <node concept="Xl_RD" id="3qzmBf7ddP7" role="37wK5m">
                <property role="Xl_RC" value="Path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g46k2sbZ5s" role="3cqZAp">
          <node concept="2OqwBi" id="g46k2sbZ5t" role="3clFbG">
            <node concept="2OqwBi" id="g46k2sbZ5u" role="2Oq$k0">
              <node concept="37vLTw" id="3qzmBf7jhlH" role="2Oq$k0">
                <ref role="3cqZAo" node="3qzmBf7cyo4" resolve="nxtImportLocation" />
              </node>
              <node concept="liA8E" id="g46k2sbZ5w" role="2OqNvi">
                <ref role="37wK5l" to="r791:~JTextComponent.getDocument()" resolve="getDocument" />
              </node>
            </node>
            <node concept="liA8E" id="g46k2sbZ5x" role="2OqNvi">
              <ref role="37wK5l" to="r791:~Document.addDocumentListener(javax.swing.event.DocumentListener)" resolve="addDocumentListener" />
              <node concept="2ShNRf" id="g46k2sbZ5y" role="37wK5m">
                <node concept="YeOm9" id="g46k2sbZ5z" role="2ShVmc">
                  <node concept="1Y3b0j" id="g46k2sbZ5$" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="lzb2:~DocumentAdapter.&lt;init&gt;()" resolve="DocumentAdapter" />
                    <ref role="1Y3XeK" to="lzb2:~DocumentAdapter" resolve="DocumentAdapter" />
                    <node concept="3Tm1VV" id="g46k2sbZ5_" role="1B3o_S" />
                    <node concept="3clFb_" id="g46k2sbZ5A" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="textChanged" />
                      <property role="DiZV1" value="false" />
                      <node concept="3Tmbuc" id="g46k2sbZ5B" role="1B3o_S" />
                      <node concept="3cqZAl" id="g46k2sbZ5C" role="3clF45" />
                      <node concept="37vLTG" id="g46k2sbZ5D" role="3clF46">
                        <property role="TrG5h" value="p0" />
                        <node concept="3uibUv" id="g46k2sbZ5E" role="1tU5fm">
                          <ref role="3uigEE" to="gsia:~DocumentEvent" resolve="DocumentEvent" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="g46k2sbZ5F" role="3clF47">
                        <node concept="3clFbJ" id="g46k2sbZ5G" role="3cqZAp">
                          <node concept="37vLTw" id="3qzmBf7jikT" role="3clFbw">
                            <ref role="3cqZAo" node="3qzmBf7c$93" resolve="nxtImportLocationDocListenerEnabled" />
                          </node>
                          <node concept="3clFbS" id="g46k2sbZ5I" role="3clFbx">
                            <node concept="3clFbF" id="g46k2sbZ5J" role="3cqZAp">
                              <node concept="37vLTI" id="g46k2sbZ5K" role="3clFbG">
                                <node concept="37vLTw" id="3qzmBf7jjjH" role="37vLTJ">
                                  <ref role="3cqZAo" node="3qzmBf7czr9" resolve="nxtImportLocationChangedByUser" />
                                </node>
                                <node concept="3clFbT" id="g46k2sbZ5M" role="37vLTx">
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
        <node concept="3cpWs8" id="g46k2sbZ5N" role="3cqZAp">
          <node concept="3cpWsn" id="g46k2sbZ5O" role="3cpWs9">
            <property role="TrG5h" value="descriptor" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="g46k2sbZ5P" role="1tU5fm">
              <ref role="3uigEE" to="3fkn:~FileChooserDescriptor" resolve="FileChooserDescriptor" />
            </node>
            <node concept="2YIFZM" id="g46k2sbZ5Q" role="33vP2m">
              <ref role="1Pybhc" to="3fkn:~FileChooserDescriptorFactory" resolve="FileChooserDescriptorFactory" />
              <ref role="37wK5l" to="3fkn:~FileChooserDescriptorFactory.createSingleFolderDescriptor()" resolve="createSingleFolderDescriptor" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g46k2sbZ5R" role="3cqZAp">
          <node concept="2YIFZM" id="g46k2sbZ5S" role="3clFbG">
            <ref role="1Pybhc" to="lzb2:~InsertPathAction" resolve="InsertPathAction" />
            <ref role="37wK5l" to="lzb2:~InsertPathAction.addTo(javax.swing.text.JTextComponent,com.intellij.openapi.fileChooser.FileChooserDescriptor)" resolve="addTo" />
            <node concept="37vLTw" id="3qzmBf7jk6e" role="37wK5m">
              <ref role="3cqZAo" node="3qzmBf7cyo4" resolve="nxtImportLocation" />
            </node>
            <node concept="37vLTw" id="g46k2sbZ5U" role="37wK5m">
              <ref role="3cqZAo" node="g46k2sbZ5O" resolve="descriptor" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="g46k2sbZ5V" role="3cqZAp">
          <node concept="3cpWsn" id="g46k2sbZ5W" role="3cpWs9">
            <property role="TrG5h" value="listener" />
            <node concept="3uibUv" id="g46k2sbZ5X" role="1tU5fm">
              <ref role="3uigEE" to="jmi8:~BrowseFilesListener" resolve="BrowseFilesListener" />
            </node>
            <node concept="2ShNRf" id="g46k2sbZ5Y" role="33vP2m">
              <node concept="1pGfFk" id="g46k2sbZ5Z" role="2ShVmc">
                <ref role="37wK5l" to="jmi8:~BrowseFilesListener.&lt;init&gt;(javax.swing.JTextField,java.lang.String,java.lang.String,com.intellij.openapi.fileChooser.FileChooserDescriptor)" resolve="BrowseFilesListener" />
                <node concept="37vLTw" id="3qzmBf7jkLl" role="37wK5m">
                  <ref role="3cqZAo" node="3qzmBf7cyo4" resolve="nxtImportLocation" />
                </node>
                <node concept="Xl_RD" id="4YP8cog1Uey" role="37wK5m">
                  <property role="Xl_RC" value="Choose Module File Parent Directory" />
                </node>
                <node concept="Xl_RD" id="g46k2sbZ62" role="37wK5m" />
                <node concept="37vLTw" id="g46k2sbZ63" role="37wK5m">
                  <ref role="3cqZAo" node="g46k2sbZ5O" resolve="descriptor" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="g46k2sbZ64" role="3cqZAp">
          <node concept="3cpWsn" id="g46k2sbZ65" role="3cpWs9">
            <property role="TrG5h" value="fieldPanel" />
            <node concept="2ShNRf" id="g46k2sbZ66" role="33vP2m">
              <node concept="1pGfFk" id="g46k2sbZ67" role="2ShVmc">
                <ref role="37wK5l" to="lzb2:~FieldPanel.&lt;init&gt;(javax.swing.JTextField,java.lang.String,java.lang.String,java.awt.event.ActionListener,java.lang.Runnable)" resolve="FieldPanel" />
                <node concept="37vLTw" id="3qzmBf7jlh7" role="37wK5m">
                  <ref role="3cqZAo" node="3qzmBf7cyo4" resolve="nxtImportLocation" />
                </node>
                <node concept="10Nm6u" id="1SRBCJDzR0k" role="37wK5m" />
                <node concept="10Nm6u" id="g46k2sbZ6a" role="37wK5m" />
                <node concept="37vLTw" id="g46k2sbZ6b" role="37wK5m">
                  <ref role="3cqZAo" node="g46k2sbZ5W" resolve="listener" />
                </node>
                <node concept="2YIFZM" id="g46k2sbZ6c" role="37wK5m">
                  <ref role="1Pybhc" to="zn9m:~EmptyRunnable" resolve="EmptyRunnable" />
                  <ref role="37wK5l" to="zn9m:~EmptyRunnable.getInstance()" resolve="getInstance" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="g46k2sbZ6d" role="1tU5fm">
              <ref role="3uigEE" to="lzb2:~FieldPanel" resolve="FieldPanel" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g46k2sbZ6e" role="3cqZAp">
          <node concept="2OqwBi" id="g46k2sbZ6f" role="3clFbG">
            <node concept="liA8E" id="g46k2sbZ6g" role="2OqNvi">
              <ref role="37wK5l" to="3fkn:~FileChooserFactory.installFileCompletion(javax.swing.JTextField,com.intellij.openapi.fileChooser.FileChooserDescriptor,boolean,com.intellij.openapi.Disposable)" resolve="installFileCompletion" />
              <node concept="2OqwBi" id="g46k2sbZ6h" role="37wK5m">
                <node concept="liA8E" id="g46k2sbZ6i" role="2OqNvi">
                  <ref role="37wK5l" to="lzb2:~FieldPanel.getTextField()" resolve="getTextField" />
                </node>
                <node concept="37vLTw" id="g46k2sbZ6j" role="2Oq$k0">
                  <ref role="3cqZAo" node="g46k2sbZ65" resolve="fieldPanel" />
                </node>
              </node>
              <node concept="37vLTw" id="g46k2sbZ6k" role="37wK5m">
                <ref role="3cqZAo" node="g46k2sbZ5O" resolve="descriptor" />
              </node>
              <node concept="3clFbT" id="g46k2sbZ6l" role="37wK5m" />
              <node concept="10Nm6u" id="g46k2sbZ6m" role="37wK5m" />
            </node>
            <node concept="2YIFZM" id="g46k2sbZ6n" role="2Oq$k0">
              <ref role="37wK5l" to="3fkn:~FileChooserFactory.getInstance()" resolve="getInstance" />
              <ref role="1Pybhc" to="3fkn:~FileChooserFactory" resolve="FileChooserFactory" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="g46k2sbZ6o" role="3cqZAp">
          <node concept="2OqwBi" id="g46k2sbZ6p" role="3clFbG">
            <node concept="Xjq3P" id="g46k2sbZ6q" role="2Oq$k0" />
            <node concept="liA8E" id="g46k2sbZ6r" role="2OqNvi">
              <ref role="37wK5l" to="lz1h:1Oe4ReYiDaW" resolve="add" />
              <node concept="37vLTw" id="g46k2sbZ6s" role="37wK5m">
                <ref role="3cqZAo" node="g46k2sbZ65" resolve="fieldPanel" />
              </node>
              <node concept="3cmrfG" id="1Oe4ReYjsVG" role="37wK5m">
                <property role="3cmrfH" value="5" />
              </node>
              <node concept="3b6qkQ" id="1Oe4ReYjtM1" role="37wK5m">
                <property role="$nhwW" value="0.0" />
              </node>
              <node concept="2YIFZM" id="XraZFz6MSf" role="37wK5m">
                <ref role="37wK5l" to="g1qu:~JBUI.insetsBottom(int)" resolve="insetsBottom" />
                <ref role="1Pybhc" to="g1qu:~JBUI" resolve="JBUI" />
                <node concept="3cmrfG" id="XraZFz6N$v" role="37wK5m">
                  <property role="3cmrfH" value="5" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="47pmLUMAqGW" role="3cqZAp" />
        <node concept="3clFbF" id="47pmLUMAtSz" role="3cqZAp">
          <node concept="37vLTI" id="47pmLUMA$yy" role="3clFbG">
            <node concept="37vLTw" id="47pmLUMAtSx" role="37vLTJ">
              <ref role="3cqZAo" node="47pmLUMAjxe" resolve="import4diacBlocks" />
            </node>
            <node concept="2ShNRf" id="47pmLUM$J9g" role="37vLTx">
              <node concept="1pGfFk" id="47pmLUM_jww" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="dxuu:~JCheckBox.&lt;init&gt;(java.lang.String,boolean)" resolve="JCheckBox" />
                <node concept="Xl_RD" id="47pmLUM_mzR" role="37wK5m">
                  <property role="Xl_RC" value="Import 4diac model" />
                </node>
                <node concept="3clFbT" id="47pmLUM_u3n" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="47pmLUM$COw" role="3cqZAp">
          <node concept="2OqwBi" id="47pmLUM$DKR" role="3clFbG">
            <node concept="Xjq3P" id="47pmLUM$COu" role="2Oq$k0" />
            <node concept="liA8E" id="47pmLUM$Hp2" role="2OqNvi">
              <ref role="37wK5l" to="lz1h:1Oe4ReYikqP" resolve="add" />
              <node concept="37vLTw" id="47pmLUM_SbF" role="37wK5m">
                <ref role="3cqZAo" node="47pmLUMAjxe" resolve="import4diacBlocks" />
              </node>
              <node concept="3cmrfG" id="47pmLUM_VrF" role="37wK5m">
                <property role="3cmrfH" value="6" />
              </node>
              <node concept="3b6qkQ" id="47pmLUM_$mR" role="37wK5m">
                <property role="$nhwW" value="0.0" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3qzmBf7ctLW" role="3clF46">
        <property role="TrG5h" value="defaultName" />
        <node concept="17QB3L" id="3qzmBf7ctLX" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="3qzmBf7c$rS" role="jymVt" />
    <node concept="3clFb_" id="3qzmBf7c$JN" role="jymVt">
      <property role="TrG5h" value="getNxtImportLocation" />
      <node concept="3clFbS" id="3qzmBf7c$JQ" role="3clF47">
        <node concept="3cpWs6" id="3qzmBf7c_2b" role="3cqZAp">
          <node concept="2OqwBi" id="3qzmBf7cBHU" role="3cqZAk">
            <node concept="2OqwBi" id="3qzmBf7cAvF" role="2Oq$k0">
              <node concept="37vLTw" id="3qzmBf7c_$h" role="2Oq$k0">
                <ref role="3cqZAo" node="3qzmBf7cyo4" resolve="nxtImportLocation" />
              </node>
              <node concept="liA8E" id="3qzmBf7cBqB" role="2OqNvi">
                <ref role="37wK5l" to="r791:~JTextComponent.getText()" resolve="getText" />
              </node>
            </node>
            <node concept="liA8E" id="3qzmBf7cCcU" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.trim()" resolve="trim" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3qzmBf7c$_I" role="1B3o_S" />
      <node concept="17QB3L" id="3qzmBf7c$Jf" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="3qzmBf7cCnz" role="jymVt" />
    <node concept="3clFb_" id="3qzmBf7cCTF" role="jymVt">
      <property role="TrG5h" value="setNxtImportLocation" />
      <node concept="3clFbS" id="3qzmBf7cCTI" role="3clF47">
        <node concept="3clFbF" id="3qzmBf7cDPR" role="3cqZAp">
          <node concept="37vLTI" id="3qzmBf7cEmT" role="3clFbG">
            <node concept="3clFbT" id="3qzmBf7cECV" role="37vLTx" />
            <node concept="37vLTw" id="3qzmBf7cDPQ" role="37vLTJ">
              <ref role="3cqZAo" node="3qzmBf7c$93" resolve="nxtImportLocationDocListenerEnabled" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3qzmBf7cFd9" role="3cqZAp">
          <node concept="2OqwBi" id="3qzmBf7cFZy" role="3clFbG">
            <node concept="37vLTw" id="3qzmBf7cFd7" role="2Oq$k0">
              <ref role="3cqZAo" node="3qzmBf7cyo4" resolve="nxtImportLocation" />
            </node>
            <node concept="liA8E" id="3qzmBf7cGQb" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String)" resolve="setText" />
              <node concept="37vLTw" id="3qzmBf7cHB9" role="37wK5m">
                <ref role="3cqZAo" node="3qzmBf7cD80" resolve="importProjectPath" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3qzmBf7cId$" role="3cqZAp">
          <node concept="37vLTI" id="3qzmBf7cIA1" role="3clFbG">
            <node concept="3clFbT" id="3qzmBf7cIRF" role="37vLTx">
              <property role="3clFbU" value="true" />
            </node>
            <node concept="37vLTw" id="3qzmBf7cIdy" role="37vLTJ">
              <ref role="3cqZAo" node="3qzmBf7c$93" resolve="nxtImportLocationDocListenerEnabled" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3qzmBf7cCA7" role="1B3o_S" />
      <node concept="3cqZAl" id="3qzmBf7cCPf" role="3clF45" />
      <node concept="37vLTG" id="3qzmBf7cD80" role="3clF46">
        <property role="TrG5h" value="importProjectPath" />
        <node concept="17QB3L" id="3qzmBf7cD7Z" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6p1PwD8sLqS" role="jymVt" />
    <node concept="3clFb_" id="6p1PwD8t27m" role="jymVt">
      <property role="TrG5h" value="import4diac" />
      <node concept="3clFbS" id="6p1PwD8t27p" role="3clF47">
        <node concept="3cpWs6" id="6p1PwD8t6lk" role="3cqZAp">
          <node concept="2OqwBi" id="2saklBFBP6p" role="3cqZAk">
            <node concept="37vLTw" id="6p1PwD8t9uY" role="2Oq$k0">
              <ref role="3cqZAo" node="47pmLUMAjxe" resolve="import4diacBlocks" />
            </node>
            <node concept="liA8E" id="2saklBFBRGX" role="2OqNvi">
              <ref role="37wK5l" to="dxuu:~AbstractButton.isSelected()" resolve="isSelected" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6p1PwD8sUbQ" role="1B3o_S" />
      <node concept="10P_77" id="2saklBFBVkg" role="3clF45" />
    </node>
  </node>
  <node concept="sE7Ow" id="6VpjB$m4T4a">
    <property role="TrG5h" value="AnalyseNetwork" />
    <property role="2uzpH1" value="Analyse Network" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="1DS2jV" id="6VpjB$m4T4b" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="6VpjB$m4T4c" role="1oa70y" />
    </node>
    <node concept="2S4$dB" id="6VpjB$m4T4d" role="1NuT2Z">
      <property role="TrG5h" value="model" />
      <node concept="3Tm6S6" id="6VpjB$m4T4e" role="1B3o_S" />
      <node concept="1oajcY" id="6VpjB$m4T4f" role="1oa70y" />
      <node concept="H_c77" id="6VpjB$m4T4g" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="6VpjB$m4T4h" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6VpjB$m4T4i" role="1oa70y" />
    </node>
    <node concept="tnohg" id="6VpjB$m4T4j" role="tncku">
      <node concept="3clFbS" id="6VpjB$m4T4k" role="2VODD2">
        <node concept="3cpWs8" id="6VpjB$m4T4G" role="3cqZAp">
          <node concept="3cpWsn" id="6VpjB$m4T4H" role="3cpWs9">
            <property role="TrG5h" value="instance" />
            <node concept="3uibUv" id="6VpjB$m4T4I" role="1tU5fm">
              <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
            </node>
            <node concept="2YIFZM" id="6VpjB$m4T4J" role="33vP2m">
              <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
              <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <node concept="2OqwBi" id="6VpjB$m4T4K" role="37wK5m">
                <node concept="2WthIp" id="6VpjB$m4T4L" role="2Oq$k0" />
                <node concept="1DTwFV" id="6VpjB$m4T4M" role="2OqNvi">
                  <ref role="2WH_rO" node="6VpjB$m4T4h" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6VpjB$m66Xb" role="3cqZAp">
          <node concept="3cpWsn" id="6VpjB$m66Xh" role="3cpWs9">
            <property role="TrG5h" value="allFBTypeDeclarations" />
            <node concept="3uibUv" id="6VpjB$m66Xj" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="6VpjB$m6ewN" role="11_B2D">
                <ref role="3uigEE" to="cwd8:~FBTypeDeclaration" resolve="FBTypeDeclaration" />
              </node>
            </node>
            <node concept="2OqwBi" id="6VpjB$m69CE" role="33vP2m">
              <node concept="2OqwBi" id="6VpjB$m69lx" role="2Oq$k0">
                <node concept="37vLTw" id="6VpjB$m69eq" role="2Oq$k0">
                  <ref role="3cqZAo" node="6VpjB$m4T4H" resolve="instance" />
                </node>
                <node concept="liA8E" id="6VpjB$m69zy" role="2OqNvi">
                  <ref role="37wK5l" to="uvki:~PlatformRepository.getDeclarationsScope()" resolve="getDeclarationsScope" />
                </node>
              </node>
              <node concept="liA8E" id="6VpjB$m69UR" role="2OqNvi">
                <ref role="37wK5l" to="v4vf:~DeclarationsScope.findAllFBTypeDeclarations()" resolve="findAllFBTypeDeclarations" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6VpjB$m6Imk" role="3cqZAp">
          <node concept="3cpWsn" id="6VpjB$m6Imq" role="3cpWs9">
            <property role="TrG5h" value="networks" />
            <node concept="3uibUv" id="6VpjB$m6Ims" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="6VpjB$m6Jjc" role="11_B2D">
                <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
              </node>
            </node>
            <node concept="2ShNRf" id="6VpjB$m6Jml" role="33vP2m">
              <node concept="1pGfFk" id="6VpjB$m6NlS" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="6VpjB$m6NC9" role="1pMfVU">
                  <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="6VpjB$m6A6L" role="3cqZAp">
          <node concept="2GrKxI" id="6VpjB$m6A6N" role="2Gsz3X">
            <property role="TrG5h" value="declaration" />
          </node>
          <node concept="37vLTw" id="6VpjB$m6CcH" role="2GsD0m">
            <ref role="3cqZAo" node="6VpjB$m66Xh" resolve="allFBTypeDeclarations" />
          </node>
          <node concept="3clFbS" id="6VpjB$m6A6R" role="2LFqv$">
            <node concept="3clFbJ" id="6VpjB$m6CFS" role="3cqZAp">
              <node concept="2ZW3vV" id="6VpjB$m6Dlk" role="3clFbw">
                <node concept="3uibUv" id="6VpjB$m6Ead" role="2ZW6by">
                  <ref role="3uigEE" to="cwd8:~CompositeFBTypeDeclaration" resolve="CompositeFBTypeDeclaration" />
                </node>
                <node concept="2GrUjf" id="6VpjB$m6CHb" role="2ZW6bz">
                  <ref role="2Gs0qQ" node="6VpjB$m6A6N" resolve="declaration" />
                </node>
              </node>
              <node concept="3clFbS" id="6VpjB$m6CFU" role="3clFbx">
                <node concept="3clFbF" id="6VpjB$m6Oai" role="3cqZAp">
                  <node concept="2OqwBi" id="6VpjB$m6O$q" role="3clFbG">
                    <node concept="37vLTw" id="6VpjB$m6Oad" role="2Oq$k0">
                      <ref role="3cqZAo" node="6VpjB$m6Imq" resolve="networks" />
                    </node>
                    <node concept="liA8E" id="6VpjB$m6Q7L" role="2OqNvi">
                      <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                      <node concept="2OqwBi" id="6VpjB$m6Sl$" role="37wK5m">
                        <node concept="1eOMI4" id="6VpjB$m6RZJ" role="2Oq$k0">
                          <node concept="10QFUN" id="6VpjB$m6QtV" role="1eOMHV">
                            <node concept="3uibUv" id="6VpjB$m6R1M" role="10QFUM">
                              <ref role="3uigEE" to="cwd8:~CompositeFBTypeDeclaration" resolve="CompositeFBTypeDeclaration" />
                            </node>
                            <node concept="2GrUjf" id="6VpjB$m6Qg6" role="10QFUP">
                              <ref role="2Gs0qQ" node="6VpjB$m6A6N" resolve="declaration" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="6VpjB$m6TFa" role="2OqNvi">
                          <ref role="37wK5l" to="cwd8:~CompositeFBTypeDeclaration.getNetwork()" resolve="getNetwork" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3Ui8MhQUArR" role="3cqZAp" />
        <node concept="3clFbF" id="6VpjB$m6XvV" role="3cqZAp">
          <node concept="2OqwBi" id="6VpjB$m70Jd" role="3clFbG">
            <node concept="2ShNRf" id="6VpjB$m6XvR" role="2Oq$k0">
              <node concept="1pGfFk" id="69ThbiswL2n" role="2ShVmc">
                <ref role="37wK5l" to="e269:~NetworksAnalyser.&lt;init&gt;()" resolve="NetworksAnalyser" />
              </node>
            </node>
            <node concept="liA8E" id="6VpjB$m70ZN" role="2OqNvi">
              <ref role="37wK5l" to="e269:~NetworksAnalyser.process(java.util.List,org.jetbrains.mps.openapi.model.SModel,org.fbme.lib.iec61499.IEC61499Factory)" resolve="process" />
              <node concept="37vLTw" id="6VpjB$m7119" role="37wK5m">
                <ref role="3cqZAo" node="6VpjB$m6Imq" resolve="networks" />
              </node>
              <node concept="2OqwBi" id="6VpjB$m71kq" role="37wK5m">
                <node concept="2WthIp" id="6VpjB$m714q" role="2Oq$k0" />
                <node concept="3gHZIF" id="6VpjB$m71C1" role="2OqNvi">
                  <ref role="2WH_rO" node="6VpjB$m4T4d" resolve="model" />
                </node>
              </node>
              <node concept="2OqwBi" id="6VpjB$m71XK" role="37wK5m">
                <node concept="37vLTw" id="6VpjB$m71Pk" role="2Oq$k0">
                  <ref role="3cqZAo" node="6VpjB$m4T4H" resolve="instance" />
                </node>
                <node concept="liA8E" id="6VpjB$m72Bb" role="2OqNvi">
                  <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getIec61499Factory()" resolve="getIec61499Factory" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="6VpjB$m4T5O" role="tmbBb">
      <node concept="3clFbS" id="6VpjB$m4T5P" role="2VODD2">
        <node concept="3cpWs8" id="6VpjB$m4T5Q" role="3cqZAp">
          <node concept="3cpWsn" id="6VpjB$m4T5R" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="6VpjB$m4T5S" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="6VpjB$m4T5T" role="33vP2m">
              <node concept="2OqwBi" id="6VpjB$m4T5U" role="2Oq$k0">
                <node concept="2WthIp" id="6VpjB$m4T5V" role="2Oq$k0" />
                <node concept="1DTwFV" id="6VpjB$m4T5W" role="2OqNvi">
                  <ref role="2WH_rO" node="6VpjB$m4T4b" resolve="cell" />
                </node>
              </node>
              <node concept="liA8E" id="6VpjB$m4T5X" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6VpjB$m4T5Y" role="3cqZAp">
          <node concept="3cpWsn" id="6VpjB$m4T5Z" role="3cpWs9">
            <property role="TrG5h" value="network" />
            <node concept="3uibUv" id="6VpjB$m4T60" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
            </node>
            <node concept="2OqwBi" id="6VpjB$m4T61" role="33vP2m">
              <node concept="37vLTw" id="6VpjB$m4T62" role="2Oq$k0">
                <ref role="3cqZAo" node="6VpjB$m4T5R" resolve="style" />
              </node>
              <node concept="liA8E" id="6VpjB$m4T63" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6VpjB$m4T64" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK" resolve="NETWORK" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6VpjB$m4T6d" role="3cqZAp" />
        <node concept="3clFbF" id="6VpjB$m4T6e" role="3cqZAp">
          <node concept="3y3z36" id="6VpjB$m4T6j" role="3clFbG">
            <node concept="37vLTw" id="6VpjB$m4T6k" role="3uHU7B">
              <ref role="3cqZAo" node="6VpjB$m4T5Z" resolve="network" />
            </node>
            <node concept="10Nm6u" id="6VpjB$m4T6l" role="3uHU7w" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="7bIcSsJPAxp">
    <property role="TrG5h" value="CreateAdapter" />
    <property role="2uzpH1" value="Create Adapter" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="1DS2jV" id="7bIcSsJPAxq" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="7bIcSsJPAxr" role="1oa70y" />
    </node>
    <node concept="2S4$dB" id="7bIcSsJPAxs" role="1NuT2Z">
      <property role="TrG5h" value="model" />
      <node concept="3Tm6S6" id="7bIcSsJPAxt" role="1B3o_S" />
      <node concept="1oajcY" id="7bIcSsJPAxu" role="1oa70y" />
      <node concept="H_c77" id="7bIcSsJPAxv" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="7bIcSsJPAxw" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7bIcSsJPAxx" role="1oa70y" />
    </node>
    <node concept="tnohg" id="7bIcSsJPAxy" role="tncku">
      <node concept="3clFbS" id="7bIcSsJPAxz" role="2VODD2">
        <node concept="3cpWs8" id="7bIcSsJPAx$" role="3cqZAp">
          <node concept="3cpWsn" id="7bIcSsJPAx_" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="7bIcSsJPAxA" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="7bIcSsJPAxB" role="33vP2m">
              <node concept="2OqwBi" id="7bIcSsJPAxC" role="2Oq$k0">
                <node concept="2WthIp" id="7bIcSsJPAxD" role="2Oq$k0" />
                <node concept="1DTwFV" id="7bIcSsJPAxE" role="2OqNvi">
                  <ref role="2WH_rO" node="7bIcSsJPAxq" resolve="cell" />
                </node>
              </node>
              <node concept="liA8E" id="7bIcSsJPAxF" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7bIcSsJPAxG" role="3cqZAp">
          <node concept="3cpWsn" id="7bIcSsJPAxH" role="3cpWs9">
            <property role="TrG5h" value="network" />
            <node concept="3uibUv" id="7bIcSsJPAxI" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
            </node>
            <node concept="2OqwBi" id="7bIcSsJPAxJ" role="33vP2m">
              <node concept="37vLTw" id="7bIcSsJPAxK" role="2Oq$k0">
                <ref role="3cqZAo" node="7bIcSsJPAx_" resolve="style" />
              </node>
              <node concept="liA8E" id="7bIcSsJPAxL" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="7bIcSsJPAxM" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK" resolve="NETWORK" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7bIcSsJPAxN" role="3cqZAp">
          <node concept="3cpWsn" id="7bIcSsJPAxO" role="3cpWs9">
            <property role="TrG5h" value="selected" />
            <node concept="3uibUv" id="7bIcSsJPAxP" role="1tU5fm">
              <ref role="3uigEE" to="kdnk:~SelectionModel" resolve="SelectionModel" />
              <node concept="3uibUv" id="7bIcSsJPAxQ" role="11_B2D">
                <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
              </node>
            </node>
            <node concept="2OqwBi" id="7bIcSsJPAxR" role="33vP2m">
              <node concept="37vLTw" id="7bIcSsJPAxS" role="2Oq$k0">
                <ref role="3cqZAo" node="7bIcSsJPAx_" resolve="style" />
              </node>
              <node concept="liA8E" id="7bIcSsJPAxT" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="7bIcSsJPAxU" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.SELECTED_FBS" resolve="SELECTED_FBS" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7bIcSsJPAxV" role="3cqZAp">
          <node concept="3cpWsn" id="7bIcSsJPAxW" role="3cpWs9">
            <property role="TrG5h" value="instance" />
            <node concept="3uibUv" id="7bIcSsJPAxX" role="1tU5fm">
              <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
            </node>
            <node concept="2YIFZM" id="7bIcSsJPAxY" role="33vP2m">
              <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
              <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <node concept="2OqwBi" id="7bIcSsJPAxZ" role="37wK5m">
                <node concept="2WthIp" id="7bIcSsJPAy0" role="2Oq$k0" />
                <node concept="1DTwFV" id="7bIcSsJPAy1" role="2OqNvi">
                  <ref role="2WH_rO" node="7bIcSsJPAxw" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7bIcSsJPAy2" role="3cqZAp">
          <node concept="3cpWsn" id="7bIcSsJPAy3" role="3cpWs9">
            <property role="TrG5h" value="blockList" />
            <node concept="3uibUv" id="7bIcSsJPAy4" role="1tU5fm">
              <ref role="3uigEE" to="33ny:~List" resolve="List" />
              <node concept="3uibUv" id="7bIcSsJPAy5" role="11_B2D">
                <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
              </node>
            </node>
            <node concept="2ShNRf" id="7bIcSsJPAy6" role="33vP2m">
              <node concept="1pGfFk" id="7bIcSsJPAy7" role="2ShVmc">
                <ref role="37wK5l" to="33ny:~ArrayList.&lt;init&gt;()" resolve="ArrayList" />
                <node concept="3uibUv" id="7bIcSsJPAy8" role="1pMfVU">
                  <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="7bIcSsJPAy9" role="3cqZAp">
          <node concept="2GrKxI" id="7bIcSsJPAya" role="2Gsz3X">
            <property role="TrG5h" value="component" />
          </node>
          <node concept="2OqwBi" id="7bIcSsJPAyb" role="2GsD0m">
            <node concept="37vLTw" id="7bIcSsJPAyc" role="2Oq$k0">
              <ref role="3cqZAo" node="7bIcSsJPAxO" resolve="selected" />
            </node>
            <node concept="liA8E" id="7bIcSsJPAyd" role="2OqNvi">
              <ref role="37wK5l" to="kdnk:~SelectionModel.getSelectedComponents()" resolve="getSelectedComponents" />
            </node>
          </node>
          <node concept="3clFbS" id="7bIcSsJPAye" role="2LFqv$">
            <node concept="3clFbF" id="7bIcSsJPAyh" role="3cqZAp">
              <node concept="2OqwBi" id="7bIcSsJPAyi" role="3clFbG">
                <node concept="37vLTw" id="7bIcSsJPAyj" role="2Oq$k0">
                  <ref role="3cqZAo" node="7bIcSsJPAy3" resolve="blockList" />
                </node>
                <node concept="liA8E" id="7bIcSsJPAyk" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.add(java.lang.Object)" resolve="add" />
                  <node concept="10QFUN" id="7bIcSsJPAyl" role="37wK5m">
                    <node concept="3uibUv" id="7bIcSsJPAym" role="10QFUM">
                      <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                    </node>
                    <node concept="2OqwBi" id="7bIcSsJPAyn" role="10QFUP">
                      <node concept="1eOMI4" id="7bIcSsJPAyo" role="2Oq$k0">
                        <node concept="10QFUN" id="7bIcSsJPAyp" role="1eOMHV">
                          <node concept="3uibUv" id="7bIcSsJPAyq" role="10QFUM">
                            <ref role="3uigEE" to="1hzy:~FunctionBlockView" resolve="FunctionBlockView" />
                          </node>
                          <node concept="2GrUjf" id="7bIcSsJPAyr" role="10QFUP">
                            <ref role="2Gs0qQ" node="7bIcSsJPAya" resolve="component" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="7bIcSsJPAys" role="2OqNvi">
                        <ref role="37wK5l" to="1hzy:~FunctionBlockView.getComponent()" resolve="getComponent" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1_aRooYcyOA" role="3cqZAp" />
        <node concept="3clFbF" id="1_aRooYdZwF" role="3cqZAp">
          <node concept="2OqwBi" id="1_aRooYe3nf" role="3clFbG">
            <node concept="2ShNRf" id="1_aRooYdZwB" role="2Oq$k0">
              <node concept="1pGfFk" id="69ThbiswJKg" role="2ShVmc">
                <ref role="37wK5l" to="zjky:~AdapterCreator.&lt;init&gt;()" resolve="AdapterCreator" />
              </node>
            </node>
            <node concept="liA8E" id="1_aRooYe3B5" role="2OqNvi">
              <ref role="37wK5l" to="zjky:~AdapterCreator.create(org.fbme.lib.iec61499.fbnetwork.FBNetwork,org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration,org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclaration,org.jetbrains.mps.openapi.model.SModel,org.fbme.lib.iec61499.IEC61499Factory)" resolve="create" />
              <node concept="37vLTw" id="1_aRooYe3CA" role="37wK5m">
                <ref role="3cqZAo" node="7bIcSsJPAxH" resolve="network" />
              </node>
              <node concept="2OqwBi" id="1_aRooYe467" role="37wK5m">
                <node concept="37vLTw" id="1_aRooYe3EX" role="2Oq$k0">
                  <ref role="3cqZAo" node="7bIcSsJPAy3" resolve="blockList" />
                </node>
                <node concept="liA8E" id="1_aRooYe55E" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="1_aRooYe5dA" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1_aRooYe5P3" role="37wK5m">
                <node concept="37vLTw" id="1_aRooYe5pi" role="2Oq$k0">
                  <ref role="3cqZAo" node="7bIcSsJPAy3" resolve="blockList" />
                </node>
                <node concept="liA8E" id="1_aRooYe7ID" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~List.get(int)" resolve="get" />
                  <node concept="3cmrfG" id="1_aRooYe7Sx" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="1_aRooYe8d$" role="37wK5m">
                <node concept="2WthIp" id="1_aRooYe8dB" role="2Oq$k0" />
                <node concept="3gHZIF" id="1_aRooYe8dD" role="2OqNvi">
                  <ref role="2WH_rO" node="7bIcSsJPAxs" resolve="model" />
                </node>
              </node>
              <node concept="2OqwBi" id="1_aRooYe94q" role="37wK5m">
                <node concept="37vLTw" id="1_aRooYe94r" role="2Oq$k0">
                  <ref role="3cqZAo" node="7bIcSsJPAxW" resolve="instance" />
                </node>
                <node concept="liA8E" id="1_aRooYe94s" role="2OqNvi">
                  <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getIec61499Factory()" resolve="getIec61499Factory" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="7bIcSsJPAz3" role="tmbBb">
      <node concept="3clFbS" id="7bIcSsJPAz4" role="2VODD2">
        <node concept="3cpWs8" id="7bIcSsJPAz5" role="3cqZAp">
          <node concept="3cpWsn" id="7bIcSsJPAz6" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="7bIcSsJPAz7" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="7bIcSsJPAz8" role="33vP2m">
              <node concept="2OqwBi" id="7bIcSsJPAz9" role="2Oq$k0">
                <node concept="2WthIp" id="7bIcSsJPAza" role="2Oq$k0" />
                <node concept="1DTwFV" id="7bIcSsJPAzb" role="2OqNvi">
                  <ref role="2WH_rO" node="7bIcSsJPAxq" resolve="cell" />
                </node>
              </node>
              <node concept="liA8E" id="7bIcSsJPAzc" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7bIcSsJPAzd" role="3cqZAp">
          <node concept="3cpWsn" id="7bIcSsJPAze" role="3cpWs9">
            <property role="TrG5h" value="network" />
            <node concept="3uibUv" id="7bIcSsJPAzf" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
            </node>
            <node concept="2OqwBi" id="7bIcSsJPAzg" role="33vP2m">
              <node concept="37vLTw" id="7bIcSsJPAzh" role="2Oq$k0">
                <ref role="3cqZAo" node="7bIcSsJPAz6" resolve="style" />
              </node>
              <node concept="liA8E" id="7bIcSsJPAzi" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="7bIcSsJPAzj" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK" resolve="NETWORK" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7bIcSsJPAzk" role="3cqZAp">
          <node concept="3cpWsn" id="7bIcSsJPAzl" role="3cpWs9">
            <property role="TrG5h" value="selected" />
            <node concept="3uibUv" id="7bIcSsJPAzm" role="1tU5fm">
              <ref role="3uigEE" to="kdnk:~SelectionModel" resolve="SelectionModel" />
              <node concept="3uibUv" id="7bIcSsJPAzn" role="11_B2D">
                <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
              </node>
            </node>
            <node concept="2OqwBi" id="7bIcSsJPAzo" role="33vP2m">
              <node concept="37vLTw" id="7bIcSsJPAzp" role="2Oq$k0">
                <ref role="3cqZAo" node="7bIcSsJPAz6" resolve="style" />
              </node>
              <node concept="liA8E" id="7bIcSsJPAzq" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="7bIcSsJPAzr" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.SELECTED_FBS" resolve="SELECTED_FBS" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7bIcSsJPAzs" role="3cqZAp" />
        <node concept="3clFbF" id="7bIcSsJPAzt" role="3cqZAp">
          <node concept="1Wc70l" id="7bIcSsJQJOU" role="3clFbG">
            <node concept="3clFbC" id="7bIcSsJQOz0" role="3uHU7w">
              <node concept="3cmrfG" id="7bIcSsJQPp6" role="3uHU7w">
                <property role="3cmrfH" value="2" />
              </node>
              <node concept="2OqwBi" id="7bIcSsJQMdi" role="3uHU7B">
                <node concept="2OqwBi" id="7bIcSsJQKLP" role="2Oq$k0">
                  <node concept="37vLTw" id="7bIcSsJQKhf" role="2Oq$k0">
                    <ref role="3cqZAo" node="7bIcSsJPAzl" resolve="selected" />
                  </node>
                  <node concept="liA8E" id="7bIcSsJQLlU" role="2OqNvi">
                    <ref role="37wK5l" to="kdnk:~SelectionModel.getSelectedComponents()" resolve="getSelectedComponents" />
                  </node>
                </node>
                <node concept="liA8E" id="7bIcSsJQNr3" role="2OqNvi">
                  <ref role="37wK5l" to="33ny:~Set.size()" resolve="size" />
                </node>
              </node>
            </node>
            <node concept="1Wc70l" id="7bIcSsJPAzu" role="3uHU7B">
              <node concept="3y3z36" id="7bIcSsJPAzy" role="3uHU7B">
                <node concept="37vLTw" id="7bIcSsJPAzz" role="3uHU7B">
                  <ref role="3cqZAo" node="7bIcSsJPAze" resolve="network" />
                </node>
                <node concept="10Nm6u" id="7bIcSsJPAz$" role="3uHU7w" />
              </node>
              <node concept="3y3z36" id="7bIcSsJPAzv" role="3uHU7w">
                <node concept="37vLTw" id="7bIcSsJPAzx" role="3uHU7B">
                  <ref role="3cqZAo" node="7bIcSsJPAzl" resolve="selected" />
                </node>
                <node concept="10Nm6u" id="7bIcSsJPAzw" role="3uHU7w" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2uRRBy" id="3jjJUY4f6rp">
    <property role="TrG5h" value="IsomorphismSearchPlugin" />
    <node concept="2uRRBT" id="3jjJUY4f7KG" role="2uRRB$">
      <node concept="3clFbS" id="3jjJUY4f7KH" role="2VODD2">
        <node concept="3clFbF" id="58o4d6TL_8V" role="3cqZAp">
          <node concept="2YIFZM" id="58o4d6TL_e1" role="3clFbG">
            <ref role="37wK5l" to="dfgj:~IsomorphismManagerProvider.init(jetbrains.mps.project.Project,org.fbme.ide.iec61499.repository.PlatformRepository)" resolve="init" />
            <ref role="1Pybhc" to="dfgj:~IsomorphismManagerProvider" resolve="IsomorphismManagerProvider" />
            <node concept="1KvdUw" id="58o4d6TL_fk" role="37wK5m" />
            <node concept="2YIFZM" id="58o4d6TL_pC" role="37wK5m">
              <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
              <node concept="1KvdUw" id="58o4d6TL_qm" role="37wK5m" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="3jjJUY4f9PJ" role="2uRRB_">
      <node concept="3clFbS" id="3jjJUY4f9PK" role="2VODD2">
        <node concept="3clFbF" id="58o4d6TL_Pp" role="3cqZAp">
          <node concept="2YIFZM" id="58o4d6TL_PR" role="3clFbG">
            <ref role="37wK5l" to="dfgj:~IsomorphismManagerProvider.dispose(jetbrains.mps.project.Project)" resolve="dispose" />
            <ref role="1Pybhc" to="dfgj:~IsomorphismManagerProvider" resolve="IsomorphismManagerProvider" />
            <node concept="1KvdUw" id="58o4d6TL_Qg" role="37wK5m" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="5JOOlQroE94">
    <property role="TrG5h" value="ApplySimplification" />
    <property role="2uzpH1" value="Apply Simplification" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="1DS2jV" id="5JOOlQroE95" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="5JOOlQroE96" role="1oa70y" />
    </node>
    <node concept="2S4$dB" id="5JOOlQroE97" role="1NuT2Z">
      <property role="TrG5h" value="model" />
      <node concept="3Tm6S6" id="5JOOlQroE98" role="1B3o_S" />
      <node concept="1oajcY" id="5JOOlQroE99" role="1oa70y" />
      <node concept="H_c77" id="5JOOlQroE9a" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="5JOOlQroE9b" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="5JOOlQroE9c" role="1oa70y" />
    </node>
    <node concept="tnohg" id="5JOOlQroE9d" role="tncku">
      <node concept="3clFbS" id="5JOOlQroE9e" role="2VODD2">
        <node concept="3cpWs8" id="4FNrSfYKj3P" role="3cqZAp">
          <node concept="3cpWsn" id="4FNrSfYKj3Q" role="3cpWs9">
            <property role="TrG5h" value="isomorphismManager" />
            <node concept="3uibUv" id="4FNrSfYKj3R" role="1tU5fm">
              <ref role="3uigEE" to="dfgj:~IsomorphismManager" resolve="IsomorphismManager" />
            </node>
            <node concept="2YIFZM" id="4FNrSfYKjr4" role="33vP2m">
              <ref role="37wK5l" to="dfgj:~IsomorphismManagerProvider.getManager(jetbrains.mps.project.Project)" resolve="getManager" />
              <ref role="1Pybhc" to="dfgj:~IsomorphismManagerProvider" resolve="IsomorphismManagerProvider" />
              <node concept="2OqwBi" id="4FNrSfYKjJ2" role="37wK5m">
                <node concept="2WthIp" id="4FNrSfYKjsq" role="2Oq$k0" />
                <node concept="1DTwFV" id="4FNrSfYKk22" role="2OqNvi">
                  <ref role="2WH_rO" node="5JOOlQroE9b" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4FNrSfYKkGH" role="3cqZAp">
          <node concept="3clFbS" id="4FNrSfYKkGJ" role="3clFbx">
            <node concept="3cpWs6" id="4FNrSfYKmJU" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="4FNrSfYKlrf" role="3clFbw">
            <node concept="10Nm6u" id="4FNrSfYKlRH" role="3uHU7w" />
            <node concept="37vLTw" id="4FNrSfYKla6" role="3uHU7B">
              <ref role="3cqZAo" node="4FNrSfYKj3Q" resolve="isomorphismManager" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4FNrSfYJMQi" role="3cqZAp">
          <node concept="3cpWsn" id="4FNrSfYJMQj" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="4FNrSfYJMQk" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="4FNrSfYJMQl" role="33vP2m">
              <node concept="2OqwBi" id="4FNrSfYJMQm" role="2Oq$k0">
                <node concept="2WthIp" id="4FNrSfYJMQn" role="2Oq$k0" />
                <node concept="1DTwFV" id="4FNrSfYJMQo" role="2OqNvi">
                  <ref role="2WH_rO" node="5JOOlQroE95" resolve="cell" />
                </node>
              </node>
              <node concept="liA8E" id="4FNrSfYJMQp" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4FNrSfYJMQq" role="3cqZAp">
          <node concept="3cpWsn" id="4FNrSfYJMQr" role="3cpWs9">
            <property role="TrG5h" value="network" />
            <node concept="3uibUv" id="4FNrSfYJMQs" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
            </node>
            <node concept="2OqwBi" id="4FNrSfYJMQt" role="33vP2m">
              <node concept="37vLTw" id="4FNrSfYJMQu" role="2Oq$k0">
                <ref role="3cqZAo" node="4FNrSfYJMQj" resolve="style" />
              </node>
              <node concept="liA8E" id="4FNrSfYJMQv" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="4FNrSfYJMQw" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK" resolve="NETWORK" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4FNrSfYKnpm" role="3cqZAp">
          <node concept="3cpWsn" id="4FNrSfYKnpn" role="3cpWs9">
            <property role="TrG5h" value="request" />
            <node concept="3uibUv" id="4FNrSfYKnpo" role="1tU5fm">
              <ref role="3uigEE" to="e269:~RefactoringRequest" resolve="RefactoringRequest" />
            </node>
            <node concept="2OqwBi" id="4FNrSfYKnWl" role="33vP2m">
              <node concept="37vLTw" id="4FNrSfYKnRp" role="2Oq$k0">
                <ref role="3cqZAo" node="4FNrSfYKj3Q" resolve="isomorphismManager" />
              </node>
              <node concept="liA8E" id="4FNrSfYKo3L" role="2OqNvi">
                <ref role="37wK5l" to="dfgj:~IsomorphismManager.getApplyableRequest(org.fbme.lib.iec61499.fbnetwork.FBNetwork)" resolve="getApplyableRequest" />
                <node concept="37vLTw" id="4FNrSfYKo4X" role="37wK5m">
                  <ref role="3cqZAo" node="4FNrSfYJMQr" resolve="network" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4FNrSfYKoJL" role="3cqZAp">
          <node concept="3clFbS" id="4FNrSfYKoJN" role="3clFbx">
            <node concept="3cpWs8" id="4FNrSfYL2XX" role="3cqZAp">
              <node concept="3cpWsn" id="4FNrSfYL2XY" role="3cpWs9">
                <property role="TrG5h" value="instance" />
                <node concept="3uibUv" id="4FNrSfYL2XZ" role="1tU5fm">
                  <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
                </node>
                <node concept="2YIFZM" id="4FNrSfYL2Y0" role="33vP2m">
                  <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
                  <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                  <node concept="2OqwBi" id="4FNrSfYL2Y1" role="37wK5m">
                    <node concept="2WthIp" id="4FNrSfYL2Y2" role="2Oq$k0" />
                    <node concept="1DTwFV" id="4FNrSfYL2Y3" role="2OqNvi">
                      <ref role="2WH_rO" node="5JOOlQroE9b" resolve="project" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4FNrSfYKq6e" role="3cqZAp">
              <node concept="2OqwBi" id="4FNrSfYL25r" role="3clFbG">
                <node concept="2ShNRf" id="4FNrSfYKq6a" role="2Oq$k0">
                  <node concept="1pGfFk" id="4FNrSfYL20K" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="e269:~NetworksAnalyser.&lt;init&gt;()" resolve="NetworksAnalyser" />
                  </node>
                </node>
                <node concept="liA8E" id="4FNrSfYL2dd" role="2OqNvi">
                  <ref role="37wK5l" to="e269:~NetworksAnalyser.processRequest(org.fbme.integration.nxt.importer.network.RefactoringRequest,org.jetbrains.mps.openapi.model.SModel,org.fbme.lib.iec61499.IEC61499Factory)" resolve="processRequest" />
                  <node concept="37vLTw" id="4FNrSfYL2ew" role="37wK5m">
                    <ref role="3cqZAo" node="4FNrSfYKnpn" resolve="request" />
                  </node>
                  <node concept="2OqwBi" id="4FNrSfYL2wK" role="37wK5m">
                    <node concept="2WthIp" id="4FNrSfYL2h5" role="2Oq$k0" />
                    <node concept="3gHZIF" id="4FNrSfYL2LH" role="2OqNvi">
                      <ref role="2WH_rO" node="5JOOlQroE97" resolve="model" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="4FNrSfYL3G3" role="37wK5m">
                    <node concept="37vLTw" id="4FNrSfYL3$G" role="2Oq$k0">
                      <ref role="3cqZAo" node="4FNrSfYL2XY" resolve="instance" />
                    </node>
                    <node concept="liA8E" id="4FNrSfYL3Yw" role="2OqNvi">
                      <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getIec61499Factory()" resolve="getIec61499Factory" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="27E0fQhAqkR" role="3cqZAp">
              <node concept="2OqwBi" id="27E0fQhAqv7" role="3clFbG">
                <node concept="37vLTw" id="27E0fQhAqkP" role="2Oq$k0">
                  <ref role="3cqZAo" node="4FNrSfYKj3Q" resolve="isomorphismManager" />
                </node>
                <node concept="liA8E" id="27E0fQhAqAy" role="2OqNvi">
                  <ref role="37wK5l" to="dfgj:~IsomorphismManager.removeRequest(org.fbme.integration.nxt.importer.network.RefactoringRequest)" resolve="removeRequest" />
                  <node concept="37vLTw" id="27E0fQhAr8g" role="37wK5m">
                    <ref role="3cqZAo" node="4FNrSfYKnpn" resolve="request" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4FNrSfYKpvm" role="3clFbw">
            <node concept="10Nm6u" id="4FNrSfYKpIr" role="3uHU7w" />
            <node concept="37vLTw" id="4FNrSfYKped" role="3uHU7B">
              <ref role="3cqZAo" node="4FNrSfYKnpn" resolve="request" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="5JOOlQroEa6" role="tmbBb">
      <node concept="3clFbS" id="5JOOlQroEa7" role="2VODD2">
        <node concept="3cpWs8" id="4FNrSfYL4tY" role="3cqZAp">
          <node concept="3cpWsn" id="4FNrSfYL4tZ" role="3cpWs9">
            <property role="TrG5h" value="isomorphismManager" />
            <node concept="3uibUv" id="4FNrSfYL4u0" role="1tU5fm">
              <ref role="3uigEE" to="dfgj:~IsomorphismManager" resolve="IsomorphismManager" />
            </node>
            <node concept="2YIFZM" id="4FNrSfYL4u1" role="33vP2m">
              <ref role="37wK5l" to="dfgj:~IsomorphismManagerProvider.getManager(jetbrains.mps.project.Project)" resolve="getManager" />
              <ref role="1Pybhc" to="dfgj:~IsomorphismManagerProvider" resolve="IsomorphismManagerProvider" />
              <node concept="2OqwBi" id="4FNrSfYL4u2" role="37wK5m">
                <node concept="2WthIp" id="4FNrSfYL4u3" role="2Oq$k0" />
                <node concept="1DTwFV" id="4FNrSfYL4u4" role="2OqNvi">
                  <ref role="2WH_rO" node="5JOOlQroE9b" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4FNrSfYL4u5" role="3cqZAp">
          <node concept="3clFbS" id="4FNrSfYL4u6" role="3clFbx">
            <node concept="3cpWs6" id="4FNrSfYL4u7" role="3cqZAp">
              <node concept="3clFbT" id="4FNrSfYL5gV" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="4FNrSfYL4u8" role="3clFbw">
            <node concept="10Nm6u" id="4FNrSfYL4u9" role="3uHU7w" />
            <node concept="37vLTw" id="4FNrSfYL4ua" role="3uHU7B">
              <ref role="3cqZAo" node="4FNrSfYL4tZ" resolve="isomorphismManager" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4FNrSfYL4ub" role="3cqZAp">
          <node concept="3cpWsn" id="4FNrSfYL4uc" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="4FNrSfYL4ud" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="4FNrSfYL4ue" role="33vP2m">
              <node concept="2OqwBi" id="4FNrSfYL4uf" role="2Oq$k0">
                <node concept="2WthIp" id="4FNrSfYL4ug" role="2Oq$k0" />
                <node concept="1DTwFV" id="4FNrSfYL4uh" role="2OqNvi">
                  <ref role="2WH_rO" node="5JOOlQroE95" resolve="cell" />
                </node>
              </node>
              <node concept="liA8E" id="4FNrSfYL4ui" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4FNrSfYL4uj" role="3cqZAp">
          <node concept="3cpWsn" id="4FNrSfYL4uk" role="3cpWs9">
            <property role="TrG5h" value="network" />
            <node concept="3uibUv" id="4FNrSfYL4ul" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
            </node>
            <node concept="2OqwBi" id="4FNrSfYL4um" role="33vP2m">
              <node concept="37vLTw" id="4FNrSfYL4un" role="2Oq$k0">
                <ref role="3cqZAo" node="4FNrSfYL4uc" resolve="style" />
              </node>
              <node concept="liA8E" id="4FNrSfYL4uo" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="4FNrSfYL4up" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK" resolve="NETWORK" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4FNrSfYL9B7" role="3cqZAp">
          <node concept="3clFbS" id="4FNrSfYL9B9" role="3clFbx">
            <node concept="3cpWs6" id="4FNrSfYLb2R" role="3cqZAp">
              <node concept="3clFbT" id="4FNrSfYLbgD" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="4FNrSfYLaf6" role="3clFbw">
            <node concept="10Nm6u" id="4FNrSfYLazW" role="3uHU7w" />
            <node concept="37vLTw" id="4FNrSfYL9S4" role="3uHU7B">
              <ref role="3cqZAo" node="4FNrSfYL4uk" resolve="network" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4FNrSfYL4uq" role="3cqZAp">
          <node concept="3cpWsn" id="4FNrSfYL4ur" role="3cpWs9">
            <property role="TrG5h" value="request" />
            <node concept="3uibUv" id="4FNrSfYL4us" role="1tU5fm">
              <ref role="3uigEE" to="e269:~RefactoringRequest" resolve="RefactoringRequest" />
            </node>
            <node concept="2OqwBi" id="4FNrSfYL4ut" role="33vP2m">
              <node concept="37vLTw" id="4FNrSfYL4uu" role="2Oq$k0">
                <ref role="3cqZAo" node="4FNrSfYL4tZ" resolve="isomorphismManager" />
              </node>
              <node concept="liA8E" id="4FNrSfYL4uv" role="2OqNvi">
                <ref role="37wK5l" to="dfgj:~IsomorphismManager.getApplyableRequest(org.fbme.lib.iec61499.fbnetwork.FBNetwork)" resolve="getApplyableRequest" />
                <node concept="37vLTw" id="4FNrSfYL4uw" role="37wK5m">
                  <ref role="3cqZAo" node="4FNrSfYL4uk" resolve="network" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4FNrSfYL67K" role="3cqZAp">
          <node concept="3y3z36" id="4FNrSfYL8gy" role="3clFbG">
            <node concept="10Nm6u" id="4FNrSfYL8vG" role="3uHU7w" />
            <node concept="37vLTw" id="4FNrSfYL7Rr" role="3uHU7B">
              <ref role="3cqZAo" node="4FNrSfYL4ur" resolve="request" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

