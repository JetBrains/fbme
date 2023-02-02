<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b158891b-59fa-43c8-ad54-2e563dd60d68(org.fbme.debugger.plugin)">
  <persistence version="9" />
  <languages>
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="5" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="11" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="18" />
    <use id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging" version="0" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers" version="0" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="c7fb639f-be78-4307-89b0-b5959c3fa8c8" name="jetbrains.mps.lang.text" version="0" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
  </languages>
  <imports>
    <import index="qq03" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.actions(MPS.Platform/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="lui2" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.module(MPS.OpenAPI/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="mhbf" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.model(MPS.OpenAPI/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="xygl" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.progress(MPS.IDEA/)" />
    <import index="yyf4" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.util(MPS.OpenAPI/)" />
    <import index="mk8z" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.progress(MPS.Platform/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="k3nr" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.ide.editor(MPS.Editor/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="74cb" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.instances(org.fbme.lib/)" />
    <import index="5z5t" ref="r:cb5ca339-5ab1-4d45-82cc-3e94fa36eca9(org.fbme.ide.richediting.plugin)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="ntnl" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.descriptors(org.fbme.lib/)" />
    <import index="g27j" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.fbnetwork(org.fbme.lib/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="kdnk" ref="836d7b1e-a51f-4ec1-a3cc-1c0b7cb75eb9/java:org.fbme.scenes.controllers(org.fbme.scenes/)" />
    <import index="7adg" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.common(org.fbme.lib/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="lzb2" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ui(MPS.IDEA/)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
    <import index="wvnl" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.extensions(MPS.Editor/)" />
    <import index="71xd" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.tools(MPS.Platform/)" />
    <import index="lv7i" ref="r:5472e35e-027d-42bb-bcce-32726ec4c9a9(org.fbme.ide.iec61499.adapter.ecc)" />
    <import index="uvki" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.iec61499.repository(org.fbme.platform.lib/)" />
    <import index="6w4o" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.platform.debugger(org.fbme.platform.lib/)" />
    <import index="flkh" ref="c6b02c2c-6484-48c4-ab6e-40937aeede2e/java:org.fbme.debugger(org.fbme.debugger.lib/)" />
    <import index="672w" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.iec61499.snashot(org.fbme.platform.lib/)" />
    <import index="3l4b" ref="c6b02c2c-6484-48c4-ab6e-40937aeede2e/java:org.fbme.debugger.common.state(org.fbme.debugger.lib/)" />
    <import index="m3bz" ref="c6b02c2c-6484-48c4-ab6e-40937aeede2e/java:org.fbme.debugger.common.trace(org.fbme.debugger.lib/)" />
    <import index="80uf" ref="c6b02c2c-6484-48c4-ab6e-40937aeede2e/java:org.fbme.debugger.simulator(org.fbme.debugger.lib/)" />
    <import index="b15n" ref="c6b02c2c-6484-48c4-ab6e-40937aeede2e/java:org.fbme.debugger.simulator.ui(org.fbme.debugger.lib/)" />
    <import index="1hzy" ref="fa2f156c-8927-4ca1-847f-ba6f9ea8f1a5/java:org.fbme.ide.richediting.viewmodel(org.fbme.richediting.lib/)" />
    <import index="ek6x" ref="fa2f156c-8927-4ca1-847f-ba6f9ea8f1a5/java:org.fbme.ide.richediting.inspections(org.fbme.richediting.lib/)" />
    <import index="je9f" ref="fa2f156c-8927-4ca1-847f-ba6f9ea8f1a5/java:org.fbme.ide.richediting.editor(org.fbme.richediting.lib/)" />
    <import index="7zqy" ref="c6b02c2c-6484-48c4-ab6e-40937aeede2e/java:org.fbme.debugger.common.ui(org.fbme.debugger.lib/)" />
    <import index="89ek" ref="c6b02c2c-6484-48c4-ab6e-40937aeede2e/java:org.fbme.debugger.explanation(org.fbme.debugger.lib/)" />
    <import index="flki" ref="15002a50-4ccf-4200-98db-35093fe08692/java:org.fbme.debugger(org.fbme.debugger/)" implicit="true" />
  </imports>
  <registry>
    <language id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin">
      <concept id="1207145163717" name="jetbrains.mps.lang.plugin.structure.ElementListContents" flags="ng" index="ftmFs">
        <child id="1207145201301" name="reference" index="ftvYc" />
      </concept>
      <concept id="1203071646776" name="jetbrains.mps.lang.plugin.structure.ActionDeclaration" flags="ng" index="sE7Ow">
        <property id="1205250923097" name="caption" index="2uzpH1" />
        <property id="7458746815261976739" name="requiredAccess" index="2YLI8m" />
        <child id="1203083196627" name="updateBlock" index="tmbBb" />
        <child id="1203083461638" name="executeFunction" index="tncku" />
        <child id="1205851242421" name="methodDeclaration" index="32lrUH" />
        <child id="1217413222820" name="parameter" index="1NuT2Z" />
      </concept>
      <concept id="1203082695294" name="jetbrains.mps.lang.plugin.structure.DoUpdateBlock" flags="in" index="tkhdA" />
      <concept id="1203082903663" name="jetbrains.mps.lang.plugin.structure.ConceptFunctionParameter_AnActionEvent" flags="nn" index="tl45R" />
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
      <concept id="5896642449625987000" name="jetbrains.mps.lang.plugin.structure.AddTabOperation" flags="nn" index="2wDMaC">
        <child id="7566788359602201160" name="tab" index="11Dce$" />
      </concept>
      <concept id="5896642449625981893" name="jetbrains.mps.lang.plugin.structure.TabbedToolDeclaration" flags="ng" index="2wDNrl" />
      <concept id="6938053545825350222" name="jetbrains.mps.lang.plugin.structure.ToolTab" flags="ng" index="2BLXyY">
        <child id="6938053545825381648" name="componentExpression" index="2BLOvw" />
        <child id="6938053545825381649" name="titleExpression" index="2BLOvx" />
      </concept>
      <concept id="1205679047295" name="jetbrains.mps.lang.plugin.structure.ActionParameterDeclaration" flags="ig" index="2S4$dB" />
      <concept id="1205681243813" name="jetbrains.mps.lang.plugin.structure.IsApplicableBlock" flags="in" index="2ScWuX" />
      <concept id="6547237850567458268" name="jetbrains.mps.lang.plugin.structure.BaseToolDeclaration" flags="ng" index="2XNcJY">
        <property id="6547237850567462620" name="caption" index="2XNbzY" />
        <child id="6547237850567462848" name="methodDeclaration" index="2XNbBy" />
        <child id="6547237850567462849" name="fieldDeclaration" index="2XNbBz" />
      </concept>
      <concept id="1206092561075" name="jetbrains.mps.lang.plugin.structure.ActionParameterReferenceOperation" flags="nn" index="3gHZIF" />
      <concept id="4295816563224240545" name="jetbrains.mps.lang.plugin.structure.PinTabOperation" flags="ng" index="1kDqZ6">
        <child id="5386424596292315200" name="componentExpression" index="3PF$jx" />
      </concept>
      <concept id="5538333046911348654" name="jetbrains.mps.lang.plugin.structure.RequiredCondition" flags="ng" index="1oajcY" />
      <concept id="1208528650020" name="jetbrains.mps.lang.plugin.structure.ToolType" flags="in" index="1xUVSX">
        <reference id="1208529537963" name="tool" index="1xYkEM" />
      </concept>
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
      <concept id="481983775135178834" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDeclaration" flags="ng" index="2uRRBy">
        <child id="481983775135178836" name="initBlock" index="2uRRB$" />
        <child id="481983775135178837" name="disposeBlock" index="2uRRB_" />
      </concept>
      <concept id="481983775135178819" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginDisposeBlock" flags="in" index="2uRRBN" />
      <concept id="481983775135178825" name="jetbrains.mps.lang.plugin.standalone.structure.ProjectPluginInitBlock" flags="in" index="2uRRBT" />
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
      <concept id="681855071694758165" name="jetbrains.mps.lang.plugin.standalone.structure.GetToolInProjectOperation" flags="nn" index="LR4U6">
        <reference id="681855071694758166" name="tool" index="LR4U5" />
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
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
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
      <concept id="1160998861373" name="jetbrains.mps.baseLanguage.structure.AssertStatement" flags="nn" index="1gVbGN">
        <child id="1160998896846" name="condition" index="1gVkn0" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903607971" name="jetbrains.mps.baseLanguage.structure.WildCardType" flags="in" index="3qTvmN" />
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
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
      <concept id="5351203823916750322" name="jetbrains.mps.baseLanguage.structure.TryUniversalStatement" flags="nn" index="3J1_TO">
        <child id="8276990574886367510" name="catchClause" index="1zxBo5" />
        <child id="8276990574886367508" name="body" index="1zxBo7" />
      </concept>
      <concept id="1082113931046" name="jetbrains.mps.baseLanguage.structure.ContinueStatement" flags="nn" index="3N13vt" />
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="8356039341262087992" name="line" index="1aUNEU" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
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
    <language id="443f4c36-fcf5-4eb6-9500-8d06ed259e3e" name="jetbrains.mps.baseLanguage.classifiers">
      <concept id="1213999088275" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldDeclaration" flags="ig" index="2BZ0e9" />
      <concept id="1213999117680" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierFieldAccessOperation" flags="nn" index="2BZ7hE" />
      <concept id="1205752633985" name="jetbrains.mps.baseLanguage.classifiers.structure.ThisClassifierExpression" flags="nn" index="2WthIp">
        <reference id="1218736638915" name="classifier" index="32nkFo" />
      </concept>
      <concept id="1205756064662" name="jetbrains.mps.baseLanguage.classifiers.structure.IMemberOperation" flags="ng" index="2WEnae">
        <reference id="1205756909548" name="member" index="2WH_rO" />
      </concept>
      <concept id="1205769003971" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodDeclaration" flags="ng" index="2XrIbr" />
      <concept id="1205769149993" name="jetbrains.mps.baseLanguage.classifiers.structure.DefaultClassifierMethodCallOperation" flags="nn" index="2XshWL">
        <child id="1205770614681" name="actualArgument" index="2XxRq1" />
      </concept>
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
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
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="2396822768958367367" name="jetbrains.mps.lang.smodel.structure.AbstractTypeCastExpression" flags="nn" index="$5XWr">
        <child id="6733348108486823193" name="leftExpression" index="1m5AlR" />
        <child id="3906496115198199033" name="conceptArgument" index="3oSUPX" />
      </concept>
      <concept id="1145404486709" name="jetbrains.mps.lang.smodel.structure.SemanticDowncastExpression" flags="nn" index="2JrnkZ">
        <child id="1145404616321" name="leftExpression" index="2JrQYb" />
      </concept>
      <concept id="1171407110247" name="jetbrains.mps.lang.smodel.structure.Node_GetAncestorOperation" flags="nn" index="2Xjw5R" />
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
      </concept>
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
      <concept id="1235566554328" name="jetbrains.mps.baseLanguage.collections.structure.AnyOperation" flags="nn" index="2HwmR7" />
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1160600644654" name="jetbrains.mps.baseLanguage.collections.structure.ListCreatorWithInit" flags="nn" index="Tc6Ow" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="4611582986551314327" name="jetbrains.mps.baseLanguage.collections.structure.OfTypeOperation" flags="nn" index="UnYns">
        <child id="4611582986551314344" name="requestedType" index="UnYnz" />
      </concept>
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1175845471038" name="jetbrains.mps.baseLanguage.collections.structure.ReverseOperation" flags="nn" index="35Qw8J" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
    </language>
  </registry>
  <node concept="2DaZZR" id="4jcZaGcGIN2" />
  <node concept="2wDNrl" id="10LywHcMGPf">
    <property role="TrG5h" value="Debugger" />
    <property role="2XNbzY" value="FBME Debugger" />
    <node concept="2XrIbr" id="10LywHcMT1w" role="2XNbBy">
      <property role="TrG5h" value="addPanel" />
      <node concept="3cqZAl" id="10LywHcMT1x" role="3clF45" />
      <node concept="3clFbS" id="10LywHcMT1y" role="3clF47">
        <node concept="3clFbF" id="3QRZI1v4eOV" role="3cqZAp">
          <node concept="2OqwBi" id="3QRZI1v4fk7" role="3clFbG">
            <node concept="2OqwBi" id="3QRZI1v4eUV" role="2Oq$k0">
              <node concept="2WthIp" id="3QRZI1v4eOU" role="2Oq$k0" />
              <node concept="2BZ7hE" id="3QRZI1v4f6l" role="2OqNvi">
                <ref role="2WH_rO" node="3QRZI1v49IF" resolve="panels" />
              </node>
            </node>
            <node concept="liA8E" id="3QRZI1v4guJ" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.put(java.lang.Object,java.lang.Object)" resolve="put" />
              <node concept="37vLTw" id="3QRZI1v4gAA" role="37wK5m">
                <ref role="3cqZAo" node="3QRZI1v4e3$" resolve="trace" />
              </node>
              <node concept="37vLTw" id="3QRZI1v4h25" role="37wK5m">
                <ref role="3cqZAo" node="3QRZI1v4e4B" resolve="panel" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3QRZI1v4e3$" role="3clF46">
        <property role="TrG5h" value="declaration" />
        <node concept="3uibUv" id="3QRZI1v4e3z" role="1tU5fm">
          <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
        </node>
      </node>
      <node concept="37vLTG" id="3QRZI1v4e4B" role="3clF46">
        <property role="TrG5h" value="panel" />
        <node concept="3uibUv" id="3QRZI1v4eC8" role="1tU5fm">
          <ref role="3uigEE" to="7zqy:~DebuggerPanel" resolve="DebuggerPanel" />
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="3iKHL5MqMkI" role="2XNbBy">
      <property role="TrG5h" value="getPanel" />
      <node concept="3uibUv" id="3iKHL5MqNwU" role="3clF45">
        <ref role="3uigEE" to="7zqy:~DebuggerPanel" resolve="DebuggerPanel" />
      </node>
      <node concept="3clFbS" id="3iKHL5MqMkK" role="3clF47">
        <node concept="3cpWs6" id="3iKHL5MqNQk" role="3cqZAp">
          <node concept="2OqwBi" id="3QRZI1v4iFQ" role="3cqZAk">
            <node concept="2OqwBi" id="3QRZI1v4ii8" role="2Oq$k0">
              <node concept="2WthIp" id="3QRZI1v4ieQ" role="2Oq$k0" />
              <node concept="2BZ7hE" id="3QRZI1v4it$" role="2OqNvi">
                <ref role="2WH_rO" node="3QRZI1v49IF" resolve="panels" />
              </node>
            </node>
            <node concept="liA8E" id="3QRZI1v4k9f" role="2OqNvi">
              <ref role="37wK5l" to="33ny:~Map.get(java.lang.Object)" resolve="get" />
              <node concept="37vLTw" id="3QRZI1v4kko" role="37wK5m">
                <ref role="3cqZAo" node="3QRZI1v4iaT" resolve="trace" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3QRZI1v4iaT" role="3clF46">
        <property role="TrG5h" value="declaration" />
        <node concept="3uibUv" id="3QRZI1v4iaS" role="1tU5fm">
          <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
        </node>
      </node>
    </node>
    <node concept="2XrIbr" id="10LywHcMPlf" role="2XNbBy">
      <property role="TrG5h" value="findDevices" />
      <node concept="3clFbS" id="10LywHcMPlg" role="3clF47">
        <node concept="1X3_iC" id="6OU$kxAprd9" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="10LywHcMPlh" role="8Wnug">
            <node concept="3cpWsn" id="10LywHcMPli" role="3cpWs9">
              <property role="TrG5h" value="debugger" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="10LywHcMPlj" role="1tU5fm">
                <ref role="3uigEE" to="flki:~Debugger" resolve="Debugger" />
              </node>
              <node concept="2OqwBi" id="10LywHcMPlk" role="33vP2m">
                <node concept="liA8E" id="10LywHcMPlm" role="2OqNvi">
                  <ref role="37wK5l" to="flki:~Debugger$Companion.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                  <node concept="2OqwBi" id="10LywHcMPln" role="37wK5m">
                    <node concept="2WthIp" id="10LywHcMPlo" role="2Oq$k0" />
                    <node concept="2BZ7hE" id="10LywHcMPlp" role="2OqNvi">
                      <ref role="2WH_rO" node="10LywHcMNoA" resolve="mpsProject" />
                    </node>
                  </node>
                </node>
                <node concept="10M0yZ" id="10LywHcMPll" role="2Oq$k0">
                  <ref role="3cqZAo" to="flki:~Debugger.Companion" resolve="Companion" />
                  <ref role="1PxDUh" to="flki:~Debugger" resolve="Debugger" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="10LywHcMPlq" role="3cqZAp" />
        <node concept="1X3_iC" id="6OU$kxApsr7" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="10LywHcMPlr" role="8Wnug">
            <node concept="2OqwBi" id="10LywHcMPls" role="3clFbG">
              <node concept="2ShNRf" id="10LywHcMPlt" role="2Oq$k0">
                <node concept="YeOm9" id="10LywHcMPlu" role="2ShVmc">
                  <node concept="1Y3b0j" id="10LywHcMPlv" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <property role="373rjd" value="true" />
                    <ref role="1Y3XeK" to="xygl:~Task$Backgroundable" resolve="Backgroundable" />
                    <ref role="37wK5l" to="xygl:~Task$Backgroundable.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String)" resolve="Backgroundable" />
                    <node concept="312cEg" id="10LywHcMPlw" role="jymVt">
                      <property role="TrG5h" value="deviceDeclarations" />
                      <node concept="3Tm6S6" id="10LywHcMPlx" role="1B3o_S" />
                      <node concept="3uibUv" id="10LywHcMPly" role="1tU5fm">
                        <ref role="3uigEE" to="33ny:~Set" resolve="Set" />
                        <node concept="3uibUv" id="10LywHcMPlz" role="11_B2D">
                          <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                        </node>
                      </node>
                      <node concept="2ShNRf" id="10LywHcMPl$" role="33vP2m">
                        <node concept="1pGfFk" id="10LywHcMPl_" role="2ShVmc">
                          <property role="373rjd" value="true" />
                          <ref role="37wK5l" to="33ny:~HashSet.&lt;init&gt;()" resolve="HashSet" />
                        </node>
                      </node>
                    </node>
                    <node concept="2tJIrI" id="10LywHcMPlA" role="jymVt" />
                    <node concept="3clFb_" id="10LywHcMPlB" role="jymVt">
                      <property role="TrG5h" value="onFinished" />
                      <node concept="3Tm1VV" id="10LywHcMPlC" role="1B3o_S" />
                      <node concept="3cqZAl" id="10LywHcMPlD" role="3clF45" />
                      <node concept="3clFbS" id="10LywHcMPlE" role="3clF47">
                        <node concept="1X3_iC" id="3CUpLe59Nci" role="lGtFl">
                          <property role="3V$3am" value="statement" />
                          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
                          <node concept="3clFbF" id="5wVFqQXy61u" role="8Wnug">
                            <node concept="2OqwBi" id="5wVFqQXy7cW" role="3clFbG">
                              <node concept="2OqwBi" id="5wVFqQXy61w" role="2Oq$k0">
                                <node concept="2OqwBi" id="5wVFqQXy61x" role="2Oq$k0">
                                  <node concept="2WthIp" id="5wVFqQXy61y" role="2Oq$k0" />
                                  <node concept="2BZ7hE" id="5wVFqQXy61z" role="2OqNvi">
                                    <ref role="2WH_rO" node="10LywHcMNoA" resolve="mpsProject" />
                                  </node>
                                </node>
                                <node concept="liA8E" id="5wVFqQXy61$" role="2OqNvi">
                                  <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                                </node>
                              </node>
                              <node concept="liA8E" id="5wVFqQXy82V" role="2OqNvi">
                                <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                                <node concept="1bVj0M" id="5wVFqQXy8Ms" role="37wK5m">
                                  <node concept="3clFbS" id="5wVFqQXy8Mt" role="1bW5cS">
                                    <node concept="3clFbF" id="10LywHcMPlF" role="3cqZAp">
                                      <node concept="2OqwBi" id="10LywHcMPlG" role="3clFbG">
                                        <node concept="37vLTw" id="10LywHcMPlH" role="2Oq$k0">
                                          <ref role="3cqZAo" node="10LywHcMPli" resolve="debugger" />
                                        </node>
                                        <node concept="liA8E" id="10LywHcMPlI" role="2OqNvi">
                                          <ref role="37wK5l" to="flki:~Debugger.addDevices(java.util.Set)" resolve="addDevices" />
                                          <node concept="37vLTw" id="10LywHcMPlJ" role="37wK5m">
                                            <ref role="3cqZAo" node="10LywHcMPlw" resolve="deviceDeclarations" />
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
                        <node concept="3clFbF" id="10LywHcMPlK" role="3cqZAp">
                          <node concept="3nyPlj" id="10LywHcMPlL" role="3clFbG">
                            <ref role="37wK5l" to="xygl:~Task.onFinished()" resolve="onFinished" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="10LywHcMPlM" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="10LywHcMPlN" role="jymVt" />
                    <node concept="3Tm1VV" id="10LywHcMPlO" role="1B3o_S" />
                    <node concept="3clFb_" id="10LywHcMPlP" role="jymVt">
                      <property role="TrG5h" value="run" />
                      <node concept="3Tm1VV" id="10LywHcMPlQ" role="1B3o_S" />
                      <node concept="3cqZAl" id="10LywHcMPlR" role="3clF45" />
                      <node concept="37vLTG" id="10LywHcMPlS" role="3clF46">
                        <property role="TrG5h" value="progressIndicator" />
                        <node concept="3uibUv" id="10LywHcMPlT" role="1tU5fm">
                          <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="10LywHcMPlU" role="3clF47">
                        <node concept="3clFbF" id="10LywHcMPlV" role="3cqZAp">
                          <node concept="2OqwBi" id="10LywHcMPlW" role="3clFbG">
                            <node concept="2OqwBi" id="10LywHcMPlX" role="2Oq$k0">
                              <node concept="2OqwBi" id="10LywHcMPlY" role="2Oq$k0">
                                <node concept="2WthIp" id="10LywHcMPlZ" role="2Oq$k0" />
                                <node concept="2BZ7hE" id="10LywHcMPm0" role="2OqNvi">
                                  <ref role="2WH_rO" node="10LywHcMNoA" resolve="mpsProject" />
                                </node>
                              </node>
                              <node concept="liA8E" id="10LywHcMPm1" role="2OqNvi">
                                <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                              </node>
                            </node>
                            <node concept="liA8E" id="10LywHcMPm2" role="2OqNvi">
                              <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                              <node concept="1bVj0M" id="10LywHcMPm3" role="37wK5m">
                                <node concept="3clFbS" id="10LywHcMPm4" role="1bW5cS">
                                  <node concept="3cpWs8" id="10LywHcMPm5" role="3cqZAp">
                                    <node concept="3cpWsn" id="10LywHcMPm6" role="3cpWs9">
                                      <property role="TrG5h" value="findUsagesFacade" />
                                      <node concept="3uibUv" id="10LywHcMPm7" role="1tU5fm">
                                        <ref role="3uigEE" to="lui2:~FindUsagesFacade" resolve="FindUsagesFacade" />
                                      </node>
                                      <node concept="2YIFZM" id="10LywHcMPm8" role="33vP2m">
                                        <ref role="37wK5l" to="lui2:~FindUsagesFacade.getInstance()" resolve="getInstance" />
                                        <ref role="1Pybhc" to="lui2:~FindUsagesFacade" resolve="FindUsagesFacade" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbH" id="10LywHcMPm9" role="3cqZAp" />
                                  <node concept="3cpWs8" id="10LywHcMPma" role="3cqZAp">
                                    <node concept="3cpWsn" id="10LywHcMPmb" role="3cpWs9">
                                      <property role="TrG5h" value="progressMonitor" />
                                      <node concept="3uibUv" id="10LywHcMPmc" role="1tU5fm">
                                        <ref role="3uigEE" to="mk8z:~ProgressMonitorAdapter" resolve="ProgressMonitorAdapter" />
                                      </node>
                                      <node concept="2ShNRf" id="10LywHcMPmd" role="33vP2m">
                                        <node concept="1pGfFk" id="10LywHcMPme" role="2ShVmc">
                                          <property role="373rjd" value="true" />
                                          <ref role="37wK5l" to="mk8z:~ProgressMonitorAdapter.&lt;init&gt;(com.intellij.openapi.progress.ProgressIndicator)" resolve="ProgressMonitorAdapter" />
                                          <node concept="37vLTw" id="10LywHcMPmf" role="37wK5m">
                                            <ref role="3cqZAo" node="10LywHcMPlS" resolve="progressIndicator" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="10LywHcMPmg" role="3cqZAp">
                                    <node concept="2OqwBi" id="10LywHcMPmh" role="3clFbG">
                                      <node concept="37vLTw" id="10LywHcMPmi" role="2Oq$k0">
                                        <ref role="3cqZAo" node="10LywHcMPm6" resolve="findUsagesFacade" />
                                      </node>
                                      <node concept="liA8E" id="10LywHcMPmj" role="2OqNvi">
                                        <ref role="37wK5l" to="lui2:~FindUsagesFacade.findInstances(org.jetbrains.mps.openapi.module.SearchScope,java.util.Set,boolean,org.jetbrains.mps.openapi.util.Consumer,org.jetbrains.mps.openapi.util.ProgressMonitor)" resolve="findInstances" />
                                        <node concept="2OqwBi" id="10LywHcMPmk" role="37wK5m">
                                          <node concept="2OqwBi" id="10LywHcMPml" role="2Oq$k0">
                                            <node concept="2WthIp" id="10LywHcMPmm" role="2Oq$k0" />
                                            <node concept="2BZ7hE" id="10LywHcMPmn" role="2OqNvi">
                                              <ref role="2WH_rO" node="10LywHcMNoA" resolve="mpsProject" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="10LywHcMPmo" role="2OqNvi">
                                            <ref role="37wK5l" to="z1c4:~Project.getScope()" resolve="getScope" />
                                          </node>
                                        </node>
                                        <node concept="2YIFZM" id="10LywHcMPmp" role="37wK5m">
                                          <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
                                          <ref role="37wK5l" to="33ny:~Collections.singleton(java.lang.Object)" resolve="singleton" />
                                          <node concept="35c_gC" id="10LywHcMPmq" role="37wK5m">
                                            <ref role="35c_gD" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
                                          </node>
                                        </node>
                                        <node concept="3clFbT" id="10LywHcMPmr" role="37wK5m" />
                                        <node concept="2ShNRf" id="10LywHcMPms" role="37wK5m">
                                          <node concept="YeOm9" id="10LywHcMPmt" role="2ShVmc">
                                            <node concept="1Y3b0j" id="10LywHcMPmu" role="YeSDq">
                                              <property role="2bfB8j" value="true" />
                                              <property role="373rjd" value="true" />
                                              <ref role="1Y3XeK" to="yyf4:~Consumer" resolve="Consumer" />
                                              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                              <node concept="3Tm1VV" id="10LywHcMPmv" role="1B3o_S" />
                                              <node concept="3clFb_" id="10LywHcMPmw" role="jymVt">
                                                <property role="TrG5h" value="consume" />
                                                <node concept="3Tm1VV" id="10LywHcMPmx" role="1B3o_S" />
                                                <node concept="3cqZAl" id="10LywHcMPmy" role="3clF45" />
                                                <node concept="37vLTG" id="10LywHcMPmz" role="3clF46">
                                                  <property role="TrG5h" value="node" />
                                                  <node concept="3uibUv" id="10LywHcMPm$" role="1tU5fm">
                                                    <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                                  </node>
                                                </node>
                                                <node concept="3clFbS" id="10LywHcMPm_" role="3clF47">
                                                  <node concept="3cpWs8" id="10LywHcMPmA" role="3cqZAp">
                                                    <node concept="3cpWsn" id="10LywHcMPmB" role="3cpWs9">
                                                      <property role="TrG5h" value="platformRepo" />
                                                      <node concept="3uibUv" id="10LywHcMPmC" role="1tU5fm">
                                                        <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
                                                      </node>
                                                      <node concept="2YIFZM" id="10LywHcMPmD" role="33vP2m">
                                                        <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
                                                        <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                                                        <node concept="2OqwBi" id="10LywHcN1yh" role="37wK5m">
                                                          <node concept="2WthIp" id="10LywHcN1yk" role="2Oq$k0">
                                                            <ref role="32nkFo" node="10LywHcMGPf" resolve="Debugger" />
                                                          </node>
                                                          <node concept="2BZ7hE" id="10LywHcN1ym" role="2OqNvi">
                                                            <ref role="2WH_rO" node="10LywHcMNoA" resolve="mpsProject" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3cpWs8" id="10LywHcMPmH" role="3cqZAp">
                                                    <node concept="3cpWsn" id="10LywHcMPmI" role="3cpWs9">
                                                      <property role="TrG5h" value="device" />
                                                      <node concept="2OqwBi" id="10LywHcMPmJ" role="33vP2m">
                                                        <node concept="37vLTw" id="10LywHcMPmK" role="2Oq$k0">
                                                          <ref role="3cqZAo" node="10LywHcMPmB" resolve="platformRepo" />
                                                        </node>
                                                        <node concept="liA8E" id="10LywHcMPmL" role="2OqNvi">
                                                          <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                                          <node concept="37vLTw" id="10LywHcMPmM" role="37wK5m">
                                                            <ref role="3cqZAo" node="10LywHcMPmz" resolve="node" />
                                                          </node>
                                                          <node concept="3VsKOn" id="10LywHcMPmN" role="37wK5m">
                                                            <ref role="3VsUkX" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                                                          </node>
                                                        </node>
                                                      </node>
                                                      <node concept="3uibUv" id="10LywHcMPmO" role="1tU5fm">
                                                        <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                  <node concept="3clFbF" id="10LywHcMPmP" role="3cqZAp">
                                                    <node concept="2OqwBi" id="10LywHcMPmQ" role="3clFbG">
                                                      <node concept="37vLTw" id="10LywHcMPmR" role="2Oq$k0">
                                                        <ref role="3cqZAo" node="10LywHcMPlw" resolve="deviceDeclarations" />
                                                      </node>
                                                      <node concept="liA8E" id="10LywHcMPmS" role="2OqNvi">
                                                        <ref role="37wK5l" to="33ny:~Set.add(java.lang.Object)" resolve="add" />
                                                        <node concept="37vLTw" id="10LywHcMPmT" role="37wK5m">
                                                          <ref role="3cqZAo" node="10LywHcMPmI" resolve="device" />
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="2AHcQZ" id="10LywHcMPmU" role="2AJF6D">
                                                  <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                                </node>
                                              </node>
                                              <node concept="3uibUv" id="10LywHcMPmV" role="2Ghqu4">
                                                <ref role="3uigEE" to="mhbf:~SNode" resolve="SNode" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="37vLTw" id="10LywHcMPmW" role="37wK5m">
                                          <ref role="3cqZAo" node="10LywHcMPmb" resolve="progressMonitor" />
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
                      <node concept="2AHcQZ" id="10LywHcMPmX" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="10LywHcMPmY" role="37wK5m">
                      <node concept="2OqwBi" id="10LywHcMZMB" role="2Oq$k0">
                        <node concept="2WthIp" id="10LywHcMZME" role="2Oq$k0">
                          <ref role="32nkFo" node="10LywHcMGPf" resolve="Debugger" />
                        </node>
                        <node concept="2BZ7hE" id="10LywHcMZMG" role="2OqNvi">
                          <ref role="2WH_rO" node="10LywHcMNoA" resolve="mpsProject" />
                        </node>
                      </node>
                      <node concept="liA8E" id="10LywHcMPn2" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~MPSProject.getProject()" resolve="getProject" />
                      </node>
                    </node>
                    <node concept="Xl_RD" id="10LywHcMPn3" role="37wK5m">
                      <property role="Xl_RC" value="Find devices" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="10LywHcMPn4" role="2OqNvi">
                <ref role="37wK5l" to="xygl:~Task.queue()" resolve="queue" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="10LywHcMPn5" role="3clF45" />
    </node>
    <node concept="2BZ0e9" id="3QRZI1v49IF" role="2XNbBz">
      <property role="TrG5h" value="panels" />
      <node concept="3Tm6S6" id="3QRZI1v4bdJ" role="1B3o_S" />
      <node concept="3uibUv" id="3QRZI1v49Qx" role="1tU5fm">
        <ref role="3uigEE" to="33ny:~Map" resolve="Map" />
        <node concept="3uibUv" id="3QRZI1v4afm" role="11_B2D">
          <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
        </node>
        <node concept="3uibUv" id="3QRZI1v4av6" role="11_B2D">
          <ref role="3uigEE" to="7zqy:~DebuggerPanel" resolve="DebuggerPanel" />
        </node>
      </node>
      <node concept="2ShNRf" id="71aix_tjThL" role="33vP2m">
        <node concept="1pGfFk" id="71aix_tkCVi" role="2ShVmc">
          <property role="373rjd" value="true" />
          <ref role="37wK5l" to="33ny:~HashMap.&lt;init&gt;()" resolve="HashMap" />
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="3DiEZ8TMy35">
    <property role="TrG5h" value="Debug_DisableWatching" />
    <property role="2uzpH1" value="Disable Watching for Resource" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="2S4$dB" id="3DiEZ8TMy36" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="3DiEZ8TMy37" role="1B3o_S" />
      <node concept="1oajcY" id="3DiEZ8TMy38" role="1oa70y" />
      <node concept="3Tqbb2" id="3DiEZ8TMy39" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="3DiEZ8TMy3a" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="3DiEZ8TMy3b" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6Vznkw4idVp" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6Vznkw4idVq" role="1oa70y" />
    </node>
    <node concept="tnohg" id="3DiEZ8TMy3c" role="tncku">
      <node concept="3clFbS" id="3DiEZ8TMy3d" role="2VODD2">
        <node concept="3cpWs8" id="3DiEZ8TMy3n" role="3cqZAp">
          <node concept="3cpWsn" id="3DiEZ8TMy3o" role="3cpWs9">
            <property role="TrG5h" value="network" />
            <node concept="3uibUv" id="19RKY2xGaPY" role="1tU5fm">
              <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
            </node>
            <node concept="2OqwBi" id="19RKY2xGc7j" role="33vP2m">
              <node concept="2OqwBi" id="19RKY2xGbCn" role="2Oq$k0">
                <node concept="2OqwBi" id="19RKY2xGbcn" role="2Oq$k0">
                  <node concept="2WthIp" id="19RKY2xGaUc" role="2Oq$k0" />
                  <node concept="1DTwFV" id="19RKY2xGbvs" role="2OqNvi">
                    <ref role="2WH_rO" node="3DiEZ8TMy3a" resolve="cell" />
                  </node>
                </node>
                <node concept="liA8E" id="19RKY2xGc15" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
                </node>
              </node>
              <node concept="liA8E" id="19RKY2xGcx1" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6SLp5w3Jcuv" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK_INSTANCE" resolve="NETWORK_INSTANCE" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3DiEZ8TMy3t" role="3cqZAp">
          <node concept="3cpWsn" id="3DiEZ8TMy3u" role="3cpWs9">
            <property role="TrG5h" value="manager" />
            <node concept="3uibUv" id="6SLp5w3Jc4D" role="1tU5fm">
              <ref role="3uigEE" to="ek6x:~InspectionManager" resolve="InspectionManager" />
            </node>
            <node concept="2YIFZM" id="3DiEZ8TMy3w" role="33vP2m">
              <ref role="1Pybhc" to="ek6x:~InspectionManagerImpl" resolve="InspectionManagerImpl" />
              <ref role="37wK5l" to="ek6x:~InspectionManagerImpl.getInstance(jetbrains.mps.openapi.editor.EditorComponent)" resolve="getInstance" />
              <node concept="2OqwBi" id="3DiEZ8TMy3x" role="37wK5m">
                <node concept="liA8E" id="3DiEZ8TMy3y" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getEditorComponent()" resolve="getEditorComponent" />
                </node>
                <node concept="2OqwBi" id="3DiEZ8TMy3z" role="2Oq$k0">
                  <node concept="2WthIp" id="3DiEZ8TMy3$" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3DiEZ8TMy3_" role="2OqNvi">
                    <ref role="2WH_rO" node="3DiEZ8TMy3a" resolve="cell" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3DiEZ8TMB_2" role="3cqZAp">
          <node concept="2OqwBi" id="3DiEZ8TMBR6" role="3clFbG">
            <node concept="37vLTw" id="3DiEZ8TMB_0" role="2Oq$k0">
              <ref role="3cqZAo" node="3DiEZ8TMy3u" resolve="manager" />
            </node>
            <node concept="liA8E" id="3DiEZ8TMD_G" role="2OqNvi">
              <ref role="37wK5l" to="ek6x:~InspectionManager.disposeInspector(org.fbme.lib.iec61499.instances.NetworkInstance)" resolve="disposeInspector" />
              <node concept="37vLTw" id="3DiEZ8TMDAT" role="37wK5m">
                <ref role="3cqZAo" node="3DiEZ8TMy3o" resolve="network" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="3DiEZ8TMy3X" role="tmbBb">
      <node concept="3clFbS" id="3DiEZ8TMy3Y" role="2VODD2">
        <node concept="3clFbF" id="19RKY2xG30l" role="3cqZAp">
          <node concept="1Wc70l" id="19RKY2xG51z" role="3clFbG">
            <node concept="2OqwBi" id="19RKY2xG470" role="3uHU7B">
              <node concept="2OqwBi" id="19RKY2xG3so" role="2Oq$k0">
                <node concept="2WthIp" id="19RKY2xG30j" role="2Oq$k0" />
                <node concept="3gHZIF" id="19RKY2xG3Sx" role="2OqNvi">
                  <ref role="2WH_rO" node="3DiEZ8TMy36" resolve="node" />
                </node>
              </node>
              <node concept="1mIQ4w" id="19RKY2xG4u$" role="2OqNvi">
                <node concept="chp4Y" id="19RKY2xG4B5" role="cj9EA">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="19RKY2xG9_2" role="3uHU7w">
              <node concept="10Nm6u" id="19RKY2xG9_M" role="3uHU7w" />
              <node concept="2OqwBi" id="19RKY2xG7hE" role="3uHU7B">
                <node concept="2ShNRf" id="19RKY2xG0p_" role="2Oq$k0">
                  <node concept="1pGfFk" id="19RKY2xG1DI" role="2ShVmc">
                    <ref role="37wK5l" node="19RKY2xF00g" />
                    <node concept="1PxgMI" id="19RKY2xG5Ei" role="37wK5m">
                      <node concept="chp4Y" id="19RKY2xG5JR" role="3oSUPX">
                        <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                      </node>
                      <node concept="2OqwBi" id="19RKY2xG2hM" role="1m5AlR">
                        <node concept="2WthIp" id="19RKY2xG1Qn" role="2Oq$k0" />
                        <node concept="3gHZIF" id="19RKY2xG2KC" role="2OqNvi">
                          <ref role="2WH_rO" node="3DiEZ8TMy36" resolve="node" />
                        </node>
                      </node>
                    </node>
                    <node concept="2OqwBi" id="19RKY2xG6x3" role="37wK5m">
                      <node concept="2WthIp" id="19RKY2xG64D" role="2Oq$k0" />
                      <node concept="1DTwFV" id="19RKY2xG6Y8" role="2OqNvi">
                        <ref role="2WH_rO" node="3DiEZ8TMy3a" resolve="cell" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="6Vznkw4iewx" role="37wK5m">
                      <node concept="2WthIp" id="6Vznkw4iebL" role="2Oq$k0" />
                      <node concept="1DTwFV" id="6Vznkw4if3A" role="2OqNvi">
                        <ref role="2WH_rO" node="6Vznkw4idVp" resolve="project" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="19RKY2xG7x0" role="2OqNvi">
                  <ref role="37wK5l" node="19RKY2xFaZl" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="3DiEZ8TMaHe">
    <property role="TrG5h" value="Debug_EnableWatching" />
    <property role="2uzpH1" value="Enable Watching for Resource" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="2S4$dB" id="3DiEZ8TMaKP" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="3DiEZ8TMaKQ" role="1B3o_S" />
      <node concept="1oajcY" id="3DiEZ8TMaKR" role="1oa70y" />
      <node concept="3Tqbb2" id="3DiEZ8TMaH_" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="3DiEZ8TMdTf" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="3DiEZ8TMdTg" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6Vznkw4ifuy" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6Vznkw4ifuz" role="1oa70y" />
    </node>
    <node concept="tnohg" id="3DiEZ8TMaHf" role="tncku">
      <node concept="3clFbS" id="3DiEZ8TMaHg" role="2VODD2">
        <node concept="3cpWs8" id="19RKY2xGpue" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xGpuf" role="3cpWs9">
            <property role="TrG5h" value="actions" />
            <node concept="3uibUv" id="19RKY2xGpqN" role="1tU5fm">
              <ref role="3uigEE" node="5PjcHHGcAKb" />
            </node>
            <node concept="2ShNRf" id="19RKY2xGpug" role="33vP2m">
              <node concept="1pGfFk" id="19RKY2xGpuh" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" />
                <node concept="1PxgMI" id="19RKY2xGpui" role="37wK5m">
                  <node concept="chp4Y" id="19RKY2xGpuj" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="19RKY2xGpuk" role="1m5AlR">
                    <node concept="2WthIp" id="19RKY2xGpul" role="2Oq$k0" />
                    <node concept="3gHZIF" id="19RKY2xGpum" role="2OqNvi">
                      <ref role="2WH_rO" node="3DiEZ8TMaKP" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="19RKY2xGpun" role="37wK5m">
                  <node concept="2WthIp" id="19RKY2xGpuo" role="2Oq$k0" />
                  <node concept="1DTwFV" id="19RKY2xGpup" role="2OqNvi">
                    <ref role="2WH_rO" node="3DiEZ8TMdTf" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vznkw4ihtC" role="37wK5m">
                  <node concept="2WthIp" id="6Vznkw4ihtD" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6Vznkw4ihtE" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4ifuy" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="19RKY2xGq65" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xGq66" role="3cpWs9">
            <property role="TrG5h" value="networkInstance" />
            <node concept="3uibUv" id="19RKY2xGq5s" role="1tU5fm">
              <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
            </node>
            <node concept="2OqwBi" id="19RKY2xGq67" role="33vP2m">
              <node concept="37vLTw" id="19RKY2xGq68" role="2Oq$k0">
                <ref role="3cqZAo" node="19RKY2xGpuf" resolve="actions" />
              </node>
              <node concept="liA8E" id="19RKY2xGq69" role="2OqNvi">
                <ref role="37wK5l" node="19RKY2xFeiO" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyRvckb" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRvckc" role="3cpWs9">
            <property role="TrG5h" value="manager" />
            <node concept="3uibUv" id="6SLp5w3JcQ4" role="1tU5fm">
              <ref role="3uigEE" to="ek6x:~InspectionManager" resolve="InspectionManager" />
            </node>
            <node concept="2YIFZM" id="7eBFChAmu8L" role="33vP2m">
              <ref role="1Pybhc" to="ek6x:~InspectionManagerImpl" resolve="InspectionManagerImpl" />
              <ref role="37wK5l" to="ek6x:~InspectionManagerImpl.getInstance(jetbrains.mps.openapi.editor.EditorComponent)" resolve="getInstance" />
              <node concept="2OqwBi" id="7eBFChAmuCc" role="37wK5m">
                <node concept="liA8E" id="7eBFChAmv6c" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getEditorComponent()" resolve="getEditorComponent" />
                </node>
                <node concept="2OqwBi" id="3DiEZ8TMwWH" role="2Oq$k0">
                  <node concept="2WthIp" id="3DiEZ8TMwWK" role="2Oq$k0" />
                  <node concept="1DTwFV" id="3DiEZ8TMwWM" role="2OqNvi">
                    <ref role="2WH_rO" node="3DiEZ8TMdTf" resolve="cell" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1R4IoyRvdob" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyRvdoc" role="3cpWs9">
            <property role="TrG5h" value="inspector" />
            <node concept="3uibUv" id="6SLp5w3JcUO" role="1tU5fm">
              <ref role="3uigEE" to="ek6x:~NetworkInspector" resolve="NetworkInspector" />
            </node>
            <node concept="2OqwBi" id="1R4IoyRvdod" role="33vP2m">
              <node concept="37vLTw" id="1R4IoyRvdoe" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyRvckc" resolve="manager" />
              </node>
              <node concept="liA8E" id="1R4IoyRvdof" role="2OqNvi">
                <ref role="37wK5l" to="ek6x:~InspectionManager.installInspector(org.fbme.lib.iec61499.instances.NetworkInstance,java.lang.Runnable)" resolve="installInspector" />
                <node concept="37vLTw" id="19RKY2xGt9O" role="37wK5m">
                  <ref role="3cqZAo" node="19RKY2xGq66" resolve="networkInstance" />
                </node>
                <node concept="1bVj0M" id="1R4IoyRvdoh" role="37wK5m">
                  <node concept="3clFbS" id="1R4IoyRvdoi" role="1bW5cS">
                    <node concept="3clFbF" id="1R4IoyRvdoj" role="3cqZAp">
                      <node concept="2OqwBi" id="19RKY2xGtkT" role="3clFbG">
                        <node concept="37vLTw" id="19RKY2xGtdK" role="2Oq$k0">
                          <ref role="3cqZAo" node="19RKY2xGpuf" resolve="actions" />
                        </node>
                        <node concept="liA8E" id="19RKY2xGttl" role="2OqNvi">
                          <ref role="37wK5l" node="19RKY2xFn5W" />
                          <node concept="10Nm6u" id="19RKY2xGtvl" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1R4IoyRvaFp" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xGqWc" role="3clFbG">
            <node concept="liA8E" id="19RKY2xGrau" role="2OqNvi">
              <ref role="37wK5l" node="19RKY2xFn5W" />
              <node concept="37vLTw" id="19RKY2xGtxn" role="37wK5m">
                <ref role="3cqZAo" node="1R4IoyRvdoc" resolve="inspector" />
              </node>
            </node>
            <node concept="37vLTw" id="19RKY2xGqCa" role="2Oq$k0">
              <ref role="3cqZAo" node="19RKY2xGpuf" resolve="actions" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="3DiEZ8TMaLf" role="tmbBb">
      <node concept="3clFbS" id="3DiEZ8TMaLg" role="2VODD2">
        <node concept="3clFbJ" id="19RKY2xGh9Q" role="3cqZAp">
          <node concept="3clFbS" id="19RKY2xGh9S" role="3clFbx">
            <node concept="3cpWs6" id="19RKY2xGh_A" role="3cqZAp">
              <node concept="3clFbT" id="19RKY2xGhA3" role="3cqZAk" />
            </node>
          </node>
          <node concept="3fqX7Q" id="1S4cYrOJc5J" role="3clFbw">
            <node concept="2OqwBi" id="1S4cYrOJc5L" role="3fr31v">
              <node concept="2OqwBi" id="1S4cYrOJc5M" role="2Oq$k0">
                <node concept="2WthIp" id="1S4cYrOJc5N" role="2Oq$k0" />
                <node concept="3gHZIF" id="1S4cYrOJc5O" role="2OqNvi">
                  <ref role="2WH_rO" node="3DiEZ8TMaKP" resolve="node" />
                </node>
              </node>
              <node concept="1mIQ4w" id="1S4cYrOJc5P" role="2OqNvi">
                <node concept="chp4Y" id="1S4cYrOJc5Q" role="cj9EA">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="19RKY2xGjUz" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xGjU$" role="3cpWs9">
            <property role="TrG5h" value="actions" />
            <node concept="3uibUv" id="19RKY2xGjQa" role="1tU5fm">
              <ref role="3uigEE" node="5PjcHHGcAKb" />
            </node>
            <node concept="2ShNRf" id="19RKY2xGjU_" role="33vP2m">
              <node concept="1pGfFk" id="19RKY2xGjUA" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" />
                <node concept="1PxgMI" id="19RKY2xGjUB" role="37wK5m">
                  <node concept="chp4Y" id="19RKY2xGjUC" role="3oSUPX">
                    <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="19RKY2xGjUD" role="1m5AlR">
                    <node concept="2WthIp" id="19RKY2xGjUE" role="2Oq$k0" />
                    <node concept="3gHZIF" id="19RKY2xGjUF" role="2OqNvi">
                      <ref role="2WH_rO" node="3DiEZ8TMaKP" resolve="node" />
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="19RKY2xGjUG" role="37wK5m">
                  <node concept="2WthIp" id="19RKY2xGjUH" role="2Oq$k0" />
                  <node concept="1DTwFV" id="19RKY2xGjUI" role="2OqNvi">
                    <ref role="2WH_rO" node="3DiEZ8TMdTf" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vznkw4igQc" role="37wK5m">
                  <node concept="2WthIp" id="6Vznkw4igrf" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6Vznkw4ihjU" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4ifuy" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="19RKY2xGdGd" role="3cqZAp">
          <node concept="1Wc70l" id="19RKY2xGl7l" role="3clFbG">
            <node concept="3y3z36" id="19RKY2xGo2O" role="3uHU7B">
              <node concept="10Nm6u" id="19RKY2xGoiD" role="3uHU7w" />
              <node concept="2OqwBi" id="19RKY2xGlEB" role="3uHU7B">
                <node concept="37vLTw" id="19RKY2xGln_" role="2Oq$k0">
                  <ref role="3cqZAo" node="19RKY2xGjU$" resolve="actions" />
                </node>
                <node concept="liA8E" id="19RKY2xGnHD" role="2OqNvi">
                  <ref role="37wK5l" node="19RKY2xFeiO" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="19RKY2xGkJF" role="3uHU7w">
              <node concept="10Nm6u" id="19RKY2xGkK9" role="3uHU7w" />
              <node concept="2OqwBi" id="19RKY2xGk8z" role="3uHU7B">
                <node concept="37vLTw" id="19RKY2xGjUJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="19RKY2xGjU$" resolve="actions" />
                </node>
                <node concept="liA8E" id="19RKY2xGkzx" role="2OqNvi">
                  <ref role="37wK5l" node="19RKY2xFaZl" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="5PjcHHGgRM$">
    <property role="TrG5h" value="Debug_UnwatchECCState" />
    <property role="2uzpH1" value="Stop Watching for ECC Internal State" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="2XrIbr" id="5PjcHHGgRM_" role="32lrUH">
      <property role="TrG5h" value="resource" />
      <node concept="3Tm6S6" id="5PjcHHGgRMA" role="1B3o_S" />
      <node concept="3Tqbb2" id="5PjcHHGgRMB" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
      </node>
      <node concept="3clFbS" id="5PjcHHGgRMC" role="3clF47">
        <node concept="3cpWs6" id="5PjcHHGgRMD" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGgRME" role="3cqZAk">
            <node concept="2OqwBi" id="5PjcHHGgRMF" role="2Oq$k0">
              <node concept="2WthIp" id="5PjcHHGgRMG" role="2Oq$k0" />
              <node concept="3gHZIF" id="5PjcHHGgRMH" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGgRML" resolve="node" />
              </node>
            </node>
            <node concept="2Xjw5R" id="5PjcHHGgRMI" role="2OqNvi">
              <node concept="1xMEDy" id="5PjcHHGgRMJ" role="1xVPHs">
                <node concept="chp4Y" id="5PjcHHGgRMK" role="ri$Ld">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="5PjcHHGgRML" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="5PjcHHGgRMM" role="1B3o_S" />
      <node concept="1oajcY" id="5PjcHHGgRMN" role="1oa70y" />
      <node concept="3Tqbb2" id="5PjcHHGgRMO" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="5PjcHHGgRMP" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="5PjcHHGgRMQ" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6Vznkw4ijok" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6Vznkw4ijol" role="1oa70y" />
    </node>
    <node concept="tnohg" id="5PjcHHGgRMR" role="tncku">
      <node concept="3clFbS" id="5PjcHHGgRMS" role="2VODD2">
        <node concept="3clFbF" id="5PjcHHGgRMT" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xGw9Y" role="3clFbG">
            <node concept="2ShNRf" id="19RKY2xGvST" role="2Oq$k0">
              <node concept="1pGfFk" id="19RKY2xGvSU" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" />
                <node concept="2OqwBi" id="19RKY2xGwl_" role="37wK5m">
                  <node concept="2WthIp" id="19RKY2xGwlA" role="2Oq$k0" />
                  <node concept="2XshWL" id="19RKY2xGwlB" role="2OqNvi">
                    <ref role="2WH_rO" node="5PjcHHGgRM_" resolve="resource" />
                  </node>
                </node>
                <node concept="2OqwBi" id="19RKY2xGvSW" role="37wK5m">
                  <node concept="2WthIp" id="19RKY2xGvSX" role="2Oq$k0" />
                  <node concept="1DTwFV" id="19RKY2xGvSY" role="2OqNvi">
                    <ref role="2WH_rO" node="5PjcHHGgRMP" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vznkw4ii0G" role="37wK5m">
                  <node concept="2WthIp" id="6Vznkw4ii0H" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6Vznkw4ikEg" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4ijok" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="19RKY2xGwku" role="2OqNvi">
              <ref role="37wK5l" node="19RKY2xFzs2" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="5PjcHHGgRN1" role="tmbBb">
      <node concept="3clFbS" id="5PjcHHGgRN2" role="2VODD2">
        <node concept="3cpWs8" id="7BKWMw_XFpx" role="3cqZAp">
          <node concept="3cpWsn" id="7BKWMw_XFpy" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="7BKWMw_XFpv" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
            </node>
            <node concept="2OqwBi" id="7BKWMw_XFpz" role="33vP2m">
              <node concept="2WthIp" id="7BKWMw_XFp$" role="2Oq$k0" />
              <node concept="2XshWL" id="7BKWMw_XFp_" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGgRM_" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5PjcHHGgRN3" role="3cqZAp">
          <node concept="1Wc70l" id="7BKWMw_XGpe" role="3clFbG">
            <node concept="3y3z36" id="7BKWMw_XGUf" role="3uHU7B">
              <node concept="10Nm6u" id="7BKWMw_XH6Y" role="3uHU7w" />
              <node concept="37vLTw" id="7BKWMw_XGzP" role="3uHU7B">
                <ref role="3cqZAo" node="7BKWMw_XFpy" resolve="node" />
              </node>
            </node>
            <node concept="2OqwBi" id="19RKY2xGvoK" role="3uHU7w">
              <node concept="2ShNRf" id="19RKY2xGtNR" role="2Oq$k0">
                <node concept="1pGfFk" id="19RKY2xGv1v" role="2ShVmc">
                  <ref role="37wK5l" node="19RKY2xF00g" />
                  <node concept="37vLTw" id="19RKY2xGv7s" role="37wK5m">
                    <ref role="3cqZAo" node="7BKWMw_XFpy" resolve="node" />
                  </node>
                  <node concept="2OqwBi" id="19RKY2xGvgA" role="37wK5m">
                    <node concept="2WthIp" id="19RKY2xGvgD" role="2Oq$k0" />
                    <node concept="1DTwFV" id="19RKY2xGvgF" role="2OqNvi">
                      <ref role="2WH_rO" node="5PjcHHGgRMP" resolve="cell" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6Vznkw4ihUt" role="37wK5m">
                    <node concept="2WthIp" id="6Vznkw4ihUu" role="2Oq$k0" />
                    <node concept="1DTwFV" id="6Vznkw4ikvg" role="2OqNvi">
                      <ref role="2WH_rO" node="6Vznkw4ijok" resolve="project" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="19RKY2xGvAq" role="2OqNvi">
                <ref role="37wK5l" node="19RKY2xFFjc" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="1S4cYrOLGlI">
    <property role="TrG5h" value="Debug_UnwatchFB" />
    <property role="2uzpH1" value="Stop Watching for Function Block" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="tnohg" id="1S4cYrOLGlJ" role="tncku">
      <node concept="3clFbS" id="1S4cYrOLGlK" role="2VODD2">
        <node concept="3clFbF" id="1S4cYrOLGlL" role="3cqZAp">
          <node concept="2OqwBi" id="1S4cYrOLGlM" role="3clFbG">
            <node concept="2ShNRf" id="1S4cYrOLGlN" role="2Oq$k0">
              <node concept="1pGfFk" id="1S4cYrOLGlO" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" />
                <node concept="2OqwBi" id="1S4cYrOLGlP" role="37wK5m">
                  <node concept="2WthIp" id="1S4cYrOLGlQ" role="2Oq$k0" />
                  <node concept="2XshWL" id="1S4cYrOLGlR" role="2OqNvi">
                    <ref role="2WH_rO" node="1S4cYrOLGmV" resolve="resource" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1S4cYrOLGlS" role="37wK5m">
                  <node concept="2WthIp" id="1S4cYrOLGlT" role="2Oq$k0" />
                  <node concept="1DTwFV" id="1S4cYrOLGlU" role="2OqNvi">
                    <ref role="2WH_rO" node="1S4cYrOLGmT" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vznkw4imQF" role="37wK5m">
                  <node concept="2WthIp" id="6Vznkw4imQI" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6Vznkw4imQK" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4il5N" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1S4cYrOPKav" role="2OqNvi">
              <ref role="37wK5l" node="1S4cYrONxwq" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="1S4cYrOLGlW" role="tmbBb">
      <node concept="3clFbS" id="1S4cYrOLGlX" role="2VODD2">
        <node concept="3cpWs8" id="1S4cYrOLGlY" role="3cqZAp">
          <node concept="3cpWsn" id="1S4cYrOLGlZ" role="3cpWs9">
            <property role="TrG5h" value="presentation" />
            <node concept="3uibUv" id="1S4cYrOLGm0" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~Presentation" resolve="Presentation" />
            </node>
            <node concept="2OqwBi" id="1S4cYrOLGm1" role="33vP2m">
              <node concept="tl45R" id="1S4cYrOLGm2" role="2Oq$k0" />
              <node concept="liA8E" id="1S4cYrOLGm3" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1S4cYrOLGm4" role="3cqZAp">
          <node concept="3cpWsn" id="1S4cYrOLGm5" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="1S4cYrOLGm6" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
            </node>
            <node concept="2OqwBi" id="1S4cYrOLGm7" role="33vP2m">
              <node concept="2WthIp" id="1S4cYrOLGm8" role="2Oq$k0" />
              <node concept="2XshWL" id="1S4cYrOLGm9" role="2OqNvi">
                <ref role="2WH_rO" node="1S4cYrOLGmV" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1S4cYrOLGma" role="3cqZAp">
          <node concept="3clFbS" id="1S4cYrOLGmb" role="3clFbx">
            <node concept="3clFbF" id="1S4cYrOLGmc" role="3cqZAp">
              <node concept="2OqwBi" id="1S4cYrOLGmd" role="3clFbG">
                <node concept="37vLTw" id="1S4cYrOLGme" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S4cYrOLGlZ" resolve="presentation" />
                </node>
                <node concept="liA8E" id="1S4cYrOLGmf" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
                  <node concept="3clFbT" id="1S4cYrOLGmg" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1S4cYrOLGmh" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="1S4cYrOLGmi" role="3clFbw">
            <node concept="10Nm6u" id="1S4cYrOLGmj" role="3uHU7w" />
            <node concept="37vLTw" id="1S4cYrOLGmk" role="3uHU7B">
              <ref role="3cqZAo" node="1S4cYrOLGm5" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1S4cYrOLGml" role="3cqZAp">
          <node concept="3cpWsn" id="1S4cYrOLGmm" role="3cpWs9">
            <property role="TrG5h" value="actions" />
            <node concept="3uibUv" id="1S4cYrOLGmn" role="1tU5fm">
              <ref role="3uigEE" node="5PjcHHGcAKb" />
            </node>
            <node concept="2ShNRf" id="1S4cYrOLGmo" role="33vP2m">
              <node concept="1pGfFk" id="1S4cYrOLGmp" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" />
                <node concept="37vLTw" id="1S4cYrOLGmq" role="37wK5m">
                  <ref role="3cqZAo" node="1S4cYrOLGm5" resolve="node" />
                </node>
                <node concept="2OqwBi" id="1S4cYrOLGmr" role="37wK5m">
                  <node concept="2WthIp" id="1S4cYrOLGms" role="2Oq$k0" />
                  <node concept="1DTwFV" id="1S4cYrOLGmt" role="2OqNvi">
                    <ref role="2WH_rO" node="1S4cYrOLGmT" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vznkw4imj4" role="37wK5m">
                  <node concept="2WthIp" id="6Vznkw4ilV4" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6Vznkw4imJ2" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4il5N" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1S4cYrOLGmu" role="3cqZAp">
          <node concept="3cpWsn" id="1S4cYrOLGmv" role="3cpWs9">
            <property role="TrG5h" value="hasWatchedFB" />
            <node concept="10P_77" id="1S4cYrOLGmw" role="1tU5fm" />
            <node concept="2OqwBi" id="1S4cYrOLGmx" role="33vP2m">
              <node concept="37vLTw" id="1S4cYrOLGmy" role="2Oq$k0">
                <ref role="3cqZAo" node="1S4cYrOLGmm" resolve="actions" />
              </node>
              <node concept="liA8E" id="1S4cYrONwDx" role="2OqNvi">
                <ref role="37wK5l" node="1S4cYrOMDwO" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1S4cYrOLGm$" role="3cqZAp">
          <node concept="3clFbS" id="1S4cYrOLGm_" role="3clFbx">
            <node concept="3clFbF" id="1S4cYrOLGmA" role="3cqZAp">
              <node concept="2OqwBi" id="1S4cYrOLGmB" role="3clFbG">
                <node concept="37vLTw" id="1S4cYrOLGmC" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S4cYrOLGlZ" resolve="presentation" />
                </node>
                <node concept="liA8E" id="1S4cYrOLGmD" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="3cpWs3" id="1S4cYrOLGmE" role="37wK5m">
                    <node concept="Xl_RD" id="1S4cYrOLGmF" role="3uHU7B">
                      <property role="Xl_RC" value="Stop Watching for Function block " />
                    </node>
                    <node concept="2OqwBi" id="74jd4DV$2EA" role="3uHU7w">
                      <node concept="2OqwBi" id="1S4cYrOLGmG" role="2Oq$k0">
                        <node concept="37vLTw" id="1S4cYrOLGmH" role="2Oq$k0">
                          <ref role="3cqZAo" node="1S4cYrOLGmm" resolve="actions" />
                        </node>
                        <node concept="liA8E" id="1S4cYrONwFb" role="2OqNvi">
                          <ref role="37wK5l" node="1S4cYrOMM45" />
                        </node>
                      </node>
                      <node concept="liA8E" id="74jd4DV$31a" role="2OqNvi">
                        <ref role="37wK5l" to="7adg:~Declaration.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1S4cYrOLGmJ" role="3clFbw">
            <ref role="3cqZAo" node="1S4cYrOLGmv" resolve="hasWatchedFB" />
          </node>
        </node>
        <node concept="3clFbF" id="1S4cYrOLGmK" role="3cqZAp">
          <node concept="2OqwBi" id="1S4cYrOLGmL" role="3clFbG">
            <node concept="37vLTw" id="1S4cYrOLGmM" role="2Oq$k0">
              <ref role="3cqZAo" node="1S4cYrOLGlZ" resolve="presentation" />
            </node>
            <node concept="liA8E" id="1S4cYrOLGmN" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
              <node concept="37vLTw" id="1S4cYrOLGmO" role="37wK5m">
                <ref role="3cqZAo" node="1S4cYrOLGmv" resolve="hasWatchedFB" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="1S4cYrOLGmP" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="1S4cYrOLGmQ" role="1B3o_S" />
      <node concept="1oajcY" id="1S4cYrOLGmR" role="1oa70y" />
      <node concept="3Tqbb2" id="1S4cYrOLGmS" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="1S4cYrOLGmT" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="1S4cYrOLGmU" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6Vznkw4il5N" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6Vznkw4il5O" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="1S4cYrOLGmV" role="32lrUH">
      <property role="TrG5h" value="resource" />
      <node concept="3Tm6S6" id="1S4cYrOLGmW" role="1B3o_S" />
      <node concept="3Tqbb2" id="1S4cYrOLGmX" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
      </node>
      <node concept="3clFbS" id="1S4cYrOLGmY" role="3clF47">
        <node concept="3cpWs6" id="1S4cYrOLGmZ" role="3cqZAp">
          <node concept="2OqwBi" id="1S4cYrOLGn0" role="3cqZAk">
            <node concept="2OqwBi" id="1S4cYrOLGn1" role="2Oq$k0">
              <node concept="2WthIp" id="1S4cYrOLGn2" role="2Oq$k0" />
              <node concept="3gHZIF" id="1S4cYrOLGn3" role="2OqNvi">
                <ref role="2WH_rO" node="1S4cYrOLGmP" resolve="node" />
              </node>
            </node>
            <node concept="2Xjw5R" id="1S4cYrOLGn4" role="2OqNvi">
              <node concept="1xMEDy" id="1S4cYrOLGn5" role="1xVPHs">
                <node concept="chp4Y" id="1S4cYrOLGn6" role="ri$Ld">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="5PjcHHGf0WD">
    <property role="TrG5h" value="Debug_UnwatchPort" />
    <property role="2uzpH1" value="Stop Watching for Port" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="tnohg" id="5PjcHHGf0WE" role="tncku">
      <node concept="3clFbS" id="5PjcHHGf0WF" role="2VODD2">
        <node concept="3clFbF" id="19RKY2xG_b5" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xG__l" role="3clFbG">
            <node concept="2ShNRf" id="19RKY2xG_b7" role="2Oq$k0">
              <node concept="1pGfFk" id="19RKY2xG_b8" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" />
                <node concept="2OqwBi" id="19RKY2xG_f_" role="37wK5m">
                  <node concept="2WthIp" id="19RKY2xG_fA" role="2Oq$k0" />
                  <node concept="2XshWL" id="19RKY2xG_fB" role="2OqNvi">
                    <ref role="2WH_rO" node="5PjcHHGf0Xu" resolve="resource" />
                  </node>
                </node>
                <node concept="2OqwBi" id="19RKY2xG_ba" role="37wK5m">
                  <node concept="2WthIp" id="19RKY2xG_bb" role="2Oq$k0" />
                  <node concept="1DTwFV" id="19RKY2xG_bc" role="2OqNvi">
                    <ref role="2WH_rO" node="5PjcHHGf0Xs" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vznkw4ipep" role="37wK5m">
                  <node concept="2WthIp" id="6Vznkw4ioVT" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6Vznkw4ip$u" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4in7l" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="19RKY2xG_KU" role="2OqNvi">
              <ref role="37wK5l" node="19RKY2xFM13" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="5PjcHHGf0WO" role="tmbBb">
      <node concept="3clFbS" id="5PjcHHGf0WP" role="2VODD2">
        <node concept="3cpWs8" id="5PjcHHGf0WQ" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGf0WR" role="3cpWs9">
            <property role="TrG5h" value="presentation" />
            <node concept="3uibUv" id="5PjcHHGf0WS" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~Presentation" resolve="Presentation" />
            </node>
            <node concept="2OqwBi" id="5PjcHHGf0WT" role="33vP2m">
              <node concept="tl45R" id="5PjcHHGf0WU" role="2Oq$k0" />
              <node concept="liA8E" id="5PjcHHGf0WV" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="7BKWMw_XDRy" role="3cqZAp">
          <node concept="3cpWsn" id="7BKWMw_XDRz" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="7BKWMw_XDRv" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
            </node>
            <node concept="2OqwBi" id="7BKWMw_XDR$" role="33vP2m">
              <node concept="2WthIp" id="7BKWMw_XDR_" role="2Oq$k0" />
              <node concept="2XshWL" id="7BKWMw_XDRA" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGf0Xu" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="7BKWMw_XEke" role="3cqZAp">
          <node concept="3clFbS" id="7BKWMw_XEkf" role="3clFbx">
            <node concept="3clFbF" id="7BKWMw_XEkg" role="3cqZAp">
              <node concept="2OqwBi" id="7BKWMw_XEkh" role="3clFbG">
                <node concept="37vLTw" id="7BKWMw_XEki" role="2Oq$k0">
                  <ref role="3cqZAo" node="5PjcHHGf0WR" resolve="presentation" />
                </node>
                <node concept="liA8E" id="7BKWMw_XEkj" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
                  <node concept="3clFbT" id="7BKWMw_XEkk" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="7BKWMw_XEkl" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="7BKWMw_XEkm" role="3clFbw">
            <node concept="10Nm6u" id="7BKWMw_XEkn" role="3uHU7w" />
            <node concept="37vLTw" id="7BKWMw_XEko" role="3uHU7B">
              <ref role="3cqZAo" node="7BKWMw_XDRz" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="19RKY2xGyui" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xGyuj" role="3cpWs9">
            <property role="TrG5h" value="actions" />
            <node concept="3uibUv" id="19RKY2xGyrt" role="1tU5fm">
              <ref role="3uigEE" node="5PjcHHGcAKb" />
            </node>
            <node concept="2ShNRf" id="19RKY2xGyuk" role="33vP2m">
              <node concept="1pGfFk" id="19RKY2xGyul" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" />
                <node concept="37vLTw" id="19RKY2xGyum" role="37wK5m">
                  <ref role="3cqZAo" node="7BKWMw_XDRz" resolve="node" />
                </node>
                <node concept="2OqwBi" id="19RKY2xGyun" role="37wK5m">
                  <node concept="2WthIp" id="19RKY2xGyuo" role="2Oq$k0" />
                  <node concept="1DTwFV" id="19RKY2xGyup" role="2OqNvi">
                    <ref role="2WH_rO" node="5PjcHHGf0Xs" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vznkw4ioqL" role="37wK5m">
                  <node concept="2WthIp" id="6Vznkw4io31" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6Vznkw4ioQp" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4in7l" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5PjcHHGf0WW" role="3cqZAp">
          <node concept="3cpWsn" id="5PjcHHGf0WX" role="3cpWs9">
            <property role="TrG5h" value="hasWatchedPort" />
            <node concept="10P_77" id="5PjcHHGf0WY" role="1tU5fm" />
            <node concept="2OqwBi" id="19RKY2xGyLW" role="33vP2m">
              <node concept="37vLTw" id="19RKY2xGyDh" role="2Oq$k0">
                <ref role="3cqZAo" node="19RKY2xGyuj" resolve="actions" />
              </node>
              <node concept="liA8E" id="1S4cYrOMy9b" role="2OqNvi">
                <ref role="37wK5l" node="19RKY2xF446" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5PjcHHGf0X6" role="3cqZAp">
          <node concept="3clFbS" id="5PjcHHGf0X7" role="3clFbx">
            <node concept="3clFbF" id="5PjcHHGf0X8" role="3cqZAp">
              <node concept="2OqwBi" id="5PjcHHGf0X9" role="3clFbG">
                <node concept="37vLTw" id="5PjcHHGf0Xa" role="2Oq$k0">
                  <ref role="3cqZAo" node="5PjcHHGf0WR" resolve="presentation" />
                </node>
                <node concept="liA8E" id="5PjcHHGf0Xb" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="3cpWs3" id="5PjcHHGf0Xc" role="37wK5m">
                    <node concept="Xl_RD" id="5PjcHHGf0Xd" role="3uHU7B">
                      <property role="Xl_RC" value="Stop Watching for Port " />
                    </node>
                    <node concept="2OqwBi" id="19RKY2xGz8o" role="3uHU7w">
                      <node concept="37vLTw" id="19RKY2xGyWC" role="2Oq$k0">
                        <ref role="3cqZAo" node="19RKY2xGyuj" resolve="actions" />
                      </node>
                      <node concept="liA8E" id="19RKY2xGzho" role="2OqNvi">
                        <ref role="37wK5l" node="19RKY2xFOor" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="5PjcHHGf0Xi" role="3clFbw">
            <ref role="3cqZAo" node="5PjcHHGf0WX" resolve="hasWatchedPort" />
          </node>
        </node>
        <node concept="3clFbF" id="5PjcHHGf0Xj" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGf0Xk" role="3clFbG">
            <node concept="37vLTw" id="5PjcHHGf0Xl" role="2Oq$k0">
              <ref role="3cqZAo" node="5PjcHHGf0WR" resolve="presentation" />
            </node>
            <node concept="liA8E" id="5PjcHHGf0Xm" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
              <node concept="37vLTw" id="5PjcHHGf0Xn" role="37wK5m">
                <ref role="3cqZAo" node="5PjcHHGf0WX" resolve="hasWatchedPort" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="5PjcHHGf0Xo" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="5PjcHHGf0Xp" role="1B3o_S" />
      <node concept="1oajcY" id="5PjcHHGf0Xq" role="1oa70y" />
      <node concept="3Tqbb2" id="5PjcHHGf0Xr" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="5PjcHHGf0Xs" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="5PjcHHGf0Xt" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6Vznkw4in7l" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6Vznkw4in7m" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="5PjcHHGf0Xu" role="32lrUH">
      <property role="TrG5h" value="resource" />
      <node concept="3Tm6S6" id="5PjcHHGf0Xv" role="1B3o_S" />
      <node concept="3Tqbb2" id="5PjcHHGf0Xw" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
      </node>
      <node concept="3clFbS" id="5PjcHHGf0Xx" role="3clF47">
        <node concept="3cpWs6" id="5PjcHHGf0Xy" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGf0Xz" role="3cqZAk">
            <node concept="2OqwBi" id="5PjcHHGf0X$" role="2Oq$k0">
              <node concept="2WthIp" id="5PjcHHGf0X_" role="2Oq$k0" />
              <node concept="3gHZIF" id="5PjcHHGf0XA" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGf0Xo" resolve="node" />
              </node>
            </node>
            <node concept="2Xjw5R" id="5PjcHHGf0XB" role="2OqNvi">
              <node concept="1xMEDy" id="5PjcHHGf0XC" role="1xVPHs">
                <node concept="chp4Y" id="5PjcHHGf0XD" role="ri$Ld">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="6kcQr5w_Vl4">
    <property role="TrG5h" value="Debug_UnwatchSelectedFBs" />
    <property role="2uzpH1" value="Stop Watching for Selected Function Blocks" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="tnohg" id="6kcQr5w_Vl5" role="tncku">
      <node concept="3clFbS" id="6kcQr5w_Vl6" role="2VODD2">
        <node concept="3clFbF" id="6kcQr5w_Vl7" role="3cqZAp">
          <node concept="2OqwBi" id="6kcQr5w_Vl8" role="3clFbG">
            <node concept="2ShNRf" id="6kcQr5w_Vl9" role="2Oq$k0">
              <node concept="1pGfFk" id="6kcQr5w_Vla" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" />
                <node concept="2OqwBi" id="6kcQr5w_Vlb" role="37wK5m">
                  <node concept="2WthIp" id="6kcQr5w_Vlc" role="2Oq$k0" />
                  <node concept="2XshWL" id="6kcQr5w_Vld" role="2OqNvi">
                    <ref role="2WH_rO" node="6kcQr5w_Vlo" resolve="resource" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6kcQr5w_Vle" role="37wK5m">
                  <node concept="2WthIp" id="6kcQr5w_Vlf" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6kcQr5w_Vlg" role="2OqNvi">
                    <ref role="2WH_rO" node="6kcQr5w_Vlm" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vznkw4is3$" role="37wK5m">
                  <node concept="2WthIp" id="6Vznkw4irL4" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6Vznkw4isr1" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4iq_3" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6kcQr5w_WCx" role="2OqNvi">
              <ref role="37wK5l" node="1S4cYrOQcQr" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="6kcQr5w_Vli" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="6kcQr5w_Vlj" role="1B3o_S" />
      <node concept="1oajcY" id="6kcQr5w_Vlk" role="1oa70y" />
      <node concept="3Tqbb2" id="6kcQr5w_Vll" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="6kcQr5w_Vlm" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="6kcQr5w_Vln" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6Vznkw4iq_3" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6Vznkw4iq_4" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="6kcQr5w_Vlo" role="32lrUH">
      <property role="TrG5h" value="resource" />
      <node concept="3Tm6S6" id="6kcQr5w_Vlp" role="1B3o_S" />
      <node concept="3Tqbb2" id="6kcQr5w_Vlq" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
      </node>
      <node concept="3clFbS" id="6kcQr5w_Vlr" role="3clF47">
        <node concept="3cpWs6" id="6kcQr5w_Vls" role="3cqZAp">
          <node concept="2OqwBi" id="6kcQr5w_Vlt" role="3cqZAk">
            <node concept="2OqwBi" id="6kcQr5w_Vlu" role="2Oq$k0">
              <node concept="2WthIp" id="6kcQr5w_Vlv" role="2Oq$k0" />
              <node concept="3gHZIF" id="6kcQr5w_Vlw" role="2OqNvi">
                <ref role="2WH_rO" node="6kcQr5w_Vli" resolve="node" />
              </node>
            </node>
            <node concept="2Xjw5R" id="6kcQr5w_Vlx" role="2OqNvi">
              <node concept="1xMEDy" id="6kcQr5w_Vly" role="1xVPHs">
                <node concept="chp4Y" id="6kcQr5w_Vlz" role="ri$Ld">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="6kcQr5w_Vl$" role="tmbBb">
      <node concept="3clFbS" id="6kcQr5w_Vl_" role="2VODD2">
        <node concept="3cpWs8" id="6kcQr5w_VlA" role="3cqZAp">
          <node concept="3cpWsn" id="6kcQr5w_VlB" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="6kcQr5w_VlC" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
            </node>
            <node concept="2OqwBi" id="6kcQr5w_VlD" role="33vP2m">
              <node concept="2WthIp" id="6kcQr5w_VlE" role="2Oq$k0" />
              <node concept="2XshWL" id="6kcQr5w_VlF" role="2OqNvi">
                <ref role="2WH_rO" node="6kcQr5w_Vlo" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6kcQr5w_VlG" role="3cqZAp">
          <node concept="3clFbS" id="6kcQr5w_VlH" role="3clFbx">
            <node concept="3cpWs6" id="6kcQr5w_VlI" role="3cqZAp">
              <node concept="3clFbT" id="6kcQr5w_VlJ" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="6kcQr5w_VlK" role="3clFbw">
            <node concept="10Nm6u" id="6kcQr5w_VlL" role="3uHU7w" />
            <node concept="37vLTw" id="6kcQr5w_VlM" role="3uHU7B">
              <ref role="3cqZAo" node="6kcQr5w_VlB" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6kcQr5w_VlN" role="3cqZAp">
          <node concept="3cpWsn" id="6kcQr5w_VlO" role="3cpWs9">
            <property role="TrG5h" value="actions" />
            <node concept="3uibUv" id="6kcQr5w_VlP" role="1tU5fm">
              <ref role="3uigEE" node="5PjcHHGcAKb" />
            </node>
            <node concept="2ShNRf" id="6kcQr5w_VlQ" role="33vP2m">
              <node concept="1pGfFk" id="6kcQr5w_VlR" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" />
                <node concept="37vLTw" id="6kcQr5w_VlS" role="37wK5m">
                  <ref role="3cqZAo" node="6kcQr5w_VlB" resolve="node" />
                </node>
                <node concept="2OqwBi" id="6kcQr5w_VlT" role="37wK5m">
                  <node concept="2WthIp" id="6kcQr5w_VlU" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6kcQr5w_VlV" role="2OqNvi">
                    <ref role="2WH_rO" node="6kcQr5w_Vlm" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vznkw4iq9v" role="37wK5m">
                  <node concept="2WthIp" id="6Vznkw4ipMM" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6Vznkw4irGn" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4iq_3" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kcQr5w_VlW" role="3cqZAp">
          <node concept="2OqwBi" id="6kcQr5w_VlX" role="3clFbG">
            <node concept="37vLTw" id="6kcQr5w_VlY" role="2Oq$k0">
              <ref role="3cqZAo" node="6kcQr5w_VlO" resolve="actions" />
            </node>
            <node concept="liA8E" id="6kcQr5w_WuU" role="2OqNvi">
              <ref role="37wK5l" node="6kcQr5w_nRD" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="5PjcHHGf4rU">
    <property role="TrG5h" value="Debug_WatchECCState" />
    <property role="2uzpH1" value="Watch for ECC Internal State" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="2XrIbr" id="5PjcHHGgQPx" role="32lrUH">
      <property role="TrG5h" value="resource" />
      <node concept="3Tm6S6" id="5PjcHHGgQPy" role="1B3o_S" />
      <node concept="3Tqbb2" id="5PjcHHGgQPz" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
      </node>
      <node concept="3clFbS" id="5PjcHHGgQP$" role="3clF47">
        <node concept="3cpWs6" id="5PjcHHGgQP_" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGgQPA" role="3cqZAk">
            <node concept="2OqwBi" id="5PjcHHGgQPB" role="2Oq$k0">
              <node concept="2WthIp" id="5PjcHHGgQPC" role="2Oq$k0" />
              <node concept="3gHZIF" id="5PjcHHGgQPD" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGgOsC" resolve="node" />
              </node>
            </node>
            <node concept="2Xjw5R" id="5PjcHHGgQPE" role="2OqNvi">
              <node concept="1xMEDy" id="5PjcHHGgQPF" role="1xVPHs">
                <node concept="chp4Y" id="5PjcHHGgQPG" role="ri$Ld">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="5PjcHHGgOsC" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="5PjcHHGgOsD" role="1B3o_S" />
      <node concept="1oajcY" id="5PjcHHGgOsE" role="1oa70y" />
      <node concept="3Tqbb2" id="5PjcHHGgOsF" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="5PjcHHGgOsG" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="5PjcHHGgOsH" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6Vznkw4itz$" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6Vznkw4itz_" role="1oa70y" />
    </node>
    <node concept="tnohg" id="5PjcHHGf4rV" role="tncku">
      <node concept="3clFbS" id="5PjcHHGf4rW" role="2VODD2">
        <node concept="3clFbF" id="5PjcHHGgR$l" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xGAnT" role="3clFbG">
            <node concept="2ShNRf" id="19RKY2xGAnU" role="2Oq$k0">
              <node concept="1pGfFk" id="19RKY2xGAnV" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" />
                <node concept="2OqwBi" id="19RKY2xGAnW" role="37wK5m">
                  <node concept="2WthIp" id="19RKY2xGAnX" role="2Oq$k0" />
                  <node concept="2XshWL" id="19RKY2xGAnY" role="2OqNvi">
                    <ref role="2WH_rO" node="5PjcHHGgQPx" resolve="resource" />
                  </node>
                </node>
                <node concept="2OqwBi" id="19RKY2xGAnZ" role="37wK5m">
                  <node concept="2WthIp" id="19RKY2xGAo0" role="2Oq$k0" />
                  <node concept="1DTwFV" id="19RKY2xGAo1" role="2OqNvi">
                    <ref role="2WH_rO" node="5PjcHHGgOsG" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vznkw4iuyi" role="37wK5m">
                  <node concept="2WthIp" id="6Vznkw4iuyl" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6Vznkw4iuyn" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4itz$" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="19RKY2xGACC" role="2OqNvi">
              <ref role="37wK5l" node="19RKY2xFC5D" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="5PjcHHGgOep" role="tmbBb">
      <node concept="3clFbS" id="5PjcHHGgOeq" role="2VODD2">
        <node concept="3cpWs8" id="19RKY2xG_Wv" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xG_Ww" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="19RKY2xG_Wx" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
            </node>
            <node concept="2OqwBi" id="19RKY2xG_Wy" role="33vP2m">
              <node concept="2WthIp" id="19RKY2xG_Wz" role="2Oq$k0" />
              <node concept="2XshWL" id="19RKY2xG_W$" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGgQPx" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="19RKY2xG_W_" role="3cqZAp">
          <node concept="1Wc70l" id="19RKY2xG_WA" role="3clFbG">
            <node concept="3y3z36" id="19RKY2xG_WB" role="3uHU7B">
              <node concept="10Nm6u" id="19RKY2xG_WC" role="3uHU7w" />
              <node concept="37vLTw" id="19RKY2xG_WD" role="3uHU7B">
                <ref role="3cqZAo" node="19RKY2xG_Ww" resolve="node" />
              </node>
            </node>
            <node concept="2OqwBi" id="19RKY2xG_WE" role="3uHU7w">
              <node concept="2ShNRf" id="19RKY2xG_WF" role="2Oq$k0">
                <node concept="1pGfFk" id="19RKY2xG_WG" role="2ShVmc">
                  <ref role="37wK5l" node="19RKY2xF00g" />
                  <node concept="37vLTw" id="19RKY2xG_WH" role="37wK5m">
                    <ref role="3cqZAo" node="19RKY2xG_Ww" resolve="node" />
                  </node>
                  <node concept="2OqwBi" id="19RKY2xG_WI" role="37wK5m">
                    <node concept="2WthIp" id="19RKY2xG_WJ" role="2Oq$k0" />
                    <node concept="1DTwFV" id="19RKY2xG_WK" role="2OqNvi">
                      <ref role="2WH_rO" node="5PjcHHGgOsG" resolve="cell" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6Vznkw4it10" role="37wK5m">
                    <node concept="2WthIp" id="6Vznkw4isEt" role="2Oq$k0" />
                    <node concept="1DTwFV" id="6Vznkw4iuoK" role="2OqNvi">
                      <ref role="2WH_rO" node="6Vznkw4itz$" resolve="project" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="19RKY2xGAgG" role="2OqNvi">
                <ref role="37wK5l" node="19RKY2xFKOC" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="1S4cYrOQS5C">
    <property role="TrG5h" value="Debug_WatchFB" />
    <property role="2uzpH1" value="Watch for Function Block" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="tnohg" id="1S4cYrOQS5D" role="tncku">
      <node concept="3clFbS" id="1S4cYrOQS5E" role="2VODD2">
        <node concept="3clFbF" id="1S4cYrOQS5F" role="3cqZAp">
          <node concept="2OqwBi" id="1S4cYrOQS5G" role="3clFbG">
            <node concept="2ShNRf" id="1S4cYrOQS5H" role="2Oq$k0">
              <node concept="1pGfFk" id="1S4cYrOQS5I" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" />
                <node concept="2OqwBi" id="1S4cYrOQS5J" role="37wK5m">
                  <node concept="2WthIp" id="1S4cYrOQS5K" role="2Oq$k0" />
                  <node concept="2XshWL" id="1S4cYrOQS5L" role="2OqNvi">
                    <ref role="2WH_rO" node="1S4cYrOQS6P" resolve="resource" />
                  </node>
                </node>
                <node concept="2OqwBi" id="1S4cYrOQS5M" role="37wK5m">
                  <node concept="2WthIp" id="1S4cYrOQS5N" role="2Oq$k0" />
                  <node concept="1DTwFV" id="1S4cYrOQS5O" role="2OqNvi">
                    <ref role="2WH_rO" node="1S4cYrOQS6N" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vznkw4iw5x" role="37wK5m">
                  <node concept="2WthIp" id="6Vznkw4iw5$" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6Vznkw4iw5A" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4iv1E" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1S4cYrOQTb0" role="2OqNvi">
              <ref role="37wK5l" node="1S4cYrOPOKP" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="1S4cYrOQS5Q" role="tmbBb">
      <node concept="3clFbS" id="1S4cYrOQS5R" role="2VODD2">
        <node concept="3cpWs8" id="1S4cYrOQS5S" role="3cqZAp">
          <node concept="3cpWsn" id="1S4cYrOQS5T" role="3cpWs9">
            <property role="TrG5h" value="presentation" />
            <node concept="3uibUv" id="1S4cYrOQS5U" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~Presentation" resolve="Presentation" />
            </node>
            <node concept="2OqwBi" id="1S4cYrOQS5V" role="33vP2m">
              <node concept="tl45R" id="1S4cYrOQS5W" role="2Oq$k0" />
              <node concept="liA8E" id="1S4cYrOQS5X" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1S4cYrOQS5Y" role="3cqZAp">
          <node concept="3cpWsn" id="1S4cYrOQS5Z" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="1S4cYrOQS60" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
            </node>
            <node concept="2OqwBi" id="1S4cYrOQS61" role="33vP2m">
              <node concept="2WthIp" id="1S4cYrOQS62" role="2Oq$k0" />
              <node concept="2XshWL" id="1S4cYrOQS63" role="2OqNvi">
                <ref role="2WH_rO" node="1S4cYrOQS6P" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1S4cYrOQS64" role="3cqZAp">
          <node concept="3clFbS" id="1S4cYrOQS65" role="3clFbx">
            <node concept="3clFbF" id="1S4cYrOQS66" role="3cqZAp">
              <node concept="2OqwBi" id="1S4cYrOQS67" role="3clFbG">
                <node concept="37vLTw" id="1S4cYrOQS68" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S4cYrOQS5T" resolve="presentation" />
                </node>
                <node concept="liA8E" id="1S4cYrOQS69" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
                  <node concept="3clFbT" id="1S4cYrOQS6a" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="1S4cYrOQS6b" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="1S4cYrOQS6c" role="3clFbw">
            <node concept="10Nm6u" id="1S4cYrOQS6d" role="3uHU7w" />
            <node concept="37vLTw" id="1S4cYrOQS6e" role="3uHU7B">
              <ref role="3cqZAo" node="1S4cYrOQS5Z" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1S4cYrOQS6f" role="3cqZAp">
          <node concept="3cpWsn" id="1S4cYrOQS6g" role="3cpWs9">
            <property role="TrG5h" value="actions" />
            <node concept="3uibUv" id="1S4cYrOQS6h" role="1tU5fm">
              <ref role="3uigEE" node="5PjcHHGcAKb" />
            </node>
            <node concept="2ShNRf" id="1S4cYrOQS6i" role="33vP2m">
              <node concept="1pGfFk" id="1S4cYrOQS6j" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" />
                <node concept="37vLTw" id="1S4cYrOQS6k" role="37wK5m">
                  <ref role="3cqZAo" node="1S4cYrOQS5Z" resolve="node" />
                </node>
                <node concept="2OqwBi" id="1S4cYrOQS6l" role="37wK5m">
                  <node concept="2WthIp" id="1S4cYrOQS6m" role="2Oq$k0" />
                  <node concept="1DTwFV" id="1S4cYrOQS6n" role="2OqNvi">
                    <ref role="2WH_rO" node="1S4cYrOQS6N" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vznkw4ivTS" role="37wK5m">
                  <node concept="2WthIp" id="6Vznkw4ivTV" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6Vznkw4ivTX" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4iv1E" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1S4cYrOQS6o" role="3cqZAp">
          <node concept="3cpWsn" id="1S4cYrOQS6p" role="3cpWs9">
            <property role="TrG5h" value="hasWatchedFB" />
            <node concept="10P_77" id="1S4cYrOQS6q" role="1tU5fm" />
            <node concept="2OqwBi" id="1S4cYrOQS6r" role="33vP2m">
              <node concept="37vLTw" id="1S4cYrOQS6s" role="2Oq$k0">
                <ref role="3cqZAo" node="1S4cYrOQS6g" resolve="actions" />
              </node>
              <node concept="liA8E" id="1S4cYrOQT9i" role="2OqNvi">
                <ref role="37wK5l" node="1S4cYrONjsz" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="1S4cYrOQS6u" role="3cqZAp">
          <node concept="3clFbS" id="1S4cYrOQS6v" role="3clFbx">
            <node concept="3clFbF" id="1S4cYrOQS6w" role="3cqZAp">
              <node concept="2OqwBi" id="1S4cYrOQS6x" role="3clFbG">
                <node concept="37vLTw" id="1S4cYrOQS6y" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S4cYrOQS5T" resolve="presentation" />
                </node>
                <node concept="liA8E" id="1S4cYrOQS6z" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="3cpWs3" id="1S4cYrOQS6$" role="37wK5m">
                    <node concept="Xl_RD" id="1S4cYrOQS6_" role="3uHU7B">
                      <property role="Xl_RC" value="Watch for Function block " />
                    </node>
                    <node concept="2OqwBi" id="74jd4DV$1RX" role="3uHU7w">
                      <node concept="2OqwBi" id="1S4cYrOQS6A" role="2Oq$k0">
                        <node concept="37vLTw" id="1S4cYrOQS6B" role="2Oq$k0">
                          <ref role="3cqZAo" node="1S4cYrOQS6g" resolve="actions" />
                        </node>
                        <node concept="liA8E" id="1S4cYrOQS6C" role="2OqNvi">
                          <ref role="37wK5l" node="1S4cYrOMM45" />
                        </node>
                      </node>
                      <node concept="liA8E" id="74jd4DV$2ex" role="2OqNvi">
                        <ref role="37wK5l" to="7adg:~Declaration.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="1S4cYrOQS6D" role="3clFbw">
            <ref role="3cqZAo" node="1S4cYrOQS6p" resolve="hasWatchedFB" />
          </node>
        </node>
        <node concept="3clFbF" id="1S4cYrOQS6E" role="3cqZAp">
          <node concept="2OqwBi" id="1S4cYrOQS6F" role="3clFbG">
            <node concept="37vLTw" id="1S4cYrOQS6G" role="2Oq$k0">
              <ref role="3cqZAo" node="1S4cYrOQS5T" resolve="presentation" />
            </node>
            <node concept="liA8E" id="1S4cYrOQS6H" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
              <node concept="37vLTw" id="1S4cYrOQS6I" role="37wK5m">
                <ref role="3cqZAo" node="1S4cYrOQS6p" resolve="hasWatchedFB" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="1S4cYrOQS6J" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="1S4cYrOQS6K" role="1B3o_S" />
      <node concept="1oajcY" id="1S4cYrOQS6L" role="1oa70y" />
      <node concept="3Tqbb2" id="1S4cYrOQS6M" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="1S4cYrOQS6N" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="1S4cYrOQS6O" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6Vznkw4iv1E" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6Vznkw4iv1F" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="1S4cYrOQS6P" role="32lrUH">
      <property role="TrG5h" value="resource" />
      <node concept="3Tm6S6" id="1S4cYrOQS6Q" role="1B3o_S" />
      <node concept="3Tqbb2" id="1S4cYrOQS6R" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
      </node>
      <node concept="3clFbS" id="1S4cYrOQS6S" role="3clF47">
        <node concept="3cpWs6" id="1S4cYrOQS6T" role="3cqZAp">
          <node concept="2OqwBi" id="1S4cYrOQS6U" role="3cqZAk">
            <node concept="2OqwBi" id="1S4cYrOQS6V" role="2Oq$k0">
              <node concept="2WthIp" id="1S4cYrOQS6W" role="2Oq$k0" />
              <node concept="3gHZIF" id="1S4cYrOQS6X" role="2OqNvi">
                <ref role="2WH_rO" node="1S4cYrOQS6J" resolve="node" />
              </node>
            </node>
            <node concept="2Xjw5R" id="1S4cYrOQS6Y" role="2OqNvi">
              <node concept="1xMEDy" id="1S4cYrOQS6Z" role="1xVPHs">
                <node concept="chp4Y" id="1S4cYrOQS70" role="ri$Ld">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="3DiEZ8TIFei">
    <property role="TrG5h" value="Debug_WatchPort" />
    <property role="2uzpH1" value="Watch for Port" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="tnohg" id="3DiEZ8TIFej" role="tncku">
      <node concept="3clFbS" id="3DiEZ8TIFek" role="2VODD2">
        <node concept="3clFbF" id="19RKY2xGBAv" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xGBAw" role="3clFbG">
            <node concept="2ShNRf" id="19RKY2xGBAx" role="2Oq$k0">
              <node concept="1pGfFk" id="19RKY2xGBAy" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" />
                <node concept="2OqwBi" id="19RKY2xGBAz" role="37wK5m">
                  <node concept="2WthIp" id="19RKY2xGBA$" role="2Oq$k0" />
                  <node concept="2XshWL" id="19RKY2xGBA_" role="2OqNvi">
                    <ref role="2WH_rO" node="5PjcHHGf0Dz" resolve="resource" />
                  </node>
                </node>
                <node concept="2OqwBi" id="19RKY2xGBAA" role="37wK5m">
                  <node concept="2WthIp" id="19RKY2xGBAB" role="2Oq$k0" />
                  <node concept="1DTwFV" id="19RKY2xGBAC" role="2OqNvi">
                    <ref role="2WH_rO" node="3DiEZ8TIO$g" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vznkw4ix$z" role="37wK5m">
                  <node concept="2WthIp" id="6Vznkw4ixi3" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6Vznkw4ixS4" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4iwji" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="19RKY2xGBMj" role="2OqNvi">
              <ref role="37wK5l" node="19RKY2xFNcv" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="tkhdA" id="3DiEZ8TIFGm" role="tmbBb">
      <node concept="3clFbS" id="3DiEZ8TIFGn" role="2VODD2">
        <node concept="3cpWs8" id="19RKY2xGAOh" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xGAOi" role="3cpWs9">
            <property role="TrG5h" value="presentation" />
            <node concept="3uibUv" id="19RKY2xGAOj" role="1tU5fm">
              <ref role="3uigEE" to="qkt:~Presentation" resolve="Presentation" />
            </node>
            <node concept="2OqwBi" id="19RKY2xGAOk" role="33vP2m">
              <node concept="tl45R" id="19RKY2xGAOl" role="2Oq$k0" />
              <node concept="liA8E" id="19RKY2xGAOm" role="2OqNvi">
                <ref role="37wK5l" to="qkt:~AnActionEvent.getPresentation()" resolve="getPresentation" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="19RKY2xGAOn" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xGAOo" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="19RKY2xGAOp" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
            </node>
            <node concept="2OqwBi" id="19RKY2xGAOq" role="33vP2m">
              <node concept="2WthIp" id="19RKY2xGAOr" role="2Oq$k0" />
              <node concept="2XshWL" id="19RKY2xGAOs" role="2OqNvi">
                <ref role="2WH_rO" node="5PjcHHGf0Dz" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="19RKY2xGAOt" role="3cqZAp">
          <node concept="3clFbS" id="19RKY2xGAOu" role="3clFbx">
            <node concept="3clFbF" id="19RKY2xGAOv" role="3cqZAp">
              <node concept="2OqwBi" id="19RKY2xGAOw" role="3clFbG">
                <node concept="37vLTw" id="19RKY2xGAOx" role="2Oq$k0">
                  <ref role="3cqZAo" node="19RKY2xGAOi" resolve="presentation" />
                </node>
                <node concept="liA8E" id="19RKY2xGAOy" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
                  <node concept="3clFbT" id="19RKY2xGAOz" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="19RKY2xGAO$" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="19RKY2xGAO_" role="3clFbw">
            <node concept="10Nm6u" id="19RKY2xGAOA" role="3uHU7w" />
            <node concept="37vLTw" id="19RKY2xGAOB" role="3uHU7B">
              <ref role="3cqZAo" node="19RKY2xGAOo" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="19RKY2xGAOC" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xGAOD" role="3cpWs9">
            <property role="TrG5h" value="actions" />
            <node concept="3uibUv" id="19RKY2xGAOE" role="1tU5fm">
              <ref role="3uigEE" node="5PjcHHGcAKb" />
            </node>
            <node concept="2ShNRf" id="19RKY2xGAOF" role="33vP2m">
              <node concept="1pGfFk" id="19RKY2xGAOG" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" />
                <node concept="37vLTw" id="19RKY2xGAOH" role="37wK5m">
                  <ref role="3cqZAo" node="19RKY2xGAOo" resolve="node" />
                </node>
                <node concept="2OqwBi" id="19RKY2xGAOI" role="37wK5m">
                  <node concept="2WthIp" id="19RKY2xGAOJ" role="2Oq$k0" />
                  <node concept="1DTwFV" id="19RKY2xGAOK" role="2OqNvi">
                    <ref role="2WH_rO" node="3DiEZ8TIO$g" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vznkw4ixcp" role="37wK5m">
                  <node concept="2WthIp" id="6Vznkw4ixcs" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6Vznkw4ixcu" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4iwji" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="19RKY2xGAOL" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xGAOM" role="3cpWs9">
            <property role="TrG5h" value="hasWatchedPort" />
            <node concept="10P_77" id="19RKY2xGAON" role="1tU5fm" />
            <node concept="2OqwBi" id="19RKY2xGAOO" role="33vP2m">
              <node concept="37vLTw" id="19RKY2xGAOP" role="2Oq$k0">
                <ref role="3cqZAo" node="19RKY2xGAOD" resolve="actions" />
              </node>
              <node concept="liA8E" id="19RKY2xGBfU" role="2OqNvi">
                <ref role="37wK5l" node="19RKY2xF3hL" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="19RKY2xGAOR" role="3cqZAp">
          <node concept="3clFbS" id="19RKY2xGAOS" role="3clFbx">
            <node concept="3clFbF" id="19RKY2xGAOT" role="3cqZAp">
              <node concept="2OqwBi" id="19RKY2xGAOU" role="3clFbG">
                <node concept="37vLTw" id="19RKY2xGAOV" role="2Oq$k0">
                  <ref role="3cqZAo" node="19RKY2xGAOi" resolve="presentation" />
                </node>
                <node concept="liA8E" id="19RKY2xGAOW" role="2OqNvi">
                  <ref role="37wK5l" to="qkt:~Presentation.setText(java.lang.String)" resolve="setText" />
                  <node concept="3cpWs3" id="19RKY2xGAOX" role="37wK5m">
                    <node concept="Xl_RD" id="19RKY2xGAOY" role="3uHU7B">
                      <property role="Xl_RC" value="Watch for Port " />
                    </node>
                    <node concept="2OqwBi" id="19RKY2xGAOZ" role="3uHU7w">
                      <node concept="37vLTw" id="19RKY2xGAP0" role="2Oq$k0">
                        <ref role="3cqZAo" node="19RKY2xGAOD" resolve="actions" />
                      </node>
                      <node concept="liA8E" id="19RKY2xGAP1" role="2OqNvi">
                        <ref role="37wK5l" node="19RKY2xFOor" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="19RKY2xGAP2" role="3clFbw">
            <ref role="3cqZAo" node="19RKY2xGAOM" resolve="hasWatchedPort" />
          </node>
        </node>
        <node concept="3clFbF" id="19RKY2xGAP3" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xGAP4" role="3clFbG">
            <node concept="37vLTw" id="19RKY2xGAP5" role="2Oq$k0">
              <ref role="3cqZAo" node="19RKY2xGAOi" resolve="presentation" />
            </node>
            <node concept="liA8E" id="19RKY2xGAP6" role="2OqNvi">
              <ref role="37wK5l" to="qkt:~Presentation.setEnabledAndVisible(boolean)" resolve="setEnabledAndVisible" />
              <node concept="37vLTw" id="19RKY2xGAP7" role="37wK5m">
                <ref role="3cqZAo" node="19RKY2xGAOM" resolve="hasWatchedPort" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="3DiEZ8TMGQ_" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="3DiEZ8TMGQA" role="1B3o_S" />
      <node concept="1oajcY" id="3DiEZ8TMGQB" role="1oa70y" />
      <node concept="3Tqbb2" id="3DiEZ8TMGN2" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="3DiEZ8TIO$g" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="3DiEZ8TIO$h" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6Vznkw4iwji" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6Vznkw4iwjj" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="5PjcHHGf0Dz" role="32lrUH">
      <property role="TrG5h" value="resource" />
      <node concept="3Tm6S6" id="5PjcHHGf0D$" role="1B3o_S" />
      <node concept="3Tqbb2" id="5PjcHHGf0D_" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
      </node>
      <node concept="3clFbS" id="5PjcHHGf0Cl" role="3clF47">
        <node concept="3cpWs6" id="5PjcHHGf0CS" role="3cqZAp">
          <node concept="2OqwBi" id="5PjcHHGf0CT" role="3cqZAk">
            <node concept="2OqwBi" id="5PjcHHGf0CU" role="2Oq$k0">
              <node concept="2WthIp" id="5PjcHHGf0CV" role="2Oq$k0" />
              <node concept="3gHZIF" id="5PjcHHGf0CW" role="2OqNvi">
                <ref role="2WH_rO" node="3DiEZ8TMGQ_" resolve="node" />
              </node>
            </node>
            <node concept="2Xjw5R" id="5PjcHHGf0CX" role="2OqNvi">
              <node concept="1xMEDy" id="5PjcHHGf0CY" role="1xVPHs">
                <node concept="chp4Y" id="5PjcHHGf0CZ" role="ri$Ld">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="6kcQr5wzriX">
    <property role="TrG5h" value="Debug_WatchSelectedFBs" />
    <property role="2uzpH1" value="Watch for Selected Function Blocks" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="tnohg" id="6kcQr5wzriY" role="tncku">
      <node concept="3clFbS" id="6kcQr5wzriZ" role="2VODD2">
        <node concept="3clFbF" id="6kcQr5wzrj0" role="3cqZAp">
          <node concept="2OqwBi" id="6kcQr5wzrj1" role="3clFbG">
            <node concept="2ShNRf" id="6kcQr5wzrj2" role="2Oq$k0">
              <node concept="1pGfFk" id="6kcQr5wzrj3" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" />
                <node concept="2OqwBi" id="6kcQr5wzrj4" role="37wK5m">
                  <node concept="2WthIp" id="6kcQr5wzrj5" role="2Oq$k0" />
                  <node concept="2XshWL" id="6kcQr5wzrj6" role="2OqNvi">
                    <ref role="2WH_rO" node="6kcQr5wzrka" resolve="resource" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6kcQr5wzrj7" role="37wK5m">
                  <node concept="2WthIp" id="6kcQr5wzrj8" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6kcQr5wzrj9" role="2OqNvi">
                    <ref role="2WH_rO" node="6kcQr5wzrk8" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vznkw4i_KN" role="37wK5m">
                  <node concept="2WthIp" id="6Vznkw4i_uj" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6Vznkw4iA4W" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4iy3L" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6kcQr5w_Vhg" role="2OqNvi">
              <ref role="37wK5l" node="1S4cYrOQM6a" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="6kcQr5wzrk4" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="6kcQr5wzrk5" role="1B3o_S" />
      <node concept="1oajcY" id="6kcQr5wzrk6" role="1oa70y" />
      <node concept="3Tqbb2" id="6kcQr5wzrk7" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="6kcQr5wzrk8" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="6kcQr5wzrk9" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6Vznkw4iy3L" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6Vznkw4iy3M" role="1oa70y" />
    </node>
    <node concept="2XrIbr" id="6kcQr5wzrka" role="32lrUH">
      <property role="TrG5h" value="resource" />
      <node concept="3Tm6S6" id="6kcQr5wzrkb" role="1B3o_S" />
      <node concept="3Tqbb2" id="6kcQr5wzrkc" role="3clF45">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
      </node>
      <node concept="3clFbS" id="6kcQr5wzrkd" role="3clF47">
        <node concept="3cpWs6" id="6kcQr5wzrke" role="3cqZAp">
          <node concept="2OqwBi" id="6kcQr5wzrkf" role="3cqZAk">
            <node concept="2OqwBi" id="6kcQr5wzrkg" role="2Oq$k0">
              <node concept="2WthIp" id="6kcQr5wzrkh" role="2Oq$k0" />
              <node concept="3gHZIF" id="6kcQr5wzrki" role="2OqNvi">
                <ref role="2WH_rO" node="6kcQr5wzrk4" resolve="node" />
              </node>
            </node>
            <node concept="2Xjw5R" id="6kcQr5wzrkj" role="2OqNvi">
              <node concept="1xMEDy" id="6kcQr5wzrkk" role="1xVPHs">
                <node concept="chp4Y" id="6kcQr5wzrkl" role="ri$Ld">
                  <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="6kcQr5w_T4g" role="tmbBb">
      <node concept="3clFbS" id="6kcQr5w_T4h" role="2VODD2">
        <node concept="3cpWs8" id="6kcQr5wzrjj" role="3cqZAp">
          <node concept="3cpWsn" id="6kcQr5wzrjk" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="6kcQr5wzrjl" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
            </node>
            <node concept="2OqwBi" id="6kcQr5wzrjm" role="33vP2m">
              <node concept="2WthIp" id="6kcQr5wzrjn" role="2Oq$k0" />
              <node concept="2XshWL" id="6kcQr5wzrjo" role="2OqNvi">
                <ref role="2WH_rO" node="6kcQr5wzrka" resolve="resource" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="6kcQr5w_Tzt" role="3cqZAp">
          <node concept="3clFbS" id="6kcQr5w_Tzv" role="3clFbx">
            <node concept="3cpWs6" id="6kcQr5w_V3s" role="3cqZAp">
              <node concept="3clFbT" id="6kcQr5w_Vaf" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="6kcQr5w_UJn" role="3clFbw">
            <node concept="10Nm6u" id="6kcQr5w_UVM" role="3uHU7w" />
            <node concept="37vLTw" id="6kcQr5w_UsQ" role="3uHU7B">
              <ref role="3cqZAo" node="6kcQr5wzrjk" resolve="node" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6kcQr5wzrj$" role="3cqZAp">
          <node concept="3cpWsn" id="6kcQr5wzrj_" role="3cpWs9">
            <property role="TrG5h" value="actions" />
            <node concept="3uibUv" id="6kcQr5wzrjA" role="1tU5fm">
              <ref role="3uigEE" node="5PjcHHGcAKb" />
            </node>
            <node concept="2ShNRf" id="6kcQr5wzrjB" role="33vP2m">
              <node concept="1pGfFk" id="6kcQr5wzrjC" role="2ShVmc">
                <ref role="37wK5l" node="19RKY2xF00g" />
                <node concept="37vLTw" id="6kcQr5wzrjD" role="37wK5m">
                  <ref role="3cqZAo" node="6kcQr5wzrjk" resolve="node" />
                </node>
                <node concept="2OqwBi" id="6kcQr5wzrjE" role="37wK5m">
                  <node concept="2WthIp" id="6kcQr5wzrjF" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6kcQr5wzrjG" role="2OqNvi">
                    <ref role="2WH_rO" node="6kcQr5wzrk8" resolve="cell" />
                  </node>
                </node>
                <node concept="2OqwBi" id="6Vznkw4i$Ye" role="37wK5m">
                  <node concept="2WthIp" id="6Vznkw4i$Bt" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6Vznkw4i_nc" role="2OqNvi">
                    <ref role="2WH_rO" node="6Vznkw4iy3L" resolve="project" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kcQr5w_Tpq" role="3cqZAp">
          <node concept="2OqwBi" id="6kcQr5wzrjK" role="3clFbG">
            <node concept="37vLTw" id="6kcQr5wzrjL" role="2Oq$k0">
              <ref role="3cqZAo" node="6kcQr5wzrj_" resolve="actions" />
            </node>
            <node concept="liA8E" id="6kcQr5w_SEA" role="2OqNvi">
              <ref role="37wK5l" node="6kcQr5w$sYW" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="44qSI5$V0ef">
    <property role="TrG5h" value="DeployResource" />
    <property role="2uzpH1" value="Deploy Resource" />
    <node concept="tnohg" id="44qSI5$V0eg" role="tncku">
      <node concept="3clFbS" id="44qSI5$V0eh" role="2VODD2">
        <node concept="3cpWs8" id="44qSI5$Vjux" role="3cqZAp">
          <node concept="3cpWsn" id="44qSI5$Vju$" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="44qSI5$Vjuv" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
            </node>
            <node concept="1PxgMI" id="44qSI5$Vk3R" role="33vP2m">
              <node concept="chp4Y" id="44qSI5$Vk5T" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
              </node>
              <node concept="2OqwBi" id="44qSI5$Vjz_" role="1m5AlR">
                <node concept="2WthIp" id="44qSI5$VjzA" role="2Oq$k0" />
                <node concept="3gHZIF" id="44qSI5$VjzB" role="2OqNvi">
                  <ref role="2WH_rO" node="44qSI5$VfWX" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="42vv4xsG7_$" role="3cqZAp">
          <node concept="3cpWsn" id="42vv4xsG7__" role="3cpWs9">
            <property role="TrG5h" value="deviceNode" />
            <node concept="3Tqbb2" id="42vv4xsG7_y" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
            </node>
            <node concept="1PxgMI" id="42vv4xsG7_A" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="42vv4xsG7_B" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
              </node>
              <node concept="2OqwBi" id="42vv4xsG7_C" role="1m5AlR">
                <node concept="1mfA1w" id="42vv4xsG7_E" role="2OqNvi" />
                <node concept="37vLTw" id="44qSI5$Vk9G" role="2Oq$k0">
                  <ref role="3cqZAo" node="44qSI5$Vju$" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6Vznkw4jfRh" role="3cqZAp">
          <node concept="3cpWsn" id="6Vznkw4jfRi" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="2Fi3aCht9Jz" role="1tU5fm">
              <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
            </node>
            <node concept="2YIFZM" id="2Fi3aChvyuy" role="33vP2m">
              <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
              <node concept="2OqwBi" id="2Fi3aChvyuz" role="37wK5m">
                <node concept="2WthIp" id="2Fi3aChvyu$" role="2Oq$k0" />
                <node concept="1DTwFV" id="2Fi3aChvyu_" role="2OqNvi">
                  <ref role="2WH_rO" node="7i6W9OfhgHN" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2aA0cdlF36_" role="3cqZAp">
          <node concept="3cpWsn" id="2aA0cdlF36A" role="3cpWs9">
            <property role="TrG5h" value="resourceDeclaration" />
            <node concept="3uibUv" id="2aA0cdlF36B" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
            </node>
            <node concept="2OqwBi" id="2aA0cdlF46O" role="33vP2m">
              <node concept="37vLTw" id="2aA0cdlF3Zm" role="2Oq$k0">
                <ref role="3cqZAo" node="6Vznkw4jfRi" resolve="repository" />
              </node>
              <node concept="liA8E" id="2aA0cdlF4Ws" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                <node concept="37vLTw" id="2aA0cdlF4YH" role="37wK5m">
                  <ref role="3cqZAo" node="44qSI5$Vju$" resolve="node" />
                </node>
                <node concept="3VsKOn" id="2aA0cdlF5cO" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6Vznkw4jh0T" role="3cqZAp">
          <node concept="3cpWsn" id="6Vznkw4jh0U" role="3cpWs9">
            <property role="TrG5h" value="device" />
            <node concept="3uibUv" id="6Vznkw4jh0V" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
            </node>
            <node concept="2OqwBi" id="6Vznkw4jhvY" role="33vP2m">
              <node concept="37vLTw" id="6Vznkw4jhnj" role="2Oq$k0">
                <ref role="3cqZAo" node="6Vznkw4jfRi" resolve="repository" />
              </node>
              <node concept="liA8E" id="6Vznkw4jhHo" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                <node concept="37vLTw" id="5Gh60aH$NKK" role="37wK5m">
                  <ref role="3cqZAo" node="42vv4xsG7__" resolve="deviceNode" />
                </node>
                <node concept="3VsKOn" id="6Vznkw4jhXM" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7i6W9OfhlUV" role="3cqZAp">
          <node concept="2OqwBi" id="7i6W9OfhXPM" role="3clFbG">
            <node concept="2ShNRf" id="7i6W9OfhlUR" role="2Oq$k0">
              <node concept="YeOm9" id="7i6W9OfhqDS" role="2ShVmc">
                <node concept="1Y3b0j" id="7i6W9OfhqDV" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="xygl:~Task$Backgroundable.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String)" resolve="Backgroundable" />
                  <ref role="1Y3XeK" to="xygl:~Task$Backgroundable" resolve="Backgroundable" />
                  <node concept="3Tm1VV" id="7i6W9OfhqDW" role="1B3o_S" />
                  <node concept="3clFb_" id="7i6W9OfhqE3" role="jymVt">
                    <property role="TrG5h" value="run" />
                    <node concept="3Tm1VV" id="7i6W9OfhqE4" role="1B3o_S" />
                    <node concept="3cqZAl" id="7i6W9OfhqE6" role="3clF45" />
                    <node concept="37vLTG" id="7i6W9OfhqE7" role="3clF46">
                      <property role="TrG5h" value="indicator" />
                      <node concept="3uibUv" id="7i6W9OfhqE8" role="1tU5fm">
                        <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                      </node>
                      <node concept="2AHcQZ" id="7i6W9OfhqE9" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="7i6W9OfhqEa" role="3clF47">
                      <node concept="3clFbF" id="7i6W9Ofhh1p" role="3cqZAp">
                        <node concept="2OqwBi" id="7i6W9Ofhjih" role="3clFbG">
                          <node concept="2OqwBi" id="7i6W9Ofhii$" role="2Oq$k0">
                            <node concept="2OqwBi" id="7i6W9Ofhhkh" role="2Oq$k0">
                              <node concept="2WthIp" id="7i6W9Ofhh1n" role="2Oq$k0" />
                              <node concept="1DTwFV" id="7i6W9OfhhEX" role="2OqNvi">
                                <ref role="2WH_rO" node="7i6W9OfhgHN" resolve="mpsProject" />
                              </node>
                            </node>
                            <node concept="liA8E" id="7i6W9Ofhj8l" role="2OqNvi">
                              <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                            </node>
                          </node>
                          <node concept="liA8E" id="7i6W9Ofhjvz" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                            <node concept="1bVj0M" id="7i6W9Ofhj$S" role="37wK5m">
                              <node concept="3clFbS" id="7i6W9Ofhj$T" role="1bW5cS">
                                <node concept="3J1_TO" id="4uvvnUOsm5e" role="3cqZAp">
                                  <node concept="3clFbS" id="4uvvnUOsm5g" role="1zxBo7">
                                    <node concept="3cpWs8" id="4uvvnUOsgMT" role="3cqZAp">
                                      <node concept="3cpWsn" id="4uvvnUOsgMU" role="3cpWs9">
                                        <property role="TrG5h" value="connection" />
                                        <node concept="3uibUv" id="4WS_6wCCWvY" role="1tU5fm">
                                          <ref role="3uigEE" to="6w4o:~DeviceConnection" resolve="DeviceConnection" />
                                        </node>
                                        <node concept="2OqwBi" id="42vv4xsG1VN" role="33vP2m">
                                          <node concept="2OqwBi" id="5EF1Nu6MiAi" role="2Oq$k0">
                                            <node concept="10M0yZ" id="5EF1Nu6Mitd" role="2Oq$k0">
                                              <ref role="1PxDUh" to="6w4o:~DevicesFacade" resolve="DevicesFacade" />
                                              <ref role="3cqZAo" to="6w4o:~DevicesFacade.Companion" resolve="Companion" />
                                            </node>
                                            <node concept="liA8E" id="5EF1Nu6MiRu" role="2OqNvi">
                                              <ref role="37wK5l" to="6w4o:~DevicesFacade$Companion.getInstance()" resolve="getInstance" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="42vv4xsG54M" role="2OqNvi">
                                            <ref role="37wK5l" to="6w4o:~DevicesFacade.attach(org.fbme.lib.iec61499.declarations.DeviceDeclaration)" resolve="attach" />
                                            <node concept="37vLTw" id="6Vznkw4jiqQ" role="37wK5m">
                                              <ref role="3cqZAo" node="6Vznkw4jh0U" resolve="device" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbJ" id="42vv4xsG5sp" role="3cqZAp">
                                      <node concept="3clFbS" id="42vv4xsG5sr" role="3clFbx">
                                        <node concept="3clFbF" id="4uvvnUOsfmj" role="3cqZAp">
                                          <node concept="2OqwBi" id="4uvvnUOshqs" role="3clFbG">
                                            <node concept="37vLTw" id="4uvvnUOsgN1" role="2Oq$k0">
                                              <ref role="3cqZAo" node="4uvvnUOsgMU" resolve="connection" />
                                            </node>
                                            <node concept="liA8E" id="4uvvnUOslX8" role="2OqNvi">
                                              <ref role="37wK5l" to="6w4o:~DeviceConnection.deployResource(org.jetbrains.mps.openapi.model.SNode)" resolve="deployResource" />
                                              <node concept="37vLTw" id="44qSI5$VkmB" role="37wK5m">
                                                <ref role="3cqZAo" node="44qSI5$Vju$" resolve="node" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3y3z36" id="42vv4xsG6Bg" role="3clFbw">
                                        <node concept="10Nm6u" id="42vv4xsG6Ch" role="3uHU7w" />
                                        <node concept="37vLTw" id="42vv4xsG5w4" role="3uHU7B">
                                          <ref role="3cqZAo" node="4uvvnUOsgMU" resolve="connection" />
                                        </node>
                                      </node>
                                      <node concept="9aQIb" id="42vv4xsG6L8" role="9aQIa">
                                        <node concept="3clFbS" id="42vv4xsG6L9" role="9aQI4">
                                          <node concept="RRSsy" id="42vv4xsG6OH" role="3cqZAp">
                                            <property role="RRSoG" value="gZ5fh_4/error" />
                                            <node concept="3cpWs3" id="42vv4xsG7zk" role="RRSoy">
                                              <node concept="2OqwBi" id="42vv4xsG7Xx" role="3uHU7w">
                                                <node concept="37vLTw" id="42vv4xsG7GW" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="42vv4xsG7__" resolve="deviceNode" />
                                                </node>
                                                <node concept="3TrcHB" id="42vv4xsGbCP" role="2OqNvi">
                                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                                </node>
                                              </node>
                                              <node concept="Xl_RD" id="42vv4xsG6OJ" role="3uHU7B">
                                                <property role="Xl_RC" value="Can't connect to device " />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3uVAMA" id="4uvvnUOsm5h" role="1zxBo5">
                                    <node concept="XOnhg" id="4uvvnUOsm5j" role="1zc67B">
                                      <property role="3TUv4t" value="false" />
                                      <property role="TrG5h" value="e" />
                                      <node concept="nSUau" id="4yqutd11ojw" role="1tU5fm">
                                        <node concept="3uibUv" id="4uvvnUOssO$" role="nSUat">
                                          <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="4uvvnUOsm5n" role="1zc67A">
                                      <node concept="3clFbF" id="k3FE8isJoP" role="3cqZAp">
                                        <node concept="2OqwBi" id="k3FE8isJBZ" role="3clFbG">
                                          <node concept="2OqwBi" id="5EF1Nu6MjqQ" role="2Oq$k0">
                                            <node concept="10M0yZ" id="5EF1Nu6MjcI" role="2Oq$k0">
                                              <ref role="1PxDUh" to="6w4o:~DevicesFacade" resolve="DevicesFacade" />
                                              <ref role="3cqZAo" to="6w4o:~DevicesFacade.Companion" resolve="Companion" />
                                            </node>
                                            <node concept="liA8E" id="5EF1Nu6MjLg" role="2OqNvi">
                                              <ref role="37wK5l" to="6w4o:~DevicesFacade$Companion.getInstance()" resolve="getInstance" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="k3FE8isOrm" role="2OqNvi">
                                            <ref role="37wK5l" to="6w4o:~DevicesFacade.invalidate(org.fbme.lib.iec61499.declarations.DeviceDeclaration)" resolve="invalidate" />
                                            <node concept="37vLTw" id="6Vznkw4jiVT" role="37wK5m">
                                              <ref role="3cqZAo" node="6Vznkw4jh0U" resolve="device" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="RRSsy" id="4uvvnUOssV4" role="3cqZAp">
                                        <property role="RRSoG" value="gZ5fh_4/error" />
                                        <node concept="37vLTw" id="4uvvnUOssV8" role="RRSow">
                                          <ref role="3cqZAo" node="4uvvnUOsm5j" resolve="e" />
                                        </node>
                                        <node concept="Xl_RD" id="4uvvnUOssYe" role="RRSoy">
                                          <property role="Xl_RC" value="on resource deployment" />
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
                    <node concept="2AHcQZ" id="7i6W9OfhqEc" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7i6W9Ofhya$" role="37wK5m">
                    <node concept="2WthIp" id="7i6W9OfhyaB" role="2Oq$k0">
                      <ref role="32nkFo" node="44qSI5$V0ef" resolve="DeployResource" />
                    </node>
                    <node concept="1DTwFV" id="7i6W9OfhyaD" role="2OqNvi">
                      <ref role="2WH_rO" node="7i6W9OfhuJT" resolve="project" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="7i6W9OfhyUq" role="37wK5m">
                    <property role="Xl_RC" value="Deploying Resource" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="7i6W9OfhYGD" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~Task.queue()" resolve="queue" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="44qSI5$V8ZS" role="tmbBb">
      <node concept="3clFbS" id="44qSI5$V8ZT" role="2VODD2">
        <node concept="3clFbF" id="44qSI5$V9Qf" role="3cqZAp">
          <node concept="2OqwBi" id="44qSI5$VhOq" role="3clFbG">
            <node concept="2OqwBi" id="44qSI5$V9Q9" role="2Oq$k0">
              <node concept="2WthIp" id="44qSI5$V9Qc" role="2Oq$k0" />
              <node concept="3gHZIF" id="44qSI5$Vgjr" role="2OqNvi">
                <ref role="2WH_rO" node="44qSI5$VfWX" resolve="node" />
              </node>
            </node>
            <node concept="1mIQ4w" id="44qSI5$Vi5S" role="2OqNvi">
              <node concept="chp4Y" id="44qSI5$ViiM" role="cj9EA">
                <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2S4$dB" id="44qSI5$VfWX" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="44qSI5$VfWY" role="1B3o_S" />
      <node concept="1oajcY" id="44qSI5$VfWZ" role="1oa70y" />
      <node concept="3Tqbb2" id="44qSI5$VfSR" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="7i6W9OfhgHN" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="7i6W9OfhgHO" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="7i6W9OfhuJT" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="7i6W9OfhuJU" role="1oa70y" />
    </node>
  </node>
  <node concept="312cEu" id="5PjcHHGcIHv">
    <property role="TrG5h" value="InspectionListener" />
    <node concept="3Tm1VV" id="5PjcHHGcIHw" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="5PjcHHGcAKb">
    <property role="TrG5h" value="NetworkWatchActions" />
    <node concept="2tJIrI" id="5PjcHHGcALC" role="jymVt" />
    <node concept="312cEg" id="19RKY2xEYIg" role="jymVt">
      <property role="TrG5h" value="myResourceNode" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="19RKY2xEX$o" role="1B3o_S" />
      <node concept="3Tqbb2" id="19RKY2xEYq4" role="1tU5fm">
        <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
      </node>
    </node>
    <node concept="312cEg" id="19RKY2xF6QL" role="jymVt">
      <property role="TrG5h" value="myEditorCell" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="19RKY2xF5Rd" role="1B3o_S" />
      <node concept="3uibUv" id="19RKY2xF6IC" role="1tU5fm">
        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
      </node>
    </node>
    <node concept="312cEg" id="4WS_6wCD18O" role="jymVt">
      <property role="TrG5h" value="myRepositoty" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4WS_6wCCZ3V" role="1B3o_S" />
      <node concept="3uibUv" id="QE5Kxywxxl" role="1tU5fm">
        <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
      </node>
    </node>
    <node concept="312cEg" id="4WS_6wCD2tY" role="jymVt">
      <property role="TrG5h" value="myWatchers" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4WS_6wCD1Qq" role="1B3o_S" />
      <node concept="3uibUv" id="4WS_6wCD2tW" role="1tU5fm">
        <ref role="3uigEE" to="6w4o:~WatcherFacade" resolve="WatcherFacade" />
      </node>
    </node>
    <node concept="2tJIrI" id="19RKY2xEUb1" role="jymVt" />
    <node concept="3clFbW" id="19RKY2xF00g" role="jymVt">
      <node concept="3cqZAl" id="19RKY2xF00h" role="3clF45" />
      <node concept="3Tm1VV" id="19RKY2xF00i" role="1B3o_S" />
      <node concept="3clFbS" id="19RKY2xF00k" role="3clF47">
        <node concept="3clFbF" id="19RKY2xF00o" role="3cqZAp">
          <node concept="37vLTI" id="19RKY2xF00q" role="3clFbG">
            <node concept="37vLTw" id="19RKY2xF00x" role="37vLTx">
              <ref role="3cqZAo" node="19RKY2xF00n" resolve="resourceNode" />
            </node>
            <node concept="37vLTw" id="19RKY2xF1K0" role="37vLTJ">
              <ref role="3cqZAo" node="19RKY2xEYIg" resolve="myResourceNode" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="19RKY2xF00$" role="3cqZAp">
          <node concept="37vLTI" id="19RKY2xF00A" role="3clFbG">
            <node concept="37vLTw" id="19RKY2xF7X3" role="37vLTJ">
              <ref role="3cqZAo" node="19RKY2xF6QL" resolve="myEditorCell" />
            </node>
            <node concept="37vLTw" id="19RKY2xF00H" role="37vLTx">
              <ref role="3cqZAo" node="19RKY2xF00z" resolve="cell" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Vznkw4g6SB" role="3cqZAp">
          <node concept="37vLTI" id="6Vznkw4g7b5" role="3clFbG">
            <node concept="37vLTw" id="6Vznkw4g6S_" role="37vLTJ">
              <ref role="3cqZAo" node="4WS_6wCD18O" resolve="myRepositoty" />
            </node>
            <node concept="2YIFZM" id="6Vznkw4fSVu" role="37vLTx">
              <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
              <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <node concept="37vLTw" id="6Vznkw4g4bR" role="37wK5m">
                <ref role="3cqZAo" node="4WS_6wCD2Lw" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6Vznkw4g7Dm" role="3cqZAp">
          <node concept="37vLTI" id="6Vznkw4g7U0" role="3clFbG">
            <node concept="2YIFZM" id="6Vznkw4g8fo" role="37vLTx">
              <ref role="1Pybhc" to="6w4o:~WatcherFacade" resolve="WatcherFacade" />
              <ref role="37wK5l" to="6w4o:~WatcherFacade.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <node concept="37vLTw" id="6Vznkw4g8lm" role="37wK5m">
                <ref role="3cqZAo" node="4WS_6wCD2Lw" resolve="project" />
              </node>
            </node>
            <node concept="37vLTw" id="6Vznkw4g7Dk" role="37vLTJ">
              <ref role="3cqZAo" node="4WS_6wCD2tY" resolve="myWatchers" />
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="19RKY2xF00n" role="3clF46">
        <property role="TrG5h" value="resourceNode" />
        <node concept="3Tqbb2" id="19RKY2xF00m" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
        </node>
      </node>
      <node concept="37vLTG" id="19RKY2xF00z" role="3clF46">
        <property role="TrG5h" value="cell" />
        <node concept="3uibUv" id="19RKY2xF7xG" role="1tU5fm">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
      </node>
      <node concept="37vLTG" id="4WS_6wCD2Lw" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="4WS_6wCD35B" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="19RKY2xF2vs" role="jymVt" />
    <node concept="3clFb_" id="2wHo_lFXM7A" role="jymVt">
      <property role="TrG5h" value="highlightEventConnections" />
      <node concept="3clFbS" id="2wHo_lFXM7D" role="3clF47">
        <node concept="3SKdUt" id="2wHo_lG35dy" role="3cqZAp">
          <node concept="1PaTwC" id="2wHo_lG35dz" role="1aUNEU">
            <node concept="3oM_SD" id="2wHo_lG35d_" role="1PaTwD">
              <property role="3oM_SC" value="to" />
            </node>
            <node concept="3oM_SD" id="2wHo_lG37pJ" role="1PaTwD">
              <property role="3oM_SC" value="test" />
            </node>
            <node concept="3oM_SD" id="2wHo_lG37pM" role="1PaTwD">
              <property role="3oM_SC" value="highlight" />
            </node>
            <node concept="3oM_SD" id="2wHo_lG37qm" role="1PaTwD">
              <property role="3oM_SC" value="connections" />
            </node>
            <node concept="3oM_SD" id="2wHo_lG37qF" role="1PaTwD">
              <property role="3oM_SC" value="only," />
            </node>
            <node concept="3oM_SD" id="2wHo_lG37r1" role="1PaTwD">
              <property role="3oM_SC" value="TODO" />
            </node>
            <node concept="3oM_SD" id="2wHo_lG37ro" role="1PaTwD">
              <property role="3oM_SC" value="write" />
            </node>
            <node concept="3oM_SD" id="2wHo_lG37rK" role="1PaTwD">
              <property role="3oM_SC" value="normal" />
            </node>
            <node concept="3oM_SD" id="2wHo_lG37sh" role="1PaTwD">
              <property role="3oM_SC" value="tests" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2wHo_lFXZ9q" role="3cqZAp">
          <node concept="3cpWsn" id="2wHo_lFXZ9r" role="3cpWs9">
            <property role="TrG5h" value="inspector" />
            <node concept="3uibUv" id="6SLp5w3KpVa" role="1tU5fm">
              <ref role="3uigEE" to="ek6x:~NetworkInspector" resolve="NetworkInspector" />
            </node>
            <node concept="1rXfSq" id="2wHo_lFXZ9s" role="33vP2m">
              <ref role="37wK5l" node="19RKY2xFaZl" resolve="getInspector" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2wHo_lFXRoI" role="3cqZAp">
          <node concept="3clFbS" id="2wHo_lFXRoJ" role="3clFbx">
            <node concept="3cpWs6" id="2wHo_lFXRoK" role="3cqZAp" />
          </node>
          <node concept="3clFbC" id="2wHo_lFXRoM" role="3clFbw">
            <node concept="10Nm6u" id="2wHo_lFXRoN" role="3uHU7w" />
            <node concept="37vLTw" id="2wHo_lFXZ9t" role="3uHU7B">
              <ref role="3cqZAo" node="2wHo_lFXZ9r" resolve="inspector" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2wHo_lFY8Ea" role="3cqZAp">
          <node concept="3cpWsn" id="2wHo_lFY8Eb" role="3cpWs9">
            <property role="TrG5h" value="networkInstance" />
            <node concept="3uibUv" id="2wHo_lFY89Z" role="1tU5fm">
              <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
            </node>
            <node concept="1rXfSq" id="2wHo_lFY8Ec" role="33vP2m">
              <ref role="37wK5l" node="19RKY2xFeiO" resolve="getNetworkInstance" />
            </node>
          </node>
        </node>
        <node concept="2Gpval" id="2wHo_lFY_Ix" role="3cqZAp">
          <node concept="2GrKxI" id="2wHo_lFY_Iz" role="2Gsz3X">
            <property role="TrG5h" value="connection" />
          </node>
          <node concept="3clFbS" id="2wHo_lFY_IB" role="2LFqv$">
            <node concept="3clFbF" id="2wHo_lFYUos" role="3cqZAp">
              <node concept="2OqwBi" id="2wHo_lFYUYL" role="3clFbG">
                <node concept="37vLTw" id="2wHo_lFYUNn" role="2Oq$k0">
                  <ref role="3cqZAo" node="2wHo_lFXZ9r" resolve="inspector" />
                </node>
                <node concept="liA8E" id="2wHo_lFYV7s" role="2OqNvi">
                  <ref role="37wK5l" to="ek6x:~NetworkInspector.setHighlightingForConnection(org.fbme.lib.iec61499.fbnetwork.FBNetworkConnection,java.awt.Color)" resolve="setHighlightingForConnection" />
                  <node concept="2GrUjf" id="2wHo_lFYWeN" role="37wK5m">
                    <ref role="2Gs0qQ" node="2wHo_lFY_Iz" resolve="connection" />
                  </node>
                  <node concept="10M0yZ" id="2wHo_lG2mPI" role="37wK5m">
                    <ref role="3cqZAo" to="lzb2:~JBColor.YELLOW" resolve="YELLOW" />
                    <ref role="1PxDUh" to="exr9:~MPSColors" resolve="MPSColors" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="2wHo_lFYqkv" role="2GsD0m">
            <node concept="2OqwBi" id="2wHo_lFYqkw" role="2Oq$k0">
              <node concept="37vLTw" id="2wHo_lFYqkx" role="2Oq$k0">
                <ref role="3cqZAo" node="2wHo_lFY8Eb" resolve="networkInstance" />
              </node>
              <node concept="liA8E" id="2wHo_lFYqky" role="2OqNvi">
                <ref role="37wK5l" to="74cb:~NetworkInstance.getNetworkDeclaration()" resolve="getNetworkDeclaration" />
              </node>
            </node>
            <node concept="liA8E" id="2wHo_lFYqkz" role="2OqNvi">
              <ref role="37wK5l" to="g27j:~FBNetwork.getEventConnections()" resolve="getEventConnections" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2wHo_lFXHXA" role="1B3o_S" />
      <node concept="3cqZAl" id="2wHo_lFXOX5" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2wHo_lFXF8J" role="jymVt" />
    <node concept="3clFb_" id="19RKY2xF3hL" role="jymVt">
      <property role="TrG5h" value="hasPortToWatch" />
      <node concept="3clFbS" id="19RKY2xF3hP" role="3clF47">
        <node concept="3clFbJ" id="19RKY2xF3hQ" role="3cqZAp">
          <node concept="3clFbS" id="19RKY2xF3hR" role="3clFbx">
            <node concept="3cpWs6" id="19RKY2xF3hS" role="3cqZAp">
              <node concept="3clFbT" id="19RKY2xF3hT" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="19RKY2xF3hU" role="3clFbw">
            <node concept="10Nm6u" id="19RKY2xF3hV" role="3uHU7w" />
            <node concept="1rXfSq" id="19RKY2xF3hW" role="3uHU7B">
              <ref role="37wK5l" node="19RKY2xFaZl" resolve="getInspector" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="19RKY2xF3hY" role="3cqZAp" />
        <node concept="3cpWs8" id="5uVbEkjHPwA" role="3cqZAp">
          <node concept="3cpWsn" id="5uVbEkjHPwB" role="3cpWs9">
            <property role="TrG5h" value="port" />
            <node concept="1rXfSq" id="5uVbEkjIu90" role="33vP2m">
              <ref role="37wK5l" node="5uVbEkjIfcQ" resolve="getPort" />
            </node>
            <node concept="3uibUv" id="5F$aghybXBd" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
              <node concept="3qTvmN" id="5F$aghybXBe" role="11_B2D" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="19RKY2xF3ij" role="3cqZAp">
          <node concept="1Wc70l" id="19RKY2xF3ik" role="3cqZAk">
            <node concept="3y3z36" id="19RKY2xF3ip" role="3uHU7B">
              <node concept="37vLTw" id="5uVbEkjIvuE" role="3uHU7B">
                <ref role="3cqZAo" node="5uVbEkjHPwB" resolve="port" />
              </node>
              <node concept="10Nm6u" id="19RKY2xF3ir" role="3uHU7w" />
            </node>
            <node concept="3clFbC" id="19RKY2xF3is" role="3uHU7w">
              <node concept="10Nm6u" id="19RKY2xF3it" role="3uHU7w" />
              <node concept="1rXfSq" id="19RKY2xF3iu" role="3uHU7B">
                <ref role="37wK5l" node="19RKY2xFofQ" resolve="getPortListener" />
                <node concept="37vLTw" id="5uVbEkjHPwG" role="37wK5m">
                  <ref role="3cqZAo" node="5uVbEkjHPwB" resolve="port" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="19RKY2xF3i_" role="3clF45" />
      <node concept="3Tm1VV" id="19RKY2xF3i$" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="19RKY2xFPv_" role="jymVt" />
    <node concept="3clFb_" id="19RKY2xF446" role="jymVt">
      <property role="TrG5h" value="hasWatchedPort" />
      <node concept="3clFbS" id="19RKY2xF44c" role="3clF47">
        <node concept="3clFbJ" id="19RKY2xF44d" role="3cqZAp">
          <node concept="3clFbS" id="19RKY2xF44e" role="3clFbx">
            <node concept="3cpWs6" id="19RKY2xF44f" role="3cqZAp">
              <node concept="3clFbT" id="19RKY2xF44g" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="19RKY2xF44h" role="3clFbw">
            <node concept="10Nm6u" id="19RKY2xF44i" role="3uHU7w" />
            <node concept="1rXfSq" id="19RKY2xF44j" role="3uHU7B">
              <ref role="37wK5l" node="19RKY2xFaZl" resolve="getInspector" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="19RKY2xF44l" role="3cqZAp" />
        <node concept="3cpWs8" id="5uVbEkjIB3M" role="3cqZAp">
          <node concept="3cpWsn" id="5uVbEkjIB3N" role="3cpWs9">
            <property role="TrG5h" value="port" />
            <node concept="1rXfSq" id="5uVbEkjIB3P" role="33vP2m">
              <ref role="37wK5l" node="5uVbEkjIfcQ" resolve="getPort" />
            </node>
            <node concept="3uibUv" id="5F$aghybZhp" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
              <node concept="3qTvmN" id="5F$aghybZhq" role="11_B2D" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="19RKY2xF44E" role="3cqZAp">
          <node concept="1Wc70l" id="19RKY2xF44F" role="3cqZAk">
            <node concept="3y3z36" id="19RKY2xF44K" role="3uHU7B">
              <node concept="37vLTw" id="5uVbEkjIChA" role="3uHU7B">
                <ref role="3cqZAo" node="5uVbEkjIB3N" resolve="port" />
              </node>
              <node concept="10Nm6u" id="19RKY2xF44M" role="3uHU7w" />
            </node>
            <node concept="3y3z36" id="19RKY2xF44N" role="3uHU7w">
              <node concept="1rXfSq" id="19RKY2xF44O" role="3uHU7B">
                <ref role="37wK5l" node="19RKY2xFofQ" resolve="getPortListener" />
                <node concept="37vLTw" id="5uVbEkjIFij" role="37wK5m">
                  <ref role="3cqZAo" node="5uVbEkjIB3N" resolve="port" />
                </node>
              </node>
              <node concept="10Nm6u" id="19RKY2xF44U" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="19RKY2xF44W" role="3clF45" />
      <node concept="3Tm1VV" id="19RKY2xF44V" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5PjcHHGdYxq" role="jymVt" />
    <node concept="3clFb_" id="19RKY2xFOor" role="jymVt">
      <property role="TrG5h" value="portToWatch" />
      <node concept="3clFbS" id="19RKY2xFOov" role="3clF47">
        <node concept="3cpWs8" id="19RKY2xFOow" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xFOox" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="19RKY2xFOoy" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="19RKY2xFOoz" role="33vP2m">
              <node concept="37vLTw" id="19RKY2xG$WI" role="2Oq$k0">
                <ref role="3cqZAo" node="19RKY2xF6QL" resolve="myEditorCell" />
              </node>
              <node concept="liA8E" id="19RKY2xFOo_" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="19RKY2xFOoA" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xFOoB" role="3cpWs9">
            <property role="TrG5h" value="port" />
            <node concept="3uibUv" id="19RKY2xFOoC" role="1tU5fm">
              <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
            </node>
            <node concept="2OqwBi" id="19RKY2xFOoD" role="33vP2m">
              <node concept="37vLTw" id="19RKY2xFOoE" role="2Oq$k0">
                <ref role="3cqZAo" node="19RKY2xFOox" resolve="style" />
              </node>
              <node concept="liA8E" id="19RKY2xFOoF" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6SLp5w3Kq0C" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.PORT" resolve="PORT" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="19RKY2xFOoH" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xFOoI" role="3clFbG">
            <node concept="37vLTw" id="19RKY2xFOoJ" role="2Oq$k0">
              <ref role="3cqZAo" node="19RKY2xFOoB" resolve="port" />
            </node>
            <node concept="liA8E" id="19RKY2xFOoK" role="2OqNvi">
              <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getName()" resolve="getName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="19RKY2xFOoM" role="3clF45" />
      <node concept="3Tm1VV" id="19RKY2xFOoL" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1S4cYrOMFYn" role="jymVt" />
    <node concept="3clFb_" id="1S4cYrOMDwO" role="jymVt">
      <property role="TrG5h" value="hasWatchedFunctionBlock" />
      <node concept="3clFbS" id="1S4cYrOMDwP" role="3clF47">
        <node concept="3clFbJ" id="1S4cYrOMJJc" role="3cqZAp">
          <node concept="3clFbS" id="1S4cYrOMJJd" role="3clFbx">
            <node concept="3cpWs6" id="1S4cYrOMJJe" role="3cqZAp">
              <node concept="3clFbT" id="1S4cYrOMJJf" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="1S4cYrOMJJg" role="3clFbw">
            <node concept="10Nm6u" id="1S4cYrOMJJh" role="3uHU7w" />
            <node concept="1rXfSq" id="1S4cYrOMJJi" role="3uHU7B">
              <ref role="37wK5l" node="19RKY2xFaZl" resolve="getInspector" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1S4cYrOMJJj" role="3cqZAp" />
        <node concept="3cpWs8" id="1S4cYrOMJJk" role="3cqZAp">
          <node concept="3cpWsn" id="1S4cYrOMJJl" role="3cpWs9">
            <property role="TrG5h" value="functionBlock" />
            <node concept="3uibUv" id="2yJZQx2_etS" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
            </node>
            <node concept="1rXfSq" id="1S4cYrOMVtL" role="33vP2m">
              <ref role="37wK5l" node="1S4cYrOMM45" resolve="getFunctionBlock" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1S4cYrOMJJo" role="3cqZAp">
          <node concept="1Wc70l" id="1S4cYrOMJJp" role="3cqZAk">
            <node concept="3y3z36" id="1S4cYrOMJJq" role="3uHU7B">
              <node concept="37vLTw" id="1S4cYrOMJJr" role="3uHU7B">
                <ref role="3cqZAo" node="1S4cYrOMJJl" resolve="functionBlock" />
              </node>
              <node concept="10Nm6u" id="1S4cYrOMJJs" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="1S4cYrON9eZ" role="3uHU7w">
              <node concept="1eOMI4" id="6kcQr5w_imn" role="2Oq$k0">
                <node concept="10QFUN" id="6kcQr5w_kfN" role="1eOMHV">
                  <node concept="2OqwBi" id="6kcQr5w_imk" role="10QFUP">
                    <node concept="37vLTw" id="6kcQr5w_iml" role="2Oq$k0">
                      <ref role="3cqZAo" node="1S4cYrOMJJl" resolve="functionBlock" />
                    </node>
                    <node concept="liA8E" id="6kcQr5w_imm" role="2OqNvi">
                      <ref role="37wK5l" to="g27j:~FunctionBlockDeclarationBase.getPorts()" resolve="getPorts" />
                    </node>
                  </node>
                  <node concept="2hMVRd" id="64EP$RZ5oCn" role="10QFUM">
                    <node concept="3uibUv" id="64EP$RZ5oCo" role="2hN53Y">
                      <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                      <node concept="3qUE_q" id="64EP$RZ5oCp" role="11_B2D">
                        <node concept="3uibUv" id="64EP$RZ5oCq" role="3qUE_r">
                          <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2HwmR7" id="1S4cYrONbae" role="2OqNvi">
                <node concept="1bVj0M" id="1S4cYrONbag" role="23t8la">
                  <node concept="3clFbS" id="1S4cYrONbah" role="1bW5cS">
                    <node concept="3clFbF" id="1S4cYrONcEm" role="3cqZAp">
                      <node concept="3y3z36" id="1S4cYrONfa4" role="3clFbG">
                        <node concept="10Nm6u" id="1S4cYrONgqs" role="3uHU7w" />
                        <node concept="1rXfSq" id="1S4cYrONcEl" role="3uHU7B">
                          <ref role="37wK5l" node="19RKY2xFofQ" resolve="getPortListener" />
                          <node concept="37vLTw" id="1S4cYrONdT4" role="37wK5m">
                            <ref role="3cqZAo" node="1S4cYrONbai" resolve="it" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1S4cYrONbai" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1S4cYrONbaj" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="1S4cYrOMDxs" role="3clF45" />
      <node concept="3Tm1VV" id="1S4cYrOMDxt" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6kcQr5w_P_y" role="jymVt" />
    <node concept="3clFb_" id="6kcQr5w_nRD" role="jymVt">
      <property role="TrG5h" value="hasWatchedFunctionBlocksInSelection" />
      <node concept="3clFbS" id="6kcQr5w_nRE" role="3clF47">
        <node concept="3clFbJ" id="6kcQr5w_nRF" role="3cqZAp">
          <node concept="3clFbS" id="6kcQr5w_nRG" role="3clFbx">
            <node concept="3cpWs6" id="6kcQr5w_nRH" role="3cqZAp">
              <node concept="3clFbT" id="6kcQr5w_nRI" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="6kcQr5w_nRJ" role="3clFbw">
            <node concept="10Nm6u" id="6kcQr5w_nRK" role="3uHU7w" />
            <node concept="1rXfSq" id="6kcQr5w_nRL" role="3uHU7B">
              <ref role="37wK5l" node="19RKY2xFaZl" resolve="getInspector" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6kcQr5w_nRM" role="3cqZAp" />
        <node concept="3cpWs8" id="6kcQr5w_nRN" role="3cqZAp">
          <node concept="3cpWsn" id="6kcQr5w_nRO" role="3cpWs9">
            <property role="TrG5h" value="functionBlocks" />
            <node concept="_YKpA" id="6kcQr5w_nRP" role="1tU5fm">
              <node concept="3uibUv" id="6kcQr5w_nRQ" role="_ZDj9">
                <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
              </node>
            </node>
            <node concept="1rXfSq" id="6kcQr5w_nRR" role="33vP2m">
              <ref role="37wK5l" node="1S4cYrOQiXj" resolve="getSelectedFunctionBlocks" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kcQr5w_nRS" role="3cqZAp">
          <node concept="2OqwBi" id="6kcQr5w_nRT" role="3clFbG">
            <node concept="37vLTw" id="6kcQr5w_nRU" role="2Oq$k0">
              <ref role="3cqZAo" node="6kcQr5w_nRO" resolve="functionBlocks" />
            </node>
            <node concept="2HwmR7" id="6kcQr5w_nRV" role="2OqNvi">
              <node concept="1bVj0M" id="6kcQr5w_nRW" role="23t8la">
                <node concept="3clFbS" id="6kcQr5w_nRX" role="1bW5cS">
                  <node concept="3cpWs8" id="6kcQr5w_nRY" role="3cqZAp">
                    <node concept="3cpWsn" id="6kcQr5w_nRZ" role="3cpWs9">
                      <property role="TrG5h" value="ports" />
                      <node concept="2OqwBi" id="6kcQr5w_nS2" role="33vP2m">
                        <node concept="37vLTw" id="6kcQr5w_nS3" role="2Oq$k0">
                          <ref role="3cqZAo" node="6kcQr5w_nSi" resolve="it" />
                        </node>
                        <node concept="liA8E" id="6kcQr5w_nS4" role="2OqNvi">
                          <ref role="37wK5l" to="g27j:~FunctionBlockDeclarationBase.getPorts()" resolve="getPorts" />
                        </node>
                      </node>
                      <node concept="2hMVRd" id="64EP$RZ5lUP" role="1tU5fm">
                        <node concept="3uibUv" id="64EP$RZ5lUQ" role="2hN53Y">
                          <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                          <node concept="3qUE_q" id="64EP$RZ5lUR" role="11_B2D">
                            <node concept="3uibUv" id="64EP$RZ5lUS" role="3qUE_r">
                              <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6kcQr5w_nS5" role="3cqZAp">
                    <node concept="2OqwBi" id="6kcQr5w_nS6" role="3cqZAk">
                      <node concept="37vLTw" id="6kcQr5w_nS7" role="2Oq$k0">
                        <ref role="3cqZAo" node="6kcQr5w_nRZ" resolve="ports" />
                      </node>
                      <node concept="2HwmR7" id="6kcQr5w_nS8" role="2OqNvi">
                        <node concept="1bVj0M" id="6kcQr5w_nS9" role="23t8la">
                          <node concept="3clFbS" id="6kcQr5w_nSa" role="1bW5cS">
                            <node concept="3clFbF" id="6kcQr5w_nSb" role="3cqZAp">
                              <node concept="3y3z36" id="6kcQr5w_NjI" role="3clFbG">
                                <node concept="1rXfSq" id="6kcQr5w_nSd" role="3uHU7B">
                                  <ref role="37wK5l" node="19RKY2xFofQ" resolve="getPortListener" />
                                  <node concept="37vLTw" id="6kcQr5w_nSe" role="37wK5m">
                                    <ref role="3cqZAo" node="6kcQr5w_nSg" resolve="it" />
                                  </node>
                                </node>
                                <node concept="10Nm6u" id="6kcQr5w_nSf" role="3uHU7w" />
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="6kcQr5w_nSg" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="6kcQr5w_nSh" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6kcQr5w_nSi" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6kcQr5w_nSj" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6kcQr5w_nSk" role="3clF45" />
      <node concept="3Tm1VV" id="6kcQr5w_nSl" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1S4cYrONng$" role="jymVt" />
    <node concept="3clFb_" id="1S4cYrONjsz" role="jymVt">
      <property role="TrG5h" value="hasFunctionBlockToWatch" />
      <node concept="3clFbS" id="1S4cYrONjs$" role="3clF47">
        <node concept="3clFbJ" id="1S4cYrONjs_" role="3cqZAp">
          <node concept="3clFbS" id="1S4cYrONjsA" role="3clFbx">
            <node concept="3cpWs6" id="1S4cYrONjsB" role="3cqZAp">
              <node concept="3clFbT" id="1S4cYrONjsC" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="1S4cYrONjsD" role="3clFbw">
            <node concept="10Nm6u" id="1S4cYrONjsE" role="3uHU7w" />
            <node concept="1rXfSq" id="1S4cYrONjsF" role="3uHU7B">
              <ref role="37wK5l" node="19RKY2xFaZl" resolve="getInspector" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1S4cYrONjsG" role="3cqZAp" />
        <node concept="3cpWs8" id="1S4cYrONjsH" role="3cqZAp">
          <node concept="3cpWsn" id="1S4cYrONjsI" role="3cpWs9">
            <property role="TrG5h" value="functionBlock" />
            <node concept="3uibUv" id="2yJZQx2_gpM" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
            </node>
            <node concept="1rXfSq" id="1S4cYrONjsK" role="33vP2m">
              <ref role="37wK5l" node="1S4cYrOMM45" resolve="getFunctionBlock" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1S4cYrONjsS" role="3cqZAp">
          <node concept="1Wc70l" id="1S4cYrONjsT" role="3cqZAk">
            <node concept="3y3z36" id="1S4cYrONjsU" role="3uHU7B">
              <node concept="37vLTw" id="1S4cYrONjsV" role="3uHU7B">
                <ref role="3cqZAo" node="1S4cYrONjsI" resolve="functionBlock" />
              </node>
              <node concept="10Nm6u" id="1S4cYrONjsW" role="3uHU7w" />
            </node>
            <node concept="2OqwBi" id="1S4cYrONjsX" role="3uHU7w">
              <node concept="1eOMI4" id="6kcQr5w_bdI" role="2Oq$k0">
                <node concept="10QFUN" id="6kcQr5w_d4L" role="1eOMHV">
                  <node concept="2OqwBi" id="6kcQr5w$Xsr" role="10QFUP">
                    <node concept="37vLTw" id="6kcQr5w$Xss" role="2Oq$k0">
                      <ref role="3cqZAo" node="1S4cYrONjsI" resolve="functionBlock" />
                    </node>
                    <node concept="liA8E" id="6kcQr5w$Xst" role="2OqNvi">
                      <ref role="37wK5l" to="g27j:~FunctionBlockDeclarationBase.getPorts()" resolve="getPorts" />
                    </node>
                  </node>
                  <node concept="2hMVRd" id="64EP$RZ5jvJ" role="10QFUM">
                    <node concept="3uibUv" id="64EP$RZ5jvK" role="2hN53Y">
                      <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                      <node concept="3qUE_q" id="64EP$RZ5jvL" role="11_B2D">
                        <node concept="3uibUv" id="64EP$RZ5jvM" role="3qUE_r">
                          <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2HwmR7" id="1S4cYrONjsZ" role="2OqNvi">
                <node concept="1bVj0M" id="1S4cYrONjt0" role="23t8la">
                  <node concept="3clFbS" id="1S4cYrONjt1" role="1bW5cS">
                    <node concept="3clFbF" id="1S4cYrONjt2" role="3cqZAp">
                      <node concept="3clFbC" id="1S4cYrONpUb" role="3clFbG">
                        <node concept="1rXfSq" id="1S4cYrONjt5" role="3uHU7B">
                          <ref role="37wK5l" node="19RKY2xFofQ" resolve="getPortListener" />
                          <node concept="37vLTw" id="1S4cYrONjt6" role="37wK5m">
                            <ref role="3cqZAo" node="1S4cYrONjt7" resolve="it" />
                          </node>
                        </node>
                        <node concept="10Nm6u" id="1S4cYrONjt4" role="3uHU7w" />
                      </node>
                    </node>
                  </node>
                  <node concept="Rh6nW" id="1S4cYrONjt7" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="2jxLKc" id="1S4cYrONjt8" role="1tU5fm" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="1S4cYrONjt9" role="3clF45" />
      <node concept="3Tm1VV" id="1S4cYrONjta" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6kcQr5w$wAd" role="jymVt" />
    <node concept="3clFb_" id="6kcQr5w$sYW" role="jymVt">
      <property role="TrG5h" value="hasFunctionBlocskToWatchInSelection" />
      <node concept="3clFbS" id="6kcQr5w$sYX" role="3clF47">
        <node concept="3clFbJ" id="6kcQr5w$sYY" role="3cqZAp">
          <node concept="3clFbS" id="6kcQr5w$sYZ" role="3clFbx">
            <node concept="3cpWs6" id="6kcQr5w$sZ0" role="3cqZAp">
              <node concept="3clFbT" id="6kcQr5w$sZ1" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="6kcQr5w$sZ2" role="3clFbw">
            <node concept="10Nm6u" id="6kcQr5w$sZ3" role="3uHU7w" />
            <node concept="1rXfSq" id="6kcQr5w$sZ4" role="3uHU7B">
              <ref role="37wK5l" node="19RKY2xFaZl" resolve="getInspector" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6kcQr5w$sZ5" role="3cqZAp" />
        <node concept="3cpWs8" id="6kcQr5w$sZ6" role="3cqZAp">
          <node concept="3cpWsn" id="6kcQr5w$sZ7" role="3cpWs9">
            <property role="TrG5h" value="functionBlocks" />
            <node concept="_YKpA" id="6kcQr5w$GVc" role="1tU5fm">
              <node concept="3uibUv" id="6kcQr5w$GVe" role="_ZDj9">
                <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
              </node>
            </node>
            <node concept="1rXfSq" id="6kcQr5w$_Om" role="33vP2m">
              <ref role="37wK5l" node="1S4cYrOQiXj" resolve="getSelectedFunctionBlocks" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6kcQr5w$KCU" role="3cqZAp">
          <node concept="2OqwBi" id="6kcQr5w$Mou" role="3clFbG">
            <node concept="37vLTw" id="6kcQr5w$O4l" role="2Oq$k0">
              <ref role="3cqZAo" node="6kcQr5w$sZ7" resolve="functionBlocks" />
            </node>
            <node concept="2HwmR7" id="6kcQr5w$OV$" role="2OqNvi">
              <node concept="1bVj0M" id="6kcQr5w$OVA" role="23t8la">
                <node concept="3clFbS" id="6kcQr5w$OVB" role="1bW5cS">
                  <node concept="3cpWs8" id="6kcQr5w$sZa" role="3cqZAp">
                    <node concept="3cpWsn" id="6kcQr5w$sZb" role="3cpWs9">
                      <property role="TrG5h" value="ports" />
                      <node concept="2hMVRd" id="6kcQr5w$sZc" role="1tU5fm">
                        <node concept="3uibUv" id="1gxDN_wCbnp" role="2hN53Y">
                          <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                          <node concept="3qUE_q" id="64EP$RZ5gq1" role="11_B2D">
                            <node concept="3uibUv" id="64EP$RZ5gTi" role="3qUE_r">
                              <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2OqwBi" id="6kcQr5w$sZe" role="33vP2m">
                        <node concept="37vLTw" id="6kcQr5w$QW4" role="2Oq$k0">
                          <ref role="3cqZAo" node="6kcQr5w$OVC" resolve="it" />
                        </node>
                        <node concept="liA8E" id="6kcQr5w$sZg" role="2OqNvi">
                          <ref role="37wK5l" to="g27j:~FunctionBlockDeclarationBase.getPorts()" resolve="getPorts" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="6kcQr5w$sZh" role="3cqZAp">
                    <node concept="2OqwBi" id="6kcQr5w$sZm" role="3cqZAk">
                      <node concept="37vLTw" id="6kcQr5w$sZn" role="2Oq$k0">
                        <ref role="3cqZAo" node="6kcQr5w$sZb" resolve="ports" />
                      </node>
                      <node concept="2HwmR7" id="6kcQr5w$sZo" role="2OqNvi">
                        <node concept="1bVj0M" id="6kcQr5w$sZp" role="23t8la">
                          <node concept="3clFbS" id="6kcQr5w$sZq" role="1bW5cS">
                            <node concept="3clFbF" id="6kcQr5w$sZr" role="3cqZAp">
                              <node concept="3clFbC" id="6kcQr5w$sZs" role="3clFbG">
                                <node concept="1rXfSq" id="6kcQr5w$sZt" role="3uHU7B">
                                  <ref role="37wK5l" node="19RKY2xFofQ" resolve="getPortListener" />
                                  <node concept="37vLTw" id="6kcQr5w$sZu" role="37wK5m">
                                    <ref role="3cqZAo" node="6kcQr5w$sZw" resolve="it" />
                                  </node>
                                </node>
                                <node concept="10Nm6u" id="6kcQr5w$sZv" role="3uHU7w" />
                              </node>
                            </node>
                          </node>
                          <node concept="Rh6nW" id="6kcQr5w$sZw" role="1bW2Oz">
                            <property role="TrG5h" value="it" />
                            <node concept="2jxLKc" id="6kcQr5w$sZx" role="1tU5fm" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="Rh6nW" id="6kcQr5w$OVC" role="1bW2Oz">
                  <property role="TrG5h" value="it" />
                  <node concept="2jxLKc" id="6kcQr5w$OVD" role="1tU5fm" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="6kcQr5w$sZy" role="3clF45" />
      <node concept="3Tm1VV" id="6kcQr5w$sZz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1S4cYrOQ7_3" role="jymVt" />
    <node concept="3clFb_" id="1S4cYrOQcQr" role="jymVt">
      <property role="TrG5h" value="unwatchSelectedFunctionBlocks" />
      <node concept="3clFbS" id="1S4cYrOQcQu" role="3clF47">
        <node concept="2Gpval" id="1S4cYrOQJGM" role="3cqZAp">
          <node concept="2GrKxI" id="1S4cYrOQJGN" role="2Gsz3X">
            <property role="TrG5h" value="functionBlock" />
          </node>
          <node concept="1rXfSq" id="1S4cYrOQJTg" role="2GsD0m">
            <ref role="37wK5l" node="1S4cYrOQiXj" resolve="getSelectedFunctionBlocks" />
          </node>
          <node concept="3clFbS" id="1S4cYrOQJGP" role="2LFqv$">
            <node concept="3clFbF" id="1S4cYrOQK0y" role="3cqZAp">
              <node concept="1rXfSq" id="1S4cYrOQK0$" role="3clFbG">
                <ref role="37wK5l" node="1S4cYrOQ3YS" resolve="unwatchFunctionBlock" />
                <node concept="2GrUjf" id="1S4cYrOQKcG" role="37wK5m">
                  <ref role="2Gs0qQ" node="1S4cYrOQJGN" resolve="functionBlock" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1S4cYrOQaZS" role="1B3o_S" />
      <node concept="3cqZAl" id="1S4cYrOQbmg" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1S4cYrONv0D" role="jymVt" />
    <node concept="3clFb_" id="1S4cYrONxwq" role="jymVt">
      <property role="TrG5h" value="unwatchFunctionBlock" />
      <node concept="3clFbS" id="1S4cYrONxwr" role="3clF47">
        <node concept="3cpWs8" id="1S4cYrOQ3pZ" role="3cqZAp">
          <node concept="3cpWsn" id="1S4cYrOQ3q0" role="3cpWs9">
            <property role="TrG5h" value="functionBlock" />
            <node concept="3uibUv" id="6Vznkw4h$73" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
            </node>
            <node concept="0kSF2" id="6Vznkw4hzRE" role="33vP2m">
              <node concept="3uibUv" id="6Vznkw4h$gP" role="0kSFW">
                <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
              </node>
              <node concept="1rXfSq" id="1S4cYrOQ3q1" role="0kSFX">
                <ref role="37wK5l" node="1S4cYrOMM45" resolve="getFunctionBlock" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1S4cYrOQ3YX" role="3cqZAp">
          <node concept="1rXfSq" id="1S4cYrOQ3YW" role="3clFbG">
            <ref role="37wK5l" node="1S4cYrOQ3YS" resolve="unwatchFunctionBlock" />
            <node concept="37vLTw" id="1S4cYrOQ3YV" role="37wK5m">
              <ref role="3cqZAo" node="1S4cYrOQ3q0" resolve="functionBlock" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1S4cYrONxx1" role="3clF45" />
      <node concept="3Tm1VV" id="1S4cYrONxx2" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1S4cYrOQ5OY" role="jymVt" />
    <node concept="3clFb_" id="1S4cYrOQ3YS" role="jymVt">
      <property role="TrG5h" value="unwatchFunctionBlock" />
      <node concept="3Tm6S6" id="1S4cYrOQ3YT" role="1B3o_S" />
      <node concept="3cqZAl" id="1S4cYrOQ3YU" role="3clF45" />
      <node concept="37vLTG" id="1S4cYrOQ3YN" role="3clF46">
        <property role="TrG5h" value="functionBlock" />
        <node concept="3uibUv" id="6Vznkw4hzwK" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="1S4cYrOQ3XS" role="3clF47">
        <node concept="3cpWs8" id="1S4cYrOQ3XX" role="3cqZAp">
          <node concept="3cpWsn" id="1S4cYrOQ3XY" role="3cpWs9">
            <property role="TrG5h" value="provider" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6SLp5w3Kqb2" role="1tU5fm">
              <ref role="3uigEE" to="ek6x:~NetworkInspector" resolve="NetworkInspector" />
            </node>
            <node concept="1rXfSq" id="1S4cYrOQ3Y0" role="33vP2m">
              <ref role="37wK5l" node="19RKY2xFaZl" resolve="getInspector" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1S4cYrOQ3Y1" role="3cqZAp" />
        <node concept="2Gpval" id="1S4cYrOQ3Y2" role="3cqZAp">
          <node concept="2GrKxI" id="1S4cYrOQ3Y3" role="2Gsz3X">
            <property role="TrG5h" value="port" />
          </node>
          <node concept="2OqwBi" id="1S4cYrOQ3Y4" role="2GsD0m">
            <node concept="37vLTw" id="1S4cYrOQ3YP" role="2Oq$k0">
              <ref role="3cqZAo" node="1S4cYrOQ3YN" resolve="functionBlock" />
            </node>
            <node concept="liA8E" id="1S4cYrOQ3Y6" role="2OqNvi">
              <ref role="37wK5l" to="g27j:~FunctionBlockDeclarationBase.getPorts()" resolve="getPorts" />
            </node>
          </node>
          <node concept="3clFbS" id="1S4cYrOQ3Y7" role="2LFqv$">
            <node concept="3cpWs8" id="1S4cYrOQ3Y8" role="3cqZAp">
              <node concept="3cpWsn" id="1S4cYrOQ3Y9" role="3cpWs9">
                <property role="TrG5h" value="listener" />
                <node concept="3uibUv" id="IHtTBFkfto" role="1tU5fm">
                  <ref role="3uigEE" to="6w4o:~WatchedValueListener" resolve="WatchedValueListener" />
                </node>
                <node concept="1rXfSq" id="1S4cYrOQ3Yb" role="33vP2m">
                  <ref role="37wK5l" node="19RKY2xFofQ" resolve="getPortListener" />
                  <node concept="2GrUjf" id="1S4cYrOQ3Yc" role="37wK5m">
                    <ref role="2Gs0qQ" node="1S4cYrOQ3Y3" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1S4cYrOQ3Yd" role="3cqZAp">
              <node concept="3clFbS" id="1S4cYrOQ3Ye" role="3clFbx">
                <node concept="3N13vt" id="1S4cYrOQ3Yf" role="3cqZAp" />
              </node>
              <node concept="3clFbC" id="1S4cYrOQ3Yg" role="3clFbw">
                <node concept="10Nm6u" id="1S4cYrOQ3Yh" role="3uHU7w" />
                <node concept="37vLTw" id="1S4cYrOQ3Yi" role="3uHU7B">
                  <ref role="3cqZAo" node="1S4cYrOQ3Y9" resolve="listener" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1S4cYrOQ3Yj" role="3cqZAp" />
            <node concept="3cpWs8" id="1S4cYrOQ3Yk" role="3cqZAp">
              <node concept="3cpWsn" id="1S4cYrOQ3Yl" role="3cpWs9">
                <property role="TrG5h" value="watchable" />
                <node concept="3uibUv" id="IHtTBFkf$2" role="1tU5fm">
                  <ref role="3uigEE" to="6w4o:~Watchable" resolve="Watchable" />
                </node>
                <node concept="2ShNRf" id="1S4cYrOQ3Yn" role="33vP2m">
                  <node concept="1pGfFk" id="1S4cYrOQ3Yo" role="2ShVmc">
                    <ref role="37wK5l" to="6w4o:~Watchable.&lt;init&gt;(org.fbme.ide.platform.debugger.WatchablePath,java.lang.String)" resolve="Watchable" />
                    <node concept="1rXfSq" id="1S4cYrOQ3Yp" role="37wK5m">
                      <ref role="37wK5l" node="74jd4DVyRsh" resolve="createWatchablePath" />
                      <node concept="37vLTw" id="74jd4DVzjjm" role="37wK5m">
                        <ref role="3cqZAo" node="1S4cYrOQ3YN" resolve="functionBlock" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="64EP$RZ52Jj" role="37wK5m">
                      <node concept="2OqwBi" id="64EP$RZ55g4" role="2Oq$k0">
                        <node concept="2GrUjf" id="64EP$RZ55g5" role="2Oq$k0">
                          <ref role="2Gs0qQ" node="1S4cYrOQ3Y3" resolve="port" />
                        </node>
                        <node concept="liA8E" id="64EP$RZ55g6" role="2OqNvi">
                          <ref role="37wK5l" to="g27j:~PortPath.getPortTarget()" resolve="getPortTarget" />
                        </node>
                      </node>
                      <node concept="liA8E" id="64EP$RZ56mR" role="2OqNvi">
                        <ref role="37wK5l" to="7adg:~Declaration.getName()" resolve="getName" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1S4cYrOQ3Yw" role="3cqZAp">
              <node concept="2OqwBi" id="1S4cYrOQ3Yx" role="3clFbG">
                <node concept="37vLTw" id="6Vznkw4g8Lc" role="2Oq$k0">
                  <ref role="3cqZAo" node="4WS_6wCD2tY" resolve="myWatchers" />
                </node>
                <node concept="liA8E" id="1S4cYrOQ3Yz" role="2OqNvi">
                  <ref role="37wK5l" to="6w4o:~WatcherFacade.unwatch(org.fbme.ide.platform.debugger.Watchable)" resolve="unwatch" />
                  <node concept="37vLTw" id="1S4cYrOQ3Y$" role="37wK5m">
                    <ref role="3cqZAo" node="1S4cYrOQ3Yl" resolve="watchable" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1S4cYrOQ3Y_" role="3cqZAp">
              <node concept="2OqwBi" id="1S4cYrOQ3YA" role="3clFbG">
                <node concept="37vLTw" id="6Vznkw4g8Sc" role="2Oq$k0">
                  <ref role="3cqZAo" node="4WS_6wCD2tY" resolve="myWatchers" />
                </node>
                <node concept="liA8E" id="1S4cYrOQ3YC" role="2OqNvi">
                  <ref role="37wK5l" to="6w4o:~WatcherFacade.removeWatchedValueListener(org.fbme.ide.platform.debugger.WatchableData,org.fbme.ide.platform.debugger.WatchedValueListener)" resolve="removeWatchedValueListener" />
                  <node concept="2OqwBi" id="1S4cYrOQ3YD" role="37wK5m">
                    <node concept="37vLTw" id="1S4cYrOQ3YE" role="2Oq$k0">
                      <ref role="3cqZAo" node="1S4cYrOQ3Yl" resolve="watchable" />
                    </node>
                    <node concept="liA8E" id="IHtTBFkfQV" role="2OqNvi">
                      <ref role="37wK5l" to="6w4o:~Watchable.serialize()" resolve="serialize" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1S4cYrOQ3YG" role="37wK5m">
                    <ref role="3cqZAo" node="1S4cYrOQ3Y9" resolve="listener" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1S4cYrOQ3YH" role="3cqZAp">
              <node concept="2OqwBi" id="1S4cYrOQ3YI" role="3clFbG">
                <node concept="37vLTw" id="1S4cYrOQ3YJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S4cYrOQ3XY" resolve="provider" />
                </node>
                <node concept="liA8E" id="1S4cYrOQ3YK" role="2OqNvi">
                  <ref role="37wK5l" to="ek6x:~NetworkInspector.setInspectionForPort(org.fbme.lib.iec61499.fbnetwork.PortPath,org.fbme.ide.richediting.inspections.Inspection)" resolve="setInspectionForPort" />
                  <node concept="2GrUjf" id="1S4cYrOQ3YL" role="37wK5m">
                    <ref role="2Gs0qQ" node="1S4cYrOQ3Y3" resolve="port" />
                  </node>
                  <node concept="10Nm6u" id="1S4cYrOQ3YM" role="37wK5m" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4OybeeRBpkf" role="3cqZAp">
              <node concept="1rXfSq" id="4OybeeRBpkd" role="3clFbG">
                <ref role="37wK5l" node="19RKY2xFrQk" resolve="setPortListener" />
                <node concept="2GrUjf" id="4OybeeRBpCF" role="37wK5m">
                  <ref role="2Gs0qQ" node="1S4cYrOQ3Y3" resolve="port" />
                </node>
                <node concept="10Nm6u" id="4OybeeRBpQk" role="37wK5m" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1S4cYrOQKdn" role="jymVt" />
    <node concept="3clFb_" id="1S4cYrOQM6a" role="jymVt">
      <property role="TrG5h" value="watchSelectedFunctionBlocks" />
      <node concept="3clFbS" id="1S4cYrOQM6b" role="3clF47">
        <node concept="2Gpval" id="1S4cYrOQM6c" role="3cqZAp">
          <node concept="2GrKxI" id="1S4cYrOQM6d" role="2Gsz3X">
            <property role="TrG5h" value="functionBlock" />
          </node>
          <node concept="1rXfSq" id="1S4cYrOQM6e" role="2GsD0m">
            <ref role="37wK5l" node="1S4cYrOQiXj" resolve="getSelectedFunctionBlocks" />
          </node>
          <node concept="3clFbS" id="1S4cYrOQM6f" role="2LFqv$">
            <node concept="3clFbF" id="1S4cYrOQM6g" role="3cqZAp">
              <node concept="1rXfSq" id="1S4cYrOQM6h" role="3clFbG">
                <ref role="37wK5l" node="1S4cYrOPZPi" resolve="watchFunctionBlock" />
                <node concept="2GrUjf" id="1S4cYrOQM6i" role="37wK5m">
                  <ref role="2Gs0qQ" node="1S4cYrOQM6d" resolve="functionBlock" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1S4cYrOQM6j" role="1B3o_S" />
      <node concept="3cqZAl" id="1S4cYrOQM6k" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="1S4cYrOPROY" role="jymVt" />
    <node concept="3clFb_" id="1S4cYrOPOKP" role="jymVt">
      <property role="TrG5h" value="watchFunctionBlock" />
      <node concept="3clFbS" id="1S4cYrOPOKQ" role="3clF47">
        <node concept="3cpWs8" id="1S4cYrOPYRr" role="3cqZAp">
          <node concept="3cpWsn" id="1S4cYrOPYRs" role="3cpWs9">
            <property role="TrG5h" value="functionBlock" />
            <node concept="3uibUv" id="6Vznkw4hyoA" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
            </node>
            <node concept="0kSF2" id="6Vznkw4hxTj" role="33vP2m">
              <node concept="3uibUv" id="6Vznkw4hya2" role="0kSFW">
                <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
              </node>
              <node concept="1rXfSq" id="1S4cYrOPYRt" role="0kSFX">
                <ref role="37wK5l" node="1S4cYrOMM45" resolve="getFunctionBlock" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1S4cYrOPZPn" role="3cqZAp">
          <node concept="1rXfSq" id="1S4cYrOPZPm" role="3clFbG">
            <ref role="37wK5l" node="1S4cYrOPZPi" resolve="watchFunctionBlock" />
            <node concept="37vLTw" id="1S4cYrOPZPl" role="37wK5m">
              <ref role="3cqZAo" node="1S4cYrOPYRs" resolve="functionBlock" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="1S4cYrOPOLL" role="3clF45" />
      <node concept="3Tm1VV" id="1S4cYrOPOLM" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1S4cYrOQ1Bx" role="jymVt" />
    <node concept="3clFb_" id="1S4cYrOPZPi" role="jymVt">
      <property role="TrG5h" value="watchFunctionBlock" />
      <node concept="3Tm6S6" id="1S4cYrOPZPj" role="1B3o_S" />
      <node concept="3cqZAl" id="1S4cYrOPZPk" role="3clF45" />
      <node concept="37vLTG" id="1S4cYrOPZPd" role="3clF46">
        <property role="TrG5h" value="functionBlock" />
        <node concept="3uibUv" id="6Vznkw4hxkN" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="1S4cYrOPZNY" role="3clF47">
        <node concept="3cpWs8" id="1S4cYrOPZO3" role="3cqZAp">
          <node concept="3cpWsn" id="1S4cYrOPZO4" role="3cpWs9">
            <property role="TrG5h" value="provider" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6SLp5w3KFwJ" role="1tU5fm">
              <ref role="3uigEE" to="ek6x:~NetworkInspector" resolve="NetworkInspector" />
            </node>
            <node concept="1rXfSq" id="1S4cYrOPZO6" role="33vP2m">
              <ref role="37wK5l" node="19RKY2xFaZl" resolve="getInspector" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1S4cYrOPZO7" role="3cqZAp" />
        <node concept="2Gpval" id="1S4cYrOPZO8" role="3cqZAp">
          <node concept="2GrKxI" id="1S4cYrOPZO9" role="2Gsz3X">
            <property role="TrG5h" value="port" />
          </node>
          <node concept="2OqwBi" id="1S4cYrOPZOa" role="2GsD0m">
            <node concept="37vLTw" id="1S4cYrOPZPf" role="2Oq$k0">
              <ref role="3cqZAo" node="1S4cYrOPZPd" resolve="functionBlock" />
            </node>
            <node concept="liA8E" id="1S4cYrOPZOc" role="2OqNvi">
              <ref role="37wK5l" to="g27j:~FunctionBlockDeclarationBase.getPorts()" resolve="getPorts" />
            </node>
          </node>
          <node concept="3clFbS" id="1S4cYrOPZOd" role="2LFqv$">
            <node concept="3cpWs8" id="1S4cYrOPZOe" role="3cqZAp">
              <node concept="3cpWsn" id="1S4cYrOPZOf" role="3cpWs9">
                <property role="TrG5h" value="listener" />
                <node concept="3uibUv" id="IHtTBFjMe5" role="1tU5fm">
                  <ref role="3uigEE" to="6w4o:~WatchedValueListener" resolve="WatchedValueListener" />
                </node>
                <node concept="1rXfSq" id="1S4cYrOPZOh" role="33vP2m">
                  <ref role="37wK5l" node="19RKY2xFofQ" resolve="getPortListener" />
                  <node concept="2GrUjf" id="1S4cYrOPZOi" role="37wK5m">
                    <ref role="2Gs0qQ" node="1S4cYrOPZO9" resolve="port" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="1S4cYrOPZOj" role="3cqZAp">
              <node concept="3clFbS" id="1S4cYrOPZOk" role="3clFbx">
                <node concept="3N13vt" id="1S4cYrOPZOl" role="3cqZAp" />
              </node>
              <node concept="3y3z36" id="1S4cYrOPZOm" role="3clFbw">
                <node concept="37vLTw" id="1S4cYrOPZOn" role="3uHU7B">
                  <ref role="3cqZAo" node="1S4cYrOPZOf" resolve="listener" />
                </node>
                <node concept="10Nm6u" id="1S4cYrOPZOo" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbH" id="3agvPyqRTJc" role="3cqZAp" />
            <node concept="3cpWs8" id="3agvPyqRNR7" role="3cqZAp">
              <node concept="3cpWsn" id="3agvPyqRNR8" role="3cpWs9">
                <property role="TrG5h" value="portName" />
                <node concept="3uibUv" id="3agvPyqRM80" role="1tU5fm">
                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                </node>
                <node concept="2OqwBi" id="3agvPyqRNR9" role="33vP2m">
                  <node concept="2OqwBi" id="3agvPyqRNRa" role="2Oq$k0">
                    <node concept="2GrUjf" id="3agvPyqRNRb" role="2Oq$k0">
                      <ref role="2Gs0qQ" node="1S4cYrOPZO9" resolve="port" />
                    </node>
                    <node concept="liA8E" id="3agvPyqRNRc" role="2OqNvi">
                      <ref role="37wK5l" to="g27j:~PortPath.getPortTarget()" resolve="getPortTarget" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3agvPyqRNRd" role="2OqNvi">
                    <ref role="37wK5l" to="7adg:~Declaration.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1S4cYrOPZOq" role="3cqZAp">
              <node concept="3cpWsn" id="1S4cYrOPZOr" role="3cpWs9">
                <property role="TrG5h" value="watchable" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="IHtTBFkeT0" role="1tU5fm">
                  <ref role="3uigEE" to="6w4o:~Watchable" resolve="Watchable" />
                </node>
                <node concept="2ShNRf" id="1S4cYrOPZOt" role="33vP2m">
                  <node concept="1pGfFk" id="1S4cYrOPZOu" role="2ShVmc">
                    <ref role="37wK5l" to="6w4o:~Watchable.&lt;init&gt;(org.fbme.ide.platform.debugger.WatchablePath,java.lang.String)" resolve="Watchable" />
                    <node concept="1rXfSq" id="1S4cYrOPZOv" role="37wK5m">
                      <ref role="37wK5l" node="74jd4DVyRsh" resolve="createWatchablePath" />
                      <node concept="37vLTw" id="74jd4DVzbhH" role="37wK5m">
                        <ref role="3cqZAo" node="1S4cYrOPZPd" resolve="functionBlock" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="3agvPyqRNRe" role="37wK5m">
                      <ref role="3cqZAo" node="3agvPyqRNR8" resolve="portName" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="3agvPyqAA2e" role="3cqZAp" />
            <node concept="3cpWs8" id="3agvPyqAyg0" role="3cqZAp">
              <node concept="3cpWsn" id="3agvPyqAyg1" role="3cpWs9">
                <property role="TrG5h" value="type" />
                <node concept="3uibUv" id="3agvPyqAxIv" role="1tU5fm">
                  <ref role="3uigEE" to="ntnl:~FBTypeDescriptor" resolve="FBTypeDescriptor" />
                </node>
                <node concept="2OqwBi" id="3agvPyqAyg2" role="33vP2m">
                  <node concept="37vLTw" id="3agvPyqAyg3" role="2Oq$k0">
                    <ref role="3cqZAo" node="1S4cYrOPZPd" resolve="functionBlock" />
                  </node>
                  <node concept="liA8E" id="3agvPyqAyg4" role="2OqNvi">
                    <ref role="37wK5l" to="g27j:~FunctionBlockDeclarationBase.getType()" resolve="getType" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="3agvPyqWaki" role="3cqZAp">
              <node concept="3clFbS" id="3agvPyqWakj" role="3clFbx">
                <node concept="3cpWs8" id="3agvPyqB722" role="3cqZAp">
                  <node concept="3cpWsn" id="3agvPyqB723" role="3cpWs9">
                    <property role="TrG5h" value="eventInputPorts" />
                    <node concept="3uibUv" id="3agvPyqB6eM" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3uibUv" id="3agvPyqB6eP" role="11_B2D">
                        <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3agvPyqB724" role="33vP2m">
                      <node concept="37vLTw" id="3agvPyqB725" role="2Oq$k0">
                        <ref role="3cqZAo" node="3agvPyqAyg1" resolve="type" />
                      </node>
                      <node concept="liA8E" id="3agvPyqB726" role="2OqNvi">
                        <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getEventInputPorts()" resolve="getEventInputPorts" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3agvPyqU4$L" role="3cqZAp">
                  <node concept="1rXfSq" id="3agvPyqU4$K" role="3clFbG">
                    <ref role="37wK5l" node="3agvPyqU4$E" resolve="findPortDescriptor" />
                    <node concept="37vLTw" id="3agvPyqU4$H" role="37wK5m">
                      <ref role="3cqZAo" node="3agvPyqB723" resolve="eventInputPorts" />
                    </node>
                    <node concept="37vLTw" id="3agvPyqU4$I" role="37wK5m">
                      <ref role="3cqZAo" node="3agvPyqRNR8" resolve="portName" />
                    </node>
                    <node concept="37vLTw" id="3agvPyqU4$J" role="37wK5m">
                      <ref role="3cqZAo" node="1S4cYrOPZOr" resolve="watchable" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="3agvPyqWakw" role="3clFbw">
                <node concept="2OqwBi" id="3agvPyqWakx" role="3uHU7B">
                  <node concept="37vLTw" id="3agvPyqWaky" role="2Oq$k0">
                    <ref role="3cqZAo" node="1S4cYrOPZOr" resolve="watchable" />
                  </node>
                  <node concept="liA8E" id="3agvPyqWakz" role="2OqNvi">
                    <ref role="37wK5l" to="6w4o:~Watchable.getPortDescriptor()" resolve="getPortDescriptor" />
                  </node>
                </node>
                <node concept="10Nm6u" id="3agvPyqWak$" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbJ" id="3agvPyqSSSN" role="3cqZAp">
              <node concept="3clFbS" id="3agvPyqSSSP" role="3clFbx">
                <node concept="3cpWs8" id="3agvPyqBEJZ" role="3cqZAp">
                  <node concept="3cpWsn" id="3agvPyqBEK0" role="3cpWs9">
                    <property role="TrG5h" value="eventOutputPorts" />
                    <node concept="3uibUv" id="3agvPyqBEK1" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3uibUv" id="3agvPyqBEK2" role="11_B2D">
                        <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3agvPyqBEK3" role="33vP2m">
                      <node concept="37vLTw" id="3agvPyqBEK4" role="2Oq$k0">
                        <ref role="3cqZAo" node="3agvPyqAyg1" resolve="type" />
                      </node>
                      <node concept="liA8E" id="3agvPyqBEK5" role="2OqNvi">
                        <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getEventOutputPorts()" resolve="getEventOutputPorts" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3agvPyqUy5l" role="3cqZAp">
                  <node concept="1rXfSq" id="3agvPyqUy5m" role="3clFbG">
                    <ref role="37wK5l" node="3agvPyqU4$E" resolve="findPortDescriptor" />
                    <node concept="37vLTw" id="3agvPyqUy5n" role="37wK5m">
                      <ref role="3cqZAo" node="3agvPyqBEK0" resolve="eventOutputPorts" />
                    </node>
                    <node concept="37vLTw" id="3agvPyqUy5o" role="37wK5m">
                      <ref role="3cqZAo" node="3agvPyqRNR8" resolve="portName" />
                    </node>
                    <node concept="37vLTw" id="3agvPyqUy5p" role="37wK5m">
                      <ref role="3cqZAo" node="1S4cYrOPZOr" resolve="watchable" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="3agvPyqVPHi" role="3clFbw">
                <node concept="2OqwBi" id="3agvPyqTyMt" role="3uHU7B">
                  <node concept="37vLTw" id="3agvPyqSYwN" role="2Oq$k0">
                    <ref role="3cqZAo" node="1S4cYrOPZOr" resolve="watchable" />
                  </node>
                  <node concept="liA8E" id="3agvPyqTCgg" role="2OqNvi">
                    <ref role="37wK5l" to="6w4o:~Watchable.getPortDescriptor()" resolve="getPortDescriptor" />
                  </node>
                </node>
                <node concept="10Nm6u" id="3agvPyqTNx6" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbJ" id="3agvPyqULyY" role="3cqZAp">
              <node concept="3clFbS" id="3agvPyqULyZ" role="3clFbx">
                <node concept="3cpWs8" id="3agvPyqADs8" role="3cqZAp">
                  <node concept="3cpWsn" id="3agvPyqADs9" role="3cpWs9">
                    <property role="TrG5h" value="dataInputPorts" />
                    <node concept="3uibUv" id="3agvPyqACth" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3uibUv" id="3agvPyqACtk" role="11_B2D">
                        <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3agvPyqADsa" role="33vP2m">
                      <node concept="37vLTw" id="3agvPyqADsb" role="2Oq$k0">
                        <ref role="3cqZAo" node="3agvPyqAyg1" resolve="type" />
                      </node>
                      <node concept="liA8E" id="3agvPyqADsc" role="2OqNvi">
                        <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getDataInputPorts()" resolve="getDataInputPorts" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3agvPyqULz0" role="3cqZAp">
                  <node concept="1rXfSq" id="3agvPyqULz1" role="3clFbG">
                    <ref role="37wK5l" node="3agvPyqU4$E" resolve="findPortDescriptor" />
                    <node concept="37vLTw" id="3agvPyqULz2" role="37wK5m">
                      <ref role="3cqZAo" node="3agvPyqADs9" resolve="dataInputPorts" />
                    </node>
                    <node concept="37vLTw" id="3agvPyqULz3" role="37wK5m">
                      <ref role="3cqZAo" node="3agvPyqRNR8" resolve="portName" />
                    </node>
                    <node concept="37vLTw" id="3agvPyqULz4" role="37wK5m">
                      <ref role="3cqZAo" node="1S4cYrOPZOr" resolve="watchable" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="3agvPyqVUE6" role="3clFbw">
                <node concept="2OqwBi" id="3agvPyqULz7" role="3uHU7B">
                  <node concept="37vLTw" id="3agvPyqULz8" role="2Oq$k0">
                    <ref role="3cqZAo" node="1S4cYrOPZOr" resolve="watchable" />
                  </node>
                  <node concept="liA8E" id="3agvPyqULz9" role="2OqNvi">
                    <ref role="37wK5l" to="6w4o:~Watchable.getPortDescriptor()" resolve="getPortDescriptor" />
                  </node>
                </node>
                <node concept="10Nm6u" id="3agvPyqULz6" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbJ" id="3agvPyqUR5V" role="3cqZAp">
              <node concept="3clFbS" id="3agvPyqUR5W" role="3clFbx">
                <node concept="3cpWs8" id="3agvPyqBIB2" role="3cqZAp">
                  <node concept="3cpWsn" id="3agvPyqBIB3" role="3cpWs9">
                    <property role="TrG5h" value="dataOutputPorts" />
                    <node concept="3uibUv" id="3agvPyqBIB4" role="1tU5fm">
                      <ref role="3uigEE" to="33ny:~List" resolve="List" />
                      <node concept="3uibUv" id="3agvPyqBIB5" role="11_B2D">
                        <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="3agvPyqBIB6" role="33vP2m">
                      <node concept="37vLTw" id="3agvPyqBIB7" role="2Oq$k0">
                        <ref role="3cqZAo" node="3agvPyqAyg1" resolve="type" />
                      </node>
                      <node concept="liA8E" id="3agvPyqBIB8" role="2OqNvi">
                        <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getDataOutputPorts()" resolve="getDataOutputPorts" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="3agvPyqUR5X" role="3cqZAp">
                  <node concept="1rXfSq" id="3agvPyqUR5Y" role="3clFbG">
                    <ref role="37wK5l" node="3agvPyqU4$E" resolve="findPortDescriptor" />
                    <node concept="37vLTw" id="3agvPyqUR5Z" role="37wK5m">
                      <ref role="3cqZAo" node="3agvPyqBIB3" resolve="dataOutputPorts" />
                    </node>
                    <node concept="37vLTw" id="3agvPyqUR60" role="37wK5m">
                      <ref role="3cqZAo" node="3agvPyqRNR8" resolve="portName" />
                    </node>
                    <node concept="37vLTw" id="3agvPyqUR61" role="37wK5m">
                      <ref role="3cqZAo" node="1S4cYrOPZOr" resolve="watchable" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbC" id="3agvPyqVZPA" role="3clFbw">
                <node concept="2OqwBi" id="3agvPyqUR64" role="3uHU7B">
                  <node concept="37vLTw" id="3agvPyqUR65" role="2Oq$k0">
                    <ref role="3cqZAo" node="1S4cYrOPZOr" resolve="watchable" />
                  </node>
                  <node concept="liA8E" id="3agvPyqUR66" role="2OqNvi">
                    <ref role="37wK5l" to="6w4o:~Watchable.getPortDescriptor()" resolve="getPortDescriptor" />
                  </node>
                </node>
                <node concept="10Nm6u" id="3agvPyqUR63" role="3uHU7w" />
              </node>
            </node>
            <node concept="3clFbH" id="3agvPyqX9Vr" role="3cqZAp" />
            <node concept="3clFbF" id="1S4cYrOPZOA" role="3cqZAp">
              <node concept="37vLTI" id="1S4cYrOPZOB" role="3clFbG">
                <node concept="2ShNRf" id="1S4cYrOPZOC" role="37vLTx">
                  <node concept="YeOm9" id="1S4cYrOPZOD" role="2ShVmc">
                    <node concept="1Y3b0j" id="1S4cYrOPZOE" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <ref role="1Y3XeK" to="6w4o:~WatchedValueListener" resolve="WatchedValueListener" />
                      <node concept="3Tm1VV" id="1S4cYrOPZOF" role="1B3o_S" />
                      <node concept="3clFb_" id="1S4cYrOPZOG" role="jymVt">
                        <property role="TrG5h" value="onValueChanged" />
                        <node concept="3Tm1VV" id="1S4cYrOPZOH" role="1B3o_S" />
                        <node concept="3cqZAl" id="1S4cYrOPZOI" role="3clF45" />
                        <node concept="37vLTG" id="1S4cYrOPZOJ" role="3clF46">
                          <property role="TrG5h" value="newValue" />
                          <node concept="17QB3L" id="1S4cYrOPZOK" role="1tU5fm" />
                        </node>
                        <node concept="3clFbS" id="1S4cYrOPZOL" role="3clF47">
                          <node concept="3clFbF" id="1S4cYrOPZOM" role="3cqZAp">
                            <node concept="2OqwBi" id="1S4cYrOPZON" role="3clFbG">
                              <node concept="37vLTw" id="1S4cYrOPZOO" role="2Oq$k0">
                                <ref role="3cqZAo" node="1S4cYrOPZO4" resolve="provider" />
                              </node>
                              <node concept="liA8E" id="1S4cYrOPZOP" role="2OqNvi">
                                <ref role="37wK5l" to="ek6x:~NetworkInspector.setInspectionForPort(org.fbme.lib.iec61499.fbnetwork.PortPath,org.fbme.ide.richediting.inspections.Inspection)" resolve="setInspectionForPort" />
                                <node concept="2GrUjf" id="1S4cYrOPZOQ" role="37wK5m">
                                  <ref role="2Gs0qQ" node="1S4cYrOPZO9" resolve="port" />
                                </node>
                                <node concept="2ShNRf" id="1S4cYrOPZOR" role="37wK5m">
                                  <node concept="1pGfFk" id="1S4cYrOPZOS" role="2ShVmc">
                                    <ref role="37wK5l" to="ek6x:~Inspection.&lt;init&gt;(java.lang.String)" resolve="Inspection" />
                                    <node concept="37vLTw" id="1S4cYrOPZOT" role="37wK5m">
                                      <ref role="3cqZAo" node="1S4cYrOPZOJ" resolve="newValue" />
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
                <node concept="37vLTw" id="1S4cYrOPZOU" role="37vLTJ">
                  <ref role="3cqZAo" node="1S4cYrOPZOf" resolve="listener" />
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="13KqhPhajVw" role="3cqZAp" />
            <node concept="3clFbF" id="1S4cYrOPZOW" role="3cqZAp">
              <node concept="2OqwBi" id="1S4cYrOPZOX" role="3clFbG">
                <node concept="37vLTw" id="6Vznkw4g9mf" role="2Oq$k0">
                  <ref role="3cqZAo" node="4WS_6wCD2tY" resolve="myWatchers" />
                </node>
                <node concept="liA8E" id="1S4cYrOPZOZ" role="2OqNvi">
                  <ref role="37wK5l" to="6w4o:~WatcherFacade.watch(org.fbme.ide.platform.debugger.Watchable)" resolve="watch" />
                  <node concept="37vLTw" id="1S4cYrOPZP0" role="37wK5m">
                    <ref role="3cqZAo" node="1S4cYrOPZOr" resolve="watchable" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1S4cYrOPZP1" role="3cqZAp">
              <node concept="2OqwBi" id="1S4cYrOPZP2" role="3clFbG">
                <node concept="37vLTw" id="6Vznkw4g9tf" role="2Oq$k0">
                  <ref role="3cqZAo" node="4WS_6wCD2tY" resolve="myWatchers" />
                </node>
                <node concept="liA8E" id="1S4cYrOPZP4" role="2OqNvi">
                  <ref role="37wK5l" to="6w4o:~WatcherFacade.addWatchedValueListener(org.fbme.ide.platform.debugger.WatchableData,org.fbme.ide.platform.debugger.WatchedValueListener)" resolve="addWatchedValueListener" />
                  <node concept="2OqwBi" id="1S4cYrOPZP5" role="37wK5m">
                    <node concept="37vLTw" id="1S4cYrOPZP6" role="2Oq$k0">
                      <ref role="3cqZAo" node="1S4cYrOPZOr" resolve="watchable" />
                    </node>
                    <node concept="liA8E" id="IHtTBFkfjw" role="2OqNvi">
                      <ref role="37wK5l" to="6w4o:~Watchable.serialize()" resolve="serialize" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1S4cYrOPZP8" role="37wK5m">
                    <ref role="3cqZAo" node="1S4cYrOPZOf" resolve="listener" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1S4cYrOPZP9" role="3cqZAp">
              <node concept="1rXfSq" id="1S4cYrOPZPa" role="3clFbG">
                <ref role="37wK5l" node="19RKY2xFrQk" resolve="setPortListener" />
                <node concept="2GrUjf" id="1S4cYrOPZPb" role="37wK5m">
                  <ref role="2Gs0qQ" node="1S4cYrOPZO9" resolve="port" />
                </node>
                <node concept="37vLTw" id="1S4cYrOPZPc" role="37wK5m">
                  <ref role="3cqZAo" node="1S4cYrOPZOf" resolve="listener" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3agvPyqUbI_" role="jymVt" />
    <node concept="3clFb_" id="3agvPyqU4$E" role="jymVt">
      <property role="TrG5h" value="findPortDescriptor" />
      <node concept="3Tm6S6" id="3agvPyqU4$F" role="1B3o_S" />
      <node concept="3cqZAl" id="3agvPyqU4$G" role="3clF45" />
      <node concept="37vLTG" id="3agvPyqU4$u" role="3clF46">
        <property role="TrG5h" value="ports" />
        <node concept="3uibUv" id="3agvPyqU4$v" role="1tU5fm">
          <ref role="3uigEE" to="33ny:~List" resolve="List" />
          <node concept="3uibUv" id="3agvPyqU4$w" role="11_B2D">
            <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3agvPyqU4$x" role="3clF46">
        <property role="TrG5h" value="portName" />
        <node concept="3uibUv" id="3agvPyqU4$y" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
        </node>
      </node>
      <node concept="37vLTG" id="3agvPyqU4$z" role="3clF46">
        <property role="TrG5h" value="watchable" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3agvPyqU4$$" role="1tU5fm">
          <ref role="3uigEE" to="6w4o:~Watchable" resolve="Watchable" />
        </node>
      </node>
      <node concept="3clFbS" id="3agvPyqU4$c" role="3clF47">
        <node concept="1DcWWT" id="3agvPyqU4$d" role="3cqZAp">
          <node concept="3clFbS" id="3agvPyqU4$e" role="2LFqv$">
            <node concept="3clFbJ" id="3agvPyqU4$f" role="3cqZAp">
              <node concept="3clFbC" id="3agvPyqU4$g" role="3clFbw">
                <node concept="37vLTw" id="3agvPyqU4$A" role="3uHU7w">
                  <ref role="3cqZAo" node="3agvPyqU4$x" resolve="portName" />
                </node>
                <node concept="2OqwBi" id="3agvPyqU4$i" role="3uHU7B">
                  <node concept="37vLTw" id="3agvPyqU4$j" role="2Oq$k0">
                    <ref role="3cqZAo" node="3agvPyqU4$r" resolve="portDescriptor" />
                  </node>
                  <node concept="liA8E" id="3agvPyqU4$k" role="2OqNvi">
                    <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="3agvPyqU4$l" role="3clFbx">
                <node concept="3clFbF" id="3agvPyqU4$m" role="3cqZAp">
                  <node concept="2OqwBi" id="3agvPyqU4$n" role="3clFbG">
                    <node concept="37vLTw" id="3agvPyqU4$_" role="2Oq$k0">
                      <ref role="3cqZAo" node="3agvPyqU4$z" resolve="watchable" />
                    </node>
                    <node concept="liA8E" id="3agvPyqU4$p" role="2OqNvi">
                      <ref role="37wK5l" to="6w4o:~Watchable.setPortDescriptor(org.fbme.lib.iec61499.descriptors.FBPortDescriptor)" resolve="setPortDescriptor" />
                      <node concept="37vLTw" id="3agvPyqU4$q" role="37wK5m">
                        <ref role="3cqZAo" node="3agvPyqU4$r" resolve="portDescriptor" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3zACq4" id="3agvPyqXqib" role="3cqZAp" />
              </node>
            </node>
          </node>
          <node concept="3cpWsn" id="3agvPyqU4$r" role="1Duv9x">
            <property role="TrG5h" value="portDescriptor" />
            <node concept="3uibUv" id="3agvPyqU4$s" role="1tU5fm">
              <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
            </node>
          </node>
          <node concept="37vLTw" id="3agvPyqU4$B" role="1DdaDG">
            <ref role="3cqZAo" node="3agvPyqU4$u" resolve="ports" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uVbEkjIIoX" role="jymVt" />
    <node concept="3clFb_" id="5uVbEkjIKZI" role="jymVt">
      <property role="TrG5h" value="createWatchablePath" />
      <node concept="3clFbS" id="5uVbEkjIKZL" role="3clF47">
        <node concept="3cpWs6" id="74jd4DVyRsm" role="3cqZAp">
          <node concept="1rXfSq" id="74jd4DVyRsl" role="3cqZAk">
            <ref role="37wK5l" node="74jd4DVyRsh" resolve="createWatchablePath" />
            <node concept="0kSF2" id="6Vznkw4hmPU" role="37wK5m">
              <node concept="3uibUv" id="6Vznkw4hmPX" role="0kSFW">
                <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
              </node>
              <node concept="1rXfSq" id="74jd4DVzheB" role="0kSFX">
                <ref role="37wK5l" node="1S4cYrOMM45" resolve="getFunctionBlock" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5uVbEkjIJCF" role="1B3o_S" />
      <node concept="3uibUv" id="IHtTBFkg9Q" role="3clF45">
        <ref role="3uigEE" to="6w4o:~WatchablePath" resolve="WatchablePath" />
      </node>
    </node>
    <node concept="2tJIrI" id="74jd4DVz99q" role="jymVt" />
    <node concept="3clFb_" id="74jd4DVyRsh" role="jymVt">
      <property role="TrG5h" value="createWatchablePath" />
      <node concept="3Tm6S6" id="74jd4DVyRsi" role="1B3o_S" />
      <node concept="3uibUv" id="IHtTBFkggw" role="3clF45">
        <ref role="3uigEE" to="6w4o:~WatchablePath" resolve="WatchablePath" />
      </node>
      <node concept="37vLTG" id="74jd4DVyRsc" role="3clF46">
        <property role="TrG5h" value="fb" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="6Vznkw4hi14" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
        </node>
      </node>
      <node concept="3clFbS" id="74jd4DVyRqD" role="3clF47">
        <node concept="3cpWs8" id="74jd4DVyRqE" role="3cqZAp">
          <node concept="3cpWsn" id="74jd4DVyRqF" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="74jd4DVyRqG" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="74jd4DVyRqH" role="33vP2m">
              <node concept="37vLTw" id="74jd4DVyRqI" role="2Oq$k0">
                <ref role="3cqZAo" node="19RKY2xF6QL" resolve="myEditorCell" />
              </node>
              <node concept="liA8E" id="74jd4DVyRqJ" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="74jd4DVyRqK" role="3cqZAp">
          <node concept="3cpWsn" id="74jd4DVyRqL" role="3cpWs9">
            <property role="TrG5h" value="networkInstance" />
            <node concept="3uibUv" id="74jd4DVyRqM" role="1tU5fm">
              <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
            </node>
            <node concept="2OqwBi" id="74jd4DVyRqN" role="33vP2m">
              <node concept="37vLTw" id="74jd4DVyRqO" role="2Oq$k0">
                <ref role="3cqZAo" node="74jd4DVyRqF" resolve="style" />
              </node>
              <node concept="liA8E" id="74jd4DVyRqP" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6SLp5w3KFlu" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK_INSTANCE" resolve="NETWORK_INSTANCE" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="74jd4DVyRqR" role="3cqZAp" />
        <node concept="3cpWs8" id="74jd4DVyRqS" role="3cqZAp">
          <node concept="3cpWsn" id="74jd4DVyRqT" role="3cpWs9">
            <property role="TrG5h" value="nestedList" />
            <node concept="_YKpA" id="74jd4DVyRqU" role="1tU5fm">
              <node concept="3uibUv" id="6Vznkw4g9Ha" role="_ZDj9">
                <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
              </node>
            </node>
            <node concept="2ShNRf" id="74jd4DVyRqW" role="33vP2m">
              <node concept="Tc6Ow" id="74jd4DVyRqX" role="2ShVmc">
                <node concept="3uibUv" id="6Vznkw4g9Hd" role="HW$YZ">
                  <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="74jd4DVyRqZ" role="3cqZAp">
          <node concept="3cpWsn" id="74jd4DVyRr0" role="3cpWs9">
            <property role="TrG5h" value="parentInstance" />
            <node concept="3uibUv" id="74jd4DVyRr1" role="1tU5fm">
              <ref role="3uigEE" to="74cb:~FunctionBlockInstance" resolve="FunctionBlockInstance" />
            </node>
            <node concept="0kSF2" id="74jd4DVyRr2" role="33vP2m">
              <node concept="3uibUv" id="74jd4DVyRr3" role="0kSFW">
                <ref role="3uigEE" to="74cb:~FunctionBlockInstance" resolve="FunctionBlockInstance" />
              </node>
              <node concept="2OqwBi" id="74jd4DVyRr4" role="0kSFX">
                <node concept="37vLTw" id="74jd4DVyRr5" role="2Oq$k0">
                  <ref role="3cqZAo" node="74jd4DVyRqL" resolve="networkInstance" />
                </node>
                <node concept="liA8E" id="74jd4DVyRr6" role="2OqNvi">
                  <ref role="37wK5l" to="74cb:~Instance.getParent()" resolve="getParent" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2$JKZl" id="74jd4DVyRr7" role="3cqZAp">
          <node concept="3clFbS" id="74jd4DVyRr8" role="2LFqv$">
            <node concept="3cpWs8" id="74jd4DVyRr9" role="3cqZAp">
              <node concept="3cpWsn" id="74jd4DVyRra" role="3cpWs9">
                <property role="TrG5h" value="functionBlock" />
                <node concept="3uibUv" id="6Vznkw4g9Uy" role="1tU5fm">
                  <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                </node>
                <node concept="10QFUN" id="5qqUv$9yxIS" role="33vP2m">
                  <node concept="3uibUv" id="5qqUv$9yy1Z" role="10QFUM">
                    <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                  </node>
                  <node concept="2OqwBi" id="74jd4DVyRre" role="10QFUP">
                    <node concept="37vLTw" id="74jd4DVyRrf" role="2Oq$k0">
                      <ref role="3cqZAo" node="74jd4DVyRr0" resolve="parentInstance" />
                    </node>
                    <node concept="liA8E" id="74jd4DVyRrg" role="2OqNvi">
                      <ref role="37wK5l" to="74cb:~FunctionBlockInstance.getDeclaration()" resolve="getDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="74jd4DVyRri" role="3cqZAp">
              <node concept="2OqwBi" id="74jd4DVyRrj" role="3clFbG">
                <node concept="37vLTw" id="74jd4DVyRrk" role="2Oq$k0">
                  <ref role="3cqZAo" node="74jd4DVyRqT" resolve="nestedList" />
                </node>
                <node concept="TSZUe" id="74jd4DVyRrl" role="2OqNvi">
                  <node concept="37vLTw" id="74jd4DVyRrn" role="25WWJ7">
                    <ref role="3cqZAo" node="74jd4DVyRra" resolve="functionBlock" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="74jd4DVyRrp" role="3cqZAp">
              <node concept="37vLTI" id="74jd4DVyRrq" role="3clFbG">
                <node concept="0kSF2" id="15cpAM83yxj" role="37vLTx">
                  <node concept="3uibUv" id="15cpAM83yxm" role="0kSFW">
                    <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
                  </node>
                  <node concept="2OqwBi" id="74jd4DVyRrr" role="0kSFX">
                    <node concept="37vLTw" id="74jd4DVyRrs" role="2Oq$k0">
                      <ref role="3cqZAo" node="74jd4DVyRr0" resolve="parentInstance" />
                    </node>
                    <node concept="liA8E" id="15cpAM83xqR" role="2OqNvi">
                      <ref role="37wK5l" to="74cb:~FunctionBlockInstance.getParent()" resolve="getParent" />
                    </node>
                  </node>
                </node>
                <node concept="37vLTw" id="74jd4DVyRru" role="37vLTJ">
                  <ref role="3cqZAo" node="74jd4DVyRqL" resolve="networkInstance" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="74jd4DVyRrv" role="3cqZAp">
              <node concept="37vLTI" id="74jd4DVyRrw" role="3clFbG">
                <node concept="37vLTw" id="74jd4DVyRrx" role="37vLTJ">
                  <ref role="3cqZAo" node="74jd4DVyRr0" resolve="parentInstance" />
                </node>
                <node concept="0kSF2" id="74jd4DVyRry" role="37vLTx">
                  <node concept="3uibUv" id="74jd4DVyRrz" role="0kSFW">
                    <ref role="3uigEE" to="74cb:~FunctionBlockInstance" resolve="FunctionBlockInstance" />
                  </node>
                  <node concept="2OqwBi" id="74jd4DVyRr$" role="0kSFX">
                    <node concept="37vLTw" id="74jd4DVyRr_" role="2Oq$k0">
                      <ref role="3cqZAo" node="74jd4DVyRqL" resolve="networkInstance" />
                    </node>
                    <node concept="liA8E" id="74jd4DVyRrA" role="2OqNvi">
                      <ref role="37wK5l" to="74cb:~Instance.getParent()" resolve="getParent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="74jd4DVyRrB" role="2$JKZa">
            <node concept="10Nm6u" id="74jd4DVyRrC" role="3uHU7w" />
            <node concept="37vLTw" id="74jd4DVyRrD" role="3uHU7B">
              <ref role="3cqZAo" node="74jd4DVyRr0" resolve="parentInstance" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="74jd4DVyRrE" role="3cqZAp" />
        <node concept="3cpWs8" id="74jd4DVyRrF" role="3cqZAp">
          <node concept="3cpWsn" id="74jd4DVyRrG" role="3cpWs9">
            <property role="TrG5h" value="pathList" />
            <node concept="2ShNRf" id="74jd4DVyRrH" role="33vP2m">
              <node concept="Tc6Ow" id="74jd4DVyRrI" role="2ShVmc">
                <node concept="3uibUv" id="6Vznkw4hkH0" role="HW$YZ">
                  <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                </node>
              </node>
            </node>
            <node concept="_YKpA" id="74jd4DVyRrK" role="1tU5fm">
              <node concept="3uibUv" id="6Vznkw4hlkV" role="_ZDj9">
                <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="74jd4DVyRrM" role="3cqZAp">
          <node concept="2OqwBi" id="74jd4DVyRrN" role="3clFbG">
            <node concept="37vLTw" id="74jd4DVyRrO" role="2Oq$k0">
              <ref role="3cqZAo" node="74jd4DVyRrG" resolve="pathList" />
            </node>
            <node concept="X8dFx" id="74jd4DVyRrP" role="2OqNvi">
              <node concept="2OqwBi" id="74jd4DVyRrQ" role="25WWJ7">
                <node concept="37vLTw" id="74jd4DVyRrR" role="2Oq$k0">
                  <ref role="3cqZAo" node="74jd4DVyRqT" resolve="nestedList" />
                </node>
                <node concept="35Qw8J" id="74jd4DVyRrS" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="74jd4DVyRrT" role="3cqZAp">
          <node concept="2OqwBi" id="74jd4DVyRrU" role="3clFbG">
            <node concept="37vLTw" id="74jd4DVyRrV" role="2Oq$k0">
              <ref role="3cqZAo" node="74jd4DVyRrG" resolve="pathList" />
            </node>
            <node concept="TSZUe" id="74jd4DVyRrW" role="2OqNvi">
              <node concept="37vLTw" id="74jd4DVyRse" role="25WWJ7">
                <ref role="3cqZAo" node="74jd4DVyRsc" resolve="fb" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="74jd4DVyRs4" role="3cqZAp" />
        <node concept="3clFbF" id="74jd4DVyRs5" role="3cqZAp">
          <node concept="2ShNRf" id="74jd4DVyRs6" role="3clFbG">
            <node concept="1pGfFk" id="74jd4DVyRs7" role="2ShVmc">
              <ref role="37wK5l" to="6w4o:~WatchablePath.&lt;init&gt;(org.fbme.lib.iec61499.declarations.ResourceDeclaration,java.util.List)" resolve="WatchablePath" />
              <node concept="2OqwBi" id="6Vznkw4hqRZ" role="37wK5m">
                <node concept="37vLTw" id="6Vznkw4hqB4" role="2Oq$k0">
                  <ref role="3cqZAo" node="4WS_6wCD18O" resolve="myRepositoty" />
                </node>
                <node concept="liA8E" id="6Vznkw4hrdl" role="2OqNvi">
                  <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                  <node concept="37vLTw" id="6Vznkw4htCY" role="37wK5m">
                    <ref role="3cqZAo" node="19RKY2xEYIg" resolve="myResourceNode" />
                  </node>
                  <node concept="3VsKOn" id="6Vznkw4hsp8" role="37wK5m">
                    <ref role="3VsUkX" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
                  </node>
                </node>
              </node>
              <node concept="37vLTw" id="74jd4DVyRsa" role="37wK5m">
                <ref role="3cqZAo" node="74jd4DVyRrG" resolve="pathList" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5PjcHHGcALL" role="jymVt" />
    <node concept="3clFb_" id="5uVbEkjFGLK" role="jymVt">
      <property role="TrG5h" value="createWatchableForPort" />
      <node concept="3clFbS" id="5uVbEkjFGLN" role="3clF47">
        <node concept="3cpWs8" id="5uVbEkjIWYR" role="3cqZAp">
          <node concept="3cpWsn" id="5uVbEkjIWYS" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="5uVbEkjIWYT" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="5uVbEkjIWYU" role="33vP2m">
              <node concept="37vLTw" id="5uVbEkjIWYV" role="2Oq$k0">
                <ref role="3cqZAo" node="19RKY2xF6QL" resolve="myEditorCell" />
              </node>
              <node concept="liA8E" id="5uVbEkjIWYW" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5uVbEkjFHRD" role="3cqZAp">
          <node concept="3cpWsn" id="5uVbEkjFHRE" role="3cpWs9">
            <property role="TrG5h" value="portDescriptor" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5uVbEkjFHRF" role="1tU5fm">
              <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
            </node>
            <node concept="2OqwBi" id="5uVbEkjFHRG" role="33vP2m">
              <node concept="37vLTw" id="5uVbEkjJ3Ne" role="2Oq$k0">
                <ref role="3cqZAo" node="5uVbEkjIWYS" resolve="style" />
              </node>
              <node concept="liA8E" id="5uVbEkjFHRI" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6SLp5w3KBXF" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.PORT" resolve="PORT" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5uVbEkjIU3M" role="3cqZAp" />
        <node concept="3cpWs8" id="3agvPyq$XFu" role="3cqZAp">
          <node concept="3cpWsn" id="3agvPyq$XFv" role="3cpWs9">
            <property role="TrG5h" value="watchable" />
            <node concept="3uibUv" id="3agvPyq$TPl" role="1tU5fm">
              <ref role="3uigEE" to="6w4o:~Watchable" resolve="Watchable" />
            </node>
            <node concept="2ShNRf" id="3agvPyq$XFw" role="33vP2m">
              <node concept="1pGfFk" id="3agvPyq$XFx" role="2ShVmc">
                <ref role="37wK5l" to="6w4o:~Watchable.&lt;init&gt;(org.fbme.ide.platform.debugger.WatchablePath,java.lang.String)" resolve="Watchable" />
                <node concept="1rXfSq" id="3agvPyq$XFy" role="37wK5m">
                  <ref role="37wK5l" node="5uVbEkjIKZI" resolve="createWatchablePath" />
                </node>
                <node concept="2OqwBi" id="3agvPyq$XFz" role="37wK5m">
                  <node concept="37vLTw" id="3agvPyq$XF$" role="2Oq$k0">
                    <ref role="3cqZAo" node="5uVbEkjFHRE" resolve="portDescriptor" />
                  </node>
                  <node concept="liA8E" id="3agvPyq$XF_" role="2OqNvi">
                    <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getName()" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3agvPyq_4Bn" role="3cqZAp">
          <node concept="2OqwBi" id="3agvPyq_8lu" role="3clFbG">
            <node concept="37vLTw" id="3agvPyq_4Bl" role="2Oq$k0">
              <ref role="3cqZAo" node="3agvPyq$XFv" resolve="watchable" />
            </node>
            <node concept="liA8E" id="3agvPyq_c4H" role="2OqNvi">
              <ref role="37wK5l" to="6w4o:~Watchable.setPortDescriptor(org.fbme.lib.iec61499.descriptors.FBPortDescriptor)" resolve="setPortDescriptor" />
              <node concept="37vLTw" id="3agvPyq_fXw" role="37wK5m">
                <ref role="3cqZAo" node="5uVbEkjFHRE" resolve="portDescriptor" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5uVbEkjFRc9" role="3cqZAp">
          <node concept="37vLTw" id="3agvPyq$XFA" role="3cqZAk">
            <ref role="3cqZAo" node="3agvPyq$XFv" resolve="watchable" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5uVbEkjFBid" role="1B3o_S" />
      <node concept="3uibUv" id="IHtTBFkgtv" role="3clF45">
        <ref role="3uigEE" to="6w4o:~Watchable" resolve="Watchable" />
      </node>
    </node>
    <node concept="2tJIrI" id="1S4cYrONF63" role="jymVt" />
    <node concept="2tJIrI" id="1S4cYrONFjV" role="jymVt" />
    <node concept="3clFb_" id="5uVbEkjJ4UW" role="jymVt">
      <property role="TrG5h" value="createWatchableForEcc" />
      <node concept="3clFbS" id="5uVbEkjJ4UX" role="3clF47">
        <node concept="3cpWs6" id="5uVbEkjJ4Vc" role="3cqZAp">
          <node concept="2ShNRf" id="5uVbEkjJ4Vd" role="3cqZAk">
            <node concept="1pGfFk" id="5uVbEkjJ4Ve" role="2ShVmc">
              <ref role="37wK5l" to="6w4o:~Watchable.&lt;init&gt;(org.fbme.ide.platform.debugger.WatchablePath,java.lang.String)" resolve="Watchable" />
              <node concept="1rXfSq" id="5uVbEkjJ4Vf" role="37wK5m">
                <ref role="37wK5l" node="5uVbEkjIKZI" resolve="createWatchablePath" />
              </node>
              <node concept="Xl_RD" id="5uVbEkjJ9KZ" role="37wK5m">
                <property role="Xl_RC" value="$ECC" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5uVbEkjJ4Vj" role="1B3o_S" />
      <node concept="3uibUv" id="IHtTBFkgEu" role="3clF45">
        <ref role="3uigEE" to="6w4o:~Watchable" resolve="Watchable" />
      </node>
    </node>
    <node concept="2tJIrI" id="5uVbEkjFsvt" role="jymVt" />
    <node concept="3clFb_" id="19RKY2xFNcv" role="jymVt">
      <property role="TrG5h" value="watchPort" />
      <node concept="3clFbS" id="19RKY2xFNcx" role="3clF47">
        <node concept="3cpWs8" id="19RKY2xFNcy" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xFNcz" role="3cpWs9">
            <property role="TrG5h" value="provider" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6SLp5w3K_1b" role="1tU5fm">
              <ref role="3uigEE" to="ek6x:~NetworkInspector" resolve="NetworkInspector" />
            </node>
            <node concept="1rXfSq" id="19RKY2xFNc_" role="33vP2m">
              <ref role="37wK5l" node="19RKY2xFaZl" resolve="getInspector" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="19RKY2xFNcF" role="3cqZAp" />
        <node concept="3cpWs8" id="19RKY2xFNdo" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xFNdp" role="3cpWs9">
            <property role="TrG5h" value="port" />
            <property role="3TUv4t" value="true" />
            <node concept="1rXfSq" id="5uVbEkjIAmh" role="33vP2m">
              <ref role="37wK5l" node="5uVbEkjIfcQ" resolve="getPort" />
            </node>
            <node concept="3uibUv" id="64EP$RZ5g8Q" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
              <node concept="3qTvmN" id="64EP$RZ5g8R" role="11_B2D" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="19RKY2xFNdc" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xFNdd" role="3cpWs9">
            <property role="TrG5h" value="watchable" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="IHtTBFkh0b" role="1tU5fm">
              <ref role="3uigEE" to="6w4o:~Watchable" resolve="Watchable" />
            </node>
            <node concept="1rXfSq" id="5uVbEkjHNl0" role="33vP2m">
              <ref role="37wK5l" node="5uVbEkjFGLK" resolve="createWatchableForPort" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5uVbEkjIAQX" role="3cqZAp" />
        <node concept="3cpWs8" id="19RKY2xFNdw" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xFNdx" role="3cpWs9">
            <property role="TrG5h" value="listener" />
            <node concept="3uibUv" id="IHtTBFkh6P" role="1tU5fm">
              <ref role="3uigEE" to="6w4o:~WatchedValueListener" resolve="WatchedValueListener" />
            </node>
            <node concept="2ShNRf" id="19RKY2xFNdz" role="33vP2m">
              <node concept="YeOm9" id="19RKY2xFNd$" role="2ShVmc">
                <node concept="1Y3b0j" id="19RKY2xFNd_" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="6w4o:~WatchedValueListener" resolve="WatchedValueListener" />
                  <node concept="3Tm1VV" id="19RKY2xFNdA" role="1B3o_S" />
                  <node concept="3clFb_" id="19RKY2xFNdB" role="jymVt">
                    <property role="TrG5h" value="onValueChanged" />
                    <node concept="3Tm1VV" id="19RKY2xFNdC" role="1B3o_S" />
                    <node concept="3cqZAl" id="19RKY2xFNdD" role="3clF45" />
                    <node concept="37vLTG" id="19RKY2xFNdE" role="3clF46">
                      <property role="TrG5h" value="newValue" />
                      <node concept="17QB3L" id="19RKY2xFNdF" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="19RKY2xFNdG" role="3clF47">
                      <node concept="3clFbF" id="19RKY2xFNdH" role="3cqZAp">
                        <node concept="2OqwBi" id="19RKY2xFNdI" role="3clFbG">
                          <node concept="37vLTw" id="19RKY2xFNdJ" role="2Oq$k0">
                            <ref role="3cqZAo" node="19RKY2xFNcz" resolve="provider" />
                          </node>
                          <node concept="liA8E" id="19RKY2xFNdK" role="2OqNvi">
                            <ref role="37wK5l" to="ek6x:~NetworkInspector.setInspectionForPort(org.fbme.lib.iec61499.fbnetwork.PortPath,org.fbme.ide.richediting.inspections.Inspection)" resolve="setInspectionForPort" />
                            <node concept="37vLTw" id="19RKY2xFNdL" role="37wK5m">
                              <ref role="3cqZAo" node="19RKY2xFNdp" resolve="port" />
                            </node>
                            <node concept="2ShNRf" id="19RKY2xFNdM" role="37wK5m">
                              <node concept="1pGfFk" id="19RKY2xFNdN" role="2ShVmc">
                                <ref role="37wK5l" to="ek6x:~Inspection.&lt;init&gt;(java.lang.String)" resolve="Inspection" />
                                <node concept="37vLTw" id="19RKY2xFNdO" role="37wK5m">
                                  <ref role="3cqZAo" node="19RKY2xFNdE" resolve="newValue" />
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
        <node concept="3clFbH" id="16hezL$bdHz" role="3cqZAp" />
        <node concept="3clFbF" id="19RKY2xFNdQ" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xFNdR" role="3clFbG">
            <node concept="37vLTw" id="6Vznkw4hud$" role="2Oq$k0">
              <ref role="3cqZAo" node="4WS_6wCD2tY" resolve="myWatchers" />
            </node>
            <node concept="liA8E" id="19RKY2xFNdT" role="2OqNvi">
              <ref role="37wK5l" to="6w4o:~WatcherFacade.watch(org.fbme.ide.platform.debugger.Watchable)" resolve="watch" />
              <node concept="37vLTw" id="19RKY2xFNdU" role="37wK5m">
                <ref role="3cqZAo" node="19RKY2xFNdd" resolve="watchable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="19RKY2xFNdV" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xFNdW" role="3clFbG">
            <node concept="37vLTw" id="6Vznkw4husG" role="2Oq$k0">
              <ref role="3cqZAo" node="4WS_6wCD2tY" resolve="myWatchers" />
            </node>
            <node concept="liA8E" id="19RKY2xFNdY" role="2OqNvi">
              <ref role="37wK5l" to="6w4o:~WatcherFacade.addWatchedValueListener(org.fbme.ide.platform.debugger.WatchableData,org.fbme.ide.platform.debugger.WatchedValueListener)" resolve="addWatchedValueListener" />
              <node concept="2OqwBi" id="19RKY2xFNdZ" role="37wK5m">
                <node concept="37vLTw" id="19RKY2xFNe0" role="2Oq$k0">
                  <ref role="3cqZAo" node="19RKY2xFNdd" resolve="watchable" />
                </node>
                <node concept="liA8E" id="IHtTBFkjum" role="2OqNvi">
                  <ref role="37wK5l" to="6w4o:~Watchable.serialize()" resolve="serialize" />
                </node>
              </node>
              <node concept="37vLTw" id="19RKY2xFNe2" role="37wK5m">
                <ref role="3cqZAo" node="19RKY2xFNdx" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="19RKY2xFNe3" role="3cqZAp">
          <node concept="1rXfSq" id="19RKY2xFNe4" role="3clFbG">
            <ref role="37wK5l" node="19RKY2xFrQk" resolve="setPortListener" />
            <node concept="37vLTw" id="19RKY2xFNe6" role="37wK5m">
              <ref role="3cqZAo" node="19RKY2xFNdp" resolve="port" />
            </node>
            <node concept="37vLTw" id="19RKY2xFNe7" role="37wK5m">
              <ref role="3cqZAo" node="19RKY2xFNdx" resolve="listener" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="19RKY2xFNe9" role="3clF45" />
      <node concept="3Tm1VV" id="19RKY2xFNe8" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5PjcHHGcDc8" role="jymVt" />
    <node concept="3clFb_" id="19RKY2xFM13" role="jymVt">
      <property role="TrG5h" value="unwatchPort" />
      <node concept="3clFbS" id="19RKY2xFM15" role="3clF47">
        <node concept="3cpWs8" id="19RKY2xFM1a" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xFM1b" role="3cpWs9">
            <property role="TrG5h" value="provider" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6SLp5w3K$SK" role="1tU5fm">
              <ref role="3uigEE" to="ek6x:~NetworkInspector" resolve="NetworkInspector" />
            </node>
            <node concept="1rXfSq" id="19RKY2xFM1d" role="33vP2m">
              <ref role="37wK5l" node="19RKY2xFaZl" resolve="getInspector" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="19RKY2xFM1K" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xFM1L" role="3cpWs9">
            <property role="TrG5h" value="watchable" />
            <node concept="3uibUv" id="IHtTBFkjHC" role="1tU5fm">
              <ref role="3uigEE" to="6w4o:~Watchable" resolve="Watchable" />
            </node>
            <node concept="1rXfSq" id="5uVbEkjJdaG" role="33vP2m">
              <ref role="37wK5l" node="5uVbEkjFGLK" resolve="createWatchableForPort" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="19RKY2xFM1W" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xFM1X" role="3cpWs9">
            <property role="TrG5h" value="port" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="64EP$RZ5fn9" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
              <node concept="3qTvmN" id="64EP$RZ5g5s" role="11_B2D" />
            </node>
            <node concept="1rXfSq" id="5uVbEkjJdv$" role="33vP2m">
              <ref role="37wK5l" node="5uVbEkjIfcQ" resolve="getPort" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="19RKY2xFM23" role="3cqZAp" />
        <node concept="3clFbF" id="19RKY2xFM24" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xFM25" role="3clFbG">
            <node concept="37vLTw" id="6Vznkw4huJs" role="2Oq$k0">
              <ref role="3cqZAo" node="4WS_6wCD2tY" resolve="myWatchers" />
            </node>
            <node concept="liA8E" id="19RKY2xFM27" role="2OqNvi">
              <ref role="37wK5l" to="6w4o:~WatcherFacade.unwatch(org.fbme.ide.platform.debugger.Watchable)" resolve="unwatch" />
              <node concept="37vLTw" id="19RKY2xFM28" role="37wK5m">
                <ref role="3cqZAo" node="19RKY2xFM1L" resolve="watchable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="19RKY2xFM29" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xFM2a" role="3clFbG">
            <node concept="37vLTw" id="6Vznkw4huXj" role="2Oq$k0">
              <ref role="3cqZAo" node="4WS_6wCD2tY" resolve="myWatchers" />
            </node>
            <node concept="liA8E" id="19RKY2xFM2c" role="2OqNvi">
              <ref role="37wK5l" to="6w4o:~WatcherFacade.removeWatchedValueListener(org.fbme.ide.platform.debugger.WatchableData,org.fbme.ide.platform.debugger.WatchedValueListener)" resolve="removeWatchedValueListener" />
              <node concept="2OqwBi" id="19RKY2xFM2d" role="37wK5m">
                <node concept="37vLTw" id="19RKY2xFM2e" role="2Oq$k0">
                  <ref role="3cqZAo" node="19RKY2xFM1L" resolve="watchable" />
                </node>
                <node concept="liA8E" id="IHtTBFkjK5" role="2OqNvi">
                  <ref role="37wK5l" to="6w4o:~Watchable.serialize()" resolve="serialize" />
                </node>
              </node>
              <node concept="1rXfSq" id="19RKY2xFM2g" role="37wK5m">
                <ref role="37wK5l" node="19RKY2xFofQ" resolve="getPortListener" />
                <node concept="37vLTw" id="19RKY2xFM2i" role="37wK5m">
                  <ref role="3cqZAo" node="19RKY2xFM1X" resolve="port" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="19RKY2xFM2j" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xFM2k" role="3clFbG">
            <node concept="37vLTw" id="19RKY2xFM2l" role="2Oq$k0">
              <ref role="3cqZAo" node="19RKY2xFM1b" resolve="provider" />
            </node>
            <node concept="liA8E" id="19RKY2xFM2m" role="2OqNvi">
              <ref role="37wK5l" to="ek6x:~NetworkInspector.setInspectionForPort(org.fbme.lib.iec61499.fbnetwork.PortPath,org.fbme.ide.richediting.inspections.Inspection)" resolve="setInspectionForPort" />
              <node concept="37vLTw" id="19RKY2xFM2n" role="37wK5m">
                <ref role="3cqZAo" node="19RKY2xFM1X" resolve="port" />
              </node>
              <node concept="10Nm6u" id="19RKY2xFM2o" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4OybeeRBpZx" role="3cqZAp">
          <node concept="1rXfSq" id="4OybeeRBpZy" role="3clFbG">
            <ref role="37wK5l" node="19RKY2xFrQk" resolve="setPortListener" />
            <node concept="37vLTw" id="4OybeeRBrCn" role="37wK5m">
              <ref role="3cqZAo" node="19RKY2xFM1X" resolve="port" />
            </node>
            <node concept="10Nm6u" id="4OybeeRBpZ$" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="19RKY2xFM2q" role="3clF45" />
      <node concept="3Tm1VV" id="19RKY2xFM2p" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5PjcHHGfR1d" role="jymVt" />
    <node concept="3clFb_" id="19RKY2xFKOC" role="jymVt">
      <property role="TrG5h" value="hasEccToWatch" />
      <node concept="3clFbS" id="19RKY2xFKOE" role="3clF47">
        <node concept="3clFbJ" id="19RKY2xFKOF" role="3cqZAp">
          <node concept="3clFbS" id="19RKY2xFKOG" role="3clFbx">
            <node concept="3cpWs6" id="19RKY2xFKOH" role="3cqZAp">
              <node concept="3clFbT" id="19RKY2xFKOI" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="19RKY2xFKOJ" role="3clFbw">
            <node concept="10Nm6u" id="19RKY2xFKOK" role="3uHU7w" />
            <node concept="1rXfSq" id="19RKY2xFKOL" role="3uHU7B">
              <ref role="37wK5l" node="19RKY2xFaZl" resolve="getInspector" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="19RKY2xFKOM" role="3cqZAp" />
        <node concept="3cpWs8" id="19RKY2xFKON" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xFKOO" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="19RKY2xFKOP" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="19RKY2xFKOQ" role="33vP2m">
              <node concept="37vLTw" id="19RKY2xFQBD" role="2Oq$k0">
                <ref role="3cqZAo" node="19RKY2xF6QL" resolve="myEditorCell" />
              </node>
              <node concept="liA8E" id="19RKY2xFKOS" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="19RKY2xFKOT" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xFKOU" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <node concept="3uibUv" id="2yJZQx2x19h" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
            </node>
            <node concept="2OqwBi" id="19RKY2xFKOW" role="33vP2m">
              <node concept="37vLTw" id="19RKY2xFKOX" role="2Oq$k0">
                <ref role="3cqZAo" node="19RKY2xFKOO" resolve="style" />
              </node>
              <node concept="liA8E" id="19RKY2xFKOY" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6SLp5w3Ky$G" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="19RKY2xFKP0" role="3cqZAp">
          <node concept="1Wc70l" id="19RKY2xFKP1" role="3cqZAk">
            <node concept="1Wc70l" id="19RKY2xFKP2" role="3uHU7B">
              <node concept="3y3z36" id="19RKY2xFKP3" role="3uHU7B">
                <node concept="37vLTw" id="19RKY2xFKP4" role="3uHU7B">
                  <ref role="3cqZAo" node="19RKY2xFKOU" resolve="fb" />
                </node>
                <node concept="10Nm6u" id="19RKY2xFKP5" role="3uHU7w" />
              </node>
              <node concept="2ZW3vV" id="19RKY2xFKP6" role="3uHU7w">
                <node concept="3uibUv" id="19RKY2xFKP7" role="2ZW6by">
                  <ref role="3uigEE" to="cwd8:~BasicFBTypeDeclaration" resolve="BasicFBTypeDeclaration" />
                </node>
                <node concept="2OqwBi" id="19RKY2xFKP8" role="2ZW6bz">
                  <node concept="2OqwBi" id="19RKY2xFKP9" role="2Oq$k0">
                    <node concept="37vLTw" id="19RKY2xFKPa" role="2Oq$k0">
                      <ref role="3cqZAo" node="19RKY2xFKOU" resolve="fb" />
                    </node>
                    <node concept="liA8E" id="19RKY2xFKPb" role="2OqNvi">
                      <ref role="37wK5l" to="g27j:~FunctionBlockDeclarationBase.getType()" resolve="getType" />
                    </node>
                  </node>
                  <node concept="liA8E" id="19RKY2xFKPc" role="2OqNvi">
                    <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getDeclaration()" resolve="getDeclaration" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="19RKY2xFKPd" role="3uHU7w">
              <node concept="10Nm6u" id="19RKY2xFKPe" role="3uHU7w" />
              <node concept="1rXfSq" id="19RKY2xFKPf" role="3uHU7B">
                <ref role="37wK5l" node="19RKY2xFqxt" resolve="getECCStateListener" />
                <node concept="37vLTw" id="19RKY2xFKPg" role="37wK5m">
                  <ref role="3cqZAo" node="19RKY2xFKOU" resolve="fb" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="19RKY2xFKPi" role="3clF45" />
      <node concept="3Tm1VV" id="19RKY2xFKPh" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5PjcHHGfSnK" role="jymVt" />
    <node concept="3clFb_" id="19RKY2xFFjc" role="jymVt">
      <property role="TrG5h" value="hasWatchedEcc" />
      <node concept="3clFbS" id="19RKY2xFFji" role="3clF47">
        <node concept="3clFbJ" id="19RKY2xFFjj" role="3cqZAp">
          <node concept="3clFbS" id="19RKY2xFFjk" role="3clFbx">
            <node concept="3cpWs6" id="19RKY2xFFjl" role="3cqZAp">
              <node concept="3clFbT" id="19RKY2xFFjm" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="19RKY2xFFjn" role="3clFbw">
            <node concept="10Nm6u" id="19RKY2xFFjo" role="3uHU7w" />
            <node concept="1rXfSq" id="19RKY2xFFjp" role="3uHU7B">
              <ref role="37wK5l" node="19RKY2xFaZl" resolve="getInspector" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="19RKY2xFFjr" role="3cqZAp" />
        <node concept="3cpWs8" id="19RKY2xFFjs" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xFFjt" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="19RKY2xFFju" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="19RKY2xFFjv" role="33vP2m">
              <node concept="37vLTw" id="19RKY2xFJcs" role="2Oq$k0">
                <ref role="3cqZAo" node="19RKY2xF6QL" resolve="myEditorCell" />
              </node>
              <node concept="liA8E" id="19RKY2xFFjx" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="19RKY2xFFjy" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xFFjz" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <node concept="3uibUv" id="2yJZQx2x30Z" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
            </node>
            <node concept="2OqwBi" id="19RKY2xFFj_" role="33vP2m">
              <node concept="37vLTw" id="19RKY2xFFjA" role="2Oq$k0">
                <ref role="3cqZAo" node="19RKY2xFFjt" resolve="style" />
              </node>
              <node concept="liA8E" id="19RKY2xFFjB" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6SLp5w3Kwfa" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="19RKY2xFFjD" role="3cqZAp">
          <node concept="1Wc70l" id="19RKY2xFFjE" role="3cqZAk">
            <node concept="1Wc70l" id="19RKY2xFFjF" role="3uHU7B">
              <node concept="3y3z36" id="19RKY2xFFjG" role="3uHU7B">
                <node concept="37vLTw" id="19RKY2xFFjH" role="3uHU7B">
                  <ref role="3cqZAo" node="19RKY2xFFjz" resolve="fb" />
                </node>
                <node concept="10Nm6u" id="19RKY2xFFjI" role="3uHU7w" />
              </node>
              <node concept="2ZW3vV" id="19RKY2xFFjJ" role="3uHU7w">
                <node concept="3uibUv" id="19RKY2xFFjK" role="2ZW6by">
                  <ref role="3uigEE" to="cwd8:~BasicFBTypeDeclaration" resolve="BasicFBTypeDeclaration" />
                </node>
                <node concept="2OqwBi" id="19RKY2xFFjL" role="2ZW6bz">
                  <node concept="2OqwBi" id="19RKY2xFFjM" role="2Oq$k0">
                    <node concept="37vLTw" id="19RKY2xFFjN" role="2Oq$k0">
                      <ref role="3cqZAo" node="19RKY2xFFjz" resolve="fb" />
                    </node>
                    <node concept="liA8E" id="19RKY2xFFjO" role="2OqNvi">
                      <ref role="37wK5l" to="g27j:~FunctionBlockDeclarationBase.getType()" resolve="getType" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5oxN2jlFDsu" role="2OqNvi">
                    <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getDeclaration()" resolve="getDeclaration" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3y3z36" id="19RKY2xFFjQ" role="3uHU7w">
              <node concept="1rXfSq" id="19RKY2xFFjR" role="3uHU7B">
                <ref role="37wK5l" node="19RKY2xFqxt" resolve="getECCStateListener" />
                <node concept="37vLTw" id="19RKY2xFFjT" role="37wK5m">
                  <ref role="3cqZAo" node="19RKY2xFFjz" resolve="fb" />
                </node>
              </node>
              <node concept="10Nm6u" id="19RKY2xFFjU" role="3uHU7w" />
            </node>
          </node>
        </node>
      </node>
      <node concept="10P_77" id="19RKY2xFFjW" role="3clF45" />
      <node concept="3Tm1VV" id="19RKY2xFFjV" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5PjcHHGfRbi" role="jymVt" />
    <node concept="3clFb_" id="19RKY2xFC5D" role="jymVt">
      <property role="TrG5h" value="watchEcc" />
      <node concept="3clFbS" id="19RKY2xFC5F" role="3clF47">
        <node concept="3cpWs8" id="19RKY2xFC5G" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xFC5H" role="3cpWs9">
            <property role="TrG5h" value="inspector" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6SLp5w3Kwaf" role="1tU5fm">
              <ref role="3uigEE" to="ek6x:~NetworkInspector" resolve="NetworkInspector" />
            </node>
            <node concept="1rXfSq" id="19RKY2xFC5J" role="33vP2m">
              <ref role="37wK5l" node="19RKY2xFaZl" resolve="getInspector" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5uVbEkjJi2s" role="3cqZAp" />
        <node concept="3cpWs8" id="5uVbEkjJeDa" role="3cqZAp">
          <node concept="3cpWsn" id="5uVbEkjJeDb" role="3cpWs9">
            <property role="TrG5h" value="watchable" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="IHtTBFkjQP" role="1tU5fm">
              <ref role="3uigEE" to="6w4o:~Watchable" resolve="Watchable" />
            </node>
            <node concept="1rXfSq" id="5uVbEkjJf0Y" role="33vP2m">
              <ref role="37wK5l" node="5uVbEkjJ4UW" resolve="createWatchableForEcc" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5uVbEkjJgzB" role="3cqZAp">
          <node concept="3cpWsn" id="5uVbEkjJgzC" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="5uVbEkjJgzD" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="5uVbEkjJgzE" role="33vP2m">
              <node concept="37vLTw" id="5uVbEkjJgzF" role="2Oq$k0">
                <ref role="3cqZAo" node="19RKY2xF6QL" resolve="myEditorCell" />
              </node>
              <node concept="liA8E" id="5uVbEkjJgzG" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5uVbEkjJgzH" role="3cqZAp">
          <node concept="3cpWsn" id="5uVbEkjJgzI" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2yJZQx2_l_a" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
            </node>
            <node concept="2OqwBi" id="5uVbEkjJgzK" role="33vP2m">
              <node concept="37vLTw" id="5uVbEkjJgzL" role="2Oq$k0">
                <ref role="3cqZAo" node="5uVbEkjJgzC" resolve="style" />
              </node>
              <node concept="liA8E" id="5uVbEkjJgzM" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6SLp5w3KsWE" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5uVbEkjJf4M" role="3cqZAp" />
        <node concept="3clFbH" id="19RKY2xFC6z" role="3cqZAp" />
        <node concept="3cpWs8" id="19RKY2xFC6$" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xFC6_" role="3cpWs9">
            <property role="TrG5h" value="listener" />
            <node concept="3uibUv" id="IHtTBFkk6d" role="1tU5fm">
              <ref role="3uigEE" to="6w4o:~WatchedValueListener" resolve="WatchedValueListener" />
            </node>
            <node concept="2ShNRf" id="19RKY2xFC6B" role="33vP2m">
              <node concept="YeOm9" id="19RKY2xFC6C" role="2ShVmc">
                <node concept="1Y3b0j" id="19RKY2xFC6D" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <ref role="1Y3XeK" to="6w4o:~WatchedValueListener" resolve="WatchedValueListener" />
                  <node concept="3Tm1VV" id="19RKY2xFC6E" role="1B3o_S" />
                  <node concept="3clFb_" id="19RKY2xFC6F" role="jymVt">
                    <property role="TrG5h" value="onValueChanged" />
                    <node concept="3Tm1VV" id="19RKY2xFC6G" role="1B3o_S" />
                    <node concept="3cqZAl" id="19RKY2xFC6H" role="3clF45" />
                    <node concept="37vLTG" id="19RKY2xFC6I" role="3clF46">
                      <property role="TrG5h" value="newValue" />
                      <node concept="17QB3L" id="19RKY2xFC6J" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="19RKY2xFC6K" role="3clF47">
                      <node concept="3clFbF" id="19RKY2xFC6L" role="3cqZAp">
                        <node concept="2OqwBi" id="19RKY2xFC6M" role="3clFbG">
                          <node concept="37vLTw" id="19RKY2xFC6N" role="2Oq$k0">
                            <ref role="3cqZAo" node="19RKY2xFC5H" resolve="inspector" />
                          </node>
                          <node concept="liA8E" id="19RKY2xFC6O" role="2OqNvi">
                            <ref role="37wK5l" to="ek6x:~NetworkInspector.setInspectionForComponent(org.fbme.lib.common.Declaration,org.fbme.ide.richediting.inspections.Inspection)" resolve="setInspectionForComponent" />
                            <node concept="37vLTw" id="5uVbEkjJhuh" role="37wK5m">
                              <ref role="3cqZAo" node="5uVbEkjJgzI" resolve="fb" />
                            </node>
                            <node concept="2ShNRf" id="19RKY2xFC6Q" role="37wK5m">
                              <node concept="1pGfFk" id="19RKY2xFC6R" role="2ShVmc">
                                <ref role="37wK5l" to="ek6x:~Inspection.&lt;init&gt;(java.lang.String)" resolve="Inspection" />
                                <node concept="3cpWs3" id="19RKY2xFC6S" role="37wK5m">
                                  <node concept="37vLTw" id="19RKY2xFC6T" role="3uHU7w">
                                    <ref role="3cqZAo" node="19RKY2xFC6I" resolve="newValue" />
                                  </node>
                                  <node concept="Xl_RD" id="19RKY2xFC6U" role="3uHU7B">
                                    <property role="Xl_RC" value="State: " />
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
        <node concept="3clFbH" id="13KqhPhcqgh" role="3cqZAp" />
        <node concept="3clFbF" id="19RKY2xFC6W" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xFC6X" role="3clFbG">
            <node concept="37vLTw" id="6Vznkw4hvpi" role="2Oq$k0">
              <ref role="3cqZAo" node="4WS_6wCD2tY" resolve="myWatchers" />
            </node>
            <node concept="liA8E" id="19RKY2xFC6Z" role="2OqNvi">
              <ref role="37wK5l" to="6w4o:~WatcherFacade.watch(org.fbme.ide.platform.debugger.Watchable)" resolve="watch" />
              <node concept="37vLTw" id="5uVbEkjJh3a" role="37wK5m">
                <ref role="3cqZAo" node="5uVbEkjJeDb" resolve="watchable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="19RKY2xFC71" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xFC72" role="3clFbG">
            <node concept="37vLTw" id="6Vznkw4hvBf" role="2Oq$k0">
              <ref role="3cqZAo" node="4WS_6wCD2tY" resolve="myWatchers" />
            </node>
            <node concept="liA8E" id="19RKY2xFC74" role="2OqNvi">
              <ref role="37wK5l" to="6w4o:~WatcherFacade.addWatchedValueListener(org.fbme.ide.platform.debugger.WatchableData,org.fbme.ide.platform.debugger.WatchedValueListener)" resolve="addWatchedValueListener" />
              <node concept="2OqwBi" id="19RKY2xFC75" role="37wK5m">
                <node concept="37vLTw" id="5uVbEkjJhac" role="2Oq$k0">
                  <ref role="3cqZAo" node="5uVbEkjJeDb" resolve="watchable" />
                </node>
                <node concept="liA8E" id="IHtTBFkkeL" role="2OqNvi">
                  <ref role="37wK5l" to="6w4o:~Watchable.serialize()" resolve="serialize" />
                </node>
              </node>
              <node concept="37vLTw" id="19RKY2xFC78" role="37wK5m">
                <ref role="3cqZAo" node="19RKY2xFC6_" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="19RKY2xFC79" role="3cqZAp">
          <node concept="1rXfSq" id="19RKY2xFC7a" role="3clFbG">
            <ref role="37wK5l" node="19RKY2xFpb4" resolve="setECCStateListener" />
            <node concept="37vLTw" id="5uVbEkjJhFS" role="37wK5m">
              <ref role="3cqZAo" node="5uVbEkjJgzI" resolve="fb" />
            </node>
            <node concept="37vLTw" id="19RKY2xFC7c" role="37wK5m">
              <ref role="3cqZAo" node="19RKY2xFC6_" resolve="listener" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="19RKY2xFC7e" role="3clF45" />
      <node concept="3Tm1VV" id="19RKY2xFC7d" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5PjcHHGf7bF" role="jymVt" />
    <node concept="3clFb_" id="19RKY2xFzs2" role="jymVt">
      <property role="TrG5h" value="unwatchEcc" />
      <node concept="3clFbS" id="19RKY2xFzs4" role="3clF47">
        <node concept="3cpWs8" id="19RKY2xFzs9" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xFzsa" role="3cpWs9">
            <property role="TrG5h" value="provider" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6SLp5w3KsSA" role="1tU5fm">
              <ref role="3uigEE" to="ek6x:~NetworkInspector" resolve="NetworkInspector" />
            </node>
            <node concept="1rXfSq" id="19RKY2xFzsc" role="33vP2m">
              <ref role="37wK5l" node="19RKY2xFaZl" resolve="getInspector" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="19RKY2xFzse" role="3cqZAp" />
        <node concept="3cpWs8" id="5uVbEkjJifr" role="3cqZAp">
          <node concept="3cpWsn" id="5uVbEkjJifs" role="3cpWs9">
            <property role="TrG5h" value="watchable" />
            <node concept="3uibUv" id="IHtTBFkTBj" role="1tU5fm">
              <ref role="3uigEE" to="6w4o:~Watchable" resolve="Watchable" />
            </node>
            <node concept="1rXfSq" id="5uVbEkjJifu" role="33vP2m">
              <ref role="37wK5l" node="5uVbEkjJ4UW" resolve="createWatchableForEcc" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5uVbEkjJifv" role="3cqZAp">
          <node concept="3cpWsn" id="5uVbEkjJifw" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="5uVbEkjJifx" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="5uVbEkjJify" role="33vP2m">
              <node concept="37vLTw" id="5uVbEkjJifz" role="2Oq$k0">
                <ref role="3cqZAo" node="19RKY2xF6QL" resolve="myEditorCell" />
              </node>
              <node concept="liA8E" id="5uVbEkjJif$" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5uVbEkjJif_" role="3cqZAp">
          <node concept="3cpWsn" id="5uVbEkjJifA" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="2yJZQx2_o75" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
            </node>
            <node concept="2OqwBi" id="5uVbEkjJifC" role="33vP2m">
              <node concept="37vLTw" id="5uVbEkjJifD" role="2Oq$k0">
                <ref role="3cqZAo" node="5uVbEkjJifw" resolve="style" />
              </node>
              <node concept="liA8E" id="5uVbEkjJifE" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6SLp5w3KsFP" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="19RKY2xFzsM" role="3cqZAp" />
        <node concept="3clFbF" id="19RKY2xFzsN" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xFzsO" role="3clFbG">
            <node concept="37vLTw" id="6Vznkw4hvVs" role="2Oq$k0">
              <ref role="3cqZAo" node="4WS_6wCD2tY" resolve="myWatchers" />
            </node>
            <node concept="liA8E" id="19RKY2xFzsQ" role="2OqNvi">
              <ref role="37wK5l" to="6w4o:~WatcherFacade.unwatch(org.fbme.ide.platform.debugger.Watchable)" resolve="unwatch" />
              <node concept="37vLTw" id="5uVbEkjJiyv" role="37wK5m">
                <ref role="3cqZAo" node="5uVbEkjJifs" resolve="watchable" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="19RKY2xFzsS" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xFzsT" role="3clFbG">
            <node concept="37vLTw" id="6Vznkw4hw9v" role="2Oq$k0">
              <ref role="3cqZAo" node="4WS_6wCD2tY" resolve="myWatchers" />
            </node>
            <node concept="liA8E" id="19RKY2xFzsV" role="2OqNvi">
              <ref role="37wK5l" to="6w4o:~WatcherFacade.removeWatchedValueListener(org.fbme.ide.platform.debugger.WatchableData,org.fbme.ide.platform.debugger.WatchedValueListener)" resolve="removeWatchedValueListener" />
              <node concept="2OqwBi" id="19RKY2xFzsW" role="37wK5m">
                <node concept="37vLTw" id="5uVbEkjJiDd" role="2Oq$k0">
                  <ref role="3cqZAo" node="5uVbEkjJifs" resolve="watchable" />
                </node>
                <node concept="liA8E" id="IHtTBFkY1q" role="2OqNvi">
                  <ref role="37wK5l" to="6w4o:~Watchable.serialize()" resolve="serialize" />
                </node>
              </node>
              <node concept="1rXfSq" id="19RKY2xFzsZ" role="37wK5m">
                <ref role="37wK5l" node="19RKY2xFqxt" resolve="getECCStateListener" />
                <node concept="37vLTw" id="5uVbEkjJiKo" role="37wK5m">
                  <ref role="3cqZAo" node="5uVbEkjJifA" resolve="fb" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="19RKY2xFzt1" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xFzt2" role="3clFbG">
            <node concept="37vLTw" id="19RKY2xFzt3" role="2Oq$k0">
              <ref role="3cqZAo" node="19RKY2xFzsa" resolve="provider" />
            </node>
            <node concept="liA8E" id="19RKY2xFzt4" role="2OqNvi">
              <ref role="37wK5l" to="ek6x:~NetworkInspector.setInspectionForComponent(org.fbme.lib.common.Declaration,org.fbme.ide.richediting.inspections.Inspection)" resolve="setInspectionForComponent" />
              <node concept="37vLTw" id="5uVbEkjJiSL" role="37wK5m">
                <ref role="3cqZAo" node="5uVbEkjJifA" resolve="fb" />
              </node>
              <node concept="10Nm6u" id="19RKY2xFzt6" role="37wK5m" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4OybeeRBrQv" role="3cqZAp">
          <node concept="1rXfSq" id="4OybeeRBrQw" role="3clFbG">
            <ref role="37wK5l" node="19RKY2xFpb4" resolve="setECCStateListener" />
            <node concept="37vLTw" id="4OybeeRBrQx" role="37wK5m">
              <ref role="3cqZAo" node="5uVbEkjJifA" resolve="fb" />
            </node>
            <node concept="10Nm6u" id="4OybeeRBs8i" role="37wK5m" />
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="19RKY2xFzt8" role="3clF45" />
      <node concept="3Tm1VV" id="19RKY2xFzt7" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5PjcHHGfOSn" role="jymVt" />
    <node concept="2tJIrI" id="5PjcHHGcWkX" role="jymVt" />
    <node concept="3clFb_" id="19RKY2xFaZl" role="jymVt">
      <property role="TrG5h" value="getInspector" />
      <node concept="3clFbS" id="19RKY2xFaZn" role="3clF47">
        <node concept="3cpWs8" id="19RKY2xG86h" role="3cqZAp">
          <node concept="3cpWsn" id="19RKY2xG86i" role="3cpWs9">
            <property role="TrG5h" value="networkInstance" />
            <node concept="3uibUv" id="19RKY2xFZAj" role="1tU5fm">
              <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
            </node>
            <node concept="1rXfSq" id="19RKY2xG86j" role="33vP2m">
              <ref role="37wK5l" node="19RKY2xFeiO" resolve="getNetworkInstance" />
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="19RKY2xG8oF" role="3cqZAp">
          <node concept="3clFbS" id="19RKY2xG8oH" role="3clFbx">
            <node concept="3cpWs6" id="19RKY2xG9ek" role="3cqZAp">
              <node concept="10Nm6u" id="19RKY2xG9kg" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="19RKY2xG8Vy" role="3clFbw">
            <node concept="10Nm6u" id="19RKY2xG91v" role="3uHU7w" />
            <node concept="37vLTw" id="19RKY2xG8Be" role="3uHU7B">
              <ref role="3cqZAo" node="19RKY2xG86i" resolve="networkInstance" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="19RKY2xFaZo" role="3cqZAp">
          <node concept="0kSF2" id="19RKY2xFaZp" role="3clFbG">
            <node concept="3uibUv" id="6SLp5w3KsB_" role="0kSFW">
              <ref role="3uigEE" to="ek6x:~NetworkInspector" resolve="NetworkInspector" />
            </node>
            <node concept="2OqwBi" id="19RKY2xFaZr" role="0kSFX">
              <node concept="liA8E" id="19RKY2xFaZs" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object)" resolve="getUserObject" />
                <node concept="2YIFZM" id="19RKY2xFaZt" role="37wK5m">
                  <ref role="37wK5l" to="5z5t:19RKY2xEnYh" resolve="inspector" />
                  <ref role="1Pybhc" to="5z5t:5PjcHHGcIKn" resolve="NetworkObservationKeys" />
                  <node concept="37vLTw" id="19RKY2xG86k" role="37wK5m">
                    <ref role="3cqZAo" node="19RKY2xG86i" resolve="networkInstance" />
                  </node>
                </node>
              </node>
              <node concept="2JrnkZ" id="19RKY2xFaZv" role="2Oq$k0">
                <node concept="37vLTw" id="19RKY2xFmNP" role="2JrQYb">
                  <ref role="3cqZAo" node="19RKY2xEYIg" resolve="myResourceNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="6SLp5w3Kqjm" role="3clF45">
        <ref role="3uigEE" to="ek6x:~NetworkInspector" resolve="NetworkInspector" />
      </node>
      <node concept="3Tm1VV" id="19RKY2xFaZx" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="19RKY2xFf5F" role="jymVt" />
    <node concept="2tJIrI" id="5PjcHHGd15$" role="jymVt" />
    <node concept="3clFb_" id="19RKY2xFn5W" role="jymVt">
      <property role="TrG5h" value="setInspector" />
      <node concept="3clFbS" id="19RKY2xFn5Y" role="3clF47">
        <node concept="3clFbF" id="19RKY2xFn5Z" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xFn60" role="3clFbG">
            <node concept="liA8E" id="19RKY2xFn61" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object)" resolve="putUserObject" />
              <node concept="2YIFZM" id="19RKY2xFn62" role="37wK5m">
                <ref role="1Pybhc" to="5z5t:5PjcHHGcIKn" resolve="NetworkObservationKeys" />
                <ref role="37wK5l" to="5z5t:19RKY2xEnYh" resolve="inspector" />
                <node concept="1rXfSq" id="19RKY2xFuZS" role="37wK5m">
                  <ref role="37wK5l" node="19RKY2xFeiO" resolve="getNetworkInstance" />
                </node>
              </node>
              <node concept="37vLTw" id="19RKY2xFn64" role="37wK5m">
                <ref role="3cqZAo" node="19RKY2xFn6f" resolve="inspector" />
              </node>
            </node>
            <node concept="2JrnkZ" id="19RKY2xFn65" role="2Oq$k0">
              <node concept="37vLTw" id="19RKY2xFo4l" role="2JrQYb">
                <ref role="3cqZAo" node="19RKY2xEYIg" resolve="myResourceNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="19RKY2xFn68" role="3clF45" />
      <node concept="37vLTG" id="19RKY2xFn6f" role="3clF46">
        <property role="TrG5h" value="inspector" />
        <node concept="3uibUv" id="6SLp5w3KGr5" role="1tU5fm">
          <ref role="3uigEE" to="ek6x:~NetworkInspector" resolve="NetworkInspector" />
        </node>
        <node concept="2AHcQZ" id="19RKY2xFn6h" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="19RKY2xFn67" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5PjcHHGd54t" role="jymVt" />
    <node concept="3clFb_" id="19RKY2xFofQ" role="jymVt">
      <property role="TrG5h" value="getPortListener" />
      <node concept="3clFbS" id="19RKY2xFofS" role="3clF47">
        <node concept="3clFbF" id="19RKY2xFofT" role="3cqZAp">
          <node concept="0kSF2" id="19RKY2xFofU" role="3clFbG">
            <node concept="3uibUv" id="IHtTBFkmFP" role="0kSFW">
              <ref role="3uigEE" to="6w4o:~WatchedValueListener" resolve="WatchedValueListener" />
            </node>
            <node concept="2OqwBi" id="19RKY2xFofW" role="0kSFX">
              <node concept="liA8E" id="19RKY2xFofX" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object)" resolve="getUserObject" />
                <node concept="2YIFZM" id="19RKY2xFofY" role="37wK5m">
                  <ref role="37wK5l" to="5z5t:5PjcHHGcJZ0" resolve="portListener" />
                  <ref role="1Pybhc" to="5z5t:5PjcHHGcIKn" resolve="NetworkObservationKeys" />
                  <node concept="1rXfSq" id="19RKY2xFtXy" role="37wK5m">
                    <ref role="37wK5l" node="19RKY2xFeiO" resolve="getNetworkInstance" />
                  </node>
                  <node concept="37vLTw" id="19RKY2xFofZ" role="37wK5m">
                    <ref role="3cqZAo" node="19RKY2xFog7" resolve="port" />
                  </node>
                </node>
              </node>
              <node concept="2JrnkZ" id="19RKY2xFog0" role="2Oq$k0">
                <node concept="37vLTw" id="19RKY2xFxjw" role="2JrQYb">
                  <ref role="3cqZAo" node="19RKY2xEYIg" resolve="myResourceNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="IHtTBFkmDS" role="3clF45">
        <ref role="3uigEE" to="6w4o:~WatchedValueListener" resolve="WatchedValueListener" />
      </node>
      <node concept="37vLTG" id="19RKY2xFog7" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="2AHcQZ" id="19RKY2xFog9" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="5F$aghybTYH" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
          <node concept="3qTvmN" id="5F$aghybTYI" role="11_B2D" />
        </node>
      </node>
      <node concept="3Tm1VV" id="19RKY2xFog2" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5PjcHHGd5ng" role="jymVt" />
    <node concept="3clFb_" id="19RKY2xFrQk" role="jymVt">
      <property role="TrG5h" value="setPortListener" />
      <node concept="3clFbS" id="19RKY2xFrQm" role="3clF47">
        <node concept="3clFbF" id="19RKY2xFrQn" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xFrQo" role="3clFbG">
            <node concept="liA8E" id="19RKY2xFrQp" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object)" resolve="putUserObject" />
              <node concept="2YIFZM" id="19RKY2xFrQq" role="37wK5m">
                <ref role="1Pybhc" to="5z5t:5PjcHHGcIKn" resolve="NetworkObservationKeys" />
                <ref role="37wK5l" to="5z5t:5PjcHHGcJZ0" resolve="portListener" />
                <node concept="1rXfSq" id="19RKY2xFtoX" role="37wK5m">
                  <ref role="37wK5l" node="19RKY2xFeiO" resolve="getNetworkInstance" />
                </node>
                <node concept="37vLTw" id="19RKY2xFrQr" role="37wK5m">
                  <ref role="3cqZAo" node="19RKY2xFrQ$" resolve="port" />
                </node>
              </node>
              <node concept="37vLTw" id="19RKY2xFrQs" role="37wK5m">
                <ref role="3cqZAo" node="19RKY2xFrQB" resolve="listener" />
              </node>
            </node>
            <node concept="2JrnkZ" id="19RKY2xFrQt" role="2Oq$k0">
              <node concept="37vLTw" id="19RKY2xFsZF" role="2JrQYb">
                <ref role="3cqZAo" node="19RKY2xEYIg" resolve="myResourceNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="19RKY2xFrQw" role="3clF45" />
      <node concept="37vLTG" id="19RKY2xFrQ$" role="3clF46">
        <property role="TrG5h" value="port" />
        <node concept="2AHcQZ" id="19RKY2xFrQA" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
        <node concept="3uibUv" id="5F$aghybTAR" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
          <node concept="3qTvmN" id="5F$aghybTAS" role="11_B2D" />
        </node>
      </node>
      <node concept="37vLTG" id="19RKY2xFrQB" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="IHtTBFkmMv" role="1tU5fm">
          <ref role="3uigEE" to="6w4o:~WatchedValueListener" resolve="WatchedValueListener" />
        </node>
        <node concept="2AHcQZ" id="19RKY2xFrQD" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="19RKY2xFrQv" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5PjcHHGfKCV" role="jymVt" />
    <node concept="3clFb_" id="19RKY2xFqxt" role="jymVt">
      <property role="TrG5h" value="getECCStateListener" />
      <node concept="3clFbS" id="19RKY2xFqxv" role="3clF47">
        <node concept="3clFbF" id="19RKY2xFqxw" role="3cqZAp">
          <node concept="0kSF2" id="19RKY2xFqxx" role="3clFbG">
            <node concept="3uibUv" id="IHtTBFkmV6" role="0kSFW">
              <ref role="3uigEE" to="6w4o:~WatchedValueListener" resolve="WatchedValueListener" />
            </node>
            <node concept="2OqwBi" id="19RKY2xFqxz" role="0kSFX">
              <node concept="liA8E" id="19RKY2xFqx$" role="2OqNvi">
                <ref role="37wK5l" to="mhbf:~SNode.getUserObject(java.lang.Object)" resolve="getUserObject" />
                <node concept="2YIFZM" id="19RKY2xFqx_" role="37wK5m">
                  <ref role="37wK5l" to="5z5t:5PjcHHGfJug" resolve="eccStateListener" />
                  <ref role="1Pybhc" to="5z5t:5PjcHHGcIKn" resolve="NetworkObservationKeys" />
                  <node concept="1rXfSq" id="19RKY2xFtAh" role="37wK5m">
                    <ref role="37wK5l" node="19RKY2xFeiO" resolve="getNetworkInstance" />
                  </node>
                  <node concept="37vLTw" id="19RKY2xFqxA" role="37wK5m">
                    <ref role="3cqZAo" node="19RKY2xFqxI" resolve="fb" />
                  </node>
                </node>
              </node>
              <node concept="2JrnkZ" id="19RKY2xFqxB" role="2Oq$k0">
                <node concept="37vLTw" id="19RKY2xFrES" role="2JrQYb">
                  <ref role="3cqZAo" node="19RKY2xEYIg" resolve="myResourceNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="IHtTBFkmT9" role="3clF45">
        <ref role="3uigEE" to="6w4o:~WatchedValueListener" resolve="WatchedValueListener" />
      </node>
      <node concept="37vLTG" id="19RKY2xFqxI" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3uibUv" id="2yJZQx2x4SH" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
        </node>
        <node concept="2AHcQZ" id="19RKY2xFqxK" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3Tm1VV" id="19RKY2xFqxD" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5PjcHHGfL6P" role="jymVt" />
    <node concept="3clFb_" id="19RKY2xFpb4" role="jymVt">
      <property role="TrG5h" value="setECCStateListener" />
      <node concept="3clFbS" id="19RKY2xFpb6" role="3clF47">
        <node concept="3clFbF" id="19RKY2xFpb7" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xFpb8" role="3clFbG">
            <node concept="liA8E" id="19RKY2xFpb9" role="2OqNvi">
              <ref role="37wK5l" to="mhbf:~SNode.putUserObject(java.lang.Object,java.lang.Object)" resolve="putUserObject" />
              <node concept="2YIFZM" id="19RKY2xFpba" role="37wK5m">
                <ref role="1Pybhc" to="5z5t:5PjcHHGcIKn" resolve="NetworkObservationKeys" />
                <ref role="37wK5l" to="5z5t:5PjcHHGfJug" resolve="eccStateListener" />
                <node concept="1rXfSq" id="19RKY2xFtLJ" role="37wK5m">
                  <ref role="37wK5l" node="19RKY2xFeiO" resolve="getNetworkInstance" />
                </node>
                <node concept="37vLTw" id="19RKY2xFpbb" role="37wK5m">
                  <ref role="3cqZAo" node="19RKY2xFpbk" resolve="fb" />
                </node>
              </node>
              <node concept="37vLTw" id="19RKY2xFpbc" role="37wK5m">
                <ref role="3cqZAo" node="19RKY2xFpbn" resolve="listener" />
              </node>
            </node>
            <node concept="2JrnkZ" id="19RKY2xFpbd" role="2Oq$k0">
              <node concept="37vLTw" id="19RKY2xFqe8" role="2JrQYb">
                <ref role="3cqZAo" node="19RKY2xEYIg" resolve="myResourceNode" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="19RKY2xFpbg" role="3clF45" />
      <node concept="37vLTG" id="19RKY2xFpbk" role="3clF46">
        <property role="TrG5h" value="fb" />
        <node concept="3uibUv" id="2yJZQx2_lTR" role="1tU5fm">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
        </node>
        <node concept="2AHcQZ" id="19RKY2xFpbm" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="37vLTG" id="19RKY2xFpbn" role="3clF46">
        <property role="TrG5h" value="listener" />
        <node concept="3uibUv" id="IHtTBFkn1K" role="1tU5fm">
          <ref role="3uigEE" to="6w4o:~WatchedValueListener" resolve="WatchedValueListener" />
        </node>
        <node concept="2AHcQZ" id="19RKY2xFpbp" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="3Tm1VV" id="19RKY2xFpbf" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5PjcHHGfKL8" role="jymVt" />
    <node concept="3clFb_" id="19RKY2xFeiO" role="jymVt">
      <property role="TrG5h" value="getNetworkInstance" />
      <node concept="3Tm1VV" id="19RKY2xGmvW" role="1B3o_S" />
      <node concept="3uibUv" id="19RKY2xFeiQ" role="3clF45">
        <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
      </node>
      <node concept="3clFbS" id="19RKY2xFeiF" role="3clF47">
        <node concept="3cpWs6" id="19RKY2xFeiG" role="3cqZAp">
          <node concept="2OqwBi" id="19RKY2xFeiH" role="3cqZAk">
            <node concept="2OqwBi" id="19RKY2xFeiI" role="2Oq$k0">
              <node concept="37vLTw" id="19RKY2xFeiJ" role="2Oq$k0">
                <ref role="3cqZAo" node="19RKY2xF6QL" resolve="myEditorCell" />
              </node>
              <node concept="liA8E" id="19RKY2xFeiK" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
            <node concept="liA8E" id="19RKY2xFeiL" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
              <node concept="10M0yZ" id="6SLp5w3KGAJ" role="37wK5m">
                <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK_INSTANCE" resolve="NETWORK_INSTANCE" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5uVbEkjIcth" role="jymVt" />
    <node concept="3clFb_" id="5uVbEkjIfcQ" role="jymVt">
      <property role="TrG5h" value="getPort" />
      <node concept="3clFbS" id="5uVbEkjIfcT" role="3clF47">
        <node concept="3cpWs8" id="5uVbEkjIgqg" role="3cqZAp">
          <node concept="3cpWsn" id="5uVbEkjIgqh" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="5uVbEkjIgqi" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="5uVbEkjIgqj" role="33vP2m">
              <node concept="37vLTw" id="5uVbEkjIgqk" role="2Oq$k0">
                <ref role="3cqZAo" node="19RKY2xF6QL" resolve="myEditorCell" />
              </node>
              <node concept="liA8E" id="5uVbEkjIgql" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5uVbEkjIgqv" role="3cqZAp">
          <node concept="3cpWsn" id="5uVbEkjIgqw" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <node concept="3uibUv" id="2yJZQx2_me2" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
            </node>
            <node concept="2OqwBi" id="5uVbEkjIgqy" role="33vP2m">
              <node concept="37vLTw" id="5uVbEkjIgqz" role="2Oq$k0">
                <ref role="3cqZAo" node="5uVbEkjIgqh" resolve="style" />
              </node>
              <node concept="liA8E" id="5uVbEkjIgq$" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6SLp5w3KIZr" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5uVbEkjIgqm" role="3cqZAp">
          <node concept="3cpWsn" id="5uVbEkjIgqn" role="3cpWs9">
            <property role="TrG5h" value="portDescriptor" />
            <node concept="3uibUv" id="5uVbEkjIgqo" role="1tU5fm">
              <ref role="3uigEE" to="ntnl:~FBPortDescriptor" resolve="FBPortDescriptor" />
            </node>
            <node concept="2OqwBi" id="5uVbEkjIgqp" role="33vP2m">
              <node concept="37vLTw" id="5uVbEkjIgqq" role="2Oq$k0">
                <ref role="3cqZAo" node="5uVbEkjIgqh" resolve="style" />
              </node>
              <node concept="liA8E" id="5uVbEkjIgqr" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="6SLp5w3KLyM" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.PORT" resolve="PORT" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="5uVbEkjIgqC" role="3cqZAp">
          <node concept="3clFbS" id="5uVbEkjIgqD" role="3clFbx">
            <node concept="3cpWs6" id="5uVbEkjIk_x" role="3cqZAp">
              <node concept="10Nm6u" id="5uVbEkjIkJe" role="3cqZAk" />
            </node>
          </node>
          <node concept="22lmx$" id="5uVbEkjIimX" role="3clFbw">
            <node concept="3clFbC" id="5uVbEkjIk9_" role="3uHU7w">
              <node concept="10Nm6u" id="5uVbEkjIkqz" role="3uHU7w" />
              <node concept="37vLTw" id="5uVbEkjIjIn" role="3uHU7B">
                <ref role="3cqZAo" node="5uVbEkjIgqw" resolve="fb" />
              </node>
            </node>
            <node concept="3clFbC" id="5uVbEkjIgT9" role="3uHU7B">
              <node concept="37vLTw" id="5uVbEkjIgqF" role="3uHU7B">
                <ref role="3cqZAo" node="5uVbEkjIgqn" resolve="portDescriptor" />
              </node>
              <node concept="10Nm6u" id="5uVbEkjIgZ2" role="3uHU7w" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="5uVbEkjIgqO" role="3cqZAp">
          <node concept="2YIFZM" id="5F$aghybzUd" role="3cqZAk">
            <ref role="37wK5l" to="g27j:~PortPath.createPortPath(org.fbme.lib.iec61499.fbnetwork.FunctionBlockDeclarationBase,org.fbme.lib.iec61499.fbnetwork.EntryKind,org.fbme.lib.common.Declaration)" resolve="createPortPath" />
            <ref role="1Pybhc" to="g27j:~PortPath" resolve="PortPath" />
            <node concept="37vLTw" id="5F$aghyb_AW" role="37wK5m">
              <ref role="3cqZAo" node="5uVbEkjIgqw" resolve="fb" />
            </node>
            <node concept="2OqwBi" id="5F$aghybF8h" role="37wK5m">
              <node concept="37vLTw" id="5F$aghybD_b" role="2Oq$k0">
                <ref role="3cqZAo" node="5uVbEkjIgqn" resolve="portDescriptor" />
              </node>
              <node concept="liA8E" id="5F$aghybGHC" role="2OqNvi">
                <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getConnectionKind()" resolve="getConnectionKind" />
              </node>
            </node>
            <node concept="2OqwBi" id="5F$aghybMbt" role="37wK5m">
              <node concept="37vLTw" id="5F$aghybPSe" role="2Oq$k0">
                <ref role="3cqZAo" node="5uVbEkjIgqn" resolve="portDescriptor" />
              </node>
              <node concept="liA8E" id="5F$aghybRBQ" role="2OqNvi">
                <ref role="37wK5l" to="ntnl:~FBPortDescriptor.getDeclaration()" resolve="getDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5uVbEkjIdKt" role="1B3o_S" />
      <node concept="3uibUv" id="5F$aghyblfy" role="3clF45">
        <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
        <node concept="3qUE_q" id="64EP$RZ59ay" role="11_B2D">
          <node concept="3uibUv" id="64EP$RZ5c5n" role="3qUE_r">
            <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1S4cYrOMP$b" role="jymVt" />
    <node concept="3clFb_" id="1S4cYrOMM45" role="jymVt">
      <property role="TrG5h" value="getFunctionBlock" />
      <node concept="3clFbS" id="1S4cYrOMM46" role="3clF47">
        <node concept="3cpWs8" id="1S4cYrOMM47" role="3cqZAp">
          <node concept="3cpWsn" id="1S4cYrOMM48" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="1S4cYrOMM49" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="1S4cYrOMM4a" role="33vP2m">
              <node concept="37vLTw" id="1S4cYrOMM4b" role="2Oq$k0">
                <ref role="3cqZAo" node="19RKY2xF6QL" resolve="myEditorCell" />
              </node>
              <node concept="liA8E" id="1S4cYrOMM4c" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1S4cYrOMRWx" role="3cqZAp">
          <node concept="2OqwBi" id="1S4cYrOMT4B" role="3cqZAk">
            <node concept="37vLTw" id="1S4cYrOMT4C" role="2Oq$k0">
              <ref role="3cqZAo" node="1S4cYrOMM48" resolve="style" />
            </node>
            <node concept="liA8E" id="1S4cYrOMT4D" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
              <node concept="10M0yZ" id="6SLp5w3KNLC" role="37wK5m">
                <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1S4cYrOMM4F" role="1B3o_S" />
      <node concept="3uibUv" id="2yJZQx2_c_k" role="3clF45">
        <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
      </node>
    </node>
    <node concept="2tJIrI" id="1S4cYrOQeBb" role="jymVt" />
    <node concept="3clFb_" id="1S4cYrOQiXj" role="jymVt">
      <property role="TrG5h" value="getSelectedFunctionBlocks" />
      <node concept="3clFbS" id="1S4cYrOQiXm" role="3clF47">
        <node concept="3cpWs8" id="1S4cYrOQkHA" role="3cqZAp">
          <node concept="3cpWsn" id="1S4cYrOQkHB" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="1S4cYrOQkHC" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="1S4cYrOQkHD" role="33vP2m">
              <node concept="37vLTw" id="1S4cYrOQkHE" role="2Oq$k0">
                <ref role="3cqZAo" node="19RKY2xF6QL" resolve="myEditorCell" />
              </node>
              <node concept="liA8E" id="1S4cYrOQkHF" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1S4cYrOQtpH" role="3cqZAp">
          <node concept="3cpWsn" id="1S4cYrOQtpI" role="3cpWs9">
            <property role="TrG5h" value="selectedComponents" />
            <node concept="2hMVRd" id="1S4cYrOQv9Y" role="1tU5fm">
              <node concept="3uibUv" id="6SLp5w3KQoU" role="2hN53Y">
                <ref role="3uigEE" to="1hzy:~NetworkComponentView" resolve="NetworkComponentView" />
              </node>
            </node>
            <node concept="2OqwBi" id="1S4cYrOQtpJ" role="33vP2m">
              <node concept="2OqwBi" id="1S4cYrOQtpK" role="2Oq$k0">
                <node concept="37vLTw" id="1S4cYrOQtpL" role="2Oq$k0">
                  <ref role="3cqZAo" node="1S4cYrOQkHB" resolve="style" />
                </node>
                <node concept="liA8E" id="1S4cYrOQtpM" role="2OqNvi">
                  <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                  <node concept="10M0yZ" id="6SLp5w3KSMz" role="37wK5m">
                    <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                    <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.SELECTED_FBS" resolve="SELECTED_FBS" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="1S4cYrOQtpO" role="2OqNvi">
                <ref role="37wK5l" to="kdnk:~SelectionModel.getSelectedComponents()" resolve="getSelectedComponents" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="1S4cYrOQkHG" role="3cqZAp">
          <node concept="2OqwBi" id="1S4cYrOQ_z5" role="3cqZAk">
            <node concept="2OqwBi" id="64EP$RZ5FoL" role="2Oq$k0">
              <node concept="2OqwBi" id="1gxDN_wCgtK" role="2Oq$k0">
                <node concept="2OqwBi" id="3tHZ0yHKZ2n" role="2Oq$k0">
                  <node concept="37vLTw" id="1S4cYrOQtpP" role="2Oq$k0">
                    <ref role="3cqZAo" node="1S4cYrOQtpI" resolve="selectedComponents" />
                  </node>
                  <node concept="UnYns" id="3tHZ0yHL2hO" role="2OqNvi">
                    <node concept="3uibUv" id="6SLp5w3KVic" role="UnYnz">
                      <ref role="3uigEE" to="1hzy:~FunctionBlockView" resolve="FunctionBlockView" />
                    </node>
                  </node>
                </node>
                <node concept="3$u5V9" id="1gxDN_wCjLu" role="2OqNvi">
                  <node concept="1bVj0M" id="1gxDN_wCjLw" role="23t8la">
                    <node concept="3clFbS" id="1gxDN_wCjLx" role="1bW5cS">
                      <node concept="3clFbF" id="1gxDN_wCmlD" role="3cqZAp">
                        <node concept="2OqwBi" id="1gxDN_wCoCd" role="3clFbG">
                          <node concept="37vLTw" id="1gxDN_wCmlC" role="2Oq$k0">
                            <ref role="3cqZAo" node="1gxDN_wCjLy" resolve="it" />
                          </node>
                          <node concept="liA8E" id="3tHZ0yHL7i5" role="2OqNvi">
                            <ref role="37wK5l" to="1hzy:~FunctionBlockView.getComponent()" resolve="getComponent" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="Rh6nW" id="1gxDN_wCjLy" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="1gxDN_wCjLz" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="UnYns" id="64EP$RZ5v59" role="2OqNvi">
                <node concept="3uibUv" id="64EP$RZ5xBU" role="UnYnz">
                  <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
                </node>
              </node>
            </node>
            <node concept="ANE8D" id="1S4cYrOQBzz" role="2OqNvi" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1S4cYrOQgHe" role="1B3o_S" />
      <node concept="_YKpA" id="1S4cYrOQFMW" role="3clF45">
        <node concept="3uibUv" id="64EP$RZ5$wt" role="_ZDj9">
          <ref role="3uigEE" to="g27j:~FunctionBlockDeclaration" resolve="FunctionBlockDeclaration" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="5PjcHHGcAKc" role="1B3o_S" />
  </node>
  <node concept="2uRRBy" id="7eBFChAk6_E">
    <property role="TrG5h" value="InspectionsManager" />
    <node concept="2uRRBT" id="7eBFChAkMK2" role="2uRRB$">
      <node concept="3clFbS" id="7eBFChAkMK3" role="2VODD2">
        <node concept="3cpWs8" id="7eBFChAkOBg" role="3cqZAp">
          <node concept="3cpWsn" id="7eBFChAkOBh" role="3cpWs9">
            <property role="TrG5h" value="reg" />
            <node concept="3uibUv" id="7eBFChAkOBf" role="1tU5fm">
              <ref role="3uigEE" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
            </node>
            <node concept="2OqwBi" id="7eBFChAkOBi" role="33vP2m">
              <node concept="1KvdUw" id="7eBFChAkOBj" role="2Oq$k0" />
              <node concept="liA8E" id="7eBFChAkOBk" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="7eBFChAkOBl" role="37wK5m">
                  <ref role="3VsUkX" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eBFChAkMNA" role="3cqZAp">
          <node concept="2OqwBi" id="7eBFChAkOJI" role="3clFbG">
            <node concept="37vLTw" id="7eBFChAkOBm" role="2Oq$k0">
              <ref role="3cqZAo" node="7eBFChAkOBh" resolve="reg" />
            </node>
            <node concept="liA8E" id="7eBFChAkOQV" role="2OqNvi">
              <ref role="37wK5l" to="wvnl:~EditorExtensionRegistry.registerExtension(jetbrains.mps.openapi.editor.extensions.EditorExtension)" resolve="registerExtension" />
              <node concept="10M0yZ" id="6SLp5w3JmPR" role="37wK5m">
                <ref role="1PxDUh" to="ek6x:~InspectionManagerImpl" resolve="InspectionManagerImpl" />
                <ref role="3cqZAo" to="ek6x:~InspectionManagerImpl.EDITOR_EXTENSION" resolve="EDITOR_EXTENSION" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2uRRBN" id="7eBFChAkQc4" role="2uRRB_">
      <node concept="3clFbS" id="7eBFChAkQc5" role="2VODD2">
        <node concept="3cpWs8" id="7eBFChAkQcx" role="3cqZAp">
          <node concept="3cpWsn" id="7eBFChAkQcy" role="3cpWs9">
            <property role="TrG5h" value="reg" />
            <node concept="3uibUv" id="7eBFChAkQcz" role="1tU5fm">
              <ref role="3uigEE" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
            </node>
            <node concept="2OqwBi" id="7eBFChAkQc$" role="33vP2m">
              <node concept="1KvdUw" id="7eBFChAkQc_" role="2Oq$k0" />
              <node concept="liA8E" id="7eBFChAkQcA" role="2OqNvi">
                <ref role="37wK5l" to="z1c3:~MPSProject.getComponent(java.lang.Class)" resolve="getComponent" />
                <node concept="3VsKOn" id="7eBFChAkQcB" role="37wK5m">
                  <ref role="3VsUkX" to="wvnl:~EditorExtensionRegistry" resolve="EditorExtensionRegistry" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7eBFChAkQcC" role="3cqZAp">
          <node concept="2OqwBi" id="7eBFChAkQcD" role="3clFbG">
            <node concept="37vLTw" id="7eBFChAkQcE" role="2Oq$k0">
              <ref role="3cqZAo" node="7eBFChAkQcy" resolve="reg" />
            </node>
            <node concept="liA8E" id="7eBFChAkQcF" role="2OqNvi">
              <ref role="37wK5l" to="wvnl:~EditorExtensionRegistry.unregisterExtension(jetbrains.mps.openapi.editor.extensions.EditorExtension)" resolve="unregisterExtension" />
              <node concept="10M0yZ" id="6SLp5w3JmTY" role="37wK5m">
                <ref role="1PxDUh" to="ek6x:~InspectionManagerImpl" resolve="InspectionManagerImpl" />
                <ref role="3cqZAo" to="ek6x:~InspectionManagerImpl.EDITOR_EXTENSION" resolve="EDITOR_EXTENSION" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="aucBW5STuT">
    <property role="TrG5h" value="DebugActions" />
    <node concept="tT9cl" id="aucBW5T0vM" role="2f5YQi">
      <ref role="tU$_T" to="5z5t:3DiEZ8TON84" resolve="IEC61499Actions" />
      <ref role="2f8Tey" to="5z5t:aucBW5SZUF" resolve="watch" />
    </node>
    <node concept="ftmFs" id="aucBW5SZWd" role="ftER_">
      <node concept="tCFHf" id="aucBW5SZWi" role="ftvYc">
        <ref role="tCJdB" node="3DiEZ8TMaHe" resolve="Debug_EnableWatching" />
      </node>
      <node concept="tCFHf" id="aucBW5SZWs" role="ftvYc">
        <ref role="tCJdB" node="3DiEZ8TMy35" resolve="Debug_DisableWatching" />
      </node>
      <node concept="tCFHf" id="aucBW5SZW$" role="ftvYc">
        <ref role="tCJdB" node="3DiEZ8TIFei" resolve="Debug_WatchPort" />
      </node>
      <node concept="tCFHf" id="aucBW5SZWI" role="ftvYc">
        <ref role="tCJdB" node="5PjcHHGf0WD" resolve="Debug_UnwatchPort" />
      </node>
      <node concept="tCFHf" id="aucBW5SZWU" role="ftvYc">
        <ref role="tCJdB" node="1S4cYrOQS5C" resolve="Debug_WatchFB" />
      </node>
      <node concept="tCFHf" id="aucBW5SZX8" role="ftvYc">
        <ref role="tCJdB" node="1S4cYrOLGlI" resolve="Debug_UnwatchFB" />
      </node>
      <node concept="tCFHf" id="aucBW5SZXo" role="ftvYc">
        <ref role="tCJdB" node="5PjcHHGf4rU" resolve="Debug_WatchECCState" />
      </node>
      <node concept="tCFHf" id="aucBW5SZXE" role="ftvYc">
        <ref role="tCJdB" node="5PjcHHGgRM$" resolve="Debug_UnwatchECCState" />
      </node>
      <node concept="tCFHf" id="aucBW5SZXY" role="ftvYc">
        <ref role="tCJdB" node="6kcQr5wzriX" resolve="Debug_WatchSelectedFBs" />
      </node>
      <node concept="tCFHf" id="aucBW5SZYk" role="ftvYc">
        <ref role="tCJdB" node="6kcQr5w_Vl4" resolve="Debug_UnwatchSelectedFBs" />
      </node>
      <node concept="1X3_iC" id="7TPxhsI2lWN" role="lGtFl">
        <property role="3V$3am" value="reference" />
        <property role="3V$3ak" value="28f9e497-3b42-4291-aeba-0a1039153ab1/1207145163717/1207145201301" />
        <node concept="tCFHf" id="45FpMYiNXPx" role="8Wnug">
          <ref role="tCJdB" node="44qSI5$V0ef" resolve="DeployResource" />
        </node>
      </node>
      <node concept="1X3_iC" id="7TPxhsI2lX2" role="lGtFl">
        <property role="3V$3am" value="reference" />
        <property role="3V$3ak" value="28f9e497-3b42-4291-aeba-0a1039153ab1/1207145163717/1207145201301" />
        <node concept="tCFHf" id="3nYvV6wb5v2" role="8Wnug">
          <ref role="tCJdB" node="1UPrnlC93lw" resolve="StopResource" />
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="5XK6zxB$xyX">
    <property role="TrG5h" value="SimulateExecution" />
    <property role="2uzpH1" value="Execute in Simulator" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="1DS2jV" id="5IF$9ECXGXB" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="5IF$9ECXGXC" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6V1xIBUmlNY" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="6V1xIBUmlNZ" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6V1xIBUmlO0" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6V1xIBUmlO1" role="1oa70y" />
    </node>
    <node concept="tnohg" id="5XK6zxB$xyY" role="tncku">
      <node concept="3clFbS" id="5XK6zxB$xyZ" role="2VODD2">
        <node concept="3cpWs8" id="2B825595reY" role="3cqZAp">
          <node concept="3cpWsn" id="2B825595rf1" role="3cpWs9">
            <property role="TrG5h" value="debuggerTool" />
            <node concept="1xUVSX" id="2B825595reW" role="1tU5fm">
              <ref role="1xYkEM" node="10LywHcMGPf" resolve="Debugger" />
            </node>
            <node concept="2OqwBi" id="2B825595t0R" role="33vP2m">
              <node concept="2OqwBi" id="2B825595rGe" role="2Oq$k0">
                <node concept="2WthIp" id="2B825595rsT" role="2Oq$k0" />
                <node concept="1DTwFV" id="2B825595saE" role="2OqNvi">
                  <ref role="2WH_rO" node="6V1xIBUmlNY" resolve="project" />
                </node>
              </node>
              <node concept="LR4U6" id="2B825595tTh" role="2OqNvi">
                <ref role="LR4U5" node="10LywHcMGPf" resolve="Debugger" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2B82559iNrU" role="3cqZAp" />
        <node concept="3cpWs8" id="uP0FLzO7Ei" role="3cqZAp">
          <node concept="3cpWsn" id="uP0FLzO7Ej" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="uP0FLzO7Ek" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="uP0FLzO7El" role="33vP2m">
              <node concept="2OqwBi" id="uP0FLzO7Em" role="2Oq$k0">
                <node concept="2WthIp" id="uP0FLzO7En" role="2Oq$k0" />
                <node concept="1DTwFV" id="uP0FLzO7Eo" role="2OqNvi">
                  <ref role="2WH_rO" node="5IF$9ECXGXB" resolve="cell" />
                </node>
              </node>
              <node concept="liA8E" id="uP0FLzO7Ep" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2jViL$fE3i7" role="3cqZAp" />
        <node concept="3cpWs8" id="2jViL$fDYSl" role="3cqZAp">
          <node concept="3cpWsn" id="2jViL$fDYSm" role="3cpWs9">
            <property role="TrG5h" value="typeDeclaration" />
            <node concept="3uibUv" id="2jViL$fDYSn" role="1tU5fm">
              <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
            </node>
            <node concept="10Nm6u" id="2jViL$fEdU1" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="2jViL$fE1Xl" role="3cqZAp">
          <node concept="3cpWsn" id="2jViL$fE1Xm" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <node concept="3uibUv" id="2jViL$fE1Xn" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
            </node>
            <node concept="2OqwBi" id="2jViL$fE1Xo" role="33vP2m">
              <node concept="37vLTw" id="2jViL$fE1Xp" role="2Oq$k0">
                <ref role="3cqZAo" node="uP0FLzO7Ej" resolve="style" />
              </node>
              <node concept="liA8E" id="2jViL$fE1Xq" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="2jViL$fE1Xr" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2jViL$fE1Xs" role="3cqZAp">
          <node concept="3clFbS" id="2jViL$fE1Xt" role="3clFbx">
            <node concept="3cpWs8" id="2jViL$fE1Xa" role="3cqZAp">
              <node concept="3cpWsn" id="2jViL$fE1Xb" role="3cpWs9">
                <property role="TrG5h" value="network" />
                <node concept="3uibUv" id="2jViL$fE1Xc" role="1tU5fm">
                  <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
                </node>
                <node concept="2OqwBi" id="2jViL$fE1Xd" role="33vP2m">
                  <node concept="37vLTw" id="2jViL$fE1Xe" role="2Oq$k0">
                    <ref role="3cqZAo" node="uP0FLzO7Ej" resolve="style" />
                  </node>
                  <node concept="liA8E" id="2jViL$fE1Xf" role="2OqNvi">
                    <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                    <node concept="10M0yZ" id="2jViL$fE1Xg" role="37wK5m">
                      <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                      <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK" resolve="NETWORK" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2jViL$fE1Xu" role="3cqZAp">
              <node concept="3cpWsn" id="2jViL$fE1Xv" role="3cpWs9">
                <property role="TrG5h" value="parentDeclaration" />
                <node concept="3uibUv" id="2jViL$fE1Xw" role="1tU5fm">
                  <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
                </node>
                <node concept="10Nm6u" id="5DMZE1m6u_f" role="33vP2m" />
              </node>
            </node>
            <node concept="3clFbJ" id="1WHrpR0PaP6" role="3cqZAp">
              <node concept="3clFbS" id="1WHrpR0PaP8" role="3clFbx">
                <node concept="3clFbF" id="5DMZE1m6uUn" role="3cqZAp">
                  <node concept="37vLTI" id="5DMZE1m6vhp" role="3clFbG">
                    <node concept="37vLTw" id="5DMZE1m6uUl" role="37vLTJ">
                      <ref role="3cqZAo" node="2jViL$fE1Xv" resolve="parentDeclaration" />
                    </node>
                    <node concept="0kSF2" id="2jViL$fE1Xx" role="37vLTx">
                      <node concept="3uibUv" id="2jViL$fE1Xy" role="0kSFW">
                        <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
                      </node>
                      <node concept="2OqwBi" id="2jViL$fE1Xz" role="0kSFX">
                        <node concept="37vLTw" id="2jViL$fE1X$" role="2Oq$k0">
                          <ref role="3cqZAo" node="2jViL$fE1Xb" resolve="network" />
                        </node>
                        <node concept="liA8E" id="2jViL$fE1X_" role="2OqNvi">
                          <ref role="37wK5l" to="7adg:~Element.getContainer()" resolve="getContainer" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7MfEBAxhc5P" role="3cqZAp">
                  <node concept="3clFbS" id="7MfEBAxhc5R" role="3clFbx">
                    <node concept="3clFbF" id="7MfEBAxhccU" role="3cqZAp">
                      <node concept="37vLTI" id="7MfEBAxhccV" role="3clFbG">
                        <node concept="37vLTw" id="7MfEBAxhccW" role="37vLTx">
                          <ref role="3cqZAo" node="2jViL$fE1Xv" resolve="parentDeclaration" />
                        </node>
                        <node concept="37vLTw" id="7MfEBAxhccX" role="37vLTJ">
                          <ref role="3cqZAo" node="2jViL$fDYSm" resolve="typeDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="7MfEBAxhc6X" role="3clFbw">
                    <node concept="3uibUv" id="7MfEBAxhc6Y" role="2ZW6by">
                      <ref role="3uigEE" to="cwd8:~FBTypeDeclaration" resolve="FBTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="7MfEBAxhc6Z" role="2ZW6bz">
                      <ref role="3cqZAo" node="2jViL$fE1Xv" resolve="parentDeclaration" />
                    </node>
                  </node>
                  <node concept="3eNFk2" id="7MfEBAxhcGx" role="3eNLev">
                    <node concept="3clFbS" id="7MfEBAxhcGz" role="3eOfB_">
                      <node concept="3clFbF" id="7MfEBAxhhyT" role="3cqZAp">
                        <node concept="37vLTI" id="7MfEBAxhhyU" role="3clFbG">
                          <node concept="37vLTw" id="7MfEBAxhhyV" role="37vLTx">
                            <ref role="3cqZAo" node="2jViL$fE1Xv" resolve="parentDeclaration" />
                          </node>
                          <node concept="37vLTw" id="7MfEBAxhhyW" role="37vLTJ">
                            <ref role="3cqZAo" node="2jViL$fDYSm" resolve="typeDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2ZW3vV" id="7MfEBAxhcLd" role="3eO9$A">
                      <node concept="3uibUv" id="7MfEBAxhcLe" role="2ZW6by">
                        <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
                      </node>
                      <node concept="37vLTw" id="7MfEBAxhcLf" role="2ZW6bz">
                        <ref role="3cqZAo" node="2jViL$fE1Xv" resolve="parentDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="1WHrpR0Pbkr" role="3clFbw">
                <node concept="10Nm6u" id="1WHrpR0Pbrk" role="3uHU7w" />
                <node concept="37vLTw" id="1WHrpR0Pb0o" role="3uHU7B">
                  <ref role="3cqZAo" node="2jViL$fE1Xb" resolve="network" />
                </node>
              </node>
              <node concept="9aQIb" id="5DMZE1m6uas" role="9aQIa">
                <node concept="3clFbS" id="5DMZE1m6uat" role="9aQI4">
                  <node concept="3cpWs8" id="1WHrpR0Pb_9" role="3cqZAp">
                    <node concept="3cpWsn" id="1WHrpR0Pb_a" role="3cpWs9">
                      <property role="TrG5h" value="ecc" />
                      <node concept="3uibUv" id="1WHrpR0Pb_b" role="1tU5fm">
                        <ref role="3uigEE" to="lv7i:5jb5jNC4n69" resolve="ECCByNode" />
                      </node>
                      <node concept="0kSF2" id="1WHrpR0Pb_c" role="33vP2m">
                        <node concept="3uibUv" id="1WHrpR0Pb_d" role="0kSFW">
                          <ref role="3uigEE" to="lv7i:5jb5jNC4n69" resolve="ECCByNode" />
                        </node>
                        <node concept="2OqwBi" id="1WHrpR0Pb_e" role="0kSFX">
                          <node concept="37vLTw" id="1WHrpR0Pb_f" role="2Oq$k0">
                            <ref role="3cqZAo" node="uP0FLzO7Ej" resolve="style" />
                          </node>
                          <node concept="liA8E" id="1WHrpR0Pb_g" role="2OqNvi">
                            <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                            <node concept="10M0yZ" id="7W8q3dTNafu" role="37wK5m">
                              <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                              <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.ECC" resolve="ECC" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1WHrpR0Pb_i" role="3cqZAp">
                    <node concept="3clFbS" id="1WHrpR0Pb_j" role="3clFbx">
                      <node concept="3clFbF" id="1WHrpR0Pb_k" role="3cqZAp">
                        <node concept="37vLTI" id="1WHrpR0Pb_l" role="3clFbG">
                          <node concept="2OqwBi" id="1WHrpR0Pb_m" role="37vLTx">
                            <node concept="37vLTw" id="1WHrpR0Pb_n" role="2Oq$k0">
                              <ref role="3cqZAo" node="1WHrpR0Pb_a" resolve="ecc" />
                            </node>
                            <node concept="liA8E" id="1WHrpR0Pb_o" role="2OqNvi">
                              <ref role="37wK5l" to="lv7i:6bsr$eapWdC" resolve="getContainer" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="1WHrpR0Pb_p" role="37vLTJ">
                            <ref role="3cqZAo" node="2jViL$fE1Xv" resolve="parentDeclaration" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="1WHrpR0Pb_q" role="3cqZAp">
                        <node concept="3clFbS" id="1WHrpR0Pb_r" role="3clFbx">
                          <node concept="3clFbF" id="1WHrpR0PbI7" role="3cqZAp">
                            <node concept="37vLTI" id="1WHrpR0PbI8" role="3clFbG">
                              <node concept="37vLTw" id="1WHrpR0PbI9" role="37vLTx">
                                <ref role="3cqZAo" node="2jViL$fE1Xv" resolve="parentDeclaration" />
                              </node>
                              <node concept="37vLTw" id="1WHrpR0PbIa" role="37vLTJ">
                                <ref role="3cqZAo" node="2jViL$fDYSm" resolve="typeDeclaration" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="1WHrpR0Pb_w" role="3clFbw">
                          <node concept="10Nm6u" id="1WHrpR0Pb_x" role="3uHU7w" />
                          <node concept="37vLTw" id="1WHrpR0Pb_y" role="3uHU7B">
                            <ref role="3cqZAo" node="2jViL$fE1Xv" resolve="parentDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="1WHrpR0Pb_z" role="3clFbw">
                      <node concept="10Nm6u" id="1WHrpR0Pb_$" role="3uHU7w" />
                      <node concept="37vLTw" id="1WHrpR0Pb__" role="3uHU7B">
                        <ref role="3cqZAo" node="1WHrpR0Pb_a" resolve="ecc" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2jViL$fE1XJ" role="3clFbw">
            <node concept="10Nm6u" id="2jViL$fE1XK" role="3uHU7w" />
            <node concept="37vLTw" id="2jViL$fE1XL" role="3uHU7B">
              <ref role="3cqZAo" node="2jViL$fE1Xm" resolve="fb" />
            </node>
          </node>
          <node concept="9aQIb" id="2jViL$fE1XM" role="9aQIa">
            <node concept="3clFbS" id="2jViL$fE1XN" role="9aQI4">
              <node concept="3clFbF" id="2jViL$fE6bw" role="3cqZAp">
                <node concept="37vLTI" id="2jViL$fE6yp" role="3clFbG">
                  <node concept="2OqwBi" id="2jViL$fE7Y4" role="37vLTx">
                    <node concept="2OqwBi" id="2jViL$fE6Qa" role="2Oq$k0">
                      <node concept="37vLTw" id="2jViL$fE6CJ" role="2Oq$k0">
                        <ref role="3cqZAo" node="2jViL$fE1Xm" resolve="fb" />
                      </node>
                      <node concept="liA8E" id="2jViL$fE7SV" role="2OqNvi">
                        <ref role="37wK5l" to="g27j:~FunctionBlockDeclarationBase.getType()" resolve="getType" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2jViL$fE8a7" role="2OqNvi">
                      <ref role="37wK5l" to="ntnl:~FBTypeDescriptor.getDeclaration()" resolve="getDeclaration" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="2jViL$fE6br" role="37vLTJ">
                    <ref role="3cqZAo" node="2jViL$fDYSm" resolve="typeDeclaration" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2J6pdcX4Ky9" role="3cqZAp">
          <node concept="3cpWsn" id="2J6pdcX4Kya" role="3cpWs9">
            <property role="TrG5h" value="snapshot" />
            <node concept="3uibUv" id="2J6pdcX4qkF" role="1tU5fm">
              <ref role="3uigEE" to="672w:~DeclarationSnapshot" resolve="DeclarationSnapshot" />
            </node>
            <node concept="2YIFZM" id="4nc9aeLv0vg" role="33vP2m">
              <ref role="37wK5l" to="672w:~DeclarationSnapshot.create(org.fbme.lib.common.Declaration)" resolve="create" />
              <ref role="1Pybhc" to="672w:~DeclarationSnapshot" resolve="DeclarationSnapshot" />
              <node concept="37vLTw" id="4nc9aeLv0vh" role="37wK5m">
                <ref role="3cqZAo" node="2jViL$fDYSm" resolve="typeDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2jViL$fEgBl" role="3cqZAp">
          <node concept="3cpWsn" id="2jViL$fEgBm" role="3cpWs9">
            <property role="TrG5h" value="snapshotDeclaration" />
            <node concept="3uibUv" id="2jViL$fEgBn" role="1tU5fm">
              <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
            </node>
            <node concept="2OqwBi" id="4nc9aeLv4De" role="33vP2m">
              <node concept="37vLTw" id="4nc9aeLv4cX" role="2Oq$k0">
                <ref role="3cqZAo" node="2J6pdcX4Kya" resolve="snapshot" />
              </node>
              <node concept="liA8E" id="4nc9aeLv515" role="2OqNvi">
                <ref role="37wK5l" to="672w:~DeclarationSnapshot.getSnapshotDeclaration()" resolve="getSnapshotDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2B82559iVyt" role="3cqZAp">
          <node concept="3cpWsn" id="2B82559iVyu" role="3cpWs9">
            <property role="TrG5h" value="typeName" />
            <node concept="3uibUv" id="2B82559iVyv" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="2B82559iW72" role="33vP2m">
              <node concept="37vLTw" id="2B82559iVP6" role="2Oq$k0">
                <ref role="3cqZAo" node="2jViL$fEgBm" resolve="snapshotDeclaration" />
              </node>
              <node concept="liA8E" id="2jViL$fEjUt" role="2OqNvi">
                <ref role="37wK5l" to="7adg:~Declaration.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2B82559iXQv" role="3cqZAp" />
        <node concept="3cpWs8" id="2B82559j4wX" role="3cqZAp">
          <node concept="3cpWsn" id="2B82559j4wY" role="3cpWs9">
            <property role="TrG5h" value="simulatorPanelComponent" />
            <node concept="3uibUv" id="2B82559j4wZ" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
            </node>
            <node concept="10Nm6u" id="2B82559je3N" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="2B82559j3gP" role="3cqZAp" />
        <node concept="3clFbJ" id="2B82559i9J2" role="3cqZAp">
          <node concept="3clFbS" id="2B82559i9J4" role="3clFbx">
            <node concept="3cpWs8" id="2B82559izLy" role="3cqZAp">
              <node concept="3cpWsn" id="2B82559izLz" role="3cpWs9">
                <property role="TrG5h" value="basicFBTypeDeclaration" />
                <node concept="3uibUv" id="2B82559imk3" role="1tU5fm">
                  <ref role="3uigEE" to="cwd8:~BasicFBTypeDeclaration" resolve="BasicFBTypeDeclaration" />
                </node>
                <node concept="0kSF2" id="2B82559izL$" role="33vP2m">
                  <node concept="3uibUv" id="2B82559izL_" role="0kSFW">
                    <ref role="3uigEE" to="cwd8:~BasicFBTypeDeclaration" resolve="BasicFBTypeDeclaration" />
                  </node>
                  <node concept="37vLTw" id="2B82559izLA" role="0kSFX">
                    <ref role="3cqZAo" node="2jViL$fEgBm" resolve="snapshotDeclaration" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2B82559ivuQ" role="3cqZAp">
              <node concept="3cpWsn" id="2B82559ivuR" role="3cpWs9">
                <property role="TrG5h" value="simulator" />
                <node concept="3uibUv" id="2B82559ivuS" role="1tU5fm">
                  <ref role="3uigEE" to="80uf:~BasicFBSimulator" resolve="BasicFBSimulator" />
                </node>
                <node concept="2ShNRf" id="2B82559ivxH" role="33vP2m">
                  <node concept="1pGfFk" id="2B82559iynm" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="80uf:~BasicFBSimulator.&lt;init&gt;(org.fbme.lib.iec61499.declarations.BasicFBTypeDeclaration)" resolve="BasicFBSimulator" />
                    <node concept="37vLTw" id="2B82559izLC" role="37wK5m">
                      <ref role="3cqZAo" node="2B82559izLz" resolve="basicFBTypeDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2B82559ipXF" role="3cqZAp">
              <node concept="3cpWsn" id="2B82559ipXG" role="3cpWs9">
                <property role="TrG5h" value="trace" />
                <node concept="3uibUv" id="2B82559ipXH" role="1tU5fm">
                  <ref role="3uigEE" to="m3bz:~ExecutionTrace" resolve="ExecutionTrace" />
                </node>
                <node concept="2OqwBi" id="6GRoqVttjaC" role="33vP2m">
                  <node concept="37vLTw" id="6GRoqVttiFx" role="2Oq$k0">
                    <ref role="3cqZAo" node="2B82559ivuR" resolve="simulator" />
                  </node>
                  <node concept="liA8E" id="6GRoqVttjLi" role="2OqNvi">
                    <ref role="37wK5l" to="80uf:~Simulator.getTrace()" resolve="getTrace" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="ZL2uO6yoBR" role="3cqZAp">
              <node concept="3cpWsn" id="ZL2uO6yoBS" role="3cpWs9">
                <property role="TrG5h" value="explanationProducer" />
                <node concept="3uibUv" id="ZL2uO6yoBT" role="1tU5fm">
                  <ref role="3uigEE" to="89ek:~ExplanationProducer" resolve="ExplanationProducer" />
                </node>
                <node concept="2ShNRf" id="ZL2uO6yoJs" role="33vP2m">
                  <node concept="1pGfFk" id="ZL2uO6yrDT" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="89ek:~ExplanationProducer.&lt;init&gt;(org.fbme.debugger.common.trace.ExecutionTrace,org.fbme.lib.common.Declaration)" resolve="ExplanationProducer" />
                    <node concept="37vLTw" id="ZL2uO6yrF2" role="37wK5m">
                      <ref role="3cqZAo" node="2B82559ipXG" resolve="trace" />
                    </node>
                    <node concept="37vLTw" id="ZL2uO6yrHo" role="37wK5m">
                      <ref role="3cqZAo" node="2B82559izLz" resolve="basicFBTypeDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="ZL2uO6ysS2" role="3cqZAp">
              <node concept="3cpWsn" id="ZL2uO6ysS3" role="3cpWs9">
                <property role="TrG5h" value="simulatorPanel" />
                <node concept="3uibUv" id="ZL2uO6ysS4" role="1tU5fm">
                  <ref role="3uigEE" to="b15n:~SimulatorPanel" resolve="SimulatorPanel" />
                </node>
                <node concept="2ShNRf" id="ZL2uO6yt07" role="33vP2m">
                  <node concept="1pGfFk" id="ZL2uO6yuWA" role="2ShVmc">
                    <property role="373rjd" value="true" />
                    <ref role="37wK5l" to="b15n:~SimulatorPanel.&lt;init&gt;(com.intellij.openapi.project.Project,jetbrains.mps.project.Project,org.fbme.debugger.common.trace.ExecutionTrace,org.fbme.lib.common.Declaration,org.fbme.lib.common.Declaration,org.fbme.debugger.simulator.Simulator,org.fbme.debugger.explanation.ExplanationProducer,org.fbme.ide.richediting.inspections.Inspector)" resolve="SimulatorPanel" />
                    <node concept="2OqwBi" id="ZL2uO6yuY0" role="37wK5m">
                      <node concept="2WthIp" id="ZL2uO6yuY3" role="2Oq$k0" />
                      <node concept="1DTwFV" id="ZL2uO6yuY5" role="2OqNvi">
                        <ref role="2WH_rO" node="6V1xIBUmlNY" resolve="project" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="7O51BCbwakA" role="37wK5m">
                      <node concept="2WthIp" id="7O51BCbwakD" role="2Oq$k0" />
                      <node concept="1DTwFV" id="7O51BCbwakF" role="2OqNvi">
                        <ref role="2WH_rO" node="6V1xIBUmlO0" resolve="mpsProject" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="ZL2uO6yv2h" role="37wK5m">
                      <ref role="3cqZAo" node="2B82559ipXG" resolve="trace" />
                    </node>
                    <node concept="37vLTw" id="ZL2uO6yvj6" role="37wK5m">
                      <ref role="3cqZAo" node="2B82559izLz" resolve="basicFBTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="76fFiPktijT" role="37wK5m">
                      <ref role="3cqZAo" node="2jViL$fDYSm" resolve="typeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="ZL2uO6yvv6" role="37wK5m">
                      <ref role="3cqZAo" node="2B82559ivuR" resolve="simulator" />
                    </node>
                    <node concept="37vLTw" id="ZL2uO6yvXW" role="37wK5m">
                      <ref role="3cqZAo" node="ZL2uO6yoBS" resolve="explanationProducer" />
                    </node>
                    <node concept="10Nm6u" id="2YJdAbwhBXT" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="2B82559j5l4" role="3cqZAp">
              <node concept="37vLTI" id="2B82559j5D_" role="3clFbG">
                <node concept="2OqwBi" id="2B82559j5So" role="37vLTx">
                  <node concept="37vLTw" id="2B82559j5Ll" role="2Oq$k0">
                    <ref role="3cqZAo" node="ZL2uO6ysS3" resolve="simulatorPanel" />
                  </node>
                  <node concept="liA8E" id="2B82559j66o" role="2OqNvi">
                    <ref role="37wK5l" to="7zqy:~DebuggerPanel.getToolWindowPanel()" resolve="getToolWindowPanel" />
                  </node>
                </node>
                <node concept="37vLTw" id="2B82559j5l2" role="37vLTJ">
                  <ref role="3cqZAo" node="2B82559j4wY" resolve="simulatorPanelComponent" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2ZW3vV" id="2B82559iaFB" role="3clFbw">
            <node concept="3uibUv" id="2B82559ibbO" role="2ZW6by">
              <ref role="3uigEE" to="cwd8:~BasicFBTypeDeclaration" resolve="BasicFBTypeDeclaration" />
            </node>
            <node concept="37vLTw" id="2B82559i9W2" role="2ZW6bz">
              <ref role="3cqZAo" node="2jViL$fEgBm" resolve="snapshotDeclaration" />
            </node>
          </node>
          <node concept="3eNFk2" id="2B82559ibdM" role="3eNLev">
            <node concept="2ZW3vV" id="2B82559ibSH" role="3eO9$A">
              <node concept="3uibUv" id="2B82559ickG" role="2ZW6by">
                <ref role="3uigEE" to="cwd8:~CompositeFBTypeDeclaration" resolve="CompositeFBTypeDeclaration" />
              </node>
              <node concept="37vLTw" id="2B82559ibgC" role="2ZW6bz">
                <ref role="3cqZAo" node="2jViL$fEgBm" resolve="snapshotDeclaration" />
              </node>
            </node>
            <node concept="3clFbS" id="2B82559ibdO" role="3eOfB_">
              <node concept="3cpWs8" id="2B82559iBHp" role="3cqZAp">
                <node concept="3cpWsn" id="2B82559iBHq" role="3cpWs9">
                  <property role="TrG5h" value="compositeFBTypeDeclaration" />
                  <node concept="3uibUv" id="2B82559ioPP" role="1tU5fm">
                    <ref role="3uigEE" to="cwd8:~CompositeFBTypeDeclaration" resolve="CompositeFBTypeDeclaration" />
                  </node>
                  <node concept="0kSF2" id="2B82559iBHr" role="33vP2m">
                    <node concept="3uibUv" id="2B82559iBHs" role="0kSFW">
                      <ref role="3uigEE" to="cwd8:~CompositeFBTypeDeclaration" resolve="CompositeFBTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="2B82559iBHt" role="0kSFX">
                      <ref role="3cqZAo" node="2jViL$fEgBm" resolve="snapshotDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="2B82559i$N6" role="3cqZAp">
                <node concept="3cpWsn" id="2B82559i$N7" role="3cpWs9">
                  <property role="TrG5h" value="simulator" />
                  <node concept="3uibUv" id="2B82559i$N8" role="1tU5fm">
                    <ref role="3uigEE" to="80uf:~CompositeFBSimulator" resolve="CompositeFBSimulator" />
                  </node>
                  <node concept="2ShNRf" id="2B82559i$Pf" role="33vP2m">
                    <node concept="1pGfFk" id="2B82559iBES" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="80uf:~CompositeFBSimulator.&lt;init&gt;(org.fbme.lib.iec61499.declarations.CompositeFBTypeDeclaration)" resolve="CompositeFBSimulator" />
                      <node concept="37vLTw" id="2B82559iBGR" role="37wK5m">
                        <ref role="3cqZAo" node="2B82559iBHq" resolve="compositeFBTypeDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="2B82559isOB" role="3cqZAp">
                <node concept="3cpWsn" id="2B82559isOC" role="3cpWs9">
                  <property role="TrG5h" value="trace" />
                  <node concept="3uibUv" id="2B82559isOD" role="1tU5fm">
                    <ref role="3uigEE" to="m3bz:~ExecutionTrace" resolve="ExecutionTrace" />
                  </node>
                  <node concept="2OqwBi" id="6GRoqVttpsh" role="33vP2m">
                    <node concept="37vLTw" id="6GRoqVttnzD" role="2Oq$k0">
                      <ref role="3cqZAo" node="2B82559i$N7" resolve="simulator" />
                    </node>
                    <node concept="liA8E" id="6GRoqVttqmL" role="2OqNvi">
                      <ref role="37wK5l" to="80uf:~Simulator.getTrace()" resolve="getTrace" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="ZL2uO6ywGM" role="3cqZAp">
                <node concept="3cpWsn" id="ZL2uO6ywGN" role="3cpWs9">
                  <property role="TrG5h" value="explanationProducer" />
                  <node concept="3uibUv" id="ZL2uO6ywGO" role="1tU5fm">
                    <ref role="3uigEE" to="89ek:~ExplanationProducer" resolve="ExplanationProducer" />
                  </node>
                  <node concept="2ShNRf" id="ZL2uO6ywGP" role="33vP2m">
                    <node concept="1pGfFk" id="ZL2uO6ywGQ" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="89ek:~ExplanationProducer.&lt;init&gt;(org.fbme.debugger.common.trace.ExecutionTrace,org.fbme.lib.common.Declaration)" resolve="ExplanationProducer" />
                      <node concept="37vLTw" id="ZL2uO6ywGR" role="37wK5m">
                        <ref role="3cqZAo" node="2B82559isOC" resolve="trace" />
                      </node>
                      <node concept="37vLTw" id="ZL2uO6ywGS" role="37wK5m">
                        <ref role="3cqZAo" node="2B82559iBHq" resolve="compositeFBTypeDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="2YJdAbwhD24" role="3cqZAp">
                <node concept="3cpWsn" id="2YJdAbwhD25" role="3cpWs9">
                  <property role="TrG5h" value="manager" />
                  <node concept="3uibUv" id="2YJdAbwhD26" role="1tU5fm">
                    <ref role="3uigEE" to="ek6x:~InspectionManager" resolve="InspectionManager" />
                  </node>
                  <node concept="2YIFZM" id="2YJdAbwhD27" role="33vP2m">
                    <ref role="37wK5l" to="ek6x:~InspectionManagerImpl.getInstance(jetbrains.mps.openapi.editor.EditorComponent)" resolve="getInstance" />
                    <ref role="1Pybhc" to="ek6x:~InspectionManagerImpl" resolve="InspectionManagerImpl" />
                    <node concept="2OqwBi" id="2YJdAbwhD28" role="37wK5m">
                      <node concept="liA8E" id="2YJdAbwhD29" role="2OqNvi">
                        <ref role="37wK5l" to="f4zo:~EditorCell.getEditorComponent()" resolve="getEditorComponent" />
                      </node>
                      <node concept="2OqwBi" id="2YJdAbwhD2a" role="2Oq$k0">
                        <node concept="2WthIp" id="2YJdAbwhD2b" role="2Oq$k0" />
                        <node concept="1DTwFV" id="2YJdAbwhD2c" role="2OqNvi">
                          <ref role="2WH_rO" node="5IF$9ECXGXB" resolve="cell" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="2YJdAbwhD2d" role="3cqZAp">
                <node concept="3cpWsn" id="2YJdAbwhD2e" role="3cpWs9">
                  <property role="TrG5h" value="networkInstance" />
                  <node concept="3uibUv" id="2YJdAbwhD2f" role="1tU5fm">
                    <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
                  </node>
                  <node concept="2OqwBi" id="2YJdAbwhD2g" role="33vP2m">
                    <node concept="2OqwBi" id="2YJdAbwhD2h" role="2Oq$k0">
                      <node concept="2OqwBi" id="2YJdAbwhD2i" role="2Oq$k0">
                        <node concept="2WthIp" id="2YJdAbwhD2j" role="2Oq$k0" />
                        <node concept="1DTwFV" id="2YJdAbwhD2k" role="2OqNvi">
                          <ref role="2WH_rO" node="5IF$9ECXGXB" resolve="cell" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2YJdAbwhD2l" role="2OqNvi">
                        <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2YJdAbwhD2m" role="2OqNvi">
                      <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                      <node concept="10M0yZ" id="2YJdAbwhD2n" role="37wK5m">
                        <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK_INSTANCE" resolve="NETWORK_INSTANCE" />
                        <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="2YJdAbwhD2o" role="3cqZAp">
                <node concept="3cpWsn" id="2YJdAbwhD2p" role="3cpWs9">
                  <property role="TrG5h" value="inspector" />
                  <node concept="3uibUv" id="2YJdAbwhD2q" role="1tU5fm">
                    <ref role="3uigEE" to="ek6x:~NetworkInspector" resolve="NetworkInspector" />
                  </node>
                  <node concept="2OqwBi" id="2YJdAbwhD2r" role="33vP2m">
                    <node concept="37vLTw" id="2YJdAbwhD2s" role="2Oq$k0">
                      <ref role="3cqZAo" node="2YJdAbwhD25" resolve="manager" />
                    </node>
                    <node concept="liA8E" id="2YJdAbwhD2t" role="2OqNvi">
                      <ref role="37wK5l" to="ek6x:~InspectionManager.installInspector(org.fbme.lib.iec61499.instances.NetworkInstance,java.lang.Runnable)" resolve="installInspector" />
                      <node concept="37vLTw" id="2YJdAbwhD2u" role="37wK5m">
                        <ref role="3cqZAo" node="2YJdAbwhD2e" resolve="networkInstance" />
                      </node>
                      <node concept="1bVj0M" id="2YJdAbwhD2v" role="37wK5m">
                        <node concept="3clFbS" id="2YJdAbwhD2w" role="1bW5cS" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="ZL2uO6ywGT" role="3cqZAp">
                <node concept="3cpWsn" id="ZL2uO6ywGU" role="3cpWs9">
                  <property role="TrG5h" value="simulatorPanel" />
                  <node concept="3uibUv" id="ZL2uO6ywGV" role="1tU5fm">
                    <ref role="3uigEE" to="b15n:~SimulatorPanel" resolve="SimulatorPanel" />
                  </node>
                  <node concept="2ShNRf" id="ZL2uO6ywGW" role="33vP2m">
                    <node concept="1pGfFk" id="ZL2uO6ywGX" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="b15n:~SimulatorPanel.&lt;init&gt;(com.intellij.openapi.project.Project,jetbrains.mps.project.Project,org.fbme.debugger.common.trace.ExecutionTrace,org.fbme.lib.common.Declaration,org.fbme.lib.common.Declaration,org.fbme.debugger.simulator.Simulator,org.fbme.debugger.explanation.ExplanationProducer,org.fbme.ide.richediting.inspections.Inspector)" resolve="SimulatorPanel" />
                      <node concept="2OqwBi" id="ZL2uO6ywGY" role="37wK5m">
                        <node concept="2WthIp" id="ZL2uO6ywGZ" role="2Oq$k0" />
                        <node concept="1DTwFV" id="ZL2uO6ywH0" role="2OqNvi">
                          <ref role="2WH_rO" node="6V1xIBUmlNY" resolve="project" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7O51BCbwbxJ" role="37wK5m">
                        <node concept="2WthIp" id="7O51BCbwbxM" role="2Oq$k0" />
                        <node concept="1DTwFV" id="7O51BCbwbxO" role="2OqNvi">
                          <ref role="2WH_rO" node="6V1xIBUmlO0" resolve="mpsProject" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="ZL2uO6ywH1" role="37wK5m">
                        <ref role="3cqZAo" node="2B82559isOC" resolve="trace" />
                      </node>
                      <node concept="37vLTw" id="ZL2uO6ywH2" role="37wK5m">
                        <ref role="3cqZAo" node="2B82559iBHq" resolve="compositeFBTypeDeclaration" />
                      </node>
                      <node concept="37vLTw" id="76fFiPktjha" role="37wK5m">
                        <ref role="3cqZAo" node="2jViL$fDYSm" resolve="typeDeclaration" />
                      </node>
                      <node concept="37vLTw" id="ZL2uO6ywH3" role="37wK5m">
                        <ref role="3cqZAo" node="2B82559i$N7" resolve="simulator" />
                      </node>
                      <node concept="37vLTw" id="ZL2uO6ywH4" role="37wK5m">
                        <ref role="3cqZAo" node="ZL2uO6ywGN" resolve="explanationProducer" />
                      </node>
                      <node concept="37vLTw" id="2YJdAbwhQKG" role="37wK5m">
                        <ref role="3cqZAo" node="2YJdAbwhD2p" resolve="inspector" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="ZL2uO6ywH5" role="3cqZAp">
                <node concept="37vLTI" id="ZL2uO6ywH6" role="3clFbG">
                  <node concept="2OqwBi" id="ZL2uO6ywH7" role="37vLTx">
                    <node concept="37vLTw" id="ZL2uO6ywH8" role="2Oq$k0">
                      <ref role="3cqZAo" node="ZL2uO6ywGU" resolve="simulatorPanel" />
                    </node>
                    <node concept="liA8E" id="ZL2uO6ywH9" role="2OqNvi">
                      <ref role="37wK5l" to="7zqy:~DebuggerPanel.getToolWindowPanel()" resolve="getToolWindowPanel" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="ZL2uO6ywHa" role="37vLTJ">
                    <ref role="3cqZAo" node="2B82559j4wY" resolve="simulatorPanelComponent" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="7MfEBAxhhDr" role="3eNLev">
            <node concept="3clFbS" id="7MfEBAxhhDs" role="3eOfB_">
              <node concept="3cpWs8" id="7MfEBAxhj20" role="3cqZAp">
                <node concept="3cpWsn" id="7MfEBAxhj21" role="3cpWs9">
                  <property role="TrG5h" value="resourceDeclaration" />
                  <node concept="3uibUv" id="7MfEBAxhj22" role="1tU5fm">
                    <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
                  </node>
                  <node concept="0kSF2" id="7MfEBAxhj9q" role="33vP2m">
                    <node concept="3uibUv" id="7MfEBAxhj9t" role="0kSFW">
                      <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
                    </node>
                    <node concept="37vLTw" id="7MfEBAxhj4z" role="0kSFX">
                      <ref role="3cqZAo" node="2jViL$fEgBm" resolve="snapshotDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="cr4sro7Sp1" role="3cqZAp">
                <node concept="3cpWsn" id="cr4sro7Sp2" role="3cpWs9">
                  <property role="TrG5h" value="simulator" />
                  <node concept="3uibUv" id="cr4sro7Sp3" role="1tU5fm">
                    <ref role="3uigEE" to="80uf:~ResourceSimulator" resolve="ResourceSimulator" />
                  </node>
                  <node concept="2ShNRf" id="cr4sro7Sva" role="33vP2m">
                    <node concept="1pGfFk" id="cr4sro8qar" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="80uf:~ResourceSimulator.&lt;init&gt;(org.fbme.lib.iec61499.declarations.ResourceDeclaration)" resolve="ResourceSimulator" />
                      <node concept="37vLTw" id="cr4sro8qd9" role="37wK5m">
                        <ref role="3cqZAo" node="7MfEBAxhj21" resolve="resourceDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="3opgYSFggmF" role="3cqZAp">
                <node concept="3cpWsn" id="3opgYSFggmG" role="3cpWs9">
                  <property role="TrG5h" value="trace" />
                  <node concept="3uibUv" id="3opgYSFggmH" role="1tU5fm">
                    <ref role="3uigEE" to="m3bz:~ExecutionTrace" resolve="ExecutionTrace" />
                  </node>
                  <node concept="2OqwBi" id="6GRoqVttsU$" role="33vP2m">
                    <node concept="37vLTw" id="6GRoqVttsxr" role="2Oq$k0">
                      <ref role="3cqZAo" node="cr4sro7Sp2" resolve="simulator" />
                    </node>
                    <node concept="liA8E" id="6GRoqVtttrF" role="2OqNvi">
                      <ref role="37wK5l" to="80uf:~Simulator.getTrace()" resolve="getTrace" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="ZL2uO6yyzt" role="3cqZAp">
                <node concept="3cpWsn" id="ZL2uO6yyzu" role="3cpWs9">
                  <property role="TrG5h" value="explanationProducer" />
                  <node concept="3uibUv" id="ZL2uO6yyzv" role="1tU5fm">
                    <ref role="3uigEE" to="89ek:~ExplanationProducer" resolve="ExplanationProducer" />
                  </node>
                  <node concept="2ShNRf" id="ZL2uO6yyzw" role="33vP2m">
                    <node concept="1pGfFk" id="ZL2uO6yyzx" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="89ek:~ExplanationProducer.&lt;init&gt;(org.fbme.debugger.common.trace.ExecutionTrace,org.fbme.lib.common.Declaration)" resolve="ExplanationProducer" />
                      <node concept="37vLTw" id="ZL2uO6yyzy" role="37wK5m">
                        <ref role="3cqZAo" node="3opgYSFggmG" resolve="trace" />
                      </node>
                      <node concept="37vLTw" id="ZL2uO6yyzz" role="37wK5m">
                        <ref role="3cqZAo" node="7MfEBAxhj21" resolve="resourceDeclaration" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="2YJdAbwhRmo" role="3cqZAp">
                <node concept="3cpWsn" id="2YJdAbwhRmp" role="3cpWs9">
                  <property role="TrG5h" value="manager" />
                  <node concept="3uibUv" id="2YJdAbwhRmq" role="1tU5fm">
                    <ref role="3uigEE" to="ek6x:~InspectionManager" resolve="InspectionManager" />
                  </node>
                  <node concept="2YIFZM" id="2YJdAbwhRmr" role="33vP2m">
                    <ref role="37wK5l" to="ek6x:~InspectionManagerImpl.getInstance(jetbrains.mps.openapi.editor.EditorComponent)" resolve="getInstance" />
                    <ref role="1Pybhc" to="ek6x:~InspectionManagerImpl" resolve="InspectionManagerImpl" />
                    <node concept="2OqwBi" id="2YJdAbwhRms" role="37wK5m">
                      <node concept="liA8E" id="2YJdAbwhRmt" role="2OqNvi">
                        <ref role="37wK5l" to="f4zo:~EditorCell.getEditorComponent()" resolve="getEditorComponent" />
                      </node>
                      <node concept="2OqwBi" id="2YJdAbwhRmu" role="2Oq$k0">
                        <node concept="2WthIp" id="2YJdAbwhRmv" role="2Oq$k0" />
                        <node concept="1DTwFV" id="2YJdAbwhRmw" role="2OqNvi">
                          <ref role="2WH_rO" node="5IF$9ECXGXB" resolve="cell" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="2YJdAbwhRmx" role="3cqZAp">
                <node concept="3cpWsn" id="2YJdAbwhRmy" role="3cpWs9">
                  <property role="TrG5h" value="networkInstance" />
                  <node concept="3uibUv" id="2YJdAbwhRmz" role="1tU5fm">
                    <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
                  </node>
                  <node concept="2OqwBi" id="2YJdAbwhRm$" role="33vP2m">
                    <node concept="2OqwBi" id="2YJdAbwhRm_" role="2Oq$k0">
                      <node concept="2OqwBi" id="2YJdAbwhRmA" role="2Oq$k0">
                        <node concept="2WthIp" id="2YJdAbwhRmB" role="2Oq$k0" />
                        <node concept="1DTwFV" id="2YJdAbwhRmC" role="2OqNvi">
                          <ref role="2WH_rO" node="5IF$9ECXGXB" resolve="cell" />
                        </node>
                      </node>
                      <node concept="liA8E" id="2YJdAbwhRmD" role="2OqNvi">
                        <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2YJdAbwhRmE" role="2OqNvi">
                      <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                      <node concept="10M0yZ" id="2YJdAbwhRmF" role="37wK5m">
                        <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                        <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK_INSTANCE" resolve="NETWORK_INSTANCE" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="2YJdAbwhRmG" role="3cqZAp">
                <node concept="3cpWsn" id="2YJdAbwhRmH" role="3cpWs9">
                  <property role="TrG5h" value="inspector" />
                  <node concept="3uibUv" id="2YJdAbwhRmI" role="1tU5fm">
                    <ref role="3uigEE" to="ek6x:~NetworkInspector" resolve="NetworkInspector" />
                  </node>
                  <node concept="2OqwBi" id="2YJdAbwhRmJ" role="33vP2m">
                    <node concept="37vLTw" id="2YJdAbwhRmK" role="2Oq$k0">
                      <ref role="3cqZAo" node="2YJdAbwhRmp" resolve="manager" />
                    </node>
                    <node concept="liA8E" id="2YJdAbwhRmL" role="2OqNvi">
                      <ref role="37wK5l" to="ek6x:~InspectionManager.installInspector(org.fbme.lib.iec61499.instances.NetworkInstance,java.lang.Runnable)" resolve="installInspector" />
                      <node concept="37vLTw" id="2YJdAbwhRmM" role="37wK5m">
                        <ref role="3cqZAo" node="2YJdAbwhRmy" resolve="networkInstance" />
                      </node>
                      <node concept="1bVj0M" id="2YJdAbwhRmN" role="37wK5m">
                        <node concept="3clFbS" id="2YJdAbwhRmO" role="1bW5cS" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="ZL2uO6yyz$" role="3cqZAp">
                <node concept="3cpWsn" id="ZL2uO6yyz_" role="3cpWs9">
                  <property role="TrG5h" value="simulatorPanel" />
                  <node concept="3uibUv" id="ZL2uO6yyzA" role="1tU5fm">
                    <ref role="3uigEE" to="b15n:~SimulatorPanel" resolve="SimulatorPanel" />
                  </node>
                  <node concept="2ShNRf" id="ZL2uO6yyzB" role="33vP2m">
                    <node concept="1pGfFk" id="ZL2uO6yyzC" role="2ShVmc">
                      <property role="373rjd" value="true" />
                      <ref role="37wK5l" to="b15n:~SimulatorPanel.&lt;init&gt;(com.intellij.openapi.project.Project,jetbrains.mps.project.Project,org.fbme.debugger.common.trace.ExecutionTrace,org.fbme.lib.common.Declaration,org.fbme.lib.common.Declaration,org.fbme.debugger.simulator.Simulator,org.fbme.debugger.explanation.ExplanationProducer,org.fbme.ide.richediting.inspections.Inspector)" resolve="SimulatorPanel" />
                      <node concept="2OqwBi" id="ZL2uO6yyzD" role="37wK5m">
                        <node concept="2WthIp" id="ZL2uO6yyzE" role="2Oq$k0" />
                        <node concept="1DTwFV" id="ZL2uO6yyzF" role="2OqNvi">
                          <ref role="2WH_rO" node="6V1xIBUmlNY" resolve="project" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="7O51BCbwchT" role="37wK5m">
                        <node concept="2WthIp" id="7O51BCbwchW" role="2Oq$k0" />
                        <node concept="1DTwFV" id="7O51BCbwchY" role="2OqNvi">
                          <ref role="2WH_rO" node="6V1xIBUmlO0" resolve="mpsProject" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="ZL2uO6yyzG" role="37wK5m">
                        <ref role="3cqZAo" node="3opgYSFggmG" resolve="trace" />
                      </node>
                      <node concept="37vLTw" id="ZL2uO6yyzH" role="37wK5m">
                        <ref role="3cqZAo" node="7MfEBAxhj21" resolve="resourceDeclaration" />
                      </node>
                      <node concept="37vLTw" id="76fFiPktmaB" role="37wK5m">
                        <ref role="3cqZAo" node="2jViL$fDYSm" resolve="typeDeclaration" />
                      </node>
                      <node concept="37vLTw" id="ZL2uO6yyzI" role="37wK5m">
                        <ref role="3cqZAo" node="cr4sro7Sp2" resolve="simulator" />
                      </node>
                      <node concept="37vLTw" id="ZL2uO6yyzJ" role="37wK5m">
                        <ref role="3cqZAo" node="ZL2uO6yyzu" resolve="explanationProducer" />
                      </node>
                      <node concept="37vLTw" id="2YJdAbwhUcC" role="37wK5m">
                        <ref role="3cqZAo" node="2YJdAbwhRmH" resolve="inspector" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="ZL2uO6yyzK" role="3cqZAp">
                <node concept="37vLTI" id="ZL2uO6yyzL" role="3clFbG">
                  <node concept="2OqwBi" id="ZL2uO6yyzM" role="37vLTx">
                    <node concept="37vLTw" id="ZL2uO6yyzN" role="2Oq$k0">
                      <ref role="3cqZAo" node="ZL2uO6yyz_" resolve="simulatorPanel" />
                    </node>
                    <node concept="liA8E" id="ZL2uO6yyzO" role="2OqNvi">
                      <ref role="37wK5l" to="7zqy:~DebuggerPanel.getToolWindowPanel()" resolve="getToolWindowPanel" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="ZL2uO6yyzP" role="37vLTJ">
                    <ref role="3cqZAo" node="2B82559j4wY" resolve="simulatorPanelComponent" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="2ZW3vV" id="7MfEBAxhhJZ" role="3eO9$A">
              <node concept="3uibUv" id="7MfEBAxhhK0" role="2ZW6by">
                <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
              </node>
              <node concept="37vLTw" id="7MfEBAxhhK1" role="2ZW6bz">
                <ref role="3cqZAo" node="2jViL$fEgBm" resolve="snapshotDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2B82559iHbJ" role="3cqZAp" />
        <node concept="1gVbGN" id="2B82559jgvp" role="3cqZAp">
          <node concept="3y3z36" id="2B82559jhIJ" role="1gVkn0">
            <node concept="10Nm6u" id="2B82559jike" role="3uHU7w" />
            <node concept="37vLTw" id="2B82559jh3G" role="3uHU7B">
              <ref role="3cqZAo" node="2B82559j4wY" resolve="simulatorPanelComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2B82559je7n" role="3cqZAp" />
        <node concept="3clFbF" id="2B82559j9uw" role="3cqZAp">
          <node concept="2OqwBi" id="2B82559ja5r" role="3clFbG">
            <node concept="37vLTw" id="2B82559j9uu" role="2Oq$k0">
              <ref role="3cqZAo" node="2B825595rf1" resolve="debuggerTool" />
            </node>
            <node concept="liA8E" id="2B82559jaBc" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.openTool(boolean)" resolve="openTool" />
              <node concept="3clFbT" id="2B82559jaDg" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2B82559jbwK" role="3cqZAp">
          <node concept="2OqwBi" id="2B82559jc8Z" role="3clFbG">
            <node concept="37vLTw" id="2B82559jbwI" role="2Oq$k0">
              <ref role="3cqZAo" node="2B825595rf1" resolve="debuggerTool" />
            </node>
            <node concept="2wDMaC" id="2B82559jcwO" role="2OqNvi">
              <node concept="2BLXyY" id="2B82559jcwQ" role="11Dce$">
                <node concept="37vLTw" id="2B82559jc$Z" role="2BLOvw">
                  <ref role="3cqZAo" node="2B82559j4wY" resolve="simulatorPanelComponent" />
                </node>
                <node concept="37vLTw" id="2B82559jcDN" role="2BLOvx">
                  <ref role="3cqZAo" node="2B82559iVyu" resolve="typeName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2B82559jjqH" role="3cqZAp">
          <node concept="2OqwBi" id="2B82559jk5B" role="3clFbG">
            <node concept="37vLTw" id="2B82559jjqF" role="2Oq$k0">
              <ref role="3cqZAo" node="2B825595rf1" resolve="debuggerTool" />
            </node>
            <node concept="1kDqZ6" id="2B82559jkzv" role="2OqNvi">
              <node concept="37vLTw" id="2B82559jkAW" role="3PF$jx">
                <ref role="3cqZAo" node="2B82559j4wY" resolve="simulatorPanelComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2B82559jlsG" role="3cqZAp">
          <node concept="2OqwBi" id="2B82559jm6k" role="3clFbG">
            <node concept="37vLTw" id="2B82559jlsE" role="2Oq$k0">
              <ref role="3cqZAo" node="2B825595rf1" resolve="debuggerTool" />
            </node>
            <node concept="liA8E" id="2B82559jmm_" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.setSelectedComponent(javax.swing.JComponent)" resolve="setSelectedComponent" />
              <node concept="37vLTw" id="2B82559jmoZ" role="37wK5m">
                <ref role="3cqZAo" node="2B82559j4wY" resolve="simulatorPanelComponent" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="6V1xIBUm7Jx" role="tmbBb">
      <node concept="3clFbS" id="6V1xIBUm7Jy" role="2VODD2">
        <node concept="3cpWs8" id="uP0FLzNW37" role="3cqZAp">
          <node concept="3cpWsn" id="uP0FLzNW38" role="3cpWs9">
            <property role="TrG5h" value="style" />
            <node concept="3uibUv" id="uP0FLzNW32" role="1tU5fm">
              <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
            </node>
            <node concept="2OqwBi" id="uP0FLzNW39" role="33vP2m">
              <node concept="2OqwBi" id="uP0FLzNW3a" role="2Oq$k0">
                <node concept="2WthIp" id="uP0FLzNW3b" role="2Oq$k0" />
                <node concept="1DTwFV" id="uP0FLzNW3c" role="2OqNvi">
                  <ref role="2WH_rO" node="5IF$9ECXGXB" resolve="cell" />
                </node>
              </node>
              <node concept="liA8E" id="uP0FLzNW3d" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="2jViL$fDQNT" role="3cqZAp">
          <node concept="3cpWsn" id="2jViL$fDQNW" role="3cpWs9">
            <property role="TrG5h" value="isApplicable" />
            <node concept="10P_77" id="2jViL$fDQNR" role="1tU5fm" />
            <node concept="3clFbT" id="2jViL$fDROC" role="33vP2m" />
          </node>
        </node>
        <node concept="3cpWs8" id="2jViL$fDzBG" role="3cqZAp">
          <node concept="3cpWsn" id="2jViL$fDzBH" role="3cpWs9">
            <property role="TrG5h" value="fb" />
            <node concept="3uibUv" id="2jViL$fDzBI" role="1tU5fm">
              <ref role="3uigEE" to="g27j:~FunctionBlockDeclarationBase" resolve="FunctionBlockDeclarationBase" />
            </node>
            <node concept="2OqwBi" id="2jViL$fDKyK" role="33vP2m">
              <node concept="37vLTw" id="2jViL$fDKyL" role="2Oq$k0">
                <ref role="3cqZAo" node="uP0FLzNW38" resolve="style" />
              </node>
              <node concept="liA8E" id="2jViL$fDKyM" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="2jViL$fDLC$" role="37wK5m">
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.FB" resolve="FB" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="2jViL$fD_mN" role="3cqZAp">
          <node concept="3clFbS" id="2jViL$fD_mP" role="3clFbx">
            <node concept="3cpWs8" id="uP0FLzPzS_" role="3cqZAp">
              <node concept="3cpWsn" id="uP0FLzPzSA" role="3cpWs9">
                <property role="TrG5h" value="network" />
                <node concept="3uibUv" id="uP0FLzPzS7" role="1tU5fm">
                  <ref role="3uigEE" to="g27j:~FBNetwork" resolve="FBNetwork" />
                </node>
                <node concept="2OqwBi" id="uP0FLzPzSB" role="33vP2m">
                  <node concept="37vLTw" id="uP0FLzPzSC" role="2Oq$k0">
                    <ref role="3cqZAo" node="uP0FLzNW38" resolve="style" />
                  </node>
                  <node concept="liA8E" id="uP0FLzPzSD" role="2OqNvi">
                    <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                    <node concept="10M0yZ" id="6SLp5w3JaMs" role="37wK5m">
                      <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                      <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK" resolve="NETWORK" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2jViL$fDTB0" role="3cqZAp">
              <node concept="3cpWsn" id="2jViL$fDTB1" role="3cpWs9">
                <property role="TrG5h" value="parentDeclaration" />
                <node concept="3uibUv" id="2jViL$fDTB2" role="1tU5fm">
                  <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
                </node>
                <node concept="10Nm6u" id="5DMZE1m6rT7" role="33vP2m" />
              </node>
            </node>
            <node concept="3clFbJ" id="1WHrpR0OLNt" role="3cqZAp">
              <node concept="3clFbS" id="1WHrpR0OLNv" role="3clFbx">
                <node concept="3clFbF" id="7MfEBAxh9nv" role="3cqZAp">
                  <node concept="37vLTI" id="7MfEBAxh9Va" role="3clFbG">
                    <node concept="37vLTw" id="7MfEBAxh9nt" role="37vLTJ">
                      <ref role="3cqZAo" node="2jViL$fDTB1" resolve="parentDeclaration" />
                    </node>
                    <node concept="0kSF2" id="7MfEBAxha7R" role="37vLTx">
                      <node concept="3uibUv" id="7MfEBAxha7S" role="0kSFW">
                        <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
                      </node>
                      <node concept="2OqwBi" id="7MfEBAxha7T" role="0kSFX">
                        <node concept="37vLTw" id="7MfEBAxha7U" role="2Oq$k0">
                          <ref role="3cqZAo" node="uP0FLzPzSA" resolve="network" />
                        </node>
                        <node concept="liA8E" id="7MfEBAxha7V" role="2OqNvi">
                          <ref role="37wK5l" to="7adg:~Element.getContainer()" resolve="getContainer" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="7MfEBAxh282" role="3cqZAp">
                  <node concept="3clFbS" id="7MfEBAxh284" role="3clFbx">
                    <node concept="3clFbF" id="7MfEBAxh5Om" role="3cqZAp">
                      <node concept="37vLTI" id="7MfEBAxh5Oo" role="3clFbG">
                        <node concept="3clFbT" id="7MfEBAxh5Op" role="37vLTx">
                          <property role="3clFbU" value="true" />
                        </node>
                        <node concept="37vLTw" id="7MfEBAxh5Oq" role="37vLTJ">
                          <ref role="3cqZAo" node="2jViL$fDQNW" resolve="isApplicable" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3eNFk2" id="7MfEBAxh6hY" role="3eNLev">
                    <node concept="3clFbS" id="7MfEBAxh6i0" role="3eOfB_">
                      <node concept="3clFbF" id="7MfEBAxh84l" role="3cqZAp">
                        <node concept="37vLTI" id="7MfEBAxh84m" role="3clFbG">
                          <node concept="3clFbT" id="7MfEBAxh84n" role="37vLTx">
                            <property role="3clFbU" value="true" />
                          </node>
                          <node concept="37vLTw" id="7MfEBAxh84o" role="37vLTJ">
                            <ref role="3cqZAo" node="2jViL$fDQNW" resolve="isApplicable" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2ZW3vV" id="7MfEBAxh6Sk" role="3eO9$A">
                      <node concept="3uibUv" id="7MfEBAxh6Sl" role="2ZW6by">
                        <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
                      </node>
                      <node concept="37vLTw" id="7MfEBAxh6Sm" role="2ZW6bz">
                        <ref role="3cqZAo" node="2jViL$fDTB1" resolve="parentDeclaration" />
                      </node>
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="7MfEBAxh3MS" role="3clFbw">
                    <node concept="3uibUv" id="7MfEBAxh4w7" role="2ZW6by">
                      <ref role="3uigEE" to="cwd8:~FBTypeDeclaration" resolve="FBTypeDeclaration" />
                    </node>
                    <node concept="37vLTw" id="7MfEBAxh2nH" role="2ZW6bz">
                      <ref role="3cqZAo" node="2jViL$fDTB1" resolve="parentDeclaration" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3y3z36" id="1WHrpR0P0W6" role="3clFbw">
                <node concept="37vLTw" id="1WHrpR0OO9J" role="3uHU7B">
                  <ref role="3cqZAo" node="uP0FLzPzSA" resolve="network" />
                </node>
                <node concept="10Nm6u" id="1WHrpR0OOPk" role="3uHU7w" />
              </node>
              <node concept="9aQIb" id="5DMZE1m6pm8" role="9aQIa">
                <node concept="3clFbS" id="5DMZE1m6pm9" role="9aQI4">
                  <node concept="3cpWs8" id="1WHrpR0OAqd" role="3cqZAp">
                    <node concept="3cpWsn" id="1WHrpR0OAqe" role="3cpWs9">
                      <property role="TrG5h" value="ecc" />
                      <node concept="3uibUv" id="1WHrpR0OAqf" role="1tU5fm">
                        <ref role="3uigEE" to="lv7i:5jb5jNC4n69" resolve="ECCByNode" />
                      </node>
                      <node concept="0kSF2" id="1WHrpR0OCQi" role="33vP2m">
                        <node concept="3uibUv" id="1WHrpR0OCQl" role="0kSFW">
                          <ref role="3uigEE" to="lv7i:5jb5jNC4n69" resolve="ECCByNode" />
                        </node>
                        <node concept="2OqwBi" id="1WHrpR0OBb2" role="0kSFX">
                          <node concept="37vLTw" id="1WHrpR0OATK" role="2Oq$k0">
                            <ref role="3cqZAo" node="uP0FLzNW38" resolve="style" />
                          </node>
                          <node concept="liA8E" id="1WHrpR0OBB1" role="2OqNvi">
                            <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                            <node concept="10M0yZ" id="7W8q3dTN9N_" role="37wK5m">
                              <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                              <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.ECC" resolve="ECC" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbJ" id="1WHrpR0OWg_" role="3cqZAp">
                    <node concept="3clFbS" id="1WHrpR0OWgB" role="3clFbx">
                      <node concept="3clFbF" id="1WHrpR0P1v$" role="3cqZAp">
                        <node concept="37vLTI" id="1WHrpR0P22P" role="3clFbG">
                          <node concept="2OqwBi" id="1WHrpR0P2Wl" role="37vLTx">
                            <node concept="37vLTw" id="1WHrpR0P2or" role="2Oq$k0">
                              <ref role="3cqZAo" node="1WHrpR0OAqe" resolve="ecc" />
                            </node>
                            <node concept="liA8E" id="1WHrpR0P4wg" role="2OqNvi">
                              <ref role="37wK5l" to="lv7i:6bsr$eapWdC" resolve="getContainer" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="1WHrpR0P1vy" role="37vLTJ">
                            <ref role="3cqZAo" node="2jViL$fDTB1" resolve="parentDeclaration" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="1WHrpR0P5lf" role="3cqZAp">
                        <node concept="3clFbS" id="1WHrpR0P5lh" role="3clFbx">
                          <node concept="3clFbF" id="1WHrpR0P7hP" role="3cqZAp">
                            <node concept="37vLTI" id="1WHrpR0P7Y_" role="3clFbG">
                              <node concept="3clFbT" id="1WHrpR0P8dC" role="37vLTx">
                                <property role="3clFbU" value="true" />
                              </node>
                              <node concept="37vLTw" id="1WHrpR0P7hN" role="37vLTJ">
                                <ref role="3cqZAo" node="2jViL$fDQNW" resolve="isApplicable" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="1WHrpR0P6ex" role="3clFbw">
                          <node concept="10Nm6u" id="1WHrpR0P6Jh" role="3uHU7w" />
                          <node concept="37vLTw" id="1WHrpR0P5CA" role="3uHU7B">
                            <ref role="3cqZAo" node="2jViL$fDTB1" resolve="parentDeclaration" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3y3z36" id="1WHrpR0OXmE" role="3clFbw">
                      <node concept="10Nm6u" id="1WHrpR0OXOM" role="3uHU7w" />
                      <node concept="37vLTw" id="1WHrpR0OWzo" role="3uHU7B">
                        <ref role="3cqZAo" node="1WHrpR0OAqe" resolve="ecc" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbC" id="2jViL$fDApZ" role="3clFbw">
            <node concept="10Nm6u" id="2jViL$fDAX2" role="3uHU7w" />
            <node concept="37vLTw" id="2jViL$fD_D9" role="3uHU7B">
              <ref role="3cqZAo" node="2jViL$fDzBH" resolve="fbTypeDeclaration" />
            </node>
          </node>
          <node concept="9aQIb" id="2jViL$fDRWq" role="9aQIa">
            <node concept="3clFbS" id="2jViL$fDRWr" role="9aQI4">
              <node concept="3clFbF" id="2jViL$fDSvW" role="3cqZAp">
                <node concept="37vLTI" id="2jViL$fDT85" role="3clFbG">
                  <node concept="3clFbT" id="2jViL$fDTo1" role="37vLTx">
                    <property role="3clFbU" value="true" />
                  </node>
                  <node concept="37vLTw" id="2jViL$fDSvV" role="37vLTJ">
                    <ref role="3cqZAo" node="2jViL$fDQNW" resolve="isApplicable" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2jViL$fDXO3" role="3cqZAp">
          <node concept="37vLTw" id="2jViL$fDXO1" role="3clFbG">
            <ref role="3cqZAo" node="2jViL$fDQNW" resolve="isApplicable" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="4pceBWtd$tS">
    <property role="TrG5h" value="SimulatorActions" />
    <node concept="tT9cl" id="4pceBWtd$tU" role="2f5YQi">
      <ref role="tU$_T" to="5z5t:3DiEZ8TON84" resolve="IEC61499Actions" />
      <ref role="2f8Tey" to="5z5t:4pceBWtd$te" resolve="simulate" />
    </node>
    <node concept="ftmFs" id="4pceBWtd$u6" role="ftER_">
      <node concept="tCFHf" id="4pceBWtd$u9" role="ftvYc">
        <ref role="tCJdB" node="5XK6zxB$xyX" resolve="SimulateExecution" />
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="1UPrnlC93lw">
    <property role="TrG5h" value="StopResource" />
    <property role="2uzpH1" value="Stop Resource" />
    <node concept="2S4$dB" id="1UPrnlC9kPI" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="1UPrnlC9kPJ" role="1B3o_S" />
      <node concept="1oajcY" id="1UPrnlC9kPK" role="1oa70y" />
      <node concept="3Tqbb2" id="1UPrnlC9kPL" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="1UPrnlC9kPM" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="1UPrnlC9kPN" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="1UPrnlC9kPO" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="1UPrnlC9kPP" role="1oa70y" />
    </node>
    <node concept="tnohg" id="1UPrnlC93lx" role="tncku">
      <node concept="3clFbS" id="1UPrnlC93ly" role="2VODD2">
        <node concept="3cpWs8" id="1UPrnlCa9lD" role="3cqZAp">
          <node concept="3cpWsn" id="1UPrnlCa9lE" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="1UPrnlCa9lF" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
            </node>
            <node concept="1PxgMI" id="1UPrnlCa9lG" role="33vP2m">
              <node concept="chp4Y" id="1UPrnlCa9lH" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
              </node>
              <node concept="2OqwBi" id="1UPrnlCa9lI" role="1m5AlR">
                <node concept="2WthIp" id="1UPrnlCa9lJ" role="2Oq$k0" />
                <node concept="3gHZIF" id="1UPrnlCa9lK" role="2OqNvi">
                  <ref role="2WH_rO" node="1UPrnlC9kPI" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1UPrnlCa9lL" role="3cqZAp">
          <node concept="3cpWsn" id="1UPrnlCa9lM" role="3cpWs9">
            <property role="TrG5h" value="deviceNode" />
            <node concept="3Tqbb2" id="1UPrnlCa9lN" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
            </node>
            <node concept="1PxgMI" id="1UPrnlCa9lO" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="1UPrnlCa9lP" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
              </node>
              <node concept="2OqwBi" id="1UPrnlCa9lQ" role="1m5AlR">
                <node concept="1mfA1w" id="1UPrnlCa9lR" role="2OqNvi" />
                <node concept="37vLTw" id="1UPrnlCa9lS" role="2Oq$k0">
                  <ref role="3cqZAo" node="1UPrnlCa9lE" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1UPrnlCa9lT" role="3cqZAp">
          <node concept="3cpWsn" id="1UPrnlCa9lU" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="1UPrnlCa9lV" role="1tU5fm">
              <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
            </node>
            <node concept="2YIFZM" id="1UPrnlCa9lW" role="33vP2m">
              <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
              <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <node concept="2OqwBi" id="1UPrnlCa9lX" role="37wK5m">
                <node concept="2WthIp" id="1UPrnlCa9lY" role="2Oq$k0" />
                <node concept="1DTwFV" id="1UPrnlCa9lZ" role="2OqNvi">
                  <ref role="2WH_rO" node="1UPrnlC9kPM" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1UPrnlCa9m0" role="3cqZAp">
          <node concept="3cpWsn" id="1UPrnlCa9m1" role="3cpWs9">
            <property role="TrG5h" value="resourceDeclaration" />
            <node concept="3uibUv" id="1UPrnlCa9m2" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
            </node>
            <node concept="2OqwBi" id="1UPrnlCa9m3" role="33vP2m">
              <node concept="37vLTw" id="1UPrnlCa9m4" role="2Oq$k0">
                <ref role="3cqZAo" node="1UPrnlCa9lU" resolve="repository" />
              </node>
              <node concept="liA8E" id="1UPrnlCa9m5" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                <node concept="37vLTw" id="1UPrnlCa9m6" role="37wK5m">
                  <ref role="3cqZAo" node="1UPrnlCa9lE" resolve="node" />
                </node>
                <node concept="3VsKOn" id="1UPrnlCa9m7" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="1UPrnlCa9m8" role="3cqZAp">
          <node concept="3cpWsn" id="1UPrnlCa9m9" role="3cpWs9">
            <property role="TrG5h" value="device" />
            <node concept="3uibUv" id="1UPrnlCa9ma" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
            </node>
            <node concept="2OqwBi" id="1UPrnlCa9mb" role="33vP2m">
              <node concept="37vLTw" id="1UPrnlCa9mc" role="2Oq$k0">
                <ref role="3cqZAo" node="1UPrnlCa9lU" resolve="repository" />
              </node>
              <node concept="liA8E" id="1UPrnlCa9md" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                <node concept="37vLTw" id="1UPrnlCa9me" role="37wK5m">
                  <ref role="3cqZAo" node="1UPrnlCa9lM" resolve="deviceNode" />
                </node>
                <node concept="3VsKOn" id="1UPrnlCa9mf" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="1UPrnlCa9mg" role="3cqZAp">
          <node concept="2OqwBi" id="1UPrnlCa9mh" role="3clFbG">
            <node concept="2ShNRf" id="1UPrnlCa9mi" role="2Oq$k0">
              <node concept="YeOm9" id="1UPrnlCa9mj" role="2ShVmc">
                <node concept="1Y3b0j" id="1UPrnlCa9mk" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="xygl:~Task$Backgroundable.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String)" resolve="Backgroundable" />
                  <ref role="1Y3XeK" to="xygl:~Task$Backgroundable" resolve="Backgroundable" />
                  <node concept="3Tm1VV" id="1UPrnlCa9ml" role="1B3o_S" />
                  <node concept="3clFb_" id="1UPrnlCa9mm" role="jymVt">
                    <property role="TrG5h" value="run" />
                    <node concept="3Tm1VV" id="1UPrnlCa9mn" role="1B3o_S" />
                    <node concept="3cqZAl" id="1UPrnlCa9mo" role="3clF45" />
                    <node concept="37vLTG" id="1UPrnlCa9mp" role="3clF46">
                      <property role="TrG5h" value="indicator" />
                      <node concept="3uibUv" id="1UPrnlCa9mq" role="1tU5fm">
                        <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                      </node>
                      <node concept="2AHcQZ" id="1UPrnlCa9mr" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1UPrnlCa9ms" role="3clF47">
                      <node concept="3clFbF" id="1UPrnlCa9mt" role="3cqZAp">
                        <node concept="2OqwBi" id="1UPrnlCa9mu" role="3clFbG">
                          <node concept="2OqwBi" id="1UPrnlCa9mv" role="2Oq$k0">
                            <node concept="2OqwBi" id="1UPrnlCa9mw" role="2Oq$k0">
                              <node concept="2WthIp" id="1UPrnlCa9mx" role="2Oq$k0" />
                              <node concept="1DTwFV" id="1UPrnlCa9my" role="2OqNvi">
                                <ref role="2WH_rO" node="1UPrnlC9kPM" resolve="mpsProject" />
                              </node>
                            </node>
                            <node concept="liA8E" id="1UPrnlCa9mz" role="2OqNvi">
                              <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                            </node>
                          </node>
                          <node concept="liA8E" id="1UPrnlCa9m$" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                            <node concept="1bVj0M" id="1UPrnlCa9m_" role="37wK5m">
                              <node concept="3clFbS" id="1UPrnlCa9mA" role="1bW5cS">
                                <node concept="3J1_TO" id="1UPrnlCa9mB" role="3cqZAp">
                                  <node concept="3clFbS" id="1UPrnlCa9mC" role="1zxBo7">
                                    <node concept="3cpWs8" id="1UPrnlCa9mD" role="3cqZAp">
                                      <node concept="3cpWsn" id="1UPrnlCa9mE" role="3cpWs9">
                                        <property role="TrG5h" value="connection" />
                                        <node concept="3uibUv" id="1UPrnlCa9mF" role="1tU5fm">
                                          <ref role="3uigEE" to="6w4o:~DeviceConnection" resolve="DeviceConnection" />
                                        </node>
                                        <node concept="2OqwBi" id="1UPrnlCa9mG" role="33vP2m">
                                          <node concept="2OqwBi" id="1UPrnlCa9mH" role="2Oq$k0">
                                            <node concept="10M0yZ" id="1UPrnlCa9mI" role="2Oq$k0">
                                              <ref role="3cqZAo" to="6w4o:~DevicesFacade.Companion" resolve="Companion" />
                                              <ref role="1PxDUh" to="6w4o:~DevicesFacade" resolve="DevicesFacade" />
                                            </node>
                                            <node concept="liA8E" id="1UPrnlCa9mJ" role="2OqNvi">
                                              <ref role="37wK5l" to="6w4o:~DevicesFacade$Companion.getInstance()" resolve="getInstance" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="1UPrnlCa9mK" role="2OqNvi">
                                            <ref role="37wK5l" to="6w4o:~DevicesFacade.attach(org.fbme.lib.iec61499.declarations.DeviceDeclaration)" resolve="attach" />
                                            <node concept="37vLTw" id="1UPrnlCa9mL" role="37wK5m">
                                              <ref role="3cqZAo" node="1UPrnlCa9m9" resolve="device" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbJ" id="1UPrnlCa9mM" role="3cqZAp">
                                      <node concept="3clFbS" id="1UPrnlCa9mN" role="3clFbx">
                                        <node concept="3clFbF" id="1UPrnlCakCx" role="3cqZAp">
                                          <node concept="2OqwBi" id="1UPrnlCallu" role="3clFbG">
                                            <node concept="37vLTw" id="1UPrnlCakCv" role="2Oq$k0">
                                              <ref role="3cqZAo" node="1UPrnlCa9mE" resolve="connection" />
                                            </node>
                                            <node concept="liA8E" id="1UPrnlCam5W" role="2OqNvi">
                                              <ref role="37wK5l" to="6w4o:~DeviceConnection.killResource(org.jetbrains.mps.openapi.model.SNode)" resolve="killResource" />
                                              <node concept="37vLTw" id="1UPrnlCanxW" role="37wK5m">
                                                <ref role="3cqZAo" node="1UPrnlCa9lE" resolve="node" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="1UPrnlCa9mO" role="3cqZAp">
                                          <node concept="2OqwBi" id="1UPrnlCa9mP" role="3clFbG">
                                            <node concept="37vLTw" id="1UPrnlCa9mQ" role="2Oq$k0">
                                              <ref role="3cqZAo" node="1UPrnlCa9mE" resolve="connection" />
                                            </node>
                                            <node concept="liA8E" id="1UPrnlCabBt" role="2OqNvi">
                                              <ref role="37wK5l" to="6w4o:~DeviceConnection.deleteResource(org.jetbrains.mps.openapi.model.SNode)" resolve="deleteResource" />
                                              <node concept="37vLTw" id="1UPrnlCacR9" role="37wK5m">
                                                <ref role="3cqZAo" node="1UPrnlCa9lE" resolve="node" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3y3z36" id="1UPrnlCa9mY" role="3clFbw">
                                        <node concept="10Nm6u" id="1UPrnlCa9mZ" role="3uHU7w" />
                                        <node concept="37vLTw" id="1UPrnlCa9n0" role="3uHU7B">
                                          <ref role="3cqZAo" node="1UPrnlCa9mE" resolve="connection" />
                                        </node>
                                      </node>
                                      <node concept="9aQIb" id="1UPrnlCa9n1" role="9aQIa">
                                        <node concept="3clFbS" id="1UPrnlCa9n2" role="9aQI4">
                                          <node concept="RRSsy" id="1UPrnlCa9n3" role="3cqZAp">
                                            <property role="RRSoG" value="gZ5fh_4/error" />
                                            <node concept="3cpWs3" id="1UPrnlCa9n4" role="RRSoy">
                                              <node concept="2OqwBi" id="1UPrnlCa9n5" role="3uHU7w">
                                                <node concept="37vLTw" id="1UPrnlCa9n6" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="1UPrnlCa9lM" resolve="deviceNode" />
                                                </node>
                                                <node concept="3TrcHB" id="1UPrnlCa9n7" role="2OqNvi">
                                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                                </node>
                                              </node>
                                              <node concept="Xl_RD" id="1UPrnlCa9n8" role="3uHU7B">
                                                <property role="Xl_RC" value="Can't connect to device " />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3uVAMA" id="1UPrnlCa9n9" role="1zxBo5">
                                    <node concept="XOnhg" id="1UPrnlCa9na" role="1zc67B">
                                      <property role="3TUv4t" value="false" />
                                      <property role="TrG5h" value="e" />
                                      <node concept="nSUau" id="1UPrnlCa9nb" role="1tU5fm">
                                        <node concept="3uibUv" id="1UPrnlCa9nc" role="nSUat">
                                          <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="1UPrnlCa9nd" role="1zc67A">
                                      <node concept="3clFbF" id="1UPrnlCa9ne" role="3cqZAp">
                                        <node concept="2OqwBi" id="1UPrnlCa9nf" role="3clFbG">
                                          <node concept="2OqwBi" id="1UPrnlCa9ng" role="2Oq$k0">
                                            <node concept="10M0yZ" id="1UPrnlCa9nh" role="2Oq$k0">
                                              <ref role="1PxDUh" to="6w4o:~DevicesFacade" resolve="DevicesFacade" />
                                              <ref role="3cqZAo" to="6w4o:~DevicesFacade.Companion" resolve="Companion" />
                                            </node>
                                            <node concept="liA8E" id="1UPrnlCa9ni" role="2OqNvi">
                                              <ref role="37wK5l" to="6w4o:~DevicesFacade$Companion.getInstance()" resolve="getInstance" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="1UPrnlCa9nj" role="2OqNvi">
                                            <ref role="37wK5l" to="6w4o:~DevicesFacade.invalidate(org.fbme.lib.iec61499.declarations.DeviceDeclaration)" resolve="invalidate" />
                                            <node concept="37vLTw" id="1UPrnlCa9nk" role="37wK5m">
                                              <ref role="3cqZAo" node="1UPrnlCa9m9" resolve="device" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="RRSsy" id="1UPrnlCa9nl" role="3cqZAp">
                                        <property role="RRSoG" value="gZ5fh_4/error" />
                                        <node concept="37vLTw" id="1UPrnlCa9nm" role="RRSow">
                                          <ref role="3cqZAo" node="1UPrnlCa9na" resolve="e" />
                                        </node>
                                        <node concept="Xl_RD" id="1UPrnlCa9nn" role="RRSoy">
                                          <property role="Xl_RC" value="on resource stopping" />
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
                    <node concept="2AHcQZ" id="1UPrnlCa9no" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="1UPrnlCa9np" role="37wK5m">
                    <node concept="2WthIp" id="1UPrnlCa9nq" role="2Oq$k0">
                      <ref role="32nkFo" node="1UPrnlC93lw" resolve="StopResource" />
                    </node>
                    <node concept="1DTwFV" id="1UPrnlCaflE" role="2OqNvi">
                      <ref role="2WH_rO" node="1UPrnlC9kPO" resolve="project" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="1UPrnlCa9ns" role="37wK5m">
                    <property role="Xl_RC" value="Stopping Resource" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="1UPrnlCa9nt" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~Task.queue()" resolve="queue" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="1UPrnlC9k9X" role="tmbBb">
      <node concept="3clFbS" id="1UPrnlC9k9Y" role="2VODD2">
        <node concept="3clFbF" id="1UPrnlCa8_4" role="3cqZAp">
          <node concept="2OqwBi" id="1UPrnlCa8_5" role="3clFbG">
            <node concept="2OqwBi" id="1UPrnlCa8_6" role="2Oq$k0">
              <node concept="2WthIp" id="1UPrnlCa8_7" role="2Oq$k0" />
              <node concept="3gHZIF" id="1UPrnlCa8_8" role="2OqNvi">
                <ref role="2WH_rO" node="1UPrnlC9kPI" resolve="node" />
              </node>
            </node>
            <node concept="1mIQ4w" id="1UPrnlCa8_9" role="2OqNvi">
              <node concept="chp4Y" id="1UPrnlCa8_a" role="cj9EA">
                <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="6bvi$yscBuL">
    <property role="TrG5h" value="DeployResourceInDebugMode" />
    <property role="2uzpH1" value="Deploy Resource" />
    <property role="2YLI8m" value="6u2MFnph2yk/editorCommand" />
    <node concept="2S4$dB" id="6bvi$yscDwT" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="6bvi$yscDwU" role="1B3o_S" />
      <node concept="1oajcY" id="6bvi$yscDwV" role="1oa70y" />
      <node concept="3Tqbb2" id="6bvi$yscDwW" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="5A2K7QhVrXW" role="1NuT2Z">
      <property role="TrG5h" value="cell" />
      <ref role="1DUlNI" to="k3nr:~MPSEditorDataKeys.EDITOR_CELL" resolve="EDITOR_CELL" />
      <node concept="1oajcY" id="5A2K7QhVrXX" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6bvi$yscDwX" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6bvi$yscDwY" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6bvi$yscDwZ" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="6bvi$yscDx0" role="1oa70y" />
    </node>
    <node concept="tnohg" id="6bvi$yscBuM" role="tncku">
      <node concept="3clFbS" id="6bvi$yscBuN" role="2VODD2">
        <node concept="3cpWs8" id="6bvi$yscBv4" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$yscBv5" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="6bvi$yscBv6" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
            </node>
            <node concept="1PxgMI" id="6bvi$yscBv7" role="33vP2m">
              <node concept="chp4Y" id="6bvi$yscBv8" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
              </node>
              <node concept="2OqwBi" id="6bvi$yscBv9" role="1m5AlR">
                <node concept="2WthIp" id="6bvi$yscBva" role="2Oq$k0" />
                <node concept="3gHZIF" id="6bvi$yscBvb" role="2OqNvi">
                  <ref role="2WH_rO" node="6bvi$yscDwT" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6bvi$yscBvc" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$yscBvd" role="3cpWs9">
            <property role="TrG5h" value="deviceNode" />
            <node concept="3Tqbb2" id="6bvi$yscBve" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
            </node>
            <node concept="1PxgMI" id="6bvi$yscBvf" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="6bvi$yscBvg" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
              </node>
              <node concept="2OqwBi" id="6bvi$yscBvh" role="1m5AlR">
                <node concept="1mfA1w" id="6bvi$yscBvi" role="2OqNvi" />
                <node concept="37vLTw" id="6bvi$yscBvj" role="2Oq$k0">
                  <ref role="3cqZAo" node="6bvi$yscBv5" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6bvi$yscBvk" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$yscBvl" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="6bvi$yscBvm" role="1tU5fm">
              <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
            </node>
            <node concept="2YIFZM" id="6bvi$yscBvn" role="33vP2m">
              <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
              <node concept="2OqwBi" id="6bvi$yscBvo" role="37wK5m">
                <node concept="2WthIp" id="6bvi$yscBvp" role="2Oq$k0" />
                <node concept="1DTwFV" id="6bvi$yscBvq" role="2OqNvi">
                  <ref role="2WH_rO" node="6bvi$yscDwX" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6bvi$yscBvr" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$yscBvs" role="3cpWs9">
            <property role="TrG5h" value="resourceDeclaration" />
            <node concept="3uibUv" id="6bvi$yscBvt" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
            </node>
            <node concept="2OqwBi" id="6bvi$yscBvu" role="33vP2m">
              <node concept="37vLTw" id="6bvi$yscBvv" role="2Oq$k0">
                <ref role="3cqZAo" node="6bvi$yscBvl" resolve="repository" />
              </node>
              <node concept="liA8E" id="6bvi$yscBvw" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                <node concept="37vLTw" id="6bvi$yscBvx" role="37wK5m">
                  <ref role="3cqZAo" node="6bvi$yscBv5" resolve="node" />
                </node>
                <node concept="3VsKOn" id="6bvi$yscBvy" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6bvi$yscBvz" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$yscBv$" role="3cpWs9">
            <property role="TrG5h" value="device" />
            <node concept="3uibUv" id="6bvi$yscBv_" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
            </node>
            <node concept="2OqwBi" id="6bvi$yscBvA" role="33vP2m">
              <node concept="37vLTw" id="6bvi$yscBvB" role="2Oq$k0">
                <ref role="3cqZAo" node="6bvi$yscBvl" resolve="repository" />
              </node>
              <node concept="liA8E" id="6bvi$yscBvC" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                <node concept="37vLTw" id="6bvi$yscBvD" role="37wK5m">
                  <ref role="3cqZAo" node="6bvi$yscBvd" resolve="deviceNode" />
                </node>
                <node concept="3VsKOn" id="6bvi$yscBvE" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1m$_aOiKp7H" role="3cqZAp" />
        <node concept="3cpWs8" id="5A2K7QhVlKC" role="3cqZAp">
          <node concept="3cpWsn" id="5A2K7QhVlKD" role="3cpWs9">
            <property role="TrG5h" value="manager" />
            <node concept="3uibUv" id="5A2K7QhVlKE" role="1tU5fm">
              <ref role="3uigEE" to="ek6x:~InspectionManager" resolve="InspectionManager" />
            </node>
            <node concept="2YIFZM" id="5A2K7QhVlKF" role="33vP2m">
              <ref role="1Pybhc" to="ek6x:~InspectionManagerImpl" resolve="InspectionManagerImpl" />
              <ref role="37wK5l" to="ek6x:~InspectionManagerImpl.getInstance(jetbrains.mps.openapi.editor.EditorComponent)" resolve="getInstance" />
              <node concept="2OqwBi" id="5A2K7QhVlKG" role="37wK5m">
                <node concept="liA8E" id="5A2K7QhVlKH" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getEditorComponent()" resolve="getEditorComponent" />
                </node>
                <node concept="2OqwBi" id="5A2K7QhVlKI" role="2Oq$k0">
                  <node concept="2WthIp" id="5A2K7QhVlKJ" role="2Oq$k0" />
                  <node concept="1DTwFV" id="5A2K7QhVlKK" role="2OqNvi">
                    <ref role="2WH_rO" node="5A2K7QhVrXW" resolve="cell" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5A2K7QhVFl7" role="3cqZAp">
          <node concept="3cpWsn" id="5A2K7QhVFl8" role="3cpWs9">
            <property role="TrG5h" value="networkInstance" />
            <node concept="3uibUv" id="5A2K7QhVFl9" role="1tU5fm">
              <ref role="3uigEE" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
            </node>
            <node concept="2OqwBi" id="5A2K7QhVHeG" role="33vP2m">
              <node concept="2OqwBi" id="5A2K7QhVGG8" role="2Oq$k0">
                <node concept="2OqwBi" id="5A2K7QhVGmx" role="2Oq$k0">
                  <node concept="2WthIp" id="5A2K7QhVGm$" role="2Oq$k0" />
                  <node concept="1DTwFV" id="5A2K7QhVGmA" role="2OqNvi">
                    <ref role="2WH_rO" node="5A2K7QhVrXW" resolve="cell" />
                  </node>
                </node>
                <node concept="liA8E" id="5A2K7QhVH8e" role="2OqNvi">
                  <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
                </node>
              </node>
              <node concept="liA8E" id="5A2K7QhVHHu" role="2OqNvi">
                <ref role="37wK5l" to="hox0:~Style.get(jetbrains.mps.openapi.editor.style.StyleAttribute)" resolve="get" />
                <node concept="10M0yZ" id="5A2K7QhVMx$" role="37wK5m">
                  <ref role="3cqZAo" to="je9f:~RichEditorStyleAttributes.NETWORK_INSTANCE" resolve="NETWORK_INSTANCE" />
                  <ref role="1PxDUh" to="je9f:~RichEditorStyleAttributes" resolve="RichEditorStyleAttributes" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5A2K7QhVlKL" role="3cqZAp">
          <node concept="3cpWsn" id="5A2K7QhVlKM" role="3cpWs9">
            <property role="TrG5h" value="inspector" />
            <node concept="3uibUv" id="5A2K7QhVlKN" role="1tU5fm">
              <ref role="3uigEE" to="ek6x:~NetworkInspector" resolve="NetworkInspector" />
            </node>
            <node concept="2OqwBi" id="5A2K7QhVlKO" role="33vP2m">
              <node concept="37vLTw" id="5A2K7QhVlKP" role="2Oq$k0">
                <ref role="3cqZAo" node="5A2K7QhVlKD" resolve="manager" />
              </node>
              <node concept="liA8E" id="5A2K7QhVlKQ" role="2OqNvi">
                <ref role="37wK5l" to="ek6x:~InspectionManager.installInspector(org.fbme.lib.iec61499.instances.NetworkInstance,java.lang.Runnable)" resolve="installInspector" />
                <node concept="37vLTw" id="5A2K7QhVlKR" role="37wK5m">
                  <ref role="3cqZAo" node="5A2K7QhVFl8" resolve="networkInstance" />
                </node>
                <node concept="1bVj0M" id="5A2K7QhVlKS" role="37wK5m">
                  <node concept="3clFbS" id="5A2K7QhVlKT" role="1bW5cS" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1m$_aOiKpcm" role="3cqZAp" />
        <node concept="3clFbF" id="6bvi$yscBvF" role="3cqZAp">
          <node concept="2OqwBi" id="6bvi$yscBvG" role="3clFbG">
            <node concept="2ShNRf" id="6bvi$yscBvH" role="2Oq$k0">
              <node concept="YeOm9" id="6bvi$yscBvI" role="2ShVmc">
                <node concept="1Y3b0j" id="6bvi$yscBvJ" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="xygl:~Task$Backgroundable.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String)" resolve="Backgroundable" />
                  <ref role="1Y3XeK" to="xygl:~Task$Backgroundable" resolve="Backgroundable" />
                  <node concept="3Tm1VV" id="6bvi$yscBvK" role="1B3o_S" />
                  <node concept="3clFb_" id="6bvi$yscBvL" role="jymVt">
                    <property role="TrG5h" value="run" />
                    <node concept="3Tm1VV" id="6bvi$yscBvM" role="1B3o_S" />
                    <node concept="3cqZAl" id="6bvi$yscBvN" role="3clF45" />
                    <node concept="37vLTG" id="6bvi$yscBvO" role="3clF46">
                      <property role="TrG5h" value="indicator" />
                      <node concept="3uibUv" id="6bvi$yscBvP" role="1tU5fm">
                        <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                      </node>
                      <node concept="2AHcQZ" id="6bvi$yscBvQ" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="6bvi$yscBvR" role="3clF47">
                      <node concept="3clFbF" id="6bvi$yscBvS" role="3cqZAp">
                        <node concept="2OqwBi" id="6bvi$yscBvT" role="3clFbG">
                          <node concept="2OqwBi" id="6bvi$yscBvU" role="2Oq$k0">
                            <node concept="2OqwBi" id="6bvi$yscBvV" role="2Oq$k0">
                              <node concept="2WthIp" id="6bvi$yscBvW" role="2Oq$k0" />
                              <node concept="1DTwFV" id="6bvi$yscBvX" role="2OqNvi">
                                <ref role="2WH_rO" node="6bvi$yscDwX" resolve="mpsProject" />
                              </node>
                            </node>
                            <node concept="liA8E" id="6bvi$yscBvY" role="2OqNvi">
                              <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                            </node>
                          </node>
                          <node concept="liA8E" id="6bvi$yscBvZ" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                            <node concept="1bVj0M" id="6bvi$yscBw0" role="37wK5m">
                              <node concept="3clFbS" id="6bvi$yscBw1" role="1bW5cS">
                                <node concept="3J1_TO" id="6bvi$yscBw2" role="3cqZAp">
                                  <node concept="3clFbS" id="6bvi$yscBw3" role="1zxBo7">
                                    <node concept="3cpWs8" id="6bvi$yscBw4" role="3cqZAp">
                                      <node concept="3cpWsn" id="6bvi$yscBw5" role="3cpWs9">
                                        <property role="TrG5h" value="connection" />
                                        <node concept="3uibUv" id="6bvi$yscBw6" role="1tU5fm">
                                          <ref role="3uigEE" to="6w4o:~DeviceConnection" resolve="DeviceConnection" />
                                        </node>
                                        <node concept="2OqwBi" id="6bvi$yscBw7" role="33vP2m">
                                          <node concept="2OqwBi" id="6bvi$yscBw8" role="2Oq$k0">
                                            <node concept="10M0yZ" id="6bvi$yscBw9" role="2Oq$k0">
                                              <ref role="1PxDUh" to="6w4o:~DevicesFacade" resolve="DevicesFacade" />
                                              <ref role="3cqZAo" to="6w4o:~DevicesFacade.Companion" resolve="Companion" />
                                            </node>
                                            <node concept="liA8E" id="6bvi$yscBwa" role="2OqNvi">
                                              <ref role="37wK5l" to="6w4o:~DevicesFacade$Companion.getInstance()" resolve="getInstance" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="6bvi$yscBwb" role="2OqNvi">
                                            <ref role="37wK5l" to="6w4o:~DevicesFacade.attach(org.fbme.lib.iec61499.declarations.DeviceDeclaration)" resolve="attach" />
                                            <node concept="37vLTw" id="6bvi$yscBwc" role="37wK5m">
                                              <ref role="3cqZAo" node="6bvi$yscBv$" resolve="device" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbJ" id="6bvi$yscBwd" role="3cqZAp">
                                      <node concept="3clFbS" id="6bvi$yscBwe" role="3clFbx">
                                        <node concept="3clFbF" id="6bvi$yscBwf" role="3cqZAp">
                                          <node concept="2OqwBi" id="6bvi$yscBwg" role="3clFbG">
                                            <node concept="37vLTw" id="6bvi$yscBwh" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6bvi$yscBw5" resolve="connection" />
                                            </node>
                                            <node concept="liA8E" id="6bvi$yscBwi" role="2OqNvi">
                                              <ref role="37wK5l" to="6w4o:~DeviceConnection.createResourceNetwork(org.jetbrains.mps.openapi.model.SNode)" resolve="createResourceNetwork" />
                                              <node concept="37vLTw" id="6bvi$yscBwj" role="37wK5m">
                                                <ref role="3cqZAo" node="6bvi$yscBv5" resolve="node" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3cpWs8" id="57aJTs8lEVy" role="3cqZAp">
                                          <node concept="3cpWsn" id="57aJTs8lEVz" role="3cpWs9">
                                            <property role="TrG5h" value="watcherFacade" />
                                            <node concept="3uibUv" id="57aJTs8lEFG" role="1tU5fm">
                                              <ref role="3uigEE" to="6w4o:~WatcherFacade" resolve="WatcherFacade" />
                                            </node>
                                            <node concept="2OqwBi" id="57aJTs8lEV$" role="33vP2m">
                                              <node concept="10M0yZ" id="57aJTs8lEV_" role="2Oq$k0">
                                                <ref role="3cqZAo" to="6w4o:~WatcherFacade.Companion" resolve="Companion" />
                                                <ref role="1PxDUh" to="6w4o:~WatcherFacade" resolve="WatcherFacade" />
                                              </node>
                                              <node concept="liA8E" id="57aJTs8lEVA" role="2OqNvi">
                                                <ref role="37wK5l" to="6w4o:~WatcherFacade$Companion.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                                                <node concept="2OqwBi" id="57aJTs8lEVB" role="37wK5m">
                                                  <node concept="2WthIp" id="57aJTs8lEVC" role="2Oq$k0">
                                                    <ref role="32nkFo" node="6bvi$yscBuL" resolve="DeployResourceInDebugMode" />
                                                  </node>
                                                  <node concept="1DTwFV" id="57aJTs8lEVD" role="2OqNvi">
                                                    <ref role="2WH_rO" node="6bvi$yscDwX" resolve="mpsProject" />
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="2QVQjiHh6kJ" role="3cqZAp">
                                          <node concept="2OqwBi" id="57aJTs8lqM5" role="3clFbG">
                                            <node concept="37vLTw" id="57aJTs8lEVE" role="2Oq$k0">
                                              <ref role="3cqZAo" node="57aJTs8lEVz" resolve="instance" />
                                            </node>
                                            <node concept="liA8E" id="57aJTs8lrm1" role="2OqNvi">
                                              <ref role="37wK5l" to="6w4o:~WatcherFacade.watchResourceNetwork(org.fbme.lib.iec61499.declarations.ResourceDeclaration)" resolve="watchResourceNetwork" />
                                              <node concept="37vLTw" id="57aJTs8lEr2" role="37wK5m">
                                                <ref role="3cqZAo" node="6bvi$yscBvs" resolve="resourceDeclaration" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="6ze4tFD$Fzy" role="3cqZAp">
                                          <node concept="2OqwBi" id="6ze4tFD$Gub" role="3clFbG">
                                            <node concept="37vLTw" id="6ze4tFD$Fzw" role="2Oq$k0">
                                              <ref role="3cqZAo" node="57aJTs8lEVz" resolve="watcherFacade" />
                                            </node>
                                            <node concept="liA8E" id="6ze4tFD$GVz" role="2OqNvi">
                                              <ref role="37wK5l" to="6w4o:~WatcherFacade.addWatchedValueListenersResourceNetwork(org.fbme.lib.iec61499.declarations.ResourceDeclaration,java.util.function.Function)" resolve="addWatchedValueListenersResourceNetwork" />
                                              <node concept="37vLTw" id="6ze4tFD$IHz" role="37wK5m">
                                                <ref role="3cqZAo" node="6bvi$yscBvs" resolve="resourceDeclaration" />
                                              </node>
                                              <node concept="1bVj0M" id="6ze4tFD$K9Q" role="37wK5m">
                                                <node concept="3clFbS" id="6ze4tFD$K9S" role="1bW5cS">
                                                  <node concept="3cpWs6" id="6ze4tFD$TOO" role="3cqZAp">
                                                    <node concept="2ShNRf" id="6ze4tFD$VWz" role="3cqZAk">
                                                      <node concept="YeOm9" id="6ze4tFD_xTJ" role="2ShVmc">
                                                        <node concept="1Y3b0j" id="6ze4tFD_xTM" role="YeSDq">
                                                          <property role="2bfB8j" value="true" />
                                                          <property role="373rjd" value="true" />
                                                          <ref role="1Y3XeK" to="6w4o:~WatchedValueListener" resolve="WatchedValueListener" />
                                                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                                          <node concept="3Tm1VV" id="6ze4tFD_xTN" role="1B3o_S" />
                                                          <node concept="3clFb_" id="6ze4tFD_xU1" role="jymVt">
                                                            <property role="TrG5h" value="onValueChanged" />
                                                            <node concept="3Tm1VV" id="6ze4tFD_xU2" role="1B3o_S" />
                                                            <node concept="3cqZAl" id="6ze4tFD_xU4" role="3clF45" />
                                                            <node concept="37vLTG" id="6ze4tFD_xU5" role="3clF46">
                                                              <property role="TrG5h" value="newValue" />
                                                              <node concept="3uibUv" id="6ze4tFD_xU6" role="1tU5fm">
                                                                <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                                              </node>
                                                              <node concept="2AHcQZ" id="6ze4tFD_xU7" role="2AJF6D">
                                                                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                                                              </node>
                                                            </node>
                                                            <node concept="3clFbS" id="6ze4tFD_xU8" role="3clF47">
                                                              <node concept="3clFbF" id="1m$_aOiKwHq" role="3cqZAp">
                                                                <node concept="2OqwBi" id="1m$_aOiKxOa" role="3clFbG">
                                                                  <node concept="37vLTw" id="1m$_aOiKwHp" role="2Oq$k0">
                                                                    <ref role="3cqZAo" node="5A2K7QhVlKM" resolve="inspector" />
                                                                  </node>
                                                                  <node concept="liA8E" id="1m$_aOiKypN" role="2OqNvi">
                                                                    <ref role="37wK5l" to="ek6x:~NetworkInspector.setInspectionForPort(org.fbme.lib.iec61499.fbnetwork.PortPath,org.fbme.ide.richediting.inspections.Inspection)" resolve="setInspectionForPort" />
                                                                    <node concept="37vLTw" id="1m$_aOiK$RF" role="37wK5m">
                                                                      <ref role="3cqZAo" node="6ze4tFD$LP5" resolve="portPath" />
                                                                    </node>
                                                                    <node concept="2ShNRf" id="1m$_aOiKBt_" role="37wK5m">
                                                                      <node concept="1pGfFk" id="1m$_aOiL67b" role="2ShVmc">
                                                                        <property role="373rjd" value="true" />
                                                                        <ref role="37wK5l" to="ek6x:~Inspection.&lt;init&gt;(java.lang.String)" resolve="Inspection" />
                                                                        <node concept="37vLTw" id="1m$_aOiL9G8" role="37wK5m">
                                                                          <ref role="3cqZAo" node="6ze4tFD_xU5" resolve="newValue" />
                                                                        </node>
                                                                      </node>
                                                                    </node>
                                                                  </node>
                                                                </node>
                                                              </node>
                                                            </node>
                                                            <node concept="2AHcQZ" id="6ze4tFD_xUa" role="2AJF6D">
                                                              <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                                                            </node>
                                                          </node>
                                                        </node>
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                                <node concept="37vLTG" id="6ze4tFD$LP5" role="1bW2Oz">
                                                  <property role="TrG5h" value="portPath" />
                                                  <property role="3TUv4t" value="true" />
                                                  <node concept="3uibUv" id="6ze4tFD$LP4" role="1tU5fm">
                                                    <ref role="3uigEE" to="g27j:~PortPath" resolve="PortPath" />
                                                    <node concept="3qUE_q" id="6ze4tFD$Od5" role="11_B2D">
                                                      <node concept="3uibUv" id="6ze4tFD$Rdh" role="3qUE_r">
                                                        <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
                                                      </node>
                                                    </node>
                                                  </node>
                                                </node>
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="NsL_pTj1_l" role="3cqZAp">
                                          <node concept="2OqwBi" id="NsL_pTj2kW" role="3clFbG">
                                            <node concept="37vLTw" id="NsL_pTj1_j" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6bvi$yscBw5" resolve="connection" />
                                            </node>
                                            <node concept="liA8E" id="NsL_pTj37S" role="2OqNvi">
                                              <ref role="37wK5l" to="6w4o:~DeviceConnection.startResource(org.jetbrains.mps.openapi.model.SNode)" resolve="startResource" />
                                              <node concept="37vLTw" id="NsL_pTj4Wk" role="37wK5m">
                                                <ref role="3cqZAo" node="6bvi$yscBv5" resolve="node" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3y3z36" id="6bvi$yscBwp" role="3clFbw">
                                        <node concept="10Nm6u" id="6bvi$yscBwq" role="3uHU7w" />
                                        <node concept="37vLTw" id="6bvi$yscBwr" role="3uHU7B">
                                          <ref role="3cqZAo" node="6bvi$yscBw5" resolve="connection" />
                                        </node>
                                      </node>
                                      <node concept="9aQIb" id="6bvi$yscBws" role="9aQIa">
                                        <node concept="3clFbS" id="6bvi$yscBwt" role="9aQI4">
                                          <node concept="RRSsy" id="6bvi$yscBwu" role="3cqZAp">
                                            <property role="RRSoG" value="gZ5fh_4/error" />
                                            <node concept="3cpWs3" id="6bvi$yscBwv" role="RRSoy">
                                              <node concept="2OqwBi" id="6bvi$yscBww" role="3uHU7w">
                                                <node concept="37vLTw" id="6bvi$yscBwx" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="6bvi$yscBvd" resolve="deviceNode" />
                                                </node>
                                                <node concept="3TrcHB" id="6bvi$yscBwy" role="2OqNvi">
                                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                                </node>
                                              </node>
                                              <node concept="Xl_RD" id="6bvi$yscBwz" role="3uHU7B">
                                                <property role="Xl_RC" value="Can't connect to device " />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3uVAMA" id="6bvi$yscBw$" role="1zxBo5">
                                    <node concept="XOnhg" id="6bvi$yscBw_" role="1zc67B">
                                      <property role="3TUv4t" value="false" />
                                      <property role="TrG5h" value="e" />
                                      <node concept="nSUau" id="6bvi$yscBwA" role="1tU5fm">
                                        <node concept="3uibUv" id="6bvi$yscBwB" role="nSUat">
                                          <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="6bvi$yscBwC" role="1zc67A">
                                      <node concept="3clFbF" id="6bvi$yscBwD" role="3cqZAp">
                                        <node concept="2OqwBi" id="6bvi$yscBwE" role="3clFbG">
                                          <node concept="2OqwBi" id="6bvi$yscBwF" role="2Oq$k0">
                                            <node concept="10M0yZ" id="6bvi$yscBwG" role="2Oq$k0">
                                              <ref role="3cqZAo" to="6w4o:~DevicesFacade.Companion" resolve="Companion" />
                                              <ref role="1PxDUh" to="6w4o:~DevicesFacade" resolve="DevicesFacade" />
                                            </node>
                                            <node concept="liA8E" id="6bvi$yscBwH" role="2OqNvi">
                                              <ref role="37wK5l" to="6w4o:~DevicesFacade$Companion.getInstance()" resolve="getInstance" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="6bvi$yscBwI" role="2OqNvi">
                                            <ref role="37wK5l" to="6w4o:~DevicesFacade.invalidate(org.fbme.lib.iec61499.declarations.DeviceDeclaration)" resolve="invalidate" />
                                            <node concept="37vLTw" id="6bvi$yscBwJ" role="37wK5m">
                                              <ref role="3cqZAo" node="6bvi$yscBv$" resolve="device" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="RRSsy" id="6bvi$yscBwK" role="3cqZAp">
                                        <property role="RRSoG" value="gZ5fh_4/error" />
                                        <node concept="37vLTw" id="6bvi$yscBwL" role="RRSow">
                                          <ref role="3cqZAo" node="6bvi$yscBw_" resolve="e" />
                                        </node>
                                        <node concept="Xl_RD" id="6bvi$yscBwM" role="RRSoy">
                                          <property role="Xl_RC" value="on resource deployment" />
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
                    <node concept="2AHcQZ" id="6bvi$yscBwN" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6bvi$yscBwO" role="37wK5m">
                    <node concept="2WthIp" id="6bvi$yscBwP" role="2Oq$k0">
                      <ref role="32nkFo" node="6bvi$yscBuL" resolve="DeployResourceInDebugMode" />
                    </node>
                    <node concept="1DTwFV" id="6bvi$yscBwQ" role="2OqNvi">
                      <ref role="2WH_rO" node="6bvi$yscDwZ" resolve="project" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="6bvi$yscBwR" role="37wK5m">
                    <property role="Xl_RC" value="Deploying Resource" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6bvi$yscBwS" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~Task.queue()" resolve="queue" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6bvi$ysdd$A" role="3cqZAp" />
        <node concept="3cpWs8" id="6bvi$ysddxK" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$ysddxG" role="3cpWs9">
            <property role="TrG5h" value="debuggerTool" />
            <node concept="1xUVSX" id="6bvi$ysddxC" role="1tU5fm">
              <ref role="1xYkEM" node="10LywHcMGPf" resolve="Debugger" />
            </node>
            <node concept="2OqwBi" id="6bvi$ysddy2" role="33vP2m">
              <node concept="2OqwBi" id="6bvi$ysddxY" role="2Oq$k0">
                <node concept="2WthIp" id="6bvi$ysddxU" role="2Oq$k0" />
                <node concept="1DTwFV" id="6bvi$ysddxQ" role="2OqNvi">
                  <ref role="2WH_rO" node="6bvi$yscDwZ" resolve="project" />
                </node>
              </node>
              <node concept="LR4U6" id="6bvi$ysddy8" role="2OqNvi">
                <ref role="LR4U5" node="10LywHcMGPf" resolve="Debugger" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6bvi$ysddyo" role="3cqZAp" />
        <node concept="3cpWs8" id="6bvi$ysddzY" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$ysdd$6" role="3cpWs9">
            <property role="TrG5h" value="snapshot" />
            <node concept="3uibUv" id="6bvi$ysdd$4" role="1tU5fm">
              <ref role="3uigEE" to="672w:~DeclarationSnapshot" resolve="DeclarationSnapshot" />
            </node>
            <node concept="2YIFZM" id="6bvi$ysdd$2" role="33vP2m">
              <ref role="37wK5l" to="672w:~DeclarationSnapshot.create(org.fbme.lib.common.Declaration)" resolve="create" />
              <ref role="1Pybhc" to="672w:~DeclarationSnapshot" resolve="DeclarationSnapshot" />
              <node concept="37vLTw" id="6bvi$ysdd$0" role="37wK5m">
                <ref role="3cqZAo" node="6bvi$yscBvs" resolve="resourceDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6bvi$ysdd$e" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$ysdd$c" role="3cpWs9">
            <property role="TrG5h" value="snapshotDeclaration" />
            <node concept="3uibUv" id="6bvi$ysdd$a" role="1tU5fm">
              <ref role="3uigEE" to="7adg:~Declaration" resolve="Declaration" />
            </node>
            <node concept="2OqwBi" id="6bvi$ysdd$8" role="33vP2m">
              <node concept="37vLTw" id="6bvi$ysdd$q" role="2Oq$k0">
                <ref role="3cqZAo" node="6bvi$ysdd$6" resolve="snapshot" />
              </node>
              <node concept="liA8E" id="6bvi$ysdd$m" role="2OqNvi">
                <ref role="37wK5l" to="672w:~DeclarationSnapshot.getSnapshotDeclaration()" resolve="getSnapshotDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6bvi$ysdd$i" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$ysdd$g" role="3cpWs9">
            <property role="TrG5h" value="typeName" />
            <node concept="3uibUv" id="6bvi$ysdd$y" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~String" resolve="String" />
            </node>
            <node concept="2OqwBi" id="6bvi$ysdd$w" role="33vP2m">
              <node concept="37vLTw" id="6bvi$ysdd$u" role="2Oq$k0">
                <ref role="3cqZAo" node="6bvi$ysdd$c" resolve="snapshotDeclaration" />
              </node>
              <node concept="liA8E" id="6bvi$ysdd$s" role="2OqNvi">
                <ref role="37wK5l" to="7adg:~Declaration.getName()" resolve="getName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6bvi$ysddzG" role="3cqZAp" />
        <node concept="3cpWs8" id="6bvi$ysddzE" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$ysddzC" role="3cpWs9">
            <property role="TrG5h" value="debuggerPanelComponent" />
            <node concept="3uibUv" id="6bvi$ysddzA" role="1tU5fm">
              <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
            </node>
            <node concept="10Nm6u" id="6bvi$ysddzK" role="33vP2m" />
          </node>
        </node>
        <node concept="3clFbH" id="6bvi$ysddzI" role="3cqZAp" />
        <node concept="3cpWs8" id="6bvi$ysddzq" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$ysddzs" role="3cpWs9">
            <property role="TrG5h" value="resourceTypeDeclarationSnaphot" />
            <node concept="3uibUv" id="6bvi$ysddzo" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
            </node>
            <node concept="0kSF2" id="6bvi$ysddyg" role="33vP2m">
              <node concept="3uibUv" id="6bvi$ysddyc" role="0kSFW">
                <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
              </node>
              <node concept="37vLTw" id="6bvi$ysdd$$" role="0kSFX">
                <ref role="3cqZAo" node="6bvi$ysdd$c" resolve="snapshotDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6bvi$ysdd$C" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$ysdd$E" role="3cpWs9">
            <property role="TrG5h" value="resourceState" />
            <node concept="3uibUv" id="6bvi$ysdd$K" role="1tU5fm">
              <ref role="3uigEE" to="3l4b:~ResourceState" resolve="ResourceState" />
            </node>
            <node concept="2ShNRf" id="6bvi$ysddyk" role="33vP2m">
              <node concept="1pGfFk" id="6bvi$ysdd$I" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="3l4b:~ResourceState.&lt;init&gt;(org.fbme.lib.iec61499.declarations.ResourceDeclaration)" resolve="ResourceState" />
                <node concept="37vLTw" id="6bvi$ysdd$k" role="37wK5m">
                  <ref role="3cqZAo" node="6bvi$ysddzs" resolve="resourceTypeDeclarationSnaphot" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6bvi$ysddzg" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$ysddzi" role="3cpWs9">
            <property role="TrG5h" value="executionTrace" />
            <node concept="3uibUv" id="6bvi$ysddzm" role="1tU5fm">
              <ref role="3uigEE" to="m3bz:~ExecutionTrace" resolve="ExecutionTrace" />
            </node>
            <node concept="2ShNRf" id="6bvi$ysddy6" role="33vP2m">
              <node concept="1pGfFk" id="6bvi$ysddye" role="2ShVmc">
                <ref role="37wK5l" to="m3bz:~ExecutionTrace.&lt;init&gt;(org.fbme.debugger.common.state.State)" resolve="ExecutionTrace" />
                <node concept="37vLTw" id="6bvi$ysdd$o" role="37wK5m">
                  <ref role="3cqZAo" node="6bvi$ysdd$E" resolve="resourceState" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="ZL2uO6xnGw" role="3cqZAp" />
        <node concept="3cpWs8" id="ZL2uO6xsfa" role="3cqZAp">
          <node concept="3cpWsn" id="ZL2uO6xsfb" role="3cpWs9">
            <property role="TrG5h" value="explanationProducer" />
            <node concept="3uibUv" id="ZL2uO6xsfc" role="1tU5fm">
              <ref role="3uigEE" to="89ek:~ExplanationProducer" resolve="ExplanationProducer" />
            </node>
            <node concept="2ShNRf" id="ZL2uO6xsMW" role="33vP2m">
              <node concept="1pGfFk" id="ZL2uO6y9V2" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="89ek:~ExplanationProducer.&lt;init&gt;(org.fbme.debugger.common.trace.ExecutionTrace,org.fbme.lib.common.Declaration)" resolve="ExplanationProducer" />
                <node concept="37vLTw" id="ZL2uO6yaX4" role="37wK5m">
                  <ref role="3cqZAo" node="6bvi$ysddzi" resolve="executionTrace" />
                </node>
                <node concept="37vLTw" id="ZL2uO6yb1$" role="37wK5m">
                  <ref role="3cqZAo" node="6bvi$ysddzs" resolve="resourceTypeDeclarationSnaphot" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6bvi$ysddys" role="3cqZAp" />
        <node concept="3cpWs8" id="6bvi$ysdd$Q" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$ysddxW" role="3cpWs9">
            <property role="TrG5h" value="traceSynchronizer" />
            <node concept="3uibUv" id="6bvi$ysddxS" role="1tU5fm">
              <ref role="3uigEE" to="flkh:~RuntimeTraceSynchronizer" resolve="RuntimeTraceSynchronizer" />
            </node>
            <node concept="2ShNRf" id="6bvi$ysddzW" role="33vP2m">
              <node concept="1pGfFk" id="6bvi$ysdd$G" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="flkh:~RuntimeTraceSynchronizer.&lt;init&gt;(jetbrains.mps.project.Project,org.fbme.lib.iec61499.declarations.ResourceDeclaration,org.fbme.debugger.common.trace.ExecutionTrace)" resolve="RuntimeTraceSynchronizer" />
                <node concept="2OqwBi" id="6bvi$ysddzc" role="37wK5m">
                  <node concept="2WthIp" id="6bvi$ysddze" role="2Oq$k0" />
                  <node concept="1DTwFV" id="6bvi$ysddzk" role="2OqNvi">
                    <ref role="2WH_rO" node="6bvi$yscDwX" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="37vLTw" id="6bvi$ysddym" role="37wK5m">
                  <ref role="3cqZAo" node="6bvi$yscBvs" resolve="resourceDeclaration" />
                </node>
                <node concept="37vLTw" id="6dBZAJEDorh" role="37wK5m">
                  <ref role="3cqZAo" node="6bvi$ysddzi" resolve="executionTrace" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2M$4ifY8wJl" role="3cqZAp">
          <node concept="2OqwBi" id="2M$4ifY8xWK" role="3clFbG">
            <node concept="10M0yZ" id="2M$4ifY8xul" role="2Oq$k0">
              <ref role="3cqZAo" to="flkh:~RuntimeTraceSynchronizer.Companion" resolve="Companion" />
              <ref role="1PxDUh" to="flkh:~RuntimeTraceSynchronizer" resolve="RuntimeTraceSynchronizer" />
            </node>
            <node concept="liA8E" id="2M$4ifY8yn8" role="2OqNvi">
              <ref role="37wK5l" to="flkh:~RuntimeTraceSynchronizer$Companion.addTraceSynchronizer(org.fbme.lib.iec61499.declarations.ResourceDeclaration,org.fbme.debugger.RuntimeTraceSynchronizer)" resolve="addTraceSynchronizer" />
              <node concept="37vLTw" id="2M$4ifY8ypt" role="37wK5m">
                <ref role="3cqZAo" node="6bvi$yscBvs" resolve="resourceDeclaration" />
              </node>
              <node concept="37vLTw" id="2M$4ifY8yw0" role="37wK5m">
                <ref role="3cqZAo" node="6bvi$ysddxW" resolve="traceSynchronizer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7AhpHN80YjW" role="3cqZAp">
          <node concept="2OqwBi" id="7AhpHN80Zj0" role="3clFbG">
            <node concept="37vLTw" id="7AhpHN80YjU" role="2Oq$k0">
              <ref role="3cqZAo" node="6bvi$ysddxW" resolve="traceSynchronizer" />
            </node>
            <node concept="liA8E" id="7AhpHN80ZVB" role="2OqNvi">
              <ref role="37wK5l" to="flkh:~RuntimeTraceSynchronizer.startMonitoring()" resolve="startMonitoring" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1m$_aOiKo8A" role="3cqZAp" />
        <node concept="3cpWs8" id="7U3BhvtPtMx" role="3cqZAp">
          <node concept="3cpWsn" id="7U3BhvtPtMy" role="3cpWs9">
            <property role="TrG5h" value="debuggerPanel" />
            <node concept="3uibUv" id="7U3BhvtPtMz" role="1tU5fm">
              <ref role="3uigEE" to="7zqy:~DebuggerPanel" resolve="DebuggerPanel" />
            </node>
            <node concept="2ShNRf" id="7U3BhvtPuvz" role="33vP2m">
              <node concept="1pGfFk" id="7U3BhvtPwsT" role="2ShVmc">
                <property role="373rjd" value="true" />
                <ref role="37wK5l" to="7zqy:~DebuggerPanel.&lt;init&gt;(com.intellij.openapi.project.Project,jetbrains.mps.project.Project,org.fbme.debugger.common.trace.ExecutionTrace,org.fbme.lib.common.Declaration,org.fbme.lib.common.Declaration,org.fbme.debugger.explanation.ExplanationProducer,org.fbme.ide.richediting.inspections.Inspector)" resolve="DebuggerPanel" />
                <node concept="2OqwBi" id="7U3BhvtPwuu" role="37wK5m">
                  <node concept="2WthIp" id="7U3BhvtPwux" role="2Oq$k0" />
                  <node concept="1DTwFV" id="7U3BhvtPwuz" role="2OqNvi">
                    <ref role="2WH_rO" node="6bvi$yscDwZ" resolve="project" />
                  </node>
                </node>
                <node concept="2OqwBi" id="7O51BCbw7ye" role="37wK5m">
                  <node concept="2WthIp" id="7O51BCbw7yh" role="2Oq$k0" />
                  <node concept="1DTwFV" id="7O51BCbw7yj" role="2OqNvi">
                    <ref role="2WH_rO" node="6bvi$yscDwX" resolve="mpsProject" />
                  </node>
                </node>
                <node concept="37vLTw" id="7U3BhvtPwAK" role="37wK5m">
                  <ref role="3cqZAo" node="6bvi$ysddzi" resolve="executionTrace" />
                </node>
                <node concept="37vLTw" id="7U3BhvtPwGl" role="37wK5m">
                  <ref role="3cqZAo" node="6bvi$ysddzs" resolve="resourceTypeDeclarationSnaphot" />
                </node>
                <node concept="37vLTw" id="76fFiPktdlk" role="37wK5m">
                  <ref role="3cqZAo" node="6bvi$yscBvs" resolve="resourceDeclaration" />
                </node>
                <node concept="37vLTw" id="7U3BhvtPwNo" role="37wK5m">
                  <ref role="3cqZAo" node="ZL2uO6xsfb" resolve="explanationProducer" />
                </node>
                <node concept="37vLTw" id="2YJdAbwhq_6" role="37wK5m">
                  <ref role="3cqZAo" node="5A2K7QhVlKM" resolve="inspector" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3uSIVReec3u" role="3cqZAp" />
        <node concept="3clFbF" id="7f479GGNnDY" role="3cqZAp">
          <node concept="2OqwBi" id="7f479GGNoKS" role="3clFbG">
            <node concept="37vLTw" id="7f479GGNnDW" role="2Oq$k0">
              <ref role="3cqZAo" node="6bvi$ysddxG" resolve="debuggerTool" />
            </node>
            <node concept="2XshWL" id="7f479GGNpvr" role="2OqNvi">
              <ref role="2WH_rO" node="10LywHcMT1w" resolve="addPanel" />
              <node concept="37vLTw" id="7f479GGNsrt" role="2XxRq1">
                <ref role="3cqZAo" node="6bvi$yscBvs" resolve="resourceDeclaration" />
              </node>
              <node concept="37vLTw" id="7f479GGNrdt" role="2XxRq1">
                <ref role="3cqZAo" node="7U3BhvtPtMy" resolve="debuggerPanel" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7f479GGNreF" role="3cqZAp" />
        <node concept="3clFbF" id="6bvi$ysddzS" role="3cqZAp">
          <node concept="37vLTI" id="6bvi$ysddzQ" role="3clFbG">
            <node concept="2OqwBi" id="6bvi$ysddzO" role="37vLTx">
              <node concept="37vLTw" id="6bvi$ysdd$O" role="2Oq$k0">
                <ref role="3cqZAo" node="7U3BhvtPtMy" resolve="debuggerPanel" />
              </node>
              <node concept="liA8E" id="6bvi$ysddzM" role="2OqNvi">
                <ref role="37wK5l" to="7zqy:~DebuggerPanel.getToolWindowPanel()" resolve="getToolWindowPanel" />
              </node>
            </node>
            <node concept="37vLTw" id="6bvi$ysddzU" role="37vLTJ">
              <ref role="3cqZAo" node="6bvi$ysddzC" resolve="debuggerPanelComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5GqVh438FLF" role="3cqZAp" />
        <node concept="1gVbGN" id="6bvi$ysddyq" role="3cqZAp">
          <node concept="3y3z36" id="6bvi$ysddyA" role="1gVkn0">
            <node concept="10Nm6u" id="6bvi$ysddy$" role="3uHU7w" />
            <node concept="37vLTw" id="6bvi$ysddyy" role="3uHU7B">
              <ref role="3cqZAo" node="6bvi$ysddzC" resolve="debuggerPanelComponent" />
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="6bvi$ysddyu" role="3cqZAp" />
        <node concept="3clFbF" id="6bvi$ysddyI" role="3cqZAp">
          <node concept="2OqwBi" id="6bvi$ysddyG" role="3clFbG">
            <node concept="37vLTw" id="6bvi$ysddyE" role="2Oq$k0">
              <ref role="3cqZAo" node="6bvi$ysddxG" resolve="debuggerTool" />
            </node>
            <node concept="liA8E" id="6bvi$ysddyC" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.openTool(boolean)" resolve="openTool" />
              <node concept="3clFbT" id="6bvi$ysddyQ" role="37wK5m">
                <property role="3clFbU" value="true" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6bvi$ysddyO" role="3cqZAp">
          <node concept="2OqwBi" id="6bvi$ysddyM" role="3clFbG">
            <node concept="37vLTw" id="6bvi$ysddyK" role="2Oq$k0">
              <ref role="3cqZAo" node="6bvi$ysddxG" resolve="debuggerTool" />
            </node>
            <node concept="2wDMaC" id="6bvi$ysddyY" role="2OqNvi">
              <node concept="2BLXyY" id="6bvi$ysddyW" role="11Dce$">
                <node concept="37vLTw" id="6bvi$ysddyU" role="2BLOvw">
                  <ref role="3cqZAo" node="6bvi$ysddzC" resolve="debuggerPanelComponent" />
                </node>
                <node concept="37vLTw" id="6bvi$ysddyS" role="2BLOvx">
                  <ref role="3cqZAo" node="6bvi$ysdd$g" resolve="typeName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6bvi$ysddz6" role="3cqZAp">
          <node concept="2OqwBi" id="6bvi$ysddz4" role="3clFbG">
            <node concept="37vLTw" id="6bvi$ysddz2" role="2Oq$k0">
              <ref role="3cqZAo" node="6bvi$ysddxG" resolve="debuggerTool" />
            </node>
            <node concept="1kDqZ6" id="6bvi$ysddz0" role="2OqNvi">
              <node concept="37vLTw" id="6bvi$ysddxO" role="3PF$jx">
                <ref role="3cqZAo" node="6bvi$ysddzC" resolve="debuggerPanelComponent" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6bvi$ysddxM" role="3cqZAp">
          <node concept="2OqwBi" id="6bvi$ysddxI" role="3clFbG">
            <node concept="37vLTw" id="6bvi$ysddxE" role="2Oq$k0">
              <ref role="3cqZAo" node="6bvi$ysddxG" resolve="debuggerTool" />
            </node>
            <node concept="liA8E" id="6bvi$ysddy4" role="2OqNvi">
              <ref role="37wK5l" to="71xd:~BaseTool.setSelectedComponent(javax.swing.JComponent)" resolve="setSelectedComponent" />
              <node concept="37vLTw" id="6bvi$ysddy0" role="37wK5m">
                <ref role="3cqZAo" node="6bvi$ysddzC" resolve="debuggerPanelComponent" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="6bvi$ysdb1K" role="tmbBb">
      <node concept="3clFbS" id="6bvi$ysdb1L" role="2VODD2">
        <node concept="3clFbF" id="6bvi$ysdbUN" role="3cqZAp">
          <node concept="2OqwBi" id="6bvi$ysdbUO" role="3clFbG">
            <node concept="2OqwBi" id="6bvi$ysdbUP" role="2Oq$k0">
              <node concept="2WthIp" id="6bvi$ysdbUQ" role="2Oq$k0" />
              <node concept="3gHZIF" id="6bvi$ysdbUR" role="2OqNvi">
                <ref role="2WH_rO" node="6bvi$yscDwT" resolve="node" />
              </node>
            </node>
            <node concept="1mIQ4w" id="6bvi$ysdbUS" role="2OqNvi">
              <node concept="chp4Y" id="6bvi$ysdbUT" role="cj9EA">
                <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="sE7Ow" id="6bvi$ysdmt1">
    <property role="TrG5h" value="StopResourceInDebugMode" />
    <property role="2uzpH1" value="Stop Resource" />
    <node concept="2S4$dB" id="6bvi$ysdmAf" role="1NuT2Z">
      <property role="TrG5h" value="node" />
      <node concept="3Tm6S6" id="6bvi$ysdmAg" role="1B3o_S" />
      <node concept="1oajcY" id="6bvi$ysdmAh" role="1oa70y" />
      <node concept="3Tqbb2" id="6bvi$ysdmAi" role="1tU5fm" />
    </node>
    <node concept="1DS2jV" id="6bvi$ysdmAj" role="1NuT2Z">
      <property role="TrG5h" value="mpsProject" />
      <ref role="1DUlNI" to="qq03:~MPSCommonDataKeys.MPS_PROJECT" resolve="MPS_PROJECT" />
      <node concept="1oajcY" id="6bvi$ysdmAk" role="1oa70y" />
    </node>
    <node concept="1DS2jV" id="6bvi$ysdmAl" role="1NuT2Z">
      <property role="TrG5h" value="project" />
      <ref role="1DUlNI" to="qkt:~CommonDataKeys.PROJECT" resolve="PROJECT" />
      <node concept="1oajcY" id="6bvi$ysdmAm" role="1oa70y" />
    </node>
    <node concept="tnohg" id="6bvi$ysdmt2" role="tncku">
      <node concept="3clFbS" id="6bvi$ysdmt3" role="2VODD2">
        <node concept="3cpWs8" id="6bvi$ysdnp3" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$ysdnp4" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="6bvi$ysdnp5" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
            </node>
            <node concept="1PxgMI" id="6bvi$ysdnp6" role="33vP2m">
              <node concept="chp4Y" id="6bvi$ysdnp7" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
              </node>
              <node concept="2OqwBi" id="6bvi$ysdnp8" role="1m5AlR">
                <node concept="2WthIp" id="6bvi$ysdnp9" role="2Oq$k0" />
                <node concept="3gHZIF" id="6bvi$ysdnpa" role="2OqNvi">
                  <ref role="2WH_rO" node="6bvi$ysdmAf" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6bvi$ysdnpb" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$ysdnpc" role="3cpWs9">
            <property role="TrG5h" value="deviceNode" />
            <node concept="3Tqbb2" id="6bvi$ysdnpd" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
            </node>
            <node concept="1PxgMI" id="6bvi$ysdnpe" role="33vP2m">
              <property role="1BlNFB" value="true" />
              <node concept="chp4Y" id="6bvi$ysdnpf" role="3oSUPX">
                <ref role="cht4Q" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
              </node>
              <node concept="2OqwBi" id="6bvi$ysdnpg" role="1m5AlR">
                <node concept="1mfA1w" id="6bvi$ysdnph" role="2OqNvi" />
                <node concept="37vLTw" id="6bvi$ysdnpi" role="2Oq$k0">
                  <ref role="3cqZAo" node="6bvi$ysdnp4" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6bvi$ysdnpj" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$ysdnpk" role="3cpWs9">
            <property role="TrG5h" value="repository" />
            <node concept="3uibUv" id="6bvi$ysdnpl" role="1tU5fm">
              <ref role="3uigEE" to="uvki:~PlatformRepository" resolve="PlatformRepository" />
            </node>
            <node concept="2YIFZM" id="6bvi$ysdnpm" role="33vP2m">
              <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
              <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
              <node concept="2OqwBi" id="6bvi$ysdnpn" role="37wK5m">
                <node concept="2WthIp" id="6bvi$ysdnpo" role="2Oq$k0" />
                <node concept="1DTwFV" id="6bvi$ysdnpp" role="2OqNvi">
                  <ref role="2WH_rO" node="6bvi$ysdmAj" resolve="mpsProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6bvi$ysdnpq" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$ysdnpr" role="3cpWs9">
            <property role="TrG5h" value="resourceDeclaration" />
            <node concept="3uibUv" id="6bvi$ysdnps" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
            </node>
            <node concept="2OqwBi" id="6bvi$ysdnpt" role="33vP2m">
              <node concept="37vLTw" id="6bvi$ysdnpu" role="2Oq$k0">
                <ref role="3cqZAo" node="6bvi$ysdnpk" resolve="repository" />
              </node>
              <node concept="liA8E" id="6bvi$ysdnpv" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                <node concept="37vLTw" id="6bvi$ysdnpw" role="37wK5m">
                  <ref role="3cqZAo" node="6bvi$ysdnp4" resolve="node" />
                </node>
                <node concept="3VsKOn" id="6bvi$ysdnpx" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6bvi$ysdnpy" role="3cqZAp">
          <node concept="3cpWsn" id="6bvi$ysdnpz" role="3cpWs9">
            <property role="TrG5h" value="device" />
            <node concept="3uibUv" id="6bvi$ysdnp$" role="1tU5fm">
              <ref role="3uigEE" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
            </node>
            <node concept="2OqwBi" id="6bvi$ysdnp_" role="33vP2m">
              <node concept="37vLTw" id="6bvi$ysdnpA" role="2Oq$k0">
                <ref role="3cqZAo" node="6bvi$ysdnpk" resolve="repository" />
              </node>
              <node concept="liA8E" id="6bvi$ysdnpB" role="2OqNvi">
                <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                <node concept="37vLTw" id="6bvi$ysdnpC" role="37wK5m">
                  <ref role="3cqZAo" node="6bvi$ysdnpc" resolve="deviceNode" />
                </node>
                <node concept="3VsKOn" id="6bvi$ysdnpD" role="37wK5m">
                  <ref role="3VsUkX" to="cwd8:~DeviceDeclaration" resolve="DeviceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6bvi$ysdnpE" role="3cqZAp">
          <node concept="2OqwBi" id="6bvi$ysdnpF" role="3clFbG">
            <node concept="2ShNRf" id="6bvi$ysdnpG" role="2Oq$k0">
              <node concept="YeOm9" id="6bvi$ysdnpH" role="2ShVmc">
                <node concept="1Y3b0j" id="6bvi$ysdnpI" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="xygl:~Task$Backgroundable" resolve="Backgroundable" />
                  <ref role="37wK5l" to="xygl:~Task$Backgroundable.&lt;init&gt;(com.intellij.openapi.project.Project,java.lang.String)" resolve="Backgroundable" />
                  <node concept="3Tm1VV" id="6bvi$ysdnpJ" role="1B3o_S" />
                  <node concept="3clFb_" id="6bvi$ysdnpK" role="jymVt">
                    <property role="TrG5h" value="run" />
                    <node concept="3Tm1VV" id="6bvi$ysdnpL" role="1B3o_S" />
                    <node concept="3cqZAl" id="6bvi$ysdnpM" role="3clF45" />
                    <node concept="37vLTG" id="6bvi$ysdnpN" role="3clF46">
                      <property role="TrG5h" value="indicator" />
                      <node concept="3uibUv" id="6bvi$ysdnpO" role="1tU5fm">
                        <ref role="3uigEE" to="xygl:~ProgressIndicator" resolve="ProgressIndicator" />
                      </node>
                      <node concept="2AHcQZ" id="6bvi$ysdnpP" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="6bvi$ysdnpQ" role="3clF47">
                      <node concept="3clFbF" id="6bvi$ysdnpR" role="3cqZAp">
                        <node concept="2OqwBi" id="6bvi$ysdnpS" role="3clFbG">
                          <node concept="2OqwBi" id="6bvi$ysdnpT" role="2Oq$k0">
                            <node concept="2OqwBi" id="6bvi$ysdnpU" role="2Oq$k0">
                              <node concept="2WthIp" id="6bvi$ysdnpV" role="2Oq$k0" />
                              <node concept="1DTwFV" id="6bvi$ysdnpW" role="2OqNvi">
                                <ref role="2WH_rO" node="6bvi$ysdmAj" resolve="mpsProject" />
                              </node>
                            </node>
                            <node concept="liA8E" id="6bvi$ysdnpX" role="2OqNvi">
                              <ref role="37wK5l" to="z1c4:~Project.getModelAccess()" resolve="getModelAccess" />
                            </node>
                          </node>
                          <node concept="liA8E" id="6bvi$ysdnpY" role="2OqNvi">
                            <ref role="37wK5l" to="lui2:~ModelAccess.runReadAction(java.lang.Runnable)" resolve="runReadAction" />
                            <node concept="1bVj0M" id="6bvi$ysdnpZ" role="37wK5m">
                              <node concept="3clFbS" id="6bvi$ysdnq0" role="1bW5cS">
                                <node concept="3J1_TO" id="6bvi$ysdnq1" role="3cqZAp">
                                  <node concept="3clFbS" id="6bvi$ysdnq2" role="1zxBo7">
                                    <node concept="3cpWs8" id="6bvi$ysdnq3" role="3cqZAp">
                                      <node concept="3cpWsn" id="6bvi$ysdnq4" role="3cpWs9">
                                        <property role="TrG5h" value="connection" />
                                        <node concept="3uibUv" id="6bvi$ysdnq5" role="1tU5fm">
                                          <ref role="3uigEE" to="6w4o:~DeviceConnection" resolve="DeviceConnection" />
                                        </node>
                                        <node concept="2OqwBi" id="6bvi$ysdnq6" role="33vP2m">
                                          <node concept="2OqwBi" id="6bvi$ysdnq7" role="2Oq$k0">
                                            <node concept="10M0yZ" id="6bvi$ysdnq8" role="2Oq$k0">
                                              <ref role="1PxDUh" to="6w4o:~DevicesFacade" resolve="DevicesFacade" />
                                              <ref role="3cqZAo" to="6w4o:~DevicesFacade.Companion" resolve="Companion" />
                                            </node>
                                            <node concept="liA8E" id="6bvi$ysdnq9" role="2OqNvi">
                                              <ref role="37wK5l" to="6w4o:~DevicesFacade$Companion.getInstance()" resolve="getInstance" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="6bvi$ysdnqa" role="2OqNvi">
                                            <ref role="37wK5l" to="6w4o:~DevicesFacade.attach(org.fbme.lib.iec61499.declarations.DeviceDeclaration)" resolve="attach" />
                                            <node concept="37vLTw" id="6bvi$ysdnqb" role="37wK5m">
                                              <ref role="3cqZAo" node="6bvi$ysdnpz" resolve="device" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbJ" id="6bvi$ysdnqc" role="3cqZAp">
                                      <node concept="3clFbS" id="6bvi$ysdnqd" role="3clFbx">
                                        <node concept="3clFbF" id="6bvi$ysdnqe" role="3cqZAp">
                                          <node concept="2OqwBi" id="6bvi$ysdnqf" role="3clFbG">
                                            <node concept="37vLTw" id="6bvi$ysdnqg" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6bvi$ysdnq4" resolve="connection" />
                                            </node>
                                            <node concept="liA8E" id="6bvi$ysdnqh" role="2OqNvi">
                                              <ref role="37wK5l" to="6w4o:~DeviceConnection.killResource(org.jetbrains.mps.openapi.model.SNode)" resolve="killResource" />
                                              <node concept="37vLTw" id="6bvi$ysdnqi" role="37wK5m">
                                                <ref role="3cqZAo" node="6bvi$ysdnp4" resolve="node" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                        <node concept="3clFbF" id="6bvi$ysdnqj" role="3cqZAp">
                                          <node concept="2OqwBi" id="6bvi$ysdnqk" role="3clFbG">
                                            <node concept="37vLTw" id="6bvi$ysdnql" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6bvi$ysdnq4" resolve="connection" />
                                            </node>
                                            <node concept="liA8E" id="6bvi$ysdnqm" role="2OqNvi">
                                              <ref role="37wK5l" to="6w4o:~DeviceConnection.deleteResource(org.jetbrains.mps.openapi.model.SNode)" resolve="deleteResource" />
                                              <node concept="37vLTw" id="6bvi$ysdnqn" role="37wK5m">
                                                <ref role="3cqZAo" node="6bvi$ysdnp4" resolve="node" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3y3z36" id="6bvi$ysdnqo" role="3clFbw">
                                        <node concept="10Nm6u" id="6bvi$ysdnqp" role="3uHU7w" />
                                        <node concept="37vLTw" id="6bvi$ysdnqq" role="3uHU7B">
                                          <ref role="3cqZAo" node="6bvi$ysdnq4" resolve="connection" />
                                        </node>
                                      </node>
                                      <node concept="9aQIb" id="6bvi$ysdnqr" role="9aQIa">
                                        <node concept="3clFbS" id="6bvi$ysdnqs" role="9aQI4">
                                          <node concept="RRSsy" id="6bvi$ysdnqt" role="3cqZAp">
                                            <property role="RRSoG" value="gZ5fh_4/error" />
                                            <node concept="3cpWs3" id="6bvi$ysdnqu" role="RRSoy">
                                              <node concept="2OqwBi" id="6bvi$ysdnqv" role="3uHU7w">
                                                <node concept="37vLTw" id="6bvi$ysdnqw" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="6bvi$ysdnpc" resolve="deviceNode" />
                                                </node>
                                                <node concept="3TrcHB" id="6bvi$ysdnqx" role="2OqNvi">
                                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                                </node>
                                              </node>
                                              <node concept="Xl_RD" id="6bvi$ysdnqy" role="3uHU7B">
                                                <property role="Xl_RC" value="Can't connect to device " />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3uVAMA" id="6bvi$ysdnqz" role="1zxBo5">
                                    <node concept="XOnhg" id="6bvi$ysdnq$" role="1zc67B">
                                      <property role="3TUv4t" value="false" />
                                      <property role="TrG5h" value="e" />
                                      <node concept="nSUau" id="6bvi$ysdnq_" role="1tU5fm">
                                        <node concept="3uibUv" id="6bvi$ysdnqA" role="nSUat">
                                          <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="6bvi$ysdnqB" role="1zc67A">
                                      <node concept="3clFbF" id="6bvi$ysdnqC" role="3cqZAp">
                                        <node concept="2OqwBi" id="6bvi$ysdnqD" role="3clFbG">
                                          <node concept="2OqwBi" id="6bvi$ysdnqE" role="2Oq$k0">
                                            <node concept="10M0yZ" id="6bvi$ysdnqF" role="2Oq$k0">
                                              <ref role="3cqZAo" to="6w4o:~DevicesFacade.Companion" resolve="Companion" />
                                              <ref role="1PxDUh" to="6w4o:~DevicesFacade" resolve="DevicesFacade" />
                                            </node>
                                            <node concept="liA8E" id="6bvi$ysdnqG" role="2OqNvi">
                                              <ref role="37wK5l" to="6w4o:~DevicesFacade$Companion.getInstance()" resolve="getInstance" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="6bvi$ysdnqH" role="2OqNvi">
                                            <ref role="37wK5l" to="6w4o:~DevicesFacade.invalidate(org.fbme.lib.iec61499.declarations.DeviceDeclaration)" resolve="invalidate" />
                                            <node concept="37vLTw" id="6bvi$ysdnqI" role="37wK5m">
                                              <ref role="3cqZAo" node="6bvi$ysdnpz" resolve="device" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="RRSsy" id="6bvi$ysdnqJ" role="3cqZAp">
                                        <property role="RRSoG" value="gZ5fh_4/error" />
                                        <node concept="37vLTw" id="6bvi$ysdnqK" role="RRSow">
                                          <ref role="3cqZAo" node="6bvi$ysdnq$" resolve="e" />
                                        </node>
                                        <node concept="Xl_RD" id="6bvi$ysdnqL" role="RRSoy">
                                          <property role="Xl_RC" value="on resource stopping" />
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
                    <node concept="2AHcQZ" id="6bvi$ysdnqM" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="6bvi$ysdnqN" role="37wK5m">
                    <node concept="2WthIp" id="6bvi$ysdnqO" role="2Oq$k0">
                      <ref role="32nkFo" node="6bvi$ysdmt1" resolve="StopResourceInDebugMode" />
                    </node>
                    <node concept="1DTwFV" id="6bvi$ysdnqP" role="2OqNvi">
                      <ref role="2WH_rO" node="6bvi$ysdmAl" resolve="project" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="6bvi$ysdnqQ" role="37wK5m">
                    <property role="Xl_RC" value="Stopping Resource" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6bvi$ysdnqR" role="2OqNvi">
              <ref role="37wK5l" to="xygl:~Task.queue()" resolve="queue" />
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4WlA_fFjca4" role="3cqZAp">
          <node concept="3cpWsn" id="4WlA_fFjca5" role="3cpWs9">
            <property role="TrG5h" value="traceSynchronizer" />
            <node concept="3uibUv" id="4WlA_fFjca6" role="1tU5fm">
              <ref role="3uigEE" to="flkh:~RuntimeTraceSynchronizer" resolve="RuntimeTraceSynchronizer" />
            </node>
            <node concept="2OqwBi" id="2M$4ifY8_sa" role="33vP2m">
              <node concept="10M0yZ" id="2M$4ifY8_mP" role="2Oq$k0">
                <ref role="3cqZAo" to="flkh:~RuntimeTraceSynchronizer.Companion" resolve="Companion" />
                <ref role="1PxDUh" to="flkh:~RuntimeTraceSynchronizer" resolve="RuntimeTraceSynchronizer" />
              </node>
              <node concept="liA8E" id="2M$4ifY8_F2" role="2OqNvi">
                <ref role="37wK5l" to="flkh:~RuntimeTraceSynchronizer$Companion.getInstance(org.fbme.lib.iec61499.declarations.ResourceDeclaration)" resolve="getInstance" />
                <node concept="37vLTw" id="2M$4ifY8_Hg" role="37wK5m">
                  <ref role="3cqZAo" node="6bvi$ysdnpr" resolve="resourceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2M$4ifY8BcJ" role="3cqZAp">
          <node concept="2OqwBi" id="2M$4ifY8BO4" role="3clFbG">
            <node concept="37vLTw" id="2M$4ifY8BcH" role="2Oq$k0">
              <ref role="3cqZAo" node="4WlA_fFjca5" resolve="traceSynchronizer" />
            </node>
            <node concept="liA8E" id="2M$4ifY8Cae" role="2OqNvi">
              <ref role="37wK5l" to="flkh:~RuntimeTraceSynchronizer.endMonitoring()" resolve="endMonitoring" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2M$4ifY8FAU" role="3cqZAp">
          <node concept="2OqwBi" id="2M$4ifY8FAW" role="3clFbG">
            <node concept="10M0yZ" id="2M$4ifY8FAX" role="2Oq$k0">
              <ref role="1PxDUh" to="flkh:~RuntimeTraceSynchronizer" resolve="RuntimeTraceSynchronizer" />
              <ref role="3cqZAo" to="flkh:~RuntimeTraceSynchronizer.Companion" resolve="Companion" />
            </node>
            <node concept="liA8E" id="2M$4ifY8FAY" role="2OqNvi">
              <ref role="37wK5l" to="flkh:~RuntimeTraceSynchronizer$Companion.removeTraceSynchronizer(org.fbme.lib.iec61499.declarations.ResourceDeclaration)" resolve="removeTraceSynchronizer" />
              <node concept="37vLTw" id="2M$4ifY8FAZ" role="37wK5m">
                <ref role="3cqZAo" node="6bvi$ysdnpr" resolve="resourceDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="1uimsQTZKpF" role="3cqZAp" />
        <node concept="3cpWs8" id="1uimsQU0pxj" role="3cqZAp">
          <node concept="3cpWsn" id="1uimsQU0pxk" role="3cpWs9">
            <property role="TrG5h" value="debuggerTool" />
            <node concept="1xUVSX" id="1uimsQU0pxl" role="1tU5fm">
              <ref role="1xYkEM" node="10LywHcMGPf" resolve="Debugger" />
            </node>
            <node concept="2OqwBi" id="1uimsQU0pxm" role="33vP2m">
              <node concept="2OqwBi" id="1uimsQU0pxn" role="2Oq$k0">
                <node concept="2WthIp" id="1uimsQU0pxo" role="2Oq$k0" />
                <node concept="1DTwFV" id="1uimsQU0pxp" role="2OqNvi">
                  <ref role="2WH_rO" node="6bvi$ysdmAl" resolve="project" />
                </node>
              </node>
              <node concept="LR4U6" id="1uimsQU0pxq" role="2OqNvi">
                <ref role="LR4U5" node="10LywHcMGPf" resolve="Debugger" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="7f479GGNv7m" role="3cqZAp" />
        <node concept="3cpWs8" id="7f479GGNxkX" role="3cqZAp">
          <node concept="3cpWsn" id="7f479GGNxkY" role="3cpWs9">
            <property role="TrG5h" value="panel" />
            <node concept="3uibUv" id="7f479GGNxkZ" role="1tU5fm">
              <ref role="3uigEE" to="7zqy:~DebuggerPanel" resolve="DebuggerPanel" />
            </node>
            <node concept="2OqwBi" id="7f479GGNy7u" role="33vP2m">
              <node concept="37vLTw" id="7f479GGNxZ3" role="2Oq$k0">
                <ref role="3cqZAo" node="1uimsQU0pxk" resolve="debuggerTool" />
              </node>
              <node concept="2XshWL" id="7f479GGNypI" role="2OqNvi">
                <ref role="2WH_rO" node="3iKHL5MqMkI" resolve="getPanel" />
                <node concept="37vLTw" id="7f479GGNyrB" role="2XxRq1">
                  <ref role="3cqZAo" node="6bvi$ysdnpr" resolve="resourceDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3pR0omkCUV_" role="3cqZAp">
          <node concept="2OqwBi" id="3pR0omkCVKw" role="3clFbG">
            <node concept="37vLTw" id="3pR0omkCUVz" role="2Oq$k0">
              <ref role="3cqZAo" node="7f479GGNxkY" resolve="panel" />
            </node>
            <node concept="liA8E" id="3pR0omkCWnB" role="2OqNvi">
              <ref role="37wK5l" to="7zqy:~DebuggerPanel.initUI()" resolve="initUI" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2ScWuX" id="6bvi$ysdmtm" role="tmbBb">
      <node concept="3clFbS" id="6bvi$ysdmtn" role="2VODD2">
        <node concept="3clFbF" id="6bvi$ysdmZ_" role="3cqZAp">
          <node concept="2OqwBi" id="6bvi$ysdmZA" role="3clFbG">
            <node concept="2OqwBi" id="6bvi$ysdmZB" role="2Oq$k0">
              <node concept="2WthIp" id="6bvi$ysdmZC" role="2Oq$k0" />
              <node concept="3gHZIF" id="6bvi$ysdmZD" role="2OqNvi">
                <ref role="2WH_rO" node="6bvi$ysdmAf" resolve="node" />
              </node>
            </node>
            <node concept="1mIQ4w" id="6bvi$ysdmZE" role="2OqNvi">
              <node concept="chp4Y" id="6bvi$ysdmZF" role="cj9EA">
                <ref role="cht4Q" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="tC5Ba" id="6cA57nYRFvp">
    <property role="TrG5h" value="DebuggerActions" />
    <node concept="tT9cl" id="6cA57nYRFvr" role="2f5YQi">
      <ref role="tU$_T" to="5z5t:3DiEZ8TON84" resolve="IEC61499Actions" />
      <ref role="2f8Tey" to="5z5t:6cA57nYRFv1" resolve="debug" />
    </node>
    <node concept="ftmFs" id="6cA57nYSNGl" role="ftER_">
      <node concept="tCFHf" id="6cA57nYSNGo" role="ftvYc">
        <ref role="tCJdB" node="6bvi$yscBuL" resolve="DeployResourceInDebugMode" />
      </node>
      <node concept="tCFHf" id="6cA57nYSNGt" role="ftvYc">
        <ref role="tCJdB" node="6bvi$ysdmt1" resolve="StopResourceInDebugMode" />
      </node>
    </node>
  </node>
</model>

