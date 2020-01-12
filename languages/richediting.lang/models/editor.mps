<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d018f155-a8e1-4632-87ac-0cbc89a1f1c2(richediting.lang.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="13" />
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="9" />
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="17" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="1" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
    <use id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation" version="4" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="2" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <use id="8dfbe92d-d233-4cc1-8ddb-a2863fd64843" name="mps.lang.meta.editor" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="xiqq" ref="r:6f0d8474-8e05-4f2b-abb9-6798ef26f9e5(mps.lang.iec61499.structure)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="tphl" ref="r:633df809-762d-4f16-bc5b-7387c85c4bd1(common.iec61499.model.fbnetwork)" />
    <import index="t4dg" ref="r:c03388ee-0de1-4aa4-a041-89cc983818e2(mps.lang.iec61499.behavior)" />
    <import index="xpi8" ref="r:9a9b929e-1b8b-403c-99cb-9e49e4b8f68b(mps.lang.iec61499.editor)" />
    <import index="5kh9" ref="r:fb13b7e5-37c8-4188-96ed-057d5b8154fd(mps.lang.ST.editor)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="hyqd" ref="r:01ce234a-ce36-43f1-8a99-7cbd899f1013(scenes.viewmodel)" />
    <import index="ykok" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel.constraints(MPS.Core/)" />
    <import index="35tq" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.scope(MPS.Core/)" />
    <import index="xxy3" ref="r:b09c5f9b-eaf5-42ce-8c06-05ad1ccd4ce3(scenes.controllers.components)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="vjnt" ref="r:dcc8041c-4feb-4a59-913c-c4ff83a14df3(richediting.adapters.fbnetwork)" />
    <import index="5lkm" ref="r:7effb02f-bde4-4d2f-b844-eefa6ab09c8c(scenes.controllers.diagram)" />
    <import index="82uw" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.function(JDK/)" />
    <import index="3bo0" ref="r:2b66dd0d-2c90-4da0-994d-d7579a6bca2a(scenes.controllers.scene)" />
    <import index="6ehz" ref="r:cb9dc0d6-4720-4b3b-b2e2-f2ed5e59d4e7(common.iec61499.model.ecc)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="f4zo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.cells(MPS.Editor/)" />
    <import index="g51k" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor.cells(MPS.Editor/)" />
    <import index="4n2q" ref="r:373665e5-4a07-4fed-8807-490b2a5624d1(richediting.adapters.ecc)" />
    <import index="rvgs" ref="r:22f3147c-cd8c-496f-a7fc-c31f351de000(scenes.controllers)" />
    <import index="ee2c" ref="r:c260e783-fa83-4eab-8183-e5c937092355(scenes.cells)" />
    <import index="hox0" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor.style(MPS.Editor/)" />
    <import index="tpco" ref="r:00000000-0000-4000-0000-011c89590284(jetbrains.mps.lang.core.editor)" />
    <import index="ubo9" ref="r:15c6feaa-d38f-494f-a105-0b74d654dd08(richediting.adapters.fb)" />
    <import index="rwq3" ref="r:c1a93deb-50a3-4728-ba16-8df97b360951(mps.iec61499.model.fbnetwork)" />
    <import index="lv7i" ref="r:5472e35e-027d-42bb-bcce-32726ec4c9a9(mps.iec61499.model.ecc)" />
    <import index="go3h" ref="r:c95c1d38-95d5-42ab-aead-d308fc2b6566(mps.iec61499.model.interfacepart)" />
    <import index="ppqf" ref="r:bc5caf0f-df14-4a61-a09e-297c528e7095(richediting.adapters.inspections)" />
    <import index="5ueo" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.editor.runtime.style(MPS.Editor/)" />
    <import index="2xsi" ref="r:65444cdf-4c94-4902-99af-ca11b363595e(common.iec61499.model.interfacepart)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" implicit="true" />
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
      <concept id="8954657570917870539" name="jetbrains.mps.lang.editor.structure.TransformationLocation_ContextAssistant" flags="ng" index="2j_NTm" />
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
      <concept id="1239814640496" name="jetbrains.mps.lang.editor.structure.CellLayout_VerticalGrid" flags="nn" index="2EHx9g" />
      <concept id="1078938745671" name="jetbrains.mps.lang.editor.structure.EditorComponentDeclaration" flags="ig" index="PKFIW" />
      <concept id="1078939183254" name="jetbrains.mps.lang.editor.structure.CellModel_Component" flags="sg" stub="3162947552742194261" index="PMmxH">
        <reference id="1078939183255" name="editorComponent" index="PMmxG" />
      </concept>
      <concept id="1186403694788" name="jetbrains.mps.lang.editor.structure.ColorStyleClassItem" flags="ln" index="VaVBg">
        <property id="1186403713874" name="color" index="Vb096" />
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
      <concept id="1186414976055" name="jetbrains.mps.lang.editor.structure.DrawBorderStyleClassItem" flags="ln" index="VPXOz" />
      <concept id="1233758997495" name="jetbrains.mps.lang.editor.structure.PunctuationLeftStyleClassItem" flags="ln" index="11L4FC" />
      <concept id="1233759184865" name="jetbrains.mps.lang.editor.structure.PunctuationRightStyleClassItem" flags="ln" index="11LMrY" />
      <concept id="1233823429331" name="jetbrains.mps.lang.editor.structure.HorizontalGapStyleClassItem" flags="ln" index="15ARfc" />
      <concept id="3360401466585705291" name="jetbrains.mps.lang.editor.structure.CellModel_ContextAssistant" flags="ng" index="18a60v" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1225456267680" name="jetbrains.mps.lang.editor.structure.RGBColor" flags="ng" index="1iSF2X">
        <property id="1225456424731" name="value" index="1iTho6" />
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
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1225898583838" name="jetbrains.mps.lang.editor.structure.ReadOnlyModelAccessor" flags="ng" index="1HfYo3">
        <child id="1225898971709" name="getter" index="1Hhtcw" />
      </concept>
      <concept id="1225900081164" name="jetbrains.mps.lang.editor.structure.CellModel_ReadOnlyModelAccessor" flags="sg" stub="3708815482283559694" index="1HlG4h">
        <child id="1225900141900" name="modelAccessor" index="1HlULh" />
      </concept>
      <concept id="5624877018228267058" name="jetbrains.mps.lang.editor.structure.ITransformationMenu" flags="ng" index="3INCJE">
        <child id="1638911550608572412" name="sections" index="IW6Ez" />
      </concept>
      <concept id="5624877018228264944" name="jetbrains.mps.lang.editor.structure.TransformationMenuContribution" flags="ng" index="3INDKC">
        <child id="6718020819489956031" name="menuReference" index="AmTjC" />
      </concept>
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="7980428675268276156" name="jetbrains.mps.lang.editor.structure.TransformationMenuSection" flags="ng" index="1Qtc8_">
        <child id="7980428675268276157" name="locations" index="1Qtc8$" />
      </concept>
      <concept id="625126330682908270" name="jetbrains.mps.lang.editor.structure.CellModel_ReferencePresentation" flags="sg" stub="730538219795961225" index="3SHvHV" />
      <concept id="1176717841777" name="jetbrains.mps.lang.editor.structure.QueryFunction_ModelAccess_Getter" flags="in" index="3TQlhw" />
      <concept id="1176749715029" name="jetbrains.mps.lang.editor.structure.QueryFunction_CellProvider" flags="in" index="3VJUX4" />
      <concept id="1198256887712" name="jetbrains.mps.lang.editor.structure.CellModel_Indent" flags="ng" index="3XFhqQ" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="5279705229678483897" name="jetbrains.mps.baseLanguage.structure.FloatingPointFloatConstant" flags="nn" index="2$xPTn">
        <property id="5279705229678483899" name="value" index="2$xPTl" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
        <child id="2820489544402271667" name="typeParameter" index="HU9BZ" />
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
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
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
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
    <language id="3a13115c-633c-4c5c-bbcc-75c4219e9555" name="jetbrains.mps.lang.quotation">
      <concept id="5455284157993911077" name="jetbrains.mps.lang.quotation.structure.NodeBuilderInitProperty" flags="ng" index="2pJxcG">
        <reference id="5455284157993911078" name="property" index="2pJxcJ" />
        <child id="1595412875168045201" name="initValue" index="28ntcv" />
      </concept>
      <concept id="5455284157993863837" name="jetbrains.mps.lang.quotation.structure.NodeBuilder" flags="nn" index="2pJPEk">
        <child id="5455284157993863838" name="quotedNode" index="2pJPEn" />
      </concept>
      <concept id="5455284157993863840" name="jetbrains.mps.lang.quotation.structure.NodeBuilderNode" flags="nn" index="2pJPED">
        <reference id="5455284157993910961" name="concept" index="2pJxaS" />
        <child id="5455284157993911099" name="values" index="2pJxcM" />
      </concept>
    </language>
    <language id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions">
      <concept id="767145758118872833" name="jetbrains.mps.lang.actions.structure.NF_LinkList_AddNewChildOperation" flags="nn" index="2DeJg1" />
    </language>
    <language id="760a0a8c-eabb-4521-8bfd-65db761a9ba3" name="jetbrains.mps.baseLanguage.logging">
      <concept id="6332851714983831325" name="jetbrains.mps.baseLanguage.logging.structure.MsgStatement" flags="ng" index="2xdQw9">
        <property id="6332851714983843871" name="severity" index="2xdLsb" />
        <child id="5721587534047265374" name="message" index="9lYJi" />
        <child id="5721587534047265375" name="throwable" index="9lYJj" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1204851882688" name="jetbrains.mps.lang.smodel.structure.LinkRefQualifier" flags="ng" index="26LbJo">
        <reference id="1204851882689" name="link" index="26LbJp" />
      </concept>
      <concept id="1138411891628" name="jetbrains.mps.lang.smodel.structure.SNodeOperation" flags="nn" index="eCIE_">
        <child id="1144104376918" name="parameter" index="1xVPHs" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="7453996997717780434" name="jetbrains.mps.lang.smodel.structure.Node_GetSConceptOperation" flags="nn" index="2yIwOk" />
      <concept id="7835263205327057228" name="jetbrains.mps.lang.smodel.structure.Node_GetChildrenAndChildAttributesOperation" flags="ng" index="Bykcj" />
      <concept id="1139184414036" name="jetbrains.mps.lang.smodel.structure.LinkList_AddNewChildOperation" flags="nn" index="WFELt">
        <reference id="1139877738879" name="concept" index="1A0vxQ" />
      </concept>
      <concept id="2644386474301421077" name="jetbrains.mps.lang.smodel.structure.LinkIdRefExpression" flags="nn" index="359W_D">
        <reference id="2644386474301421078" name="conceptDeclaration" index="359W_E" />
        <reference id="2644386474301421079" name="linkDeclaration" index="359W_F" />
      </concept>
      <concept id="5168775467716640652" name="jetbrains.mps.lang.smodel.structure.OperationParm_LinkQualifier" flags="ng" index="1aIX9F">
        <child id="5168775467716640653" name="linkQualifier" index="1aIX9E" />
      </concept>
      <concept id="1139613262185" name="jetbrains.mps.lang.smodel.structure.Node_GetParentOperation" flags="nn" index="1mfA1w" />
      <concept id="1171999116870" name="jetbrains.mps.lang.smodel.structure.Node_IsNullOperation" flags="nn" index="3w_OXm" />
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
      <concept id="1228341669568" name="jetbrains.mps.lang.smodel.structure.Node_DetachOperation" flags="nn" index="3YRAZt" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="4222318806802425298" name="jetbrains.mps.lang.core.structure.SuppressErrorsAnnotation" flags="ng" index="15s5l7">
        <property id="2423417345669755629" name="filter" index="1eyWvh" />
      </concept>
    </language>
    <language id="8dfbe92d-d233-4cc1-8ddb-a2863fd64843" name="mps.lang.meta.editor">
      <concept id="3981577588227981882" name="mps.lang.meta.editor.structure.CellCreateOperation" flags="ng" index="2CJim2">
        <child id="3981577588228006890" name="editor" index="2CJshi" />
        <child id="3981577588228006886" name="contextNode" index="2CJshu" />
      </concept>
      <concept id="3981577588228006907" name="mps.lang.meta.editor.structure.CellCreateOperationInlineEditor" flags="ig" index="2CJsh3" />
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1151702311717" name="jetbrains.mps.baseLanguage.collections.structure.ToListOperation" flags="nn" index="ANE8D" />
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1202128969694" name="jetbrains.mps.baseLanguage.collections.structure.SelectOperation" flags="nn" index="3$u5V9" />
      <concept id="1176501494711" name="jetbrains.mps.baseLanguage.collections.structure.IsNotEmptyOperation" flags="nn" index="3GX2aA" />
    </language>
  </registry>
  <node concept="24kQdi" id="5jb5jNC4ggq">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1XX52x" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
    <node concept="2aJ2om" id="5jb5jNC4ggs" role="CpUAK">
      <ref role="2$4xQ3" to="xpi8:PI_pXYAiuF" resolve="rich" />
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
        <node concept="18a60v" id="5jb5jNC4gBq" role="3EZMnx">
          <node concept="VPM3Z" id="5jb5jNC4gBr" role="3F10Kt" />
        </node>
        <node concept="VPM3Z" id="5jb5jNC4gBs" role="3F10Kt" />
        <node concept="2iRfu4" id="5jb5jNC4gBt" role="2iSdaV" />
        <node concept="2w$q5c" id="5jb5jNC4gBu" role="2whIAn" />
        <node concept="A1WHu" id="1CoiI8TY0XG" role="3vIgyS">
          <ref role="A1WHt" to="xpi8:2r29JVY8xJ4" resolve="SwitchPresentation" />
        </node>
      </node>
      <node concept="3F0ifn" id="5jb5jNC4gBv" role="3EZMnx">
        <node concept="VPM3Z" id="5jb5jNC4gBw" role="3F10Kt" />
      </node>
      <node concept="PMmxH" id="5jb5jNC4gBy" role="3EZMnx">
        <ref role="PMmxG" node="5jb5jNC4a_Z" resolve="DeclarationWithInterfaceAndAdapters_InterfacePart" />
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
                            <ref role="37wK5l" node="1R4IoyQIIIZ" resolve="createEccEditor" />
                            <ref role="1Pybhc" node="1R4IoyQHXu5" resolve="ECCEditors" />
                            <node concept="37vLTw" id="1R4IoyQIKZP" role="37wK5m">
                              <ref role="3cqZAo" node="5jb5jNC4gBK" resolve="context" />
                            </node>
                            <node concept="pncrf" id="1R4IoyQILea" role="37wK5m" />
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
    <node concept="2aJ2om" id="PI_pXYB6ob" role="CpUAK">
      <ref role="2$4xQ3" to="xpi8:PI_pXYAiuF" resolve="rich" />
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
        <node concept="18a60v" id="6LU90BQoGon" role="3EZMnx">
          <node concept="VPM3Z" id="6LU90BQoGop" role="3F10Kt" />
        </node>
        <node concept="VPM3Z" id="6LU90BQoFJs" role="3F10Kt" />
        <node concept="2iRfu4" id="6LU90BQoFJt" role="2iSdaV" />
        <node concept="2w$q5c" id="6LU90BQoFJu" role="2whIAn" />
        <node concept="A1WHu" id="1CoiI8TXYJV" role="3vIgyS">
          <ref role="A1WHt" to="xpi8:2r29JVY8xJ4" resolve="SwitchPresentation" />
        </node>
      </node>
      <node concept="3F0ifn" id="6LU90BQoFJv" role="3EZMnx">
        <node concept="VPM3Z" id="6LU90BQoFJw" role="3F10Kt" />
      </node>
      <node concept="PMmxH" id="5jb5jNC4aBs" role="3EZMnx">
        <ref role="PMmxG" node="5jb5jNC4a_Z" resolve="DeclarationWithInterfaceAndAdapters_InterfacePart" />
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
                            <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
                            <ref role="37wK5l" node="7oJsd9wVN1g" resolve="createFBNetworkCell" />
                            <node concept="37vLTw" id="7oJsd9wVOiG" role="37wK5m">
                              <ref role="3cqZAo" node="6LU90BQoFLb" resolve="context" />
                            </node>
                            <node concept="pncrf" id="7oJsd9wVOxp" role="37wK5m" />
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
          <ref role="PMmxG" node="1HEL0zWg4im" resolve="DeclarationWithInterfaceAndAdapters_Preview" />
        </node>
        <node concept="2iRkQZ" id="5jb5jNC4aBr" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="PKFIW" id="1HEL0zWg4im">
    <property role="3GE5qa" value="fbtype" />
    <property role="TrG5h" value="DeclarationWithInterfaceAndAdapters_Preview" />
    <ref role="1XX52x" to="xiqq:uLhTRQWXSY" resolve="DeclarationWithInterfaceAndAdapters" />
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
                      <node concept="3clFbF" id="1HEL0zWg5IP" role="3cqZAp">
                        <node concept="2OqwBi" id="1cTKxMSasRK" role="3clFbG">
                          <node concept="2ShNRf" id="1HEL0zWg5IN" role="2Oq$k0">
                            <node concept="1pGfFk" id="1HEL0zWg6PY" role="2ShVmc">
                              <ref role="37wK5l" to="ubo9:~EditorCell_Basic.&lt;init&gt;(jetbrains.mps.openapi.editor.EditorContext,org.jetbrains.mps.openapi.model.SNode)" resolve="FBTypeTemplateCellComponent" />
                              <node concept="1Q80Hx" id="1HEL0zWg70_" role="37wK5m" />
                              <node concept="pncrf" id="1HEL0zWg7p7" role="37wK5m" />
                              <node concept="2YIFZM" id="1R4IoyQNxYw" role="37wK5m">
                                <ref role="37wK5l" to="go3h:1R4IoyQJjh9" resolve="create" />
                                <ref role="1Pybhc" to="go3h:1R4IoyQ_1A_" resolve="FBTypeDescriptorByNode" />
                                <node concept="pncrf" id="1R4IoyQNxYx" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="1cTKxMSaDDD" role="2OqNvi">
                            <ref role="37wK5l" to="ubo9:1cTKxMSa$2F" resolve="getRootCell" />
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
    <node concept="2aJ2om" id="6LU90BQoXEj" role="CpUAK">
      <ref role="2$4xQ3" to="xpi8:PI_pXYAiuF" resolve="rich" />
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
    <ref role="1XX52x" to="xiqq:2lwHqHkyELo" resolve="ResourceInstance" />
    <node concept="2aJ2om" id="2lwHqHk$BXQ" role="CpUAK">
      <ref role="2$4xQ3" to="xpi8:PI_pXYAiuF" resolve="rich" />
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
                                <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
                                <ref role="37wK5l" node="7oJsd9wVN1g" resolve="createFBNetworkCell" />
                                <node concept="37vLTw" id="7oJsd9wWOPg" role="37wK5m">
                                  <ref role="3cqZAo" node="7oJsd9wWOPb" resolve="context" />
                                </node>
                                <node concept="pncrf" id="7oJsd9wWOPh" role="37wK5m" />
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
        <node concept="18a60v" id="7oJsd9wSEd5" role="3EZMnx">
          <node concept="VPM3Z" id="7oJsd9wSEd6" role="3F10Kt" />
        </node>
        <node concept="VPM3Z" id="7oJsd9wSEd7" role="3F10Kt" />
        <node concept="2iRfu4" id="7oJsd9wSEd8" role="2iSdaV" />
        <node concept="2w$q5c" id="7oJsd9wSEd9" role="2whIAn" />
        <node concept="A1WHu" id="7oJsd9wSEda" role="3vIgyS">
          <ref role="A1WHt" to="xpi8:2r29JVY8xJ4" resolve="SwitchPresentation" />
        </node>
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
                            <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
                            <ref role="37wK5l" node="7oJsd9wVN1g" resolve="createFBNetworkCell" />
                            <node concept="37vLTw" id="7oJsd9wWgfd" role="37wK5m">
                              <ref role="3cqZAo" node="7oJsd9wWgf8" resolve="context" />
                            </node>
                            <node concept="pncrf" id="7oJsd9wWgfe" role="37wK5m" />
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
    <node concept="2aJ2om" id="2lwHqHkp4xX" role="CpUAK">
      <ref role="2$4xQ3" to="xpi8:PI_pXYAiuF" resolve="rich" />
    </node>
  </node>
  <node concept="24kQdi" id="38k27IRjpm5">
    <property role="3GE5qa" value="fbtype.basic" />
    <ref role="1XX52x" to="xiqq:3HBlKeoZ0Uq" resolve="AlgorithmDeclaration" />
    <node concept="2aJ2om" id="38k27IRjpm7" role="CpUAK">
      <ref role="2$4xQ3" to="xpi8:PI_pXYAiuF" resolve="rich" />
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
                    <ref role="37wK5l" to="t4dg:1zB5ET5xzsQ" resolve="languageTypeSafe" />
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
    <node concept="2aJ2om" id="6LU90BQoXuy" role="CpUAK">
      <ref role="2$4xQ3" to="xpi8:PI_pXYAiuF" resolve="rich" />
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
    <node concept="2aJ2om" id="6LU90BQoXEm" role="CpUAK">
      <ref role="2$4xQ3" to="xpi8:PI_pXYAiuF" resolve="rich" />
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
    <node concept="2aJ2om" id="6LU90BQoXEo" role="CpUAK">
      <ref role="2$4xQ3" to="xpi8:PI_pXYAiuF" resolve="rich" />
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
      <ref role="2$4xQ3" to="xpi8:PI_pXYAiuF" resolve="rich" />
    </node>
    <node concept="3EZMnI" id="2RGdDg_MW9t" role="2wV5jI">
      <node concept="3EZMnI" id="38k27IRnw5K" role="3EZMnx">
        <node concept="VPM3Z" id="38k27IRnw5M" role="3F10Kt" />
        <node concept="Veino" id="2RGdDg_MW9S" role="3F10Kt">
          <node concept="1iSF2X" id="2RGdDg_MW9V" role="VblUZ">
            <property role="1iTho6" value="FFAAAA" />
          </node>
        </node>
        <node concept="3F1sOY" id="2RGdDg_Qjv5" role="3EZMnx">
          <property role="39s7Ar" value="true" />
          <ref role="1NtTu8" to="xiqq:2R0WzquVuy5" resolve="event" />
        </node>
        <node concept="2iRfu4" id="38k27IRnw5P" role="2iSdaV" />
      </node>
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
      <node concept="2iRfu4" id="2RGdDg_MW9u" role="2iSdaV" />
    </node>
  </node>
  <node concept="3INDKC" id="7pEplJku1td">
    <property role="TrG5h" value="SwitchToRich_TM" />
    <node concept="1Qtc8_" id="2JGKyjiH3X0" role="IW6Ez">
      <node concept="2j_NTm" id="2JGKyjiH3X4" role="1Qtc8$" />
    </node>
    <node concept="A1WHu" id="2r29JVY8yc0" role="AmTjC">
      <ref role="A1WHt" to="xpi8:2r29JVY8xJ4" resolve="SwitchPresentation" />
    </node>
  </node>
  <node concept="24kQdi" id="2lwHqHkAgzD">
    <property role="3GE5qa" value="devices" />
    <ref role="1XX52x" to="xiqq:2lwHqHkyEL8" resolve="DeviceTypeDeclaration" />
    <node concept="2aJ2om" id="2lwHqHkAg$x" role="CpUAK">
      <ref role="2$4xQ3" to="xpi8:PI_pXYAiuF" resolve="rich" />
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
        <node concept="18a60v" id="7oJsd9wXo39" role="3EZMnx">
          <node concept="VPM3Z" id="7oJsd9wXo3a" role="3F10Kt" />
        </node>
        <node concept="VPM3Z" id="7oJsd9wXo3b" role="3F10Kt" />
        <node concept="2iRfu4" id="7oJsd9wXo3c" role="2iSdaV" />
        <node concept="2w$q5c" id="7oJsd9wXo3d" role="2whIAn" />
        <node concept="A1WHu" id="7oJsd9wXo3e" role="3vIgyS">
          <ref role="A1WHt" to="xpi8:2r29JVY8xJ4" resolve="SwitchPresentation" />
        </node>
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
                              <ref role="37wK5l" node="7oJsd9wVN1g" resolve="createFBNetworkCell" />
                              <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
                              <node concept="37vLTw" id="7oJsd9wXo3_" role="37wK5m">
                                <ref role="3cqZAo" node="7oJsd9wXo3w" resolve="context" />
                              </node>
                              <node concept="pncrf" id="7oJsd9wXo3A" role="37wK5m" />
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
    <ref role="1XX52x" to="xiqq:1WTKUmKKVPy" resolve="DeviceConfiguration" />
    <node concept="2aJ2om" id="7oJsd9wY0ET" role="CpUAK">
      <ref role="2$4xQ3" to="xpi8:PI_pXYAiuF" resolve="rich" />
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
                                  <ref role="37wK5l" node="7oJsd9wVN1g" resolve="createFBNetworkCell" />
                                  <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
                                  <node concept="37vLTw" id="7oJsd9wY0Fz" role="37wK5m">
                                    <ref role="3cqZAo" node="7oJsd9wY0Fu" resolve="context" />
                                  </node>
                                  <node concept="pncrf" id="7oJsd9wY0F$" role="37wK5m" />
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
    <node concept="2aJ2om" id="7oJsd9wY$el" role="CpUAK">
      <ref role="2$4xQ3" to="xpi8:PI_pXYAiuF" resolve="rich" />
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
        <node concept="18a60v" id="7oJsd9wY$iy" role="3EZMnx">
          <node concept="VPM3Z" id="7oJsd9wY$iz" role="3F10Kt" />
        </node>
        <node concept="VPM3Z" id="7oJsd9wY$i$" role="3F10Kt" />
        <node concept="2iRfu4" id="7oJsd9wY$i_" role="2iSdaV" />
        <node concept="2w$q5c" id="7oJsd9wY$iA" role="2whIAn" />
        <node concept="A1WHu" id="7oJsd9wY$iB" role="3vIgyS">
          <ref role="A1WHt" to="xpi8:2r29JVY8xJ4" resolve="SwitchPresentation" />
        </node>
      </node>
      <node concept="3F0ifn" id="7oJsd9wY$iC" role="3EZMnx">
        <node concept="VPM3Z" id="7oJsd9wY$iD" role="3F10Kt" />
      </node>
      <node concept="PMmxH" id="7oJsd9wY$iF" role="3EZMnx">
        <ref role="PMmxG" node="5jb5jNC4a_Z" resolve="DeclarationWithInterfaceAndAdapters_InterfacePart" />
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
                          <node concept="2YIFZM" id="7oJsd9x58yq" role="3clFbG">
                            <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
                            <ref role="37wK5l" node="7oJsd9x560s" resolve="createSubappNetworkCell" />
                            <node concept="37vLTw" id="7oJsd9x58yr" role="37wK5m">
                              <ref role="3cqZAo" node="7oJsd9wY$iT" resolve="context" />
                            </node>
                            <node concept="pncrf" id="7oJsd9x58ys" role="37wK5m" />
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
    <ref role="1XX52x" to="xiqq:uLhTRR7MEy" resolve="ApplicationConfiguration" />
    <node concept="2aJ2om" id="7oJsd9x58QV" role="CpUAK">
      <ref role="2$4xQ3" to="xpi8:PI_pXYAiuF" resolve="rich" />
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
                              <node concept="2YIFZM" id="7oJsd9x58R_" role="3clFbG">
                                <ref role="37wK5l" node="7oJsd9wVN1g" resolve="createFBNetworkCell" />
                                <ref role="1Pybhc" node="7oJsd9wVHpq" resolve="FBNetworkEditors" />
                                <node concept="37vLTw" id="7oJsd9x58RA" role="37wK5m">
                                  <ref role="3cqZAo" node="7oJsd9x58Rx" resolve="context" />
                                </node>
                                <node concept="pncrf" id="7oJsd9x58RB" role="37wK5m" />
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
    <ref role="1XX52x" to="xiqq:uLhTRR7Mvw" resolve="SystemConfiguration" />
    <node concept="3EZMnI" id="7oJsd9x5aDp" role="2wV5jI">
      <node concept="3EZMnI" id="7oJsd9x5aDr" role="3EZMnx">
        <node concept="3F0ifn" id="7oJsd9x5aDs" role="3EZMnx">
          <property role="3F0ifm" value="System" />
          <ref role="1k5W1q" to="5kh9:3HBlKeoYLK_" resolve="Keyword" />
        </node>
        <node concept="3F0A7n" id="7oJsd9x5aDt" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="18a60v" id="7oJsd9x5aDu" role="3EZMnx">
          <node concept="VPM3Z" id="7oJsd9x5aDv" role="3F10Kt" />
        </node>
        <node concept="VPM3Z" id="7oJsd9x5aDw" role="3F10Kt" />
        <node concept="2iRfu4" id="7oJsd9x5aDx" role="2iSdaV" />
        <node concept="2w$q5c" id="7oJsd9x5aDy" role="2whIAn" />
        <node concept="A1WHu" id="7oJsd9x5aDz" role="3vIgyS">
          <ref role="A1WHt" to="xpi8:2r29JVY8xJ4" resolve="SwitchPresentation" />
        </node>
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
    <node concept="2aJ2om" id="7oJsd9x5bme" role="CpUAK">
      <ref role="2$4xQ3" to="xpi8:PI_pXYAiuF" resolve="rich" />
    </node>
  </node>
  <node concept="312cEu" id="7oJsd9wVHpq">
    <property role="TrG5h" value="FBNetworkEditors" />
    <property role="1EXbeo" value="true" />
    <node concept="2tJIrI" id="7oJsd9wVHqT" role="jymVt" />
    <node concept="Wx3nA" id="3DiEZ8TM66d" role="jymVt">
      <property role="TrG5h" value="FB_NETWORK_ATTR" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="3DiEZ8TM66g" role="1tU5fm">
        <ref role="3uigEE" to="hox0:~StyleAttribute" resolve="StyleAttribute" />
        <node concept="3uibUv" id="3DiEZ8TM66h" role="11_B2D">
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
      <node concept="3Tm1VV" id="3DiEZ8TM66f" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="3DiEZ8TL$Ew" role="jymVt" />
    <node concept="3clFbW" id="7oJsd9x57Gw" role="jymVt">
      <node concept="3cqZAl" id="7oJsd9x57Gx" role="3clF45" />
      <node concept="3Tm6S6" id="7oJsd9x58ic" role="1B3o_S" />
      <node concept="3clFbS" id="7oJsd9x57G$" role="3clF47" />
    </node>
    <node concept="2tJIrI" id="7oJsd9x57vL" role="jymVt" />
    <node concept="2YIFZL" id="7oJsd9wVN1g" role="jymVt">
      <property role="TrG5h" value="createFBNetworkCell" />
      <node concept="3clFbS" id="7oJsd9wVN1i" role="3clF47">
        <node concept="3cpWs8" id="7oJsd9wVN1l" role="3cqZAp">
          <node concept="3cpWsn" id="7oJsd9wVN1m" role="3cpWs9">
            <property role="TrG5h" value="scene" />
            <node concept="3uibUv" id="7oJsd9wVN1n" role="1tU5fm">
              <ref role="3uigEE" to="ee2c:7qPnRGFqlIs" resolve="EditorCell_Scene" />
            </node>
            <node concept="2ShNRf" id="7oJsd9wVN1o" role="33vP2m">
              <node concept="1pGfFk" id="7oJsd9wVN1p" role="2ShVmc">
                <ref role="37wK5l" to="ee2c:7qPnRGFqmUN" resolve="EditorCell_Scene" />
                <node concept="37vLTw" id="7oJsd9wVN1q" role="37wK5m">
                  <ref role="3cqZAo" node="7oJsd9wVN3E" resolve="context" />
                </node>
                <node concept="37vLTw" id="7oJsd9wVN1r" role="37wK5m">
                  <ref role="3cqZAo" node="7oJsd9wVN3G" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7oJsd9x53PH" role="3cqZAp">
          <node concept="1rXfSq" id="7oJsd9x53PF" role="3clFbG">
            <ref role="37wK5l" node="7oJsd9x52MO" resolve="initializeSceneCell" />
            <node concept="37vLTw" id="7oJsd9x545u" role="37wK5m">
              <ref role="3cqZAo" node="7oJsd9wVN1m" resolve="scene" />
            </node>
            <node concept="2ShNRf" id="7oJsd9x54jp" role="37wK5m">
              <node concept="1pGfFk" id="7oJsd9x54TG" role="2ShVmc">
                <ref role="37wK5l" to="rwq3:1R4IoyQANA7" resolve="FBNetworkByNode" />
                <node concept="37vLTw" id="7oJsd9x552r" role="37wK5m">
                  <ref role="3cqZAo" node="7oJsd9wVN3G" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7oJsd9x55U0" role="37wK5m">
              <ref role="3cqZAo" node="7oJsd9wVN3E" resolve="context" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7oJsd9wVN3t" role="3cqZAp">
          <node concept="37vLTw" id="7oJsd9wVN3u" role="3cqZAk">
            <ref role="3cqZAo" node="7oJsd9wVN1m" resolve="scene" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7oJsd9wVN3D" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="37vLTG" id="7oJsd9wVN3E" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="7oJsd9wVN3F" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="7oJsd9wVN3G" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7oJsd9wVN3H" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7oJsd9wVN3C" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7oJsd9x56jF" role="jymVt" />
    <node concept="2YIFZL" id="7oJsd9x560s" role="jymVt">
      <property role="TrG5h" value="createSubappNetworkCell" />
      <node concept="3clFbS" id="7oJsd9x560t" role="3clF47">
        <node concept="3cpWs8" id="7oJsd9x560u" role="3cqZAp">
          <node concept="3cpWsn" id="7oJsd9x560v" role="3cpWs9">
            <property role="TrG5h" value="scene" />
            <node concept="3uibUv" id="7oJsd9x560w" role="1tU5fm">
              <ref role="3uigEE" to="ee2c:7qPnRGFqlIs" resolve="EditorCell_Scene" />
            </node>
            <node concept="2ShNRf" id="7oJsd9x560x" role="33vP2m">
              <node concept="1pGfFk" id="7oJsd9x560y" role="2ShVmc">
                <ref role="37wK5l" to="ee2c:7qPnRGFqmUN" resolve="EditorCell_Scene" />
                <node concept="37vLTw" id="7oJsd9x560z" role="37wK5m">
                  <ref role="3cqZAo" node="7oJsd9x560J" resolve="context" />
                </node>
                <node concept="37vLTw" id="7oJsd9x560$" role="37wK5m">
                  <ref role="3cqZAo" node="7oJsd9x560L" resolve="node" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="7oJsd9x560_" role="3cqZAp">
          <node concept="1rXfSq" id="7oJsd9x560A" role="3clFbG">
            <ref role="37wK5l" node="7oJsd9x52MO" resolve="initializeSceneCell" />
            <node concept="37vLTw" id="7oJsd9x560B" role="37wK5m">
              <ref role="3cqZAo" node="7oJsd9x560v" resolve="scene" />
            </node>
            <node concept="2ShNRf" id="7oJsd9x560C" role="37wK5m">
              <node concept="1pGfFk" id="7oJsd9x560D" role="2ShVmc">
                <ref role="37wK5l" to="rwq3:7oJsd9x2CPz" resolve="SubappNetworkByNode" />
                <node concept="37vLTw" id="7oJsd9x560E" role="37wK5m">
                  <ref role="3cqZAo" node="7oJsd9x560L" resolve="node" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="7oJsd9x560F" role="37wK5m">
              <ref role="3cqZAo" node="7oJsd9x560J" resolve="context" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="7oJsd9x560G" role="3cqZAp">
          <node concept="37vLTw" id="7oJsd9x560H" role="3cqZAk">
            <ref role="3cqZAo" node="7oJsd9x560v" resolve="scene" />
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="7oJsd9x560I" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="37vLTG" id="7oJsd9x560J" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="7oJsd9x560K" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="7oJsd9x560L" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="7oJsd9x560M" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:uLhTRQW_B0" resolve="IWithSubappNetwork" />
        </node>
      </node>
      <node concept="3Tm1VV" id="7oJsd9x560N" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="7oJsd9x4jvm" role="jymVt" />
    <node concept="2YIFZL" id="7oJsd9x52MO" role="jymVt">
      <property role="TrG5h" value="initializeSceneCell" />
      <node concept="3clFbS" id="7oJsd9x52MQ" role="3clF47">
        <node concept="3clFbF" id="3DiEZ8TLRNr" role="3cqZAp">
          <node concept="2OqwBi" id="3DiEZ8TLWEv" role="3clFbG">
            <node concept="2OqwBi" id="3DiEZ8TLSyr" role="2Oq$k0">
              <node concept="37vLTw" id="3DiEZ8TLRNp" role="2Oq$k0">
                <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
              </node>
              <node concept="liA8E" id="3DiEZ8TLWnB" role="2OqNvi">
                <ref role="37wK5l" to="g51k:~EditorCell_Basic.getStyle()" resolve="getStyle" />
              </node>
            </node>
            <node concept="liA8E" id="3DiEZ8TLZx0" role="2OqNvi">
              <ref role="37wK5l" to="hox0:~Style.set(jetbrains.mps.openapi.editor.style.StyleAttribute,java.lang.Object)" resolve="set" />
              <node concept="37vLTw" id="3DiEZ8TM8_t" role="37wK5m">
                <ref role="3cqZAo" node="3DiEZ8TM66d" resolve="FB_NETWORK_ATTR" />
              </node>
              <node concept="37vLTw" id="3DiEZ8TM8XJ" role="37wK5m">
                <ref role="3cqZAo" node="7oJsd9x52P1" resolve="network" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3DiEZ8TM2G4" role="3cqZAp" />
        <node concept="SfApY" id="7oJsd9x52MR" role="3cqZAp">
          <node concept="3clFbS" id="7oJsd9x52MS" role="SfCbr">
            <node concept="3cpWs8" id="1R4IoyQFFNK" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQFFNL" role="3cpWs9">
                <property role="TrG5h" value="networkAdapter" />
                <node concept="3uibUv" id="1R4IoyQFFNM" role="1tU5fm">
                  <ref role="3uigEE" to="vjnt:4O0ojQq0OIY" resolve="FBNetworkViewAdapter" />
                </node>
                <node concept="2ShNRf" id="1R4IoyQFHSa" role="33vP2m">
                  <node concept="1pGfFk" id="1R4IoyQFHQx" role="2ShVmc">
                    <ref role="37wK5l" to="vjnt:1R4IoyQDKDs" resolve="FBNetworkViewAdapter" />
                    <node concept="37vLTw" id="1R4IoyQFI1g" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52P1" resolve="network" />
                    </node>
                    <node concept="2OqwBi" id="1R4IoyQFIBM" role="37wK5m">
                      <node concept="37vLTw" id="1R4IoyQFIjE" role="2Oq$k0">
                        <ref role="3cqZAo" node="7oJsd9x52P1" resolve="network" />
                      </node>
                      <node concept="liA8E" id="1R4IoyQFIUn" role="2OqNvi">
                        <ref role="37wK5l" to="rwq3:1R4IoyQANQ3" resolve="getNode" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7oJsd9x52MT" role="3cqZAp">
              <node concept="3cpWsn" id="7oJsd9x52MU" role="3cpWs9">
                <property role="TrG5h" value="backgroundLayer" />
                <node concept="3uibUv" id="7oJsd9x52MV" role="1tU5fm">
                  <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
                </node>
                <node concept="2OqwBi" id="7oJsd9x52MW" role="33vP2m">
                  <node concept="37vLTw" id="7oJsd9x52MX" role="2Oq$k0">
                    <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                  </node>
                  <node concept="liA8E" id="7oJsd9x52MY" role="2OqNvi">
                    <ref role="37wK5l" to="ee2c:4y$DvIYbrxg" resolve="createLayer" />
                    <node concept="2$xPTn" id="7oJsd9x52MZ" role="37wK5m">
                      <property role="2$xPTl" value="0.f" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7oJsd9x52N0" role="3cqZAp">
              <node concept="3cpWsn" id="7oJsd9x52N1" role="3cpWs9">
                <property role="TrG5h" value="tracesLayer" />
                <node concept="3uibUv" id="7oJsd9x52N2" role="1tU5fm">
                  <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
                </node>
                <node concept="2OqwBi" id="7oJsd9x52N3" role="33vP2m">
                  <node concept="37vLTw" id="7oJsd9x52N4" role="2Oq$k0">
                    <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                  </node>
                  <node concept="liA8E" id="7oJsd9x52N5" role="2OqNvi">
                    <ref role="37wK5l" to="ee2c:4y$DvIYbrxg" resolve="createLayer" />
                    <node concept="2$xPTn" id="7oJsd9x52N6" role="37wK5m">
                      <property role="2$xPTl" value="1.f" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7oJsd9x52N7" role="3cqZAp">
              <node concept="3cpWsn" id="7oJsd9x52N8" role="3cpWs9">
                <property role="TrG5h" value="componentsLayer" />
                <node concept="3uibUv" id="7oJsd9x52N9" role="1tU5fm">
                  <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
                </node>
                <node concept="2OqwBi" id="7oJsd9x52Na" role="33vP2m">
                  <node concept="37vLTw" id="7oJsd9x52Nb" role="2Oq$k0">
                    <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                  </node>
                  <node concept="liA8E" id="7oJsd9x52Nc" role="2OqNvi">
                    <ref role="37wK5l" to="ee2c:4y$DvIYbrxg" resolve="createLayer" />
                    <node concept="2$xPTn" id="7oJsd9x52Nd" role="37wK5m">
                      <property role="2$xPTl" value="2.f" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7oJsd9x52Ne" role="3cqZAp">
              <node concept="3cpWsn" id="7oJsd9x52Nf" role="3cpWs9">
                <property role="TrG5h" value="connectionsLayer" />
                <node concept="3uibUv" id="7oJsd9x52Ng" role="1tU5fm">
                  <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
                </node>
                <node concept="2OqwBi" id="7oJsd9x52Nh" role="33vP2m">
                  <node concept="37vLTw" id="7oJsd9x52Ni" role="2Oq$k0">
                    <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                  </node>
                  <node concept="liA8E" id="7oJsd9x52Nj" role="2OqNvi">
                    <ref role="37wK5l" to="ee2c:4y$DvIYbrxg" resolve="createLayer" />
                    <node concept="2$xPTn" id="7oJsd9x52Nk" role="37wK5m">
                      <property role="2$xPTl" value="3.f" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyRr9qx" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyRr9qy" role="3cpWs9">
                <property role="TrG5h" value="inspectionsLayer" />
                <node concept="3uibUv" id="1R4IoyRr9qz" role="1tU5fm">
                  <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
                </node>
                <node concept="2OqwBi" id="1R4IoyRr9q$" role="33vP2m">
                  <node concept="37vLTw" id="1R4IoyRr9q_" role="2Oq$k0">
                    <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                  </node>
                  <node concept="liA8E" id="1R4IoyRr9qA" role="2OqNvi">
                    <ref role="37wK5l" to="ee2c:4y$DvIYbrxg" resolve="createLayer" />
                    <node concept="2$xPTn" id="1R4IoyRr9qB" role="37wK5m">
                      <property role="2$xPTl" value="4.f" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7oJsd9x52Nl" role="3cqZAp" />
            <node concept="3cpWs8" id="7oJsd9x52Nm" role="3cqZAp">
              <node concept="3cpWsn" id="7oJsd9x52Nn" role="3cpWs9">
                <property role="TrG5h" value="viewpoint" />
                <node concept="3uibUv" id="7oJsd9x52No" role="1tU5fm">
                  <ref role="3uigEE" to="rvgs:1iOpS24$iQB" resolve="ModifiableSceneViewpoint" />
                </node>
                <node concept="2ShNRf" id="7oJsd9x52Np" role="33vP2m">
                  <node concept="1pGfFk" id="7oJsd9x52Nq" role="2ShVmc">
                    <ref role="37wK5l" to="rvgs:17nGqbJdQpZ" resolve="SceneViewpointByCell" />
                    <node concept="37vLTw" id="7oJsd9x52Nr" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                    </node>
                    <node concept="37vLTw" id="7oJsd9x52Ns" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7oJsd9x52Nt" role="3cqZAp">
              <node concept="3cpWsn" id="7oJsd9x52Nu" role="3cpWs9">
                <property role="TrG5h" value="focus" />
                <node concept="3uibUv" id="7oJsd9x52Nv" role="1tU5fm">
                  <ref role="3uigEE" to="rvgs:4y$DvIXWfQg" resolve="SceneFocusModel" />
                </node>
                <node concept="2ShNRf" id="7oJsd9x52Nw" role="33vP2m">
                  <node concept="HV5vD" id="7oJsd9x52Nx" role="2ShVmc">
                    <ref role="HV5vE" to="rvgs:4y$DvIXWgRV" resolve="DefaultFocusModel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="7oJsd9x52Ny" role="3cqZAp">
              <node concept="2ShNRf" id="7oJsd9x52Nz" role="3clFbG">
                <node concept="1pGfFk" id="7oJsd9x52N$" role="2ShVmc">
                  <ref role="37wK5l" to="3bo0:4y$DvIYmY27" resolve="BackgroundFacility" />
                  <node concept="37vLTw" id="7oJsd9x52N_" role="37wK5m">
                    <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                  </node>
                  <node concept="37vLTw" id="7oJsd9x52NA" role="37wK5m">
                    <ref role="3cqZAo" node="7oJsd9x52Nu" resolve="focus" />
                  </node>
                  <node concept="37vLTw" id="7oJsd9x52NB" role="37wK5m">
                    <ref role="3cqZAo" node="7oJsd9x52MU" resolve="backgroundLayer" />
                  </node>
                  <node concept="37vLTw" id="7oJsd9x52NC" role="37wK5m">
                    <ref role="3cqZAo" node="7oJsd9x52Nn" resolve="viewpoint" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7oJsd9x52ND" role="3cqZAp" />
            <node concept="3cpWs8" id="7oJsd9x52NE" role="3cqZAp">
              <node concept="3cpWsn" id="7oJsd9x52NF" role="3cpWs9">
                <property role="TrG5h" value="componentsSelection" />
                <node concept="3uibUv" id="7oJsd9x52NG" role="1tU5fm">
                  <ref role="3uigEE" to="rvgs:2XwVnrt199s" resolve="DefaultSelectionModel" />
                  <node concept="3uibUv" id="2syzu7r7pwE" role="11_B2D">
                    <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                  </node>
                </node>
                <node concept="2ShNRf" id="7oJsd9x52NH" role="33vP2m">
                  <node concept="HV5vD" id="7oJsd9x52NI" role="2ShVmc">
                    <ref role="HV5vE" to="rvgs:2XwVnrt199s" resolve="DefaultSelectionModel" />
                    <node concept="3uibUv" id="2syzu7r7rn$" role="HU9BZ">
                      <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7oJsd9x52NJ" role="3cqZAp">
              <node concept="3cpWsn" id="7oJsd9x52NK" role="3cpWs9">
                <property role="TrG5h" value="componentsLayout" />
                <node concept="3uibUv" id="7oJsd9x52NL" role="1tU5fm">
                  <ref role="3uigEE" to="rvgs:1KCfUoKSK2B" resolve="DefaultLayoutModel" />
                  <node concept="3uibUv" id="2syzu7r7nIs" role="11_B2D">
                    <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                  </node>
                </node>
                <node concept="2ShNRf" id="7oJsd9x52NM" role="33vP2m">
                  <node concept="1pGfFk" id="7oJsd9x52NN" role="2ShVmc">
                    <ref role="37wK5l" to="rvgs:2JpbWDsR2ER" resolve="DefaultLayoutModel" />
                    <node concept="2OqwBi" id="7oJsd9x52NO" role="37wK5m">
                      <node concept="37vLTw" id="7oJsd9x52NP" role="2Oq$k0">
                        <ref role="3cqZAo" node="7oJsd9x52P3" resolve="context" />
                      </node>
                      <node concept="liA8E" id="7oJsd9x52NQ" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
                      </node>
                    </node>
                    <node concept="3uibUv" id="2syzu7r7tdl" role="1pMfVU">
                      <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7oJsd9x52NR" role="3cqZAp">
              <node concept="3cpWsn" id="7oJsd9x52NS" role="3cpWs9">
                <property role="TrG5h" value="componentsFacility" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="7oJsd9x52NT" role="1tU5fm">
                  <ref role="3uigEE" to="xxy3:3vyG44ANA6n" resolve="ComponentsFacility" />
                  <node concept="3uibUv" id="2syzu7r7u8$" role="11_B2D">
                    <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                  </node>
                  <node concept="3uibUv" id="2syzu7r7_Ow" role="11_B2D">
                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                  </node>
                </node>
                <node concept="2ShNRf" id="7oJsd9x52NU" role="33vP2m">
                  <node concept="1pGfFk" id="7oJsd9x52NV" role="2ShVmc">
                    <ref role="37wK5l" to="xxy3:3vyG44ANZeI" resolve="ComponentsFacility" />
                    <node concept="37vLTw" id="7oJsd9x52NW" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                    </node>
                    <node concept="2OqwBi" id="2syzu7r4aSh" role="37wK5m">
                      <node concept="37vLTw" id="1R4IoyQFJ3O" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyQFFNL" resolve="networkAdapter" />
                      </node>
                      <node concept="liA8E" id="2syzu7r4bLU" role="2OqNvi">
                        <ref role="37wK5l" to="vjnt:2syzu7qXWth" resolve="getFCComponentsView" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="1R4IoyQzDap" role="37wK5m">
                      <ref role="3cqZAo" node="6oXN8hZZXZ9" resolve="COMPONENT_CONTROLLER_FACTORY" />
                    </node>
                    <node concept="2ShNRf" id="7oJsd9x52NZ" role="37wK5m">
                      <node concept="1pGfFk" id="7oJsd9x52O0" role="2ShVmc">
                        <ref role="37wK5l" to="vjnt:4y$DvIXnDTT" resolve="FBNetworkComponentSynhcronizer" />
                        <node concept="37vLTw" id="7oJsd9x52O1" role="37wK5m">
                          <ref role="3cqZAo" node="7oJsd9x52Nn" resolve="viewpoint" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="7oJsd9x52O2" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52NK" resolve="componentsLayout" />
                    </node>
                    <node concept="37vLTw" id="7oJsd9x52O3" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52NF" resolve="componentsSelection" />
                    </node>
                    <node concept="37vLTw" id="7oJsd9x52O4" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52Nu" resolve="focus" />
                    </node>
                    <node concept="37vLTw" id="7oJsd9x52O5" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52N8" resolve="componentsLayer" />
                    </node>
                    <node concept="37vLTw" id="7oJsd9x52O6" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52N1" resolve="tracesLayer" />
                    </node>
                    <node concept="3uibUv" id="2syzu7r7BO1" role="1pMfVU">
                      <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                    </node>
                    <node concept="3uibUv" id="2syzu7r7BO2" role="1pMfVU">
                      <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="7oJsd9x52O7" role="3cqZAp" />
            <node concept="3clFbF" id="7oJsd9x52O8" role="3cqZAp">
              <node concept="2OqwBi" id="7oJsd9x52O9" role="3clFbG">
                <node concept="37vLTw" id="7oJsd9x52Oa" role="2Oq$k0">
                  <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                </node>
                <node concept="liA8E" id="7oJsd9x52Ob" role="2OqNvi">
                  <ref role="37wK5l" to="ee2c:17nGqbJmuOx" resolve="addCompletionProvider" />
                  <node concept="2ShNRf" id="7oJsd9x52Oc" role="37wK5m">
                    <node concept="1pGfFk" id="7oJsd9x52Od" role="2ShVmc">
                      <ref role="37wK5l" to="3bo0:5jb5jNBO$52" resolve="CompletionProviderByViewpoint" />
                      <node concept="37vLTw" id="7oJsd9x52Oe" role="37wK5m">
                        <ref role="3cqZAo" node="7oJsd9x52Nn" resolve="viewpoint" />
                      </node>
                      <node concept="1bVj0M" id="1R4IoyQydnH" role="37wK5m">
                        <node concept="3clFbS" id="1R4IoyQydnJ" role="1bW5cS">
                          <node concept="3clFbF" id="1R4IoyQyd__" role="3cqZAp">
                            <node concept="1rXfSq" id="1R4IoyQyd_$" role="3clFbG">
                              <ref role="37wK5l" node="1R4IoyQxYca" resolve="getCompletion" />
                              <node concept="37vLTw" id="1R4IoyQydOc" role="37wK5m">
                                <ref role="3cqZAo" node="7oJsd9x52P1" resolve="network" />
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
            <node concept="3clFbH" id="7oJsd9x52Oi" role="3cqZAp" />
            <node concept="3clFbH" id="2syzu7r4kY_" role="3cqZAp" />
            <node concept="3cpWs8" id="2syzu7r7KZn" role="3cqZAp">
              <node concept="3cpWsn" id="2syzu7r7KZo" role="3cpWs9">
                <property role="TrG5h" value="inlineValuesView" />
                <node concept="3uibUv" id="2syzu7r7KZ8" role="1tU5fm">
                  <ref role="3uigEE" to="hyqd:4bHpKVAnix_" resolve="ComponentExtsView" />
                  <node concept="3uibUv" id="2syzu7r7KZe" role="11_B2D">
                    <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                  </node>
                  <node concept="3uibUv" id="2syzu7r7KZd" role="11_B2D">
                    <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValue" />
                  </node>
                </node>
                <node concept="2OqwBi" id="2syzu7r7KZp" role="33vP2m">
                  <node concept="37vLTw" id="1R4IoyQFKoc" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQFFNL" resolve="networkAdapter" />
                  </node>
                  <node concept="liA8E" id="2syzu7r7KZr" role="2OqNvi">
                    <ref role="37wK5l" to="vjnt:2syzu7qXWtx" resolve="getInlineValuesView" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2syzu7r7Mfm" role="3cqZAp" />
            <node concept="3cpWs8" id="2syzu7r4ydV" role="3cqZAp">
              <node concept="3cpWsn" id="2syzu7r4ydW" role="3cpWs9">
                <property role="TrG5h" value="inlineValuesFacility" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="2syzu7r4ydX" role="1tU5fm">
                  <ref role="3uigEE" to="xxy3:4bHpKVAnk3c" resolve="ComponentsExtensionsFacility" />
                  <node concept="3uibUv" id="2syzu7rfQ53" role="11_B2D">
                    <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                  </node>
                  <node concept="3uibUv" id="2syzu7rfS9v" role="11_B2D">
                    <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValue" />
                  </node>
                  <node concept="3uibUv" id="2syzu7rfUdD" role="11_B2D">
                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                  </node>
                </node>
                <node concept="2ShNRf" id="2syzu7r4zFf" role="33vP2m">
                  <node concept="1pGfFk" id="2syzu7r4$eB" role="2ShVmc">
                    <ref role="37wK5l" to="xxy3:4bHpKVAnMAa" resolve="ComponentsExtensionsFacility" />
                    <node concept="37vLTw" id="2syzu7r7KZs" role="37wK5m">
                      <ref role="3cqZAo" node="2syzu7r7KZo" resolve="inlineValuesView" />
                    </node>
                    <node concept="37vLTw" id="2syzu7r5vt_" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52NS" resolve="componentsFacility" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQzGLr" role="37wK5m">
                      <ref role="3cqZAo" node="2syzu7r0y98" resolve="INLINE_VALUE_CONTROLLER_FACTORY" />
                    </node>
                    <node concept="37vLTw" id="2syzu7raskx" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52N8" resolve="componentsLayer" />
                    </node>
                    <node concept="37vLTw" id="2syzu7rap0n" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52N1" resolve="tracesLayer" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2syzu7ret9I" role="3cqZAp" />
            <node concept="3cpWs8" id="1R4IoyRrlh8" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyRrlh9" role="3cpWs9">
                <property role="TrG5h" value="controllerProvider" />
                <node concept="3uibUv" id="1R4IoyRrtLh" role="1tU5fm">
                  <ref role="3uigEE" to="82uw:~Function" resolve="Function" />
                  <node concept="3uibUv" id="1R4IoyRruRE" role="11_B2D">
                    <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                  </node>
                  <node concept="3uibUv" id="1R4IoyRrvYG" role="11_B2D">
                    <ref role="3uigEE" to="vjnt:5jb5jNBJKHJ" resolve="FBNetworkComponentController" />
                  </node>
                </node>
                <node concept="1bVj0M" id="1R4IoyRrlha" role="33vP2m">
                  <node concept="3clFbS" id="1R4IoyRrlhb" role="1bW5cS">
                    <node concept="3clFbJ" id="1R4IoyRrlhc" role="3cqZAp">
                      <node concept="3clFbS" id="1R4IoyRrlhd" role="3clFbx">
                        <node concept="3cpWs6" id="1R4IoyRrlhe" role="3cqZAp">
                          <node concept="10QFUN" id="1R4IoyRrlhf" role="3cqZAk">
                            <node concept="3uibUv" id="1R4IoyRrlhg" role="10QFUM">
                              <ref role="3uigEE" to="vjnt:5jb5jNBJKHJ" resolve="FBNetworkComponentController" />
                            </node>
                            <node concept="2OqwBi" id="1R4IoyRrlhh" role="10QFUP">
                              <node concept="37vLTw" id="1R4IoyRrlhi" role="2Oq$k0">
                                <ref role="3cqZAo" node="2syzu7r4ydW" resolve="inlineValuesFacility" />
                              </node>
                              <node concept="liA8E" id="1R4IoyRrlhj" role="2OqNvi">
                                <ref role="37wK5l" to="xxy3:2syzu7r5L8a" resolve="getController" />
                                <node concept="10QFUN" id="1R4IoyRrlhk" role="37wK5m">
                                  <node concept="3uibUv" id="1R4IoyRrlhl" role="10QFUM">
                                    <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValue" />
                                  </node>
                                  <node concept="37vLTw" id="1R4IoyRrlhm" role="10QFUP">
                                    <ref role="3cqZAo" node="1R4IoyRrlhx" resolve="it" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="2ZW3vV" id="1R4IoyRrlhn" role="3clFbw">
                        <node concept="3uibUv" id="1R4IoyRrlho" role="2ZW6by">
                          <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValue" />
                        </node>
                        <node concept="37vLTw" id="1R4IoyRrlhp" role="2ZW6bz">
                          <ref role="3cqZAo" node="1R4IoyRrlhx" resolve="it" />
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="1R4IoyRrlhq" role="3cqZAp">
                      <node concept="10QFUN" id="1R4IoyRrlhr" role="3clFbG">
                        <node concept="3uibUv" id="1R4IoyRrlhs" role="10QFUM">
                          <ref role="3uigEE" to="vjnt:5jb5jNBJKHJ" resolve="FBNetworkComponentController" />
                        </node>
                        <node concept="2OqwBi" id="1R4IoyRrlht" role="10QFUP">
                          <node concept="37vLTw" id="1R4IoyRrlhu" role="2Oq$k0">
                            <ref role="3cqZAo" node="7oJsd9x52NS" resolve="componentsFacility" />
                          </node>
                          <node concept="liA8E" id="1R4IoyRrlhv" role="2OqNvi">
                            <ref role="37wK5l" to="xxy3:4y$DvIVUIFH" resolve="getController" />
                            <node concept="37vLTw" id="1R4IoyRrlhw" role="37wK5m">
                              <ref role="3cqZAo" node="1R4IoyRrlhx" resolve="it" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTG" id="1R4IoyRrlhx" role="1bW2Oz">
                    <property role="TrG5h" value="it" />
                    <node concept="3uibUv" id="1R4IoyRrlhy" role="1tU5fm">
                      <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1R4IoyRrrv$" role="3cqZAp" />
            <node concept="3cpWs8" id="7oJsd9x52Oj" role="3cqZAp">
              <node concept="3cpWsn" id="7oJsd9x52Ok" role="3cpWs9">
                <property role="TrG5h" value="portSettings" />
                <node concept="3uibUv" id="7oJsd9x52Ol" role="1tU5fm">
                  <ref role="3uigEE" to="vjnt:4O0ojQq1tYH" resolve="FBPortSettingProvider" />
                </node>
                <node concept="2ShNRf" id="2syzu7rgjob" role="33vP2m">
                  <node concept="1pGfFk" id="2syzu7rgkme" role="2ShVmc">
                    <ref role="37wK5l" to="vjnt:4y$DvIVWOEH" resolve="FBPortSettingProvider" />
                    <node concept="37vLTw" id="1R4IoyRrlhz" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyRrlh9" resolve="controllerProvider" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="2syzu7rgam8" role="3cqZAp">
              <node concept="3cpWsn" id="2syzu7rgam9" role="3cpWs9">
                <property role="TrG5h" value="diagramComponentSettings" />
                <node concept="3uibUv" id="2syzu7rgam7" role="1tU5fm">
                  <ref role="3uigEE" to="5lkm:2syzu7rdoTh" resolve="DiagramComponentSettingProvider" />
                  <node concept="3uibUv" id="2syzu7rgaj7" role="11_B2D">
                    <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                  </node>
                  <node concept="3uibUv" id="2syzu7rgaj8" role="11_B2D">
                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                  </node>
                </node>
                <node concept="2ShNRf" id="2syzu7rgama" role="33vP2m">
                  <node concept="YeOm9" id="2syzu7rgamb" role="2ShVmc">
                    <node concept="1Y3b0j" id="2syzu7rgamc" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="1Y3XeK" to="5lkm:2syzu7rdoTh" resolve="DiagramComponentSettingProvider" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <node concept="3Tm1VV" id="2syzu7rgamd" role="1B3o_S" />
                      <node concept="3clFb_" id="2syzu7rgame" role="jymVt">
                        <property role="TrG5h" value="getModelForm" />
                        <node concept="3Tm1VV" id="2syzu7rgamf" role="1B3o_S" />
                        <node concept="3uibUv" id="2syzu7rgamg" role="3clF45">
                          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                        </node>
                        <node concept="2AHcQZ" id="2syzu7rgamh" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                        </node>
                        <node concept="37vLTG" id="2syzu7rgami" role="3clF46">
                          <property role="TrG5h" value="component" />
                          <node concept="3uibUv" id="2syzu7rgamj" role="1tU5fm">
                            <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                          </node>
                          <node concept="2AHcQZ" id="2syzu7rgamk" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2syzu7rgaml" role="3clF47">
                          <node concept="3clFbJ" id="2syzu7rgamm" role="3cqZAp">
                            <node concept="2ZW3vV" id="2syzu7rgamn" role="3clFbw">
                              <node concept="3uibUv" id="2syzu7rgamo" role="2ZW6by">
                                <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValue" />
                              </node>
                              <node concept="37vLTw" id="2syzu7rgamp" role="2ZW6bz">
                                <ref role="3cqZAo" node="2syzu7rgami" resolve="component" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="2syzu7rgamq" role="3clFbx">
                              <node concept="3cpWs6" id="2syzu7rgamr" role="3cqZAp">
                                <node concept="2OqwBi" id="2syzu7rgams" role="3cqZAk">
                                  <node concept="37vLTw" id="2syzu7rgamt" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2syzu7r4ydW" resolve="inlineValuesFacility" />
                                  </node>
                                  <node concept="liA8E" id="2syzu7rgamu" role="2OqNvi">
                                    <ref role="37wK5l" to="xxy3:2syzu7re_om" resolve="getModelForm" />
                                    <node concept="10QFUN" id="2syzu7rgamv" role="37wK5m">
                                      <node concept="3uibUv" id="2syzu7rgamw" role="10QFUM">
                                        <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValue" />
                                      </node>
                                      <node concept="37vLTw" id="2syzu7rgamx" role="10QFUP">
                                        <ref role="3cqZAo" node="2syzu7rgami" resolve="component" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="2syzu7rgamy" role="3cqZAp">
                            <node concept="2OqwBi" id="2syzu7rgamz" role="3cqZAk">
                              <node concept="37vLTw" id="2syzu7rgam$" role="2Oq$k0">
                                <ref role="3cqZAo" node="7oJsd9x52NS" resolve="componentsFacility" />
                              </node>
                              <node concept="liA8E" id="2syzu7rgam_" role="2OqNvi">
                                <ref role="37wK5l" to="xxy3:1iOpS24Xk6r" resolve="getModelForm" />
                                <node concept="37vLTw" id="2syzu7rgamA" role="37wK5m">
                                  <ref role="3cqZAo" node="2syzu7rgami" resolve="component" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFb_" id="2syzu7rgamB" role="jymVt">
                        <property role="TrG5h" value="getTransformedForm" />
                        <node concept="3Tm1VV" id="2syzu7rgamC" role="1B3o_S" />
                        <node concept="3uibUv" id="2syzu7rgamD" role="3clF45">
                          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                        </node>
                        <node concept="2AHcQZ" id="2syzu7rgamE" role="2AJF6D">
                          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                        </node>
                        <node concept="37vLTG" id="2syzu7rgamF" role="3clF46">
                          <property role="TrG5h" value="component" />
                          <node concept="3uibUv" id="2syzu7rgamG" role="1tU5fm">
                            <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                          </node>
                          <node concept="2AHcQZ" id="2syzu7rgamH" role="2AJF6D">
                            <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                          </node>
                        </node>
                        <node concept="3clFbS" id="2syzu7rgamI" role="3clF47">
                          <node concept="3clFbJ" id="2syzu7rgamJ" role="3cqZAp">
                            <node concept="2ZW3vV" id="2syzu7rgamK" role="3clFbw">
                              <node concept="3uibUv" id="2syzu7rgamL" role="2ZW6by">
                                <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValue" />
                              </node>
                              <node concept="37vLTw" id="2syzu7rgamM" role="2ZW6bz">
                                <ref role="3cqZAo" node="2syzu7rgamF" resolve="component" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="2syzu7rgamN" role="3clFbx">
                              <node concept="3cpWs6" id="2syzu7rgamO" role="3cqZAp">
                                <node concept="2OqwBi" id="2syzu7rgamP" role="3cqZAk">
                                  <node concept="37vLTw" id="2syzu7rgamQ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2syzu7r4ydW" resolve="inlineValuesFacility" />
                                  </node>
                                  <node concept="liA8E" id="2syzu7rgamR" role="2OqNvi">
                                    <ref role="37wK5l" to="xxy3:2syzu7re_oA" resolve="getTransformedForm" />
                                    <node concept="10QFUN" id="2syzu7rgamS" role="37wK5m">
                                      <node concept="3uibUv" id="2syzu7rgamT" role="10QFUM">
                                        <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValue" />
                                      </node>
                                      <node concept="37vLTw" id="2syzu7rgamU" role="10QFUP">
                                        <ref role="3cqZAo" node="2syzu7rgamF" resolve="component" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="2syzu7rgamV" role="3cqZAp">
                            <node concept="2OqwBi" id="2syzu7rgamW" role="3cqZAk">
                              <node concept="37vLTw" id="2syzu7rgamX" role="2Oq$k0">
                                <ref role="3cqZAo" node="7oJsd9x52NS" resolve="componentsFacility" />
                              </node>
                              <node concept="liA8E" id="2syzu7rgamY" role="2OqNvi">
                                <ref role="37wK5l" to="xxy3:1iOpS24XIhe" resolve="getTransformedForm" />
                                <node concept="37vLTw" id="2syzu7rgamZ" role="37wK5m">
                                  <ref role="3cqZAo" node="2syzu7rgamF" resolve="component" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3uibUv" id="2syzu7rgan0" role="2Ghqu4">
                        <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                      </node>
                      <node concept="3uibUv" id="2syzu7rgan1" role="2Ghqu4">
                        <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="7oJsd9x52Oo" role="3cqZAp">
              <node concept="3cpWsn" id="7oJsd9x52Op" role="3cpWs9">
                <property role="TrG5h" value="diagramFacility" />
                <node concept="3uibUv" id="7oJsd9x52Oq" role="1tU5fm">
                  <ref role="3uigEE" to="5lkm:4O0ojQpH3gw" resolve="DiagramFacility" />
                  <node concept="3uibUv" id="2syzu7reiuZ" role="11_B2D">
                    <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                  </node>
                  <node concept="3uibUv" id="2syzu7reiv0" role="11_B2D">
                    <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
                  </node>
                  <node concept="3uibUv" id="2syzu7reiv1" role="11_B2D">
                    <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnection" />
                  </node>
                  <node concept="3uibUv" id="2syzu7reiv2" role="11_B2D">
                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                  </node>
                </node>
                <node concept="2ShNRf" id="7oJsd9x52Or" role="33vP2m">
                  <node concept="1pGfFk" id="7oJsd9x52Os" role="2ShVmc">
                    <ref role="37wK5l" to="5lkm:4O0ojQpHDXN" resolve="DiagramFacility" />
                    <node concept="37vLTw" id="7oJsd9x52Ot" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                    </node>
                    <node concept="2OqwBi" id="2syzu7r4jNT" role="37wK5m">
                      <node concept="37vLTw" id="1R4IoyQFL_M" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyQFFNL" resolve="networkAdapter" />
                      </node>
                      <node concept="liA8E" id="2syzu7r4kAT" role="2OqNvi">
                        <ref role="37wK5l" to="vjnt:2syzu7qXWto" resolve="getDiagramView" />
                      </node>
                    </node>
                    <node concept="37vLTw" id="7oJsd9x52Ov" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52Ok" resolve="portSettings" />
                    </node>
                    <node concept="37vLTw" id="2syzu7rgan2" role="37wK5m">
                      <ref role="3cqZAo" node="2syzu7rgam9" resolve="diagramComponentSettings" />
                    </node>
                    <node concept="3uibUv" id="2syzu7rebJJ" role="1pMfVU">
                      <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                    </node>
                    <node concept="3uibUv" id="2syzu7recWx" role="1pMfVU">
                      <ref role="3uigEE" to="tphl:5FPxgJnz8uH" resolve="FBPortIdentity" />
                    </node>
                    <node concept="3uibUv" id="2syzu7redxl" role="1pMfVU">
                      <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnection" />
                    </node>
                    <node concept="3uibUv" id="2syzu7ree_y" role="1pMfVU">
                      <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2syzu7r4wCG" role="3cqZAp" />
            <node concept="3cpWs8" id="2syzu7r4n07" role="3cqZAp">
              <node concept="3cpWsn" id="2syzu7r4n08" role="3cpWs9">
                <property role="TrG5h" value="extendedLayout" />
                <node concept="3uibUv" id="2syzu7r4n09" role="1tU5fm">
                  <ref role="3uigEE" to="rvgs:2syzu7qKiXL" resolve="ROLayoutModel" />
                  <node concept="3uibUv" id="2syzu7r4rTx" role="11_B2D">
                    <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                  </node>
                </node>
                <node concept="2ShNRf" id="2syzu7r4nQb" role="33vP2m">
                  <node concept="1pGfFk" id="2syzu7r4opn" role="2ShVmc">
                    <ref role="37wK5l" to="rvgs:2syzu7qLq0A" resolve="ExtendedLayoutModel" />
                    <node concept="37vLTw" id="2syzu7r4txA" role="37wK5m">
                      <ref role="3cqZAo" node="7oJsd9x52NK" resolve="componentsLayout" />
                    </node>
                    <node concept="1bVj0M" id="2syzu7r5Ss9" role="37wK5m">
                      <node concept="3clFbS" id="2syzu7r5Ssb" role="1bW5cS">
                        <node concept="3clFbF" id="2syzu7r5Xg6" role="3cqZAp">
                          <node concept="2OqwBi" id="2syzu7r5Z7A" role="3clFbG">
                            <node concept="1eOMI4" id="2syzu7r60CI" role="2Oq$k0">
                              <node concept="10QFUN" id="2syzu7r61B2" role="1eOMHV">
                                <node concept="3uibUv" id="2syzu7r61Tf" role="10QFUM">
                                  <ref role="3uigEE" to="vjnt:2syzu7qINCF" resolve="InlineValueController" />
                                </node>
                                <node concept="2OqwBi" id="2syzu7r5Xvd" role="10QFUP">
                                  <node concept="37vLTw" id="2syzu7r5Xg5" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2syzu7r4ydW" resolve="inlineValuesFacility" />
                                  </node>
                                  <node concept="liA8E" id="2syzu7r5XNw" role="2OqNvi">
                                    <ref role="37wK5l" to="xxy3:2syzu7r5L8a" resolve="getController" />
                                    <node concept="37vLTw" id="2syzu7r5Y2v" role="37wK5m">
                                      <ref role="3cqZAo" node="2syzu7r5VUu" resolve="view" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="2syzu7r6wgn" role="2OqNvi">
                              <ref role="37wK5l" to="vjnt:2syzu7r68d$" resolve="getCoordinates" />
                              <node concept="37vLTw" id="2syzu7r6wBZ" role="37wK5m">
                                <ref role="3cqZAo" node="2syzu7r62qu" resolve="compPosition" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="2syzu7r5VUu" role="1bW2Oz">
                        <property role="TrG5h" value="view" />
                        <node concept="3uibUv" id="2syzu7r5VUt" role="1tU5fm">
                          <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValue" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2syzu7r62qu" role="1bW2Oz">
                        <property role="TrG5h" value="compPosition" />
                        <node concept="3uibUv" id="2syzu7r62Ft" role="1tU5fm">
                          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                        </node>
                      </node>
                    </node>
                    <node concept="1bVj0M" id="2syzu7r7GyC" role="37wK5m">
                      <node concept="3clFbS" id="2syzu7r7GyD" role="1bW5cS">
                        <node concept="3clFbF" id="2syzu7r7GyE" role="3cqZAp">
                          <node concept="2OqwBi" id="2syzu7r7GyF" role="3clFbG">
                            <node concept="1eOMI4" id="2syzu7r7GyG" role="2Oq$k0">
                              <node concept="10QFUN" id="2syzu7r7GyH" role="1eOMHV">
                                <node concept="3uibUv" id="2syzu7r7GyI" role="10QFUM">
                                  <ref role="3uigEE" to="vjnt:2syzu7qINCF" resolve="InlineValueController" />
                                </node>
                                <node concept="2OqwBi" id="2syzu7r7GyJ" role="10QFUP">
                                  <node concept="37vLTw" id="2syzu7r7GyK" role="2Oq$k0">
                                    <ref role="3cqZAo" node="2syzu7r4ydW" resolve="inlineValuesFacility" />
                                  </node>
                                  <node concept="liA8E" id="2syzu7r7GyL" role="2OqNvi">
                                    <ref role="37wK5l" to="xxy3:2syzu7r5L8a" resolve="getController" />
                                    <node concept="37vLTw" id="2syzu7r7GyM" role="37wK5m">
                                      <ref role="3cqZAo" node="2syzu7r7GyP" resolve="view" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="liA8E" id="2syzu7r7GyN" role="2OqNvi">
                              <ref role="37wK5l" to="vjnt:2syzu7r6jdN" resolve="getBounds" />
                              <node concept="37vLTw" id="2syzu7r7GyO" role="37wK5m">
                                <ref role="3cqZAo" node="2syzu7r7GyR" resolve="compPosition" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="2syzu7r7GyP" role="1bW2Oz">
                        <property role="TrG5h" value="view" />
                        <node concept="3uibUv" id="2syzu7r7GyQ" role="1tU5fm">
                          <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValue" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="2syzu7r7GyR" role="1bW2Oz">
                        <property role="TrG5h" value="compPosition" />
                        <node concept="3uibUv" id="2syzu7r7GyS" role="1tU5fm">
                          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="2syzu7r7jf2" role="1pMfVU">
                      <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                    </node>
                    <node concept="3uibUv" id="2syzu7r7mtt" role="1pMfVU">
                      <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValue" />
                    </node>
                    <node concept="3uibUv" id="2syzu7r7jVL" role="1pMfVU">
                      <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                    </node>
                    <node concept="1bVj0M" id="2syzu7r7Nz4" role="37wK5m">
                      <node concept="3clFbS" id="2syzu7r7Nz6" role="1bW5cS">
                        <node concept="3clFbF" id="2syzu7r7OSP" role="3cqZAp">
                          <node concept="2OqwBi" id="2syzu7r7QyD" role="3clFbG">
                            <node concept="37vLTw" id="2syzu7r7OSO" role="2Oq$k0">
                              <ref role="3cqZAo" node="2syzu7r7KZo" resolve="inlineValuesView" />
                            </node>
                            <node concept="liA8E" id="2syzu7r7RdV" role="2OqNvi">
                              <ref role="37wK5l" to="hyqd:4bHpKVAni_w" resolve="getExtensions" />
                              <node concept="37vLTw" id="2syzu7r7RGf" role="37wK5m">
                                <ref role="3cqZAo" node="2syzu7r7NYo" resolve="view" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="37vLTG" id="2syzu7r7NYo" role="1bW2Oz">
                        <property role="TrG5h" value="view" />
                        <node concept="3uibUv" id="2syzu7r7NYn" role="1tU5fm">
                          <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="2syzu7r4lxI" role="3cqZAp" />
            <node concept="3clFbF" id="7oJsd9x52Ox" role="3cqZAp">
              <node concept="2ShNRf" id="7oJsd9x52Oy" role="3clFbG">
                <node concept="1pGfFk" id="7oJsd9x52Oz" role="2ShVmc">
                  <ref role="37wK5l" to="5lkm:2JpbWDsR2ER" resolve="ConnectionsFacility" />
                  <node concept="37vLTw" id="7oJsd9x52O$" role="37wK5m">
                    <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyQyiJ$" role="37wK5m">
                    <ref role="3cqZAo" node="4y$DvIXmGPh" resolve="CONNECTION_CONTROLLER_FACTORY" />
                  </node>
                  <node concept="10M0yZ" id="7oJsd9x52OA" role="37wK5m">
                    <ref role="1PxDUh" to="vjnt:4y$DvIXxa0C" resolve="FBConnectionUtils" />
                    <ref role="3cqZAo" to="vjnt:4y$DvIXzOJA" resolve="PATH_FACTORY" />
                  </node>
                  <node concept="10M0yZ" id="7oJsd9x52OB" role="37wK5m">
                    <ref role="1PxDUh" to="vjnt:4y$DvIXxa0C" resolve="FBConnectionUtils" />
                    <ref role="3cqZAo" to="vjnt:4y$DvIXzPhp" resolve="PATH_PAINTER" />
                  </node>
                  <node concept="2ShNRf" id="7oJsd9x52OC" role="37wK5m">
                    <node concept="1pGfFk" id="7oJsd9x52OD" role="2ShVmc">
                      <ref role="37wK5l" to="vjnt:4y$DvIXx4WE" resolve="FBConnectionPathSyncronizer" />
                      <node concept="37vLTw" id="7oJsd9x52OE" role="37wK5m">
                        <ref role="3cqZAo" node="7oJsd9x52Nn" resolve="viewpoint" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="2syzu7r7Sf3" role="37wK5m">
                    <ref role="3cqZAo" node="2syzu7r4n08" resolve="extendedLayout" />
                  </node>
                  <node concept="37vLTw" id="7oJsd9x52OG" role="37wK5m">
                    <ref role="3cqZAo" node="7oJsd9x52NF" resolve="componentsSelection" />
                  </node>
                  <node concept="2OqwBi" id="7oJsd9x52OH" role="37wK5m">
                    <node concept="37vLTw" id="7oJsd9x52OI" role="2Oq$k0">
                      <ref role="3cqZAo" node="7oJsd9x52Op" resolve="diagramFacility" />
                    </node>
                    <node concept="liA8E" id="7oJsd9x52OJ" role="2OqNvi">
                      <ref role="37wK5l" to="5lkm:4y$DvIX$zw5" resolve="getDiagramController" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="7oJsd9x52OK" role="37wK5m">
                    <ref role="3cqZAo" node="7oJsd9x52Nf" resolve="connectionsLayer" />
                  </node>
                  <node concept="37vLTw" id="7oJsd9x52OL" role="37wK5m">
                    <ref role="3cqZAo" node="7oJsd9x52N1" resolve="tracesLayer" />
                  </node>
                  <node concept="37vLTw" id="7oJsd9x52OM" role="37wK5m">
                    <ref role="3cqZAo" node="7oJsd9x52Nu" resolve="focus" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1R4IoyRrbvF" role="3cqZAp" />
            <node concept="3clFbF" id="1R4IoyRtLpc" role="3cqZAp">
              <node concept="2ShNRf" id="1R4IoyRrE0E" role="3clFbG">
                <node concept="1pGfFk" id="1R4IoyRrE0F" role="2ShVmc">
                  <ref role="37wK5l" to="ppqf:1R4IoyQO$pW" resolve="InspectionsFacility" />
                  <node concept="37vLTw" id="1R4IoyRrE0G" role="37wK5m">
                    <ref role="3cqZAo" node="7oJsd9x52P1" resolve="network" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyRrE0H" role="37wK5m">
                    <ref role="3cqZAo" node="7oJsd9x52OZ" resolve="scene" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyRrE0I" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyRrlh9" resolve="controllerProvider" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyRrE0J" role="37wK5m">
                    <ref role="3cqZAo" node="2syzu7r4n08" resolve="extendedLayout" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyRrE0K" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyRr9qy" resolve="inspectionsLayer" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1R4IoyRrbDW" role="3cqZAp" />
          </node>
          <node concept="TDmWw" id="7oJsd9x52OO" role="TEbGg">
            <node concept="3cpWsn" id="7oJsd9x52OP" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="7oJsd9x52OQ" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
              </node>
            </node>
            <node concept="3clFbS" id="7oJsd9x52OR" role="TDEfX">
              <node concept="2xdQw9" id="7oJsd9x52OS" role="3cqZAp">
                <property role="2xdLsb" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="7oJsd9x52OT" role="9lYJi">
                  <property role="Xl_RC" value="Error during cell creation" />
                </node>
                <node concept="37vLTw" id="7oJsd9x52OU" role="9lYJj">
                  <ref role="3cqZAo" node="7oJsd9x52OP" resolve="e" />
                </node>
              </node>
              <node concept="YS8fn" id="7oJsd9x52OV" role="3cqZAp">
                <node concept="37vLTw" id="7oJsd9x52OW" role="YScLw">
                  <ref role="3cqZAo" node="7oJsd9x52OP" resolve="e" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3cqZAl" id="7oJsd9x52OY" role="3clF45" />
      <node concept="37vLTG" id="7oJsd9x52OZ" role="3clF46">
        <property role="TrG5h" value="scene" />
        <node concept="3uibUv" id="7oJsd9x52P0" role="1tU5fm">
          <ref role="3uigEE" to="ee2c:7qPnRGFqlIs" resolve="EditorCell_Scene" />
        </node>
      </node>
      <node concept="37vLTG" id="7oJsd9x52P1" role="3clF46">
        <property role="TrG5h" value="network" />
        <node concept="3uibUv" id="1R4IoyQFBgi" role="1tU5fm">
          <ref role="3uigEE" to="rwq3:1R4IoyQA3Yn" resolve="FBNetworkByNode" />
        </node>
      </node>
      <node concept="37vLTG" id="7oJsd9x52P3" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="7oJsd9x52P4" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="3Tm6S6" id="7oJsd9x52OX" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="1R4IoyQxOXp" role="jymVt" />
    <node concept="Wx3nA" id="4y$DvIXmGPh" role="jymVt">
      <property role="TrG5h" value="CONNECTION_CONTROLLER_FACTORY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="4y$DvIXmynw" role="1B3o_S" />
      <node concept="3uibUv" id="4y$DvIXmFW0" role="1tU5fm">
        <ref role="3uigEE" to="5lkm:4y$DvIW4oYS" resolve="ConnectionControllerFactory" />
        <node concept="3uibUv" id="4y$DvIXmGum" role="11_B2D">
          <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnection" />
        </node>
        <node concept="3uibUv" id="IMWzYPks10" role="11_B2D">
          <ref role="3uigEE" to="vjnt:IMWzYPgjIH" resolve="FBConnectionCursor" />
        </node>
        <node concept="3uibUv" id="IMWzYPoMvE" role="11_B2D">
          <ref role="3uigEE" to="vjnt:IMWzYPg151" resolve="FBConnectionPath" />
        </node>
      </node>
      <node concept="2ShNRf" id="4y$DvIXmPzd" role="33vP2m">
        <node concept="YeOm9" id="4y$DvIXmQD2" role="2ShVmc">
          <node concept="1Y3b0j" id="4y$DvIXmQD5" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="5lkm:4y$DvIW4oYS" resolve="ConnectionControllerFactory" />
            <node concept="3Tm1VV" id="4y$DvIXmQD6" role="1B3o_S" />
            <node concept="3clFb_" id="4y$DvIXmQD8" role="jymVt">
              <property role="TrG5h" value="create" />
              <node concept="3Tm1VV" id="4y$DvIXmQDa" role="1B3o_S" />
              <node concept="3uibUv" id="4y$DvIXmQDb" role="3clF45">
                <ref role="3uigEE" to="5lkm:7sG$k3BBij3" resolve="ConnectionController" />
              </node>
              <node concept="37vLTG" id="4y$DvIXmQDc" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="4y$DvIXmQDd" role="1tU5fm">
                  <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                </node>
              </node>
              <node concept="37vLTG" id="4y$DvIXmQDe" role="3clF46">
                <property role="TrG5h" value="view" />
                <node concept="3uibUv" id="4y$DvIXmQDn" role="1tU5fm">
                  <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnection" />
                </node>
              </node>
              <node concept="3clFbS" id="4y$DvIXmQDi" role="3clF47">
                <node concept="3clFbJ" id="7PF$iX$pNhc" role="3cqZAp">
                  <node concept="2ZW3vV" id="7PF$iX$pNhd" role="3clFbw">
                    <node concept="3uibUv" id="7PF$iX$pNIY" role="2ZW6by">
                      <ref role="3uigEE" to="rwq3:3IX4BsKu5jS" resolve="FBNetworkConnectionByNode" />
                    </node>
                    <node concept="37vLTw" id="4y$DvIXmROi" role="2ZW6bz">
                      <ref role="3cqZAo" node="4y$DvIXmQDe" resolve="view" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="7PF$iX$pNhg" role="3clFbx">
                    <node concept="3cpWs8" id="7PF$iX$pNhh" role="3cqZAp">
                      <node concept="3cpWsn" id="7PF$iX$pNhi" role="3cpWs9">
                        <property role="TrG5h" value="connecitonByNode" />
                        <node concept="3uibUv" id="1R4IoyQyk4I" role="1tU5fm">
                          <ref role="3uigEE" to="rwq3:3IX4BsKu5jS" resolve="FBNetworkConnectionByNode" />
                        </node>
                        <node concept="10QFUN" id="7PF$iX$pNhk" role="33vP2m">
                          <node concept="3uibUv" id="7PF$iX$pNPI" role="10QFUM">
                            <ref role="3uigEE" to="rwq3:3IX4BsKu5jS" resolve="FBNetworkConnectionByNode" />
                          </node>
                          <node concept="37vLTw" id="4y$DvIXmS2f" role="10QFUP">
                            <ref role="3cqZAo" node="4y$DvIXmQDe" resolve="view" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="7PF$iX$pNhn" role="3cqZAp">
                      <node concept="2ShNRf" id="7PF$iX$pNho" role="3cqZAk">
                        <node concept="1pGfFk" id="7PF$iX$pNhp" role="2ShVmc">
                          <ref role="37wK5l" to="vjnt:309fsJ6enBS" resolve="FBConnectionController" />
                          <node concept="37vLTw" id="7PF$iX$pNhu" role="37wK5m">
                            <ref role="3cqZAo" node="7PF$iX$pNhi" resolve="connecitonByNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="7PF$iX$pNhv" role="3cqZAp">
                  <node concept="10Nm6u" id="7PF$iX$pNhw" role="3cqZAk" />
                </node>
              </node>
            </node>
            <node concept="3uibUv" id="4y$DvIXmQDm" role="2Ghqu4">
              <ref role="3uigEE" to="tphl:4ZaR9mNlnNn" resolve="FBNetworkConnection" />
            </node>
            <node concept="3uibUv" id="1iOpS25f_tj" role="2Ghqu4">
              <ref role="3uigEE" to="vjnt:IMWzYPgjIH" resolve="FBConnectionCursor" />
            </node>
            <node concept="3uibUv" id="1iOpS25f_tk" role="2Ghqu4">
              <ref role="3uigEE" to="vjnt:IMWzYPg151" resolve="FBConnectionPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2syzu7r046x" role="jymVt" />
    <node concept="Wx3nA" id="2syzu7r0y98" role="jymVt">
      <property role="TrG5h" value="INLINE_VALUE_CONTROLLER_FACTORY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="2syzu7r0iRO" role="1B3o_S" />
      <node concept="3uibUv" id="2syzu7r0x0p" role="1tU5fm">
        <ref role="3uigEE" to="xxy3:4bHpKVAnjCz" resolve="ComponentExtControllerFactory" />
        <node concept="3uibUv" id="2syzu7r0xyE" role="11_B2D">
          <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValue" />
        </node>
        <node concept="3uibUv" id="2syzu7r0y5Q" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="2ShNRf" id="2syzu7r0I5_" role="33vP2m">
        <node concept="YeOm9" id="2syzu7r0IIy" role="2ShVmc">
          <node concept="1Y3b0j" id="2syzu7r0II_" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="xxy3:4bHpKVAnjCz" resolve="ComponentExtControllerFactory" />
            <node concept="3Tm1VV" id="2syzu7r0IIA" role="1B3o_S" />
            <node concept="3clFb_" id="2syzu7r0IIC" role="jymVt">
              <property role="TrG5h" value="create" />
              <node concept="37vLTG" id="2syzu7r0IID" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="2syzu7r0IIE" role="1tU5fm">
                  <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                </node>
              </node>
              <node concept="37vLTG" id="2syzu7r0IIF" role="3clF46">
                <property role="TrG5h" value="extView" />
                <node concept="3uibUv" id="2syzu7r0IIT" role="1tU5fm">
                  <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValue" />
                </node>
              </node>
              <node concept="37vLTG" id="2syzu7r0IIH" role="3clF46">
                <property role="TrG5h" value="compController" />
                <node concept="3uibUv" id="2syzu7r0III" role="1tU5fm">
                  <ref role="3uigEE" to="xxy3:1KCfUoKRRlk" resolve="ComponentController" />
                  <node concept="3uibUv" id="2syzu7r0IIV" role="11_B2D">
                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                  </node>
                </node>
              </node>
              <node concept="3uibUv" id="2syzu7r0IIL" role="3clF45">
                <ref role="3uigEE" to="xxy3:4bHpKVAnjnU" resolve="ComponentExtController" />
                <node concept="3uibUv" id="2syzu7r0IIW" role="11_B2D">
                  <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                </node>
              </node>
              <node concept="3clFbS" id="2syzu7r0IIN" role="3clF47">
                <node concept="3clFbJ" id="2syzu7r3vPv" role="3cqZAp">
                  <node concept="22lmx$" id="2syzu7r3CCP" role="3clFbw">
                    <node concept="3fqX7Q" id="2syzu7r3D1F" role="3uHU7w">
                      <node concept="1eOMI4" id="2syzu7r3D1H" role="3fr31v">
                        <node concept="2ZW3vV" id="2syzu7r3DUu" role="1eOMHV">
                          <node concept="3uibUv" id="2syzu7r3E93" role="2ZW6by">
                            <ref role="3uigEE" to="rwq3:2syzu7qTf1n" resolve="InlineValueByNode" />
                          </node>
                          <node concept="37vLTw" id="2syzu7r3Dkl" role="2ZW6bz">
                            <ref role="3cqZAo" node="2syzu7r0IIF" resolve="extView" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3fqX7Q" id="2syzu7r3xgQ" role="3uHU7B">
                      <node concept="1eOMI4" id="2syzu7r3xIj" role="3fr31v">
                        <node concept="2ZW3vV" id="2syzu7r3xgS" role="1eOMHV">
                          <node concept="3uibUv" id="2syzu7r3xgT" role="2ZW6by">
                            <ref role="3uigEE" to="vjnt:3IX4BsK5Mi_" resolve="FBInstanceController" />
                          </node>
                          <node concept="37vLTw" id="2syzu7r3xgU" role="2ZW6bz">
                            <ref role="3cqZAo" node="2syzu7r0IIH" resolve="compController" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbS" id="2syzu7r3vPx" role="3clFbx">
                    <node concept="YS8fn" id="2syzu7r3Ekk" role="3cqZAp">
                      <node concept="2ShNRf" id="2syzu7r3EGl" role="YScLw">
                        <node concept="1pGfFk" id="2syzu7r3Fus" role="2ShVmc">
                          <ref role="37wK5l" to="wyt6:~IllegalArgumentException.&lt;init&gt;()" resolve="IllegalArgumentException" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="uP0FLzJufT" role="3cqZAp">
                  <node concept="3cpWsn" id="uP0FLzJufU" role="3cpWs9">
                    <property role="TrG5h" value="node" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3Tqbb2" id="uP0FLzJufQ" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:7DSsXPFKSqU" resolve="ConstantDataSource" />
                    </node>
                    <node concept="2OqwBi" id="uP0FLzJufV" role="33vP2m">
                      <node concept="1eOMI4" id="uP0FLzJufW" role="2Oq$k0">
                        <node concept="10QFUN" id="uP0FLzJufX" role="1eOMHV">
                          <node concept="3uibUv" id="uP0FLzJufY" role="10QFUM">
                            <ref role="3uigEE" to="rwq3:2syzu7qTf1n" resolve="InlineValueByNode" />
                          </node>
                          <node concept="37vLTw" id="uP0FLzJufZ" role="10QFUP">
                            <ref role="3cqZAo" node="2syzu7r0IIF" resolve="extView" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="uP0FLzJug0" role="2OqNvi">
                        <ref role="37wK5l" to="rwq3:2syzu7r41Xb" resolve="getNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="uP0FLzJyaK" role="3cqZAp">
                  <node concept="3cpWsn" id="uP0FLzJyaL" role="3cpWs9">
                    <property role="TrG5h" value="cell" />
                    <node concept="3uibUv" id="uP0FLzJya_" role="1tU5fm">
                      <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                    </node>
                    <node concept="2OqwBi" id="uP0FLzJyaM" role="33vP2m">
                      <node concept="37vLTw" id="uP0FLzJyaN" role="2Oq$k0">
                        <ref role="3cqZAo" node="2syzu7r0IID" resolve="context" />
                      </node>
                      <node concept="2CJim2" id="3Sv$YXY1Skv" role="2OqNvi">
                        <node concept="37vLTw" id="3Sv$YXY1TZi" role="2CJshu">
                          <ref role="3cqZAo" node="uP0FLzJufU" resolve="node" />
                        </node>
                        <node concept="2CJsh3" id="3Sv$YXY1SkD" role="2CJshi">
                          <node concept="3F1sOY" id="3Sv$YXY1Vyi" role="2wV5jI">
                            <ref role="1NtTu8" to="xiqq:7DSsXPFKSqX" resolve="value" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="uP0FLzM_T3" role="3cqZAp">
                  <node concept="3clFbS" id="uP0FLzM_T5" role="3clFbx">
                    <node concept="3cpWs8" id="uP0FLzNmAW" role="3cqZAp">
                      <node concept="3cpWsn" id="uP0FLzNmAX" role="3cpWs9">
                        <property role="TrG5h" value="action" />
                        <node concept="3uibUv" id="uP0FLzNmAV" role="1tU5fm">
                          <ref role="3uigEE" to="f4zo:~CellAction" resolve="CellAction" />
                        </node>
                        <node concept="2ShNRf" id="uP0FLzNmAY" role="33vP2m">
                          <node concept="YeOm9" id="uP0FLzNmAZ" role="2ShVmc">
                            <node concept="1Y3b0j" id="uP0FLzNmB0" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="1Y3XeK" to="f4zo:~CellAction" resolve="CellAction" />
                              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                              <node concept="3Tm1VV" id="uP0FLzNmB1" role="1B3o_S" />
                              <node concept="3clFb_" id="uP0FLzNmB2" role="jymVt">
                                <property role="TrG5h" value="getDescriptionText" />
                                <node concept="3Tm1VV" id="uP0FLzNmB3" role="1B3o_S" />
                                <node concept="3uibUv" id="uP0FLzNmB4" role="3clF45">
                                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                </node>
                                <node concept="3clFbS" id="uP0FLzNmB5" role="3clF47">
                                  <node concept="3clFbF" id="uP0FLzNmB6" role="3cqZAp">
                                    <node concept="Xl_RD" id="uP0FLzNmB7" role="3clFbG">
                                      <property role="Xl_RC" value="Delete empty constant" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFb_" id="uP0FLzNmB8" role="jymVt">
                                <property role="TrG5h" value="executeInCommand" />
                                <node concept="3Tm1VV" id="uP0FLzNmB9" role="1B3o_S" />
                                <node concept="10P_77" id="uP0FLzNmBa" role="3clF45" />
                                <node concept="3clFbS" id="uP0FLzNmBb" role="3clF47">
                                  <node concept="3clFbF" id="uP0FLzNmBc" role="3cqZAp">
                                    <node concept="3clFbT" id="uP0FLzNmBd" role="3clFbG">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFb_" id="uP0FLzNmBe" role="jymVt">
                                <property role="TrG5h" value="canExecute" />
                                <node concept="3Tm1VV" id="uP0FLzNmBf" role="1B3o_S" />
                                <node concept="10P_77" id="uP0FLzNmBg" role="3clF45" />
                                <node concept="37vLTG" id="uP0FLzNmBh" role="3clF46">
                                  <property role="TrG5h" value="context" />
                                  <node concept="3uibUv" id="uP0FLzNmBi" role="1tU5fm">
                                    <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="uP0FLzNmBj" role="3clF47">
                                  <node concept="3clFbF" id="uP0FLzNmBk" role="3cqZAp">
                                    <node concept="3clFbT" id="uP0FLzNmBl" role="3clFbG">
                                      <property role="3clFbU" value="true" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFb_" id="uP0FLzNmBm" role="jymVt">
                                <property role="TrG5h" value="execute" />
                                <node concept="3Tm1VV" id="uP0FLzNmBn" role="1B3o_S" />
                                <node concept="3cqZAl" id="uP0FLzNmBo" role="3clF45" />
                                <node concept="37vLTG" id="uP0FLzNmBp" role="3clF46">
                                  <property role="TrG5h" value="context" />
                                  <node concept="3uibUv" id="uP0FLzNmBq" role="1tU5fm">
                                    <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                                  </node>
                                </node>
                                <node concept="3clFbS" id="uP0FLzNmBr" role="3clF47">
                                  <node concept="3clFbF" id="uP0FLzNmBs" role="3cqZAp">
                                    <node concept="2OqwBi" id="uP0FLzNmBt" role="3clFbG">
                                      <node concept="2OqwBi" id="uP0FLzNmBu" role="2Oq$k0">
                                        <node concept="37vLTw" id="uP0FLzNmBv" role="2Oq$k0">
                                          <ref role="3cqZAo" node="uP0FLzJufU" resolve="node" />
                                        </node>
                                        <node concept="1mfA1w" id="uP0FLzNmBw" role="2OqNvi" />
                                      </node>
                                      <node concept="3YRAZt" id="uP0FLzNmBx" role="2OqNvi" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="uP0FLzMRRn" role="3cqZAp">
                      <node concept="2OqwBi" id="uP0FLzMSqT" role="3clFbG">
                        <node concept="37vLTw" id="uP0FLzMRRl" role="2Oq$k0">
                          <ref role="3cqZAo" node="uP0FLzJyaL" resolve="cell" />
                        </node>
                        <node concept="liA8E" id="uP0FLzMS_8" role="2OqNvi">
                          <ref role="37wK5l" to="f4zo:~EditorCell.setAction(jetbrains.mps.openapi.editor.cells.CellActionType,jetbrains.mps.openapi.editor.cells.CellAction)" resolve="setAction" />
                          <node concept="Rm8GO" id="uP0FLzMTce" role="37wK5m">
                            <ref role="Rm8GQ" to="f4zo:~CellActionType.DELETE" resolve="DELETE" />
                            <ref role="1Px2BO" to="f4zo:~CellActionType" resolve="CellActionType" />
                          </node>
                          <node concept="37vLTw" id="uP0FLzNmBy" role="37wK5m">
                            <ref role="3cqZAo" node="uP0FLzNmAX" resolve="action" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="uP0FLzNnhN" role="3cqZAp">
                      <node concept="2OqwBi" id="uP0FLzNnhO" role="3clFbG">
                        <node concept="37vLTw" id="uP0FLzNnhP" role="2Oq$k0">
                          <ref role="3cqZAo" node="uP0FLzJyaL" resolve="cell" />
                        </node>
                        <node concept="liA8E" id="uP0FLzNnhQ" role="2OqNvi">
                          <ref role="37wK5l" to="f4zo:~EditorCell.setAction(jetbrains.mps.openapi.editor.cells.CellActionType,jetbrains.mps.openapi.editor.cells.CellAction)" resolve="setAction" />
                          <node concept="Rm8GO" id="uP0FLzNnB2" role="37wK5m">
                            <ref role="Rm8GQ" to="f4zo:~CellActionType.BACKSPACE" resolve="BACKSPACE" />
                            <ref role="1Px2BO" to="f4zo:~CellActionType" resolve="CellActionType" />
                          </node>
                          <node concept="37vLTw" id="uP0FLzNnhS" role="37wK5m">
                            <ref role="3cqZAo" node="uP0FLzNmAX" resolve="action" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="22lmx$" id="uP0FLzMM1I" role="3clFbw">
                    <node concept="2OqwBi" id="uP0FLzMPrc" role="3uHU7B">
                      <node concept="2OqwBi" id="uP0FLzMMvP" role="2Oq$k0">
                        <node concept="37vLTw" id="uP0FLzMMgP" role="2Oq$k0">
                          <ref role="3cqZAo" node="uP0FLzJufU" resolve="node" />
                        </node>
                        <node concept="3TrEf2" id="uP0FLzMNSE" role="2OqNvi">
                          <ref role="3Tt5mk" to="xiqq:7DSsXPFKSqX" resolve="value" />
                        </node>
                      </node>
                      <node concept="3w_OXm" id="uP0FLzMRBq" role="2OqNvi" />
                    </node>
                    <node concept="2OqwBi" id="uP0FLzMJwr" role="3uHU7w">
                      <node concept="2OqwBi" id="uP0FLzMFXg" role="2Oq$k0">
                        <node concept="2OqwBi" id="uP0FLzMDns" role="2Oq$k0">
                          <node concept="37vLTw" id="uP0FLzMD9d" role="2Oq$k0">
                            <ref role="3cqZAo" node="uP0FLzJufU" resolve="node" />
                          </node>
                          <node concept="3TrEf2" id="uP0FLzMEH0" role="2OqNvi">
                            <ref role="3Tt5mk" to="xiqq:7DSsXPFKSqX" resolve="value" />
                          </node>
                        </node>
                        <node concept="2yIwOk" id="uP0FLzMHJ$" role="2OqNvi" />
                      </node>
                      <node concept="liA8E" id="uP0FLzMLPz" role="2OqNvi">
                        <ref role="37wK5l" to="c17a:~SAbstractConcept.isAbstract()" resolve="isAbstract" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="2syzu7r3yRw" role="3cqZAp">
                  <node concept="2ShNRf" id="2syzu7r3yZ2" role="3cqZAk">
                    <node concept="1pGfFk" id="2syzu7r3zIo" role="2ShVmc">
                      <ref role="37wK5l" to="vjnt:2syzu7qINCT" resolve="InlineValueController" />
                      <node concept="37vLTw" id="2syzu7r3$dz" role="37wK5m">
                        <ref role="3cqZAo" node="2syzu7r0IID" resolve="context" />
                      </node>
                      <node concept="37vLTw" id="uP0FLzJug1" role="37wK5m">
                        <ref role="3cqZAo" node="uP0FLzJufU" resolve="node" />
                      </node>
                      <node concept="37vLTw" id="2syzu7r47Pf" role="37wK5m">
                        <ref role="3cqZAo" node="2syzu7r0IIF" resolve="extView" />
                      </node>
                      <node concept="10QFUN" id="2syzu7r492N" role="37wK5m">
                        <node concept="3uibUv" id="2syzu7r49s0" role="10QFUM">
                          <ref role="3uigEE" to="vjnt:3IX4BsK5Mi_" resolve="FBInstanceController" />
                        </node>
                        <node concept="37vLTw" id="2syzu7r48CC" role="10QFUP">
                          <ref role="3cqZAo" node="2syzu7r0IIH" resolve="compController" />
                        </node>
                      </node>
                      <node concept="10QFUN" id="uP0FLzKrQC" role="37wK5m">
                        <node concept="3uibUv" id="uP0FLzKtid" role="10QFUM">
                          <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
                        </node>
                        <node concept="37vLTw" id="uP0FLzJD71" role="10QFUP">
                          <ref role="3cqZAo" node="uP0FLzJyaL" resolve="cell" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3Tm1VV" id="2syzu7r0J6M" role="1B3o_S" />
            </node>
            <node concept="3uibUv" id="2syzu7r0IIS" role="2Ghqu4">
              <ref role="3uigEE" to="tphl:2syzu7qIIiU" resolve="InlineValue" />
            </node>
            <node concept="3uibUv" id="2syzu7r0IIU" role="2Ghqu4">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="5jb5jNBOYpL" role="jymVt" />
    <node concept="Wx3nA" id="6oXN8hZZXZ9" role="jymVt">
      <property role="TrG5h" value="COMPONENT_CONTROLLER_FACTORY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="6oXN8hZZWd6" role="1B3o_S" />
      <node concept="3uibUv" id="7PF$iX$hsD_" role="1tU5fm">
        <ref role="3uigEE" to="xxy3:4O0ojQq3isP" resolve="ComponentControllerFactory" />
        <node concept="3uibUv" id="4y$DvIXm48l" role="11_B2D">
          <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
        </node>
        <node concept="3uibUv" id="1iOpS25fsaw" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="2ShNRf" id="6oXN8hZZGqt" role="33vP2m">
        <node concept="YeOm9" id="6oXN8hZZLzu" role="2ShVmc">
          <node concept="1Y3b0j" id="6oXN8hZZLzx" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <ref role="1Y3XeK" to="xxy3:4O0ojQq3isP" resolve="ComponentControllerFactory" />
            <node concept="2tJIrI" id="7PF$iX$hzSf" role="jymVt" />
            <node concept="3clFb_" id="6oXN8hZZGqx" role="jymVt">
              <property role="TrG5h" value="create" />
              <node concept="3Tm1VV" id="6oXN8hZZGqy" role="1B3o_S" />
              <node concept="3uibUv" id="4y$DvIXm6_O" role="3clF45">
                <ref role="3uigEE" to="xxy3:1KCfUoKRRlk" resolve="ComponentController" />
              </node>
              <node concept="37vLTG" id="4O0ojQq3jvs" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="1cTKxMS9NKD" role="1tU5fm">
                  <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                </node>
              </node>
              <node concept="37vLTG" id="4y$DvIVPduo" role="3clF46">
                <property role="TrG5h" value="view" />
                <node concept="3uibUv" id="4y$DvIXm8Hf" role="1tU5fm">
                  <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
                </node>
              </node>
              <node concept="3clFbS" id="6oXN8hZZGqC" role="3clF47">
                <node concept="3clFbJ" id="6oXN8hZZGqD" role="3cqZAp">
                  <node concept="2ZW3vV" id="6oXN8hZZGqE" role="3clFbw">
                    <node concept="3uibUv" id="6LU90BOkRvZ" role="2ZW6by">
                      <ref role="3uigEE" to="rwq3:6LU90BOirFi" resolve="FBInstanceByNode" />
                    </node>
                    <node concept="37vLTw" id="4y$DvIXm9pL" role="2ZW6bz">
                      <ref role="3cqZAo" node="4y$DvIVPduo" resolve="view" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="6oXN8hZZGqH" role="3clFbx">
                    <node concept="3cpWs8" id="6oXN8hZZGqI" role="3cqZAp">
                      <node concept="3cpWsn" id="6oXN8hZZGqJ" role="3cpWs9">
                        <property role="TrG5h" value="fbInstance" />
                        <node concept="3uibUv" id="6LU90BOqtve" role="1tU5fm">
                          <ref role="3uigEE" to="rwq3:6LU90BOirFi" resolve="FBInstanceByNode" />
                        </node>
                        <node concept="10QFUN" id="6oXN8hZZGqL" role="33vP2m">
                          <node concept="3uibUv" id="6LU90BOqsFY" role="10QFUM">
                            <ref role="3uigEE" to="rwq3:6LU90BOirFi" resolve="FBInstanceByNode" />
                          </node>
                          <node concept="37vLTw" id="4y$DvIXm9Qi" role="10QFUP">
                            <ref role="3cqZAo" node="4y$DvIVPduo" resolve="view" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="6oXN8hZZGqO" role="3cqZAp">
                      <node concept="2ShNRf" id="6oXN8hZZGqP" role="3cqZAk">
                        <node concept="1pGfFk" id="6oXN8hZZGqQ" role="2ShVmc">
                          <ref role="37wK5l" to="vjnt:3IX4BsK5Ppr" resolve="FBInstanceController" />
                          <node concept="37vLTw" id="4y$DvIXmdDE" role="37wK5m">
                            <ref role="3cqZAo" node="4O0ojQq3jvs" resolve="context" />
                          </node>
                          <node concept="2OqwBi" id="6oXN8hZZGqS" role="37wK5m">
                            <node concept="37vLTw" id="6oXN8hZZGqT" role="2Oq$k0">
                              <ref role="3cqZAo" node="6oXN8hZZGqJ" resolve="fbInstance" />
                            </node>
                            <node concept="liA8E" id="6oXN8hZZGqU" role="2OqNvi">
                              <ref role="37wK5l" to="rwq3:6LU90BOirGc" resolve="getNode" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="4y$DvIXmf6X" role="37wK5m">
                            <ref role="3cqZAo" node="6oXN8hZZGqJ" resolve="fbInstance" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbJ" id="6tmlia_XDeZ" role="3cqZAp">
                  <node concept="3clFbS" id="6tmlia_XDf1" role="3clFbx">
                    <node concept="3cpWs8" id="6tmlia_XFow" role="3cqZAp">
                      <node concept="3cpWsn" id="6tmlia_XFox" role="3cpWs9">
                        <property role="TrG5h" value="interfaceEndpoint" />
                        <node concept="3uibUv" id="4y$DvIXn3_w" role="1tU5fm">
                          <ref role="3uigEE" to="rwq3:6tmlia_XSFB" resolve="InterfaceEndpointByNode" />
                        </node>
                        <node concept="10QFUN" id="6tmlia_XFoz" role="33vP2m">
                          <node concept="3uibUv" id="4y$DvIXn3VD" role="10QFUM">
                            <ref role="3uigEE" to="rwq3:6tmlia_XSFB" resolve="InterfaceEndpointByNode" />
                          </node>
                          <node concept="37vLTw" id="4y$DvIXn3Lo" role="10QFUP">
                            <ref role="3cqZAo" node="4y$DvIVPduo" resolve="view" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="6tmlia_XFoA" role="3cqZAp">
                      <node concept="2ShNRf" id="6tmlia_XFoB" role="3cqZAk">
                        <node concept="1pGfFk" id="6tmlia_XFoC" role="2ShVmc">
                          <ref role="37wK5l" to="vjnt:6tmlia_TG2n" resolve="InterfaceEndpointController" />
                          <node concept="37vLTw" id="4y$DvIXn47C" role="37wK5m">
                            <ref role="3cqZAo" node="4O0ojQq3jvs" resolve="context" />
                          </node>
                          <node concept="2OqwBi" id="6tmlia_XFoE" role="37wK5m">
                            <node concept="37vLTw" id="4y$DvIXn4Hn" role="2Oq$k0">
                              <ref role="3cqZAo" node="6tmlia_XFox" resolve="interfaceEndpoint" />
                            </node>
                            <node concept="liA8E" id="6tmlia_XFoG" role="2OqNvi">
                              <ref role="37wK5l" to="rwq3:6tmlia_XTsN" resolve="getNode" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="4y$DvIXn5l2" role="37wK5m">
                            <ref role="3cqZAo" node="6tmlia_XFox" resolve="interfaceEndpoint" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2ZW3vV" id="6tmlia_XEAQ" role="3clFbw">
                    <node concept="3uibUv" id="4y$DvIXn3sY" role="2ZW6by">
                      <ref role="3uigEE" to="rwq3:6tmlia_XSFB" resolve="InterfaceEndpointByNode" />
                    </node>
                    <node concept="37vLTw" id="4y$DvIXn3iI" role="2ZW6bz">
                      <ref role="3cqZAo" node="4y$DvIVPduo" resolve="view" />
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="6oXN8hZZGqW" role="3cqZAp">
                  <node concept="10Nm6u" id="6oXN8hZZGqX" role="3cqZAk" />
                </node>
              </node>
              <node concept="2AHcQZ" id="7PF$iX$hyND" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3Tm1VV" id="6oXN8hZZLzy" role="1B3o_S" />
            <node concept="3uibUv" id="4y$DvIXm8AW" role="2Ghqu4">
              <ref role="3uigEE" to="tphl:4O0ojQq0P48" resolve="FBNetworkComponent" />
            </node>
            <node concept="3uibUv" id="1iOpS25frCD" role="2Ghqu4">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQxSNe" role="jymVt" />
    <node concept="2YIFZL" id="1R4IoyQxYca" role="jymVt">
      <property role="TrG5h" value="getCompletion" />
      <node concept="3clFbS" id="1R4IoyQxYcd" role="3clF47">
        <node concept="3cpWs8" id="1R4IoyQy42e" role="3cqZAp">
          <node concept="3cpWsn" id="1R4IoyQy42h" role="3cpWs9">
            <property role="TrG5h" value="node" />
            <node concept="3Tqbb2" id="1R4IoyQy42c" role="1tU5fm">
              <ref role="ehGHo" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
            </node>
            <node concept="2OqwBi" id="1R4IoyQy5WN" role="33vP2m">
              <node concept="37vLTw" id="1R4IoyQy5CK" role="2Oq$k0">
                <ref role="3cqZAo" node="1R4IoyQy1gf" resolve="fbnetwork" />
              </node>
              <node concept="liA8E" id="1R4IoyQzzHv" role="2OqNvi">
                <ref role="37wK5l" to="rwq3:1R4IoyQANQ3" resolve="getNode" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5jb5jNBPC4C" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNBPC4D" role="3cpWs9">
            <property role="TrG5h" value="availableTypes" />
            <node concept="A3Dl8" id="5jb5jNBPC4E" role="1tU5fm">
              <node concept="3Tqbb2" id="5jb5jNBPC4F" role="A3Ik2">
                <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
              </node>
            </node>
            <node concept="10QFUN" id="5jb5jNBPC4G" role="33vP2m">
              <node concept="2OqwBi" id="5jb5jNBPC4H" role="10QFUP">
                <node concept="2OqwBi" id="5jb5jNBPC4I" role="2Oq$k0">
                  <node concept="2YIFZM" id="5jb5jNBPC4J" role="2Oq$k0">
                    <ref role="37wK5l" to="ykok:~ModelConstraints.getReferenceDescriptor(org.jetbrains.mps.openapi.model.SNode,org.jetbrains.mps.openapi.language.SContainmentLink,int,org.jetbrains.mps.openapi.language.SReferenceLink)" resolve="getReferenceDescriptor" />
                    <ref role="1Pybhc" to="ykok:~ModelConstraints" resolve="ModelConstraints" />
                    <node concept="37vLTw" id="1R4IoyQy6vt" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQy42h" resolve="node" />
                    </node>
                    <node concept="359W_D" id="5jb5jNBPC4L" role="37wK5m">
                      <ref role="359W_E" to="xiqq:2lwHqHjRxfO" resolve="IWithFBNetwork" />
                      <ref role="359W_F" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                    </node>
                    <node concept="3cmrfG" id="5jb5jNBPC4M" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                    <node concept="359W_D" id="5jb5jNBPC4N" role="37wK5m">
                      <ref role="359W_E" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                      <ref role="359W_F" to="xiqq:PI_pXYugbv" resolve="type" />
                    </node>
                  </node>
                  <node concept="liA8E" id="5jb5jNBPC4O" role="2OqNvi">
                    <ref role="37wK5l" to="ykok:~ReferenceDescriptor.getScope()" resolve="getScope" />
                  </node>
                </node>
                <node concept="liA8E" id="5jb5jNBPC4P" role="2OqNvi">
                  <ref role="37wK5l" to="35tq:~Scope.getAvailableElements(java.lang.String)" resolve="getAvailableElements" />
                  <node concept="10Nm6u" id="5jb5jNBPC4Q" role="37wK5m" />
                </node>
              </node>
              <node concept="A3Dl8" id="5jb5jNBPC4R" role="10QFUM">
                <node concept="3Tqbb2" id="5jb5jNBPC4S" role="A3Ik2">
                  <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="5jb5jNBRWCZ" role="3cqZAp">
          <node concept="3cpWsn" id="5jb5jNBRWD0" role="3cpWs9">
            <property role="TrG5h" value="res" />
            <node concept="_YKpA" id="5jb5jNBRWCX" role="1tU5fm">
              <node concept="3uibUv" id="5jb5jNBRXMR" role="_ZDj9">
                <ref role="3uigEE" to="hyqd:5jb5jNBOk89" resolve="PositionalCompletionItem" />
              </node>
            </node>
            <node concept="2OqwBi" id="5jb5jNBPC4U" role="33vP2m">
              <node concept="2OqwBi" id="5jb5jNBPC4V" role="2Oq$k0">
                <node concept="37vLTw" id="5jb5jNBPC4W" role="2Oq$k0">
                  <ref role="3cqZAo" node="5jb5jNBPC4D" resolve="availableTypes" />
                </node>
                <node concept="3$u5V9" id="5jb5jNBPC4X" role="2OqNvi">
                  <node concept="1bVj0M" id="5jb5jNBPC4Y" role="23t8la">
                    <node concept="3clFbS" id="5jb5jNBPC4Z" role="1bW5cS">
                      <node concept="3cpWs8" id="5jb5jNBPC50" role="3cqZAp">
                        <node concept="3cpWsn" id="5jb5jNBPC51" role="3cpWs9">
                          <property role="3TUv4t" value="true" />
                          <property role="TrG5h" value="type" />
                          <node concept="3Tqbb2" id="5jb5jNBPC52" role="1tU5fm">
                            <ref role="ehGHo" to="xiqq:3HBlKeoYsiw" resolve="FBTypeDeclaration" />
                          </node>
                          <node concept="37vLTw" id="5jb5jNBPC53" role="33vP2m">
                            <ref role="3cqZAo" node="5jb5jNBPC6f" resolve="it" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="5jb5jNBPC54" role="3cqZAp">
                        <node concept="2ShNRf" id="5jb5jNBPC56" role="3clFbG">
                          <node concept="YeOm9" id="5jb5jNBPC57" role="2ShVmc">
                            <node concept="1Y3b0j" id="5jb5jNBPC58" role="YeSDq">
                              <property role="2bfB8j" value="true" />
                              <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                              <ref role="1Y3XeK" to="hyqd:5jb5jNBOk89" resolve="PositionalCompletionItem" />
                              <node concept="3Tm1VV" id="5jb5jNBPC59" role="1B3o_S" />
                              <node concept="3clFb_" id="5jb5jNBPC5h" role="jymVt">
                                <property role="TrG5h" value="getMatchingText" />
                                <node concept="37vLTG" id="5jb5jNC5AA_" role="3clF46">
                                  <property role="TrG5h" value="pattern" />
                                  <node concept="3uibUv" id="5jb5jNC5BTp" role="1tU5fm">
                                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                  </node>
                                </node>
                                <node concept="3Tm1VV" id="5jb5jNBPC5i" role="1B3o_S" />
                                <node concept="3uibUv" id="5jb5jNBPC5j" role="3clF45">
                                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                </node>
                                <node concept="3clFbS" id="5jb5jNBPC5k" role="3clF47">
                                  <node concept="3clFbF" id="5jb5jNBPC5l" role="3cqZAp">
                                    <node concept="2OqwBi" id="5jb5jNBPC5m" role="3clFbG">
                                      <node concept="37vLTw" id="5jb5jNBPC5n" role="2Oq$k0">
                                        <ref role="3cqZAo" node="5jb5jNBPC51" resolve="type" />
                                      </node>
                                      <node concept="3TrcHB" id="5jb5jNBPC5o" role="2OqNvi">
                                        <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFb_" id="5jb5jNBPC5p" role="jymVt">
                                <property role="TrG5h" value="getDescriptionText" />
                                <node concept="3Tm1VV" id="5jb5jNBPC5q" role="1B3o_S" />
                                <node concept="3uibUv" id="5jb5jNBPC5r" role="3clF45">
                                  <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                </node>
                                <node concept="3clFbS" id="5jb5jNBPC5s" role="3clF47">
                                  <node concept="3clFbF" id="5jb5jNBPC5t" role="3cqZAp">
                                    <node concept="Xl_RD" id="5jb5jNBPC5u" role="3clFbG">
                                      <property role="Xl_RC" value="create FB instance" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFb_" id="5jb5jNBPC5v" role="jymVt">
                                <property role="TrG5h" value="invoke" />
                                <node concept="37vLTG" id="5jb5jNC6ctH" role="3clF46">
                                  <property role="TrG5h" value="pattern" />
                                  <node concept="3uibUv" id="5jb5jNC6dKP" role="1tU5fm">
                                    <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                                  </node>
                                </node>
                                <node concept="37vLTG" id="5jb5jNBPC5w" role="3clF46">
                                  <property role="TrG5h" value="x" />
                                  <node concept="10Oyi0" id="5jb5jNBPC5x" role="1tU5fm" />
                                </node>
                                <node concept="37vLTG" id="5jb5jNBPC5y" role="3clF46">
                                  <property role="TrG5h" value="y" />
                                  <node concept="10Oyi0" id="5jb5jNBPC5z" role="1tU5fm" />
                                </node>
                                <node concept="3Tm1VV" id="5jb5jNBPC5$" role="1B3o_S" />
                                <node concept="3cqZAl" id="5jb5jNBPC5_" role="3clF45" />
                                <node concept="3clFbS" id="5jb5jNBPC5A" role="3clF47">
                                  <node concept="3cpWs8" id="5jb5jNBPC5B" role="3cqZAp">
                                    <node concept="3cpWsn" id="5jb5jNBPC5C" role="3cpWs9">
                                      <property role="TrG5h" value="fb" />
                                      <node concept="3Tqbb2" id="5jb5jNBPC5D" role="1tU5fm">
                                        <ref role="ehGHo" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                                      </node>
                                      <node concept="2OqwBi" id="5jb5jNBPC5E" role="33vP2m">
                                        <node concept="2OqwBi" id="5jb5jNBPC5F" role="2Oq$k0">
                                          <node concept="37vLTw" id="1R4IoyQy7zs" role="2Oq$k0">
                                            <ref role="3cqZAo" node="1R4IoyQy42h" resolve="node" />
                                          </node>
                                          <node concept="3Tsc0h" id="5jb5jNBPC5H" role="2OqNvi">
                                            <ref role="3TtcxE" to="xiqq:PI_pXYus4x" resolve="functionBlocks" />
                                          </node>
                                        </node>
                                        <node concept="2DeJg1" id="5jb5jNBPC5I" role="2OqNvi">
                                          <ref role="1A0vxQ" to="xiqq:PI_pXYugbu" resolve="FunctionBlockInstance" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="5jb5jNBPC5J" role="3cqZAp">
                                    <node concept="37vLTI" id="5jb5jNBPC5K" role="3clFbG">
                                      <node concept="2OqwBi" id="5jb5jNBPC5L" role="37vLTx">
                                        <node concept="37vLTw" id="5jb5jNBPC5M" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5jb5jNBPC51" resolve="type" />
                                        </node>
                                        <node concept="3TrcHB" id="5jb5jNBPC5N" role="2OqNvi">
                                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="5jb5jNBPC5O" role="37vLTJ">
                                        <node concept="37vLTw" id="5jb5jNBPC5P" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5jb5jNBPC5C" resolve="fb" />
                                        </node>
                                        <node concept="3TrcHB" id="5jb5jNBPC5Q" role="2OqNvi">
                                          <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="5jb5jNBPC5R" role="3cqZAp">
                                    <node concept="37vLTI" id="5jb5jNBPC5S" role="3clFbG">
                                      <node concept="37vLTw" id="5jb5jNBPC5T" role="37vLTx">
                                        <ref role="3cqZAo" node="5jb5jNBPC51" resolve="type" />
                                      </node>
                                      <node concept="2OqwBi" id="5jb5jNBPC5U" role="37vLTJ">
                                        <node concept="37vLTw" id="5jb5jNBPC5V" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5jb5jNBPC5C" resolve="fb" />
                                        </node>
                                        <node concept="3TrEf2" id="5jb5jNBPC5W" role="2OqNvi">
                                          <ref role="3Tt5mk" to="xiqq:PI_pXYugbv" resolve="type" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="5jb5jNBPC5X" role="3cqZAp">
                                    <node concept="37vLTI" id="5jb5jNBPC5Y" role="3clFbG">
                                      <node concept="2pJPEk" id="5jb5jNBPC5Z" role="37vLTx">
                                        <node concept="2pJPED" id="5jb5jNBPC60" role="2pJPEn">
                                          <ref role="2pJxaS" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
                                          <node concept="2pJxcG" id="5jb5jNBPC61" role="2pJxcM">
                                            <ref role="2pJxcJ" to="xiqq:5fP$Xwj3irK" resolve="x" />
                                            <node concept="3cpWs3" id="5jb5jNBPC62" role="28ntcv">
                                              <node concept="Xl_RD" id="5jb5jNBPC63" role="3uHU7B">
                                                <property role="Xl_RC" value="" />
                                              </node>
                                              <node concept="37vLTw" id="5jb5jNBPC64" role="3uHU7w">
                                                <ref role="3cqZAo" node="5jb5jNBPC5w" resolve="x" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="2pJxcG" id="5jb5jNBPC65" role="2pJxcM">
                                            <ref role="2pJxcJ" to="xiqq:5fP$Xwj3irM" resolve="y" />
                                            <node concept="3cpWs3" id="5jb5jNBPC66" role="28ntcv">
                                              <node concept="Xl_RD" id="5jb5jNBPC67" role="3uHU7B">
                                                <property role="Xl_RC" value="" />
                                              </node>
                                              <node concept="37vLTw" id="5jb5jNBPC68" role="3uHU7w">
                                                <ref role="3cqZAo" node="5jb5jNBPC5y" resolve="y" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="2OqwBi" id="5jb5jNBPC69" role="37vLTJ">
                                        <node concept="37vLTw" id="5jb5jNBPC6a" role="2Oq$k0">
                                          <ref role="3cqZAo" node="5jb5jNBPC5C" resolve="fb" />
                                        </node>
                                        <node concept="3TrEf2" id="5jb5jNBPC6b" role="2OqNvi">
                                          <ref role="3Tt5mk" to="xiqq:3IX4BsKatOx" resolve="position" />
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
                    <node concept="Rh6nW" id="5jb5jNBPC6f" role="1bW2Oz">
                      <property role="TrG5h" value="it" />
                      <node concept="2jxLKc" id="5jb5jNBPC6g" role="1tU5fm" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="ANE8D" id="5jb5jNBPC6h" role="2OqNvi" />
            </node>
          </node>
          <node concept="15s5l7" id="5jb5jNBScon" role="lGtFl">
            <property role="1eyWvh" value="FLAVOUR_ISSUE_KIND=&quot;typesystem (typesystem)&quot;;" />
          </node>
        </node>
        <node concept="3clFbF" id="5jb5jNBS2g4" role="3cqZAp">
          <node concept="37vLTw" id="5jb5jNBS2g2" role="3clFbG">
            <ref role="3cqZAo" node="5jb5jNBRWD0" resolve="res" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyQxWbU" role="1B3o_S" />
      <node concept="37vLTG" id="1R4IoyQy1gf" role="3clF46">
        <property role="TrG5h" value="fbnetwork" />
        <node concept="3uibUv" id="1R4IoyQF$lW" role="1tU5fm">
          <ref role="3uigEE" to="rwq3:1R4IoyQA3Yn" resolve="FBNetworkByNode" />
        </node>
      </node>
      <node concept="3uibUv" id="5jb5jNBPC4$" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="5jb5jNBPC4_" role="11_B2D">
          <ref role="3uigEE" to="hyqd:5jb5jNBOk89" resolve="PositionalCompletionItem" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="7oJsd9wVHpr" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="1R4IoyQHXu5">
    <property role="TrG5h" value="ECCEditors" />
    <property role="3GE5qa" value="fbtype.basic" />
    <node concept="2tJIrI" id="1R4IoyQHXuS" role="jymVt" />
    <node concept="2tJIrI" id="1R4IoyQIiMR" role="jymVt" />
    <node concept="2YIFZL" id="1R4IoyQIIIZ" role="jymVt">
      <property role="TrG5h" value="createEccEditor" />
      <node concept="3clFbS" id="1R4IoyQIIJ1" role="3clF47">
        <node concept="SfApY" id="1R4IoyQIIJ2" role="3cqZAp">
          <node concept="3clFbS" id="1R4IoyQIIJ3" role="SfCbr">
            <node concept="3cpWs8" id="1R4IoyQIIJ4" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIJ5" role="3cpWs9">
                <property role="TrG5h" value="scene" />
                <node concept="3uibUv" id="1R4IoyQIIJ6" role="1tU5fm">
                  <ref role="3uigEE" to="ee2c:7qPnRGFqlIs" resolve="EditorCell_Scene" />
                </node>
                <node concept="2ShNRf" id="1R4IoyQIIJ7" role="33vP2m">
                  <node concept="1pGfFk" id="1R4IoyQIIJ8" role="2ShVmc">
                    <ref role="37wK5l" to="ee2c:7qPnRGFqmUN" resolve="EditorCell_Scene" />
                    <node concept="37vLTw" id="1R4IoyQIIJ9" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIMk" resolve="context" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQIIJa" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIMm" resolve="node" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyQIIJb" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIJc" role="3cpWs9">
                <property role="TrG5h" value="backgroundLayer" />
                <node concept="3uibUv" id="1R4IoyQIIJd" role="1tU5fm">
                  <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
                </node>
                <node concept="2OqwBi" id="1R4IoyQIIJe" role="33vP2m">
                  <node concept="37vLTw" id="1R4IoyQIIJf" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                  </node>
                  <node concept="liA8E" id="1R4IoyQIIJg" role="2OqNvi">
                    <ref role="37wK5l" to="ee2c:4y$DvIYbrxg" resolve="createLayer" />
                    <node concept="2$xPTn" id="1R4IoyQIIJh" role="37wK5m">
                      <property role="2$xPTl" value="0.f" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyQIIJi" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIJj" role="3cpWs9">
                <property role="TrG5h" value="tracesLayer" />
                <node concept="3uibUv" id="1R4IoyQIIJk" role="1tU5fm">
                  <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
                </node>
                <node concept="2OqwBi" id="1R4IoyQIIJl" role="33vP2m">
                  <node concept="37vLTw" id="1R4IoyQIIJm" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                  </node>
                  <node concept="liA8E" id="1R4IoyQIIJn" role="2OqNvi">
                    <ref role="37wK5l" to="ee2c:4y$DvIYbrxg" resolve="createLayer" />
                    <node concept="2$xPTn" id="1R4IoyQIIJo" role="37wK5m">
                      <property role="2$xPTl" value="1.f" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyQIIJp" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIJq" role="3cpWs9">
                <property role="TrG5h" value="componentsLayer" />
                <node concept="3uibUv" id="1R4IoyQIIJr" role="1tU5fm">
                  <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
                </node>
                <node concept="2OqwBi" id="1R4IoyQIIJs" role="33vP2m">
                  <node concept="37vLTw" id="1R4IoyQIIJt" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                  </node>
                  <node concept="liA8E" id="1R4IoyQIIJu" role="2OqNvi">
                    <ref role="37wK5l" to="ee2c:4y$DvIYbrxg" resolve="createLayer" />
                    <node concept="2$xPTn" id="1R4IoyQIIJv" role="37wK5m">
                      <property role="2$xPTl" value="3.f" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyQIIJw" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIJx" role="3cpWs9">
                <property role="TrG5h" value="connectionsLayer" />
                <node concept="3uibUv" id="1R4IoyQIIJy" role="1tU5fm">
                  <ref role="3uigEE" to="3bo0:4y$DvIY3jWa" resolve="Layer" />
                </node>
                <node concept="2OqwBi" id="1R4IoyQIIJz" role="33vP2m">
                  <node concept="37vLTw" id="1R4IoyQIIJ$" role="2Oq$k0">
                    <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                  </node>
                  <node concept="liA8E" id="1R4IoyQIIJ_" role="2OqNvi">
                    <ref role="37wK5l" to="ee2c:4y$DvIYbrxg" resolve="createLayer" />
                    <node concept="2$xPTn" id="1R4IoyQIIJA" role="37wK5m">
                      <property role="2$xPTl" value="2.f" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1R4IoyQIIJB" role="3cqZAp" />
            <node concept="3cpWs8" id="1R4IoyQIIJC" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIJD" role="3cpWs9">
                <property role="TrG5h" value="viewpoint" />
                <node concept="3uibUv" id="1R4IoyQIIJE" role="1tU5fm">
                  <ref role="3uigEE" to="rvgs:1iOpS24$iQB" resolve="ModifiableSceneViewpoint" />
                </node>
                <node concept="2ShNRf" id="1R4IoyQIIJF" role="33vP2m">
                  <node concept="1pGfFk" id="1R4IoyQIIJG" role="2ShVmc">
                    <ref role="37wK5l" to="rvgs:17nGqbJdQpZ" resolve="SceneViewpointByCell" />
                    <node concept="37vLTw" id="1R4IoyQIIJH" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQIIJI" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyQIIJJ" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIJK" role="3cpWs9">
                <property role="TrG5h" value="focus" />
                <node concept="3uibUv" id="1R4IoyQIIJL" role="1tU5fm">
                  <ref role="3uigEE" to="rvgs:4y$DvIXWfQg" resolve="SceneFocusModel" />
                </node>
                <node concept="2ShNRf" id="1R4IoyQIIJM" role="33vP2m">
                  <node concept="HV5vD" id="1R4IoyQIIJN" role="2ShVmc">
                    <ref role="HV5vE" to="rvgs:4y$DvIXWgRV" resolve="DefaultFocusModel" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1R4IoyQIIJO" role="3cqZAp">
              <node concept="2ShNRf" id="1R4IoyQIIJP" role="3clFbG">
                <node concept="1pGfFk" id="1R4IoyQIIJQ" role="2ShVmc">
                  <ref role="37wK5l" to="3bo0:4y$DvIYmY27" resolve="BackgroundFacility" />
                  <node concept="37vLTw" id="1R4IoyQIIJR" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyQIIJS" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQIIJK" resolve="focus" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyQIIJT" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQIIJc" resolve="backgroundLayer" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyQIIJU" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQIIJD" resolve="viewpoint" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1R4IoyQIIJV" role="3cqZAp" />
            <node concept="3cpWs8" id="1R4IoyQIIJW" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIJX" role="3cpWs9">
                <property role="TrG5h" value="componentsSelection" />
                <node concept="3uibUv" id="1R4IoyQIIJY" role="1tU5fm">
                  <ref role="3uigEE" to="rvgs:2XwVnrt199s" resolve="DefaultSelectionModel" />
                  <node concept="3uibUv" id="1R4IoyQIIJZ" role="11_B2D">
                    <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1R4IoyQIIK0" role="33vP2m">
                  <node concept="HV5vD" id="1R4IoyQIIK1" role="2ShVmc">
                    <ref role="HV5vE" to="rvgs:2XwVnrt199s" resolve="DefaultSelectionModel" />
                    <node concept="3uibUv" id="1R4IoyQIIK2" role="HU9BZ">
                      <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyQIIK3" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIK4" role="3cpWs9">
                <property role="TrG5h" value="componentsLayout" />
                <node concept="3uibUv" id="1R4IoyQIIK5" role="1tU5fm">
                  <ref role="3uigEE" to="rvgs:1KCfUoKSK2B" resolve="DefaultLayoutModel" />
                  <node concept="3uibUv" id="1R4IoyQIIK6" role="11_B2D">
                    <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1R4IoyQIIK7" role="33vP2m">
                  <node concept="1pGfFk" id="1R4IoyQIIK8" role="2ShVmc">
                    <ref role="37wK5l" to="rvgs:2JpbWDsR2ER" resolve="DefaultLayoutModel" />
                    <node concept="2OqwBi" id="1R4IoyQIIK9" role="37wK5m">
                      <node concept="37vLTw" id="1R4IoyQIIKa" role="2Oq$k0">
                        <ref role="3cqZAo" node="1R4IoyQIIMk" resolve="context" />
                      </node>
                      <node concept="liA8E" id="1R4IoyQIIKb" role="2OqNvi">
                        <ref role="37wK5l" to="cj4x:~EditorContext.getRepository()" resolve="getRepository" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyQIIKc" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIKd" role="3cpWs9">
                <property role="TrG5h" value="completionProvider" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="1R4IoyQIIKe" role="1tU5fm">
                  <ref role="3uigEE" to="82uw:~Supplier" resolve="Supplier" />
                  <node concept="3uibUv" id="1R4IoyQIIKf" role="11_B2D">
                    <ref role="3uigEE" to="33ny:~List" resolve="List" />
                    <node concept="3uibUv" id="1R4IoyQIIKg" role="11_B2D">
                      <ref role="3uigEE" to="hyqd:5jb5jNBOk89" resolve="PositionalCompletionItem" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1R4IoyQIIKh" role="3cqZAp" />
            <node concept="3cpWs8" id="1R4IoyQIIKi" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIKj" role="3cpWs9">
                <property role="TrG5h" value="ecc" />
                <node concept="3uibUv" id="1R4IoyQJd7d" role="1tU5fm">
                  <ref role="3uigEE" to="4n2q:38k27IREOjP" resolve="ECCViewAdapter" />
                </node>
                <node concept="2ShNRf" id="1R4IoyQJ9ue" role="33vP2m">
                  <node concept="1pGfFk" id="1R4IoyQJaYs" role="2ShVmc">
                    <ref role="37wK5l" to="4n2q:1R4IoyQDKDs" resolve="ECCViewAdapter" />
                    <node concept="2ShNRf" id="1R4IoyQIIKl" role="37wK5m">
                      <node concept="1pGfFk" id="1R4IoyQIIKm" role="2ShVmc">
                        <ref role="37wK5l" to="lv7i:5jb5jNC4z8M" resolve="ECCByNode" />
                        <node concept="37vLTw" id="1R4IoyQIIKn" role="37wK5m">
                          <ref role="3cqZAo" node="1R4IoyQIIMm" resolve="node" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyQIIKo" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIKp" role="3cpWs9">
                <property role="TrG5h" value="componentsFacility" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="1R4IoyQIIKq" role="1tU5fm">
                  <ref role="3uigEE" to="xxy3:3vyG44ANA6n" resolve="ComponentsFacility" />
                  <node concept="3uibUv" id="1R4IoyQIIKr" role="11_B2D">
                    <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                  </node>
                  <node concept="3uibUv" id="1R4IoyQIIKs" role="11_B2D">
                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1R4IoyQIIKt" role="33vP2m">
                  <node concept="1pGfFk" id="1R4IoyQIIKu" role="2ShVmc">
                    <ref role="37wK5l" to="xxy3:3vyG44ANZeI" resolve="ComponentsFacility" />
                    <node concept="37vLTw" id="1R4IoyQIIKv" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQIIKw" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIKj" resolve="ecc" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQIIKx" role="37wK5m">
                      <ref role="3cqZAo" node="5jb5jNCcmQv" resolve="STATE_CONTROLLER_FACTORY" />
                    </node>
                    <node concept="2ShNRf" id="1R4IoyQIIKy" role="37wK5m">
                      <node concept="1pGfFk" id="1R4IoyQIIKz" role="2ShVmc">
                        <ref role="37wK5l" to="4n2q:5jb5jNCfCVN" resolve="ECCSynchronizer" />
                        <node concept="37vLTw" id="1R4IoyQIIK$" role="37wK5m">
                          <ref role="3cqZAo" node="1R4IoyQIIJD" resolve="viewpoint" />
                        </node>
                      </node>
                    </node>
                    <node concept="37vLTw" id="1R4IoyQIIK_" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIK4" resolve="componentsLayout" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQIIKA" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIJX" resolve="componentsSelection" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQIIKB" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIJK" resolve="focus" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQIIKC" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIJq" resolve="componentsLayer" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQIIKD" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIJj" resolve="tracesLayer" />
                    </node>
                    <node concept="3uibUv" id="1R4IoyQIIKE" role="1pMfVU">
                      <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                    </node>
                    <node concept="3uibUv" id="1R4IoyQIIKF" role="1pMfVU">
                      <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1R4IoyQIIKG" role="3cqZAp" />
            <node concept="3clFbF" id="1R4IoyQIIKH" role="3cqZAp">
              <node concept="2OqwBi" id="1R4IoyQIIKI" role="3clFbG">
                <node concept="37vLTw" id="1R4IoyQIIKJ" role="2Oq$k0">
                  <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                </node>
                <node concept="liA8E" id="1R4IoyQIIKK" role="2OqNvi">
                  <ref role="37wK5l" to="ee2c:17nGqbJmuOx" resolve="addCompletionProvider" />
                  <node concept="2ShNRf" id="1R4IoyQIIKL" role="37wK5m">
                    <node concept="1pGfFk" id="1R4IoyQIIKM" role="2ShVmc">
                      <ref role="37wK5l" to="3bo0:5jb5jNBO$52" resolve="CompletionProviderByViewpoint" />
                      <node concept="37vLTw" id="1R4IoyQIIKN" role="37wK5m">
                        <ref role="3cqZAo" node="1R4IoyQIIJD" resolve="viewpoint" />
                      </node>
                      <node concept="1bVj0M" id="1R4IoyQIIKO" role="37wK5m">
                        <node concept="3clFbS" id="1R4IoyQIIKP" role="1bW5cS">
                          <node concept="3clFbF" id="1R4IoyQIIKQ" role="3cqZAp">
                            <node concept="1rXfSq" id="1R4IoyQIIKR" role="3clFbG">
                              <ref role="37wK5l" node="1R4IoyQI9Vb" resolve="getCompletion" />
                              <node concept="37vLTw" id="1R4IoyQIIKS" role="37wK5m">
                                <ref role="3cqZAo" node="1R4IoyQIIMm" resolve="node" />
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
            <node concept="3clFbH" id="1R4IoyQIIKT" role="3cqZAp" />
            <node concept="3cpWs8" id="1R4IoyQIIKU" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIKV" role="3cpWs9">
                <property role="TrG5h" value="portSettings" />
                <node concept="3uibUv" id="1R4IoyQIIKW" role="1tU5fm">
                  <ref role="3uigEE" to="4n2q:38k27IRCmW1" resolve="ECPortSettingProvider" />
                </node>
                <node concept="2YIFZM" id="1R4IoyQIIKX" role="33vP2m">
                  <ref role="1Pybhc" to="4n2q:38k27IRCmW1" resolve="ECPortSettingProvider" />
                  <ref role="37wK5l" to="4n2q:38k27IRCmWn" resolve="create" />
                  <node concept="37vLTw" id="1R4IoyQIIKY" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQIIKp" resolve="componentsFacility" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="1R4IoyQIIKZ" role="3cqZAp">
              <node concept="3cpWsn" id="1R4IoyQIIL0" role="3cpWs9">
                <property role="TrG5h" value="diagramFacility" />
                <node concept="3uibUv" id="1R4IoyQIIL1" role="1tU5fm">
                  <ref role="3uigEE" to="5lkm:4O0ojQpH3gw" resolve="DiagramFacility" />
                  <node concept="3uibUv" id="1R4IoyQIIL2" role="11_B2D">
                    <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                  </node>
                  <node concept="3uibUv" id="1R4IoyQIIL3" role="11_B2D">
                    <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                  </node>
                  <node concept="3uibUv" id="1R4IoyQIIL4" role="11_B2D">
                    <ref role="3uigEE" to="6ehz:5ye4HINz47s" resolve="ECTransition" />
                  </node>
                  <node concept="3uibUv" id="1R4IoyQIIL5" role="11_B2D">
                    <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                  </node>
                </node>
                <node concept="2ShNRf" id="1R4IoyQIIL6" role="33vP2m">
                  <node concept="1pGfFk" id="1R4IoyQIIL7" role="2ShVmc">
                    <ref role="37wK5l" to="5lkm:4O0ojQpHDXN" resolve="DiagramFacility" />
                    <node concept="37vLTw" id="1R4IoyQIIL8" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQIIL9" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIKj" resolve="ecc" />
                    </node>
                    <node concept="37vLTw" id="1R4IoyQIILa" role="37wK5m">
                      <ref role="3cqZAo" node="1R4IoyQIIKV" resolve="portSettings" />
                    </node>
                    <node concept="2ShNRf" id="1R4IoyQIILb" role="37wK5m">
                      <node concept="YeOm9" id="1R4IoyQIILc" role="2ShVmc">
                        <node concept="1Y3b0j" id="1R4IoyQIILd" role="YeSDq">
                          <property role="2bfB8j" value="true" />
                          <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                          <ref role="1Y3XeK" to="5lkm:2syzu7rdoTh" resolve="DiagramComponentSettingProvider" />
                          <node concept="3Tm1VV" id="1R4IoyQIILe" role="1B3o_S" />
                          <node concept="3clFb_" id="1R4IoyQIILf" role="jymVt">
                            <property role="TrG5h" value="getModelForm" />
                            <node concept="3Tm1VV" id="1R4IoyQIILg" role="1B3o_S" />
                            <node concept="3uibUv" id="1R4IoyQIILh" role="3clF45">
                              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                            </node>
                            <node concept="2AHcQZ" id="1R4IoyQIILi" role="2AJF6D">
                              <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                            </node>
                            <node concept="37vLTG" id="1R4IoyQIILj" role="3clF46">
                              <property role="TrG5h" value="component" />
                              <node concept="3uibUv" id="1R4IoyQIILk" role="1tU5fm">
                                <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                              </node>
                              <node concept="2AHcQZ" id="1R4IoyQIILl" role="2AJF6D">
                                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="1R4IoyQIILm" role="3clF47">
                              <node concept="3clFbF" id="1R4IoyQIILn" role="3cqZAp">
                                <node concept="2OqwBi" id="1R4IoyQIILo" role="3clFbG">
                                  <node concept="37vLTw" id="1R4IoyQIILp" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1R4IoyQIIKp" resolve="componentsFacility" />
                                  </node>
                                  <node concept="liA8E" id="1R4IoyQIILq" role="2OqNvi">
                                    <ref role="37wK5l" to="xxy3:1iOpS24Xk6r" resolve="getModelForm" />
                                    <node concept="37vLTw" id="1R4IoyQIILr" role="37wK5m">
                                      <ref role="3cqZAo" node="1R4IoyQIILj" resolve="component" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFb_" id="1R4IoyQIILs" role="jymVt">
                            <property role="TrG5h" value="getTransformedForm" />
                            <node concept="3Tm1VV" id="1R4IoyQIILt" role="1B3o_S" />
                            <node concept="3uibUv" id="1R4IoyQIILu" role="3clF45">
                              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                            </node>
                            <node concept="2AHcQZ" id="1R4IoyQIILv" role="2AJF6D">
                              <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
                            </node>
                            <node concept="37vLTG" id="1R4IoyQIILw" role="3clF46">
                              <property role="TrG5h" value="component" />
                              <node concept="3uibUv" id="1R4IoyQIILx" role="1tU5fm">
                                <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                              </node>
                              <node concept="2AHcQZ" id="1R4IoyQIILy" role="2AJF6D">
                                <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                              </node>
                            </node>
                            <node concept="3clFbS" id="1R4IoyQIILz" role="3clF47">
                              <node concept="3clFbF" id="1R4IoyQIIL$" role="3cqZAp">
                                <node concept="2OqwBi" id="1R4IoyQIIL_" role="3clFbG">
                                  <node concept="37vLTw" id="1R4IoyQIILA" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1R4IoyQIIKp" resolve="componentsFacility" />
                                  </node>
                                  <node concept="liA8E" id="1R4IoyQIILB" role="2OqNvi">
                                    <ref role="37wK5l" to="xxy3:1iOpS24XIhe" resolve="getTransformedForm" />
                                    <node concept="37vLTw" id="1R4IoyQIILC" role="37wK5m">
                                      <ref role="3cqZAo" node="1R4IoyQIILw" resolve="component" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3uibUv" id="1R4IoyQIILD" role="2Ghqu4">
                            <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                          </node>
                          <node concept="3uibUv" id="1R4IoyQIILE" role="2Ghqu4">
                            <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3uibUv" id="1R4IoyQIILF" role="1pMfVU">
                      <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                    </node>
                    <node concept="3uibUv" id="1R4IoyQIILG" role="1pMfVU">
                      <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                    </node>
                    <node concept="3uibUv" id="1R4IoyQIILH" role="1pMfVU">
                      <ref role="3uigEE" to="6ehz:5ye4HINz47s" resolve="ECTransition" />
                    </node>
                    <node concept="3uibUv" id="1R4IoyQIILI" role="1pMfVU">
                      <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="1R4IoyQIILJ" role="3cqZAp">
              <node concept="2ShNRf" id="1R4IoyQIILK" role="3clFbG">
                <node concept="1pGfFk" id="1R4IoyQIILL" role="2ShVmc">
                  <ref role="37wK5l" to="5lkm:2JpbWDsR2ER" resolve="ConnectionsFacility" />
                  <node concept="37vLTw" id="1R4IoyQIILM" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyQIILN" role="37wK5m">
                    <ref role="3cqZAo" node="38k27IRLnsq" resolve="TRANSITION_CONTROLLER_FACTORY" />
                  </node>
                  <node concept="10M0yZ" id="1R4IoyQIILO" role="37wK5m">
                    <ref role="3cqZAo" to="4n2q:38k27IRRUR4" resolve="PATH_FACTORY" />
                    <ref role="1PxDUh" to="4n2q:38k27IRRUQX" resolve="ECTransitionUtils" />
                  </node>
                  <node concept="10M0yZ" id="1R4IoyQIILP" role="37wK5m">
                    <ref role="1PxDUh" to="4n2q:38k27IRRUQX" resolve="ECTransitionUtils" />
                    <ref role="3cqZAo" to="4n2q:38k27IRRUSR" resolve="PATH_PAINTER" />
                  </node>
                  <node concept="2ShNRf" id="1R4IoyQIILQ" role="37wK5m">
                    <node concept="1pGfFk" id="1R4IoyQIILR" role="2ShVmc">
                      <ref role="37wK5l" to="4n2q:38k27IRQ3Jd" resolve="ECTransitionPathSyncronizer" />
                      <node concept="37vLTw" id="1R4IoyQIILS" role="37wK5m">
                        <ref role="3cqZAo" node="1R4IoyQIIJD" resolve="viewpoint" />
                      </node>
                    </node>
                  </node>
                  <node concept="37vLTw" id="1R4IoyQIILT" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQIIK4" resolve="componentsLayout" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyQIILU" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQIIJX" resolve="componentsSelection" />
                  </node>
                  <node concept="2OqwBi" id="1R4IoyQIILV" role="37wK5m">
                    <node concept="37vLTw" id="1R4IoyQIILW" role="2Oq$k0">
                      <ref role="3cqZAo" node="1R4IoyQIIL0" resolve="diagramFacility" />
                    </node>
                    <node concept="liA8E" id="1R4IoyQIILX" role="2OqNvi">
                      <ref role="37wK5l" to="5lkm:4y$DvIX$zw5" resolve="getDiagramController" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="1R4IoyQIILY" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQIIJx" resolve="connectionsLayer" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyQIILZ" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQIIJj" resolve="tracesLayer" />
                  </node>
                  <node concept="37vLTw" id="1R4IoyQIIM0" role="37wK5m">
                    <ref role="3cqZAo" node="1R4IoyQIIJK" resolve="focus" />
                  </node>
                  <node concept="3uibUv" id="1R4IoyQIIM1" role="1pMfVU">
                    <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                  </node>
                  <node concept="3uibUv" id="1R4IoyQIIM2" role="1pMfVU">
                    <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                  </node>
                  <node concept="3uibUv" id="1R4IoyQIIM3" role="1pMfVU">
                    <ref role="3uigEE" to="6ehz:5ye4HINz47s" resolve="ECTransition" />
                  </node>
                  <node concept="3uibUv" id="1R4IoyQIIM4" role="1pMfVU">
                    <ref role="3uigEE" to="4n2q:38k27IRy1n0" resolve="ECTransitionCursor" />
                  </node>
                  <node concept="3uibUv" id="1R4IoyQIIM5" role="1pMfVU">
                    <ref role="3uigEE" to="4n2q:38k27IRy0tz" resolve="ECTransitionPath" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="1R4IoyQIIM6" role="3cqZAp" />
            <node concept="3cpWs6" id="1R4IoyQIIM7" role="3cqZAp">
              <node concept="37vLTw" id="1R4IoyQIIM8" role="3cqZAk">
                <ref role="3cqZAo" node="1R4IoyQIIJ5" resolve="scene" />
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="1R4IoyQIIM9" role="TEbGg">
            <node concept="3cpWsn" id="1R4IoyQIIMa" role="TDEfY">
              <property role="TrG5h" value="e" />
              <node concept="3uibUv" id="1R4IoyQIIMb" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~RuntimeException" resolve="RuntimeException" />
              </node>
            </node>
            <node concept="3clFbS" id="1R4IoyQIIMc" role="TDEfX">
              <node concept="2xdQw9" id="1R4IoyQIIMd" role="3cqZAp">
                <property role="2xdLsb" value="gZ5fh_4/error" />
                <node concept="Xl_RD" id="1R4IoyQIIMe" role="9lYJi">
                  <property role="Xl_RC" value="Error during cell creation" />
                </node>
                <node concept="37vLTw" id="1R4IoyQIIMf" role="9lYJj">
                  <ref role="3cqZAo" node="1R4IoyQIIMa" resolve="e" />
                </node>
              </node>
              <node concept="YS8fn" id="1R4IoyQIIMg" role="3cqZAp">
                <node concept="37vLTw" id="1R4IoyQIIMh" role="YScLw">
                  <ref role="3cqZAo" node="1R4IoyQIIMa" resolve="e" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="1R4IoyQIIMj" role="3clF45">
        <ref role="3uigEE" to="g51k:~EditorCell" resolve="EditorCell" />
      </node>
      <node concept="37vLTG" id="1R4IoyQIIMk" role="3clF46">
        <property role="TrG5h" value="context" />
        <node concept="3uibUv" id="1R4IoyQIIMl" role="1tU5fm">
          <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
        </node>
      </node>
      <node concept="37vLTG" id="1R4IoyQIIMm" role="3clF46">
        <property role="TrG5h" value="node" />
        <node concept="3Tqbb2" id="1R4IoyQIIMn" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
        </node>
      </node>
      <node concept="3Tm1VV" id="1R4IoyQIIMi" role="1B3o_S" />
    </node>
    <node concept="Wx3nA" id="5jb5jNCcmQv" role="jymVt">
      <property role="TrG5h" value="STATE_CONTROLLER_FACTORY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="5jb5jNCcmQw" role="1B3o_S" />
      <node concept="3uibUv" id="5jb5jNCcmQx" role="1tU5fm">
        <ref role="3uigEE" to="xxy3:4O0ojQq3isP" resolve="ComponentControllerFactory" />
        <node concept="3uibUv" id="5jb5jNCcoas" role="11_B2D">
          <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
        </node>
        <node concept="3uibUv" id="5jb5jNCcmQz" role="11_B2D">
          <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
        </node>
      </node>
      <node concept="2ShNRf" id="5jb5jNCcmQ$" role="33vP2m">
        <node concept="YeOm9" id="5jb5jNCcmQ_" role="2ShVmc">
          <node concept="1Y3b0j" id="5jb5jNCcmQA" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="xxy3:4O0ojQq3isP" resolve="ComponentControllerFactory" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="2tJIrI" id="5jb5jNCcmQB" role="jymVt" />
            <node concept="3clFb_" id="5jb5jNCcmQC" role="jymVt">
              <property role="TrG5h" value="create" />
              <node concept="3Tm1VV" id="5jb5jNCcmQD" role="1B3o_S" />
              <node concept="3uibUv" id="5jb5jNCcmQE" role="3clF45">
                <ref role="3uigEE" to="xxy3:1KCfUoKRRlk" resolve="ComponentController" />
              </node>
              <node concept="37vLTG" id="5jb5jNCcmQF" role="3clF46">
                <property role="TrG5h" value="context" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="1cTKxMS9IZ7" role="1tU5fm">
                  <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                </node>
              </node>
              <node concept="37vLTG" id="5jb5jNCcmQH" role="3clF46">
                <property role="TrG5h" value="state" />
                <node concept="3uibUv" id="5jb5jNCcp2X" role="1tU5fm">
                  <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
                </node>
              </node>
              <node concept="3clFbS" id="5jb5jNCcmQJ" role="3clF47">
                <node concept="3clFbJ" id="5jb5jNCcmQK" role="3cqZAp">
                  <node concept="2ZW3vV" id="5jb5jNCcmQL" role="3clFbw">
                    <node concept="3uibUv" id="5jb5jNCcq9Y" role="2ZW6by">
                      <ref role="3uigEE" to="lv7i:5jb5jNC4nmA" resolve="ECStateByNode" />
                    </node>
                    <node concept="37vLTw" id="5jb5jNCcmQN" role="2ZW6bz">
                      <ref role="3cqZAo" node="5jb5jNCcmQH" resolve="state" />
                    </node>
                  </node>
                  <node concept="3clFbS" id="5jb5jNCcmQO" role="3clFbx">
                    <node concept="3cpWs8" id="5jb5jNCczZP" role="3cqZAp">
                      <node concept="3cpWsn" id="5jb5jNCczZS" role="3cpWs9">
                        <property role="TrG5h" value="stateNode" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3Tqbb2" id="5jb5jNCczZN" role="1tU5fm">
                          <ref role="ehGHo" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
                        </node>
                        <node concept="2OqwBi" id="5jb5jNCcAzg" role="33vP2m">
                          <node concept="1eOMI4" id="5jb5jNCcAbs" role="2Oq$k0">
                            <node concept="10QFUN" id="5jb5jNCc$Zr" role="1eOMHV">
                              <node concept="37vLTw" id="5jb5jNCcBxl" role="10QFUP">
                                <ref role="3cqZAo" node="5jb5jNCcmQH" resolve="state" />
                              </node>
                              <node concept="3uibUv" id="5jb5jNCc_yp" role="10QFUM">
                                <ref role="3uigEE" to="lv7i:5jb5jNC4nmA" resolve="ECStateByNode" />
                              </node>
                            </node>
                          </node>
                          <node concept="liA8E" id="5jb5jNCcAZq" role="2OqNvi">
                            <ref role="37wK5l" to="lv7i:5jb5jNC4nGo" resolve="getNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs8" id="3Sv$YXY1ycw" role="3cqZAp">
                      <node concept="3cpWsn" id="3Sv$YXY1ycu" role="3cpWs9">
                        <property role="3TUv4t" value="true" />
                        <property role="TrG5h" value="cell" />
                        <node concept="3uibUv" id="3Sv$YXY1JxA" role="1tU5fm">
                          <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
                        </node>
                        <node concept="10QFUN" id="3Sv$YXY1KP1" role="33vP2m">
                          <node concept="3uibUv" id="3Sv$YXY1Lk_" role="10QFUM">
                            <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
                          </node>
                          <node concept="2OqwBi" id="3Sv$YXY1$yt" role="10QFUP">
                            <node concept="37vLTw" id="3Sv$YXY1$jY" role="2Oq$k0">
                              <ref role="3cqZAo" node="5jb5jNCcmQF" resolve="context" />
                            </node>
                            <node concept="2CJim2" id="3Sv$YXY1AKr" role="2OqNvi">
                              <node concept="2CJsh3" id="3Sv$YXY1AKv" role="2CJshi">
                                <node concept="3EZMnI" id="5jb5jNCcFOG" role="2wV5jI">
                                  <node concept="3F0A7n" id="5jb5jNCcFPJ" role="3EZMnx">
                                    <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
                                    <node concept="Veino" id="2RGdDgA14hP" role="3F10Kt">
                                      <property role="Vb096" value="hGRnIZc/lightBlue" />
                                    </node>
                                    <node concept="VPXOz" id="2RGdDg_RZLh" role="3F10Kt">
                                      <property role="VOm3f" value="true" />
                                    </node>
                                    <node concept="15ARfc" id="2RGdDg_XxcV" role="3F10Kt">
                                      <property role="3$6WeP" value="0" />
                                    </node>
                                    <node concept="3$7fVu" id="2RGdDg_THkW" role="3F10Kt">
                                      <property role="3$6WeP" value="0" />
                                    </node>
                                    <node concept="3$7jql" id="2RGdDg_THpJ" role="3F10Kt">
                                      <property role="3$6WeP" value="0" />
                                    </node>
                                  </node>
                                  <node concept="3F2HdR" id="5jb5jNCcG5$" role="3EZMnx">
                                    <ref role="1NtTu8" to="xiqq:3HBlKeoZ0VN" resolve="actions" />
                                    <node concept="2EHx9g" id="5jb5jNCcG6B" role="2czzBx" />
                                  </node>
                                  <node concept="2iRfu4" id="5jb5jNCcG3A" role="2iSdaV" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="5jb5jNCcCuI" role="2CJshu">
                                <ref role="3cqZAo" node="5jb5jNCczZS" resolve="stateNode" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbF" id="2RGdDg_ZfLQ" role="3cqZAp">
                      <node concept="2OqwBi" id="2RGdDg_Zh81" role="3clFbG">
                        <node concept="37vLTw" id="3Sv$YXY1DlH" role="2Oq$k0">
                          <ref role="3cqZAo" node="3Sv$YXY1ycu" resolve="cell" />
                        </node>
                        <node concept="liA8E" id="2RGdDg_ZleD" role="2OqNvi">
                          <ref role="37wK5l" to="g51k:~EditorCell_Basic.setBig(boolean)" resolve="setBig" />
                          <node concept="3clFbT" id="2RGdDg_ZlBz" role="37wK5m">
                            <property role="3clFbU" value="true" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3cpWs6" id="5jb5jNCcmQV" role="3cqZAp">
                      <node concept="2ShNRf" id="5jb5jNCcmQW" role="3cqZAk">
                        <node concept="1pGfFk" id="2RGdDg_Ir47" role="2ShVmc">
                          <ref role="37wK5l" to="4n2q:2RGdDg_HVx4" resolve="ECStateController" />
                          <node concept="2ShNRf" id="2RGdDg_ItXm" role="37wK5m">
                            <node concept="YeOm9" id="2RGdDg_ItXn" role="2ShVmc">
                              <node concept="1Y3b0j" id="2RGdDg_ItXo" role="YeSDq">
                                <property role="2bfB8j" value="true" />
                                <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                                <ref role="1Y3XeK" to="4n2q:5jb5jNC3ozP" resolve="ECStateCellHandle" />
                                <node concept="3Tm1VV" id="2RGdDg_ItXp" role="1B3o_S" />
                                <node concept="3clFb_" id="2RGdDg_ItXq" role="jymVt">
                                  <property role="TrG5h" value="getCell" />
                                  <node concept="3Tm1VV" id="2RGdDg_ItXr" role="1B3o_S" />
                                  <node concept="3uibUv" id="2RGdDg_ItXs" role="3clF45">
                                    <ref role="3uigEE" to="g51k:~EditorCell_Basic" resolve="EditorCell_Basic" />
                                  </node>
                                  <node concept="3clFbS" id="2RGdDg_ItXt" role="3clF47">
                                    <node concept="3clFbF" id="2RGdDg_ItXu" role="3cqZAp">
                                      <node concept="37vLTw" id="2RGdDg_ItXv" role="3clFbG">
                                        <ref role="3cqZAo" node="3Sv$YXY1ycu" resolve="cell" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFb_" id="2RGdDg_ItXw" role="jymVt">
                                  <property role="TrG5h" value="getBounds" />
                                  <node concept="3Tm1VV" id="2RGdDg_ItXx" role="1B3o_S" />
                                  <node concept="3uibUv" id="2RGdDg_ItXy" role="3clF45">
                                    <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
                                  </node>
                                  <node concept="37vLTG" id="2RGdDg_ItXz" role="3clF46">
                                    <property role="TrG5h" value="position" />
                                    <node concept="3uibUv" id="2RGdDg_ItX$" role="1tU5fm">
                                      <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                                    </node>
                                  </node>
                                  <node concept="3clFbS" id="2RGdDg_ItX_" role="3clF47">
                                    <node concept="3cpWs8" id="2RGdDg_ItXA" role="3cqZAp">
                                      <node concept="3cpWsn" id="2RGdDg_ItXB" role="3cpWs9">
                                        <property role="TrG5h" value="nameCell" />
                                        <node concept="3uibUv" id="2RGdDg_ItXC" role="1tU5fm">
                                          <ref role="3uigEE" to="f4zo:~EditorCell" resolve="EditorCell" />
                                        </node>
                                        <node concept="2OqwBi" id="2RGdDg_VOS8" role="33vP2m">
                                          <node concept="37vLTw" id="2RGdDg_VOSc" role="2Oq$k0">
                                            <ref role="3cqZAo" node="3Sv$YXY1ycu" resolve="cell" />
                                          </node>
                                          <node concept="liA8E" id="2RGdDg_VOSe" role="2OqNvi">
                                            <ref role="37wK5l" to="g51k:~EditorCell_Collection.firstCell()" resolve="firstCell" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3cpWs8" id="2RGdDg_ItXG" role="3cqZAp">
                                      <node concept="3cpWsn" id="2RGdDg_ItXH" role="3cpWs9">
                                        <property role="TrG5h" value="width" />
                                        <node concept="10Oyi0" id="2RGdDg_ItXI" role="1tU5fm" />
                                        <node concept="2OqwBi" id="2RGdDg_ItXJ" role="33vP2m">
                                          <node concept="37vLTw" id="2RGdDg_ItXK" role="2Oq$k0">
                                            <ref role="3cqZAo" node="2RGdDg_ItXB" resolve="nameCell" />
                                          </node>
                                          <node concept="liA8E" id="2RGdDg_ItXL" role="2OqNvi">
                                            <ref role="37wK5l" to="f4zo:~EditorCell.getWidth()" resolve="getWidth" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3cpWs8" id="2RGdDg_ItXM" role="3cqZAp">
                                      <node concept="3cpWsn" id="2RGdDg_ItXN" role="3cpWs9">
                                        <property role="TrG5h" value="height" />
                                        <node concept="10Oyi0" id="2RGdDg_ItXO" role="1tU5fm" />
                                        <node concept="2OqwBi" id="2RGdDg_ItXP" role="33vP2m">
                                          <node concept="37vLTw" id="2RGdDg_ItXQ" role="2Oq$k0">
                                            <ref role="3cqZAo" node="2RGdDg_ItXB" resolve="nameCell" />
                                          </node>
                                          <node concept="liA8E" id="2RGdDg_ItXR" role="2OqNvi">
                                            <ref role="37wK5l" to="f4zo:~EditorCell.getHeight()" resolve="getHeight" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbF" id="2RGdDg_ItXS" role="3cqZAp">
                                      <node concept="2ShNRf" id="2RGdDg_ItXT" role="3clFbG">
                                        <node concept="1pGfFk" id="2RGdDg_ItXU" role="2ShVmc">
                                          <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                                          <node concept="3cpWsd" id="2RGdDg_ItXV" role="37wK5m">
                                            <node concept="2OqwBi" id="2RGdDg_ItXW" role="3uHU7B">
                                              <node concept="37vLTw" id="2RGdDg_ItXX" role="2Oq$k0">
                                                <ref role="3cqZAo" node="2RGdDg_ItXz" resolve="position" />
                                              </node>
                                              <node concept="2OwXpG" id="2RGdDg_ItXY" role="2OqNvi">
                                                <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                              </node>
                                            </node>
                                            <node concept="FJ1c_" id="2RGdDg_ItXZ" role="3uHU7w">
                                              <node concept="3cmrfG" id="2RGdDg_ItY0" role="3uHU7w">
                                                <property role="3cmrfH" value="2" />
                                              </node>
                                              <node concept="37vLTw" id="2RGdDg_ItY1" role="3uHU7B">
                                                <ref role="3cqZAo" node="2RGdDg_ItXH" resolve="width" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="3cpWsd" id="2RGdDg_ItY2" role="37wK5m">
                                            <node concept="FJ1c_" id="2RGdDg_ItY3" role="3uHU7w">
                                              <node concept="3cmrfG" id="2RGdDg_ItY4" role="3uHU7w">
                                                <property role="3cmrfH" value="2" />
                                              </node>
                                              <node concept="37vLTw" id="2RGdDg_ItY5" role="3uHU7B">
                                                <ref role="3cqZAo" node="2RGdDg_ItXN" resolve="height" />
                                              </node>
                                            </node>
                                            <node concept="2OqwBi" id="2RGdDg_ItY6" role="3uHU7B">
                                              <node concept="37vLTw" id="2RGdDg_ItY7" role="2Oq$k0">
                                                <ref role="3cqZAo" node="2RGdDg_ItXz" resolve="position" />
                                              </node>
                                              <node concept="2OwXpG" id="2RGdDg_ItY8" role="2OqNvi">
                                                <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                                              </node>
                                            </node>
                                          </node>
                                          <node concept="37vLTw" id="2RGdDg_ItY9" role="37wK5m">
                                            <ref role="3cqZAo" node="2RGdDg_ItXH" resolve="width" />
                                          </node>
                                          <node concept="37vLTw" id="2RGdDg_ItYa" role="37wK5m">
                                            <ref role="3cqZAo" node="2RGdDg_ItXN" resolve="height" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFb_" id="2RGdDg_ItYb" role="jymVt">
                                  <property role="TrG5h" value="getStateTextStyle" />
                                  <node concept="3Tm1VV" id="2RGdDg_ItYc" role="1B3o_S" />
                                  <node concept="3uibUv" id="2RGdDg_ItYd" role="3clF45">
                                    <ref role="3uigEE" to="hox0:~Style" resolve="Style" />
                                  </node>
                                  <node concept="3clFbS" id="2RGdDg_ItYe" role="3clF47">
                                    <node concept="3clFbF" id="2RGdDg_ItYf" role="3cqZAp">
                                      <node concept="2OqwBi" id="2RGdDg_ItYg" role="3clFbG">
                                        <node concept="2OqwBi" id="2RGdDg_VJ$7" role="2Oq$k0">
                                          <node concept="37vLTw" id="2RGdDg_ItYi" role="2Oq$k0">
                                            <ref role="3cqZAo" node="3Sv$YXY1ycu" resolve="cell" />
                                          </node>
                                          <node concept="liA8E" id="2RGdDg_VOyb" role="2OqNvi">
                                            <ref role="37wK5l" to="g51k:~EditorCell_Collection.firstCell()" resolve="firstCell" />
                                          </node>
                                        </node>
                                        <node concept="liA8E" id="2RGdDg_ItYk" role="2OqNvi">
                                          <ref role="37wK5l" to="f4zo:~EditorCell.getStyle()" resolve="getStyle" />
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
                <node concept="3cpWs6" id="5jb5jNCcmRm" role="3cqZAp">
                  <node concept="10Nm6u" id="5jb5jNCcmRn" role="3cqZAk" />
                </node>
              </node>
              <node concept="2AHcQZ" id="5jb5jNCcmRo" role="2AJF6D">
                <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
              </node>
            </node>
            <node concept="3Tm1VV" id="5jb5jNCcmRp" role="1B3o_S" />
            <node concept="3uibUv" id="5jb5jNCcoB0" role="2Ghqu4">
              <ref role="3uigEE" to="6ehz:5ye4HINyZCA" resolve="ECState" />
            </node>
            <node concept="3uibUv" id="5jb5jNCcmRr" role="2Ghqu4">
              <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="38k27IRLgdd" role="jymVt" />
    <node concept="Wx3nA" id="38k27IRLnsq" role="jymVt">
      <property role="TrG5h" value="TRANSITION_CONTROLLER_FACTORY" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm1VV" id="38k27IRLiA2" role="1B3o_S" />
      <node concept="3uibUv" id="38k27IRLlxv" role="1tU5fm">
        <ref role="3uigEE" to="5lkm:4y$DvIW4oYS" resolve="ConnectionControllerFactory" />
        <node concept="3uibUv" id="38k27IRLlTL" role="11_B2D">
          <ref role="3uigEE" to="6ehz:5ye4HINz47s" resolve="ECTransition" />
        </node>
        <node concept="3uibUv" id="38k27IRLmEM" role="11_B2D">
          <ref role="3uigEE" to="4n2q:38k27IRy1n0" resolve="ECTransitionCursor" />
        </node>
        <node concept="3uibUv" id="38k27IRLmPE" role="11_B2D">
          <ref role="3uigEE" to="4n2q:38k27IRy0tz" resolve="ECTransitionPath" />
        </node>
      </node>
      <node concept="2ShNRf" id="38k27IRLr93" role="33vP2m">
        <node concept="YeOm9" id="38k27IRLtKt" role="2ShVmc">
          <node concept="1Y3b0j" id="38k27IRLtKw" role="YeSDq">
            <property role="2bfB8j" value="true" />
            <ref role="1Y3XeK" to="5lkm:4y$DvIW4oYS" resolve="ConnectionControllerFactory" />
            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
            <node concept="3Tm1VV" id="38k27IRLtKx" role="1B3o_S" />
            <node concept="3clFb_" id="38k27IRLtKz" role="jymVt">
              <property role="TrG5h" value="create" />
              <node concept="3Tm1VV" id="38k27IRLtK_" role="1B3o_S" />
              <node concept="3uibUv" id="38k27IRLtKA" role="3clF45">
                <ref role="3uigEE" to="5lkm:7sG$k3BBij3" resolve="ConnectionController" />
                <node concept="3uibUv" id="38k27IRLtKQ" role="11_B2D">
                  <ref role="3uigEE" to="4n2q:38k27IRy1n0" resolve="ECTransitionCursor" />
                </node>
                <node concept="3uibUv" id="38k27IRLtKS" role="11_B2D">
                  <ref role="3uigEE" to="4n2q:38k27IRy0tz" resolve="ECTransitionPath" />
                </node>
              </node>
              <node concept="37vLTG" id="38k27IRLtKD" role="3clF46">
                <property role="TrG5h" value="context" />
                <node concept="3uibUv" id="38k27IRLtKE" role="1tU5fm">
                  <ref role="3uigEE" to="cj4x:~EditorContext" resolve="EditorContext" />
                </node>
              </node>
              <node concept="37vLTG" id="38k27IRLtKF" role="3clF46">
                <property role="TrG5h" value="transition" />
                <node concept="3uibUv" id="38k27IRLtKO" role="1tU5fm">
                  <ref role="3uigEE" to="6ehz:5ye4HINz47s" resolve="ECTransition" />
                </node>
              </node>
              <node concept="3clFbS" id="38k27IRLtKH" role="3clF47">
                <node concept="3cpWs8" id="38k27IRLuvF" role="3cqZAp">
                  <node concept="3cpWsn" id="38k27IRLuvG" role="3cpWs9">
                    <property role="TrG5h" value="transitionNode" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3Tqbb2" id="38k27IRLuvH" role="1tU5fm">
                      <ref role="ehGHo" to="xiqq:3HBlKeoZ0Up" resolve="StateTransition" />
                    </node>
                    <node concept="2OqwBi" id="38k27IRLuvI" role="33vP2m">
                      <node concept="1eOMI4" id="38k27IRLuvJ" role="2Oq$k0">
                        <node concept="10QFUN" id="38k27IRLuvK" role="1eOMHV">
                          <node concept="37vLTw" id="38k27IRLvev" role="10QFUP">
                            <ref role="3cqZAo" node="38k27IRLtKF" resolve="transition" />
                          </node>
                          <node concept="3uibUv" id="38k27IRLvzx" role="10QFUM">
                            <ref role="3uigEE" to="lv7i:38k27IRGoEB" resolve="ECTransitionByNode" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="38k27IRLuvN" role="2OqNvi">
                        <ref role="37wK5l" to="lv7i:38k27IRGoEU" resolve="getNode" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="38k27IRLw2G" role="3cqZAp">
                  <node concept="3cpWsn" id="38k27IRLw2H" role="3cpWs9">
                    <property role="TrG5h" value="cell" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="38k27IRLw2I" role="1tU5fm">
                      <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
                    </node>
                    <node concept="10QFUN" id="38k27IRLw2J" role="33vP2m">
                      <node concept="3uibUv" id="38k27IRLw2K" role="10QFUM">
                        <ref role="3uigEE" to="g51k:~EditorCell_Collection" resolve="EditorCell_Collection" />
                      </node>
                      <node concept="2OqwBi" id="38k27IRLw2L" role="10QFUP">
                        <node concept="37vLTw" id="38k27IRLw2M" role="2Oq$k0">
                          <ref role="3cqZAo" node="38k27IRLtKD" resolve="context" />
                        </node>
                        <node concept="2CJim2" id="3Sv$YXY1MG8" role="2OqNvi">
                          <node concept="2CJsh3" id="3Sv$YXY1MGc" role="2CJshi">
                            <node concept="3F1sOY" id="3Sv$YXY1NzW" role="2wV5jI">
                              <ref role="1NtTu8" to="xiqq:3HBlKeoZaIs" resolve="condition" />
                            </node>
                          </node>
                          <node concept="37vLTw" id="38k27IRLwJT" role="2CJshu">
                            <ref role="3cqZAo" node="38k27IRLuvG" resolve="transitionNode" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="38k27IRLxFX" role="3cqZAp">
                  <node concept="2OqwBi" id="38k27IRLyrQ" role="3clFbG">
                    <node concept="37vLTw" id="38k27IRLxFV" role="2Oq$k0">
                      <ref role="3cqZAo" node="38k27IRLw2H" resolve="cell" />
                    </node>
                    <node concept="liA8E" id="38k27IRLAy_" role="2OqNvi">
                      <ref role="37wK5l" to="g51k:~EditorCell_Basic.setBig(boolean)" resolve="setBig" />
                      <node concept="3clFbT" id="38k27IRLB5_" role="37wK5m">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="38k27IRLBB7" role="3cqZAp">
                  <node concept="2ShNRf" id="38k27IRLBSa" role="3cqZAk">
                    <node concept="1pGfFk" id="38k27IRLDhY" role="2ShVmc">
                      <ref role="37wK5l" to="4n2q:38k27IRB5VM" resolve="ECTransitionController" />
                      <node concept="2ShNRf" id="38k27IRLDQl" role="37wK5m">
                        <node concept="YeOm9" id="38k27IRLFjl" role="2ShVmc">
                          <node concept="1Y3b0j" id="38k27IRLFjo" role="YeSDq">
                            <property role="2bfB8j" value="true" />
                            <ref role="1Y3XeK" to="4n2q:38k27IRB1QW" resolve="ECTransitionConditionCellHandle" />
                            <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                            <node concept="3Tm1VV" id="38k27IRLFjp" role="1B3o_S" />
                            <node concept="3clFb_" id="38k27IRLFjr" role="jymVt">
                              <property role="TrG5h" value="getCell" />
                              <node concept="3Tm1VV" id="38k27IRLFjt" role="1B3o_S" />
                              <node concept="3uibUv" id="38k27IRLFju" role="3clF45">
                                <ref role="3uigEE" to="g51k:~EditorCell_Basic" resolve="EditorCell_Basic" />
                              </node>
                              <node concept="3clFbS" id="38k27IRLFjv" role="3clF47">
                                <node concept="3clFbF" id="38k27IRLGrp" role="3cqZAp">
                                  <node concept="37vLTw" id="38k27IRLGro" role="3clFbG">
                                    <ref role="3cqZAo" node="38k27IRLw2H" resolve="cell" />
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="3clFb_" id="38k27IRLFjx" role="jymVt">
                              <property role="TrG5h" value="getBounds" />
                              <node concept="3Tm1VV" id="38k27IRLFjz" role="1B3o_S" />
                              <node concept="3uibUv" id="38k27IRLFj$" role="3clF45">
                                <ref role="3uigEE" to="z60i:~Rectangle" resolve="Rectangle" />
                              </node>
                              <node concept="37vLTG" id="38k27IRLFj_" role="3clF46">
                                <property role="TrG5h" value="position" />
                                <node concept="3uibUv" id="38k27IRLFjA" role="1tU5fm">
                                  <ref role="3uigEE" to="z60i:~Point" resolve="Point" />
                                </node>
                              </node>
                              <node concept="3clFbS" id="38k27IRLFjB" role="3clF47">
                                <node concept="3cpWs8" id="38k27IRLGsT" role="3cqZAp">
                                  <node concept="3cpWsn" id="38k27IRLGsU" role="3cpWs9">
                                    <property role="TrG5h" value="width" />
                                    <node concept="10Oyi0" id="38k27IRLGsV" role="1tU5fm" />
                                    <node concept="2OqwBi" id="38k27IRLGsW" role="33vP2m">
                                      <node concept="37vLTw" id="38k27IRLHiE" role="2Oq$k0">
                                        <ref role="3cqZAo" node="38k27IRLw2H" resolve="cell" />
                                      </node>
                                      <node concept="liA8E" id="38k27IRLGsY" role="2OqNvi">
                                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getWidth()" resolve="getWidth" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="38k27IRLGsZ" role="3cqZAp">
                                  <node concept="3cpWsn" id="38k27IRLGt0" role="3cpWs9">
                                    <property role="TrG5h" value="height" />
                                    <node concept="10Oyi0" id="38k27IRLGt1" role="1tU5fm" />
                                    <node concept="2OqwBi" id="38k27IRLGt2" role="33vP2m">
                                      <node concept="37vLTw" id="38k27IRLIt2" role="2Oq$k0">
                                        <ref role="3cqZAo" node="38k27IRLw2H" resolve="cell" />
                                      </node>
                                      <node concept="liA8E" id="38k27IRLGt4" role="2OqNvi">
                                        <ref role="37wK5l" to="g51k:~EditorCell_Basic.getHeight()" resolve="getHeight" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="38k27IRLGt5" role="3cqZAp">
                                  <node concept="2ShNRf" id="38k27IRLGt6" role="3clFbG">
                                    <node concept="1pGfFk" id="38k27IRLGt7" role="2ShVmc">
                                      <ref role="37wK5l" to="z60i:~Rectangle.&lt;init&gt;(int,int,int,int)" resolve="Rectangle" />
                                      <node concept="3cpWsd" id="38k27IRLGt8" role="37wK5m">
                                        <node concept="2OqwBi" id="38k27IRLGt9" role="3uHU7B">
                                          <node concept="37vLTw" id="38k27IRLGta" role="2Oq$k0">
                                            <ref role="3cqZAo" node="38k27IRLFj_" resolve="position" />
                                          </node>
                                          <node concept="2OwXpG" id="38k27IRLGtb" role="2OqNvi">
                                            <ref role="2Oxat5" to="z60i:~Point.x" resolve="x" />
                                          </node>
                                        </node>
                                        <node concept="FJ1c_" id="38k27IRLGtc" role="3uHU7w">
                                          <node concept="3cmrfG" id="38k27IRLGtd" role="3uHU7w">
                                            <property role="3cmrfH" value="2" />
                                          </node>
                                          <node concept="37vLTw" id="38k27IRLGte" role="3uHU7B">
                                            <ref role="3cqZAo" node="38k27IRLGsU" resolve="width" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3cpWsd" id="38k27IRLGtf" role="37wK5m">
                                        <node concept="FJ1c_" id="38k27IRLGtg" role="3uHU7w">
                                          <node concept="3cmrfG" id="38k27IRLGth" role="3uHU7w">
                                            <property role="3cmrfH" value="2" />
                                          </node>
                                          <node concept="37vLTw" id="38k27IRLGti" role="3uHU7B">
                                            <ref role="3cqZAo" node="38k27IRLGt0" resolve="height" />
                                          </node>
                                        </node>
                                        <node concept="2OqwBi" id="38k27IRLGtj" role="3uHU7B">
                                          <node concept="37vLTw" id="38k27IRLGtk" role="2Oq$k0">
                                            <ref role="3cqZAo" node="38k27IRLFj_" resolve="position" />
                                          </node>
                                          <node concept="2OwXpG" id="38k27IRLGtl" role="2OqNvi">
                                            <ref role="2Oxat5" to="z60i:~Point.y" resolve="y" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="37vLTw" id="38k27IRLGtm" role="37wK5m">
                                        <ref role="3cqZAo" node="38k27IRLGsU" resolve="width" />
                                      </node>
                                      <node concept="37vLTw" id="38k27IRLGtn" role="37wK5m">
                                        <ref role="3cqZAo" node="38k27IRLGt0" resolve="height" />
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
            <node concept="3uibUv" id="38k27IRLtKN" role="2Ghqu4">
              <ref role="3uigEE" to="6ehz:5ye4HINz47s" resolve="ECTransition" />
            </node>
            <node concept="3uibUv" id="38k27IRLtKP" role="2Ghqu4">
              <ref role="3uigEE" to="4n2q:38k27IRy1n0" resolve="ECTransitionCursor" />
            </node>
            <node concept="3uibUv" id="38k27IRLtKR" role="2Ghqu4">
              <ref role="3uigEE" to="4n2q:38k27IRy0tz" resolve="ECTransitionPath" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="1R4IoyQHXuU" role="jymVt" />
    <node concept="2YIFZL" id="1R4IoyQI9Vb" role="jymVt">
      <property role="TrG5h" value="getCompletion" />
      <node concept="3clFbS" id="1R4IoyQI9Ve" role="3clF47">
        <node concept="3clFbF" id="5jb5jNC5X8k" role="3cqZAp">
          <node concept="2YIFZM" id="5jb5jNC5Y$O" role="3clFbG">
            <ref role="1Pybhc" to="33ny:~Collections" resolve="Collections" />
            <ref role="37wK5l" to="33ny:~Collections.singletonList(java.lang.Object)" resolve="singletonList" />
            <node concept="1eOMI4" id="5jb5jNC69Of" role="37wK5m">
              <node concept="10QFUN" id="5jb5jNC69Oc" role="1eOMHV">
                <node concept="3uibUv" id="5jb5jNC6aRF" role="10QFUM">
                  <ref role="3uigEE" to="hyqd:5jb5jNBOk89" resolve="PositionalCompletionItem" />
                </node>
                <node concept="2ShNRf" id="5jb5jNC5$86" role="10QFUP">
                  <node concept="YeOm9" id="5jb5jNC5$87" role="2ShVmc">
                    <node concept="1Y3b0j" id="5jb5jNC5$88" role="YeSDq">
                      <property role="2bfB8j" value="true" />
                      <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                      <ref role="1Y3XeK" to="hyqd:5jb5jNBOk89" resolve="PositionalCompletionItem" />
                      <node concept="3Tm1VV" id="5jb5jNC5$89" role="1B3o_S" />
                      <node concept="3clFb_" id="5jb5jNC5$8a" role="jymVt">
                        <property role="TrG5h" value="getMatchingText" />
                        <node concept="3Tm1VV" id="5jb5jNC5$8b" role="1B3o_S" />
                        <node concept="3uibUv" id="5jb5jNC5$8c" role="3clF45">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                        <node concept="3clFbS" id="5jb5jNC5$8d" role="3clF47">
                          <node concept="3clFbF" id="5jb5jNC5$8e" role="3cqZAp">
                            <node concept="37vLTw" id="5jb5jNC60x_" role="3clFbG">
                              <ref role="3cqZAo" node="5jb5jNC5Zyg" resolve="pattern" />
                            </node>
                          </node>
                        </node>
                        <node concept="37vLTG" id="5jb5jNC5Zyg" role="3clF46">
                          <property role="TrG5h" value="pattern" />
                          <node concept="3uibUv" id="5jb5jNC5Zyf" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                        </node>
                      </node>
                      <node concept="3clFb_" id="5jb5jNC5$8i" role="jymVt">
                        <property role="TrG5h" value="getDescriptionText" />
                        <node concept="3Tm1VV" id="5jb5jNC5$8j" role="1B3o_S" />
                        <node concept="3uibUv" id="5jb5jNC5$8k" role="3clF45">
                          <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                        </node>
                        <node concept="3clFbS" id="5jb5jNC5$8l" role="3clF47">
                          <node concept="3clFbF" id="5jb5jNC5$8m" role="3cqZAp">
                            <node concept="Xl_RD" id="5jb5jNC5$8n" role="3clFbG">
                              <property role="Xl_RC" value="create EC state" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFb_" id="5jb5jNC5$8o" role="jymVt">
                        <property role="TrG5h" value="invoke" />
                        <node concept="37vLTG" id="5jb5jNC64Ln" role="3clF46">
                          <property role="TrG5h" value="pattern" />
                          <node concept="3uibUv" id="5jb5jNC65t2" role="1tU5fm">
                            <ref role="3uigEE" to="wyt6:~String" resolve="String" />
                          </node>
                        </node>
                        <node concept="37vLTG" id="5jb5jNC5$8p" role="3clF46">
                          <property role="TrG5h" value="x" />
                          <node concept="10Oyi0" id="5jb5jNC5$8q" role="1tU5fm" />
                        </node>
                        <node concept="37vLTG" id="5jb5jNC5$8r" role="3clF46">
                          <property role="TrG5h" value="y" />
                          <node concept="10Oyi0" id="5jb5jNC5$8s" role="1tU5fm" />
                        </node>
                        <node concept="3Tm1VV" id="5jb5jNC5$8t" role="1B3o_S" />
                        <node concept="3cqZAl" id="5jb5jNC5$8u" role="3clF45" />
                        <node concept="3clFbS" id="5jb5jNC5$8v" role="3clF47">
                          <node concept="3cpWs8" id="5jb5jNC5$8w" role="3cqZAp">
                            <node concept="3cpWsn" id="5jb5jNC5$8x" role="3cpWs9">
                              <property role="TrG5h" value="ecstate" />
                              <node concept="3Tqbb2" id="5jb5jNC5$8y" role="1tU5fm">
                                <ref role="ehGHo" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
                              </node>
                              <node concept="2OqwBi" id="5jb5jNC5$8z" role="33vP2m">
                                <node concept="2OqwBi" id="5jb5jNC5$8$" role="2Oq$k0">
                                  <node concept="37vLTw" id="1R4IoyQIgnD" role="2Oq$k0">
                                    <ref role="3cqZAo" node="1R4IoyQIbNZ" resolve="ecc" />
                                  </node>
                                  <node concept="3Tsc0h" id="5jb5jNC617B" role="2OqNvi">
                                    <ref role="3TtcxE" to="xiqq:3HBlKeoZ0WX" resolve="states" />
                                  </node>
                                </node>
                                <node concept="2DeJg1" id="5jb5jNC5$8B" role="2OqNvi">
                                  <ref role="1A0vxQ" to="xiqq:3HBlKeoZ0Un" resolve="StateDeclaration" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="5jb5jNC5$8C" role="3cqZAp">
                            <node concept="37vLTI" id="5jb5jNC5$8D" role="3clFbG">
                              <node concept="2OqwBi" id="5jb5jNC5$8H" role="37vLTJ">
                                <node concept="37vLTw" id="5jb5jNC5$8I" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5jb5jNC5$8x" resolve="ecstate" />
                                </node>
                                <node concept="3TrcHB" id="5jb5jNC5$8J" role="2OqNvi">
                                  <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                                </node>
                              </node>
                              <node concept="37vLTw" id="5jb5jNC66mm" role="37vLTx">
                                <ref role="3cqZAo" node="5jb5jNC64Ln" resolve="pattern" />
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbF" id="5jb5jNC5$8Q" role="3cqZAp">
                            <node concept="37vLTI" id="5jb5jNC5$8R" role="3clFbG">
                              <node concept="2pJPEk" id="5jb5jNC5$8S" role="37vLTx">
                                <node concept="2pJPED" id="5jb5jNC5$8T" role="2pJPEn">
                                  <ref role="2pJxaS" to="xiqq:5fP$Xwj3irJ" resolve="Position" />
                                  <node concept="2pJxcG" id="5jb5jNC5$8U" role="2pJxcM">
                                    <ref role="2pJxcJ" to="xiqq:5fP$Xwj3irK" resolve="x" />
                                    <node concept="3cpWs3" id="5jb5jNC5$8V" role="28ntcv">
                                      <node concept="Xl_RD" id="5jb5jNC5$8W" role="3uHU7B">
                                        <property role="Xl_RC" value="" />
                                      </node>
                                      <node concept="37vLTw" id="5jb5jNC5$8X" role="3uHU7w">
                                        <ref role="3cqZAo" node="5jb5jNC5$8p" resolve="x" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="2pJxcG" id="5jb5jNC5$8Y" role="2pJxcM">
                                    <ref role="2pJxcJ" to="xiqq:5fP$Xwj3irM" resolve="y" />
                                    <node concept="3cpWs3" id="5jb5jNC5$8Z" role="28ntcv">
                                      <node concept="Xl_RD" id="5jb5jNC5$90" role="3uHU7B">
                                        <property role="Xl_RC" value="" />
                                      </node>
                                      <node concept="37vLTw" id="5jb5jNC5$91" role="3uHU7w">
                                        <ref role="3cqZAo" node="5jb5jNC5$8r" resolve="y" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="2OqwBi" id="5jb5jNC5$92" role="37vLTJ">
                                <node concept="37vLTw" id="5jb5jNC5$93" role="2Oq$k0">
                                  <ref role="3cqZAo" node="5jb5jNC5$8x" resolve="ecstate" />
                                </node>
                                <node concept="3TrEf2" id="5jb5jNC69Jr" role="2OqNvi">
                                  <ref role="3Tt5mk" to="xiqq:5jb5jNC67p4" resolve="position" />
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
      <node concept="3Tm1VV" id="1R4IoyQI96z" role="1B3o_S" />
      <node concept="37vLTG" id="1R4IoyQIbNZ" role="3clF46">
        <property role="TrG5h" value="ecc" />
        <property role="3TUv4t" value="true" />
        <node concept="3Tqbb2" id="1R4IoyQIbNY" role="1tU5fm">
          <ref role="ehGHo" to="xiqq:3HBlKeoYsj1" resolve="BasicFBTypeDeclaration" />
        </node>
      </node>
      <node concept="3uibUv" id="1R4IoyQId4x" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="1R4IoyQIdJM" role="11_B2D">
          <ref role="3uigEE" to="hyqd:5jb5jNBOk89" resolve="PositionalCompletionItem" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="1R4IoyQHXu6" role="1B3o_S" />
  </node>
</model>

