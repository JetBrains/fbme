<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:699109bf-cdf4-48ce-a488-660342f09df8(main@generator)">
  <persistence version="9" />
  <languages>
    <use id="fa13cc63-c476-4d46-9c96-d53670abe7bc" name="de.itemis.mps.editor.diagram" version="0" />
    <use id="7a5dda62-9140-4668-ab76-d5ed1746f2b2" name="jetbrains.mps.lang.typesystem" version="1" />
    <devkit ref="a2eb3a43-fcc2-4200-80dc-c60110c4862d(jetbrains.mps.devkit.templates)" />
  </languages>
  <imports>
    <import index="g3qn" ref="r:9a144fca-becd-4385-a025-398ace28742a(mps.lang.meta.editor.structure)" />
    <import index="tpee" ref="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tpc2" ref="r:00000000-0000-4000-0000-011c8959029e(jetbrains.mps.lang.editor.structure)" />
    <import index="tpcb" ref="r:00000000-0000-4000-0000-011c89590297(jetbrains.mps.lang.editor.behavior)" />
    <import index="qvne" ref="r:8ff33705-85bf-4855-805c-06d68fbe233c(jetbrains.mps.editor.runtime.descriptor)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="tpc3" ref="r:00000000-0000-4000-0000-011c8959029f(jetbrains.mps.lang.editor.generator.baseLanguage.template.main@generator)" />
    <import index="kcid" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cellLayout(MPS.Editor/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="tpcn" ref="r:00000000-0000-4000-0000-011c8959028b(jetbrains.mps.lang.structure.behavior)" implicit="true" />
    <import index="tpce" ref="r:00000000-0000-4000-0000-011c89590292(jetbrains.mps.lang.structure.structure)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1402906326895675325" name="jetbrains.mps.lang.editor.structure.CellActionMap_FunctionParm_selectedNode" flags="nn" index="0IXxy" />
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1176897764478" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeFactory" flags="in" index="4$FPG" />
      <concept id="1597643335227097138" name="jetbrains.mps.lang.editor.structure.QueryFunctionParameter_TransformationMenu_node" flags="ng" index="7Obwk" />
      <concept id="6516520003787916624" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Condition" flags="ig" index="27VH4U" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1176897874615" name="nodeFactory" index="4_6I_" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
        <child id="1233141163694" name="separatorStyle" index="sWeuL" />
      </concept>
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1233148810477" name="jetbrains.mps.lang.editor.structure.InlineStyleDeclaration" flags="ng" index="tppnM" />
      <concept id="4242538589859161874" name="jetbrains.mps.lang.editor.structure.ExplicitHintsSpecification" flags="ng" index="2w$q5c" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="8329266386016608055" name="jetbrains.mps.lang.editor.structure.ApproveDelete_Operation" flags="ng" index="2xy62i">
        <child id="8329266386016685951" name="editorContext" index="2xHN3q" />
        <child id="8979250711607012232" name="cellSelector" index="3a7HXU" />
      </concept>
      <concept id="3547227755871693971" name="jetbrains.mps.lang.editor.structure.PredefinedSelector" flags="ng" index="2B6iha">
        <property id="2162403111523065396" name="cellId" index="1lyBwo" />
      </concept>
      <concept id="1638911550608610798" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_Execute" flags="ig" index="IWg2L" />
      <concept id="1638911550608610278" name="jetbrains.mps.lang.editor.structure.TransformationMenuPart_Action" flags="ng" index="IWgqT">
        <child id="6202297022026447496" name="canExecuteFunction" index="2jiSrf" />
        <child id="1638911550608610281" name="executeFunction" index="IWgqQ" />
        <child id="5692353713941573325" name="textFunction" index="1hCUd6" />
      </concept>
      <concept id="1164824717996" name="jetbrains.mps.lang.editor.structure.CellMenuDescriptor" flags="ng" index="OXEIz" />
      <concept id="4323500428121233431" name="jetbrains.mps.lang.editor.structure.EditorCellId" flags="ng" index="2SqB2G" />
      <concept id="4323500428136740385" name="jetbrains.mps.lang.editor.structure.CellIdReferenceSelector" flags="ng" index="2TlHUq" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414860679" name="jetbrains.mps.lang.editor.structure.EditableStyleClassItem" flags="ln" index="VPxyj" />
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1186414949600" name="jetbrains.mps.lang.editor.structure.AutoDeletableStyleClassItem" flags="ln" index="VPRnO" />
      <concept id="1630016958697344083" name="jetbrains.mps.lang.editor.structure.IMenu_Concept" flags="ng" index="2ZABuq">
        <reference id="6591946374543067572" name="conceptDeclaration" index="aqKnT" />
      </concept>
      <concept id="1182191800432" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeListFilter" flags="in" index="107P5z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="8313721352726366579" name="jetbrains.mps.lang.editor.structure.CellModel_Empty" flags="ng" index="35HoNQ" />
      <concept id="7342352913006985500" name="jetbrains.mps.lang.editor.structure.TransformationLocation_Completion" flags="ng" index="3eGOoe" />
      <concept id="1139535219966" name="jetbrains.mps.lang.editor.structure.CellActionMapDeclaration" flags="ig" index="1h_SRR">
        <child id="1139535219969" name="item" index="1h_SK8" />
      </concept>
      <concept id="1139535280617" name="jetbrains.mps.lang.editor.structure.CellActionMapItem" flags="lg" index="1hA7zw">
        <property id="1139535298778" name="actionId" index="1hAc7j" />
        <child id="1139535280620" name="executeFunction" index="1hA7z_" />
      </concept>
      <concept id="1139535439104" name="jetbrains.mps.lang.editor.structure.CellActionMap_ExecuteFunction" flags="in" index="1hAIg9" />
      <concept id="5692353713941573329" name="jetbrains.mps.lang.editor.structure.QueryFunction_TransformationMenu_ActionLabelText" flags="ig" index="1hCUdq" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="4323500428121274054" name="id" index="2SqHTX" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1160590353935" name="usesFolding" index="S$Qs1" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="7723470090030138869" name="foldedCellModel" index="AHCbl" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1082639509531" name="nullText" index="ilYzB" />
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR">
        <child id="7279578193766667846" name="addHints" index="78xua" />
        <child id="7279578193766667847" name="removeHints" index="78xub" />
        <child id="1182233390675" name="filter" index="12AuX0" />
        <child id="1165347032372" name="elementMenuDescriptor" index="1k68KV" />
      </concept>
      <concept id="5624877018226904808" name="jetbrains.mps.lang.editor.structure.TransformationMenu_Named" flags="ng" index="3ICXOK" />
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ng" index="3INCJE">
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
      </concept>
      <concept id="3647146066980922272" name="jetbrains.mps.lang.editor.structure.SelectInEditorOperation" flags="nn" index="1OKiuA">
        <child id="1948540814633499358" name="editorContext" index="lBI5i" />
        <child id="1948540814635895774" name="cellSelector" index="lGT1i" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="1088612959204" name="jetbrains.mps.lang.editor.structure.CellModel_Alternation" flags="sg" stub="8104358048506729361" index="1QoScp">
        <property id="1088613081987" name="vertical" index="1QpmdY" />
        <child id="1145918517974" name="alternationCondition" index="3e4ffs" />
        <child id="1088612958265" name="ifTrueCellModel" index="1QoS34" />
        <child id="1088612973955" name="ifFalseCellModel" index="1QoVPY" />
      </concept>
      <concept id="7980428675268276156" name="jetbrains.mps.lang.editor.structure.TransformationMenuSection" flags="ng" index="1Qtc8_">
        <child id="7980428675268276157" name="locations" index="1Qtc8$" />
        <child id="7980428675268276159" name="parts" index="1Qtc8A" />
      </concept>
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
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
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
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
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1206629501431" name="jetbrains.mps.baseLanguage.structure.InstanceInitializer" flags="lg" index="3KIgzJ">
        <child id="1206629521979" name="statementList" index="3KIlGz" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="b401a680-8325-4110-8fd3-84331ff25bef" name="jetbrains.mps.lang.generator">
      <concept id="1510949579266781519" name="jetbrains.mps.lang.generator.structure.TemplateCallMacro" flags="ln" index="5jKBG">
        <child id="1510949579266801461" name="sourceNodeQuery" index="5jGum" />
      </concept>
      <concept id="1114706874351" name="jetbrains.mps.lang.generator.structure.CopySrcNodeMacro" flags="ln" index="29HgVG">
        <child id="1168024447342" name="sourceNodeQuery" index="3NFExx" />
      </concept>
      <concept id="1114729360583" name="jetbrains.mps.lang.generator.structure.CopySrcListMacro" flags="ln" index="2b32R4">
        <child id="1168278589236" name="sourceNodesQuery" index="2P8S$" />
      </concept>
      <concept id="1095416546421" name="jetbrains.mps.lang.generator.structure.MappingConfiguration" flags="ig" index="bUwia">
        <child id="1200911492601" name="mappingLabel" index="2rTMjI" />
        <child id="1167328349397" name="reductionMappingRule" index="3acgRq" />
        <child id="1167514678247" name="rootMappingRule" index="3lj3bC" />
      </concept>
      <concept id="1177093525992" name="jetbrains.mps.lang.generator.structure.InlineTemplate_RuleConsequence" flags="lg" index="gft3U">
        <child id="1177093586806" name="templateNode" index="gfFT$" />
      </concept>
      <concept id="1112730859144" name="jetbrains.mps.lang.generator.structure.TemplateSwitch" flags="ig" index="jVnub">
        <reference id="1112820671508" name="modifiedSwitch" index="phYkn" />
        <child id="1167340453568" name="reductionMappingRule" index="3aUrZf" />
      </concept>
      <concept id="1170725621272" name="jetbrains.mps.lang.generator.structure.MapSrcMacro_MapperFunction" flags="in" index="2kFOW8" />
      <concept id="1168619357332" name="jetbrains.mps.lang.generator.structure.RootTemplateAnnotation" flags="lg" index="n94m4">
        <reference id="1168619429071" name="applicableConcept" index="n9lRv" />
      </concept>
      <concept id="1095672379244" name="jetbrains.mps.lang.generator.structure.TemplateFragment" flags="ng" index="raruj">
        <reference id="1200916687663" name="labelDeclaration" index="2sdACS" />
      </concept>
      <concept id="1200911316486" name="jetbrains.mps.lang.generator.structure.MappingLabelDeclaration" flags="lg" index="2rT7sh">
        <reference id="1200911342686" name="sourceConcept" index="2rTdP9" />
        <reference id="1200913004646" name="targetConcept" index="2rZz_L" />
      </concept>
      <concept id="1722980698497626400" name="jetbrains.mps.lang.generator.structure.ITemplateCall" flags="ng" index="v9R3L">
        <reference id="1722980698497626483" name="template" index="v9R2y" />
      </concept>
      <concept id="5133195082121471908" name="jetbrains.mps.lang.generator.structure.LabelMacro" flags="ln" index="2ZBi8u" />
      <concept id="1167169188348" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_sourceNode" flags="nn" index="30H73N" />
      <concept id="1167169308231" name="jetbrains.mps.lang.generator.structure.BaseMappingRule" flags="ng" index="30H$t8">
        <property id="1167272244852" name="applyToConceptInheritors" index="36QftV" />
        <reference id="1200917515464" name="labelDeclaration" index="2sgKRv" />
        <reference id="1167169349424" name="applicableConcept" index="30HIoZ" />
      </concept>
      <concept id="1092059087312" name="jetbrains.mps.lang.generator.structure.TemplateDeclaration" flags="ig" index="13MO4I">
        <reference id="1168285871518" name="applicableConcept" index="3gUMe" />
        <child id="1092060348987" name="contentNode" index="13RCb5" />
      </concept>
      <concept id="1225228973247" name="jetbrains.mps.lang.generator.structure.MapSrcMacro_PostMapperFunction" flags="in" index="15lBmy" />
      <concept id="1087833241328" name="jetbrains.mps.lang.generator.structure.PropertyMacro" flags="ln" index="17Uvod">
        <child id="1167756362303" name="propertyValueFunction" index="3zH0cK" />
      </concept>
      <concept id="1087833466690" name="jetbrains.mps.lang.generator.structure.NodeMacro" flags="lg" index="17VmuZ">
        <reference id="1200912223215" name="mappingLabel" index="2rW$FS" />
      </concept>
      <concept id="1167327847730" name="jetbrains.mps.lang.generator.structure.Reduction_MappingRule" flags="lg" index="3aamgX">
        <child id="1169672767469" name="ruleConsequence" index="1lVwrX" />
      </concept>
      <concept id="1184690432998" name="jetbrains.mps.lang.generator.structure.TemplateFunctionParameter_outputNode" flags="nn" index="3l3mFP" />
      <concept id="1167514355419" name="jetbrains.mps.lang.generator.structure.Root_MappingRule" flags="lg" index="3lhOvk">
        <reference id="1167514355421" name="template" index="3lhOvi" />
      </concept>
      <concept id="1131073187192" name="jetbrains.mps.lang.generator.structure.MapSrcNodeMacro" flags="ln" index="1pdMLZ">
        <child id="1170725844563" name="mapperFunction" index="2kGFt3" />
        <child id="1225229330048" name="postMapperFunction" index="15mYut" />
      </concept>
      <concept id="1167756080639" name="jetbrains.mps.lang.generator.structure.PropertyMacro_GetPropertyValue" flags="in" index="3zFVjK" />
      <concept id="1167770111131" name="jetbrains.mps.lang.generator.structure.ReferenceMacro_GetReferent" flags="in" index="3$xsQk" />
      <concept id="1167945743726" name="jetbrains.mps.lang.generator.structure.IfMacro_Condition" flags="in" index="3IZrLx" />
      <concept id="1167951910403" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodesQuery" flags="in" index="3JmXsc" />
      <concept id="8900764248744213868" name="jetbrains.mps.lang.generator.structure.InlineTemplateWithContext_RuleConsequence" flags="lg" index="1Koe21">
        <child id="8900764248744213871" name="contentNode" index="1Koe22" />
      </concept>
      <concept id="1168024337012" name="jetbrains.mps.lang.generator.structure.SourceSubstituteMacro_SourceNodeQuery" flags="in" index="3NFfHV" />
      <concept id="1118773211870" name="jetbrains.mps.lang.generator.structure.IfMacro" flags="ln" index="1W57fq">
        <child id="1194989344771" name="alternativeConsequence" index="UU_$l" />
        <child id="1167945861827" name="conditionFunction" index="3IZSJc" />
      </concept>
      <concept id="1088761943574" name="jetbrains.mps.lang.generator.structure.ReferenceMacro" flags="ln" index="1ZhdrF">
        <child id="1167770376702" name="referentFunction" index="3$ytzL" />
      </concept>
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e" />
    </language>
    <language id="d7706f63-9be2-479c-a3da-ae92af1e64d5" name="jetbrains.mps.lang.generator.generationContext">
      <concept id="1217960179967" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ShowErrorMessage" flags="nn" index="2k5nB$" />
      <concept id="1217960314443" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_ShowMessageBase" flags="nn" index="2k5Stg">
        <child id="1217960314448" name="messageText" index="2k5Stb" />
        <child id="1217960407512" name="referenceNode" index="2k6f33" />
      </concept>
      <concept id="1216860049627" name="jetbrains.mps.lang.generator.generationContext.structure.GenerationContextOp_GetOutputByLabelAndInput" flags="nn" index="1iwH70">
        <reference id="1216860049628" name="label" index="1iwH77" />
        <child id="1216860049632" name="inputNode" index="1iwH7V" />
      </concept>
      <concept id="1216860049635" name="jetbrains.mps.lang.generator.generationContext.structure.TemplateFunctionParameter_generationContext" flags="nn" index="1iwH7S" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204851882688" name="jetbrains.mps.lang.smodel.structure.LinkRefQualifier" flags="ng" index="26LbJo">
        <reference id="1204851882689" name="link" index="26LbJp" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138757581985" name="jetbrains.mps.lang.smodel.structure.Link_SetNewChildOperation" flags="nn" index="zfrQC">
        <reference id="1139880128956" name="concept" index="1A9B2P" />
      </concept>
      <concept id="7835263205327057228" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenAndChildAttributesOperation" flags="ng" index="Bykcj" />
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt" />
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
      <concept id="1172008320231" name="jetbrains.mps.lang.smodel.structure.Node_IsNotNullOperation" flags="nn" index="3x8VRR" />
      <concept id="1180636770613" name="jetbrains.mps.lang.smodel.structure.SNodeCreator" flags="nn" index="3zrR0B">
        <child id="1180636770616" name="createdType" index="3zrR0E" />
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
      <concept id="3364660638048049750" name="jetbrains.mps.lang.core.structure.PropertyAttribute" flags="ng" index="A9Btg">
        <property id="1757699476691236117" name="name_DebugInfo" index="2qtEX9" />
        <property id="1341860900487648621" name="propertyId" index="P4ACc" />
      </concept>
      <concept id="3364660638048049745" name="jetbrains.mps.lang.core.structure.LinkAttribute" flags="ng" index="A9Btn">
        <property id="1757699476691236116" name="role_DebugInfo" index="2qtEX8" />
        <property id="1341860900488019036" name="linkId" index="P3scX" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
      <concept id="1165530316231" name="jetbrains.mps.baseLanguage.collections.structure.IsEmptyOperation" flags="nn" index="1v1jN8" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="bUwia" id="2JGKyjipA1W">
    <property role="TrG5h" value="bordered" />
    <property role="3GE5qa" value="bordered" />
    <node concept="3lhOvk" id="4s7KBSjsTUV" role="3lj3bC">
      <ref role="30HIoZ" to="g3qn:4s7KBSjs5FZ" resolve="CellModel_BorderedRefNodeList" />
      <ref role="3lhOvi" node="4s7KBSjsVdX" resolve="map_CellModel_BorderedRefNodeList_Add" />
      <ref role="2sgKRv" node="4s7KBSjuu4Z" resolve="BorderedRNL_AddTM" />
    </node>
    <node concept="3lhOvk" id="4s7KBSjvLH2" role="3lj3bC">
      <ref role="30HIoZ" to="g3qn:4s7KBSjs5FZ" resolve="CellModel_BorderedRefNodeList" />
      <ref role="3lhOvi" node="4s7KBSjvN1h" resolve="map_CellModel_BorderedRefNodeList_DeleteAll" />
      <ref role="2sgKRv" node="4s7KBSjvNFC" resolve="BorderedRNL_DeleteAllAction" />
    </node>
    <node concept="3aamgX" id="4s7KBSjsoZR" role="3acgRq">
      <ref role="30HIoZ" to="g3qn:4s7KBSjs5FZ" resolve="CellModel_BorderedRefNodeList" />
      <node concept="1Koe21" id="4s7KBSjsqvq" role="1lVwrX">
        <node concept="24kQdi" id="4s7KBSjsqvu" role="1Koe22">
          <ref role="1XX52x" to="tpck:gw2VY9q" resolve="BaseConcept" />
          <node concept="1QoScp" id="4s7KBSjsqvy" role="2wV5jI">
            <property role="1QpmdY" value="true" />
            <node concept="VPRnO" id="5s_pyggOdNJ" role="3F10Kt">
              <property role="VOm3f" value="true" />
              <node concept="2b32R4" id="5s_pyggOex_" role="lGtFl">
                <node concept="3JmXsc" id="5s_pyggOexC" role="2P8S$">
                  <node concept="3clFbS" id="5s_pyggOexD" role="2VODD2">
                    <node concept="3clFbF" id="5s_pyggOexJ" role="3cqZAp">
                      <node concept="2OqwBi" id="5s_pyggOexE" role="3clFbG">
                        <node concept="3Tsc0h" id="5s_pyggOexH" role="2OqNvi">
                          <ref role="3TtcxE" to="tpc2:hJF10O6" resolve="styleItem" />
                        </node>
                        <node concept="30H73N" id="5s_pyggOexI" role="2Oq$k0" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="pkWqt" id="4s7KBSjsqv_" role="3e4ffs">
              <node concept="3clFbS" id="4s7KBSjsqvB" role="2VODD2">
                <node concept="3clFbF" id="4s7KBSjssWq" role="3cqZAp">
                  <node concept="2OqwBi" id="4s7KBSjsGBA" role="3clFbG">
                    <node concept="2OqwBi" id="4s7KBSjst9_" role="2Oq$k0">
                      <node concept="pncrf" id="4s7KBSjssWp" role="2Oq$k0" />
                      <node concept="Bykcj" id="4s7KBSjstvn" role="2OqNvi">
                        <node concept="1aIX9F" id="4s7KBSjstvp" role="1xVPHs">
                          <node concept="26LbJo" id="4s7KBSjstKi" role="1aIX9E">
                            <ref role="26LbJp" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                            <node concept="1ZhdrF" id="4s7KBSjsu4L" role="lGtFl">
                              <property role="2qtEX8" value="link" />
                              <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1204851882688/1204851882689" />
                              <node concept="3$xsQk" id="4s7KBSjsu4M" role="3$ytzL">
                                <node concept="3clFbS" id="4s7KBSjsu4N" role="2VODD2">
                                  <node concept="3clFbF" id="4s7KBSjsuqc" role="3cqZAp">
                                    <node concept="2OqwBi" id="4s7KBSjsuQr" role="3clFbG">
                                      <node concept="30H73N" id="4s7KBSjsuqb" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="4s7KBSjsway" role="2OqNvi">
                                        <ref role="3Tt5mk" to="tpc2:fBF2Hej" resolve="linkDeclaration" />
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
                    <node concept="3GX2aA" id="4s7KBSjsKKO" role="2OqNvi" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="raruj" id="4s7KBSjsqB1" role="lGtFl" />
            <node concept="3EZMnI" id="4s7KBSjsrrS" role="1QoS34">
              <node concept="VPM3Z" id="4s7KBSjuFa$" role="3F10Kt" />
              <node concept="3F0ifn" id="4s7KBSjsqB5" role="3EZMnx">
                <property role="3F0ifm" value="HEADER" />
                <node concept="1pdMLZ" id="5s_pygh48wH" role="lGtFl">
                  <node concept="2kFOW8" id="5s_pygh48BU" role="2kGFt3">
                    <node concept="3clFbS" id="5s_pygh48BV" role="2VODD2">
                      <node concept="3clFbF" id="5s_pygh4nyx" role="3cqZAp">
                        <node concept="2OqwBi" id="5s_pygh4u7R" role="3clFbG">
                          <node concept="30H73N" id="5s_pygh4nyr" role="2Oq$k0" />
                          <node concept="3TrEf2" id="5s_pygh4uHj" role="2OqNvi">
                            <ref role="3Tt5mk" to="g3qn:4s7KBSjslgq" resolve="headerCell" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="15lBmy" id="5s_pygh48Nd" role="15mYut">
                    <node concept="3clFbS" id="5s_pygh48Ne" role="2VODD2">
                      <node concept="3clFbF" id="5s_pygh4sDT" role="3cqZAp">
                        <node concept="37vLTI" id="5s_pygh4_Mb" role="3clFbG">
                          <node concept="2OqwBi" id="5s_pygh4vUQ" role="37vLTJ">
                            <node concept="3l3mFP" id="5s_pygh4sTv" role="2Oq$k0" />
                            <node concept="3TrEf2" id="5s_pygh4wlx" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpc2:g_ERwze" resolve="actionMap" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="5s_pygh4sKA" role="37vLTx">
                            <node concept="1iwH7S" id="5s_pygh4sDO" role="2Oq$k0" />
                            <node concept="1iwH70" id="5s_pygh4sQJ" role="2OqNvi">
                              <ref role="1iwH77" node="4s7KBSjvNFC" resolve="BorderedRNL_DeleteAllAction" />
                              <node concept="30H73N" id="5s_pygh4sSZ" role="1iwH7V" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="l2Vlx" id="4s7KBSjsrrT" role="2iSdaV" />
              <node concept="3EZMnI" id="4s7KBSjsrF2" role="3EZMnx">
                <property role="S$Qs1" value="true" />
                <node concept="VPM3Z" id="4s7KBSjsrF4" role="3F10Kt" />
                <node concept="35HoNQ" id="4s7KBSjsrMF" role="3EZMnx">
                  <node concept="11L4FC" id="4s7KBSjsrMI" role="3F10Kt">
                    <property role="VOm3f" value="true" />
                  </node>
                  <node concept="VPM3Z" id="4s7KBSjsrMN" role="3F10Kt" />
                  <node concept="ljvvj" id="4s7KBSjsrN6" role="3F10Kt">
                    <property role="VOm3f" value="true" />
                  </node>
                </node>
                <node concept="3F2HdR" id="4s7KBSjsrNb" role="3EZMnx">
                  <ref role="1NtTu8" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                  <node concept="l2Vlx" id="4s7KBSjsrNd" role="2czzBx">
                    <node concept="29HgVG" id="4s7KBSjsxBU" role="lGtFl">
                      <node concept="3NFfHV" id="4s7KBSjsxBV" role="3NFExx">
                        <node concept="3clFbS" id="4s7KBSjsxBW" role="2VODD2">
                          <node concept="3clFbF" id="4s7KBSjsxC2" role="3cqZAp">
                            <node concept="2OqwBi" id="4s7KBSjsxBX" role="3clFbG">
                              <node concept="3TrEf2" id="4s7KBSjsxC0" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpc2:gAczzzC" resolve="cellLayout" />
                              </node>
                              <node concept="30H73N" id="4s7KBSjsxC1" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1ZhdrF" id="4s7KBSjsrNk" role="lGtFl">
                    <property role="2qtEX8" value="relationDeclaration" />
                    <property role="P3scX" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1139848536355/1140103550593" />
                    <node concept="3$xsQk" id="4s7KBSjsrNl" role="3$ytzL">
                      <node concept="3clFbS" id="4s7KBSjsrNm" role="2VODD2">
                        <node concept="3clFbF" id="4s7KBSjsrO0" role="3cqZAp">
                          <node concept="2OqwBi" id="4s7KBSjss9Z" role="3clFbG">
                            <node concept="30H73N" id="4s7KBSjsrNZ" role="2Oq$k0" />
                            <node concept="3TrEf2" id="4s7KBSjssL0" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpc2:fBF2Hej" resolve="linkDeclaration" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="lj46D" id="4s7KBSjswyI" role="3F10Kt">
                    <property role="VOm3f" value="true" />
                  </node>
                  <node concept="ljvvj" id="4s7KBSjswFp" role="3F10Kt">
                    <property role="VOm3f" value="true" />
                  </node>
                  <node concept="107P5z" id="4s7KBSjsy1c" role="12AuX0">
                    <node concept="3clFbS" id="4s7KBSjsy1d" role="2VODD2">
                      <node concept="3clFbF" id="4s7KBSjsz1b" role="3cqZAp">
                        <node concept="3clFbT" id="4s7KBSjsz1a" role="3clFbG">
                          <property role="3clFbU" value="true" />
                        </node>
                      </node>
                    </node>
                    <node concept="29HgVG" id="4s7KBSjsz8I" role="lGtFl">
                      <node concept="3NFfHV" id="4s7KBSjsz8J" role="3NFExx">
                        <node concept="3clFbS" id="4s7KBSjsz8K" role="2VODD2">
                          <node concept="3clFbF" id="4s7KBSjsz8Q" role="3cqZAp">
                            <node concept="2OqwBi" id="4s7KBSjsz8L" role="3clFbG">
                              <node concept="3TrEf2" id="4s7KBSjsz8O" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpc2:hd2AuTj" resolve="filter" />
                              </node>
                              <node concept="30H73N" id="4s7KBSjsz8P" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="17Uvod" id="4s7KBSjsznK" role="lGtFl">
                    <property role="2qtEX9" value="usesBraces" />
                    <property role="P4ACc" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1140524381322/1140524450556" />
                    <node concept="3zFVjK" id="4s7KBSjsznN" role="3zH0cK">
                      <node concept="3clFbS" id="4s7KBSjsznO" role="2VODD2">
                        <node concept="3clFbF" id="4s7KBSjsznU" role="3cqZAp">
                          <node concept="2OqwBi" id="4s7KBSjsznP" role="3clFbG">
                            <node concept="3TrcHB" id="4s7KBSjsznS" role="2OqNvi">
                              <ref role="3TsBF5" to="tpc2:gAczwbW" resolve="usesBraces" />
                            </node>
                            <node concept="30H73N" id="4s7KBSjsznT" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="17Uvod" id="4s7KBSjszCS" role="lGtFl">
                    <property role="2qtEX9" value="separatorText" />
                    <property role="P4ACc" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1140524381322/1140524450557" />
                    <node concept="3zFVjK" id="4s7KBSjszCV" role="3zH0cK">
                      <node concept="3clFbS" id="4s7KBSjszCW" role="2VODD2">
                        <node concept="3clFbF" id="4s7KBSjszD2" role="3cqZAp">
                          <node concept="2OqwBi" id="4s7KBSjszCX" role="3clFbG">
                            <node concept="3TrcHB" id="4s7KBSjszD0" role="2OqNvi">
                              <ref role="3TsBF5" to="tpc2:gAczwbX" resolve="separatorText" />
                            </node>
                            <node concept="30H73N" id="4s7KBSjszD1" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="17Uvod" id="4s7KBSjs$2R" role="lGtFl">
                    <property role="2qtEX9" value="separatorLayoutConstraint" />
                    <property role="P4ACc" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1140524381322/1156252885376" />
                    <node concept="3zFVjK" id="4s7KBSjs$2U" role="3zH0cK">
                      <node concept="3clFbS" id="4s7KBSjs$2V" role="2VODD2">
                        <node concept="3clFbF" id="4s7KBSjs$31" role="3cqZAp">
                          <node concept="2OqwBi" id="4s7KBSjs$2W" role="3clFbG">
                            <node concept="3TrcHB" id="4s7KBSjs$2Z" role="2OqNvi">
                              <ref role="3TsBF5" to="tpc2:gOQ2I60" resolve="separatorLayoutConstraint" />
                            </node>
                            <node concept="30H73N" id="4s7KBSjs$30" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="tppnM" id="4s7KBSjs_yD" role="sWeuL">
                    <node concept="29HgVG" id="4s7KBSjs_Wz" role="lGtFl">
                      <node concept="3NFfHV" id="4s7KBSjs_W$" role="3NFExx">
                        <node concept="3clFbS" id="4s7KBSjs_W_" role="2VODD2">
                          <node concept="3clFbF" id="4s7KBSjs_WF" role="3cqZAp">
                            <node concept="2OqwBi" id="4s7KBSjs_WA" role="3clFbG">
                              <node concept="3TrEf2" id="4s7KBSjs_WD" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpc2:hWsWeqI" resolve="separatorStyle" />
                              </node>
                              <node concept="30H73N" id="4s7KBSjs_WE" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="17Uvod" id="4s7KBSjsAVz" role="lGtFl">
                    <property role="2qtEX9" value="reverse" />
                    <property role="P4ACc" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1073390211982/1145360728033" />
                    <node concept="3zFVjK" id="4s7KBSjsAVA" role="3zH0cK">
                      <node concept="3clFbS" id="4s7KBSjsAVB" role="2VODD2">
                        <node concept="3clFbF" id="4s7KBSjsAVH" role="3cqZAp">
                          <node concept="2OqwBi" id="4s7KBSjsAVC" role="3clFbG">
                            <node concept="3TrcHB" id="4s7KBSjsAVF" role="2OqNvi">
                              <ref role="3TsBF5" to="tpc2:gEGOrZx" resolve="reverse" />
                            </node>
                            <node concept="30H73N" id="4s7KBSjsAVG" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="4$FPG" id="4s7KBSjsBnI" role="4_6I_">
                    <node concept="3clFbS" id="4s7KBSjsBnJ" role="2VODD2">
                      <node concept="3clFbF" id="4s7KBSjsBNr" role="3cqZAp">
                        <node concept="10Nm6u" id="4s7KBSjsBNq" role="3clFbG" />
                      </node>
                    </node>
                    <node concept="29HgVG" id="4s7KBSjsBR2" role="lGtFl">
                      <node concept="3NFfHV" id="4s7KBSjsBR3" role="3NFExx">
                        <node concept="3clFbS" id="4s7KBSjsBR4" role="2VODD2">
                          <node concept="3clFbF" id="4s7KBSjsBRa" role="3cqZAp">
                            <node concept="2OqwBi" id="4s7KBSjsBR5" role="3clFbG">
                              <node concept="3TrEf2" id="4s7KBSjsBR8" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpc2:h84_6ER" resolve="nodeFactory" />
                              </node>
                              <node concept="30H73N" id="4s7KBSjsBR9" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="1ZhdrF" id="4s7KBSjsBZ8" role="lGtFl">
                    <property role="2qtEX8" value="elementActionMap" />
                    <property role="P3scX" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1073390211982/1173177718857" />
                    <node concept="3$xsQk" id="4s7KBSjsBZb" role="3$ytzL">
                      <node concept="3clFbS" id="4s7KBSjsBZc" role="2VODD2">
                        <node concept="3clFbF" id="4s7KBSjsBZi" role="3cqZAp">
                          <node concept="2OqwBi" id="4s7KBSjsBZd" role="3clFbG">
                            <node concept="3TrEf2" id="4s7KBSjsBZg" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpc2:h4APPx9" resolve="elementActionMap" />
                            </node>
                            <node concept="30H73N" id="4s7KBSjsBZh" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="OXEIz" id="4s7KBSjsDJM" role="1k68KV">
                    <node concept="29HgVG" id="4s7KBSjsEdb" role="lGtFl">
                      <node concept="3NFfHV" id="4s7KBSjsEdc" role="3NFExx">
                        <node concept="3clFbS" id="4s7KBSjsEdd" role="2VODD2">
                          <node concept="3clFbF" id="4s7KBSjsEdj" role="3cqZAp">
                            <node concept="2OqwBi" id="4s7KBSjsEde" role="3clFbG">
                              <node concept="3TrEf2" id="4s7KBSjsEdh" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpc2:gXk68OO" resolve="elementMenuDescriptor" />
                              </node>
                              <node concept="30H73N" id="4s7KBSjsEdi" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2w$q5c" id="4s7KBSjsFgT" role="78xua">
                    <node concept="29HgVG" id="4s7KBSjsFJ3" role="lGtFl">
                      <node concept="3NFfHV" id="4s7KBSjsFJ4" role="3NFExx">
                        <node concept="3clFbS" id="4s7KBSjsFJ5" role="2VODD2">
                          <node concept="3clFbF" id="4s7KBSjsFJb" role="3cqZAp">
                            <node concept="2OqwBi" id="4s7KBSjsFJ6" role="3clFbG">
                              <node concept="3TrEf2" id="4s7KBSjsFJ9" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpc2:6k6gsLy95p6" resolve="addHints" />
                              </node>
                              <node concept="30H73N" id="4s7KBSjsFJa" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2w$q5c" id="4s7KBSjsFQp" role="78xub">
                    <node concept="29HgVG" id="4s7KBSjsGlc" role="lGtFl">
                      <node concept="3NFfHV" id="4s7KBSjsGld" role="3NFExx">
                        <node concept="3clFbS" id="4s7KBSjsGle" role="2VODD2">
                          <node concept="3clFbF" id="4s7KBSjsGlk" role="3cqZAp">
                            <node concept="2OqwBi" id="4s7KBSjsGlf" role="3clFbG">
                              <node concept="3TrEf2" id="4s7KBSjsGli" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpc2:6k6gsLy95p7" resolve="removeHints" />
                              </node>
                              <node concept="30H73N" id="4s7KBSjsGlj" role="2Oq$k0" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3F0ifn" id="4s7KBSjswOk" role="3EZMnx">
                  <property role="3F0ifm" value="FOOTER" />
                  <node concept="1pdMLZ" id="5s_pygh4_YG" role="lGtFl">
                    <node concept="2kFOW8" id="5s_pygh4_YI" role="2kGFt3">
                      <node concept="3clFbS" id="5s_pygh4_YJ" role="2VODD2">
                        <node concept="3clFbF" id="5s_pygh4A28" role="3cqZAp">
                          <node concept="2OqwBi" id="5s_pygh4Aj6" role="3clFbG">
                            <node concept="30H73N" id="5s_pygh4A27" role="2Oq$k0" />
                            <node concept="3TrEf2" id="5s_pygh4ASa" role="2OqNvi">
                              <ref role="3Tt5mk" to="g3qn:4s7KBSjslgs" resolve="footerCell" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="15lBmy" id="5s_pygh4Bbx" role="15mYut">
                      <node concept="3clFbS" id="5s_pygh4Bby" role="2VODD2">
                        <node concept="3clFbF" id="5s_pygh4Bb_" role="3cqZAp">
                          <node concept="37vLTI" id="5s_pygh4BbB" role="3clFbG">
                            <node concept="2OqwBi" id="5s_pygh4BbC" role="37vLTJ">
                              <node concept="3l3mFP" id="5s_pygh4BbD" role="2Oq$k0" />
                              <node concept="3TrEf2" id="5s_pygh4BbE" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpc2:g_ERwze" resolve="actionMap" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="5s_pygh4BbF" role="37vLTx">
                              <node concept="1iwH7S" id="5s_pygh4BbG" role="2Oq$k0" />
                              <node concept="1iwH70" id="5s_pygh4BbH" role="2OqNvi">
                                <ref role="1iwH77" node="4s7KBSjvNFC" resolve="BorderedRNL_DeleteAllAction" />
                                <node concept="30H73N" id="5s_pygh4BbI" role="1iwH7V" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="l2Vlx" id="4s7KBSjsrF7" role="2iSdaV" />
                <node concept="17Uvod" id="4s7KBSjsLX6" role="lGtFl">
                  <property role="2qtEX9" value="usesFolding" />
                  <property role="P4ACc" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1073389446423/1160590353935" />
                  <node concept="3zFVjK" id="4s7KBSjsLX9" role="3zH0cK">
                    <node concept="3clFbS" id="4s7KBSjsLXa" role="2VODD2">
                      <node concept="3clFbF" id="4s7KBSjsLXg" role="3cqZAp">
                        <node concept="2OqwBi" id="4s7KBSjsLXb" role="3clFbG">
                          <node concept="3TrcHB" id="4s7KBSjsLXe" role="2OqNvi">
                            <ref role="3TsBF5" to="tpc2:gSS$F7l" resolve="usesFolding" />
                          </node>
                          <node concept="30H73N" id="4s7KBSjsLXf" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3F0ifn" id="4s7KBSjsMZi" role="AHCbl">
                  <property role="3F0ifm" value="folding" />
                  <node concept="29HgVG" id="4s7KBSjsNwd" role="lGtFl">
                    <node concept="3NFfHV" id="4s7KBSjsNwe" role="3NFExx">
                      <node concept="3clFbS" id="4s7KBSjsNwf" role="2VODD2">
                        <node concept="3clFbF" id="4s7KBSjsNwl" role="3cqZAp">
                          <node concept="2OqwBi" id="4s7KBSjsNwg" role="3clFbG">
                            <node concept="3TrEf2" id="4s7KBSjsNwj" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpc2:5fDszETGVtQ" resolve="foldedCellModel" />
                            </node>
                            <node concept="30H73N" id="4s7KBSjsNwk" role="2Oq$k0" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2SqB2G" id="4s7KBSjuFGN" role="2SqHTX">
                <property role="TrG5h" value="BorderedRNL_Collection" />
                <node concept="17Uvod" id="4s7KBSjuGf2" role="lGtFl">
                  <property role="2qtEX9" value="name" />
                  <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
                  <node concept="3zFVjK" id="4s7KBSjuGf3" role="3zH0cK">
                    <node concept="3clFbS" id="4s7KBSjuGf4" role="2VODD2">
                      <node concept="3clFbF" id="4s7KBSjuGZG" role="3cqZAp">
                        <node concept="3cpWs3" id="4s7KBSjuQvc" role="3clFbG">
                          <node concept="2OqwBi" id="4s7KBSjuTf_" role="3uHU7w">
                            <node concept="2OqwBi" id="4s7KBSjuRhL" role="2Oq$k0">
                              <node concept="30H73N" id="4s7KBSjuQTM" role="2Oq$k0" />
                              <node concept="3TrEf2" id="4s7KBSjuSP6" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpc2:fBF2Hej" resolve="linkDeclaration" />
                              </node>
                            </node>
                            <node concept="3TrcHB" id="4s7KBSjuUd5" role="2OqNvi">
                              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                            </node>
                          </node>
                          <node concept="3cpWs3" id="4s7KBSjuIKP" role="3uHU7B">
                            <node concept="Xl_RD" id="4s7KBSjuGZF" role="3uHU7B">
                              <property role="Xl_RC" value="BorderedRNL_CollectiondCId$" />
                            </node>
                            <node concept="2OqwBi" id="4s7KBSjuO1p" role="3uHU7w">
                              <node concept="2OqwBi" id="4s7KBSjuMei" role="2Oq$k0">
                                <node concept="2OqwBi" id="4s7KBSjuJhg" role="2Oq$k0">
                                  <node concept="30H73N" id="4s7KBSjuITD" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="4s7KBSjuLmz" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpc2:fBF2Hej" resolve="linkDeclaration" />
                                  </node>
                                </node>
                                <node concept="2qgKlT" id="4s7KBSjuNvv" role="2OqNvi">
                                  <ref role="37wK5l" to="tpcn:7jb4LXpbWaP" resolve="getConceptDeclaration" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="4s7KBSjuOPb" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2ZBi8u" id="4s7KBSjweH7" role="lGtFl">
                  <ref role="2rW$FS" node="4s7KBSjvXAY" resolve="BorderedRNL_CollectionCellId" />
                </node>
              </node>
            </node>
            <node concept="3F2HdR" id="4s7KBSjsxiv" role="1QoVPY">
              <ref role="1NtTu8" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
              <node concept="l2Vlx" id="4s7KBSjsxiw" role="2czzBx" />
              <node concept="1ZhdrF" id="4s7KBSjsxix" role="lGtFl">
                <property role="2qtEX8" value="relationDeclaration" />
                <property role="P3scX" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1139848536355/1140103550593" />
                <node concept="3$xsQk" id="4s7KBSjsxiy" role="3$ytzL">
                  <node concept="3clFbS" id="4s7KBSjsxiz" role="2VODD2">
                    <node concept="3clFbF" id="4s7KBSjsxi$" role="3cqZAp">
                      <node concept="2OqwBi" id="4s7KBSjsxi_" role="3clFbG">
                        <node concept="30H73N" id="4s7KBSjsxiA" role="2Oq$k0" />
                        <node concept="3TrEf2" id="4s7KBSjsxiB" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpc2:fBF2Hej" resolve="linkDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3F0ifn" id="4s7KBSjsNGc" role="2czzBI">
                <property role="3F0ifm" value="empty" />
                <node concept="1pdMLZ" id="4s7KBSjvkFj" role="lGtFl">
                  <node concept="15lBmy" id="4s7KBSjvmfT" role="15mYut">
                    <node concept="3clFbS" id="4s7KBSjvmfU" role="2VODD2">
                      <node concept="3clFbJ" id="4s7KBSjvqRH" role="3cqZAp">
                        <node concept="3clFbS" id="4s7KBSjvqRT" role="3clFbx">
                          <node concept="3clFbF" id="4s7KBSjvqXv" role="3cqZAp">
                            <node concept="37vLTI" id="4s7KBSjvs5m" role="3clFbG">
                              <node concept="2ShNRf" id="4s7KBSjvsch" role="37vLTx">
                                <node concept="3zrR0B" id="4s7KBSjvs98" role="2ShVmc">
                                  <node concept="3Tqbb2" id="4s7KBSjvs99" role="3zrR0E">
                                    <ref role="ehGHo" to="tpc2:3K0abI4q_wn" resolve="EditorCellId" />
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="4s7KBSjvr9P" role="37vLTJ">
                                <node concept="3l3mFP" id="4s7KBSjvqXu" role="2Oq$k0" />
                                <node concept="3TrEf2" id="4s7KBSjvrBK" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpc2:3K0abI4qJr6" resolve="id" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="4s7KBSjvsjk" role="3cqZAp">
                            <node concept="37vLTI" id="4s7KBSjvuIS" role="3clFbG">
                              <node concept="3cpWs3" id="4s7KBSjvCh9" role="37vLTx">
                                <node concept="2OqwBi" id="4s7KBSjvEN3" role="3uHU7w">
                                  <node concept="2OqwBi" id="4s7KBSjvD0D" role="2Oq$k0">
                                    <node concept="30H73N" id="4s7KBSjvCGO" role="2Oq$k0" />
                                    <node concept="3TrEf2" id="4s7KBSjvEsI" role="2OqNvi">
                                      <ref role="3Tt5mk" to="tpc2:fBF2Hej" resolve="linkDeclaration" />
                                    </node>
                                  </node>
                                  <node concept="3TrcHB" id="4s7KBSjvFHi" role="2OqNvi">
                                    <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                  </node>
                                </node>
                                <node concept="3cpWs3" id="4s7KBSjvGv9" role="3uHU7B">
                                  <node concept="Xl_RD" id="4s7KBSjvGUU" role="3uHU7w">
                                    <property role="Xl_RC" value="_" />
                                  </node>
                                  <node concept="3cpWs3" id="4s7KBSjvwj2" role="3uHU7B">
                                    <node concept="Xl_RD" id="4s7KBSjvuSS" role="3uHU7B">
                                      <property role="Xl_RC" value="BorderedRNL_EmptyCId$" />
                                    </node>
                                    <node concept="2OqwBi" id="4s7KBSjv_Ms" role="3uHU7w">
                                      <node concept="2OqwBi" id="4s7KBSjv$hw" role="2Oq$k0">
                                        <node concept="2OqwBi" id="4s7KBSjvwG2" role="2Oq$k0">
                                          <node concept="30H73N" id="4s7KBSjvwo_" role="2Oq$k0" />
                                          <node concept="3TrEf2" id="4s7KBSjvxg7" role="2OqNvi">
                                            <ref role="3Tt5mk" to="tpc2:fBF2Hej" resolve="linkDeclaration" />
                                          </node>
                                        </node>
                                        <node concept="2qgKlT" id="4s7KBSjv_jM" role="2OqNvi">
                                          <ref role="37wK5l" to="tpcn:7jb4LXpbWaP" resolve="getConceptDeclaration" />
                                        </node>
                                      </node>
                                      <node concept="3TrcHB" id="4s7KBSjvAAb" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="4s7KBSjvtiT" role="37vLTJ">
                                <node concept="2OqwBi" id="4s7KBSjvsw4" role="2Oq$k0">
                                  <node concept="3l3mFP" id="4s7KBSjvsji" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="4s7KBSjvt0Y" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpc2:3K0abI4qJr6" resolve="id" />
                                  </node>
                                </node>
                                <node concept="3TrcHB" id="4s7KBSjvt_X" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2OqwBi" id="4s7KBSjvpLh" role="3clFbw">
                          <node concept="2OqwBi" id="4s7KBSjvorU" role="2Oq$k0">
                            <node concept="3l3mFP" id="4s7KBSjvofz" role="2Oq$k0" />
                            <node concept="3TrEf2" id="4s7KBSjvp3P" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpc2:3K0abI4qJr6" resolve="id" />
                            </node>
                          </node>
                          <node concept="3w_OXm" id="4s7KBSjvqug" role="2OqNvi" />
                        </node>
                      </node>
                      <node concept="3cpWs8" id="5s_pyggOtOD" role="3cqZAp">
                        <node concept="3cpWsn" id="5s_pyggOtOE" role="3cpWs9">
                          <property role="TrG5h" value="tmr" />
                          <node concept="3Tqbb2" id="5s_pyggOtOA" role="1tU5fm">
                            <ref role="ehGHo" to="tpc2:5OVd5tVffW9" resolve="TransformationMenuReference_Named" />
                          </node>
                          <node concept="2OqwBi" id="5s_pyggOtOF" role="33vP2m">
                            <node concept="2OqwBi" id="5s_pyggOtOG" role="2Oq$k0">
                              <node concept="3l3mFP" id="5s_pyggOtOH" role="2Oq$k0" />
                              <node concept="3TrEf2" id="5s_pyggOtOI" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpc2:3DiRZz_UXt0" resolve="transformationMenu" />
                              </node>
                            </node>
                            <node concept="zfrQC" id="5s_pyggOKz4" role="2OqNvi">
                              <ref role="1A9B2P" to="tpc2:5OVd5tVffW9" resolve="TransformationMenuReference_Named" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="5s_pyggOp7M" role="3cqZAp">
                        <node concept="37vLTI" id="5s_pyggOyH6" role="3clFbG">
                          <node concept="2OqwBi" id="5s_pyggOzhp" role="37vLTx">
                            <node concept="1iwH7S" id="5s_pyggOz8O" role="2Oq$k0" />
                            <node concept="1iwH70" id="5s_pyggOzEh" role="2OqNvi">
                              <ref role="1iwH77" node="4s7KBSjuu4Z" resolve="BorderedRNL_AddTM" />
                              <node concept="30H73N" id="5s_pyggOzSc" role="1iwH7V" />
                            </node>
                          </node>
                          <node concept="2OqwBi" id="5s_pyggOvD9" role="37vLTJ">
                            <node concept="37vLTw" id="5s_pyggOtOK" role="2Oq$k0">
                              <ref role="3cqZAo" node="5s_pyggOtOE" resolve="tmr" />
                            </node>
                            <node concept="3TrEf2" id="5s_pyggOxoj" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpc2:5OVd5tVffWa" resolve="menu" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1W57fq" id="4s7KBSjsOev" role="lGtFl">
                  <node concept="3IZrLx" id="4s7KBSjsOew" role="3IZSJc">
                    <node concept="3clFbS" id="4s7KBSjsOex" role="2VODD2">
                      <node concept="3clFbF" id="4s7KBSjsOtb" role="3cqZAp">
                        <node concept="2OqwBi" id="4s7KBSjsQQ6" role="3clFbG">
                          <node concept="2OqwBi" id="4s7KBSjsON0" role="2Oq$k0">
                            <node concept="30H73N" id="4s7KBSjsOta" role="2Oq$k0" />
                            <node concept="3TrEf2" id="4s7KBSjsPWm" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpc2:gAczzzB" resolve="emptyCellModel" />
                            </node>
                          </node>
                          <node concept="3x8VRR" id="4s7KBSjsSWM" role="2OqNvi" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="gft3U" id="4s7KBSjsTE7" role="UU_$l">
                    <node concept="3F0ifn" id="4s7KBSjsTUF" role="gfFT$">
                      <property role="ilYzB" value="&lt;&lt; ... &gt;&gt;" />
                      <node concept="VPxyj" id="4s7KBSjuEKt" role="3F10Kt">
                        <property role="VOm3f" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="29HgVG" id="4s7KBSjsNKz" role="lGtFl">
                  <node concept="3NFfHV" id="4s7KBSjsNK$" role="3NFExx">
                    <node concept="3clFbS" id="4s7KBSjsNK_" role="2VODD2">
                      <node concept="3clFbF" id="4s7KBSjsNKF" role="3cqZAp">
                        <node concept="2OqwBi" id="4s7KBSjsNKA" role="3clFbG">
                          <node concept="3TrEf2" id="4s7KBSjsNKD" role="2OqNvi">
                            <ref role="3Tt5mk" to="tpc2:gAczzzB" resolve="emptyCellModel" />
                          </node>
                          <node concept="30H73N" id="4s7KBSjsNKE" role="2Oq$k0" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2ZBi8u" id="5s_pyggQ1tw" role="lGtFl">
                <ref role="2rW$FS" node="4s7KBSjuBQl" resolve="BorderedRNL_EmptyCell" />
              </node>
            </node>
            <node concept="1ZhdrF" id="5s_pyggO87O" role="lGtFl">
              <property role="2qtEX8" value="parentStyleClass" />
              <property role="P3scX" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1381004262292414836/1381004262292426837" />
              <node concept="3$xsQk" id="5s_pyggO87P" role="3$ytzL">
                <node concept="3clFbS" id="5s_pyggO87Q" role="2VODD2">
                  <node concept="3clFbF" id="5s_pyggO8UM" role="3cqZAp">
                    <node concept="2OqwBi" id="5s_pyggO9gL" role="3clFbG">
                      <node concept="30H73N" id="5s_pyggO8UL" role="2Oq$k0" />
                      <node concept="3TrEf2" id="5s_pyggOaLb" role="2OqNvi">
                        <ref role="3Tt5mk" to="tpc2:1cEk0X7fp1l" resolve="parentStyleClass" />
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
    <node concept="2rT7sh" id="4s7KBSjuu4Z" role="2rTMjI">
      <property role="TrG5h" value="BorderedRNL_AddTM" />
      <ref role="2rZz_L" to="tpc2:4Sf$XywF4VC" resolve="TransformationMenu_Named" />
      <ref role="2rTdP9" to="g3qn:4s7KBSjs5FZ" resolve="CellModel_BorderedRefNodeList" />
    </node>
    <node concept="2rT7sh" id="4s7KBSjvNFC" role="2rTMjI">
      <property role="TrG5h" value="BorderedRNL_DeleteAllAction" />
      <ref role="2rTdP9" to="g3qn:4s7KBSjs5FZ" resolve="CellModel_BorderedRefNodeList" />
      <ref role="2rZz_L" to="tpc2:g_h_SNY" resolve="CellActionMapDeclaration" />
    </node>
    <node concept="2rT7sh" id="4s7KBSjuBQl" role="2rTMjI">
      <property role="TrG5h" value="BorderedRNL_EmptyCell" />
      <ref role="2rTdP9" to="g3qn:4s7KBSjs5FZ" resolve="CellModel_BorderedRefNodeList" />
      <ref role="2rZz_L" to="tpc2:fBF2Hee" resolve="CellModel_RefNodeList" />
    </node>
    <node concept="2rT7sh" id="4s7KBSjvXAY" role="2rTMjI">
      <property role="TrG5h" value="BorderedRNL_CollectionCellId" />
      <ref role="2rTdP9" to="g3qn:4s7KBSjs5FZ" resolve="CellModel_BorderedRefNodeList" />
      <ref role="2rZz_L" to="tpc2:3K0abI4q_wn" resolve="EditorCellId" />
    </node>
  </node>
  <node concept="3ICXOK" id="4s7KBSjsVdX">
    <property role="TrG5h" value="map_CellModel_BorderedRefNodeList_Add" />
    <property role="3GE5qa" value="bordered" />
    <ref role="aqKnT" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1Qtc8_" id="4s7KBSjtdCB" role="IW6Ez">
      <node concept="IWgqT" id="4s7KBSjte1Z" role="1Qtc8A">
        <node concept="1hCUdq" id="4s7KBSjte21" role="1hCUd6">
          <node concept="3clFbS" id="4s7KBSjte23" role="2VODD2">
            <node concept="3clFbF" id="4s7KBSjteaU" role="3cqZAp">
              <node concept="Xl_RD" id="4s7KBSjteaT" role="3clFbG">
                <node concept="17Uvod" id="4s7KBSjteDi" role="lGtFl">
                  <property role="2qtEX9" value="value" />
                  <property role="P4ACc" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1070475926800/1070475926801" />
                  <node concept="3zFVjK" id="4s7KBSjteDj" role="3zH0cK">
                    <node concept="3clFbS" id="4s7KBSjteDk" role="2VODD2">
                      <node concept="3clFbF" id="4s7KBSjtf0T" role="3cqZAp">
                        <node concept="2OqwBi" id="4s7KBSjthbz" role="3clFbG">
                          <node concept="2OqwBi" id="4s7KBSjtfnB" role="2Oq$k0">
                            <node concept="30H73N" id="4s7KBSjtf0S" role="2Oq$k0" />
                            <node concept="3TrEf2" id="4s7KBSjtgjf" role="2OqNvi">
                              <ref role="3Tt5mk" to="g3qn:4s7KBSjslgq" resolve="headerCell" />
                            </node>
                          </node>
                          <node concept="3TrcHB" id="4s7KBSjthXB" role="2OqNvi">
                            <ref role="3TsBF5" to="tpc2:fBF0icJ" resolve="text" />
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
        <node concept="IWg2L" id="4s7KBSjte25" role="IWgqQ">
          <node concept="3clFbS" id="4s7KBSjte27" role="2VODD2">
            <node concept="3cpWs8" id="4s7KBSjtwP9" role="3cqZAp">
              <node concept="3cpWsn" id="4s7KBSjtwPa" role="3cpWs9">
                <property role="TrG5h" value="firstChild" />
                <node concept="3Tqbb2" id="4s7KBSjtwP8" role="1tU5fm">
                  <ref role="ehGHo" to="tpck:4uZwTti3_$T" resolve="Attribute" />
                  <node concept="1ZhdrF" id="4s7KBSjt_ky" role="lGtFl">
                    <property role="2qtEX8" value="concept" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138055754698/1138405853777" />
                    <node concept="3$xsQk" id="4s7KBSjt_kz" role="3$ytzL">
                      <node concept="3clFbS" id="4s7KBSjt_k$" role="2VODD2">
                        <node concept="3clFbF" id="4s7KBSjt_GX" role="3cqZAp">
                          <node concept="2OqwBi" id="4s7KBSjtDdD" role="3clFbG">
                            <node concept="2OqwBi" id="4s7KBSjtAEI" role="2Oq$k0">
                              <node concept="30H73N" id="4s7KBSjt_GW" role="2Oq$k0" />
                              <node concept="3TrEf2" id="4s7KBSjtCyo" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpc2:fBF2Hej" resolve="linkDeclaration" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="4s7KBSjtEp4" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpce:fA0lvVK" resolve="target" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4s7KBSjtwPb" role="33vP2m">
                  <node concept="2OqwBi" id="4s7KBSjtwPc" role="2Oq$k0">
                    <node concept="7Obwk" id="4s7KBSjtwPd" role="2Oq$k0" />
                    <node concept="3Tsc0h" id="4s7KBSjtwPe" role="2OqNvi">
                      <ref role="3TtcxE" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                      <node concept="1ZhdrF" id="4s7KBSjtz03" role="lGtFl">
                        <property role="2qtEX8" value="link" />
                        <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056282393/1138056546658" />
                        <node concept="3$xsQk" id="4s7KBSjtz04" role="3$ytzL">
                          <node concept="3clFbS" id="4s7KBSjtz05" role="2VODD2">
                            <node concept="3clFbF" id="4s7KBSjtzjy" role="3cqZAp">
                              <node concept="2OqwBi" id="4s7KBSjtzDx" role="3clFbG">
                                <node concept="30H73N" id="4s7KBSjtzjx" role="2Oq$k0" />
                                <node concept="3TrEf2" id="4s7KBSjt_cU" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpc2:fBF2Hej" resolve="linkDeclaration" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="WFELt" id="4s7KBSjtwPf" role="2OqNvi" />
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4s7KBSjtqN$" role="3cqZAp">
              <node concept="2OqwBi" id="4s7KBSjtFvH" role="3clFbG">
                <node concept="37vLTw" id="4s7KBSjtwPg" role="2Oq$k0">
                  <ref role="3cqZAo" node="4s7KBSjtwPa" resolve="firstChild" />
                </node>
                <node concept="1OKiuA" id="4s7KBSjutZC" role="2OqNvi">
                  <node concept="1Q80Hx" id="4s7KBSjuu3Q" role="lBI5i" />
                  <node concept="2B6iha" id="4s7KBSjuu4s" role="lGT1i">
                    <property role="1lyBwo" value="first" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="27VH4U" id="4s7KBSjtix3" role="2jiSrf">
          <node concept="3clFbS" id="4s7KBSjtix4" role="2VODD2">
            <node concept="3clFbF" id="4s7KBSjtiRZ" role="3cqZAp">
              <node concept="2OqwBi" id="4s7KBSjtmKj" role="3clFbG">
                <node concept="2OqwBi" id="4s7KBSjtj3E" role="2Oq$k0">
                  <node concept="7Obwk" id="4s7KBSjtiRY" role="2Oq$k0" />
                  <node concept="Bykcj" id="4s7KBSjtjvz" role="2OqNvi">
                    <node concept="1aIX9F" id="4s7KBSjtjv_" role="1xVPHs">
                      <node concept="26LbJo" id="4s7KBSjtjDY" role="1aIX9E">
                        <ref role="26LbJp" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                        <node concept="1ZhdrF" id="4s7KBSjtjOj" role="lGtFl">
                          <property role="2qtEX8" value="link" />
                          <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1204851882688/1204851882689" />
                          <node concept="3$xsQk" id="4s7KBSjtjOk" role="3$ytzL">
                            <node concept="3clFbS" id="4s7KBSjtjOl" role="2VODD2">
                              <node concept="3clFbF" id="4s7KBSjtkp4" role="3cqZAp">
                                <node concept="2OqwBi" id="4s7KBSjtkPj" role="3clFbG">
                                  <node concept="30H73N" id="4s7KBSjtkp3" role="2Oq$k0" />
                                  <node concept="3TrEf2" id="4s7KBSjtmdz" role="2OqNvi">
                                    <ref role="3Tt5mk" to="tpc2:fBF2Hej" resolve="linkDeclaration" />
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
                <node concept="1v1jN8" id="4s7KBSjtqBB" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3eGOoe" id="4s7KBSjte1U" role="1Qtc8$" />
    </node>
    <node concept="n94m4" id="4s7KBSjsVdY" role="lGtFl">
      <ref role="n9lRv" to="g3qn:4s7KBSjs5FZ" resolve="CellModel_BorderedRefNodeList" />
    </node>
    <node concept="17Uvod" id="4s7KBSjsVRL" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="4s7KBSjsVRM" role="3zH0cK">
        <node concept="3clFbS" id="4s7KBSjsVRN" role="2VODD2">
          <node concept="3clFbF" id="4s7KBSjsW0s" role="3cqZAp">
            <node concept="3cpWs3" id="4s7KBSjsXx_" role="3clFbG">
              <node concept="2OqwBi" id="4s7KBSjt09s" role="3uHU7w">
                <node concept="2OqwBi" id="4s7KBSjsY20" role="2Oq$k0">
                  <node concept="30H73N" id="4s7KBSjsXEp" role="2Oq$k0" />
                  <node concept="3TrEf2" id="4s7KBSjsZka" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:fBF2Hej" resolve="linkDeclaration" />
                  </node>
                </node>
                <node concept="3TrcHB" id="4s7KBSjt0UA" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="3cpWs3" id="4s7KBSjt700" role="3uHU7B">
                <node concept="Xl_RD" id="4s7KBSjt7pW" role="3uHU7w">
                  <property role="Xl_RC" value="_" />
                </node>
                <node concept="3cpWs3" id="4s7KBSjt1Ds" role="3uHU7B">
                  <node concept="2OqwBi" id="4s7KBSjt5Mp" role="3uHU7w">
                    <node concept="2OqwBi" id="4s7KBSjt4ux" role="2Oq$k0">
                      <node concept="2OqwBi" id="4s7KBSjt2gj" role="2Oq$k0">
                        <node concept="30H73N" id="4s7KBSjt1Su" role="2Oq$k0" />
                        <node concept="3TrEf2" id="4s7KBSjt3A$" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpc2:fBF2Hej" resolve="linkDeclaration" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="4s7KBSjt5ga" role="2OqNvi">
                        <ref role="37wK5l" to="tpcn:7jb4LXpbWaP" resolve="getConceptDeclaration" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="4s7KBSjt6Ab" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="4s7KBSjsW0r" role="3uHU7B">
                    <property role="Xl_RC" value="BorderedRNL_Add_" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1ZhdrF" id="4s7KBSjta8E" role="lGtFl">
      <property role="2qtEX8" value="conceptDeclaration" />
      <property role="P3scX" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1630016958697344083/6591946374543067572" />
      <node concept="3$xsQk" id="4s7KBSjta8F" role="3$ytzL">
        <node concept="3clFbS" id="4s7KBSjta8G" role="2VODD2">
          <node concept="3clFbF" id="4s7KBSjtaxL" role="3cqZAp">
            <node concept="2OqwBi" id="4s7KBSjtd1r" role="3clFbG">
              <node concept="2OqwBi" id="4s7KBSjtb70" role="2Oq$k0">
                <node concept="30H73N" id="4s7KBSjtaxK" role="2Oq$k0" />
                <node concept="3TrEf2" id="4s7KBSjtck0" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:fBF2Hej" resolve="linkDeclaration" />
                </node>
              </node>
              <node concept="2qgKlT" id="4s7KBSjtdt8" role="2OqNvi">
                <ref role="37wK5l" to="tpcn:7jb4LXpbWaP" resolve="getConceptDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1h_SRR" id="4s7KBSjvN1h">
    <property role="TrG5h" value="map_CellModel_BorderedRefNodeList_DeleteAll" />
    <property role="3GE5qa" value="bordered" />
    <node concept="1hA7zw" id="4s7KBSjvPKh" role="1h_SK8">
      <property role="1hAc7j" value="delete_action_id" />
      <node concept="1hAIg9" id="4s7KBSjvPKi" role="1hA7z_">
        <node concept="3clFbS" id="4s7KBSjvPKj" role="2VODD2">
          <node concept="3clFbJ" id="4s7KBSjvSNh" role="3cqZAp">
            <node concept="3clFbS" id="4s7KBSjvSNj" role="3clFbx">
              <node concept="3cpWs6" id="4s7KBSjwhZZ" role="3cqZAp" />
            </node>
            <node concept="2OqwBi" id="4s7KBSjvSV_" role="3clFbw">
              <node concept="0IXxy" id="4s7KBSjvSNC" role="2Oq$k0" />
              <node concept="2xy62i" id="4s7KBSjvTgj" role="2OqNvi">
                <node concept="1Q80Hx" id="4s7KBSjvTgK" role="2xHN3q" />
                <node concept="2TlHUq" id="4s7KBSjvTCU" role="3a7HXU">
                  <node concept="1ZhdrF" id="4s7KBSjvTPp" role="lGtFl">
                    <property role="2qtEX8" value="id" />
                    <property role="P3scX" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/4323500428136740385/4323500428136742952" />
                    <node concept="3$xsQk" id="4s7KBSjvTPq" role="3$ytzL">
                      <node concept="3clFbS" id="4s7KBSjvTPr" role="2VODD2">
                        <node concept="3clFbF" id="4s7KBSjvVJS" role="3cqZAp">
                          <node concept="2OqwBi" id="4s7KBSjvVVh" role="3clFbG">
                            <node concept="1iwH7S" id="4s7KBSjvVJN" role="2Oq$k0" />
                            <node concept="1iwH70" id="4s7KBSjvWm2" role="2OqNvi">
                              <ref role="1iwH77" node="4s7KBSjvXAY" resolve="BorderedRNL_CollectionCellId" />
                              <node concept="30H73N" id="4s7KBSjwhVA" role="1iwH7V" />
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
          <node concept="3clFbF" id="4s7KBSjwi8e" role="3cqZAp">
            <node concept="2OqwBi" id="4s7KBSjwlMJ" role="3clFbG">
              <node concept="2OqwBi" id="4s7KBSjwifu" role="2Oq$k0">
                <node concept="0IXxy" id="4s7KBSjwi8c" role="2Oq$k0" />
                <node concept="3Tsc0h" id="4s7KBSjwinn" role="2OqNvi">
                  <ref role="3TtcxE" to="tpck:4uZwTti3__2" resolve="smodelAttribute" />
                  <node concept="1ZhdrF" id="4s7KBSjwiwk" role="lGtFl">
                    <property role="2qtEX8" value="link" />
                    <property role="P3scX" value="7866978e-a0f0-4cc7-81bc-4d213d9375e1/1138056282393/1138056546658" />
                    <node concept="3$xsQk" id="4s7KBSjwiwl" role="3$ytzL">
                      <node concept="3clFbS" id="4s7KBSjwiwm" role="2VODD2">
                        <node concept="3clFbF" id="4s7KBSjwiHe" role="3cqZAp">
                          <node concept="2OqwBi" id="4s7KBSjwj3d" role="3clFbG">
                            <node concept="30H73N" id="4s7KBSjwiHd" role="2Oq$k0" />
                            <node concept="3TrEf2" id="4s7KBSjwk7b" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpc2:fBF2Hej" resolve="linkDeclaration" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2Kehj3" id="4s7KBSjwrfe" role="2OqNvi" />
            </node>
          </node>
          <node concept="3clFbF" id="4s7KBSjwvGy" role="3cqZAp">
            <node concept="2OqwBi" id="4s7KBSjwxSj" role="3clFbG">
              <node concept="0IXxy" id="4s7KBSjwvGw" role="2Oq$k0" />
              <node concept="1OKiuA" id="4s7KBSjwyjd" role="2OqNvi">
                <node concept="1Q80Hx" id="4s7KBSjwyjI" role="lBI5i" />
                <node concept="2TlHUq" id="4s7KBSjwykM" role="lGT1i">
                  <node concept="1ZhdrF" id="4s7KBSjwykN" role="lGtFl">
                    <property role="2qtEX8" value="id" />
                    <property role="P3scX" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/4323500428136740385/4323500428136742952" />
                    <node concept="3$xsQk" id="4s7KBSjwykO" role="3$ytzL">
                      <node concept="3clFbS" id="4s7KBSjwykP" role="2VODD2">
                        <node concept="3cpWs8" id="5s_pyggOWsy" role="3cqZAp">
                          <node concept="3cpWsn" id="5s_pyggOWsz" role="3cpWs9">
                            <property role="TrG5h" value="list" />
                            <node concept="3Tqbb2" id="5s_pyggOWsx" role="1tU5fm">
                              <ref role="ehGHo" to="tpc2:fBF2Hee" resolve="CellModel_RefNodeList" />
                            </node>
                            <node concept="2OqwBi" id="5s_pyggOWs$" role="33vP2m">
                              <node concept="1iwH7S" id="5s_pyggOWs_" role="2Oq$k0" />
                              <node concept="1iwH70" id="5s_pyggOWsA" role="2OqNvi">
                                <ref role="1iwH77" node="4s7KBSjuBQl" resolve="BorderedRNL_EmptyCell" />
                                <node concept="30H73N" id="5s_pyggOWsB" role="1iwH7V" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="5s_pyggOYJl" role="3cqZAp">
                          <node concept="3clFbS" id="5s_pyggOYJn" role="3clFbx">
                            <node concept="3clFbF" id="5s_pyggP0rF" role="3cqZAp">
                              <node concept="2OqwBi" id="5s_pyggP0DN" role="3clFbG">
                                <node concept="1iwH7S" id="5s_pyggP0vy" role="2Oq$k0" />
                                <node concept="2k5nB$" id="5s_pyggP0Oh" role="2OqNvi">
                                  <node concept="Xl_RD" id="5s_pyggP0Ow" role="2k5Stb">
                                    <property role="Xl_RC" value="EMPTY CELL IS NULL" />
                                  </node>
                                  <node concept="37vLTw" id="5s_pyggP19L" role="2k6f33">
                                    <ref role="3cqZAo" node="5s_pyggOWsz" resolve="list" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="2OqwBi" id="5s_pyggOZ1d" role="3clFbw">
                            <node concept="2OqwBi" id="5s_pyggQ4f5" role="2Oq$k0">
                              <node concept="37vLTw" id="5s_pyggOYNg" role="2Oq$k0">
                                <ref role="3cqZAo" node="5s_pyggOWsz" resolve="list" />
                              </node>
                              <node concept="3TrEf2" id="5s_pyggQ7GS" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpc2:gAczzzB" resolve="emptyCellModel" />
                              </node>
                            </node>
                            <node concept="3w_OXm" id="5s_pyggP0c$" role="2OqNvi" />
                          </node>
                        </node>
                        <node concept="3clFbF" id="4s7KBSjwykQ" role="3cqZAp">
                          <node concept="2OqwBi" id="4s7KBSjw$Xu" role="3clFbG">
                            <node concept="2OqwBi" id="5s_pyggQ82C" role="2Oq$k0">
                              <node concept="37vLTw" id="5s_pyggOWsC" role="2Oq$k0">
                                <ref role="3cqZAo" node="5s_pyggOWsz" resolve="list" />
                              </node>
                              <node concept="3TrEf2" id="5s_pyggQ9OS" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpc2:gAczzzB" resolve="emptyCellModel" />
                              </node>
                            </node>
                            <node concept="3TrEf2" id="4s7KBSjw_bw" role="2OqNvi">
                              <ref role="3Tt5mk" to="tpc2:3K0abI4qJr6" resolve="id" />
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
    <node concept="n94m4" id="4s7KBSjvN1i" role="lGtFl">
      <ref role="n9lRv" to="g3qn:4s7KBSjs5FZ" resolve="CellModel_BorderedRefNodeList" />
    </node>
    <node concept="1ZhdrF" id="4s7KBSjvPKv" role="lGtFl">
      <property role="2qtEX8" value="applicableConcept" />
      <property role="P3scX" value="18bc6592-03a6-4e29-a83a-7ff23bde13ba/1139535219966/1139535219968" />
      <node concept="3$xsQk" id="4s7KBSjvPKw" role="3$ytzL">
        <node concept="3clFbS" id="4s7KBSjvPKx" role="2VODD2">
          <node concept="3clFbF" id="4s7KBSjvPLc" role="3cqZAp">
            <node concept="2OqwBi" id="4s7KBSjvR$0" role="3clFbG">
              <node concept="2OqwBi" id="4s7KBSjvQ7b" role="2Oq$k0">
                <node concept="30H73N" id="4s7KBSjvPLb" role="2Oq$k0" />
                <node concept="3TrEf2" id="4s7KBSjvRb1" role="2OqNvi">
                  <ref role="3Tt5mk" to="tpc2:fBF2Hej" resolve="linkDeclaration" />
                </node>
              </node>
              <node concept="2qgKlT" id="4s7KBSjvSwE" role="2OqNvi">
                <ref role="37wK5l" to="tpcn:7jb4LXpbWaP" resolve="getConceptDeclaration" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="17Uvod" id="5s_pyggP2Gv" role="lGtFl">
      <property role="2qtEX9" value="name" />
      <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
      <node concept="3zFVjK" id="5s_pyggP2Gw" role="3zH0cK">
        <node concept="3clFbS" id="5s_pyggP2Gx" role="2VODD2">
          <node concept="3clFbF" id="5s_pyggP6mN" role="3cqZAp">
            <node concept="3cpWs3" id="5s_pyggPh4b" role="3clFbG">
              <node concept="2OqwBi" id="5s_pyggPjO8" role="3uHU7w">
                <node concept="2OqwBi" id="5s_pyggPhP6" role="2Oq$k0">
                  <node concept="30H73N" id="5s_pyggPht7" role="2Oq$k0" />
                  <node concept="3TrEf2" id="5s_pyggPlaS" role="2OqNvi">
                    <ref role="3Tt5mk" to="tpc2:fBF2Hej" resolve="linkDeclaration" />
                  </node>
                </node>
                <node concept="3TrcHB" id="5s_pyggPmb6" role="2OqNvi">
                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                </node>
              </node>
              <node concept="3cpWs3" id="5s_pyggS3Xx" role="3uHU7B">
                <node concept="Xl_RD" id="5s_pyggS4mz" role="3uHU7w">
                  <property role="Xl_RC" value="_" />
                </node>
                <node concept="3cpWs3" id="5s_pyggP8dH" role="3uHU7B">
                  <node concept="Xl_RD" id="5s_pyggP6mM" role="3uHU7B">
                    <property role="Xl_RC" value="BorderedRLN_DeleteAll_" />
                  </node>
                  <node concept="2OqwBi" id="5s_pyggPeuY" role="3uHU7w">
                    <node concept="2OqwBi" id="5s_pyggPcvF" role="2Oq$k0">
                      <node concept="2OqwBi" id="5s_pyggP8I8" role="2Oq$k0">
                        <node concept="30H73N" id="5s_pyggP8mx" role="2Oq$k0" />
                        <node concept="3TrEf2" id="5s_pyggPc5$" role="2OqNvi">
                          <ref role="3Tt5mk" to="tpc2:fBF2Hej" resolve="linkDeclaration" />
                        </node>
                      </node>
                      <node concept="2qgKlT" id="5s_pyggPdX3" role="2OqNvi">
                        <ref role="37wK5l" to="tpcn:7jb4LXpbWaP" resolve="getConceptDeclaration" />
                      </node>
                    </node>
                    <node concept="3TrcHB" id="5s_pyggPfiG" role="2OqNvi">
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
  </node>
  <node concept="bUwia" id="4JFQCPiAzma">
    <property role="TrG5h" value="syncronized" />
    <property role="3GE5qa" value="syncronized" />
    <node concept="3aamgX" id="4JFQCPiuuwb" role="3acgRq">
      <ref role="30HIoZ" to="g3qn:4JFQCPipsJs" resolve="CellModel_CustomSyncronized" />
      <node concept="1Koe21" id="2_D_3xWyUbt" role="1lVwrX">
        <node concept="9aQIb" id="48TKAW3Vg38" role="1Koe22">
          <node concept="3clFbS" id="48TKAW3Vg39" role="9aQI4">
            <node concept="3clFbH" id="48TKAW3Vg3a" role="3cqZAp">
              <node concept="raruj" id="48TKAW3Vg3b" role="lGtFl" />
              <node concept="5jKBG" id="48TKAW3Vg3c" role="lGtFl">
                <ref role="v9R2y" node="fXNKMVr" resolve="reduce_CellModel_CustomSyncronized" />
              </node>
            </node>
            <node concept="3clFbH" id="48TKAW3Vg3d" role="3cqZAp">
              <node concept="raruj" id="48TKAW3Vg3e" role="lGtFl" />
              <node concept="5jKBG" id="48TKAW3Vg3f" role="lGtFl">
                <ref role="v9R2y" to="tpc3:2dv1ickkgDx" resolve="template_EditorCellModel_CommonMethods" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="3aamgX" id="2_D_3xWx7zL" role="3acgRq">
      <ref role="30HIoZ" to="g3qn:4JFQCPiKfs1" resolve="CellModel_Syncronizer" />
      <node concept="1Koe21" id="2_D_3xWyUbI" role="1lVwrX">
        <node concept="9aQIb" id="2_D_3xWyUbO" role="1Koe22">
          <node concept="3clFbS" id="2_D_3xWyUbP" role="9aQI4">
            <node concept="3clFbH" id="2_D_3xWyUbQ" role="3cqZAp">
              <node concept="raruj" id="2_D_3xWyUbR" role="lGtFl" />
              <node concept="5jKBG" id="2_D_3xWyUbS" role="lGtFl">
                <ref role="v9R2y" node="2_D_3xWx7zJ" resolve="reduce_CellModel_Syncronizer" />
              </node>
            </node>
            <node concept="3clFbH" id="2_D_3xWyUbT" role="3cqZAp">
              <node concept="raruj" id="2_D_3xWyUbU" role="lGtFl" />
              <node concept="5jKBG" id="2_D_3xWyUbV" role="lGtFl">
                <ref role="v9R2y" to="tpc3:2dv1ickkgDx" resolve="template_EditorCellModel_CommonMethods" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13MO4I" id="fXNKMVr">
    <property role="TrG5h" value="reduce_CellModel_CustomSyncronized" />
    <property role="3GE5qa" value="syncronized" />
    <ref role="3gUMe" to="g3qn:4JFQCPipsJs" resolve="CellModel_CustomSyncronized" />
    <node concept="312cEu" id="fXNKQOH" role="13RCb5">
      <property role="TrG5h" value="_context_class_" />
      <property role="1sVAO0" value="true" />
      <node concept="3uibUv" id="1aFmvcpBbCh" role="1zkMxy">
        <ref role="3uigEE" to="tpc3:7GOmDNDyRby" resolve="CellFactoryContextClass" />
      </node>
      <node concept="3clFb_" id="fXNLFfO" role="jymVt">
        <property role="TrG5h" value="_cell_factory_method_" />
        <node concept="3uibUv" id="5Hr2i_R0Q0J" role="3clF45">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
        <node concept="17Uvod" id="fXNLFgL" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="hBfnQNo" role="3zH0cK">
            <node concept="3clFbS" id="hBfnQNp" role="2VODD2">
              <node concept="3clFbF" id="hBfnQNq" role="3cqZAp">
                <node concept="2OqwBi" id="hHfEqtF" role="3clFbG">
                  <node concept="2qgKlT" id="hHfEqS6" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hHfE2BD" resolve="getFactoryMethodName" />
                    <node concept="1iwH7S" id="hT7DqZk" role="37wK5m" />
                  </node>
                  <node concept="30H73N" id="hHfEqnN" role="2Oq$k0" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbS" id="fXNLFfP" role="3clF47">
          <node concept="3cpWs8" id="1y7DiaV$6uu" role="3cqZAp">
            <node concept="3cpWsn" id="1y7DiaV$6uv" role="3cpWs9">
              <property role="TrG5h" value="provider" />
              <node concept="2OqwBi" id="2CgHH8crHni" role="33vP2m">
                <node concept="1bVj0M" id="2CgHH8crHn3" role="2Oq$k0">
                  <node concept="3clFbS" id="2CgHH8crHn5" role="1bW5cS">
                    <node concept="29HgVG" id="2CgHH8crHn6" role="lGtFl">
                      <node concept="3NFfHV" id="2CgHH8crHn7" role="3NFExx">
                        <node concept="3clFbS" id="2CgHH8crHn8" role="2VODD2">
                          <node concept="3cpWs6" id="2CgHH8crHn9" role="3cqZAp">
                            <node concept="2OqwBi" id="2CgHH8crHna" role="3cqZAk">
                              <node concept="2OqwBi" id="2CgHH8crHnb" role="2Oq$k0">
                                <node concept="30H73N" id="2CgHH8crHnc" role="2Oq$k0" />
                                <node concept="3TrEf2" id="2CgHH8crHnd" role="2OqNvi">
                                  <ref role="3Tt5mk" to="tpc2:h7YsKQL" resolve="cellProvider" />
                                </node>
                              </node>
                              <node concept="3TrEf2" id="2CgHH8crHne" role="2OqNvi">
                                <ref role="3Tt5mk" to="tpee:gyVODHa" resolve="body" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="2Bi2XPDVNC_" role="3cqZAp">
                      <node concept="10QFUN" id="3A$WjtnBfc1" role="3cqZAk">
                        <node concept="3uibUv" id="3A$WjtnBfEo" role="10QFUM">
                          <ref role="3uigEE" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                        </node>
                        <node concept="10Nm6u" id="3A$WjtnBeO3" role="10QFUP" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1Bd96e" id="2CgHH8crHno" role="2OqNvi" />
              </node>
              <node concept="3uibUv" id="1y7DiaV$6uw" role="1tU5fm">
                <ref role="3uigEE" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="fXOjVvJ" role="3cqZAp">
            <node concept="3cpWsn" id="fXOjGGL" role="3cpWs9">
              <property role="TrG5h" value="editorCell" />
              <node concept="3uibUv" id="5Hr2i_R0NNP" role="1tU5fm">
                <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
              </node>
              <node concept="2OqwBi" id="h_XJaE1" role="33vP2m">
                <node concept="liA8E" id="h_XJaE2" role="2OqNvi">
                  <ref role="37wK5l" to="exr9:~AbstractCellProvider.createEditorCell(jetbrains.mps.openapi.editor.EditorContext):jetbrains.mps.openapi.editor.cells.EditorCell" resolve="createEditorCell" />
                  <node concept="1rXfSq" id="1aFmvcpBd99" role="37wK5m">
                    <ref role="37wK5l" to="qvne:6OQfiPCHBdf" resolve="getEditorContext" />
                  </node>
                </node>
                <node concept="37vLTw" id="3GM_nagTvEr" role="2Oq$k0">
                  <ref role="3cqZAo" node="1y7DiaV$6uv" resolve="provider" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4v1iCryNF2b" role="3cqZAp">
            <node concept="5jKBG" id="za$VMvkNOr" role="lGtFl">
              <ref role="v9R2y" to="tpc3:4v1iCryNDHi" resolve="template_cellSetupBlock" />
            </node>
            <node concept="3cpWsn" id="4v1iCryNF2c" role="3cpWs9">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="4v1iCryNF2d" role="1tU5fm" />
            </node>
          </node>
          <node concept="3clFbF" id="13c7lpEz_Al" role="3cqZAp">
            <node concept="2OqwBi" id="13c7lpEz_Am" role="3clFbG">
              <node concept="37vLTw" id="3GM_nagTvvg" role="2Oq$k0">
                <ref role="3cqZAo" node="fXOjGGL" resolve="editorCell" />
              </node>
              <node concept="liA8E" id="13c7lpEz_Ao" role="2OqNvi">
                <ref role="37wK5l" to="f4zo:~EditorCell.setSubstituteInfo(jetbrains.mps.openapi.editor.cells.SubstituteInfo):void" resolve="setSubstituteInfo" />
                <node concept="10Nm6u" id="13c7lpEz_Ap" role="37wK5m" />
              </node>
            </node>
            <node concept="5jKBG" id="13c7lpEz_Aq" role="lGtFl">
              <ref role="v9R2y" to="tpc3:5t2DUc51aVQ" resolve="template_cellSetSubstituteInfo" />
            </node>
          </node>
          <node concept="3cpWs6" id="fXOjR_V" role="3cqZAp">
            <node concept="37vLTw" id="3GM_nagTtDZ" role="3cqZAk">
              <ref role="3cqZAo" node="fXOjGGL" resolve="editorCell" />
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="1y7DiaVv2W9" role="1B3o_S" />
        <node concept="raruj" id="fXNLFgK" role="lGtFl">
          <ref role="2sdACS" to="tpc3:2dNBF9rpTiT" resolve="cellFactory.factoryMethod" />
        </node>
      </node>
      <node concept="3Tm1VV" id="h9B3Loo" role="1B3o_S" />
    </node>
  </node>
  <node concept="13MO4I" id="2_D_3xWx7zJ">
    <property role="TrG5h" value="reduce_CellModel_Syncronizer" />
    <property role="3GE5qa" value="syncronized" />
    <ref role="3gUMe" to="g3qn:4JFQCPiKfs1" resolve="CellModel_Syncronizer" />
    <node concept="312cEu" id="fXlj2gl" role="13RCb5">
      <property role="TrG5h" value="_context_class_" />
      <property role="1sVAO0" value="true" />
      <node concept="3uibUv" id="13IiccQ8vNt" role="1zkMxy">
        <ref role="3uigEE" to="tpc3:7GOmDNDyRby" resolve="CellFactoryContextClass" />
      </node>
      <node concept="3clFb_" id="fXlmLYq" role="jymVt">
        <property role="TrG5h" value="_cell_factory_method_" />
        <node concept="3uibUv" id="5Hr2i_R0rUG" role="3clF45">
          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
        </node>
        <node concept="3clFbS" id="fXln6ZX" role="3clF47">
          <node concept="3cpWs8" id="fXlobId" role="3cqZAp">
            <node concept="3cpWsn" id="fXlnoS2" role="3cpWs9">
              <property role="TrG5h" value="editorCell" />
              <node concept="2ShNRf" id="35SBEYRfrnU" role="33vP2m">
                <node concept="YeOm9" id="2_D_3xWxIw4" role="2ShVmc">
                  <node concept="1Y3b0j" id="2_D_3xWxIw7" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="g51k:~EditorCell_Collection.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,jetbrains.mps.nodeEditor.cellLayout.CellLayout)" resolve="EditorCell_Collection" />
                    <ref role="1Y3XeK" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
                    <node concept="3Tm1VV" id="2_D_3xWxIw8" role="1B3o_S" />
                    <node concept="1rXfSq" id="35SBEYRfrnW" role="37wK5m">
                      <ref role="37wK5l" to="qvne:6OQfiPCHBdf" resolve="getEditorContext" />
                    </node>
                    <node concept="37vLTw" id="35SBEYRfrnX" role="37wK5m">
                      <ref role="3cqZAo" to="tpc3:7GOmDNDA2zg" resolve="myNode" />
                    </node>
                    <node concept="2ShNRf" id="35SBEYRfrnY" role="37wK5m">
                      <node concept="1pGfFk" id="35SBEYRfrnZ" role="2ShVmc">
                        <ref role="37wK5l" to="kcid:~CellLayout_Horizontal.&lt;init&gt;()" resolve="CellLayout_Horizontal" />
                      </node>
                    </node>
                    <node concept="3KIgzJ" id="2_D_3xWyePr" role="jymVt">
                      <node concept="3clFbS" id="2_D_3xWyePt" role="3KIlGz">
                        <node concept="3clFbF" id="2_D_3xWygon" role="3cqZAp">
                          <node concept="1rXfSq" id="2_D_3xWygom" role="3clFbG">
                            <ref role="37wK5l" to="g51k:~EditorCell_Collection.addEditorCell(jetbrains.mps.openapi.editor.cells.EditorCell):void" resolve="addEditorCell" />
                            <node concept="1rXfSq" id="2_D_3xWykDr" role="37wK5m">
                              <ref role="37wK5l" node="2_D_3xWyim6" resolve="createChildCell" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2tJIrI" id="2_D_3xWy54L" role="jymVt" />
                    <node concept="3clFb_" id="2_D_3xWxLJ3" role="jymVt">
                      <property role="TrG5h" value="setCanBeSynchronized" />
                      <node concept="3Tm1VV" id="2_D_3xWxLJ4" role="1B3o_S" />
                      <node concept="3cqZAl" id="2_D_3xWxLJ6" role="3clF45" />
                      <node concept="37vLTG" id="2_D_3xWxLJ7" role="3clF46">
                        <property role="TrG5h" value="canBeSynchronized" />
                        <node concept="10P_77" id="2_D_3xWxLJ8" role="1tU5fm" />
                      </node>
                      <node concept="3clFbS" id="2_D_3xWxLJa" role="3clF47">
                        <node concept="3SKdUt" id="2_D_3xWxN$x" role="3cqZAp">
                          <node concept="3SKdUq" id="2_D_3xWxN$y" role="3SKWNk">
                            <property role="3SKdUp" value="noop" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2_D_3xWxLJb" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="2_D_3xWxOBD" role="jymVt" />
                    <node concept="3clFb_" id="2_D_3xWxQew" role="jymVt">
                      <property role="TrG5h" value="canBeSynchronized" />
                      <node concept="3Tm1VV" id="2_D_3xWxQex" role="1B3o_S" />
                      <node concept="10P_77" id="2_D_3xWxQez" role="3clF45" />
                      <node concept="3clFbS" id="2_D_3xWxQe_" role="3clF47">
                        <node concept="3clFbF" id="2_D_3xWxS2R" role="3cqZAp">
                          <node concept="3clFbT" id="2_D_3xWxS2Q" role="3clFbG">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2_D_3xWxQeA" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="2_D_3xWymsS" role="jymVt" />
                    <node concept="3clFb_" id="2_D_3xWyyOg" role="jymVt">
                      <property role="TrG5h" value="synchronize" />
                      <node concept="3Tm1VV" id="2_D_3xWyyOh" role="1B3o_S" />
                      <node concept="3cqZAl" id="2_D_3xWyyOj" role="3clF45" />
                      <node concept="3clFbS" id="2_D_3xWyyOl" role="3clF47">
                        <node concept="3cpWs8" id="2_D_3xWyBdl" role="3cqZAp">
                          <node concept="3cpWsn" id="2_D_3xWyBdm" role="3cpWs9">
                            <property role="TrG5h" value="childCell" />
                            <node concept="3uibUv" id="2_D_3xWyBdk" role="1tU5fm">
                              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                            </node>
                            <node concept="1rXfSq" id="2_D_3xWyBdn" role="33vP2m">
                              <ref role="37wK5l" to="g51k:~EditorCell_Collection.firstCell():jetbrains.mps.openapi.editor.cells.EditorCell" resolve="firstCell" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbJ" id="2_D_3xWyAjs" role="3cqZAp">
                          <node concept="2ZW3vV" id="2_D_3xWyBZm" role="3clFbw">
                            <node concept="3uibUv" id="2_D_3xWyC3p" role="2ZW6by">
                              <ref role="3uigEE" to="g51k:~SynchronizeableEditorCell" resolve="SynchronizeableEditorCell" />
                            </node>
                            <node concept="37vLTw" id="2_D_3xWyBdo" role="2ZW6bz">
                              <ref role="3cqZAo" node="2_D_3xWyBdm" resolve="childCell" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="2_D_3xWyAju" role="3clFbx">
                            <node concept="3cpWs8" id="2_D_3xWyDZE" role="3cqZAp">
                              <node concept="3cpWsn" id="2_D_3xWyDZF" role="3cpWs9">
                                <property role="TrG5h" value="syncchildCell" />
                                <node concept="3uibUv" id="2_D_3xWyDZG" role="1tU5fm">
                                  <ref role="3uigEE" to="g51k:~SynchronizeableEditorCell" resolve="SynchronizeableEditorCell" />
                                </node>
                                <node concept="10QFUN" id="2_D_3xWyEoE" role="33vP2m">
                                  <node concept="3uibUv" id="2_D_3xWyErI" role="10QFUM">
                                    <ref role="3uigEE" to="g51k:~SynchronizeableEditorCell" resolve="SynchronizeableEditorCell" />
                                  </node>
                                  <node concept="37vLTw" id="2_D_3xWyElE" role="10QFUP">
                                    <ref role="3cqZAo" node="2_D_3xWyBdm" resolve="childCell" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbJ" id="2_D_3xWyEKF" role="3cqZAp">
                              <node concept="3clFbS" id="2_D_3xWyEKH" role="3clFbx">
                                <node concept="3clFbF" id="2_D_3xWyGAM" role="3cqZAp">
                                  <node concept="2OqwBi" id="2_D_3xWyGKV" role="3clFbG">
                                    <node concept="37vLTw" id="2_D_3xWyGAK" role="2Oq$k0">
                                      <ref role="3cqZAo" node="2_D_3xWyDZF" resolve="syncchildCell" />
                                    </node>
                                    <node concept="liA8E" id="2_D_3xWyI20" role="2OqNvi">
                                      <ref role="37wK5l" to="g51k:~SynchronizeableEditorCell.synchronize():void" resolve="synchronize" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs6" id="2_D_3xWyImm" role="3cqZAp" />
                              </node>
                              <node concept="2OqwBi" id="2_D_3xWyF0C" role="3clFbw">
                                <node concept="37vLTw" id="2_D_3xWyEOy" role="2Oq$k0">
                                  <ref role="3cqZAo" node="2_D_3xWyDZF" resolve="syncchildCell" />
                                </node>
                                <node concept="liA8E" id="2_D_3xWyGhL" role="2OqNvi">
                                  <ref role="37wK5l" to="g51k:~SynchronizeableEditorCell.canBeSynchronized():boolean" resolve="canBeSynchronized" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2_D_3xWH1FV" role="3cqZAp">
                          <node concept="2OqwBi" id="2_D_3xWH1FW" role="3clFbG">
                            <node concept="1eOMI4" id="2_D_3xWH1FX" role="2Oq$k0">
                              <node concept="10QFUN" id="2_D_3xWH1FY" role="1eOMHV">
                                <node concept="3uibUv" id="2_D_3xWH1FZ" role="10QFUM">
                                  <ref role="3uigEE" to="g51k:~EditorCell_Basic" resolve="EditorCell_Basic" />
                                </node>
                                <node concept="37vLTw" id="2_D_3xWH2S1" role="10QFUP">
                                  <ref role="3cqZAo" node="2_D_3xWyBdm" resolve="childCell" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="2_D_3xWH1G1" role="2OqNvi">
                              <ref role="37wK5l" to="g51k:~EditorCell_Basic.onRemove():void" resolve="onRemove" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2_D_3xWyITO" role="3cqZAp">
                          <node concept="1rXfSq" id="2_D_3xWyITM" role="3clFbG">
                            <ref role="37wK5l" to="g51k:~EditorCell_Collection.removeCell(jetbrains.mps.openapi.editor.cells.EditorCell):void" resolve="removeCell" />
                            <node concept="37vLTw" id="2_D_3xWyJkI" role="37wK5m">
                              <ref role="3cqZAo" node="2_D_3xWyBdm" resolve="childCell" />
                            </node>
                          </node>
                        </node>
                        <node concept="3cpWs8" id="2_D_3xWB5Ka" role="3cqZAp">
                          <node concept="3cpWsn" id="2_D_3xWB5Kb" role="3cpWs9">
                            <property role="TrG5h" value="createdChildCell" />
                            <node concept="3uibUv" id="2_D_3xWB5K9" role="1tU5fm">
                              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                            </node>
                            <node concept="1rXfSq" id="2_D_3xWB5Kc" role="33vP2m">
                              <ref role="37wK5l" node="2_D_3xWyim6" resolve="createChildCell" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2_D_3xWyJum" role="3cqZAp">
                          <node concept="1rXfSq" id="2_D_3xWyJuk" role="3clFbG">
                            <ref role="37wK5l" to="g51k:~EditorCell_Collection.addEditorCell(jetbrains.mps.openapi.editor.cells.EditorCell):void" resolve="addEditorCell" />
                            <node concept="37vLTw" id="2_D_3xWB5Kd" role="37wK5m">
                              <ref role="3cqZAo" node="2_D_3xWB5Kb" resolve="createdChildCell" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2_D_3xWD6r2" role="3cqZAp">
                          <node concept="2OqwBi" id="2_D_3xWD997" role="3clFbG">
                            <node concept="1eOMI4" id="2_D_3xWD6r0" role="2Oq$k0">
                              <node concept="10QFUN" id="2_D_3xWD6qX" role="1eOMHV">
                                <node concept="3uibUv" id="2_D_3xWD6wY" role="10QFUM">
                                  <ref role="3uigEE" to="g51k:~EditorCell_Basic" resolve="EditorCell_Basic" />
                                </node>
                                <node concept="37vLTw" id="2_D_3xWD6ID" role="10QFUP">
                                  <ref role="3cqZAo" node="2_D_3xWB5Kb" resolve="createdChildCell" />
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="2_D_3xWDb9F" role="2OqNvi">
                              <ref role="37wK5l" to="g51k:~EditorCell_Basic.onAdd():void" resolve="onAdd" />
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="2_D_3xWF56L" role="3cqZAp">
                          <node concept="2OqwBi" id="2_D_3xWF5kQ" role="3clFbG">
                            <node concept="37vLTw" id="2_D_3xWF56J" role="2Oq$k0">
                              <ref role="3cqZAo" node="2_D_3xWB5Kb" resolve="createdChildCell" />
                            </node>
                            <node concept="liA8E" id="2_D_3xWF6bN" role="2OqNvi">
                              <ref role="37wK5l" to="f4zo:~EditorCell.relayout():void" resolve="relayout" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2AHcQZ" id="2_D_3xWyyOm" role="2AJF6D">
                        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                      </node>
                    </node>
                    <node concept="2tJIrI" id="2_D_3xWymtp" role="jymVt" />
                    <node concept="3clFb_" id="2_D_3xWyim6" role="jymVt">
                      <property role="TrG5h" value="createChildCell" />
                      <node concept="3clFbS" id="2_D_3xWyim9" role="3clF47">
                        <node concept="3clFbF" id="2_D_3xWylua" role="3cqZAp">
                          <node concept="10Nm6u" id="5ajRFTcxVAM" role="3clFbG">
                            <node concept="5jKBG" id="za$VMvkNOS" role="lGtFl">
                              <ref role="v9R2y" to="tpc3:gXIFsmA" resolve="template_CreateCellExpression" />
                              <node concept="3NFfHV" id="2_D_3xW_8or" role="5jGum">
                                <node concept="3clFbS" id="2_D_3xW_8os" role="2VODD2">
                                  <node concept="3clFbF" id="2_D_3xW_8GP" role="3cqZAp">
                                    <node concept="2OqwBi" id="2_D_3xW_8Ud" role="3clFbG">
                                      <node concept="30H73N" id="2_D_3xW_8GO" role="2Oq$k0" />
                                      <node concept="3TrEf2" id="2_D_3xW_9mt" role="2OqNvi">
                                        <ref role="3Tt5mk" to="g3qn:4JFQCPiKkdP" resolve="cellToSyncronize" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3Tm6S6" id="2_D_3xWygFb" role="1B3o_S" />
                      <node concept="3uibUv" id="2_D_3xW_9tK" role="3clF45">
                        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="fXlnoS1" role="1tU5fm">
                <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
              </node>
            </node>
          </node>
          <node concept="3cpWs8" id="4v1iCryNETL" role="3cqZAp">
            <node concept="5jKBG" id="za$VMvkNOl" role="lGtFl">
              <ref role="v9R2y" to="tpc3:4v1iCryNDHi" resolve="template_cellSetupBlock" />
            </node>
            <node concept="3cpWsn" id="4v1iCryNETM" role="3cpWs9">
              <property role="TrG5h" value="i" />
              <node concept="10Oyi0" id="4v1iCryNETN" role="1tU5fm" />
            </node>
          </node>
          <node concept="3cpWs6" id="fXln_b3" role="3cqZAp">
            <node concept="37vLTw" id="3GM_nagTAxr" role="3cqZAk">
              <ref role="3cqZAo" node="fXlnoS2" resolve="editorCell" />
            </node>
          </node>
        </node>
        <node concept="raruj" id="fXlobIe" role="lGtFl">
          <ref role="2sdACS" to="tpc3:2dNBF9rpTiT" resolve="cellFactory.factoryMethod" />
        </node>
        <node concept="17Uvod" id="fXlobIf" role="lGtFl">
          <property role="2qtEX9" value="name" />
          <property role="P4ACc" value="ceab5195-25ea-4f22-9b92-103b95ca8c0c/1169194658468/1169194664001" />
          <node concept="3zFVjK" id="hBfkq3M" role="3zH0cK">
            <node concept="3clFbS" id="hBfkq3N" role="2VODD2">
              <node concept="3clFbF" id="hBfkq3O" role="3cqZAp">
                <node concept="2OqwBi" id="hHfElEJ" role="3clFbG">
                  <node concept="30H73N" id="hHfEl$8" role="2Oq$k0" />
                  <node concept="2qgKlT" id="hHfElVS" role="2OqNvi">
                    <ref role="37wK5l" to="tpcb:hHfE2BD" resolve="getFactoryMethodName" />
                    <node concept="1iwH7S" id="hT7Dku2" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="1y7DiaVv2W2" role="1B3o_S" />
      </node>
      <node concept="3Tm1VV" id="h9B3Lmg" role="1B3o_S" />
    </node>
  </node>
  <node concept="jVnub" id="2_D_3xWyUc9">
    <property role="3GE5qa" value="syncronized" />
    <property role="TrG5h" value="CellModelChildrenIterator_ForSyncronizer" />
    <ref role="phYkn" to="tpc3:2dv1icjJR$E" resolve="CellModelChildrenIterator" />
    <node concept="3aamgX" id="2_D_3xWyUca" role="3aUrZf">
      <property role="36QftV" value="true" />
      <ref role="30HIoZ" to="g3qn:4JFQCPiKfs1" resolve="CellModel_Syncronizer" />
      <node concept="1Koe21" id="2_D_3xWyUce" role="1lVwrX">
        <node concept="9aQIb" id="2_D_3xWyUck" role="1Koe22">
          <node concept="3clFbS" id="2_D_3xWyUcl" role="9aQI4">
            <node concept="3clFbH" id="2_D_3xWyUco" role="3cqZAp">
              <node concept="raruj" id="2_D_3xWyUcq" role="lGtFl" />
              <node concept="29HgVG" id="2_D_3xWyUcy" role="lGtFl">
                <node concept="3NFfHV" id="2_D_3xWyUc_" role="3NFExx">
                  <node concept="3clFbS" id="2_D_3xWyUcA" role="2VODD2">
                    <node concept="3clFbF" id="2_D_3xWyUg7" role="3cqZAp">
                      <node concept="2OqwBi" id="2_D_3xWyUtq" role="3clFbG">
                        <node concept="30H73N" id="2_D_3xWyUg6" role="2Oq$k0" />
                        <node concept="3TrEf2" id="2_D_3xWyURi" role="2OqNvi">
                          <ref role="3Tt5mk" to="g3qn:4JFQCPiKkdP" resolve="cellToSyncronize" />
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
</model>

