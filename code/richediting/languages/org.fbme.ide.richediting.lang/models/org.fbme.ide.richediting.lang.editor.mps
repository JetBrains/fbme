<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d018f155-a8e1-4632-87ac-0cbc89a1f1c2(org.fbme.ide.richediting.lang.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="12" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="5" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="8dfbe92d-d233-4cc1-8ddb-a2863fd64843" name="org.fbme.ide.meta.editor" version="0" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(org.fbme.ide.iec61499.lang.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(org.fbme.ide.iec61499.lang.behavior)" />
    <import index="xpi8" ref="r:9a9b929e-1b8b-403c-99cb-9e49e4b8f68b(org.fbme.ide.iec61499.lang.editor)" />
    <import index="5kh9" ref="r:fb13b7e5-37c8-4188-96ed-057d5b8154fd(org.fbme.ide.st.lang.editor)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="z1c3" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="cwd8" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.declarations(org.fbme.lib/)" />
    <import index="74cb" ref="1db6de07-b355-4c0f-9979-75b4ac1e8215/java:org.fbme.lib.iec61499.instances(org.fbme.lib/)" />
    <import index="ar7i" ref="836d7b1e-a51f-4ec1-a3cc-1c0b7cb75eb9/java:org.fbme.scenes.controllers.scene(org.fbme.scenes/)" />
    <import index="uvki" ref="ce018f97-56b9-4ee7-9b5f-2d462b6628bf/java:org.fbme.ide.iec61499.repository(org.fbme.platform.lib/)" />
    <import index="je9f" ref="fa2f156c-8927-4ca1-847f-ba6f9ea8f1a5/java:org.fbme.ide.richediting.editor(org.fbme.richediting.lib/)" />
    <import index="p24u" ref="fa2f156c-8927-4ca1-847f-ba6f9ea8f1a5/java:org.fbme.ide.richediting.adapters.fbnetwork(org.fbme.richediting.lib/)" />
    <import index="56zl" ref="fa2f156c-8927-4ca1-847f-ba6f9ea8f1a5/java:org.fbme.ide.richediting.adapters.ecc(org.fbme.richediting.lib/)" />
    <import index="3rto" ref="fa2f156c-8927-4ca1-847f-ba6f9ea8f1a5/java:org.fbme.ide.richediting.adapters.fbnetwork.fb(org.fbme.richediting.lib/)" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi">
        <child id="2597348684684069742" name="contextHints" index="CpUAK" />
      </concept>
      <concept id="6822301196700715228" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclarationReference" flags="ig" index="2aJ2om">
        <reference id="5944657839026714445" name="hint" index="2$4xQ3" />
      </concept>
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <property id="1140524450557" name="separatorText" index="2czwfO" />
        <property id="1156252885376" name="separatorLayoutConstraint" index="Q2I2d" />
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
        <child id="1140524464359" name="emptyCellModel" index="2czzBI" />
      </concept>
      <concept id="1078308402140" name="jetbrains.mps.lang.editor.structure.CellModel_Custom" flags="sg" stub="8104358048506730068" index="gc7cB">
        <child id="1176795024817" name="cellProvider" index="3YsKMw" />
      </concept>
      <concept id="1106270549637" name="jetbrains.mps.lang.editor.structure.CellLayout_Horizontal" flags="nn" index="2iRfu4" />
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1237308012275" name="jetbrains.mps.lang.editor.structure.IndentLayoutNewLineStyleClassItem" flags="ln" index="ljvvj" />
      <concept id="1142886221719" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeCondition" flags="in" index="pkWqt" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1237385578942" name="jetbrains.mps.lang.editor.structure.IndentLayoutOnNewLineStyleClassItem" flags="ln" index="pVoyu" />
      <concept id="4242538589859161874" name="jetbrains.mps.lang.editor.structure.ExplicitHintsSpecification" flags="ng" index="2w$q5c" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="6718020819487620873" name="jetbrains.mps.lang.editor.structure.TransformationMenuReference_Named" flags="ng" index="A1WHu">
        <reference id="6718020819487620874" name="menu" index="A1WHt" />
      </concept>
      <concept id="5944657839000868711" name="jetbrains.mps.lang.editor.structure.ConceptEditorContextHints" flags="ig" index="2ABfQD">
        <child id="5944657839000877563" name="hints" index="2ABdcP" />
      </concept>
      <concept id="5944657839003601246" name="jetbrains.mps.lang.editor.structure.ConceptEditorHintDeclaration" flags="ig" index="2BsEeg">
        <property id="168363875802087287" name="showInUI" index="2gpH_U" />
        <property id="5944657839012629576" name="presentation" index="2BUmq6" />
      </concept>
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW">
        <child id="7033942394258392116" name="overridenEditorComponent" index="1PM95z" />
      </concept>
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <child id="1186403803051" name="query" index="VblUZ" />
      </concept>
      <concept id="1186403751766" name="jetbrains.mps.lang.editor.structure.FontStyleStyleClassItem" flags="ln" index="Vb9p2">
        <property id="1186403771423" name="style" index="Vbekb" />
      </concept>
      <concept id="1186404574412" name="jetbrains.mps.lang.editor.structure.BackgroundColorStyleClassItem" flags="ln" index="Veino" />
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1182191800432" name="jetbrains.mps.lang.editor.structure.QueryFunction_NodeListFilter" flags="in" index="107P5z" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1182233249301" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_childNode" flags="nn" index="12_Ws6" />
      <concept id="1233823429331" name="jetbrains.mps.lang.editor.structure.HorizontalGapStyleClassItem" flags="ln" index="15ARfc" />
      <concept id="8313721352726366579" name="jetbrains.mps.lang.editor.structure.CellModel_Empty" flags="ng" index="35HoNQ" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1225456267680" name="jetbrains.mps.lang.editor.structure.RGBColor" flags="ng" index="1iSF2X">
        <property id="1225456424731" name="value" index="1iTho6" />
      </concept>
      <concept id="7597241200646296619" name="jetbrains.mps.lang.editor.structure.QueryFunction_SNode" flags="in" index="3k4GqP" />
      <concept id="7597241200646296617" name="jetbrains.mps.lang.editor.structure.NavigatableNodeStyleClassItem" flags="ln" index="3k4GqR">
        <child id="7597241200646296618" name="functionNode" index="3k4GqO" />
      </concept>
      <concept id="1381004262292414836" name="jetbrains.mps.lang.editor.structure.ICellStyle" flags="ng" index="1k5N5V">
        <reference id="1381004262292426837" name="parentStyleClass" index="1k5W1q" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1215007762405" name="jetbrains.mps.lang.editor.structure.FloatStyleClassItem" flags="ln" index="3$6MrZ">
        <property id="1215007802031" name="value" index="3$6WeP" />
      </concept>
      <concept id="1215007883204" name="jetbrains.mps.lang.editor.structure.PaddingLeftStyleClassItem" flags="ln" index="3$7fVu" />
      <concept id="1215007897487" name="jetbrains.mps.lang.editor.structure.PaddingRightStyleClassItem" flags="ln" index="3$7jql" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1214560368769" name="emptyNoTargetText" index="39s7Ar" />
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389214265" name="jetbrains.mps.lang.editor.structure.EditorCellModel" flags="ng" index="3EYTF0">
        <child id="1142887637401" name="renderingCondition" index="pqm2j" />
        <child id="4202667662392416064" name="transformationMenu" index="3vIgyS" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <property id="1160590353935" name="usesFolding" index="S$Qs1" />
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="4242538589862653897" name="addHints" index="2whIAn" />
        <child id="7723470090030138869" name="foldedCellModel" index="AHCbl" />
        <child id="6240706158490734121" name="collapseByDefaultCondition" index="3EXrW6" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1082639509531" name="nullText" index="ilYzB" />
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR">
        <child id="1182233390675" name="filter" index="12AuX0" />
      </concept>
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="7033942394256351208" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclarationReference" flags="ng" index="1PE4EZ">
        <reference id="7033942394256351817" name="editorComponent" index="1PE7su" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="625126330682908270" name="jetbrains.mps.lang.editor.structure.CellModel_ReferencePresentation" flags="sg" stub="730538219795961225" index="3SHvHV" />
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1176749715029" name="jetbrains.mps.lang.editor.structure.QueryFunction_CellProvider" flags="in" index="3VJUX4" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="nn" index="2tJIrI" />
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
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
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
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
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
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204851882688" name="jetbrains.mps.lang.smodel.structure.LinkRefQualifier" flags="ng" index="26LbJo">
        <reference id="1204851882689" name="link" index="26LbJp" />
      </concept>
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7835263205327057228" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenAndChildAttributesOperation" flags="ng" index="Bykcj" />
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="1139621453865" name="jetbrains.mps.lang.smodel.structure.Node_IsInstanceOfOperation" flags="nn" index="1mIQ4w">
        <child id="1177027386292" name="conceptArgument" index="cj9EA" />
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
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="5jb5jNC4ggq">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
    <node concept="2aJ2om" id="7MmFhmekeg1" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="rich" />
    </node>
    <node concept="3EZMnI" id="5jb5jNC4gBk" role="2wV5jI">
      <node concept="2iRkQZ" id="5jb5jNC4gBl" role="2iSdaV" />
      <node concept="3EZMnI" id="5jb5jNC4gBn" role="3EZMnx">
        <node concept="3F0ifn" id="5jb5jNC4gBo" role="3EZMnx">
          <property role="3F0ifm" value="Basic Function Block" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0A7n" id="5jb5jNC4gBp" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="VPM3Z" id="5jb5jNC4gBs" role="3F10Kt" />
        <node concept="2iRfu4" id="5jb5jNC4gBt" role="2iSdaV" />
        <node concept="2w$q5c" id="5jb5jNC4gBu" role="2whIAn" />
      </node>
      <node concept="3F0ifn" id="5jb5jNC4gBv" role="3EZMnx">
        <node concept="VPM3Z" id="5jb5jNC4gBw" role="3F10Kt" />
      </node>
      <node concept="PMmxH" id="5jb5jNC4gBy" role="3EZMnx">
        <ref role="PMmxG" node="1HEL0zWg4im" resolve="DeclarationWithInterface_Preview" />
      </node>
      <node concept="3F0ifn" id="5jb5jNC4gBz" role="3EZMnx" />
      <node concept="3F0ifn" id="5jb5jNC4gB$" role="3EZMnx">
        <property role="3F0ifm" value="ECC:" />
        <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
      </node>
      <node concept="gc7cB" id="4tjN0ibUnwm" role="3EZMnx">
        <node concept="3VJUX4" id="4tjN0ibUnwo" role="3YsKMw">
          <node concept="3clFbS" id="4tjN0ibUnwq" role="2VODD2">
            <node concept="3clFbF" id="4tjN0ibUnwO" role="3cqZAp">
              <node concept="2ShNRf" id="5jb5jNC4gBD" role="3clFbG">
                <node concept="YeOm9" id="5jb5jNC4gBE" role="2ShVmc">
                  <node concept="1Y3b0j" id="5jb5jNC4gBF" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                    <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                    <node concept="3Tm1VV" id="5jb5jNC4gBG" role="1B3o_S" />
                    <node concept="3clFb_" id="5jb5jNC4gBH" role="jymVt">
                      <property role="TrG5h" value="createEditorCell" />
                      <node concept="3Tm1VV" id="5jb5jNC4gBI" role="1B3o_S" />
                      <node concept="3uibUv" id="5jb5jNC4gBJ" role="3clF45">
                        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                      </node>
                      <node concept="37vLTG" id="5jb5jNC4gBK" role="3clF46">
                        <property role="TrG5h" value="context" />
                        <node concept="3uibUv" id="5jb5jNC4gBL" role="1tU5fm">
                          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="5jb5jNC4gBM" role="3clF47">
                        <node concept="3clFbF" id="1R4IoyQIHrE" role="3cqZAp">
                          <node concept="2YIFZM" id="1R4IoyQIKUw" role="3clFbG">
                            <ref role="1Pybhc" to="56zl:~ECCEditors" resolve="ECCEditors" />
                            <ref role="37wK5l" to="56zl:~ECCEditors.createEccEditor(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="createEccEditor" />
                            <node concept="37vLTw" id="1R4IoyQIKZP" role="37wK5m">
                              <ref role="3cqZAo" node="5jb5jNC4gBK" resolve="context" />
                            </node>
                            <node concept="pncrf" id="1R4IoyQILea" role="37wK5m" />
                            <node concept="Rm8GO" id="3tHZ0yHxzET" role="37wK5m">
                              <ref role="Rm8GQ" to="ar7i:~SceneLayout.WINDOWED" resolve="WINDOWED" />
                              <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="pncrf" id="5jb5jNC4gE8" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="38k27IRjnOs" role="3EZMnx" />
      <node concept="3F2HdR" id="38k27IRjplw" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:3HBlKeoZ0WV" resolve="algorithms" />
        <node concept="2iRkQZ" id="38k27IRjplE" role="2czzBx" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="PI_pXYB6o3">
    <property role="3GE5qa" value="fbtype.composite" />
    <ref role="1XX52x" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
    <node concept="2aJ2om" id="7MmFhmekdTS" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="rich" />
    </node>
    <node concept="3EZMnI" id="6LU90BQoFJn" role="2wV5jI">
      <node concept="2iRkQZ" id="6LU90BQoFJo" role="2iSdaV" />
      <node concept="3EZMnI" id="6LU90BQoFJp" role="3EZMnx">
        <node concept="3F0ifn" id="6LU90BQoFJq" role="3EZMnx">
          <property role="3F0ifm" value="Composite Function Block" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0A7n" id="6LU90BQoFJr" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="VPM3Z" id="6LU90BQoFJs" role="3F10Kt" />
        <node concept="2iRfu4" id="6LU90BQoFJt" role="2iSdaV" />
        <node concept="2w$q5c" id="6LU90BQoFJu" role="2whIAn" />
      </node>
      <node concept="3F0ifn" id="6LU90BQoFJv" role="3EZMnx">
        <node concept="VPM3Z" id="6LU90BQoFJw" role="3F10Kt" />
      </node>
      <node concept="PMmxH" id="5jb5jNC4aBs" role="3EZMnx">
        <ref role="PMmxG" node="cDnfeSBx_k" resolve="DeclarationWithInterface_InterfacePart" />
      </node>
      <node concept="3F0ifn" id="5jb5jNC4cy3" role="3EZMnx" />
      <node concept="3F0ifn" id="6LU90BQoFKZ" role="3EZMnx">
        <property role="3F0ifm" value="Network:" />
        <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
      </node>
      <node concept="gc7cB" id="4tjN0ibUntB" role="3EZMnx">
        <node concept="3VJUX4" id="4tjN0ibUntD" role="3YsKMw">
          <node concept="3clFbS" id="4tjN0ibUntF" role="2VODD2">
            <node concept="3clFbF" id="4tjN0ibUnu1" role="3cqZAp">
              <node concept="2ShNRf" id="6LU90BQoFL4" role="3clFbG">
                <node concept="YeOm9" id="6LU90BQoFL5" role="2ShVmc">
                  <node concept="1Y3b0j" id="6LU90BQoFL6" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                    <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                    <node concept="3Tm1VV" id="6LU90BQoFL7" role="1B3o_S" />
                    <node concept="3clFb_" id="6LU90BQoFL8" role="jymVt">
                      <property role="TrG5h" value="createEditorCell" />
                      <node concept="3Tm1VV" id="6LU90BQoFL9" role="1B3o_S" />
                      <node concept="3uibUv" id="6LU90BQoFLa" role="3clF45">
                        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                      </node>
                      <node concept="37vLTG" id="6LU90BQoFLb" role="3clF46">
                        <property role="TrG5h" value="context" />
                        <node concept="3uibUv" id="6LU90BQoFLc" role="1tU5fm">
                          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="6LU90BQoFLd" role="3clF47">
                        <node concept="3clFbF" id="7oJsd9wVM$0" role="3cqZAp">
                          <node concept="2YIFZM" id="7oJsd9wVOf2" role="3clFbG">
                            <ref role="1Pybhc" to="p24u:~FBNetworkEditors" resolve="FBNetworkEditors" />
                            <ref role="37wK5l" to="p24u:~FBNetworkEditors.createFBNetworkCell(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="createFBNetworkCell" />
                            <node concept="37vLTw" id="7oJsd9wVOiG" role="37wK5m">
                              <ref role="3cqZAo" node="6LU90BQoFLb" resolve="context" />
                            </node>
                            <node concept="pncrf" id="7oJsd9wVOxp" role="37wK5m" />
                            <node concept="Rm8GO" id="3tHZ0yHx$A$" role="37wK5m">
                              <ref role="Rm8GQ" to="ar7i:~SceneLayout.WINDOWED" resolve="WINDOWED" />
                              <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="pncrf" id="6LU90BQoFLy" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="5jb5jNC4a_Z">
    <property role="TrG5h" value="DeclarationWithInterfaceAndAdapters_InterfacePart" />
    <property role="3GE5qa" value="fbtype" />
    <ref role="1XX52x" to="xiqq:uLhTRQWXSY" resolve="DeclarationWithInterfaceAndAdapters" />
    <node concept="3EZMnI" id="5jb5jNC4aA0" role="2wV5jI">
      <node concept="VPM3Z" id="5jb5jNC4aA1" role="3F10Kt" />
      <node concept="2iRfu4" id="5jb5jNC4aBg" role="2iSdaV" />
      <node concept="3EZMnI" id="5jb5jNC4aA3" role="3EZMnx">
        <node concept="VPM3Z" id="5jb5jNC4aA4" role="3F10Kt" />
        <node concept="3F0ifn" id="5jb5jNC4aA5" role="3EZMnx">
          <property role="3F0ifm" value="Interface:" />
          <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
        </node>
        <node concept="3F0ifn" id="5jb5jNC4aAb" role="3EZMnx">
          <node concept="VPM3Z" id="5jb5jNC4aAc" role="3F10Kt" />
        </node>
        <node concept="3EZMnI" id="5jb5jNC4aA6" role="3EZMnx">
          <node concept="VPM3Z" id="5jb5jNC4aA7" role="3F10Kt" />
          <node concept="3XFhqQ" id="5jb5jNC4aA8" role="3EZMnx" />
          <node concept="3EZMnI" id="5jb5jNC4aA9" role="3EZMnx">
            <node concept="VPM3Z" id="5jb5jNC4aAa" role="3F10Kt" />
            <node concept="3F0ifn" id="5jb5jNC4aAd" role="3EZMnx">
              <property role="3F0ifm" value="Event Inputs" />
              <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
              <node concept="VPM3Z" id="5jb5jNC4aAe" role="3F10Kt" />
            </node>
            <node concept="3F2HdR" id="5jb5jNC4aAf" role="3EZMnx">
              <ref role="1NtTu8" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
              <node concept="2EHx9g" id="5jb5jNC4aAg" role="2czzBx" />
              <node concept="3EZMnI" id="5jb5jNC4aAh" role="2czzBI">
                <node concept="3XFhqQ" id="5jb5jNC4aAi" role="3EZMnx" />
                <node concept="3F0ifn" id="5jb5jNC4aAj" role="3EZMnx">
                  <property role="3F0ifm" value="empty" />
                  <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
                </node>
                <node concept="2iRfu4" id="5jb5jNC4aAk" role="2iSdaV" />
                <node concept="VPM3Z" id="5jb5jNC4aAl" role="3F10Kt" />
              </node>
            </node>
            <node concept="3F0ifn" id="5jb5jNC4aAm" role="3EZMnx">
              <node concept="VPM3Z" id="5jb5jNC4aAn" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="5jb5jNC4aAo" role="3EZMnx">
              <property role="3F0ifm" value="Event Outputs" />
              <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
              <node concept="VPM3Z" id="5jb5jNC4aAp" role="3F10Kt" />
            </node>
            <node concept="3F2HdR" id="5jb5jNC4aAq" role="3EZMnx">
              <ref role="1NtTu8" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
              <node concept="2EHx9g" id="5jb5jNC4aAr" role="2czzBx" />
              <node concept="3EZMnI" id="5jb5jNC4aAs" role="2czzBI">
                <node concept="3XFhqQ" id="5jb5jNC4aAt" role="3EZMnx" />
                <node concept="3F0ifn" id="5jb5jNC4aAu" role="3EZMnx">
                  <property role="3F0ifm" value="empty" />
                  <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
                </node>
                <node concept="2iRfu4" id="5jb5jNC4aAv" role="2iSdaV" />
                <node concept="VPM3Z" id="5jb5jNC4aAw" role="3F10Kt" />
              </node>
            </node>
            <node concept="3F0ifn" id="5jb5jNC4aAx" role="3EZMnx">
              <node concept="VPM3Z" id="5jb5jNC4aAy" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="5jb5jNC4aAz" role="3EZMnx">
              <property role="3F0ifm" value="Data Inputs" />
              <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
              <node concept="VPM3Z" id="5jb5jNC4aA$" role="3F10Kt" />
            </node>
            <node concept="3F2HdR" id="5jb5jNC4aA_" role="3EZMnx">
              <ref role="1NtTu8" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
              <node concept="2EHx9g" id="5jb5jNC4aAA" role="2czzBx" />
              <node concept="3EZMnI" id="5jb5jNC4aAB" role="2czzBI">
                <node concept="3XFhqQ" id="5jb5jNC4aAC" role="3EZMnx" />
                <node concept="3F0ifn" id="5jb5jNC4aAD" role="3EZMnx">
                  <property role="3F0ifm" value="empty" />
                  <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
                </node>
                <node concept="2iRfu4" id="5jb5jNC4aAE" role="2iSdaV" />
                <node concept="VPM3Z" id="5jb5jNC4aAF" role="3F10Kt" />
              </node>
            </node>
            <node concept="3F0ifn" id="5jb5jNC4aAG" role="3EZMnx">
              <node concept="VPM3Z" id="5jb5jNC4aAH" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="5jb5jNC4aAI" role="3EZMnx">
              <property role="3F0ifm" value="Data Outputs" />
              <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
              <node concept="VPM3Z" id="5jb5jNC4aAJ" role="3F10Kt" />
            </node>
            <node concept="3F2HdR" id="5jb5jNC4aAK" role="3EZMnx">
              <ref role="1NtTu8" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
              <node concept="2EHx9g" id="5jb5jNC4aAL" role="2czzBx" />
              <node concept="3EZMnI" id="5jb5jNC4aAM" role="2czzBI">
                <node concept="3XFhqQ" id="5jb5jNC4aAN" role="3EZMnx" />
                <node concept="3F0ifn" id="5jb5jNC4aAO" role="3EZMnx">
                  <property role="3F0ifm" value="empty" />
                  <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
                </node>
                <node concept="2iRfu4" id="5jb5jNC4aAP" role="2iSdaV" />
                <node concept="VPM3Z" id="5jb5jNC4aAQ" role="3F10Kt" />
              </node>
            </node>
            <node concept="3F0ifn" id="5jb5jNC4aAR" role="3EZMnx">
              <node concept="VPM3Z" id="5jb5jNC4aAS" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="5jb5jNC4aAT" role="3EZMnx">
              <property role="3F0ifm" value="Sockets" />
              <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
              <node concept="VPM3Z" id="5jb5jNC4aAU" role="3F10Kt" />
            </node>
            <node concept="3F2HdR" id="5jb5jNC4aAV" role="3EZMnx">
              <ref role="1NtTu8" to="xiqq:75nMhMfSQRy" resolve="sockets" />
              <node concept="2EHx9g" id="5jb5jNC4aAW" role="2czzBx" />
              <node concept="3EZMnI" id="5jb5jNC4aAX" role="2czzBI">
                <node concept="3XFhqQ" id="5jb5jNC4aAY" role="3EZMnx" />
                <node concept="3F0ifn" id="5jb5jNC4aAZ" role="3EZMnx">
                  <property role="3F0ifm" value="empty" />
                  <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
                </node>
                <node concept="2iRfu4" id="5jb5jNC4aB0" role="2iSdaV" />
                <node concept="VPM3Z" id="5jb5jNC4aB1" role="3F10Kt" />
              </node>
            </node>
            <node concept="3F0ifn" id="5jb5jNC4aB2" role="3EZMnx">
              <node concept="VPM3Z" id="5jb5jNC4aB3" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="5jb5jNC4aB4" role="3EZMnx">
              <property role="3F0ifm" value="Plugs" />
              <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
              <node concept="VPM3Z" id="5jb5jNC4aB5" role="3F10Kt" />
            </node>
            <node concept="3F2HdR" id="5jb5jNC4aB6" role="3EZMnx">
              <ref role="1NtTu8" to="xiqq:75nMhMfSQR7" resolve="plugs" />
              <node concept="2EHx9g" id="5jb5jNC4aB7" role="2czzBx" />
              <node concept="3EZMnI" id="5jb5jNC4aB8" role="2czzBI">
                <node concept="3XFhqQ" id="5jb5jNC4aB9" role="3EZMnx" />
                <node concept="3F0ifn" id="5jb5jNC4aBa" role="3EZMnx">
                  <property role="3F0ifm" value="empty" />
                  <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
                </node>
                <node concept="2iRfu4" id="5jb5jNC4aBb" role="2iSdaV" />
                <node concept="VPM3Z" id="5jb5jNC4aBc" role="3F10Kt" />
              </node>
            </node>
            <node concept="2iRkQZ" id="5jb5jNC4aBd" role="2iSdaV" />
          </node>
          <node concept="2iRfu4" id="5jb5jNC4aBe" role="2iSdaV" />
        </node>
        <node concept="2iRkQZ" id="5jb5jNC4aBf" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="5jb5jNC4aBh" role="3EZMnx">
        <property role="3F0ifm" value="                   " />
        <node concept="VPM3Z" id="5jb5jNC4aBi" role="3F10Kt" />
      </node>
      <node concept="3EZMnI" id="5jb5jNC4aBk" role="3EZMnx">
        <node concept="VPM3Z" id="5jb5jNC4aBl" role="3F10Kt" />
        <node concept="3F0ifn" id="5jb5jNC4aBm" role="3EZMnx">
          <property role="3F0ifm" value="Preview:" />
          <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
        </node>
        <node concept="3F0ifn" id="5jb5jNC4aBn" role="3EZMnx">
          <node concept="VPM3Z" id="5jb5jNC4aBo" role="3F10Kt" />
        </node>
        <node concept="PMmxH" id="5jb5jNC4aBq" role="3EZMnx">
          <ref role="PMmxG" node="1HEL0zWg4im" resolve="DeclarationWithInterface_Preview" />
        </node>
        <node concept="2iRkQZ" id="5jb5jNC4aBr" role="2iSdaV" />
      </node>
    </node>
    <node concept="1PE4EZ" id="cDnfeSBy1Q" role="1PM95z">
      <ref role="1PE7su" node="cDnfeSBx_k" resolve="DeclarationWithInterface_InterfacePart" />
    </node>
  </node>
  <node concept="PKFIW" id="1HEL0zWg4im">
    <property role="3GE5qa" value="fbtype" />
    <property role="TrG5h" value="DeclarationWithInterface_Preview" />
    <ref role="1XX52x" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
    <node concept="gc7cB" id="1HEL0zWg4io" role="2wV5jI">
      <node concept="3VJUX4" id="1HEL0zWg4iq" role="3YsKMw">
        <node concept="3clFbS" id="1HEL0zWg4is" role="2VODD2">
          <node concept="3clFbF" id="1HEL0zWg4oS" role="3cqZAp">
            <node concept="2ShNRf" id="1HEL0zWg4oQ" role="3clFbG">
              <node concept="YeOm9" id="1HEL0zWg5ne" role="2ShVmc">
                <node concept="1Y3b0j" id="1HEL0zWg5nh" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                  <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                  <node concept="3Tm1VV" id="1HEL0zWg5ni" role="1B3o_S" />
                  <node concept="3clFb_" id="1HEL0zWg5nj" role="jymVt">
                    <property role="TrG5h" value="createEditorCell" />
                    <node concept="3Tm1VV" id="1HEL0zWg5nk" role="1B3o_S" />
                    <node concept="3uibUv" id="1HEL0zWg5nm" role="3clF45">
                      <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                    </node>
                    <node concept="37vLTG" id="1HEL0zWg5nn" role="3clF46">
                      <property role="TrG5h" value="e" />
                      <node concept="3uibUv" id="1cTKxMSamJp" role="1tU5fm">
                        <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1HEL0zWg5np" role="3clF47">
                      <node concept="3cpWs8" id="2yJZQx2ADRI" role="3cqZAp">
                        <node concept="3cpWsn" id="2yJZQx2ADRJ" role="3cpWs9">
                          <property role="TrG5h" value="repository" />
                          <node concept="3uibUv" id="739Y6csNCSG" role="1tU5fm">
                            <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
                          </node>
                          <node concept="2YIFZM" id="2yJZQx2AEox" role="33vP2m">
                            <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
                            <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                            <node concept="2OqwBi" id="2yJZQx2AF6G" role="37wK5m">
                              <node concept="2OqwBi" id="2yJZQx2AEHm" role="2Oq$k0">
                                <node concept="37vLTw" id="2yJZQx2AEuV" role="2Oq$k0">
                                  <ref role="3cqZAo" node="1HEL0zWg5nn" resolve="e" />
                                </node>
                                <node concept="liA8E" id="2yJZQx2AEUn" role="2OqNvi">
                                  <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext()" resolve="getOperationContext" />
                                </node>
                              </node>
                              <node concept="liA8E" id="2yJZQx2AFm7" role="2OqNvi">
                                <ref role="37wK5l" to="w1kc:~IOperationContext.getProject()" resolve="getProject" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="1HEL0zWg5IP" role="3cqZAp">
                        <node concept="2OqwBi" id="1cTKxMSasRK" role="3clFbG">
                          <node concept="2ShNRf" id="1HEL0zWg5IN" role="2Oq$k0">
                            <node concept="1pGfFk" id="1HEL0zWg6PY" role="2ShVmc">
                              <ref role="37wK5l" to="3rto:~FBTypeTemplateCellComponent.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.lib.iec61499.descriptors.FBTypeDescriptor)" resolve="FBTypeTemplateCellComponent" />
                              <node concept="1Q80Hx" id="1HEL0zWg70_" role="37wK5m" />
                              <node concept="pncrf" id="1HEL0zWg7p7" role="37wK5m" />
                              <node concept="2OqwBi" id="2yJZQx2AHAr" role="37wK5m">
                                <node concept="2OqwBi" id="2yJZQx2AG9e" role="2Oq$k0">
                                  <node concept="37vLTw" id="2yJZQx2AFVW" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2yJZQx2ADRJ" resolve="repository" />
                                  </node>
                                  <node concept="liA8E" id="2yJZQx2AGsh" role="2OqNvi">
                                    <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                                    <node concept="pncrf" id="2yJZQx2AGz8" role="37wK5m" />
                                    <node concept="3VsKOn" id="2yJZQx2AHgO" role="37wK5m">
                                      <ref role="3VsUkX" to="cwd8:~FBInterfaceDeclaration" resolve="FBInterfaceDeclaration" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="liA8E" id="3bdNQ1lHKCt" role="2OqNvi">
                                  <ref role="37wK5l" to="cwd8:~FBInterfaceDeclaration.getTemplateTypeDescriptor()" resolve="getTemplateTypeDescriptor" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="XRfY9Qo5SL" role="2OqNvi">
                            <ref role="37wK5l" to="3rto:~FBTypeTemplateCellComponent.getCellCollection()" resolve="getCellCollection" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="pncrf" id="1HEL0zWgak7" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="VPM3Z" id="7qPnRGGndSl" role="3F10Kt" />
    </node>
  </node>
  <node concept="24kQdi" id="6LU90BPrTlg">
    <property role="3GE5qa" value="interface" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsiC" resolve="ParameterDeclaration" />
    <node concept="2aJ2om" id="4M6sES_biKz" role="CpUAK">
      <ref role="2$4xQ3" node="1kUX9T6j1Ql" resolve="interface" />
    </node>
    <node concept="3EZMnI" id="6LU90BPVX3e" role="2wV5jI">
      <node concept="3F0ifn" id="6LU90BPVX3f" role="3EZMnx">
        <property role="3F0ifm" value="  •" />
        <node concept="VPM3Z" id="6LU90BPVX3g" role="3F10Kt" />
      </node>
      <node concept="3F0A7n" id="6LU90BPVX3h" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="6LU90BPVXfS" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="3F1sOY" id="6LU90BPVXg4" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:3HBlKeoYM6s" resolve="type" />
      </node>
      <node concept="3EZMnI" id="2lwHqHks7de" role="3EZMnx">
        <node concept="3F0ifn" id="2lwHqHks7ec" role="3EZMnx">
          <property role="3F0ifm" value=":=" />
          <ref role="1k5W1q" to="5kh9:7GyesCpx4MI" resolve="Operational" />
        </node>
        <node concept="3F1sOY" id="2lwHqHks4e_" role="3EZMnx">
          <ref role="1NtTu8" to="xiqq:2lwHqHks4d2" resolve="initialValue" />
        </node>
        <node concept="2iRfu4" id="2lwHqHks7dh" role="2iSdaV" />
        <node concept="VPM3Z" id="2lwHqHks7di" role="3F10Kt" />
        <node concept="pkWqt" id="3Sv$YXXWN9U" role="pqm2j">
          <node concept="3clFbS" id="3Sv$YXXWN9V" role="2VODD2">
            <node concept="3clFbF" id="3Sv$YXXWNhg" role="3cqZAp">
              <node concept="2OqwBi" id="3Sv$YXXWP2r" role="3clFbG">
                <node concept="2OqwBi" id="3Sv$YXXWNxn" role="2Oq$k0">
                  <node concept="pncrf" id="3Sv$YXXWNhf" role="2Oq$k0" />
                  <node concept="Bykcj" id="3Sv$YXXWOs8" role="2OqNvi">
                    <node concept="1aIX9F" id="3Sv$YXXWOsa" role="1xVPHs">
                      <node concept="26LbJo" id="3Sv$YXXWOH8" role="1aIX9E">
                        <ref role="26LbJp" to="xiqq:2lwHqHks4d2" resolve="initialValue" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="3Sv$YXXWPqt" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="6LU90BPVX3F" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2lwHqHk$A_Z">
    <property role="3GE5qa" value="resources" />
    <ref role="1XX52x" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
    <node concept="2aJ2om" id="7MmFhmekdw2" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="rich" />
    </node>
    <node concept="3EZMnI" id="7oJsd9wWOOJ" role="2wV5jI">
      <node concept="3EZMnI" id="7oJsd9wWOOL" role="3EZMnx">
        <node concept="3F0ifn" id="7oJsd9wWOOM" role="3EZMnx">
          <property role="3F0ifm" value="Resource" />
          <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
        </node>
        <node concept="3F0A7n" id="7oJsd9wWOON" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="7oJsd9wWQBK" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="VPM3Z" id="7oJsd9wWOOQ" role="3F10Kt" />
        <node concept="2iRfu4" id="7oJsd9wWOOR" role="2iSdaV" />
        <node concept="2w$q5c" id="7oJsd9wWOOS" role="2whIAn" />
        <node concept="1iCGBv" id="7oJsd9wWQC2" role="3EZMnx">
          <ref role="1NtTu8" to="xiqq:2lwHqHkyELp" resolve="type" />
          <node concept="1sVBvm" id="7oJsd9wWQC4" role="1sWHZn">
            <node concept="3SHvHV" id="7oJsd9wWQCe" role="2wV5jI" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7oJsd9wY1v5" role="3EZMnx" />
      <node concept="3EZMnI" id="7oJsd9wWPue" role="3EZMnx">
        <node concept="VPM3Z" id="7oJsd9wWPug" role="3F10Kt" />
        <node concept="3XFhqQ" id="7oJsd9wWPuA" role="3EZMnx" />
        <node concept="3XFhqQ" id="7oJsd9wWPuG" role="3EZMnx" />
        <node concept="3EZMnI" id="7oJsd9wWPCR" role="3EZMnx">
          <node concept="VPM3Z" id="7oJsd9wWPCT" role="3F10Kt" />
          <node concept="3F0ifn" id="7oJsd9wWOOV" role="3EZMnx">
            <property role="3F0ifm" value="Parameters:" />
            <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
          </node>
          <node concept="3EZMnI" id="4tjN0ibUn06" role="3EZMnx">
            <node concept="VPM3Z" id="4tjN0ibUn08" role="3F10Kt" />
            <node concept="3XFhqQ" id="4tjN0ibUn0E" role="3EZMnx" />
            <node concept="3F2HdR" id="7oJsd9wWOOW" role="3EZMnx">
              <ref role="1NtTu8" to="xiqq:2lwHqHk$ftU" resolve="parameters" />
              <node concept="2iRkQZ" id="7oJsd9wWOOX" role="2czzBx" />
            </node>
            <node concept="2iRfu4" id="4tjN0ibUn0b" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="4tjN0ibUmZE" role="3EZMnx" />
          <node concept="3F0ifn" id="7oJsd9wWOOZ" role="3EZMnx">
            <property role="3F0ifm" value="Network:" />
            <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
          </node>
          <node concept="3F0ifn" id="7oJsd9x59qn" role="3EZMnx" />
          <node concept="gc7cB" id="4tjN0ibUn19" role="3EZMnx">
            <node concept="3VJUX4" id="4tjN0ibUn1b" role="3YsKMw">
              <node concept="3clFbS" id="4tjN0ibUn1d" role="2VODD2">
                <node concept="3clFbF" id="7oJsd9wWOP3" role="3cqZAp">
                  <node concept="2ShNRf" id="7oJsd9wWOP4" role="3clFbG">
                    <node concept="YeOm9" id="7oJsd9wWOP5" role="2ShVmc">
                      <node concept="1Y3b0j" id="7oJsd9wWOP6" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                        <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                        <node concept="3Tm1VV" id="7oJsd9wWOP7" role="1B3o_S" />
                        <node concept="3clFb_" id="7oJsd9wWOP8" role="jymVt">
                          <property role="TrG5h" value="createEditorCell" />
                          <node concept="3Tm1VV" id="7oJsd9wWOP9" role="1B3o_S" />
                          <node concept="3uibUv" id="7oJsd9wWOPa" role="3clF45">
                            <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                          </node>
                          <node concept="37vLTG" id="7oJsd9wWOPb" role="3clF46">
                            <property role="TrG5h" value="context" />
                            <node concept="3uibUv" id="7oJsd9wWOPc" role="1tU5fm">
                              <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="7oJsd9wWOPd" role="3clF47">
                            <node concept="3clFbF" id="7oJsd9wWOPe" role="3cqZAp">
                              <node concept="2YIFZM" id="7oJsd9wWOPf" role="3clFbG">
                                <ref role="1Pybhc" to="p24u:~FBNetworkEditors" resolve="FBNetworkEditors" />
                                <ref role="37wK5l" to="p24u:~FBNetworkEditors.createFBNetworkCell(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="createFBNetworkCell" />
                                <node concept="37vLTw" id="7oJsd9wWOPg" role="37wK5m">
                                  <ref role="3cqZAo" node="7oJsd9wWOPb" resolve="context" />
                                </node>
                                <node concept="pncrf" id="7oJsd9wWOPh" role="37wK5m" />
                                <node concept="Rm8GO" id="3tHZ0yHx_ko" role="37wK5m">
                                  <ref role="Rm8GQ" to="ar7i:~SceneLayout.WINDOWED" resolve="WINDOWED" />
                                  <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="pncrf" id="7oJsd9wWOPi" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRkQZ" id="7oJsd9wWPCW" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="7oJsd9wWPuj" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="7oJsd9wWOPr" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2lwHqHkp4xL">
    <property role="3GE5qa" value="resources" />
    <ref role="1XX52x" to="xiqq:2lwHqHjKhl7" resolve="ResourceTypeDeclaration" />
    <node concept="3EZMnI" id="2lwHqHkp4xQ" role="2wV5jI">
      <node concept="3EZMnI" id="7oJsd9wSEd2" role="3EZMnx">
        <node concept="3F0ifn" id="7oJsd9wSEd3" role="3EZMnx">
          <property role="3F0ifm" value="Resource Type" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0A7n" id="7oJsd9wSEd4" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="VPM3Z" id="7oJsd9wSEd7" role="3F10Kt" />
        <node concept="2iRfu4" id="7oJsd9wSEd8" role="2iSdaV" />
        <node concept="2w$q5c" id="7oJsd9wSEd9" role="2whIAn" />
      </node>
      <node concept="3F0ifn" id="7oJsd9wSH4t" role="3EZMnx" />
      <node concept="3F0ifn" id="7oJsd9wVF_t" role="3EZMnx">
        <property role="3F0ifm" value="Parameters:" />
        <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
      </node>
      <node concept="3F2HdR" id="7oJsd9wVF_S" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:2lwHqHjNQ73" resolve="parameters" />
        <node concept="2iRkQZ" id="7oJsd9wVF_U" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="7oJsd9wVFA9" role="3EZMnx" />
      <node concept="3F0ifn" id="7oJsd9wVFAp" role="3EZMnx">
        <property role="3F0ifm" value="Network:" />
        <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
      </node>
      <node concept="gc7cB" id="4tjN0ibUncb" role="3EZMnx">
        <node concept="3VJUX4" id="4tjN0ibUncf" role="3YsKMw">
          <node concept="3clFbS" id="4tjN0ibUncj" role="2VODD2">
            <node concept="3clFbF" id="7oJsd9wWgf0" role="3cqZAp">
              <node concept="2ShNRf" id="7oJsd9wWgf1" role="3clFbG">
                <node concept="YeOm9" id="7oJsd9wWgf2" role="2ShVmc">
                  <node concept="1Y3b0j" id="7oJsd9wWgf3" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                    <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                    <node concept="3Tm1VV" id="7oJsd9wWgf4" role="1B3o_S" />
                    <node concept="3clFb_" id="7oJsd9wWgf5" role="jymVt">
                      <property role="TrG5h" value="createEditorCell" />
                      <node concept="3Tm1VV" id="7oJsd9wWgf6" role="1B3o_S" />
                      <node concept="3uibUv" id="7oJsd9wWgf7" role="3clF45">
                        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                      </node>
                      <node concept="37vLTG" id="7oJsd9wWgf8" role="3clF46">
                        <property role="TrG5h" value="context" />
                        <node concept="3uibUv" id="7oJsd9wWgf9" role="1tU5fm">
                          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="7oJsd9wWgfa" role="3clF47">
                        <node concept="3clFbF" id="7oJsd9wWgfb" role="3cqZAp">
                          <node concept="2YIFZM" id="7oJsd9wWgfc" role="3clFbG">
                            <ref role="1Pybhc" to="p24u:~FBNetworkEditors" resolve="FBNetworkEditors" />
                            <ref role="37wK5l" to="p24u:~FBNetworkEditors.createFBNetworkCell(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="createFBNetworkCell" />
                            <node concept="37vLTw" id="7oJsd9wWgfd" role="37wK5m">
                              <ref role="3cqZAo" node="7oJsd9wWgf8" resolve="context" />
                            </node>
                            <node concept="pncrf" id="7oJsd9wWgfe" role="37wK5m" />
                            <node concept="Rm8GO" id="3tHZ0yHx_$D" role="37wK5m">
                              <ref role="Rm8GQ" to="ar7i:~SceneLayout.WINDOWED" resolve="WINDOWED" />
                              <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="pncrf" id="7oJsd9wWgff" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7oJsd9wVFAE" role="3EZMnx" />
      <node concept="3F0ifn" id="7oJsd9wWgpX" role="3EZMnx">
        <property role="3F0ifm" value="Instantiable Function Blocks:" />
        <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
      </node>
      <node concept="3EZMnI" id="7oJsd9wWh19" role="3EZMnx">
        <node concept="VPM3Z" id="7oJsd9wWh1b" role="3F10Kt" />
        <node concept="3XFhqQ" id="7oJsd9wWhb6" role="3EZMnx" />
        <node concept="3F2HdR" id="7oJsd9wWhba" role="3EZMnx">
          <ref role="1NtTu8" to="xiqq:2lwHqHjRwSo" resolve="instantiableFBTypes" />
          <node concept="2iRkQZ" id="7oJsd9wWhkr" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="7oJsd9wWh1e" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="7oJsd9wSH4r" role="2iSdaV" />
    </node>
    <node concept="2aJ2om" id="7MmFhmekdqA" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="rich" />
    </node>
  </node>
  <node concept="24kQdi" id="38k27IRjpm5">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1XX52x" to="xiqq:3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
    <node concept="2aJ2om" id="7MmFhmekebX" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="rich" />
    </node>
    <node concept="3EZMnI" id="38k27IRjp_z" role="2wV5jI">
      <node concept="3F0ifn" id="38k27IRjr8S" role="3EZMnx">
        <property role="3F0ifm" value="Algorithm:" />
        <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
      </node>
      <node concept="3F0A7n" id="38k27IRjp__" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="38k27IRjp_A" role="3EZMnx">
        <property role="3F0ifm" value="(" />
        <node concept="11LMrY" id="38k27IRjs4V" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="38k27IRjsjH" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
      </node>
      <node concept="1HlG4h" id="38k27IRjp_B" role="3EZMnx">
        <node concept="Vb9p2" id="38k27IRjsjN" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
        <node concept="1HfYo3" id="38k27IRjp_C" role="1HlULh">
          <node concept="3TQlhw" id="38k27IRjp_D" role="1Hhtcw">
            <node concept="3clFbS" id="38k27IRjp_E" role="2VODD2">
              <node concept="3clFbF" id="38k27IRjp_F" role="3cqZAp">
                <node concept="2OqwBi" id="38k27IRjp_G" role="3clFbG">
                  <node concept="2OqwBi" id="38k27IRjp_H" role="2Oq$k0">
                    <node concept="pncrf" id="38k27IRjp_I" role="2Oq$k0" />
                    <node concept="3TrEf2" id="38k27IRjp_J" role="2OqNvi">
                      <ref role="3Tt5mk" to="xiqq:1zB5ET5xzpJ" resolve="body" />
                    </node>
                  </node>
                  <node concept="2qgKlT" id="38k27IRjp_K" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:1zB5ET5xzrF" resolve="languageType" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="38k27IRjrPW" role="3EZMnx">
        <property role="3F0ifm" value=")" />
        <node concept="11L4FC" id="38k27IRjsjx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="Vb9p2" id="38k27IRjsjA" role="3F10Kt">
          <property role="Vbekb" value="g1_kEg4/ITALIC" />
        </node>
      </node>
      <node concept="3EZMnI" id="38k27IRjp_N" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <node concept="VPM3Z" id="38k27IRjp_O" role="3F10Kt">
          <property role="VOm3f" value="false" />
        </node>
        <node concept="3F1sOY" id="38k27IRjp_P" role="3EZMnx">
          <ref role="1NtTu8" to="xiqq:1zB5ET5xzpJ" resolve="body" />
          <node concept="lj46D" id="38k27IRjp_Q" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="pVoyu" id="38k27IRjp_R" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="ljvvj" id="38k27IRjp_S" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F0ifn" id="38k27IS$CjM" role="3EZMnx" />
        <node concept="l2Vlx" id="38k27IRjp_U" role="2iSdaV" />
        <node concept="PMmxH" id="38k27IRjp_V" role="AHCbl">
          <ref role="PMmxG" to="xpi8:1N6Oh7f7bq1" resolve="Folding" />
        </node>
      </node>
      <node concept="l2Vlx" id="38k27IRjp_W" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6LU90BODKrt">
    <ref role="1XX52x" to="xiqq:3HBlKeoYsiA" resolve="EventDeclaration" />
    <node concept="2aJ2om" id="4M6sES_aOMb" role="CpUAK">
      <ref role="2$4xQ3" node="1kUX9T6j1Ql" resolve="interface" />
    </node>
    <node concept="3EZMnI" id="6LU90BPMWKT" role="2wV5jI">
      <node concept="3F0ifn" id="6LU90BPMWL0" role="3EZMnx">
        <property role="3F0ifm" value="  •" />
        <node concept="VPM3Z" id="6LU90BPMWL6" role="3F10Kt" />
      </node>
      <node concept="3F0A7n" id="6LU90BPMWL8" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="A1WHu" id="6LU90BQh2SY" role="3vIgyS">
          <ref role="A1WHt" to="xpi8:6LU90BQgLnB" resolve="EventDeclaraiton_WithTransform" />
        </node>
      </node>
      <node concept="3EZMnI" id="6LU90BQewKa" role="3EZMnx">
        <node concept="VPM3Z" id="6LU90BQewKc" role="3F10Kt" />
        <node concept="3F0ifn" id="6LU90BPMWLi" role="3EZMnx">
          <property role="3F0ifm" value="with" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F2HdR" id="6LU90BQex7x" role="3EZMnx">
          <property role="2czwfO" value="," />
          <property role="Q2I2d" value="g$1Qtxb/punctuation" />
          <ref role="1NtTu8" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
          <node concept="2iRfu4" id="6LU90BQex7z" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="6LU90BQewKf" role="2iSdaV" />
        <node concept="pkWqt" id="6LU90BQjd4z" role="pqm2j">
          <node concept="3clFbS" id="6LU90BQjd4$" role="2VODD2">
            <node concept="3clFbF" id="6LU90BQjdji" role="3cqZAp">
              <node concept="2OqwBi" id="6LU90BQjiMB" role="3clFbG">
                <node concept="2OqwBi" id="6LU90BQjdxp" role="2Oq$k0">
                  <node concept="pncrf" id="6LU90BQjdjh" role="2Oq$k0" />
                  <node concept="Bykcj" id="6LU90BQji8t" role="2OqNvi">
                    <node concept="1aIX9F" id="6LU90BQji8v" role="1xVPHs">
                      <node concept="26LbJo" id="6LU90BQjitj" role="1aIX9E">
                        <ref role="26LbJp" to="xiqq:3HBlKeoYsiZ" resolve="associatedVariables" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="6LU90BQjkWB" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="6LU90BPMWKW" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6LU90BPu83c">
    <ref role="1XX52x" to="xiqq:37fub3vk1KP" resolve="PlugDeclaration" />
    <node concept="2aJ2om" id="7MmFhmekcV2" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="rich" />
    </node>
    <node concept="3EZMnI" id="6LU90BPVXoi" role="2wV5jI">
      <node concept="3F0ifn" id="6LU90BPVXoj" role="3EZMnx">
        <property role="3F0ifm" value="  •" />
        <node concept="VPM3Z" id="6LU90BPVXok" role="3F10Kt" />
      </node>
      <node concept="3F0A7n" id="6LU90BPVXol" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="6LU90BPVXom" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="6LU90BPVXon" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:37fub3vk1KS" resolve="adapterType" />
        <node concept="1sVBvm" id="6LU90BPVXoo" role="1sWHZn">
          <node concept="3SHvHV" id="6LU90BPVXop" role="2wV5jI" />
        </node>
      </node>
      <node concept="2iRfu4" id="6LU90BPVXoq" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6LU90BPu81R">
    <ref role="1XX52x" to="xiqq:37fub3vjRJq" resolve="SocketDeclaration" />
    <node concept="2aJ2om" id="7MmFhmek7At" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="rich" />
    </node>
    <node concept="3EZMnI" id="6LU90BPVXnM" role="2wV5jI">
      <node concept="3F0ifn" id="6LU90BPVXnN" role="3EZMnx">
        <property role="3F0ifm" value="  •" />
        <node concept="VPM3Z" id="6LU90BPVXnO" role="3F10Kt" />
      </node>
      <node concept="3F0A7n" id="6LU90BPVXnP" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="6LU90BPVXnQ" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="6LU90BPVXo0" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:37fub3vjRJt" resolve="adapterType" />
        <node concept="1sVBvm" id="6LU90BPVXo2" role="1sWHZn">
          <node concept="3SHvHV" id="6LU90BPVXod" role="2wV5jI" />
        </node>
      </node>
      <node concept="2iRfu4" id="6LU90BPVXnS" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2RGdDg_MW98">
    <ref role="1XX52x" to="xiqq:3HBlKeoZ0Uo" resolve="StateAction" />
    <node concept="2aJ2om" id="2RGdDg_MW9a" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="rich" />
    </node>
    <node concept="3EZMnI" id="2RGdDg_MW9t" role="2wV5jI">
      <node concept="1iCGBv" id="2RGdDg_MW9D" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="xiqq:3HBlKeoZ0Ut" resolve="algorithm" />
        <node concept="Veino" id="2RGdDg_MWa7" role="3F10Kt">
          <node concept="1iSF2X" id="2RGdDg_MWa8" role="VblUZ">
            <property role="1iTho6" value="AABBAA" />
          </node>
        </node>
        <node concept="3$7fVu" id="38k27IRhkUp" role="3F10Kt">
          <property role="3$6WeP" value="1" />
        </node>
        <node concept="3$7jql" id="38k27IRlu5k" role="3F10Kt">
          <property role="3$6WeP" value="1" />
        </node>
        <node concept="1sVBvm" id="2RGdDg_MW9F" role="1sWHZn">
          <node concept="3F0A7n" id="2RGdDg_OBI9" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3F1sOY" id="2RGdDg_Qjv5" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="xiqq:2R0WzquVuy5" resolve="event" />
        <node concept="3$7fVu" id="1_XvODPQkBV" role="3F10Kt">
          <property role="3$6WeP" value="1" />
        </node>
        <node concept="3$7jql" id="1_XvODPQkBW" role="3F10Kt">
          <property role="3$6WeP" value="1" />
        </node>
      </node>
      <node concept="2iRfu4" id="2RGdDg_MW9u" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2lwHqHkAgzD">
    <property role="3GE5qa" value="devices" />
    <ref role="1XX52x" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
    <node concept="2aJ2om" id="7MmFhmekeYX" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="rich" />
    </node>
    <node concept="3EZMnI" id="7oJsd9wXo34" role="2wV5jI">
      <node concept="3EZMnI" id="7oJsd9wXo36" role="3EZMnx">
        <node concept="3F0ifn" id="7oJsd9wXo37" role="3EZMnx">
          <property role="3F0ifm" value="Device Type" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0A7n" id="7oJsd9wXo38" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="VPM3Z" id="7oJsd9wXo3b" role="3F10Kt" />
        <node concept="2iRfu4" id="7oJsd9wXo3c" role="2iSdaV" />
        <node concept="2w$q5c" id="7oJsd9wXo3d" role="2whIAn" />
      </node>
      <node concept="3F0ifn" id="7oJsd9wXo3f" role="3EZMnx" />
      <node concept="3F0ifn" id="7oJsd9wXo3g" role="3EZMnx">
        <property role="3F0ifm" value="Parameters:" />
        <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
      </node>
      <node concept="3EZMnI" id="4tjN0ibUHpx" role="3EZMnx">
        <node concept="VPM3Z" id="4tjN0ibUHpz" role="3F10Kt" />
        <node concept="3XFhqQ" id="4tjN0ibUHqA" role="3EZMnx" />
        <node concept="3F2HdR" id="7oJsd9wXo3h" role="3EZMnx">
          <ref role="1NtTu8" to="xiqq:2lwHqHkyELb" resolve="parameters" />
          <node concept="2iRkQZ" id="7oJsd9wXo3i" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="4tjN0ibUHpA" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="4tjN0ibUHo$" role="3EZMnx" />
      <node concept="3F2HdR" id="7oJsd9wZ1jz" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:2lwHqHk$uBA" resolve="resources" />
        <node concept="2iRkQZ" id="7oJsd9wZ1j_" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="7oJsd9wYYxI" role="3EZMnx" />
      <node concept="3F0ifn" id="7oJsd9wXo3D" role="3EZMnx">
        <property role="3F0ifm" value="Instantiable Resources:" />
        <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
      </node>
      <node concept="3EZMnI" id="7oJsd9wXo3E" role="3EZMnx">
        <node concept="VPM3Z" id="7oJsd9wXo3F" role="3F10Kt" />
        <node concept="3XFhqQ" id="7oJsd9wXo3G" role="3EZMnx" />
        <node concept="3F2HdR" id="7oJsd9wXo3H" role="3EZMnx">
          <ref role="1NtTu8" to="xiqq:1WTKUmKKVQc" resolve="instantiableResourceTypes" />
          <node concept="2iRkQZ" id="7oJsd9wXo3I" role="2czzBx" />
        </node>
        <node concept="2iRfu4" id="7oJsd9wXo3J" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="7oJsd9wZ54A" role="3EZMnx" />
      <node concept="3EZMnI" id="7oJsd9wYSfH" role="3EZMnx">
        <property role="S$Qs1" value="true" />
        <node concept="VPM3Z" id="7oJsd9wYSfJ" role="3F10Kt" />
        <node concept="3F0ifn" id="7oJsd9wXo3k" role="3EZMnx">
          <property role="3F0ifm" value="Default Network:" />
          <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
        </node>
        <node concept="3F0ifn" id="7oJsd9wYSfL" role="3EZMnx" />
        <node concept="gc7cB" id="4tjN0ibUHqV" role="3EZMnx">
          <node concept="3VJUX4" id="4tjN0ibUHqX" role="3YsKMw">
            <node concept="3clFbS" id="4tjN0ibUHqZ" role="2VODD2">
              <node concept="3clFbF" id="7oJsd9wXo3o" role="3cqZAp">
                <node concept="2ShNRf" id="7oJsd9wXo3p" role="3clFbG">
                  <node concept="YeOm9" id="7oJsd9wXo3q" role="2ShVmc">
                    <node concept="1Y3b0j" id="7oJsd9wXo3r" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                      <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                      <node concept="3Tm1VV" id="7oJsd9wXo3s" role="1B3o_S" />
                      <node concept="3clFb_" id="7oJsd9wXo3t" role="jymVt">
                        <property role="TrG5h" value="createEditorCell" />
                        <node concept="3Tm1VV" id="7oJsd9wXo3u" role="1B3o_S" />
                        <node concept="3uibUv" id="7oJsd9wXo3v" role="3clF45">
                          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                        </node>
                        <node concept="37vLTG" id="7oJsd9wXo3w" role="3clF46">
                          <property role="TrG5h" value="context" />
                          <node concept="3uibUv" id="7oJsd9wXo3x" role="1tU5fm">
                            <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="7oJsd9wXo3y" role="3clF47">
                          <node concept="3clFbF" id="7oJsd9wXo3z" role="3cqZAp">
                            <node concept="2YIFZM" id="7oJsd9wXo3$" role="3clFbG">
                              <ref role="1Pybhc" to="p24u:~FBNetworkEditors" resolve="FBNetworkEditors" />
                              <ref role="37wK5l" to="p24u:~FBNetworkEditors.createFBNetworkCell(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="createFBNetworkCell" />
                              <node concept="37vLTw" id="7oJsd9wXo3_" role="37wK5m">
                                <ref role="3cqZAo" node="7oJsd9wXo3w" resolve="context" />
                              </node>
                              <node concept="pncrf" id="7oJsd9wXo3A" role="37wK5m" />
                              <node concept="Rm8GO" id="3tHZ0yHxyKO" role="37wK5m">
                                <ref role="Rm8GQ" to="ar7i:~SceneLayout.WINDOWED" resolve="WINDOWED" />
                                <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="pncrf" id="7oJsd9wXo3B" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2iRkQZ" id="7oJsd9wYSfM" role="2iSdaV" />
        <node concept="3F0ifn" id="7oJsd9wYSq8" role="AHCbl">
          <property role="ilYzB" value="default network" />
        </node>
        <node concept="pkWqt" id="7oJsd9wYSzS" role="3EXrW6">
          <node concept="3clFbS" id="7oJsd9wYSzT" role="2VODD2">
            <node concept="3clFbF" id="7oJsd9wYSOw" role="3cqZAp">
              <node concept="3fqX7Q" id="7oJsd9wYTSO" role="3clFbG">
                <node concept="2OqwBi" id="7oJsd9wYTSQ" role="3fr31v">
                  <node concept="pncrf" id="7oJsd9wYTSR" role="2Oq$k0" />
                  <node concept="2qgKlT" id="7oJsd9wYTSS" role="2OqNvi">
                    <ref role="37wK5l" to="t4dg:5s_pyghXe$Z" resolve="hasNetwork" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRkQZ" id="7oJsd9wXo3K" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7oJsd9wY0ER">
    <property role="3GE5qa" value="devices" />
    <ref role="1XX52x" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
    <node concept="2aJ2om" id="7MmFhmelB0u" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="rich" />
    </node>
    <node concept="3EZMnI" id="7oJsd9wY0EV" role="2wV5jI">
      <node concept="3EZMnI" id="7oJsd9wY0EW" role="3EZMnx">
        <node concept="3F0ifn" id="7oJsd9wY0EX" role="3EZMnx">
          <property role="3F0ifm" value="Device" />
          <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
        </node>
        <node concept="3F0A7n" id="7oJsd9wY0EY" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="7oJsd9wY0EZ" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="VPM3Z" id="7oJsd9wY0F0" role="3F10Kt" />
        <node concept="2iRfu4" id="7oJsd9wY0F1" role="2iSdaV" />
        <node concept="2w$q5c" id="7oJsd9wY0F2" role="2whIAn" />
        <node concept="1iCGBv" id="7oJsd9wY0F3" role="3EZMnx">
          <ref role="1NtTu8" to="xiqq:1WTKUmKKVP_" resolve="type" />
          <node concept="1sVBvm" id="7oJsd9wY0F4" role="1sWHZn">
            <node concept="3SHvHV" id="7oJsd9wY0F5" role="2wV5jI" />
          </node>
        </node>
      </node>
      <node concept="3F0ifn" id="7oJsd9wY0Zx" role="3EZMnx" />
      <node concept="3EZMnI" id="7oJsd9wY0F7" role="3EZMnx">
        <node concept="VPM3Z" id="7oJsd9wY0F8" role="3F10Kt" />
        <node concept="3XFhqQ" id="7oJsd9wY0F9" role="3EZMnx" />
        <node concept="3XFhqQ" id="7oJsd9wY0Fa" role="3EZMnx" />
        <node concept="3EZMnI" id="7oJsd9wY0Fb" role="3EZMnx">
          <node concept="VPM3Z" id="7oJsd9wY0Fc" role="3F10Kt" />
          <node concept="3F0ifn" id="7oJsd9wY0Fd" role="3EZMnx">
            <property role="3F0ifm" value="Parameters:" />
            <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
          </node>
          <node concept="3EZMnI" id="4tjN0ibUnzy" role="3EZMnx">
            <node concept="VPM3Z" id="4tjN0ibUnz$" role="3F10Kt" />
            <node concept="3XFhqQ" id="4tjN0ibUn$l" role="3EZMnx" />
            <node concept="3F2HdR" id="7oJsd9wY0Ff" role="3EZMnx">
              <ref role="1NtTu8" to="xiqq:fshQXbRNVN" resolve="parameters" />
              <node concept="2iRkQZ" id="7oJsd9wY0Fg" role="2czzBx" />
            </node>
            <node concept="2iRfu4" id="4tjN0ibUnzB" role="2iSdaV" />
          </node>
          <node concept="3F0ifn" id="7oJsd9wY0Fh" role="3EZMnx" />
          <node concept="3F2HdR" id="2syzu7qECrp" role="3EZMnx">
            <ref role="1NtTu8" to="xiqq:1WTKUmKKVPK" resolve="resources" />
            <node concept="2iRkQZ" id="2syzu7qECrs" role="2czzBx" />
          </node>
          <node concept="3F0ifn" id="2syzu7qFsrN" role="3EZMnx" />
          <node concept="3EZMnI" id="7oJsd9wZ1yA" role="3EZMnx">
            <property role="S$Qs1" value="true" />
            <node concept="VPM3Z" id="7oJsd9wZ1yC" role="3F10Kt" />
            <node concept="3F0ifn" id="7oJsd9wY0Fi" role="3EZMnx">
              <property role="3F0ifm" value="Default Network:" />
              <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
            </node>
            <node concept="3F0ifn" id="7oJsd9wZ5AH" role="3EZMnx" />
            <node concept="gc7cB" id="4tjN0ibUn_i" role="3EZMnx">
              <node concept="3VJUX4" id="4tjN0ibUn_k" role="3YsKMw">
                <node concept="3clFbS" id="4tjN0ibUn_m" role="2VODD2">
                  <node concept="3clFbF" id="7oJsd9wY0Fm" role="3cqZAp">
                    <node concept="2ShNRf" id="7oJsd9wY0Fn" role="3clFbG">
                      <node concept="YeOm9" id="7oJsd9wY0Fo" role="2ShVmc">
                        <node concept="1Y3b0j" id="7oJsd9wY0Fp" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                          <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                          <node concept="3Tm1VV" id="7oJsd9wY0Fq" role="1B3o_S" />
                          <node concept="3clFb_" id="7oJsd9wY0Fr" role="jymVt">
                            <property role="TrG5h" value="createEditorCell" />
                            <node concept="3Tm1VV" id="7oJsd9wY0Fs" role="1B3o_S" />
                            <node concept="3uibUv" id="7oJsd9wY0Ft" role="3clF45">
                              <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                            </node>
                            <node concept="37vLTG" id="7oJsd9wY0Fu" role="3clF46">
                              <property role="TrG5h" value="context" />
                              <node concept="3uibUv" id="7oJsd9wY0Fv" role="1tU5fm">
                                <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="7oJsd9wY0Fw" role="3clF47">
                              <node concept="3clFbF" id="7oJsd9wY0Fx" role="3cqZAp">
                                <node concept="2YIFZM" id="7oJsd9wY0Fy" role="3clFbG">
                                  <ref role="1Pybhc" to="p24u:~FBNetworkEditors" resolve="FBNetworkEditors" />
                                  <ref role="37wK5l" to="p24u:~FBNetworkEditors.createFBNetworkCell(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="createFBNetworkCell" />
                                  <node concept="37vLTw" id="7oJsd9wY0Fz" role="37wK5m">
                                    <ref role="3cqZAo" node="7oJsd9wY0Fu" resolve="context" />
                                  </node>
                                  <node concept="pncrf" id="7oJsd9wY0F$" role="37wK5m" />
                                  <node concept="Rm8GO" id="3tHZ0yHxyid" role="37wK5m">
                                    <ref role="Rm8GQ" to="ar7i:~SceneLayout.WINDOWED" resolve="WINDOWED" />
                                    <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="pncrf" id="7oJsd9wY0F_" role="37wK5m" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2iRkQZ" id="7oJsd9wZ1yF" role="2iSdaV" />
            <node concept="pkWqt" id="7oJsd9wZ2aL" role="3EXrW6">
              <node concept="3clFbS" id="7oJsd9wZ2aM" role="2VODD2">
                <node concept="3clFbF" id="7oJsd9wZ2rr" role="3cqZAp">
                  <node concept="3fqX7Q" id="7oJsd9wZ3$f" role="3clFbG">
                    <node concept="2OqwBi" id="7oJsd9wZ3$h" role="3fr31v">
                      <node concept="pncrf" id="7oJsd9wZ3$i" role="2Oq$k0" />
                      <node concept="2qgKlT" id="7oJsd9wZ3$j" role="2OqNvi">
                        <ref role="37wK5l" to="t4dg:5s_pyghXe$Z" resolve="hasNetwork" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3F0ifn" id="7oJsd9wZ4v7" role="AHCbl">
              <property role="3F0ifm" value="" />
              <property role="ilYzB" value="default network" />
            </node>
          </node>
          <node concept="2iRkQZ" id="7oJsd9wY0FA" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="7oJsd9wY0FB" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="7oJsd9wY0FC" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7oJsd9wY$eh">
    <property role="3GE5qa" value="subapp" />
    <ref role="1XX52x" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
    <node concept="2aJ2om" id="7MmFhmekdez" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="rich" />
    </node>
    <node concept="3EZMnI" id="7oJsd9wY$is" role="2wV5jI">
      <node concept="2iRkQZ" id="7oJsd9wY$it" role="2iSdaV" />
      <node concept="3EZMnI" id="7oJsd9wY$iv" role="3EZMnx">
        <node concept="3F0ifn" id="7oJsd9wY$iw" role="3EZMnx">
          <property role="3F0ifm" value="Subapplication" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0A7n" id="7oJsd9wY$ix" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="VPM3Z" id="7oJsd9wY$i$" role="3F10Kt" />
        <node concept="2iRfu4" id="7oJsd9wY$i_" role="2iSdaV" />
        <node concept="2w$q5c" id="7oJsd9wY$iA" role="2whIAn" />
      </node>
      <node concept="3F0ifn" id="7oJsd9wY$iC" role="3EZMnx">
        <node concept="VPM3Z" id="7oJsd9wY$iD" role="3F10Kt" />
      </node>
      <node concept="PMmxH" id="7oJsd9wY$iF" role="3EZMnx">
        <ref role="PMmxG" node="cDnfeSBx_k" resolve="DeclarationWithInterface_InterfacePart" />
      </node>
      <node concept="3F0ifn" id="7oJsd9wY$iG" role="3EZMnx" />
      <node concept="3F0ifn" id="7oJsd9wY$iH" role="3EZMnx">
        <property role="3F0ifm" value="Network:" />
        <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
      </node>
      <node concept="gc7cB" id="4tjN0ibUmR3" role="3EZMnx">
        <node concept="3VJUX4" id="4tjN0ibUmR5" role="3YsKMw">
          <node concept="3clFbS" id="4tjN0ibUmR7" role="2VODD2">
            <node concept="3clFbF" id="7oJsd9wY$iL" role="3cqZAp">
              <node concept="2ShNRf" id="7oJsd9wY$iM" role="3clFbG">
                <node concept="YeOm9" id="7oJsd9wY$iN" role="2ShVmc">
                  <node concept="1Y3b0j" id="7oJsd9wY$iO" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                    <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                    <node concept="3Tm1VV" id="7oJsd9wY$iP" role="1B3o_S" />
                    <node concept="3clFb_" id="7oJsd9wY$iQ" role="jymVt">
                      <property role="TrG5h" value="createEditorCell" />
                      <node concept="3Tm1VV" id="7oJsd9wY$iR" role="1B3o_S" />
                      <node concept="3uibUv" id="7oJsd9wY$iS" role="3clF45">
                        <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                      </node>
                      <node concept="37vLTG" id="7oJsd9wY$iT" role="3clF46">
                        <property role="TrG5h" value="context" />
                        <node concept="3uibUv" id="7oJsd9wY$iU" role="1tU5fm">
                          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="7oJsd9wY$iV" role="3clF47">
                        <node concept="3clFbF" id="7oJsd9wY$iW" role="3cqZAp">
                          <node concept="2YIFZM" id="1XSQy8A5tsO" role="3clFbG">
                            <ref role="1Pybhc" to="p24u:~FBNetworkEditors" resolve="FBNetworkEditors" />
                            <ref role="37wK5l" to="p24u:~FBNetworkEditors.createFBNetworkCell(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="createFBNetworkCell" />
                            <node concept="37vLTw" id="1XSQy8A5tsP" role="37wK5m">
                              <ref role="3cqZAo" node="7oJsd9wY$iT" resolve="context" />
                            </node>
                            <node concept="pncrf" id="1XSQy8A5tsQ" role="37wK5m" />
                            <node concept="Rm8GO" id="3tHZ0yHx_R7" role="37wK5m">
                              <ref role="Rm8GQ" to="ar7i:~SceneLayout.WINDOWED" resolve="WINDOWED" />
                              <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="pncrf" id="7oJsd9wY$j0" role="37wK5m" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="7oJsd9x58QT">
    <ref role="1XX52x" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
    <node concept="2aJ2om" id="7MmFhmekd7w" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="rich" />
    </node>
    <node concept="3EZMnI" id="7oJsd9x58QX" role="2wV5jI">
      <node concept="3EZMnI" id="7oJsd9x58QZ" role="3EZMnx">
        <node concept="3F0ifn" id="7oJsd9x58R0" role="3EZMnx">
          <property role="3F0ifm" value="Application" />
          <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
        </node>
        <node concept="3F0A7n" id="7oJsd9x58R1" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="VPM3Z" id="7oJsd9x58R3" role="3F10Kt" />
        <node concept="2iRfu4" id="7oJsd9x58R4" role="2iSdaV" />
        <node concept="2w$q5c" id="7oJsd9x58R5" role="2whIAn" />
      </node>
      <node concept="3F0ifn" id="7oJsd9x58R9" role="3EZMnx" />
      <node concept="3EZMnI" id="7oJsd9x58Ra" role="3EZMnx">
        <node concept="VPM3Z" id="7oJsd9x58Rb" role="3F10Kt" />
        <node concept="3XFhqQ" id="7oJsd9x58Rc" role="3EZMnx" />
        <node concept="3XFhqQ" id="7oJsd9x58Rd" role="3EZMnx" />
        <node concept="3EZMnI" id="7oJsd9x58Re" role="3EZMnx">
          <node concept="VPM3Z" id="7oJsd9x58Rf" role="3F10Kt" />
          <node concept="3F0ifn" id="7oJsd9x58Rl" role="3EZMnx">
            <property role="3F0ifm" value="Network:" />
            <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
          </node>
          <node concept="3F0ifn" id="7oJsd9x58Rk" role="3EZMnx" />
          <node concept="gc7cB" id="4tjN0ibUmFO" role="3EZMnx">
            <node concept="3VJUX4" id="4tjN0ibUmFQ" role="3YsKMw">
              <node concept="3clFbS" id="4tjN0ibUmFS" role="2VODD2">
                <node concept="3clFbF" id="7oJsd9x58Rp" role="3cqZAp">
                  <node concept="2ShNRf" id="7oJsd9x58Rq" role="3clFbG">
                    <node concept="YeOm9" id="7oJsd9x58Rr" role="2ShVmc">
                      <node concept="1Y3b0j" id="7oJsd9x58Rs" role="YeSDq">
                        <property role="2bfB8j" value="true" />
                        <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                        <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                        <node concept="3Tm1VV" id="7oJsd9x58Rt" role="1B3o_S" />
                        <node concept="3clFb_" id="7oJsd9x58Ru" role="jymVt">
                          <property role="TrG5h" value="createEditorCell" />
                          <node concept="3Tm1VV" id="7oJsd9x58Rv" role="1B3o_S" />
                          <node concept="3uibUv" id="7oJsd9x58Rw" role="3clF45">
                            <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                          </node>
                          <node concept="37vLTG" id="7oJsd9x58Rx" role="3clF46">
                            <property role="TrG5h" value="context" />
                            <node concept="3uibUv" id="7oJsd9x58Ry" role="1tU5fm">
                              <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="7oJsd9x58Rz" role="3clF47">
                            <node concept="3clFbF" id="7oJsd9x58R$" role="3cqZAp">
                              <node concept="2YIFZM" id="1XSQy8A5sTW" role="3clFbG">
                                <ref role="1Pybhc" to="p24u:~FBNetworkEditors" resolve="FBNetworkEditors" />
                                <ref role="37wK5l" to="p24u:~FBNetworkEditors.createFBNetworkCell(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="createFBNetworkCell" />
                                <node concept="37vLTw" id="1XSQy8A5sTX" role="37wK5m">
                                  <ref role="3cqZAo" node="7oJsd9x58Rx" resolve="context" />
                                </node>
                                <node concept="pncrf" id="1XSQy8A5sTY" role="37wK5m" />
                                <node concept="Rm8GO" id="3tHZ0yHxBv2" role="37wK5m">
                                  <ref role="Rm8GQ" to="ar7i:~SceneLayout.WINDOWED" resolve="WINDOWED" />
                                  <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="pncrf" id="7oJsd9x58RC" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="2iRkQZ" id="7oJsd9x58RD" role="2iSdaV" />
        </node>
        <node concept="2iRfu4" id="7oJsd9x58RE" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="7oJsd9x58RF" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="7oJsd9x5ahB">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
    <node concept="3EZMnI" id="7oJsd9x5aDp" role="2wV5jI">
      <node concept="3EZMnI" id="7oJsd9x5aDr" role="3EZMnx">
        <node concept="3F0ifn" id="7oJsd9x5aDs" role="3EZMnx">
          <property role="3F0ifm" value="System" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0A7n" id="7oJsd9x5aDt" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="VPM3Z" id="7oJsd9x5aDw" role="3F10Kt" />
        <node concept="2iRfu4" id="7oJsd9x5aDx" role="2iSdaV" />
        <node concept="2w$q5c" id="7oJsd9x5aDy" role="2whIAn" />
      </node>
      <node concept="3F0ifn" id="7oJsd9x5aD$" role="3EZMnx" />
      <node concept="3F2HdR" id="7oJsd9x5aDF" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:uLhTRR7MVq" resolve="applications" />
        <node concept="2iRkQZ" id="7oJsd9x5aDG" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="7oJsd9x5aDH" role="3EZMnx" />
      <node concept="3F2HdR" id="7oJsd9x5c1V" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:uLhTRR7MVs" resolve="devices" />
        <node concept="2iRkQZ" id="7oJsd9x5c1W" role="2czzBx" />
      </node>
      <node concept="2iRkQZ" id="7oJsd9x5aEn" role="2iSdaV" />
    </node>
    <node concept="2aJ2om" id="7MmFhmek7Aq" role="CpUAK">
      <ref role="2$4xQ3" node="PI_pXYAiuF" resolve="rich" />
    </node>
  </node>
  <node concept="2ABfQD" id="PI_pXYbMFW">
    <property role="3GE5qa" value="" />
    <property role="TrG5h" value="Rich Editing Hint" />
    <node concept="2BsEeg" id="PI_pXYAiuF" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="rich" />
      <property role="2BUmq6" value="Rich notations for IEC 61499 components" />
    </node>
    <node concept="2BsEeg" id="1kUX9T6j1Ql" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="interface" />
      <property role="2BUmq6" value="Show interface part" />
    </node>
    <node concept="2BsEeg" id="bRdTVHYMtn" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="network" />
      <property role="2BUmq6" value="Show network body" />
    </node>
    <node concept="2BsEeg" id="1_XvODPJG7s" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="ecc" />
      <property role="2BUmq6" value="Show ecc body" />
    </node>
    <node concept="2BsEeg" id="1_XvODPKmeL" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="algorithm" />
      <property role="2BUmq6" value="Show algorithm declaration" />
    </node>
    <node concept="2BsEeg" id="2SU8oJdEKXu" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="system_app" />
      <property role="2BUmq6" value="Show system application" />
    </node>
    <node concept="2BsEeg" id="2SU8oJdEKXv" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="system_dev" />
      <property role="2BUmq6" value="Show system device" />
    </node>
    <node concept="2BsEeg" id="2SU8oJdEKXw" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="system_res" />
      <property role="2BUmq6" value="Show resource of system device" />
    </node>
    <node concept="2BsEeg" id="6lA3BsRsf7A" role="2ABdcP">
      <property role="2gpH_U" value="true" />
      <property role="TrG5h" value="expanded_fb_instance" />
    </node>
  </node>
  <node concept="24kQdi" id="1kUX9T6l3Ex">
    <property role="3GE5qa" value="fbtype" />
    <ref role="1XX52x" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
    <node concept="PMmxH" id="1kUX9T6l40Q" role="2wV5jI">
      <ref role="PMmxG" node="cDnfeSBx_k" resolve="DeclarationWithInterface_InterfacePart" />
    </node>
    <node concept="2aJ2om" id="1kUX9T6l3Ez" role="CpUAK">
      <ref role="2$4xQ3" node="1kUX9T6j1Ql" resolve="interface" />
    </node>
  </node>
  <node concept="24kQdi" id="bRdTVHYO2k">
    <property role="3GE5qa" value="fbtype.composite" />
    <ref role="1XX52x" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
    <node concept="2aJ2om" id="bRdTVHYPh$" role="CpUAK">
      <ref role="2$4xQ3" node="bRdTVHYMtn" resolve="network" />
    </node>
    <node concept="gc7cB" id="bRdTVHYPhA" role="2wV5jI">
      <node concept="3VJUX4" id="bRdTVHYPhB" role="3YsKMw">
        <node concept="3clFbS" id="bRdTVHYPhC" role="2VODD2">
          <node concept="3clFbF" id="bRdTVHYPhD" role="3cqZAp">
            <node concept="2ShNRf" id="bRdTVHYPhE" role="3clFbG">
              <node concept="YeOm9" id="bRdTVHYPhF" role="2ShVmc">
                <node concept="1Y3b0j" id="bRdTVHYPhG" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                  <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                  <node concept="3Tm1VV" id="bRdTVHYPhH" role="1B3o_S" />
                  <node concept="3clFb_" id="bRdTVHYPhI" role="jymVt">
                    <property role="TrG5h" value="createEditorCell" />
                    <node concept="3Tm1VV" id="bRdTVHYPhJ" role="1B3o_S" />
                    <node concept="3uibUv" id="bRdTVHYPhK" role="3clF45">
                      <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                    </node>
                    <node concept="37vLTG" id="bRdTVHYPhL" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <node concept="3uibUv" id="bRdTVHYPhM" role="1tU5fm">
                        <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="bRdTVHYPhN" role="3clF47">
                      <node concept="3clFbF" id="bRdTVHYPhO" role="3cqZAp">
                        <node concept="2YIFZM" id="3YrkjfSXbi9" role="3clFbG">
                          <ref role="37wK5l" to="p24u:~FBNetworkEditors.createCellForNetworkInstance(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="createCellForNetworkInstance" />
                          <ref role="1Pybhc" to="p24u:~FBNetworkEditors" resolve="FBNetworkEditors" />
                          <node concept="37vLTw" id="3YrkjfSXbia" role="37wK5m">
                            <ref role="3cqZAo" node="bRdTVHYPhL" resolve="context" />
                          </node>
                          <node concept="pncrf" id="3YrkjfSXbib" role="37wK5m" />
                          <node concept="Rm8GO" id="3YrkjfSXbic" role="37wK5m">
                            <ref role="Rm8GQ" to="ar7i:~SceneLayout.FULL_EDITOR" resolve="FULL_EDITOR" />
                            <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="pncrf" id="bRdTVHYPhS" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="bRdTVHZveg">
    <property role="3GE5qa" value="subapp" />
    <ref role="1XX52x" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
    <node concept="2aJ2om" id="bRdTVHZviN" role="CpUAK">
      <ref role="2$4xQ3" node="bRdTVHYMtn" resolve="network" />
    </node>
    <node concept="gc7cB" id="bRdTVHZvev" role="2wV5jI">
      <node concept="3VJUX4" id="bRdTVHZvew" role="3YsKMw">
        <node concept="3clFbS" id="bRdTVHZvex" role="2VODD2">
          <node concept="3clFbF" id="bRdTVHZvey" role="3cqZAp">
            <node concept="2ShNRf" id="bRdTVHZvez" role="3clFbG">
              <node concept="YeOm9" id="bRdTVHZve$" role="2ShVmc">
                <node concept="1Y3b0j" id="bRdTVHZve_" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                  <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                  <node concept="3Tm1VV" id="bRdTVHZveA" role="1B3o_S" />
                  <node concept="3clFb_" id="bRdTVHZveB" role="jymVt">
                    <property role="TrG5h" value="createEditorCell" />
                    <node concept="3Tm1VV" id="bRdTVHZveC" role="1B3o_S" />
                    <node concept="3uibUv" id="bRdTVHZveD" role="3clF45">
                      <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                    </node>
                    <node concept="37vLTG" id="bRdTVHZveE" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <node concept="3uibUv" id="bRdTVHZveF" role="1tU5fm">
                        <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="bRdTVHZveG" role="3clF47">
                      <node concept="3clFbF" id="bRdTVHZveH" role="3cqZAp">
                        <node concept="2YIFZM" id="1XSQy8A5tib" role="3clFbG">
                          <ref role="1Pybhc" to="p24u:~FBNetworkEditors" resolve="FBNetworkEditors" />
                          <ref role="37wK5l" to="p24u:~FBNetworkEditors.createFBNetworkCell(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="createFBNetworkCell" />
                          <node concept="37vLTw" id="1XSQy8A5tic" role="37wK5m">
                            <ref role="3cqZAo" node="bRdTVHZveE" resolve="context" />
                          </node>
                          <node concept="pncrf" id="1XSQy8A5tid" role="37wK5m" />
                          <node concept="Rm8GO" id="3tHZ0yHwVWs" role="37wK5m">
                            <ref role="Rm8GQ" to="ar7i:~SceneLayout.FULL_EDITOR" resolve="FULL_EDITOR" />
                            <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="pncrf" id="bRdTVHZveL" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1_XvODPLc7b">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
    <node concept="2aJ2om" id="1_XvODPLc7d" role="CpUAK">
      <ref role="2$4xQ3" node="1_XvODPJG7s" resolve="ecc" />
    </node>
    <node concept="gc7cB" id="1_XvODPLceN" role="2wV5jI">
      <node concept="3VJUX4" id="1_XvODPLceO" role="3YsKMw">
        <node concept="3clFbS" id="1_XvODPLceP" role="2VODD2">
          <node concept="3clFbF" id="1_XvODPLceQ" role="3cqZAp">
            <node concept="2ShNRf" id="1_XvODPLceR" role="3clFbG">
              <node concept="YeOm9" id="1_XvODPLceS" role="2ShVmc">
                <node concept="1Y3b0j" id="1_XvODPLceT" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                  <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                  <node concept="3Tm1VV" id="1_XvODPLceU" role="1B3o_S" />
                  <node concept="3clFb_" id="1_XvODPLceV" role="jymVt">
                    <property role="TrG5h" value="createEditorCell" />
                    <node concept="3Tm1VV" id="1_XvODPLceW" role="1B3o_S" />
                    <node concept="3uibUv" id="1_XvODPLceX" role="3clF45">
                      <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                    </node>
                    <node concept="37vLTG" id="1_XvODPLceY" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <node concept="3uibUv" id="1_XvODPLceZ" role="1tU5fm">
                        <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="1_XvODPLcf0" role="3clF47">
                      <node concept="3clFbF" id="1_XvODPLcf1" role="3cqZAp">
                        <node concept="2YIFZM" id="1_XvODPLcf2" role="3clFbG">
                          <ref role="1Pybhc" to="56zl:~ECCEditors" resolve="ECCEditors" />
                          <ref role="37wK5l" to="56zl:~ECCEditors.createEccEditor(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="createEccEditor" />
                          <node concept="37vLTw" id="1_XvODPLcf3" role="37wK5m">
                            <ref role="3cqZAo" node="1_XvODPLceY" resolve="context" />
                          </node>
                          <node concept="pncrf" id="1_XvODPLcf4" role="37wK5m" />
                          <node concept="Rm8GO" id="3tHZ0yHxztm" role="37wK5m">
                            <ref role="Rm8GQ" to="ar7i:~SceneLayout.FULL_EDITOR" resolve="FULL_EDITOR" />
                            <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="pncrf" id="1_XvODPLcf6" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1_XvODPLgF9">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1XX52x" to="xiqq:3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
    <node concept="2aJ2om" id="1_XvODPLgQ3" role="CpUAK">
      <ref role="2$4xQ3" node="1_XvODPKmeL" resolve="algorithm" />
    </node>
    <node concept="3EZMnI" id="1_XvODPLgRe" role="2wV5jI">
      <node concept="3EZMnI" id="1_XvODPLgRo" role="3EZMnx">
        <node concept="VPM3Z" id="1_XvODPLgRq" role="3F10Kt" />
        <node concept="3F0ifn" id="1_XvODPLgS9" role="3EZMnx">
          <property role="3F0ifm" value="Algorithm:" />
          <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
        </node>
        <node concept="3F0A7n" id="1_XvODPLgSa" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="1_XvODPLgRs" role="3EZMnx" />
        <node concept="2iRfu4" id="1_XvODPLgRt" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="1_XvODPLgSm" role="3EZMnx">
        <node concept="VPM3Z" id="1_XvODPLgSo" role="3F10Kt" />
        <node concept="3XFhqQ" id="1_XvODPLgSA" role="3EZMnx" />
        <node concept="3F0ifn" id="1_XvODPLgSG" role="3EZMnx">
          <property role="3F0ifm" value="language:" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="1HlG4h" id="1_XvODPLhqX" role="3EZMnx">
          <node concept="Vb9p2" id="1_XvODPLhqY" role="3F10Kt">
            <property role="Vbekb" value="g1_kEg4/ITALIC" />
          </node>
          <node concept="1HfYo3" id="1_XvODPLhqZ" role="1HlULh">
            <node concept="3TQlhw" id="1_XvODPLhr0" role="1Hhtcw">
              <node concept="3clFbS" id="1_XvODPLhr1" role="2VODD2">
                <node concept="3clFbF" id="1_XvODPLhr2" role="3cqZAp">
                  <node concept="2OqwBi" id="1_XvODPLhr3" role="3clFbG">
                    <node concept="2OqwBi" id="1_XvODPLhr4" role="2Oq$k0">
                      <node concept="pncrf" id="1_XvODPLhr5" role="2Oq$k0" />
                      <node concept="3TrEf2" id="1_XvODPLhr6" role="2OqNvi">
                        <ref role="3Tt5mk" to="xiqq:1zB5ET5xzpJ" resolve="body" />
                      </node>
                    </node>
                    <node concept="2qgKlT" id="1_XvODPLhr7" role="2OqNvi">
                      <ref role="37wK5l" to="t4dg:1zB5ET5xzrF" resolve="languageType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="1_XvODPLgSr" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="1_XvODPLhEj" role="3EZMnx">
        <node concept="VPM3Z" id="1_XvODPMQbs" role="3F10Kt" />
      </node>
      <node concept="3EZMnI" id="1_XvODPLhPZ" role="3EZMnx">
        <node concept="VPM3Z" id="1_XvODPLhQ1" role="3F10Kt" />
        <node concept="3XFhqQ" id="1_XvODPLhRc" role="3EZMnx" />
        <node concept="3F1sOY" id="1_XvODPLhRi" role="3EZMnx">
          <ref role="1NtTu8" to="xiqq:1zB5ET5xzpJ" resolve="body" />
        </node>
        <node concept="2iRfu4" id="1_XvODPLhQ4" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="1_XvODPLgRh" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="1_XvODPLi1_">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
    <node concept="3F2HdR" id="1_XvODPLi1D" role="2wV5jI">
      <ref role="1NtTu8" to="xiqq:3HBlKeoZ0WV" resolve="algorithms" />
      <node concept="107P5z" id="1_XvODPLi1G" role="12AuX0">
        <node concept="3clFbS" id="1_XvODPLi1H" role="2VODD2">
          <node concept="3clFbF" id="1_XvODPLphP" role="3cqZAp">
            <node concept="3clFbC" id="1_XvODPLpze" role="3clFbG">
              <node concept="12_Ws6" id="1_XvODPLpJt" role="3uHU7w" />
              <node concept="2OqwBi" id="6SLp5w3Lu$Z" role="3uHU7B">
                <node concept="1eOMI4" id="6SLp5w3LtW_" role="2Oq$k0">
                  <node concept="10QFUN" id="6SLp5w3LtXG" role="1eOMHV">
                    <node concept="3uibUv" id="3WC2DnYwxA8" role="10QFUM">
                      <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                    </node>
                    <node concept="2YIFZM" id="4dM3MZ7pu4H" role="10QFUP">
                      <ref role="1Pybhc" to="je9f:~RichEditorDataKeys" resolve="RichEditorDataKeys" />
                      <ref role="37wK5l" to="je9f:~RichEditorDataKeys.contextAlogithm(jetbrains.mps.openapi.editor.EditorContext)" resolve="contextAlogithm" />
                      <node concept="1Q80Hx" id="4dM3MZ7pu6$" role="37wK5m" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="6SLp5w3LuO_" role="2OqNvi">
                  <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2aJ2om" id="1_XvODPLi1B" role="CpUAK">
      <ref role="2$4xQ3" node="1_XvODPKmeL" resolve="algorithm" />
    </node>
  </node>
  <node concept="24kQdi" id="1_XvODPP4wk">
    <ref role="1XX52x" to="xiqq:3HBlKeoZ0Uo" resolve="StateAction" />
    <node concept="2aJ2om" id="1_XvODPPWmR" role="CpUAK">
      <ref role="2$4xQ3" node="1_XvODPJG7s" resolve="ecc" />
    </node>
    <node concept="3EZMnI" id="1_XvODPP4wm" role="2wV5jI">
      <node concept="1iCGBv" id="1_XvODPP4wn" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="xiqq:3HBlKeoZ0Ut" resolve="algorithm" />
        <node concept="Veino" id="1_XvODPP4wo" role="3F10Kt">
          <node concept="1iSF2X" id="1_XvODPP4wp" role="VblUZ">
            <property role="1iTho6" value="AABBAA" />
          </node>
        </node>
        <node concept="1sVBvm" id="1_XvODPP4ws" role="1sWHZn">
          <node concept="3F0A7n" id="1_XvODPP4wt" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="35HoNQ" id="1_XvODPRTyf" role="3EZMnx">
        <node concept="15ARfc" id="1_XvODPRTyO" role="3F10Kt">
          <property role="3$6WeP" value="0.5" />
        </node>
        <node concept="11L4FC" id="1_XvODPRTys" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
        <node concept="11LMrY" id="1_XvODPRTyx" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F1sOY" id="1_XvODPP4wy" role="3EZMnx">
        <property role="39s7Ar" value="true" />
        <ref role="1NtTu8" to="xiqq:2R0WzquVuy5" resolve="event" />
        <node concept="Veino" id="2RGdDg_MW9S" role="3F10Kt">
          <node concept="1iSF2X" id="2RGdDg_MW9V" role="VblUZ">
            <property role="1iTho6" value="FFAAAA" />
          </node>
        </node>
      </node>
      <node concept="2iRfu4" id="1_XvODPP4w$" role="2iSdaV" />
    </node>
  </node>
  <node concept="PKFIW" id="cDnfeSBx_k">
    <property role="TrG5h" value="DeclarationWithInterface_InterfacePart" />
    <property role="3GE5qa" value="fbtype" />
    <ref role="1XX52x" to="xiqq:2ByE74knaXi" resolve="DeclarationWithInterface" />
    <node concept="3EZMnI" id="cDnfeSBx_l" role="2wV5jI">
      <node concept="VPM3Z" id="cDnfeSBx_m" role="3F10Kt" />
      <node concept="2iRfu4" id="cDnfeSBx_n" role="2iSdaV" />
      <node concept="3EZMnI" id="cDnfeSBx_o" role="3EZMnx">
        <node concept="VPM3Z" id="cDnfeSBx_p" role="3F10Kt" />
        <node concept="3F0ifn" id="cDnfeSBx_q" role="3EZMnx">
          <property role="3F0ifm" value="Interface:" />
          <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
        </node>
        <node concept="3F0ifn" id="cDnfeSBx_r" role="3EZMnx">
          <node concept="VPM3Z" id="cDnfeSBx_s" role="3F10Kt" />
        </node>
        <node concept="3EZMnI" id="cDnfeSBx_t" role="3EZMnx">
          <node concept="VPM3Z" id="cDnfeSBx_u" role="3F10Kt" />
          <node concept="3XFhqQ" id="cDnfeSBx_v" role="3EZMnx" />
          <node concept="3EZMnI" id="cDnfeSBx_w" role="3EZMnx">
            <node concept="VPM3Z" id="cDnfeSBx_x" role="3F10Kt" />
            <node concept="3F0ifn" id="cDnfeSBx_y" role="3EZMnx">
              <property role="3F0ifm" value="Event Inputs" />
              <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
              <node concept="VPM3Z" id="cDnfeSBx_z" role="3F10Kt" />
            </node>
            <node concept="3F2HdR" id="cDnfeSBx_$" role="3EZMnx">
              <ref role="1NtTu8" to="xiqq:3HBlKeoYsix" resolve="inputEvents" />
              <node concept="2EHx9g" id="cDnfeSBx__" role="2czzBx" />
              <node concept="3EZMnI" id="cDnfeSBx_A" role="2czzBI">
                <node concept="3XFhqQ" id="cDnfeSBx_B" role="3EZMnx" />
                <node concept="3F0ifn" id="cDnfeSBx_C" role="3EZMnx">
                  <property role="3F0ifm" value="empty" />
                  <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
                </node>
                <node concept="2iRfu4" id="cDnfeSBx_D" role="2iSdaV" />
                <node concept="VPM3Z" id="cDnfeSBx_E" role="3F10Kt" />
              </node>
            </node>
            <node concept="3F0ifn" id="cDnfeSBx_F" role="3EZMnx">
              <node concept="VPM3Z" id="cDnfeSBx_G" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="cDnfeSBx_H" role="3EZMnx">
              <property role="3F0ifm" value="Event Outputs" />
              <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
              <node concept="VPM3Z" id="cDnfeSBx_I" role="3F10Kt" />
            </node>
            <node concept="3F2HdR" id="cDnfeSBx_J" role="3EZMnx">
              <ref role="1NtTu8" to="xiqq:3HBlKeoYsiz" resolve="outputEvents" />
              <node concept="2EHx9g" id="cDnfeSBx_K" role="2czzBx" />
              <node concept="3EZMnI" id="cDnfeSBx_L" role="2czzBI">
                <node concept="3XFhqQ" id="cDnfeSBx_M" role="3EZMnx" />
                <node concept="3F0ifn" id="cDnfeSBx_N" role="3EZMnx">
                  <property role="3F0ifm" value="empty" />
                  <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
                </node>
                <node concept="2iRfu4" id="cDnfeSBx_O" role="2iSdaV" />
                <node concept="VPM3Z" id="cDnfeSBx_P" role="3F10Kt" />
              </node>
            </node>
            <node concept="3F0ifn" id="cDnfeSBx_Q" role="3EZMnx">
              <node concept="VPM3Z" id="cDnfeSBx_R" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="cDnfeSBx_S" role="3EZMnx">
              <property role="3F0ifm" value="Data Inputs" />
              <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
              <node concept="VPM3Z" id="cDnfeSBx_T" role="3F10Kt" />
            </node>
            <node concept="3F2HdR" id="cDnfeSBx_U" role="3EZMnx">
              <ref role="1NtTu8" to="xiqq:3HBlKeoYsiE" resolve="inputVariables" />
              <node concept="2EHx9g" id="cDnfeSBx_V" role="2czzBx" />
              <node concept="3EZMnI" id="cDnfeSBx_W" role="2czzBI">
                <node concept="3XFhqQ" id="cDnfeSBx_X" role="3EZMnx" />
                <node concept="3F0ifn" id="cDnfeSBx_Y" role="3EZMnx">
                  <property role="3F0ifm" value="empty" />
                  <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
                </node>
                <node concept="2iRfu4" id="cDnfeSBx_Z" role="2iSdaV" />
                <node concept="VPM3Z" id="cDnfeSBxA0" role="3F10Kt" />
              </node>
            </node>
            <node concept="3F0ifn" id="cDnfeSBxA1" role="3EZMnx">
              <node concept="VPM3Z" id="cDnfeSBxA2" role="3F10Kt" />
            </node>
            <node concept="3F0ifn" id="cDnfeSBxA3" role="3EZMnx">
              <property role="3F0ifm" value="Data Outputs" />
              <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
              <node concept="VPM3Z" id="cDnfeSBxA4" role="3F10Kt" />
            </node>
            <node concept="3F2HdR" id="cDnfeSBxA5" role="3EZMnx">
              <ref role="1NtTu8" to="xiqq:3HBlKeoYsiI" resolve="outputVariables" />
              <node concept="2EHx9g" id="cDnfeSBxA6" role="2czzBx" />
              <node concept="3EZMnI" id="cDnfeSBxA7" role="2czzBI">
                <node concept="3XFhqQ" id="cDnfeSBxA8" role="3EZMnx" />
                <node concept="3F0ifn" id="cDnfeSBxA9" role="3EZMnx">
                  <property role="3F0ifm" value="empty" />
                  <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
                </node>
                <node concept="2iRfu4" id="cDnfeSBxAa" role="2iSdaV" />
                <node concept="VPM3Z" id="cDnfeSBxAb" role="3F10Kt" />
              </node>
            </node>
            <node concept="2iRkQZ" id="cDnfeSBxAy" role="2iSdaV" />
          </node>
          <node concept="2iRfu4" id="cDnfeSBxAz" role="2iSdaV" />
        </node>
        <node concept="2iRkQZ" id="cDnfeSBxA$" role="2iSdaV" />
      </node>
      <node concept="3F0ifn" id="cDnfeSBxA_" role="3EZMnx">
        <property role="3F0ifm" value="                   " />
        <node concept="VPM3Z" id="cDnfeSBxAA" role="3F10Kt" />
      </node>
      <node concept="3EZMnI" id="cDnfeSBxAB" role="3EZMnx">
        <node concept="VPM3Z" id="cDnfeSBxAC" role="3F10Kt" />
        <node concept="3F0ifn" id="cDnfeSBxAD" role="3EZMnx">
          <property role="3F0ifm" value="Preview:" />
          <ref role="1k5W1q" to="5kh9:6LU90BQ6WR$" resolve="DeclarationBlockHeader" />
        </node>
        <node concept="3F0ifn" id="cDnfeSBxAE" role="3EZMnx">
          <node concept="VPM3Z" id="cDnfeSBxAF" role="3F10Kt" />
        </node>
        <node concept="PMmxH" id="cDnfeSBxAG" role="3EZMnx">
          <ref role="PMmxG" node="1HEL0zWg4im" resolve="DeclarationWithInterface_Preview" />
        </node>
        <node concept="2iRkQZ" id="cDnfeSBxAH" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="14erg_TkJam">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
    <node concept="2aJ2om" id="14erg_TkK5B" role="CpUAK">
      <ref role="2$4xQ3" node="1kUX9T6j1Ql" resolve="interface" />
    </node>
    <node concept="3EZMnI" id="14erg_TkK5D" role="2wV5jI">
      <node concept="3F0ifn" id="14erg_TkK65" role="3EZMnx">
        <property role="3F0ifm" value="Applications:" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        <node concept="VPM3Z" id="14erg_TlMfz" role="3F10Kt" />
      </node>
      <node concept="3F2HdR" id="14erg_TkK5L" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:uLhTRR7MVq" resolve="applications" />
        <node concept="2iRkQZ" id="14erg_TkK5M" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="14erg_TkK5N" role="3EZMnx">
        <node concept="VPM3Z" id="14erg_TkKCf" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="14erg_TkK6P" role="3EZMnx">
        <property role="3F0ifm" value="Devices:" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        <node concept="VPM3Z" id="14erg_TlMfx" role="3F10Kt" />
      </node>
      <node concept="3F2HdR" id="14erg_TkK5O" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:uLhTRR7MVs" resolve="devices" />
        <node concept="2EHx9g" id="14erg_Tm6CI" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="14erg_TkKDg" role="3EZMnx">
        <node concept="VPM3Z" id="14erg_TkKDh" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="14erg_TkKEs" role="3EZMnx">
        <property role="3F0ifm" value="Mappings:" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        <node concept="VPM3Z" id="14erg_TlMfv" role="3F10Kt" />
      </node>
      <node concept="3F2HdR" id="14erg_TkKDO" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:uLhTRRozfU" resolve="mappings" />
        <node concept="2EHx9g" id="14erg_TmNeS" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="14erg_TkKEJ" role="3EZMnx">
        <node concept="VPM3Z" id="14erg_TkKHP" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="14erg_TkKDy" role="3EZMnx">
        <property role="3F0ifm" value="Segments:" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        <node concept="VPM3Z" id="14erg_TlMft" role="3F10Kt" />
      </node>
      <node concept="3F2HdR" id="14erg_TkKH4" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:5s_pyght$Xg" resolve="segments" />
        <node concept="2EHx9g" id="14erg_TmNeV" role="2czzBx" />
      </node>
      <node concept="3F0ifn" id="14erg_TkKGn" role="3EZMnx">
        <node concept="VPM3Z" id="14erg_TkKHN" role="3F10Kt" />
      </node>
      <node concept="3F0ifn" id="14erg_TkKF3" role="3EZMnx">
        <property role="3F0ifm" value="Links:" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        <node concept="VPM3Z" id="14erg_TlMfr" role="3F10Kt" />
      </node>
      <node concept="3F2HdR" id="14erg_TkKFG" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:5s_pygh_SXc" resolve="links" />
        <node concept="2EHx9g" id="14erg_TmNeY" role="2czzBx" />
      </node>
      <node concept="2iRkQZ" id="14erg_TkK5Q" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="14erg_TkK6X">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
    <node concept="2aJ2om" id="14erg_TkK6Z" role="CpUAK">
      <ref role="2$4xQ3" node="1kUX9T6j1Ql" resolve="interface" />
    </node>
    <node concept="3EZMnI" id="1DfKejr1UPN" role="2wV5jI">
      <node concept="3EZMnI" id="14erg_TkK71" role="3EZMnx">
        <node concept="3F0ifn" id="14erg_TkKBO" role="3EZMnx">
          <property role="3F0ifm" value="  •" />
          <node concept="VPM3Z" id="14erg_TkKBP" role="3F10Kt" />
        </node>
        <node concept="3F0A7n" id="14erg_TkK78" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="14erg_Tm6Ci" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="1iCGBv" id="14erg_Tm6Cu" role="3EZMnx">
          <ref role="1NtTu8" to="xiqq:1WTKUmKKVP_" resolve="type" />
          <node concept="1sVBvm" id="14erg_Tm6Cw" role="1sWHZn">
            <node concept="3F0A7n" id="14erg_Tm6CF" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
          <node concept="A1WHu" id="1DfKejr1UPC" role="3vIgyS">
            <ref role="A1WHt" to="xpi8:PZB1W7aHCo" resolve="DeviceDeclaration_AddParametersTM" />
          </node>
        </node>
        <node concept="3EZMnI" id="35u_RMPTTFX" role="3EZMnx">
          <node concept="VPM3Z" id="35u_RMPTTFZ" role="3F10Kt" />
          <node concept="3F0ifn" id="uLhTRR7MIj" role="3EZMnx">
            <property role="3F0ifm" value="(" />
            <node concept="11L4FC" id="uLhTRR7MJ_" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
            <node concept="11LMrY" id="uLhTRR7MJI" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F2HdR" id="uLhTRR7MI_" role="3EZMnx">
            <property role="2czwfO" value="," />
            <property role="Q2I2d" value="g$1Qtxb/punctuation" />
            <ref role="1NtTu8" to="xiqq:fshQXbRNVN" resolve="parameters" />
            <node concept="l2Vlx" id="uLhTRR7MIB" role="2czzBx" />
            <node concept="lj46D" id="uLhTRR7MJB" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="3F0ifn" id="uLhTRR7MIW" role="3EZMnx">
            <property role="3F0ifm" value=")" />
            <node concept="11L4FC" id="uLhTRR7MJM" role="3F10Kt">
              <property role="VOm3f" value="true" />
            </node>
          </node>
          <node concept="l2Vlx" id="35u_RMPTTG2" role="2iSdaV" />
          <node concept="pkWqt" id="35u_RMPTTHv" role="pqm2j">
            <node concept="3clFbS" id="35u_RMPTTHw" role="2VODD2">
              <node concept="3clFbF" id="35u_RMPTWlD" role="3cqZAp">
                <node concept="2OqwBi" id="35u_RMPTZgc" role="3clFbG">
                  <node concept="2OqwBi" id="35u_RMPTW_t" role="2Oq$k0">
                    <node concept="pncrf" id="35u_RMPTWlC" role="2Oq$k0" />
                    <node concept="Bykcj" id="35u_RMPTYY7" role="2OqNvi">
                      <node concept="1aIX9F" id="35u_RMPTYY9" role="1xVPHs">
                        <node concept="26LbJo" id="35u_RMPTZ1D" role="1aIX9E">
                          <ref role="26LbJp" to="xiqq:fshQXbRNVN" resolve="parameters" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3GX2aA" id="35u_RMPTZBO" role="2OqNvi" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2iRfu4" id="14erg_TkK74" role="2iSdaV" />
      </node>
      <node concept="3EZMnI" id="1DfKejr1V0a" role="3EZMnx">
        <node concept="VPM3Z" id="1DfKejr1V0c" role="3F10Kt" />
        <node concept="3XFhqQ" id="1DfKejr1V1C" role="3EZMnx" />
        <node concept="3XFhqQ" id="1DfKejr2Bhi" role="3EZMnx" />
        <node concept="3XFhqQ" id="1DfKejr3aqA" role="3EZMnx" />
        <node concept="3F0ifn" id="1DfKejr1VrD" role="3EZMnx">
          <property role="3F0ifm" value="resources:" />
          <ref role="1k5W1q" to="tpco:3VARyd8XcQs" resolve="Comment" />
        </node>
        <node concept="3F2HdR" id="1DfKejr1V22" role="3EZMnx">
          <ref role="1NtTu8" to="xiqq:1WTKUmKKVPK" resolve="resources" />
          <node concept="2iRkQZ" id="1DfKejr1V25" role="2czzBx" />
          <node concept="VPM3Z" id="1DfKejr1V26" role="3F10Kt" />
        </node>
        <node concept="2iRfu4" id="1DfKejr1V0f" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="1DfKejr1UPO" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="14erg_TkKC1">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
    <node concept="2aJ2om" id="14erg_TkKC3" role="CpUAK">
      <ref role="2$4xQ3" node="1kUX9T6j1Ql" resolve="interface" />
    </node>
    <node concept="3EZMnI" id="14erg_TkKC5" role="2wV5jI">
      <node concept="3F0ifn" id="14erg_TkKC6" role="3EZMnx">
        <property role="3F0ifm" value="  •" />
        <node concept="VPM3Z" id="14erg_TkKC7" role="3F10Kt" />
      </node>
      <node concept="3F0A7n" id="14erg_TkKC8" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="3k4GqR" id="1DfKejr1xa1" role="3F10Kt">
          <node concept="3k4GqP" id="1DfKejr1xa2" role="3k4GqO">
            <node concept="3clFbS" id="1DfKejr1xa3" role="2VODD2">
              <node concept="3clFbJ" id="3V8WxCAkANw" role="3cqZAp">
                <node concept="3clFbS" id="3V8WxCAkANy" role="3clFbx">
                  <node concept="3cpWs6" id="3V8WxCAkCzf" role="3cqZAp">
                    <node concept="10Nm6u" id="3V8WxCAkCF3" role="3cqZAk" />
                  </node>
                </node>
                <node concept="3clFbC" id="3V8WxCAkCet" role="3clFbw">
                  <node concept="10Nm6u" id="3V8WxCAkCu1" role="3uHU7w" />
                  <node concept="2OqwBi" id="3V8WxCAkB9m" role="3uHU7B">
                    <node concept="pncrf" id="3V8WxCAkASN" role="2Oq$k0" />
                    <node concept="3TrcHB" id="3V8WxCAkBsF" role="2OqNvi">
                      <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="2yJZQx2whs4" role="3cqZAp">
                <node concept="3cpWsn" id="2yJZQx2whs5" role="3cpWs9">
                  <property role="TrG5h" value="project" />
                  <node concept="3uibUv" id="2yJZQx2whs6" role="1tU5fm">
                    <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                  </node>
                  <node concept="2OqwBi" id="2yJZQx2whs7" role="33vP2m">
                    <node concept="2OqwBi" id="2yJZQx2whs8" role="2Oq$k0">
                      <node concept="1Q80Hx" id="2yJZQx2whs9" role="2Oq$k0" />
                      <node concept="liA8E" id="2yJZQx2whsa" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext()" resolve="getOperationContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2yJZQx2whsb" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~IOperationContext.getProject()" resolve="getProject" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="2yJZQx2whsc" role="3cqZAp">
                <node concept="3cpWsn" id="2yJZQx2whsd" role="3cpWs9">
                  <property role="TrG5h" value="repository" />
                  <node concept="3uibUv" id="QE5KxywAwU" role="1tU5fm">
                    <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
                  </node>
                  <node concept="2YIFZM" id="2yJZQx2whsf" role="33vP2m">
                    <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
                    <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                    <node concept="37vLTw" id="2yJZQx2whsg" role="37wK5m">
                      <ref role="3cqZAo" node="2yJZQx2whs5" resolve="project" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="2yJZQx2whsh" role="3cqZAp">
                <node concept="2YIFZM" id="2yJZQx2whsi" role="3clFbG">
                  <ref role="1Pybhc" to="je9f:~NetworkInstanceNavigationSupport" resolve="NetworkInstanceNavigationSupport" />
                  <ref role="37wK5l" to="je9f:~NetworkInstanceNavigationSupport.getNavigationStub(jetbrains.mps.project.Project,org.fbme.lib.iec61499.instances.NetworkInstance)" resolve="getNavigationStub" />
                  <node concept="37vLTw" id="2yJZQx2whsj" role="37wK5m">
                    <ref role="3cqZAo" node="2yJZQx2whs5" resolve="project" />
                  </node>
                  <node concept="2YIFZM" id="2yJZQx2whKm" role="37wK5m">
                    <ref role="37wK5l" to="74cb:~NetworkInstance.createForApplication(org.fbme.lib.iec61499.declarations.ApplicationDeclaration)" resolve="createForApplication" />
                    <ref role="1Pybhc" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
                    <node concept="2OqwBi" id="2yJZQx2whKn" role="37wK5m">
                      <node concept="37vLTw" id="2yJZQx2whKo" role="2Oq$k0">
                        <ref role="3cqZAo" node="2yJZQx2whsd" resolve="repository" />
                      </node>
                      <node concept="liA8E" id="2yJZQx2whKp" role="2OqNvi">
                        <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                        <node concept="pncrf" id="2yJZQx2whKq" role="37wK5m" />
                        <node concept="3VsKOn" id="2yJZQx2whKr" role="37wK5m">
                          <ref role="3VsUkX" to="cwd8:~ApplicationDeclaration" resolve="ApplicationDeclaration" />
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
      <node concept="2iRfu4" id="14erg_TkKC9" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="14erg_TmrZk">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:uLhTRRmhk4" resolve="Mapping" />
    <node concept="2aJ2om" id="14erg_TmrZm" role="CpUAK">
      <ref role="2$4xQ3" node="1kUX9T6j1Ql" resolve="interface" />
    </node>
    <node concept="3EZMnI" id="14erg_TmrZr" role="2wV5jI">
      <node concept="3F0ifn" id="14erg_TmrZs" role="3EZMnx">
        <property role="3F0ifm" value="  •" />
        <node concept="VPM3Z" id="14erg_TmrZt" role="3F10Kt" />
      </node>
      <node concept="3F1sOY" id="14erg_TmrZV" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:uLhTRRmrej" resolve="instance" />
      </node>
      <node concept="3F0ifn" id="14erg_Tms0i" role="3EZMnx">
        <property role="3F0ifm" value="on" />
        <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        <node concept="Vb9p2" id="14erg_Tms0I" role="3F10Kt">
          <property role="Vbekb" value="g1_tSyq/BOLD_ITALIC" />
        </node>
      </node>
      <node concept="3F1sOY" id="14erg_Tms0_" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:uLhTRRmrel" resolve="resource" />
      </node>
      <node concept="2iRfu4" id="14erg_TmrZz" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="14erg_Tms0N">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:5s_pyghtuNV" resolve="SegmentDeclaration" />
    <node concept="3EZMnI" id="14erg_Tms0R" role="2wV5jI">
      <node concept="3F0ifn" id="14erg_Tms0Z" role="3EZMnx">
        <property role="3F0ifm" value="  •" />
        <node concept="VPM3Z" id="14erg_Tms10" role="3F10Kt" />
      </node>
      <node concept="3F0A7n" id="14erg_Tms11" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
      </node>
      <node concept="3F0ifn" id="14erg_Tms12" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="1iCGBv" id="14erg_Tms13" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:5s_pyghtuNY" resolve="type" />
        <node concept="1sVBvm" id="14erg_Tms14" role="1sWHZn">
          <node concept="3F0A7n" id="14erg_Tms15" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="14erg_Tms1w" role="3EZMnx">
        <node concept="VPM3Z" id="14erg_Tms1y" role="3F10Kt" />
        <node concept="3F0ifn" id="5s_pyght$VH" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <node concept="11L4FC" id="5s_pyght$W$" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="5s_pyght$WD" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="5s_pyght$Wf" role="3EZMnx">
          <property role="2czwfO" value="," />
          <property role="Q2I2d" value="g$1Qtxb/punctuation" />
          <ref role="1NtTu8" to="xiqq:5s_pyghtuOK" resolve="parameters" />
          <node concept="l2Vlx" id="5s_pyght$Wh" role="2czzBx" />
          <node concept="35HoNQ" id="5s_pyght$Wx" role="2czzBI" />
        </node>
        <node concept="3F0ifn" id="5s_pyght$VX" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <node concept="11L4FC" id="5s_pyght$WH" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="14erg_Tms1_" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="14erg_Tms0U" role="2iSdaV" />
    </node>
    <node concept="2aJ2om" id="14erg_Tms0P" role="CpUAK">
      <ref role="2$4xQ3" node="1kUX9T6j1Ql" resolve="interface" />
    </node>
  </node>
  <node concept="24kQdi" id="14erg_Tms1U">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:5s_pyghzCOb" resolve="Link" />
    <node concept="2aJ2om" id="14erg_Tms1W" role="CpUAK">
      <ref role="2$4xQ3" node="1kUX9T6j1Ql" resolve="interface" />
    </node>
    <node concept="3EZMnI" id="14erg_Tms1Y" role="2wV5jI">
      <node concept="3F0ifn" id="14erg_Tms1Z" role="3EZMnx">
        <property role="3F0ifm" value="  •" />
        <node concept="VPM3Z" id="14erg_Tms20" role="3F10Kt" />
      </node>
      <node concept="3F1sOY" id="14erg_Tms2A" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:5s_pyghzCOc" resolve="resource" />
      </node>
      <node concept="3F0ifn" id="14erg_Tms22" role="3EZMnx">
        <property role="3F0ifm" value="=&gt;" />
      </node>
      <node concept="1iCGBv" id="14erg_Tms3q" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:5s_pyghzCOh" resolve="segment" />
        <node concept="1sVBvm" id="14erg_Tms3s" role="1sWHZn">
          <node concept="3F0A7n" id="14erg_Tms3M" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
      </node>
      <node concept="3EZMnI" id="14erg_Tms26" role="3EZMnx">
        <node concept="VPM3Z" id="14erg_Tms27" role="3F10Kt" />
        <node concept="3F0ifn" id="14erg_Tms28" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <node concept="11L4FC" id="14erg_Tms29" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="14erg_Tms2a" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="14erg_Tms2b" role="3EZMnx">
          <property role="2czwfO" value="," />
          <property role="Q2I2d" value="g$1Qtxb/punctuation" />
          <ref role="1NtTu8" to="xiqq:5s_pyghzCOe" resolve="parameters" />
          <node concept="l2Vlx" id="14erg_Tms2c" role="2czzBx" />
          <node concept="35HoNQ" id="14erg_Tms2d" role="2czzBI" />
        </node>
        <node concept="3F0ifn" id="14erg_Tms2e" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <node concept="11L4FC" id="14erg_Tms2f" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="14erg_Tms2g" role="2iSdaV" />
      </node>
      <node concept="2iRfu4" id="14erg_Tms2h" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2SU8oJdGqBC">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:uLhTRR7MEy" resolve="ApplicationDeclaration" />
    <node concept="2aJ2om" id="2SU8oJdGqBJ" role="CpUAK">
      <ref role="2$4xQ3" node="2SU8oJdEKXu" resolve="system_app" />
    </node>
    <node concept="gc7cB" id="2SU8oJdHhJs" role="2wV5jI">
      <node concept="3VJUX4" id="2SU8oJdHhJu" role="3YsKMw">
        <node concept="3clFbS" id="2SU8oJdHhJw" role="2VODD2">
          <node concept="3clFbF" id="2SU8oJdHhUj" role="3cqZAp">
            <node concept="2ShNRf" id="2SU8oJdHhUl" role="3clFbG">
              <node concept="YeOm9" id="2SU8oJdHhUm" role="2ShVmc">
                <node concept="1Y3b0j" id="2SU8oJdHhUn" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                  <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                  <node concept="3Tm1VV" id="2SU8oJdHhUo" role="1B3o_S" />
                  <node concept="3clFb_" id="2SU8oJdHhUp" role="jymVt">
                    <property role="TrG5h" value="createEditorCell" />
                    <node concept="3Tm1VV" id="2SU8oJdHhUq" role="1B3o_S" />
                    <node concept="3uibUv" id="2SU8oJdHhUr" role="3clF45">
                      <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                    </node>
                    <node concept="37vLTG" id="2SU8oJdHhUs" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <node concept="3uibUv" id="2SU8oJdHhUt" role="1tU5fm">
                        <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="2SU8oJdHhUu" role="3clF47">
                      <node concept="3clFbF" id="2SU8oJdHhUv" role="3cqZAp">
                        <node concept="2YIFZM" id="3F_7WhoRfDL" role="3clFbG">
                          <ref role="37wK5l" to="p24u:~FBNetworkEditors.createCellForNetworkInstance(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="createCellForNetworkInstance" />
                          <ref role="1Pybhc" to="p24u:~FBNetworkEditors" resolve="FBNetworkEditors" />
                          <node concept="37vLTw" id="3F_7WhoRfDM" role="37wK5m">
                            <ref role="3cqZAo" node="2SU8oJdHhUs" resolve="context" />
                          </node>
                          <node concept="pncrf" id="3F_7WhoRfDN" role="37wK5m" />
                          <node concept="Rm8GO" id="3F_7WhoRfDO" role="37wK5m">
                            <ref role="Rm8GQ" to="ar7i:~SceneLayout.FULL_EDITOR" resolve="FULL_EDITOR" />
                            <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="pncrf" id="2SU8oJdHhU$" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="4dM3MZ7p75M">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
    <node concept="2aJ2om" id="4dM3MZ7p75N" role="CpUAK">
      <ref role="2$4xQ3" node="2SU8oJdEKXu" resolve="system_app" />
    </node>
    <node concept="3F2HdR" id="4dM3MZ7p7hU" role="2wV5jI">
      <ref role="1NtTu8" to="xiqq:uLhTRR7MVq" resolve="applications" />
      <node concept="107P5z" id="4dM3MZ7p7hW" role="12AuX0">
        <node concept="3clFbS" id="4dM3MZ7p7hX" role="2VODD2">
          <node concept="3clFbF" id="4dM3MZ7puqj" role="3cqZAp">
            <node concept="3clFbC" id="4dM3MZ7puql" role="3clFbG">
              <node concept="12_Ws6" id="4dM3MZ7puqm" role="3uHU7w" />
              <node concept="2OqwBi" id="4gibKcMuCQ7" role="3uHU7B">
                <node concept="1eOMI4" id="6SLp5w3MM7v" role="2Oq$k0">
                  <node concept="10QFUN" id="6SLp5w3MMq$" role="1eOMHV">
                    <node concept="3uibUv" id="3WC2DnYwyhz" role="10QFUM">
                      <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                    </node>
                    <node concept="2YIFZM" id="4dM3MZ7puMg" role="10QFUP">
                      <ref role="1Pybhc" to="je9f:~RichEditorDataKeys" resolve="RichEditorDataKeys" />
                      <ref role="37wK5l" to="je9f:~RichEditorDataKeys.contextApplication(jetbrains.mps.openapi.editor.EditorContext)" resolve="contextApplication" />
                      <node concept="1Q80Hx" id="4dM3MZ7puMh" role="37wK5m" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="4gibKcMuDYx" role="2OqNvi">
                  <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2SP6YJBXyXi">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:uLhTRR7Mvw" resolve="SystemDeclaration" />
    <node concept="2aJ2om" id="2SP6YJBXyYN" role="CpUAK">
      <ref role="2$4xQ3" node="2SU8oJdEKXw" resolve="system_res" />
    </node>
    <node concept="3F2HdR" id="2SP6YJBXyXk" role="2wV5jI">
      <ref role="1NtTu8" to="xiqq:uLhTRR7MVs" resolve="devices" />
      <node concept="107P5z" id="2SP6YJBXyXl" role="12AuX0">
        <node concept="3clFbS" id="2SP6YJBXyXm" role="2VODD2">
          <node concept="3clFbF" id="2SP6YJBXyXn" role="3cqZAp">
            <node concept="3clFbC" id="2SP6YJBXyXo" role="3clFbG">
              <node concept="12_Ws6" id="2SP6YJBXyXp" role="3uHU7w" />
              <node concept="2OqwBi" id="2SP6YJBXyXq" role="3uHU7B">
                <node concept="1eOMI4" id="6SLp5w3MNyb" role="2Oq$k0">
                  <node concept="10QFUN" id="6SLp5w3MNzL" role="1eOMHV">
                    <node concept="3uibUv" id="3WC2DnYwy$h" role="10QFUM">
                      <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                    </node>
                    <node concept="2YIFZM" id="2SP6YJBXzb7" role="10QFUP">
                      <ref role="1Pybhc" to="je9f:~RichEditorDataKeys" resolve="RichEditorDataKeys" />
                      <ref role="37wK5l" to="je9f:~RichEditorDataKeys.contextDevice(jetbrains.mps.openapi.editor.EditorContext)" resolve="contextDevice" />
                      <node concept="1Q80Hx" id="2SP6YJBXzb8" role="37wK5m" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="3WC2DnYwyMO" role="2OqNvi">
                  <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2iRkQZ" id="2SP6YJBZ1VQ" role="2czzBx" />
    </node>
  </node>
  <node concept="24kQdi" id="2SP6YJBXzdB">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:1WTKUmKKVPy" resolve="DeviceDeclaration" />
    <node concept="2aJ2om" id="2SP6YJBXzdC" role="CpUAK">
      <ref role="2$4xQ3" node="2SU8oJdEKXw" resolve="system_res" />
    </node>
    <node concept="3F2HdR" id="2SP6YJBXzdD" role="2wV5jI">
      <ref role="1NtTu8" to="xiqq:1WTKUmKKVPK" resolve="resources" />
      <node concept="107P5z" id="2SP6YJBXzdE" role="12AuX0">
        <node concept="3clFbS" id="2SP6YJBXzdF" role="2VODD2">
          <node concept="3clFbF" id="2SP6YJBXzdG" role="3cqZAp">
            <node concept="3clFbC" id="2SP6YJBXzdH" role="3clFbG">
              <node concept="12_Ws6" id="2SP6YJBXzdI" role="3uHU7w" />
              <node concept="2OqwBi" id="2SP6YJBXzdJ" role="3uHU7B">
                <node concept="1eOMI4" id="6SLp5w3Lwc8" role="2Oq$k0">
                  <node concept="10QFUN" id="6SLp5w3Lwvl" role="1eOMHV">
                    <node concept="3uibUv" id="3WC2DnYwxXg" role="10QFUM">
                      <ref role="3uigEE" to="uvki:~PlatformElement" resolve="PlatformElement" />
                    </node>
                    <node concept="2YIFZM" id="2SP6YJBXzrn" role="10QFUP">
                      <ref role="1Pybhc" to="je9f:~RichEditorDataKeys" resolve="RichEditorDataKeys" />
                      <ref role="37wK5l" to="je9f:~RichEditorDataKeys.contextResource(jetbrains.mps.openapi.editor.EditorContext)" resolve="contextResource" />
                      <node concept="1Q80Hx" id="2SP6YJBXzro" role="37wK5m" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="2SP6YJBXzdM" role="2OqNvi">
                  <ref role="37wK5l" to="uvki:~PlatformElement.getNode()" resolve="getNode" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2SP6YJBXzLX">
    <property role="3GE5qa" value="system" />
    <ref role="1XX52x" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
    <node concept="2aJ2om" id="2SP6YJBXzU7" role="CpUAK">
      <ref role="2$4xQ3" node="2SU8oJdEKXw" resolve="system_res" />
    </node>
    <node concept="gc7cB" id="2SP6YJBXzLZ" role="2wV5jI">
      <node concept="3VJUX4" id="2SP6YJBXzM0" role="3YsKMw">
        <node concept="3clFbS" id="2SP6YJBXzM1" role="2VODD2">
          <node concept="3clFbF" id="2SP6YJBXzM2" role="3cqZAp">
            <node concept="2ShNRf" id="2SP6YJBXzM3" role="3clFbG">
              <node concept="YeOm9" id="2SP6YJBXzM4" role="2ShVmc">
                <node concept="1Y3b0j" id="2SP6YJBXzM5" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                  <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                  <node concept="3Tm1VV" id="2SP6YJBXzM6" role="1B3o_S" />
                  <node concept="3clFb_" id="2SP6YJBXzM7" role="jymVt">
                    <property role="TrG5h" value="createEditorCell" />
                    <node concept="3Tm1VV" id="2SP6YJBXzM8" role="1B3o_S" />
                    <node concept="3uibUv" id="2SP6YJBXzM9" role="3clF45">
                      <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                    </node>
                    <node concept="37vLTG" id="2SP6YJBXzMa" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <node concept="3uibUv" id="2SP6YJBXzMb" role="1tU5fm">
                        <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="2SP6YJBXzMc" role="3clF47">
                      <node concept="3clFbF" id="2SP6YJBXzMd" role="3cqZAp">
                        <node concept="2YIFZM" id="3F_7WhoRfyD" role="3clFbG">
                          <ref role="1Pybhc" to="p24u:~FBNetworkEditors" resolve="FBNetworkEditors" />
                          <ref role="37wK5l" to="p24u:~FBNetworkEditors.createCellForNetworkInstance(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="createCellForNetworkInstance" />
                          <node concept="37vLTw" id="3F_7WhoRfyE" role="37wK5m">
                            <ref role="3cqZAo" node="2SP6YJBXzMa" resolve="context" />
                          </node>
                          <node concept="pncrf" id="3F_7WhoRfyF" role="37wK5m" />
                          <node concept="Rm8GO" id="3F_7WhoRfyG" role="37wK5m">
                            <ref role="Rm8GQ" to="ar7i:~SceneLayout.FULL_EDITOR" resolve="FULL_EDITOR" />
                            <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="pncrf" id="2SP6YJBXzMi" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="1DfKejr1Vag">
    <property role="3GE5qa" value="resources" />
    <ref role="1XX52x" to="xiqq:2lwHqHkyELo" resolve="ResourceDeclaration" />
    <node concept="2aJ2om" id="1DfKejr1Vjm" role="CpUAK">
      <ref role="2$4xQ3" node="1kUX9T6j1Ql" resolve="interface" />
    </node>
    <node concept="3EZMnI" id="1DfKejr1Vaj" role="2wV5jI">
      <node concept="3F0A7n" id="1DfKejr1Val" role="3EZMnx">
        <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        <node concept="3k4GqR" id="1DfKejr2h4h" role="3F10Kt">
          <node concept="3k4GqP" id="1DfKejr2h4j" role="3k4GqO">
            <node concept="3clFbS" id="1DfKejr2h4l" role="2VODD2">
              <node concept="3cpWs8" id="2yJZQx2wc2e" role="3cqZAp">
                <node concept="3cpWsn" id="2yJZQx2wc2f" role="3cpWs9">
                  <property role="TrG5h" value="project" />
                  <node concept="3uibUv" id="2yJZQx2w9pS" role="1tU5fm">
                    <ref role="3uigEE" to="z1c3:~Project" resolve="Project" />
                  </node>
                  <node concept="2OqwBi" id="2yJZQx2wc2g" role="33vP2m">
                    <node concept="2OqwBi" id="2yJZQx2wc2h" role="2Oq$k0">
                      <node concept="1Q80Hx" id="2yJZQx2wc2i" role="2Oq$k0" />
                      <node concept="liA8E" id="2yJZQx2wc2j" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext()" resolve="getOperationContext" />
                      </node>
                    </node>
                    <node concept="liA8E" id="2yJZQx2wc2k" role="2OqNvi">
                      <ref role="37wK5l" to="w1kc:~IOperationContext.getProject()" resolve="getProject" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3cpWs8" id="2yJZQx2wcv0" role="3cqZAp">
                <node concept="3cpWsn" id="2yJZQx2wcv1" role="3cpWs9">
                  <property role="TrG5h" value="repository" />
                  <node concept="3uibUv" id="739Y6csO2Og" role="1tU5fm">
                    <ref role="3uigEE" to="uvki:~PlatformElementsOwner" resolve="PlatformElementsOwner" />
                  </node>
                  <node concept="2YIFZM" id="2yJZQx2wdEn" role="33vP2m">
                    <ref role="1Pybhc" to="uvki:~PlatformRepositoryProvider" resolve="PlatformRepositoryProvider" />
                    <ref role="37wK5l" to="uvki:~PlatformRepositoryProvider.getInstance(jetbrains.mps.project.Project)" resolve="getInstance" />
                    <node concept="37vLTw" id="2yJZQx2wdEs" role="37wK5m">
                      <ref role="3cqZAo" node="2yJZQx2wc2f" resolve="project" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="1DfKejr2h6h" role="3cqZAp">
                <node concept="2YIFZM" id="1DfKejr2h6i" role="3clFbG">
                  <ref role="1Pybhc" to="je9f:~NetworkInstanceNavigationSupport" resolve="NetworkInstanceNavigationSupport" />
                  <ref role="37wK5l" to="je9f:~NetworkInstanceNavigationSupport.getNavigationStub(jetbrains.mps.project.Project,org.fbme.lib.iec61499.instances.NetworkInstance)" resolve="getNavigationStub" />
                  <node concept="37vLTw" id="2yJZQx2wc2l" role="37wK5m">
                    <ref role="3cqZAo" node="2yJZQx2wc2f" resolve="project" />
                  </node>
                  <node concept="2YIFZM" id="1DfKejr2hea" role="37wK5m">
                    <ref role="1Pybhc" to="74cb:~NetworkInstance" resolve="NetworkInstance" />
                    <ref role="37wK5l" to="74cb:~NetworkInstance.createForResource(org.fbme.lib.iec61499.declarations.ResourceDeclaration)" resolve="createForResource" />
                    <node concept="2OqwBi" id="2yJZQx2wdSc" role="37wK5m">
                      <node concept="37vLTw" id="2yJZQx2wdJz" role="2Oq$k0">
                        <ref role="3cqZAo" node="2yJZQx2wcv1" resolve="repository" />
                      </node>
                      <node concept="liA8E" id="2yJZQx2we4J" role="2OqNvi">
                        <ref role="37wK5l" to="uvki:~PlatformElementsOwner.getAdapter(org.jetbrains.mps.openapi.model.SNode,java.lang.Class)" resolve="getAdapter" />
                        <node concept="pncrf" id="2yJZQx2wh0E" role="37wK5m" />
                        <node concept="3VsKOn" id="2yJZQx2whiS" role="37wK5m">
                          <ref role="3VsUkX" to="cwd8:~ResourceDeclaration" resolve="ResourceDeclaration" />
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
      <node concept="3F0ifn" id="1DfKejr1Vam" role="3EZMnx">
        <property role="3F0ifm" value=":" />
      </node>
      <node concept="2iRfu4" id="1DfKejr1Vao" role="2iSdaV" />
      <node concept="2w$q5c" id="1DfKejr1Vap" role="2whIAn" />
      <node concept="1iCGBv" id="1DfKejr1Vaq" role="3EZMnx">
        <ref role="1NtTu8" to="xiqq:2lwHqHkyELp" resolve="type" />
        <node concept="1sVBvm" id="1DfKejr1Var" role="1sWHZn">
          <node concept="3SHvHV" id="1DfKejr1Vas" role="2wV5jI" />
        </node>
        <node concept="A1WHu" id="1DfKejr2gW4" role="3vIgyS">
          <ref role="A1WHt" to="xpi8:PZB1W7eHYs" resolve="ResourceDeclaration_AddParametersTM" />
        </node>
      </node>
      <node concept="3EZMnI" id="2lwHqHk$jy1" role="3EZMnx">
        <node concept="VPM3Z" id="2lwHqHk$jy3" role="3F10Kt" />
        <node concept="3F0ifn" id="2lwHqHk$jt$" role="3EZMnx">
          <property role="3F0ifm" value="(" />
          <node concept="11L4FC" id="2lwHqHk$jvW" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
          <node concept="11LMrY" id="2lwHqHk$jw2" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="3F2HdR" id="2lwHqHk$jwA" role="3EZMnx">
          <property role="2czwfO" value="," />
          <property role="Q2I2d" value="g$1Qtxb/punctuation" />
          <ref role="1NtTu8" to="xiqq:2lwHqHk$ftU" resolve="parameters" />
          <node concept="l2Vlx" id="2lwHqHk$jwC" role="2czzBx" />
        </node>
        <node concept="3F0ifn" id="2lwHqHk$juO" role="3EZMnx">
          <property role="3F0ifm" value=")" />
          <node concept="11L4FC" id="2lwHqHk$r$S" role="3F10Kt">
            <property role="VOm3f" value="true" />
          </node>
        </node>
        <node concept="l2Vlx" id="2lwHqHk$jy6" role="2iSdaV" />
        <node concept="pkWqt" id="2lwHqHk$jyG" role="pqm2j">
          <node concept="3clFbS" id="2lwHqHk$jyH" role="2VODD2">
            <node concept="3clFbF" id="2lwHqHk$jEe" role="3cqZAp">
              <node concept="2OqwBi" id="2lwHqHk$mop" role="3clFbG">
                <node concept="2OqwBi" id="2lwHqHk$jSf" role="2Oq$k0">
                  <node concept="pncrf" id="2lwHqHk$jEd" role="2Oq$k0" />
                  <node concept="Bykcj" id="PZB1W7eHhn" role="2OqNvi">
                    <node concept="1aIX9F" id="PZB1W7eHhp" role="1xVPHs">
                      <node concept="26LbJo" id="PZB1W7eHpk" role="1aIX9E">
                        <ref role="26LbJp" to="xiqq:2lwHqHk$ftU" resolve="parameters" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3GX2aA" id="2lwHqHk$rcT" role="2OqNvi" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6lA3BsRslwC">
    <ref role="1XX52x" to="xiqq:PI_pXYugbu" resolve="FunctionBlockDeclaration" />
    <node concept="gc7cB" id="6lA3BsRsEp$" role="2wV5jI">
      <node concept="3VJUX4" id="6lA3BsRsEpA" role="3YsKMw">
        <node concept="3clFbS" id="6lA3BsRsEpC" role="2VODD2">
          <node concept="3cpWs8" id="6lA3BsRtkX$" role="3cqZAp">
            <node concept="3cpWsn" id="6lA3BsRtkX_" role="3cpWs9">
              <property role="TrG5h" value="type" />
              <property role="3TUv4t" value="true" />
              <node concept="3Tqbb2" id="6lA3BsRtkUx" role="1tU5fm">
                <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
              </node>
              <node concept="2OqwBi" id="6lA3BsRtkXA" role="33vP2m">
                <node concept="pncrf" id="6lA3BsRtkXB" role="2Oq$k0" />
                <node concept="3TrEf2" id="6lA3BsRtkXC" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6lA3BsRsEvf" role="3cqZAp">
            <node concept="2OqwBi" id="6lA3BsRsFh0" role="3clFbw">
              <node concept="37vLTw" id="6lA3BsRtll7" role="2Oq$k0">
                <ref role="3cqZAo" node="6lA3BsRtkX_" resolve="type" />
              </node>
              <node concept="1mIQ4w" id="6lA3BsRsG5p" role="2OqNvi">
                <node concept="chp4Y" id="6lA3BsRt6Km" role="cj9EA">
                  <ref role="cht4Q" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="6lA3BsRsEvh" role="3clFbx">
              <node concept="3cpWs6" id="6lA3BsRsGgF" role="3cqZAp">
                <node concept="2ShNRf" id="6lA3BsRsGnw" role="3cqZAk">
                  <node concept="YeOm9" id="6lA3BsRt62M" role="2ShVmc">
                    <node concept="1Y3b0j" id="6lA3BsRt62P" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                      <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                      <node concept="2tJIrI" id="6lA3BsRt6ii" role="jymVt" />
                      <node concept="3Tm1VV" id="6lA3BsRt62Q" role="1B3o_S" />
                      <node concept="3clFb_" id="6lA3BsRt62T" role="jymVt">
                        <property role="TrG5h" value="createEditorCell" />
                        <node concept="3Tm1VV" id="6lA3BsRt62U" role="1B3o_S" />
                        <node concept="3uibUv" id="6lA3BsRt62W" role="3clF45">
                          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                        </node>
                        <node concept="37vLTG" id="6lA3BsRt62X" role="3clF46">
                          <property role="TrG5h" value="context" />
                          <node concept="3uibUv" id="6lA3BsRt62Y" role="1tU5fm">
                            <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="6lA3BsRt62Z" role="3clF47">
                          <node concept="3clFbF" id="6lA3BsRthvF" role="3cqZAp">
                            <node concept="2YIFZM" id="6lA3BsRthwW" role="3clFbG">
                              <ref role="37wK5l" to="56zl:~ECCEditors.createEccEditor(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="createEccEditor" />
                              <ref role="1Pybhc" to="56zl:~ECCEditors" resolve="ECCEditors" />
                              <node concept="37vLTw" id="6lA3BsRtkaw" role="37wK5m">
                                <ref role="3cqZAo" node="6lA3BsRt62X" resolve="context" />
                              </node>
                              <node concept="37vLTw" id="6lA3BsRtkXD" role="37wK5m">
                                <ref role="3cqZAo" node="6lA3BsRtkX_" resolve="type" />
                              </node>
                              <node concept="Rm8GO" id="6lA3BsRtlHV" role="37wK5m">
                                <ref role="Rm8GQ" to="ar7i:~SceneLayout.WINDOWED" resolve="WINDOWED" />
                                <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="6lA3BsRt631" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="pncrf" id="6lA3BsRtgZG" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="6lA3BsRtm20" role="3cqZAp">
            <node concept="2OqwBi" id="6lA3BsRtm21" role="3clFbw">
              <node concept="37vLTw" id="6lA3BsRtm22" role="2Oq$k0">
                <ref role="3cqZAo" node="6lA3BsRtkX_" resolve="type" />
              </node>
              <node concept="1mIQ4w" id="6lA3BsRtm23" role="2OqNvi">
                <node concept="chp4Y" id="6lA3BsRtmmW" role="cj9EA">
                  <ref role="cht4Q" to="xiqq:PI_pXYugbt" resolve="CompositeFBTypeDeclaration" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="6lA3BsRtm25" role="3clFbx">
              <node concept="3cpWs6" id="6lA3BsRtm26" role="3cqZAp">
                <node concept="2ShNRf" id="6lA3BsRtm27" role="3cqZAk">
                  <node concept="YeOm9" id="6lA3BsRtm28" role="2ShVmc">
                    <node concept="1Y3b0j" id="6lA3BsRtm29" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                      <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                      <node concept="2tJIrI" id="6lA3BsRtm2a" role="jymVt" />
                      <node concept="3Tm1VV" id="6lA3BsRtm2b" role="1B3o_S" />
                      <node concept="3clFb_" id="6lA3BsRtm2c" role="jymVt">
                        <property role="TrG5h" value="createEditorCell" />
                        <node concept="3Tm1VV" id="6lA3BsRtm2d" role="1B3o_S" />
                        <node concept="3uibUv" id="6lA3BsRtm2e" role="3clF45">
                          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                        </node>
                        <node concept="37vLTG" id="6lA3BsRtm2f" role="3clF46">
                          <property role="TrG5h" value="context" />
                          <node concept="3uibUv" id="6lA3BsRtm2g" role="1tU5fm">
                            <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="6lA3BsRtm2h" role="3clF47">
                          <node concept="3clFbF" id="6lA3BsRtm2i" role="3cqZAp">
                            <node concept="2YIFZM" id="6lA3BsRtmR_" role="3clFbG">
                              <ref role="37wK5l" to="p24u:~FBNetworkEditors.createFBNetworkCell(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="createFBNetworkCell" />
                              <ref role="1Pybhc" to="p24u:~FBNetworkEditors" resolve="FBNetworkEditors" />
                              <node concept="37vLTw" id="6lA3BsRtmRA" role="37wK5m">
                                <ref role="3cqZAo" node="6lA3BsRtm2f" resolve="context" />
                              </node>
                              <node concept="37vLTw" id="6lA3BsRtmRB" role="37wK5m">
                                <ref role="3cqZAo" node="6lA3BsRtkX_" resolve="type" />
                              </node>
                              <node concept="Rm8GO" id="6lA3BsRtmRC" role="37wK5m">
                                <ref role="Rm8GQ" to="ar7i:~SceneLayout.WINDOWED" resolve="WINDOWED" />
                                <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="2AHcQZ" id="6lA3BsRtm2n" role="2AJF6D">
                          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                        </node>
                      </node>
                      <node concept="pncrf" id="6lA3BsRtm2o" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="6lA3BsRtn1D" role="3cqZAp">
            <node concept="10Nm6u" id="6lA3BsRtnpB" role="3cqZAk" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2aJ2om" id="6lA3BsRsEpy" role="CpUAK">
      <ref role="2$4xQ3" node="6lA3BsRsf7A" resolve="expanded_fb_instance" />
    </node>
  </node>
  <node concept="24kQdi" id="5zr7wBanChv">
    <ref role="1XX52x" to="xiqq:uLhTRQWVWQ" resolve="SubapplicationDeclaration" />
    <node concept="gc7cB" id="5zr7wBanChw" role="2wV5jI">
      <node concept="3VJUX4" id="5zr7wBanChx" role="3YsKMw">
        <node concept="3clFbS" id="5zr7wBanChy" role="2VODD2">
          <node concept="3cpWs8" id="5zr7wBanChz" role="3cqZAp">
            <node concept="3cpWsn" id="5zr7wBanCh$" role="3cpWs9">
              <property role="TrG5h" value="type" />
              <property role="3TUv4t" value="true" />
              <node concept="3Tqbb2" id="5zr7wBanCh_" role="1tU5fm">
                <ref role="ehGHo" to="xiqq:uLhTRQWVWT" resolve="SubapplicationTypeDeclaration" />
              </node>
              <node concept="2OqwBi" id="5zr7wBanChA" role="33vP2m">
                <node concept="pncrf" id="5zr7wBanChB" role="2Oq$k0" />
                <node concept="3TrEf2" id="5zr7wBao6r1" role="2OqNvi">
                  <ref role="3Tt5mk" to="xiqq:uLhTRQWVWR" resolve="type" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3cpWs6" id="5zr7wBanCi8" role="3cqZAp">
            <node concept="2ShNRf" id="5zr7wBanCi9" role="3cqZAk">
              <node concept="YeOm9" id="5zr7wBanCia" role="2ShVmc">
                <node concept="1Y3b0j" id="5zr7wBanCib" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="37wK5l" to="exr9:~AbstractCellProvider.&lt;init&gt;(org.jetbrains.mps.openapi.model.SNode)" resolve="AbstractCellProvider" />
                  <ref role="1Y3XeK" to="exr9:~AbstractCellProvider" resolve="AbstractCellProvider" />
                  <node concept="2tJIrI" id="5zr7wBanCic" role="jymVt" />
                  <node concept="3Tm1VV" id="5zr7wBanCid" role="1B3o_S" />
                  <node concept="3clFb_" id="5zr7wBanCie" role="jymVt">
                    <property role="TrG5h" value="createEditorCell" />
                    <node concept="3Tm1VV" id="5zr7wBanCif" role="1B3o_S" />
                    <node concept="3uibUv" id="5zr7wBanCig" role="3clF45">
                      <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                    </node>
                    <node concept="37vLTG" id="5zr7wBanCih" role="3clF46">
                      <property role="TrG5h" value="context" />
                      <node concept="3uibUv" id="5zr7wBanCii" role="1tU5fm">
                        <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="5zr7wBanCij" role="3clF47">
                      <node concept="3clFbF" id="5zr7wBanCik" role="3cqZAp">
                        <node concept="2YIFZM" id="5zr7wBanCil" role="3clFbG">
                          <ref role="1Pybhc" to="p24u:~FBNetworkEditors" resolve="FBNetworkEditors" />
                          <ref role="37wK5l" to="p24u:~FBNetworkEditors.createFBNetworkCell(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode,org.fbme.scenes.controllers.scene.SceneLayout)" resolve="createFBNetworkCell" />
                          <node concept="37vLTw" id="5zr7wBanCim" role="37wK5m">
                            <ref role="3cqZAo" node="5zr7wBanCih" resolve="context" />
                          </node>
                          <node concept="37vLTw" id="5zr7wBanCin" role="37wK5m">
                            <ref role="3cqZAo" node="5zr7wBanCh$" resolve="type" />
                          </node>
                          <node concept="Rm8GO" id="5zr7wBanCio" role="37wK5m">
                            <ref role="Rm8GQ" to="ar7i:~SceneLayout.WINDOWED" resolve="WINDOWED" />
                            <ref role="1Px2BO" to="ar7i:~SceneLayout" resolve="SceneLayout" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="2AHcQZ" id="5zr7wBanCip" role="2AJF6D">
                      <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
                    </node>
                  </node>
                  <node concept="pncrf" id="5zr7wBanCiq" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2aJ2om" id="5zr7wBanCit" role="CpUAK">
      <ref role="2$4xQ3" node="6lA3BsRsf7A" resolve="expanded_fb_instance" />
    </node>
  </node>
</model>

